@interface _CHUISWidgetHostViewControllerCollection
+ (id)sharedInstance;
- (NSArray)viewControllers;
- (_CHUISWidgetHostViewControllerCollection)init;
- (void)noteCreated:(id)created;
- (void)noteDestroyed:(id)destroyed;
@end

@implementation _CHUISWidgetHostViewControllerCollection

+ (id)sharedInstance
{
  if (sharedInstance___once_1 != -1)
  {
    +[_CHUISWidgetHostViewControllerCollection sharedInstance];
  }

  v3 = sharedInstance___instance_0;

  return v3;
}

- (_CHUISWidgetHostViewControllerCollection)init
{
  v7.receiver = self;
  v7.super_class = _CHUISWidgetHostViewControllerCollection;
  v2 = [(_CHUISWidgetHostViewControllerCollection *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    lock_viewControllers = v3->_lock_viewControllers;
    v3->_lock_viewControllers = weakObjectsHashTable;
  }

  return v3;
}

- (NSArray)viewControllers
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock(&self->_lock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_lock_viewControllers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [array addObject:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock(&self->_lock);
  v8 = [array copy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)noteCreated:(id)created
{
  createdCopy = created;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_viewControllers addObject:createdCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)noteDestroyed:(id)destroyed
{
  destroyedCopy = destroyed;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_viewControllers removeObject:destroyedCopy];

  os_unfair_lock_unlock(&self->_lock);
}

@end