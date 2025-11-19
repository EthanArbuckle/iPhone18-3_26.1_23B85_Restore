@interface ICDocCamDocumentInfo
- (DCScanDataDelegate)scanDataDelegate;
- (ICDocCamDocumentInfo)init;
- (ICDocCamDocumentInfo)initWithCoder:(id)a3;
- (ICDocCamDocumentInfo)initWithDelegate:(id)a3;
- (ICDocCamViewControllerDelegate)delegate;
- (id)allUUIDs;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICDocCamDocumentInfo

- (ICDocCamDocumentInfo)init
{
  v3.receiver = self;
  v3.super_class = ICDocCamDocumentInfo;
  result = [(ICDocCamDocumentInfo *)&v3 init];
  if (result)
  {
    result->_currentOrientation = 0;
  }

  return result;
}

- (ICDocCamDocumentInfo)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamDocumentInfo *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (DCScanDataDelegate)scanDataDelegate
{
  v3 = [(ICDocCamDocumentInfo *)self scanDataDelegateIdentifier];

  if (v3)
  {
    v4 = [(ICDocCamDocumentInfo *)self delegate];
    v5 = [(ICDocCamDocumentInfo *)self scanDataDelegateIdentifier];
    v6 = [v4 scanDataDelegateWithIdentifier:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)allUUIDs
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v4 = [(ICDocCamDocumentInfo *)self croppedAndFilteredImageUUID];

  if (v4)
  {
    v5 = [(ICDocCamDocumentInfo *)self croppedAndFilteredImageUUID];
    [v3 addObject:v5];
  }

  v6 = [(ICDocCamDocumentInfo *)self croppedButNotFilteredImageUUID];

  if (v6)
  {
    v7 = [(ICDocCamDocumentInfo *)self croppedButNotFilteredImageUUID];
    [v3 addObject:v7];
  }

  v8 = [(ICDocCamDocumentInfo *)self fullImageUUID];

  if (v8)
  {
    v9 = [(ICDocCamDocumentInfo *)self fullImageUUID];
    [v3 addObject:v9];
  }

  v10 = [(ICDocCamDocumentInfo *)self meshAnimImageUUID];

  if (v10)
  {
    v11 = [(ICDocCamDocumentInfo *)self meshAnimImageUUID];
    [v3 addObject:v11];
  }

  v12 = [v3 copy];

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"\nself: %p\n", self];
  v4 = [(ICDocCamDocumentInfo *)self imageQuad];
  [v3 appendFormat:@"  imageQuad                      : %p\n", v4];

  v5 = [(ICDocCamDocumentInfo *)self croppedAndFilteredImageUUID];
  [v3 appendFormat:@"  croppedAndFilteredImageUUID    : %@\n", v5];

  v6 = [(ICDocCamDocumentInfo *)self croppedButNotFilteredImageUUID];
  [v3 appendFormat:@"  croppedButNotFilteredImageUUID : %@\n", v6];

  v7 = [(ICDocCamDocumentInfo *)self fullImageUUID];
  [v3 appendFormat:@"  fullImageUUID                  : %@\n", v7];

  v8 = [(ICDocCamDocumentInfo *)self meshAnimImageUUID];
  [v3 appendFormat:@"  meshAnimImageUUID              : %@\n", v8];

  [v3 appendFormat:@"  currentFilter                  : %d\n", -[ICDocCamDocumentInfo currentFilter](self, "currentFilter")];
  [v3 appendFormat:@"  currentOrientation             : %ld\n", -[ICDocCamDocumentInfo currentOrientation](self, "currentOrientation")];
  v9 = [(ICDocCamDocumentInfo *)self scanDataDelegateIdentifier];
  [v3 appendFormat:@"  scanDataDelegateIdentifier     : %@\n", v9];

  v10 = [(ICDocCamDocumentInfo *)self scanDataDelegate];
  [v3 appendFormat:@"  scanDataDelegate               : %p\n", v10];

  v11 = [(ICDocCamDocumentInfo *)self hasFilter];
  v12 = "NO";
  if (v11)
  {
    v12 = "YES";
  }

  [v3 appendFormat:@"  hasFilter                      : %s\n", v12];

  return v3;
}

