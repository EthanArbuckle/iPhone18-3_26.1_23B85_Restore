@interface ECPointerNilKeyDictionary
- (id)objectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forUncopiedKey:(id)key;
@end

@implementation ECPointerNilKeyDictionary

- (id)objectForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v8.receiver = self;
    v8.super_class = ECPointerNilKeyDictionary;
    v5 = [(OITSUNoCopyDictionary *)&v8 objectForKey:keyCopy];
  }

  else
  {
    v5 = self->mNilKeyObject;
  }

  v6 = v5;

  return v6;
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (keyCopy)
  {
    v9.receiver = self;
    v9.super_class = ECPointerNilKeyDictionary;
    [(OITSUNoCopyDictionary *)&v9 setObject:objectCopy forKey:keyCopy];
  }

  else
  {
    objc_storeStrong(&self->mNilKeyObject, object);
  }
}

- (void)setObject:(id)object forUncopiedKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (keyCopy)
  {
    v9.receiver = self;
    v9.super_class = ECPointerNilKeyDictionary;
    [(OITSUNoCopyDictionary *)&v9 setObject:objectCopy forUncopiedKey:keyCopy];
  }

  else
  {
    objc_storeStrong(&self->mNilKeyObject, object);
  }
}

@end