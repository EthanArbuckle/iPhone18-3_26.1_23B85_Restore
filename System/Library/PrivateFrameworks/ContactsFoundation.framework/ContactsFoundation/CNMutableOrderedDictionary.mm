@interface CNMutableOrderedDictionary
- (CNMutableOrderedDictionary)initWithDictionary:(id)a3 orderedKeys:(id)a4;
- (void)removeObjectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation CNMutableOrderedDictionary

- (CNMutableOrderedDictionary)initWithDictionary:(id)a3 orderedKeys:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CNMutableOrderedDictionary;
  v8 = [(CNOrderedDictionary *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(NSMutableDictionary *)v8->super._dictionary addEntriesFromDictionary:v6];
    [(NSMutableArray *)v9->super._orderedKeys addObjectsFromArray:v7];
    v10 = v9;
  }

  return v9;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = v6;
  if (v8)
  {
    [(NSMutableDictionary *)self->super._dictionary setObject:v8 forKey:v6];
    if (([(NSMutableArray *)self->super._orderedKeys containsObject:v7]& 1) == 0)
    {
      [(NSMutableArray *)self->super._orderedKeys addObject:v7];
    }
  }

  else
  {
    [(CNMutableOrderedDictionary *)self removeObjectForKey:v6];
  }
}

- (void)removeObjectForKey:(id)a3
{
  dictionary = self->super._dictionary;
  v5 = a3;
  [(NSMutableDictionary *)dictionary removeObjectForKey:v5];
  [(NSMutableArray *)self->super._orderedKeys removeObject:v5];
}

@end