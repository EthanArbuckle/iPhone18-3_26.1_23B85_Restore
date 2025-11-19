@interface NTKTrackedPhotosContent
- (NTKTrackedPhotosContent)initWithAlbumUUID:(id)a3;
- (NTKTrackedPhotosContent)initWithCoder:(id)a3;
- (NTKTrackedPhotosContent)initWithDailyUUID:(id)a3;
- (NTKTrackedPhotosContent)initWithShuffleUUID:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NTKTrackedPhotosContent

- (NTKTrackedPhotosContent)initWithAlbumUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKTrackedPhotosContent;
  v6 = [(NTKTrackedPhotosContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_albumUUID, a3);
  }

  return v7;
}

- (NTKTrackedPhotosContent)initWithShuffleUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKTrackedPhotosContent;
  v6 = [(NTKTrackedPhotosContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_shuffleUUID, a3);
  }

  return v7;
}

- (NTKTrackedPhotosContent)initWithDailyUUID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NTKTrackedPhotosContent;
  v6 = [(NTKTrackedPhotosContent *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dailyUUID, a3);
  }

  return v7;
}

- (NTKTrackedPhotosContent)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = NTKTrackedPhotosContent;
  v5 = [(NTKTrackedPhotosContent *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"albumUUID"];
    albumUUID = v5->_albumUUID;
    v5->_albumUUID = v6;

    v8 = [v4 decodeObjectForKey:@"shuffleUUID"];
    shuffleUUID = v5->_shuffleUUID;
    v5->_shuffleUUID = v8;

    v10 = [v4 decodeObjectForKey:@"dailyUUID"];
    dailyUUID = v5->_dailyUUID;
    v5->_dailyUUID = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  albumUUID = self->_albumUUID;
  v5 = a3;
  [v5 encodeObject:albumUUID forKey:@"albumUUID"];
  [v5 encodeObject:self->_shuffleUUID forKey:@"shuffleUUID"];
  [v5 encodeObject:self->_dailyUUID forKey:@"dailyUUID"];
}

@end