@interface NTKTrackedPhotosContent
- (NTKTrackedPhotosContent)initWithAlbumUUID:(id)d;
- (NTKTrackedPhotosContent)initWithCoder:(id)coder;
- (NTKTrackedPhotosContent)initWithDailyUUID:(id)d;
- (NTKTrackedPhotosContent)initWithShuffleUUID:(id)d;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NTKTrackedPhotosContent

- (NTKTrackedPhotosContent)initWithAlbumUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = NTKTrackedPhotosContent;
  v6 = [(NTKTrackedPhotosContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_albumUUID, d);
  }

  return v7;
}

- (NTKTrackedPhotosContent)initWithShuffleUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = NTKTrackedPhotosContent;
  v6 = [(NTKTrackedPhotosContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shuffleUUID, d);
  }

  return v7;
}

- (NTKTrackedPhotosContent)initWithDailyUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = NTKTrackedPhotosContent;
  v6 = [(NTKTrackedPhotosContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dailyUUID, d);
  }

  return v7;
}

- (NTKTrackedPhotosContent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = NTKTrackedPhotosContent;
  v5 = [(NTKTrackedPhotosContent *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"albumUUID"];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v6;

    v8 = [coderCopy decodeObjectForKey:@"shuffleUUID"];
    shuffleUUID = v5->_shuffleUUID;
    v5->_shuffleUUID = v8;

    v10 = [coderCopy decodeObjectForKey:@"dailyUUID"];
    dailyUUID = v5->_dailyUUID;
    v5->_dailyUUID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  albumUUID = self->_albumUUID;
  coderCopy = coder;
  [coderCopy encodeObject:albumUUID forKey:@"albumUUID"];
  [coderCopy encodeObject:self->_shuffleUUID forKey:@"shuffleUUID"];
  [coderCopy encodeObject:self->_dailyUUID forKey:@"dailyUUID"];
}

@end