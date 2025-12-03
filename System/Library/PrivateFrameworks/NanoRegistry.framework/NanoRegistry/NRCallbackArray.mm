@interface NRCallbackArray
- (NRCallbackArray)init;
- (void)addObject:(id)object;
- (void)sweepWithCollection:(id)collection;
@end

@implementation NRCallbackArray

- (NRCallbackArray)init
{
  v3.receiver = self;
  v3.super_class = NRCallbackArray;
  result = [(NRCallbackArray *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  os_unfair_lock_lock(&self->_lock);
  callbacks = self->_callbacks;
  if (callbacks)
  {
    v5 = MEMORY[0x1E12E7560](objectCopy);
    [(NSMutableArray *)callbacks addObject:v5];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E695DF70]);
    v5 = MEMORY[0x1E12E7560](objectCopy);
    v7 = [v6 initWithObjects:{v5, 0}];
    v8 = self->_callbacks;
    self->_callbacks = v7;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)sweepWithCollection:(id)collection
{
  collectionCopy = collection;
  os_unfair_lock_lock(&self->_lock);
  p_callbacks = &self->_callbacks;
  callbacks = self->_callbacks;
  v6 = callbacks;
  v7 = self->_callbacks;
  self->_callbacks = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    if ([(NSMutableArray *)v6 count])
    {
      v8 = 0;
      v9 = 0;
      do
      {
        v10 = [(NSMutableArray *)v6 objectAtIndexedSubscript:v8];
        v11 = (v10)[2](v10, collectionCopy);

        if (v11)
        {
          [(NSMutableArray *)v6 removeObjectAtIndex:v8];
        }

        else
        {
          ++v9;
        }

        v8 = v9;
      }

      while ([(NSMutableArray *)v6 count]> v9);
    }

    if ([(NSMutableArray *)v6 count])
    {
      os_unfair_lock_lock(&self->_lock);
      if (*p_callbacks)
      {
        [(NSMutableArray *)*p_callbacks addObjectsFromArray:v6];
      }

      else
      {
        objc_storeStrong(&self->_callbacks, callbacks);
      }

      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

@end