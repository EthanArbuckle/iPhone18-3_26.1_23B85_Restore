@interface MKPhotoLibraryAsset
- (MKPhotoLibraryAsset)initWithIdentifier:(id)a3;
- (MKPhotoLibraryAsset)initWithPath:(id)a3 filename:(id)a4 collection:(id)a5 originalFilename:(id)a6 size:(unint64_t)a7;
@end

@implementation MKPhotoLibraryAsset

- (MKPhotoLibraryAsset)initWithPath:(id)a3 filename:(id)a4 collection:(id)a5 originalFilename:(id)a6 size:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v19.receiver = self;
  v19.super_class = MKPhotoLibraryAsset;
  v16 = [(MKPhotoLibraryAsset *)&v19 init];
  v17 = v16;
  if (v16)
  {
    [(MKPhotoLibraryAsset *)v16 setSize:a7];
    [(MKPhotoLibraryAsset *)v17 setPath:v12];
    [(MKPhotoLibraryAsset *)v17 setFilename:v13];
    [(MKPhotoLibraryAsset *)v17 setCollection:v14];
    [(MKPhotoLibraryAsset *)v17 setOriginalFilename:v15];
  }

  return v17;
}

- (MKPhotoLibraryAsset)initWithIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MKPhotoLibraryAsset;
  v5 = [(MKPhotoLibraryAsset *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MKPhotoLibraryAsset *)v5 setIdentifier:v4];
  }

  return v6;
}

@end