- (ICDocCamDocumentInfo)initWithCoder:(id)a3
{
  v19[5] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = ICDocCamDocumentInfo;
  v5 = [(ICDocCamDocumentInfo *)&v18 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v19[2] = objc_opt_class();
    v19[3] = objc_opt_class();
    v19[4] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:5];
    v8 = [v6 setWithArray:v7];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"kMetadataFieldCodingKey"];
    [(ICDocCamDocumentInfo *)v5 setMetaData:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kImageQuadFieldCodingKey"];
    [(ICDocCamDocumentInfo *)v5 setImageQuad:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCroppedAndFilteredImageUUIDFieldCodingKey"];
    [(ICDocCamDocumentInfo *)v5 setCroppedAndFilteredImageUUID:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCroppedButNotFilteredImageUUIDFieldCodingKey"];
    [(ICDocCamDocumentInfo *)v5 setCroppedButNotFilteredImageUUID:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kFullImageUUIDFieldCodingKey"];
    [(ICDocCamDocumentInfo *)v5 setFullImageUUID:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMeshAnimImageUUIDFieldCodingKey"];
    [(ICDocCamDocumentInfo *)v5 setMeshAnimImageUUID:v14];

    -[ICDocCamDocumentInfo setCurrentFilter:](v5, "setCurrentFilter:", [v4 decodeInt32ForKey:@"kCurrentFilterUUIDFieldCodingKey"]);
    -[ICDocCamDocumentInfo setCurrentOrientation:](v5, "setCurrentOrientation:", [v4 decodeIntegerForKey:@"kCurrentOrientationFieldCodingKey"]);
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kScanDataDelegateIdentifierFieldCodingKey"];
    [(ICDocCamDocumentInfo *)v5 setScanDataDelegateIdentifier:v15];

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kMarkupModelDataFieldCodingKey"];
    [(ICDocCamDocumentInfo *)v5 setMarkupModelData:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICDocCamDocumentInfo *)self metaData];
  [v4 encodeObject:v5 forKey:@"kMetadataFieldCodingKey"];

  v6 = [(ICDocCamDocumentInfo *)self imageQuad];
  [v4 encodeObject:v6 forKey:@"kImageQuadFieldCodingKey"];

  v7 = [(ICDocCamDocumentInfo *)self croppedAndFilteredImageUUID];
  [v4 encodeObject:v7 forKey:@"kCroppedAndFilteredImageUUIDFieldCodingKey"];

  v8 = [(ICDocCamDocumentInfo *)self croppedButNotFilteredImageUUID];
  [v4 encodeObject:v8 forKey:@"kCroppedButNotFilteredImageUUIDFieldCodingKey"];

  v9 = [(ICDocCamDocumentInfo *)self fullImageUUID];
  [v4 encodeObject:v9 forKey:@"kFullImageUUIDFieldCodingKey"];

  v10 = [(ICDocCamDocumentInfo *)self meshAnimImageUUID];
  [v4 encodeObject:v10 forKey:@"kMeshAnimImageUUIDFieldCodingKey"];

  [v4 encodeInt32:-[ICDocCamDocumentInfo currentFilter](self forKey:{"currentFilter"), @"kCurrentFilterUUIDFieldCodingKey"}];
  [v4 encodeInteger:-[ICDocCamDocumentInfo currentOrientation](self forKey:{"currentOrientation"), @"kCurrentOrientationFieldCodingKey"}];
  v11 = [(ICDocCamDocumentInfo *)self scanDataDelegateIdentifier];
  [v4 encodeObject:v11 forKey:@"kScanDataDelegateIdentifierFieldCodingKey"];

  v12 = [(ICDocCamDocumentInfo *)self markupModelData];
  [v4 encodeObject:v12 forKey:@"kMarkupModelDataFieldCodingKey"];
}

- (ICDocCamViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end