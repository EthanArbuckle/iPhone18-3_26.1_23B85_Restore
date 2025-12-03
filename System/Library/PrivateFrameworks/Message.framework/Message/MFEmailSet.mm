@interface MFEmailSet
+ (id)set;
- (BOOL)intersectsSet:(id)set;
- (BOOL)isEqualToSet:(id)set;
- (BOOL)isSubsetOfSet:(id)set;
- (MFEmailSet)init;
- (MFEmailSet)initWithCapacity:(unint64_t)capacity;
- (MFEmailSet)initWithSet:(id)set;
- (id)_generateAllObjectsFromSelector:(SEL)selector;
- (id)member:(id)member;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)objectEnumerator;
- (id)serializedRepresentation;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)addObject:(id)object;
- (void)dealloc;
- (void)intersectSet:(id)set;
- (void)minusSet:(id)set;
- (void)removeObject:(id)object;
- (void)setSet:(id)set;
- (void)unionSet:(id)set;
@end

@implementation MFEmailSet

+ (id)set
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (MFEmailSet)init
{
  v5.receiver = self;
  v5.super_class = MFEmailSet;
  v2 = [(EAEmailAddressSet *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MFEmailSet *)v2 _setupSetWithCapacity:0];
  }

  return v3;
}

- (MFEmailSet)initWithCapacity:(unint64_t)capacity
{
  v7.receiver = self;
  v7.super_class = MFEmailSet;
  v4 = [(EAEmailAddressSet *)&v7 init];
  v5 = v4;
  if (v4)
  {
    [(MFEmailSet *)v4 _setupSetWithCapacity:capacity];
  }

  return v5;
}

- (MFEmailSet)initWithSet:(id)set
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = -[MFEmailSet initWithCapacity:](self, "initWithCapacity:", [set count]);
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [set countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(set);
          }

          v9 = *(*(&v14 + 1) + 8 * v8);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [[_MFEmailSetEmail alloc] initWithAddress:v9];
            if (v10)
            {
              v11 = v10;
              CFSetAddValue(v4->_set, v10);
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v6 = [set countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)dealloc
{
  set = self->_set;
  if (set)
  {
    CFRelease(set);
  }

  v4.receiver = self;
  v4.super_class = MFEmailSet;
  [(MFEmailSet *)&v4 dealloc];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MFEmailSet);
  CFSetApplyFunction(self->_set, _copyFunction, v4->_set);
  return v4;
}

- (id)serializedRepresentation
{
  v2 = [objc_alloc(MEMORY[0x1E699AFD8]) initWithSet:self];
  serializedRepresentation = [v2 serializedRepresentation];

  return serializedRepresentation;
}

- (id)member:(id)member
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MFEmailSet member:];
  }

  v5 = [[_MFEmailSetEmail alloc] initWithAddress:member];
  if (v5)
  {
    v6 = v5;
    Value = CFSetGetValue(self->_set, v5);
  }

  else
  {
    Value = 0;
  }

  return [Value address];
}

- (BOOL)intersectsSet:(id)set
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [set count])
  {
    v5 = *(set + 2);
    context[0] = 0xAAAAAAAAAAAAAA00;
    context[1] = v5;
    CFSetApplyFunction(self->_set, _intersectsFunction, context);
    v6 = context[0];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [set count])
    {
      v7 = [[MFEmailSet alloc] initWithSet:set];
      v8 = [(MFEmailSet *)self intersectsSet:v7];

      return v8;
    }

    v10.receiver = self;
    v10.super_class = MFEmailSet;
    v6 = [(EAEmailAddressSet *)&v10 intersectsSet:set];
  }

  return v6 & 1;
}

- (BOOL)isSubsetOfSet:(id)set
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [set count])
  {
    v5 = *(set + 2);
    context[0] = 0xAAAAAAAAAAAAAA01;
    context[1] = v5;
    CFSetApplyFunction(self->_set, _subsetFunction, context);
    v6 = context[0];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [set count])
    {
      v7 = [[MFEmailSet alloc] initWithSet:set];
      v8 = [(MFEmailSet *)self isSubsetOfSet:v7];

      return v8;
    }

    v10.receiver = self;
    v10.super_class = MFEmailSet;
    v6 = [(EAEmailAddressSet *)&v10 isSubsetOfSet:set];
  }

  return v6 & 1;
}

