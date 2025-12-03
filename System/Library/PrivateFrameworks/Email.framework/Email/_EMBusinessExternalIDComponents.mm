@interface _EMBusinessExternalIDComponents
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation _EMBusinessExternalIDComponents

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else if (([(_EMBusinessExternalIDComponents *)equalCopy isMemberOfClass:objc_opt_class()]& 1) != 0)
  {
    v5 = equalCopy;
    simpleAddress = [(_EMBusinessExternalIDComponents *)self simpleAddress];
    simpleAddress2 = [(_EMBusinessExternalIDComponents *)v5 simpleAddress];
    if (EFStringsAreEqual())
    {
      highLevelDomain = [(_EMBusinessExternalIDComponents *)self highLevelDomain];
      highLevelDomain2 = [(_EMBusinessExternalIDComponents *)v5 highLevelDomain];
      if (EFStringsAreEqual())
      {
        displayName = [(_EMBusinessExternalIDComponents *)self displayName];
        displayName2 = [(_EMBusinessExternalIDComponents *)v5 displayName];
        if (EFStringsAreEqual())
        {
          brandID = [(_EMBusinessExternalIDComponents *)self brandID];
          brandID2 = [(_EMBusinessExternalIDComponents *)v5 brandID];
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
  simpleAddress = [(_EMBusinessExternalIDComponents *)self simpleAddress];
  v4 = [simpleAddress hash];

  highLevelDomain = [(_EMBusinessExternalIDComponents *)self highLevelDomain];
  v6 = [highLevelDomain hash];

  displayName = [(_EMBusinessExternalIDComponents *)self displayName];
  v8 = [displayName hash];

  brandID = [(_EMBusinessExternalIDComponents *)self brandID];
  v10 = [brandID hash] + 0x17C5D0F85;

  return 33 * (33 * (33 * v4 + v6) + v8) + v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(_EMBusinessExternalIDComponents);
  simpleAddress = [(_EMBusinessExternalIDComponents *)self simpleAddress];
  [(_EMBusinessExternalIDComponents *)v4 setSimpleAddress:simpleAddress];

  highLevelDomain = [(_EMBusinessExternalIDComponents *)self highLevelDomain];
  [(_EMBusinessExternalIDComponents *)v4 setHighLevelDomain:highLevelDomain];

  displayName = [(_EMBusinessExternalIDComponents *)self displayName];
  [(_EMBusinessExternalIDComponents *)v4 setDisplayName:displayName];

  brandID = [(_EMBusinessExternalIDComponents *)self brandID];
  [(_EMBusinessExternalIDComponents *)v4 setBrandID:brandID];

  return v4;
}

@end