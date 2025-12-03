@interface NSDictionaryMap
+ (id)map;
+ (id)mapWithDictionary:(id)dictionary;
- (BOOL)containsValueWithId:(id)id;
- (BOOL)isEqual:(id)equal;
- (NSDictionaryMap)init;
- (NSDictionaryMap)initWithDictionary:(id)dictionary;
- (id)entrySet;
- (id)getWithId:(id)id;
- (id)keySet;
- (id)putWithId:(id)id withId:(id)withId;
- (id)removeWithId:(id)id;
- (id)values;
- (void)dealloc;
- (void)putAllWithJavaUtilMap:(id)map;
@end

@implementation NSDictionaryMap

- (NSDictionaryMap)init
{
  v4.receiver = self;
  v4.super_class = NSDictionaryMap;
  v2 = [(NSDictionaryMap *)&v4 init];
  if (v2)
  {
    v2->dictionary_ = +[NSMutableDictionary dictionary];
  }

  return v2;
}

+ (id)map
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = NSDictionaryMap;
  [(NSDictionaryMap *)&v3 dealloc];
}

- (NSDictionaryMap)initWithDictionary:(id)dictionary
{
  v7.receiver = self;
  v7.super_class = NSDictionaryMap;
  v4 = [(NSDictionaryMap *)&v7 init];
  if (v4)
  {
    if (dictionary)
    {
      v5 = [dictionary mutableCopy];
    }

    else
    {
      v5 = objc_alloc_init(NSMutableDictionary);
    }

    v4->dictionary_ = v5;
  }

  return v4;
}

+ (id)mapWithDictionary:(id)dictionary
{
  v3 = [objc_alloc(objc_opt_class()) initWithDictionary:dictionary];

  return v3;
}

- (BOOL)containsValueWithId:(id)id
{
  allValues = [(NSMutableDictionary *)self->dictionary_ allValues];

  return [allValues containsObject:id];
}

- (id)entrySet
{
  v3 = objc_alloc_init(JavaUtilLinkedHashSet);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dictionary = self->dictionary_;
  v5 = [(NSMutableDictionary *)dictionary countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(dictionary);
        }

        [(JavaUtilHashSet *)v3 addWithId:[[NSDictionaryMap_Entry alloc] initWithDictionary:self->dictionary_ key:*(*(&v10 + 1) + 8 * i)]];
      }

      v6 = [(NSMutableDictionary *)dictionary countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal || ![equal conformsToProtocol:&OBJC_PROTOCOL___JavaUtilMap])
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionary = self->dictionary_;
    v6 = *(equal + 1);

    return [(NSMutableDictionary *)dictionary isEqualToDictionary:v6];
  }

  else
  {
    entrySet = [(NSDictionaryMap *)self entrySet];
    entrySet2 = [equal entrySet];

    return [entrySet isEqual:entrySet2];
  }
}

- (id)getWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  dictionary = self->dictionary_;

  return [(NSMutableDictionary *)dictionary objectForKey:?];
}

- (id)keySet
{
  v3 = objc_alloc_init(JavaUtilLinkedHashSet);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dictionary = self->dictionary_;
  v5 = [(NSMutableDictionary *)dictionary countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(dictionary);
        }

        [(JavaUtilHashSet *)v3 addWithId:*(*(&v10 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableDictionary *)dictionary countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)putWithId:(id)id withId:(id)withId
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  v7 = [(NSMutableDictionary *)self->dictionary_ objectForKey:?];
  [(NSMutableDictionary *)self->dictionary_ setObject:withId forKey:id];
  return v7;
}

- (void)putAllWithJavaUtilMap:(id)map
{
  if (!map)
  {
    goto LABEL_7;
  }

  v5 = [objc_msgSend(map "keySet")];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  if ([v5 hasNext])
  {
    while (1)
    {
      next = [v6 next];
      if (!next)
      {
        break;
      }

      -[NSMutableDictionary setObject:forKey:](self->dictionary_, "setObject:forKey:", [map getWithId:next], next);
      if (([v6 hasNext] & 1) == 0)
      {
        return;
      }
    }

LABEL_7:
    JreThrowNullPointerException();
  }
}

- (id)removeWithId:(id)id
{
  if (!id)
  {
    JreThrowNullPointerException();
  }

  v5 = [(NSMutableDictionary *)self->dictionary_ objectForKey:?];
  [(NSMutableDictionary *)self->dictionary_ removeObjectForKey:id];
  return v5;
}

- (id)values
{
  v3 = objc_alloc_init(JavaUtilLinkedList);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dictionary = self->dictionary_;
  v5 = [(NSMutableDictionary *)dictionary countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(dictionary);
        }

        [(JavaUtilLinkedList *)v3 addWithId:[(NSMutableDictionary *)self->dictionary_ objectForKey:*(*(&v10 + 1) + 8 * i)]];
      }

      v6 = [(NSMutableDictionary *)dictionary countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

@end