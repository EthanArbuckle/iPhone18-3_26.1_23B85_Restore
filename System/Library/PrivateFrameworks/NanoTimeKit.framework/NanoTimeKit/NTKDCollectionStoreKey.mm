@interface NTKDCollectionStoreKey
+ (id)keyWithCollectionIdentifier:(id)identifier deviceUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (id)plistRepresentation;
@end

@implementation NTKDCollectionStoreKey

+ (id)keyWithCollectionIdentifier:(id)identifier deviceUUID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  v8 = objc_alloc_init(self);
  v9 = v8[1];
  v8[1] = identifierCopy;
  v10 = identifierCopy;

  v11 = v8[2];
  v8[2] = dCopy;

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    collectionIdentifier = self->_collectionIdentifier;
    collectionIdentifier = [equalCopy collectionIdentifier];
    if (NTKEqualStrings())
    {
      deviceUUID = self->_deviceUUID;
      deviceUUID = [equalCopy deviceUUID];
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
    uUIDString = [(NSUUID *)deviceUUID UUIDString];
    v5 = [NSString stringWithFormat:@"%@:%@", collectionIdentifier, uUIDString];
  }

  else
  {
    v5 = [NSString stringWithFormat:@"%@:%@", collectionIdentifier, @"global"];
  }

  return v5;
}

@end