- (BOOL)isEqualToSet:(id)set
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MFEmailSet *)self count];
    if (v5 == [set count])
    {

      return [(MFEmailSet *)self isSubsetOfSet:set];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [set count])
    {
      v7 = [[MFEmailSet alloc] initWithSet:set];
      v8 = [(MFEmailSet *)self isEqualToSet:v7];

      return v8;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = MFEmailSet;
      return [(EAEmailAddressSet *)&v9 isEqualToSet:set];
    }
  }
}

- (id)_generateAllObjectsFromSelector:(SEL)selector
{
  Count = CFSetGetCount(self->_set);
  v6 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFSetGetValues(self->_set, v6);
  v7 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  v8 = v7;
  if (Count >= 1)
  {
    v9 = v6;
    v10 = v7;
    v11 = Count;
    do
    {
      v12 = *v9++;
      *v10++ = [v12 selector];
      --v11;
    }

    while (v11);
  }

  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:Count];
  free(v6);
  free(v8);
  return v13;
}

- (id)objectEnumerator
{
  v2 = [[_MFEmailSetEnumerator alloc] initWithSet:self];

  return v2;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  v6 = [(__CFSet *)self->_set countByEnumeratingWithState:state objects:objects count:count];
  if (v6)
  {
    v7 = 0;
    do
    {
      state->var1[v7] = [state->var1[v7] address];
      ++v7;
    }

    while (v6 != v7);
  }

  return v6;
}

- (void)addObject:(id)object
{
  v12 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MFEmailSet addObject:];
  }

  v5 = [[_MFEmailSetEmail alloc] initWithAddress:object];
  if (v5)
  {
    v9 = v5;
    CFSetAddValue(self->_set, v5);
    v6 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      objectCopy = object;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_INFO, "attempt to add illegal email address to email set, skipping '%@'", buf, 0xCu);
    }

    v8 = *MEMORY[0x1E69E9840];
  }
}

- (void)removeObject:(id)object
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MFEmailSet removeObject:];
  }

  v5 = [[_MFEmailSetEmail alloc] initWithAddress:object];
  if (v5)
  {
    v6 = v5;
    CFSetRemoveValue(self->_set, v5);
  }
}

- (void)unionSet:(id)set
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(set + 2);
    set = self->_set;

    CFSetApplyFunction(v5, _unionFunction, set);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MFEmailSet alloc] initWithSet:set];
      [(MFEmailSet *)self unionSet:v7];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = MFEmailSet;
      [(EAEmailAddressSet *)&v8 unionSet:set];
    }
  }
}

- (void)minusSet:(id)set
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = *(set + 2);
    set = self->_set;

    CFSetApplyFunction(v5, _minusFunction, set);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[MFEmailSet alloc] initWithSet:set];
      [(MFEmailSet *)self minusSet:v7];
    }

    else
    {
      v8.receiver = self;
      v8.super_class = MFEmailSet;
      [(EAEmailAddressSet *)&v8 minusSet:set];
    }
  }
}

- (void)intersectSet:(id)set
{
  v21 = *MEMORY[0x1E69E9840];
  if (set == self)
  {
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = *(set + 2);
    context[0] = v5;
    context[1] = v6;
    CFSetApplyFunction(self->_set, _intersectFunction, context);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v5);
          }

          CFSetRemoveValue(self->_set, *(*(&v15 + 1) + 8 * i));
        }

        v8 = [v5 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v8);
    }

    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14.receiver = self;
    v14.super_class = MFEmailSet;
    [(EAEmailAddressSet *)&v14 intersectSet:set];
LABEL_16:
    v12 = *MEMORY[0x1E69E9840];
    return;
  }

  v13 = [[MFEmailSet alloc] initWithSet:set];
  [(MFEmailSet *)self intersectSet:?];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)setSet:(id)set
{
  if (set != self)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      CFSetRemoveAllValues(self->_set);
      v5 = *(set + 2);
      set = self->_set;

      CFSetApplyFunction(v5, _unionFunction, set);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [[MFEmailSet alloc] initWithSet:set];
        [(MFEmailSet *)self setSet:v7];
      }

      else
      {
        v8.receiver = self;
        v8.super_class = MFEmailSet;
        [(EAEmailAddressSet *)&v8 setSet:set];
      }
    }
  }
}

@end