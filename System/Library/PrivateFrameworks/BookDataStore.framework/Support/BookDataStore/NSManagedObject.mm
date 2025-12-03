@interface NSManagedObject
- (BOOL)setDifferentDate:(id)date forKey:(id)key;
- (BOOL)setDifferentNumber:(id)number forKey:(id)key;
- (BOOL)setDifferentObject:(id)object forKey:(id)key;
- (BOOL)setDifferentString:(id)string forKey:(id)key;
- (BOOL)setDifferentValue:(id)value forKey:(id)key klass:(Class)klass;
- (id)propertiesForKeys:(id)keys;
@end

@implementation NSManagedObject

- (BOOL)setDifferentValue:(id)value forKey:(id)key klass:(Class)klass
{
  valueCopy = value;
  keyCopy = key;
  v9 = [(NSManagedObject *)self valueForKey:keyCopy];
  v10 = v9;
  if (v9 == valueCopy || ([v9 isEqual:valueCopy] & 1) != 0)
  {
    v11 = 0;
  }

  else
  {
    v12 = BUDynamicCast();
    [(NSManagedObject *)self setValue:v12 forKey:keyCopy];

    v11 = 1;
  }

  return v11;
}

- (BOOL)setDifferentObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v8 = [(NSManagedObject *)self valueForKey:keyCopy];
  if (v8 != objectCopy)
  {
    [(NSManagedObject *)self setValue:objectCopy forKey:keyCopy];
  }

  return v8 != objectCopy;
}

- (BOOL)setDifferentString:(id)string forKey:(id)key
{
  keyCopy = key;
  stringCopy = string;
  LOBYTE(self) = [(NSManagedObject *)self setDifferentValue:stringCopy forKey:keyCopy klass:objc_opt_class()];

  return self;
}

- (BOOL)setDifferentNumber:(id)number forKey:(id)key
{
  keyCopy = key;
  numberCopy = number;
  LOBYTE(self) = [(NSManagedObject *)self setDifferentValue:numberCopy forKey:keyCopy klass:objc_opt_class()];

  return self;
}

- (BOOL)setDifferentDate:(id)date forKey:(id)key
{
  keyCopy = key;
  dateCopy = date;
  LOBYTE(self) = [(NSManagedObject *)self setDifferentValue:dateCopy forKey:keyCopy klass:objc_opt_class()];

  return self;
}

- (id)propertiesForKeys:(id)keys
{
  keysCopy = keys;
  v5 = +[NSMutableDictionary dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = keysCopy;
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