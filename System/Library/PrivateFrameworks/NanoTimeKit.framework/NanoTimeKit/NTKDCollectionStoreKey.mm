@interface NTKDCollectionStoreKey
+ (id)keyWithCollectionIdentifier:(id)a3 deviceUUID:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)plistRepresentation;
@end

@implementation NTKDCollectionStoreKey

+ (id)keyWithCollectionIdentifier:(id)a3 deviceUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(a1);
  v9 = v8[1];
  v8[1] = v6;
  v10 = v6;

  v11 = v8[2];
  v8[2] = v7;

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    collectionIdentifier = self->_collectionIdentifier;
    v6 = [v4 collectionIdentifier];
    if (NTKEqualStrings())
    {
      deviceUUID = self->_deviceUUID;
      v8 = [v4 deviceUUID];
      v9 = NTKEqualObjects();
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)plistRepresentation
{
  collectionIdentifier = self->_collectionIdentifier;
  deviceUUID = self->_deviceUUID;
  if (deviceUUID)
  {
    v4 = [(NSUUID *)deviceUUID UUIDString];
    v5 = [NSString stringWithFormat:@"%@:%@", collectionIdentifier, v4];
  }

  else
  {
    v5 = [NSString stringWithFormat:@"%@:%@", collectionIdentifier, @"global"];
  }

  return v5;
}

@end