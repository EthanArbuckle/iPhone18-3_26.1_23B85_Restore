@interface _DYNSKVCMutableCollectionPropertyInfo
+ (id)mutableCollectionPropertyInfoForClass:(Class)class;
+ (void)initialize;
- (_DYNSKVCMutableCollectionPropertyInfo)initWithClass:(Class)class;
- (id)_stringWithCapitalizedFirstLetter:(id)letter;
- (id)bindingForProperty:(id)property;
- (id)bindingForSelector:(SEL)selector;
- (void)dealloc;
- (void)dy_synthesizeMutableArrayProperty:(id)property withInstanceVariable:(id)variable;
- (void)dy_synthesizeMutableSetProperty:(id)property withInstanceVariable:(id)variable;
@end

@implementation _DYNSKVCMutableCollectionPropertyInfo

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    _DYNSKVCMutableCollectionPropertyClassMap = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:512 valueOptions:0 capacity:16];
  }
}

+ (id)mutableCollectionPropertyInfoForClass:(Class)class
{
  GPUTools::DYLockUtils::Lock(&_DYNSKVCMutableCollectionPropertyClassMapLock, a2);
  v5 = NSMapGet(_DYNSKVCMutableCollectionPropertyClassMap, class);
  if (!v5)
  {
    v5 = [[_DYNSKVCMutableCollectionPropertyInfo alloc] initWithClass:class];
    NSMapInsertKnownAbsent(_DYNSKVCMutableCollectionPropertyClassMap, class, v5);
  }

  GPUTools::DYLockUtils::Unlock(&_DYNSKVCMutableCollectionPropertyClassMapLock, v4);
  return v5;
}

- (_DYNSKVCMutableCollectionPropertyInfo)initWithClass:(Class)class
{
  v7.receiver = self;
  v7.super_class = _DYNSKVCMutableCollectionPropertyInfo;
  v4 = [(_DYNSKVCMutableCollectionPropertyInfo *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_class = class;
    v4->_selectorBindingsMap = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:258 valueOptions:0 capacity:16];
    v5->_propertyBindingsMap = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:0x10000 valueOptions:0 capacity:16];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _DYNSKVCMutableCollectionPropertyInfo;
  [(_DYNSKVCMutableCollectionPropertyInfo *)&v3 dealloc];
}

- (id)_stringWithCapitalizedFirstLetter:(id)letter
{
  v4 = [objc_msgSend(letter substringToIndex:{1), "uppercaseString"}];
  v5 = [letter substringFromIndex:1];

  return [v4 stringByAppendingString:v5];
}

- (void)dy_synthesizeMutableArrayProperty:(id)property withInstanceVariable:(id)variable
{
  key = [property copy];
  v6 = [[_DYNSKVCMutableCollectionPropertyBinding alloc] initWithKey:key underlyingIvarName:variable];
  NSMapInsertKnownAbsent(self->_propertyBindingsMap, key, v6);
  v7 = [(_DYNSKVCMutableCollectionPropertyInfo *)self _stringWithCapitalizedFirstLetter:key];
  name = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"mutable%@", v7]);
  v8 = NSSelectorFromString(key);
  v9 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"set%@:", v7]);
  v16 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"insertObject:in%@AtIndex:", v7]);
  v15 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"removeObjectFrom%@AtIndex:", v7]);
  v17 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"replaceObjectIn%@AtIndex:withObject:", v7]);
  v18 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"insert%@:atIndexes:", v7]);
  v20 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"remove%@AtIndexes:", v7]);
  v19 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"replace%@AtIndexes:withObjects:", v7]);
  v10 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"countOf%@", v7]);
  v14 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"objectIn%@AtIndex:", v7]);
  v11 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"%@AtIndexes:", key]);
  v12 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"get%@:range:", v7]);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, name, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v8, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v9, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v16, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v15, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v17, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v18, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v20, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v19, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v10, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v14, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v11, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v12, v6);
  class_addMethod(self->_class, name, DYKVCMutableCollections_Array_MutableGetter, "@@:");
  class_addMethod(self->_class, v8, DYKVCMutableCollections_Array_Getter, "@@:");
  class_addMethod(self->_class, v9, DYKVCMutableCollections_Array_Setter, "v@:@");
  class_addMethod(self->_class, v16, DYKVCMutableCollections_Array_InsertObjectAtIndex, "v@:@Q");
  class_addMethod(self->_class, v15, DYKVCMutableCollections_Array_RemoveObjectAtIndex, "v@:Q");
  class_addMethod(self->_class, v17, DYKVCMutableCollections_Array_ReplaceObjectAtIndexWithObject, "v@:Q@");
  class_addMethod(self->_class, v18, DYKVCMutableCollections_Array_InsertObjectsAtIndexes, "v@:@@");
  class_addMethod(self->_class, v20, DYKVCMutableCollections_Array_RemoveObjectsAtIndexes, "v@:@");
  class_addMethod(self->_class, v19, DYKVCMutableCollections_Array_ReplaceObjectsAtIndexesWithObjects, "v@:@@");
  class_addMethod(self->_class, v10, DYKVCMutableCollections_Array_Count, "Q@:");
  class_addMethod(self->_class, v14, DYKVCMutableCollections_Array_ObjectAtIndex, "@@:Q");
  class_addMethod(self->_class, v11, DYKVCMutableCollections_Array_ObjectsAtIndexes, "Q@:@");
  class_addMethod(self->_class, v12, DYKVCMutableCollections_Array_GetObjectsRange, "v@:^@{_NSRange=QQ}");
}

