@interface ML3ClientImportItem
- (ML3ClientImportItem)initWithCoder:(id)coder;
- (ML3ClientImportItem)initWithMultiverseIdentifier:(id)identifier mediaItem:(id)item;
- (ML3ClientImportItem)initWithMultiverseIdentifier:(id)identifier playlistItem:(id)item;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3ClientImportItem

- (void)encodeWithCoder:(id)coder
{
  multiverseIdentifier = self->_multiverseIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:multiverseIdentifier forKey:@"multiverseID"];
  [coderCopy encodeObject:self->_mediaItem forKey:@"mediaItem"];
  [coderCopy encodeObject:self->_playlistItem forKey:@"playlistItem"];
}

- (ML3ClientImportItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = ML3ClientImportItem;
  v5 = [(ML3ClientImportItem *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"multiverseID"];
    multiverseIdentifier = v5->_multiverseIdentifier;
    v5->_multiverseIdentifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mediaItem"];
    mediaItem = v5->_mediaItem;
    v5->_mediaItem = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"playlistItem"];
    playlistItem = v5->_playlistItem;
    v5->_playlistItem = v10;
  }

  return v5;
}

- (ML3ClientImportItem)initWithMultiverseIdentifier:(id)identifier playlistItem:(id)item
{
  identifierCopy = identifier;
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = ML3ClientImportItem;
  v9 = [(ML3ClientImportItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_multiverseIdentifier, identifier);
    objc_storeStrong(&v10->_playlistItem, item);
  }

  return v10;
}

- (ML3ClientImportItem)initWithMultiverseIdentifier:(id)identifier mediaItem:(id)item
{
  identifierCopy = identifier;
  itemCopy = item;
  v12.receiver = self;
  v12.super_class = ML3ClientImportItem;
  v9 = [(ML3ClientImportItem *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_multiverseIdentifier, identifier);
    objc_storeStrong(&v10->_mediaItem, item);
  }

  return v10;
}

@end