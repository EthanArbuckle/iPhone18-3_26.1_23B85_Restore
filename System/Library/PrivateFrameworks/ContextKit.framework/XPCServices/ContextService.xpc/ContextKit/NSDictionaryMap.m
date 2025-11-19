@interface NSDictionaryMap
+ (id)map;
+ (id)mapWithDictionary:(id)a3;
- (BOOL)containsValueWithId:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSDictionaryMap)init;
- (NSDictionaryMap)initWithDictionary:(id)a3;
- (id)entrySet;
- (id)getWithId:(id)a3;
- (id)keySet;
- (id)putWithId:(id)a3 withId:(id)a4;
- (id)removeWithId:(id)a3;
- (id)values;
- (void)dealloc;
- (void)putAllWithJavaUtilMap:(id)a3;
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

- (NSDictionaryMap)initWithDictionary:(id)a3
{
  v7.receiver = self;
  v7.super_class = NSDictionaryMap;
  v4 = [(NSDictionaryMap *)&v7 init];
  if (v4)
  {
    if (a3)
    {
      v5 = [a3 mutableCopy];
    }

    else
    {
      v5 = objc_alloc_init(NSMutableDictionary);
    }

    v4->dictionary_ = v5;
  }

  return v4;
}

+ (id)mapWithDictionary:(id)a3
{
  v3 = [objc_alloc(objc_opt_class()) initWithDictionary:a3];

  return v3;
}

- (BOOL)containsValueWithId:(id)a3
{
  v4 = [(NSMutableDictionary *)self->dictionary_ allValues];

  return [v4 containsObject:a3];
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

- (BOOL)isEqual:(id)a3
{
  if (!a3 || ![a3 conformsToProtocol:&OBJC_PROTOCOL___JavaUtilMap])
  {
    return 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionary = self->dictionary_;
    v6 = *(a3 + 1);

    return [(NSMutableDictionary *)dictionary isEqualToDictionary:v6];
  }

  else
  {
    v7 = [(NSDictionaryMap *)self entrySet];
    v8 = [a3 entrySet];

    return [v7 isEqual:v8];
  }
}

- (id)getWithId:(id)a3
{
  if (!a3)
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

- (id)putWithId:(id)a3 withId:(id)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v7 = [(NSMutableDictionary *)self->dictionary_ objectForKey:?];
  [(NSMutableDictionary *)self->dictionary_ setObject:a4 forKey:a3];
  return v7;
}

- (void)putAllWithJavaUtilMap:(id)a3
{
  if (!a3)
  {
    goto LABEL_7;
  }

  v5 = [objc_msgSend(a3 "keySet")];
  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = v5;
  if ([v5 hasNext])
  {
    while (1)
    {
      v7 = [v6 next];
      if (!v7)
      {
        break;
      }

      -[NSMutableDictionary setObject:forKey:](self->dictionary_, "setObject:forKey:", [a3 getWithId:v7], v7);
      if (([v6 hasNext] & 1) == 0)
      {
        return;
      }
    }

LABEL_7:
    JreThrowNullPointerException();
  }
}

- (id)removeWithId:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v5 = [(NSMutableDictionary *)self->dictionary_ objectForKey:?];
  [(NSMutableDictionary *)self->dictionary_ removeObjectForKey:a3];
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