@interface MKPhotoLibraryAsset
- (MKPhotoLibraryAsset)initWithIdentifier:(id)identifier;
- (MKPhotoLibraryAsset)initWithPath:(id)path filename:(id)filename collection:(id)collection originalFilename:(id)originalFilename size:(unint64_t)size;
@end

@implementation MKPhotoLibraryAsset

- (MKPhotoLibraryAsset)initWithPath:(id)path filename:(id)filename collection:(id)collection originalFilename:(id)originalFilename size:(unint64_t)size
{
  pathCopy = path;
  filenameCopy = filename;
  collectionCopy = collection;
  originalFilenameCopy = originalFilename;
  v19.receiver = self;
  v19.super_class = MKPhotoLibraryAsset;
  v16 = [(MKPhotoLibraryAsset *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(MKPhotoLibraryAsset *)v16 setSize:size];
    [(MKPhotoLibraryAsset *)v17 setPath:pathCopy];
    [(MKPhotoLibraryAsset *)v17 setFilename:filenameCopy];
    [(MKPhotoLibraryAsset *)v17 setCollection:collectionCopy];
    [(MKPhotoLibraryAsset *)v17 setOriginalFilename:originalFilenameCopy];
  }

  return v17;
}

- (MKPhotoLibraryAsset)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = MKPhotoLibraryAsset;
  v5 = [(MKPhotoLibraryAsset *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MKPhotoLibraryAsset *)v5 setIdentifier:identifierCopy];
  }

  return v6;
}

@end