@interface ML3ClientImportItem
- (ML3ClientImportItem)initWithCoder:(id)a3;
- (ML3ClientImportItem)initWithMultiverseIdentifier:(id)a3 mediaItem:(id)a4;
- (ML3ClientImportItem)initWithMultiverseIdentifier:(id)a3 playlistItem:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ML3ClientImportItem

- (void)encodeWithCoder:(id)a3
{
  multiverseIdentifier = self->_multiverseIdentifier;
  v5 = a3;
  [v5 encodeObject:multiverseIdentifier forKey:@"multiverseID"];
  [v5 encodeObject:self->_mediaItem forKey:@"mediaItem"];
  [v5 encodeObject:self->_playlistItem forKey:@"playlistItem"];
}

- (ML3ClientImportItem)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = ML3ClientImportItem;
  v5 = [(ML3ClientImportItem *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"multiverseID"];
    multiverseIdentifier = v5->_multiverseIdentifier;
    v5->_multiverseIdentifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mediaItem"];
    mediaItem = v5->_mediaItem;
    v5->_mediaItem = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"playlistItem"];
    playlistItem = v5->_playlistItem;
    v5->_playlistItem = v10;
  }

  return v5;
}

- (ML3ClientImportItem)initWithMultiverseIdentifier:(id)a3 playlistItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ML3ClientImportItem;
  v9 = [(ML3ClientImportItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_multiverseIdentifier, a3);
    objc_storeStrong(&v10->_playlistItem, a4);
  }

  return v10;
}

- (ML3ClientImportItem)initWithMultiverseIdentifier:(id)a3 mediaItem:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ML3ClientImportItem;
  v9 = [(ML3ClientImportItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_multiverseIdentifier, a3);
    objc_storeStrong(&v10->_mediaItem, a4);
  }

  return v10;
}

@end