- (void)dy_synthesizeMutableSetProperty:(id)property withInstanceVariable:(id)variable
{
  aSelectorName = [property copy];
  v6 = [[_DYNSKVCMutableCollectionPropertyBinding alloc] initWithKey:aSelectorName underlyingIvarName:variable];
  v7 = [(_DYNSKVCMutableCollectionPropertyInfo *)self _stringWithCapitalizedFirstLetter:aSelectorName];
  name = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"mutable%@", v7]);
  v13 = NSSelectorFromString(aSelectorName);
  key = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"set%@:", v7]);
  v16 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"add%@Object:", v7]);
  v8 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"remove%@Object:", v7]);
  v9 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"add%@:", v7]);
  v14 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"remove%@:", v7]);
  v18 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"intersect%@:", v7]);
  v15 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"countOf%@", v7]);
  v10 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"enumeratorOf%@", v7]);
  v11 = NSSelectorFromString([MEMORY[0x277CCACA8] stringWithFormat:@"memberOf%@:", v7]);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, name, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v13, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, key, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v16, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v8, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v9, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v14, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v18, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v15, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v10, v6);
  NSMapInsertKnownAbsent(self->_selectorBindingsMap, v11, v6);
  class_addMethod(self->_class, name, DYKVCMutableCollections_Set_MutableGetter, "@@:");
  class_addMethod(self->_class, v13, DYKVCMutableCollections_Set_Getter, "@@:");
  class_addMethod(self->_class, key, DYKVCMutableCollections_Set_Setter, "v@:@");
  class_addMethod(self->_class, v16, DYKVCMutableCollections_Set_AddObject, "v@:@");
  class_addMethod(self->_class, v8, DYKVCMutableCollections_Set_RemoveObject, "v@:@");
  class_addMethod(self->_class, v9, DYKVCMutableCollections_Set_AddObjects, "v@:@");
  class_addMethod(self->_class, v14, DYKVCMutableCollections_Set_RemoveObjects, "v@:@");
  class_addMethod(self->_class, v18, DYKVCMutableCollections_Set_IntersectObjects, "v@:@");
  class_addMethod(self->_class, v15, DYKVCMutableCollections_Set_Count, "Q@:");
  class_addMethod(self->_class, v10, DYKVCMutableCollections_Set_ObjectEnumerator, "@@:");
  class_addMethod(self->_class, v11, DYKVCMutableCollections_Set_Member, "@@:@");
}

- (id)bindingForSelector:(SEL)selector
{
  v5 = NSMapGet(self->_selectorBindingsMap, selector);
  if (!v5)
  {
    Superclass = class_getSuperclass(self->_class);
    if (Superclass)
    {
      v5 = [+[_DYNSKVCMutableCollectionPropertyInfo mutableCollectionPropertyInfoForClass:](_DYNSKVCMutableCollectionPropertyInfo mutableCollectionPropertyInfoForClass:{Superclass), "bindingForSelector:", selector}];
    }

    else
    {
      v5 = 0;
    }

    NSMapInsertKnownAbsent(self->_selectorBindingsMap, selector, v5);
  }

  return v5;
}

- (id)bindingForProperty:(id)property
{
  v5 = NSMapGet(self->_propertyBindingsMap, property);
  if (!v5)
  {
    Superclass = class_getSuperclass(self->_class);
    if (Superclass)
    {
      v5 = [+[_DYNSKVCMutableCollectionPropertyInfo mutableCollectionPropertyInfoForClass:](_DYNSKVCMutableCollectionPropertyInfo mutableCollectionPropertyInfoForClass:{Superclass), "bindingForProperty:", property}];
    }

    else
    {
      v5 = 0;
    }

    NSMapInsertKnownAbsent(self->_propertyBindingsMap, property, v5);
  }

  return v5;
}

@end