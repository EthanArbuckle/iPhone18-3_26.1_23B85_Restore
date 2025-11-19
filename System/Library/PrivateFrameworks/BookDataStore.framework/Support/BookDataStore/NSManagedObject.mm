@interface NSManagedObject
- (BOOL)setDifferentDate:(id)a3 forKey:(id)a4;
- (BOOL)setDifferentNumber:(id)a3 forKey:(id)a4;
- (BOOL)setDifferentObject:(id)a3 forKey:(id)a4;
- (BOOL)setDifferentString:(id)a3 forKey:(id)a4;
- (BOOL)setDifferentValue:(id)a3 forKey:(id)a4 klass:(Class)a5;
- (id)propertiesForKeys:(id)a3;
@end

@implementation NSManagedObject

- (BOOL)setDifferentValue:(id)a3 forKey:(id)a4 klass:(Class)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [(NSManagedObject *)self valueForKey:v8];
  v10 = v9;
  if (v9 == v7 || ([v9 isEqual:v7] & 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v12 = BUDynamicCast();
    [(NSManagedObject *)self setValue:v12 forKey:v8];

    v11 = 1;
  }

  return v11;
}

- (BOOL)setDifferentObject:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSManagedObject *)self valueForKey:v7];
  if (v8 != v6)
  {
    [(NSManagedObject *)self setValue:v6 forKey:v7];
  }

  return v8 != v6;
}

- (BOOL)setDifferentString:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  LOBYTE(self) = [(NSManagedObject *)self setDifferentValue:v7 forKey:v6 klass:objc_opt_class()];

  return self;
}

- (BOOL)setDifferentNumber:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  LOBYTE(self) = [(NSManagedObject *)self setDifferentValue:v7 forKey:v6 klass:objc_opt_class()];

  return self;
}

- (BOOL)setDifferentDate:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  LOBYTE(self) = [(NSManagedObject *)self setDifferentValue:v7 forKey:v6 klass:objc_opt_class()];

  return self;
}

- (id)propertiesForKeys:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [(NSManagedObject *)self valueForKey:v11, v14];
        if (v12)
        {
          [v5 setObject:v12 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

@end