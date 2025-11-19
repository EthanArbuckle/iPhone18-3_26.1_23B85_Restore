@interface ECPointerNilKeyDictionary
- (id)objectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setObject:(id)a3 forUncopiedKey:(id)a4;
@end

@implementation ECPointerNilKeyDictionary

- (id)objectForKey:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8.receiver = self;
    v8.super_class = ECPointerNilKeyDictionary;
    v5 = [(OITSUNoCopyDictionary *)&v8 objectForKey:v4];
  }

  else
  {
    v5 = self->mNilKeyObject;
  }

  v6 = v5;

  return v6;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9.receiver = self;
    v9.super_class = ECPointerNilKeyDictionary;
    [(OITSUNoCopyDictionary *)&v9 setObject:v7 forKey:v8];
  }

  else
  {
    objc_storeStrong(&self->mNilKeyObject, a3);
  }
}

- (void)setObject:(id)a3 forUncopiedKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9.receiver = self;
    v9.super_class = ECPointerNilKeyDictionary;
    [(OITSUNoCopyDictionary *)&v9 setObject:v7 forUncopiedKey:v8];
  }

  else
  {
    objc_storeStrong(&self->mNilKeyObject, a3);
  }
}

@end