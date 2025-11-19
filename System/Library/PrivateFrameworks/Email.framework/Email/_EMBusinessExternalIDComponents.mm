@interface _EMBusinessExternalIDComponents
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation _EMBusinessExternalIDComponents

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else if (([(_EMBusinessExternalIDComponents *)v4 isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = v4;
    v6 = [(_EMBusinessExternalIDComponents *)self simpleAddress];
    v7 = [(_EMBusinessExternalIDComponents *)v5 simpleAddress];
    if (EFStringsAreEqual())
    {
      v8 = [(_EMBusinessExternalIDComponents *)self highLevelDomain];
      v9 = [(_EMBusinessExternalIDComponents *)v5 highLevelDomain];
      if (EFStringsAreEqual())
      {
        v15 = [(_EMBusinessExternalIDComponents *)self displayName];
        v10 = [(_EMBusinessExternalIDComponents *)v5 displayName];
        if (EFStringsAreEqual())
        {
          v14 = [(_EMBusinessExternalIDComponents *)self brandID];
          v11 = [(_EMBusinessExternalIDComponents *)v5 brandID];
          v12 = EFStringsAreEqual();
        }

        else
        {
          v12 = 0;
        }
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(_EMBusinessExternalIDComponents *)self simpleAddress];
  v4 = [v3 hash];

  v5 = [(_EMBusinessExternalIDComponents *)self highLevelDomain];
  v6 = [v5 hash];

  v7 = [(_EMBusinessExternalIDComponents *)self displayName];
  v8 = [v7 hash];

  v9 = [(_EMBusinessExternalIDComponents *)self brandID];
  v10 = [v9 hash] + 0x17C5D0F85;

  return 33 * (33 * (33 * v4 + v6) + v8) + v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(_EMBusinessExternalIDComponents);
  v5 = [(_EMBusinessExternalIDComponents *)self simpleAddress];
  [(_EMBusinessExternalIDComponents *)v4 setSimpleAddress:v5];

  v6 = [(_EMBusinessExternalIDComponents *)self highLevelDomain];
  [(_EMBusinessExternalIDComponents *)v4 setHighLevelDomain:v6];

  v7 = [(_EMBusinessExternalIDComponents *)self displayName];
  [(_EMBusinessExternalIDComponents *)v4 setDisplayName:v7];

  v8 = [(_EMBusinessExternalIDComponents *)self brandID];
  [(_EMBusinessExternalIDComponents *)v4 setBrandID:v8];

  return v4;
}

@end