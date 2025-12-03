@interface ICDocCamDocumentInfo
- (DCScanDataDelegate)scanDataDelegate;
- (ICDocCamDocumentInfo)init;
- (ICDocCamDocumentInfo)initWithCoder:(id)coder;
- (ICDocCamDocumentInfo)initWithDelegate:(id)delegate;
- (ICDocCamViewControllerDelegate)delegate;
- (id)allUUIDs;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (ICDocCamDocumentInfo)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [(ICDocCamDocumentInfo *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (DCScanDataDelegate)scanDataDelegate
{
  scanDataDelegateIdentifier = [(ICDocCamDocumentInfo *)self scanDataDelegateIdentifier];

  if (scanDataDelegateIdentifier)
  {
    delegate = [(ICDocCamDocumentInfo *)self delegate];
    scanDataDelegateIdentifier2 = [(ICDocCamDocumentInfo *)self scanDataDelegateIdentifier];
    v6 = [delegate scanDataDelegateWithIdentifier:scanDataDelegateIdentifier2];
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
  croppedAndFilteredImageUUID = [(ICDocCamDocumentInfo *)self croppedAndFilteredImageUUID];

  if (croppedAndFilteredImageUUID)
  {
    croppedAndFilteredImageUUID2 = [(ICDocCamDocumentInfo *)self croppedAndFilteredImageUUID];
    [v3 addObject:croppedAndFilteredImageUUID2];
  }

  croppedButNotFilteredImageUUID = [(ICDocCamDocumentInfo *)self croppedButNotFilteredImageUUID];

  if (croppedButNotFilteredImageUUID)
  {
    croppedButNotFilteredImageUUID2 = [(ICDocCamDocumentInfo *)self croppedButNotFilteredImageUUID];
    [v3 addObject:croppedButNotFilteredImageUUID2];
  }

  fullImageUUID = [(ICDocCamDocumentInfo *)self fullImageUUID];

  if (fullImageUUID)
  {
    fullImageUUID2 = [(ICDocCamDocumentInfo *)self fullImageUUID];
    [v3 addObject:fullImageUUID2];
  }

  meshAnimImageUUID = [(ICDocCamDocumentInfo *)self meshAnimImageUUID];

  if (meshAnimImageUUID)
  {
    meshAnimImageUUID2 = [(ICDocCamDocumentInfo *)self meshAnimImageUUID];
    [v3 addObject:meshAnimImageUUID2];
  }

  v12 = [v3 copy];

  return v12;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  [v3 appendFormat:@"\nself: %p\n", self];
  imageQuad = [(ICDocCamDocumentInfo *)self imageQuad];
  [v3 appendFormat:@"  imageQuad                      : %p\n", imageQuad];

  croppedAndFilteredImageUUID = [(ICDocCamDocumentInfo *)self croppedAndFilteredImageUUID];
  [v3 appendFormat:@"  croppedAndFilteredImageUUID    : %@\n", croppedAndFilteredImageUUID];

  croppedButNotFilteredImageUUID = [(ICDocCamDocumentInfo *)self croppedButNotFilteredImageUUID];
  [v3 appendFormat:@"  croppedButNotFilteredImageUUID : %@\n", croppedButNotFilteredImageUUID];

  fullImageUUID = [(ICDocCamDocumentInfo *)self fullImageUUID];
  [v3 appendFormat:@"  fullImageUUID                  : %@\n", fullImageUUID];

  meshAnimImageUUID = [(ICDocCamDocumentInfo *)self meshAnimImageUUID];
  [v3 appendFormat:@"  meshAnimImageUUID              : %@\n", meshAnimImageUUID];

  [v3 appendFormat:@"  currentFilter                  : %d\n", -[ICDocCamDocumentInfo currentFilter](self, "currentFilter")];
  [v3 appendFormat:@"  currentOrientation             : %ld\n", -[ICDocCamDocumentInfo currentOrientation](self, "currentOrientation")];
  scanDataDelegateIdentifier = [(ICDocCamDocumentInfo *)self scanDataDelegateIdentifier];
  [v3 appendFormat:@"  scanDataDelegateIdentifier     : %@\n", scanDataDelegateIdentifier];

  scanDataDelegate = [(ICDocCamDocumentInfo *)self scanDataDelegate];
  [v3 appendFormat:@"  scanDataDelegate               : %p\n", scanDataDelegate];

  hasFilter = [(ICDocCamDocumentInfo *)self hasFilter];
  v12 = "NO";
  if (hasFilter)
  {
    v12 = "YES";
  }

  [v3 appendFormat:@"  hasFilter                      : %s\n", v12];

  return v3;
}

- (ICDocCamDocumentInfo)initWithCoder:(id)coder
{
  v19[5] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
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
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kMetadataFieldCodingKey"];
    [(ICDocCamDocumentInfo *)v5 setMetaData:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kImageQuadFieldCodingKey"];
    [(ICDocCamDocumentInfo *)v5 setImageQuad:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCroppedAndFilteredImageUUIDFieldCodingKey"];
    [(ICDocCamDocumentInfo *)v5 setCroppedAndFilteredImageUUID:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCroppedButNotFilteredImageUUIDFieldCodingKey"];
    [(ICDocCamDocumentInfo *)v5 setCroppedButNotFilteredImageUUID:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kFullImageUUIDFieldCodingKey"];
    [(ICDocCamDocumentInfo *)v5 setFullImageUUID:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMeshAnimImageUUIDFieldCodingKey"];
    [(ICDocCamDocumentInfo *)v5 setMeshAnimImageUUID:v14];

    -[ICDocCamDocumentInfo setCurrentFilter:](v5, "setCurrentFilter:", [coderCopy decodeInt32ForKey:@"kCurrentFilterUUIDFieldCodingKey"]);
    -[ICDocCamDocumentInfo setCurrentOrientation:](v5, "setCurrentOrientation:", [coderCopy decodeIntegerForKey:@"kCurrentOrientationFieldCodingKey"]);
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kScanDataDelegateIdentifierFieldCodingKey"];
    [(ICDocCamDocumentInfo *)v5 setScanDataDelegateIdentifier:v15];

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kMarkupModelDataFieldCodingKey"];
    [(ICDocCamDocumentInfo *)v5 setMarkupModelData:v16];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  metaData = [(ICDocCamDocumentInfo *)self metaData];
  [coderCopy encodeObject:metaData forKey:@"kMetadataFieldCodingKey"];

  imageQuad = [(ICDocCamDocumentInfo *)self imageQuad];
  [coderCopy encodeObject:imageQuad forKey:@"kImageQuadFieldCodingKey"];

  croppedAndFilteredImageUUID = [(ICDocCamDocumentInfo *)self croppedAndFilteredImageUUID];
  [coderCopy encodeObject:croppedAndFilteredImageUUID forKey:@"kCroppedAndFilteredImageUUIDFieldCodingKey"];

  croppedButNotFilteredImageUUID = [(ICDocCamDocumentInfo *)self croppedButNotFilteredImageUUID];
  [coderCopy encodeObject:croppedButNotFilteredImageUUID forKey:@"kCroppedButNotFilteredImageUUIDFieldCodingKey"];

  fullImageUUID = [(ICDocCamDocumentInfo *)self fullImageUUID];
  [coderCopy encodeObject:fullImageUUID forKey:@"kFullImageUUIDFieldCodingKey"];

  meshAnimImageUUID = [(ICDocCamDocumentInfo *)self meshAnimImageUUID];
  [coderCopy encodeObject:meshAnimImageUUID forKey:@"kMeshAnimImageUUIDFieldCodingKey"];

  [coderCopy encodeInt32:-[ICDocCamDocumentInfo currentFilter](self forKey:{"currentFilter"), @"kCurrentFilterUUIDFieldCodingKey"}];
  [coderCopy encodeInteger:-[ICDocCamDocumentInfo currentOrientation](self forKey:{"currentOrientation"), @"kCurrentOrientationFieldCodingKey"}];
  scanDataDelegateIdentifier = [(ICDocCamDocumentInfo *)self scanDataDelegateIdentifier];
  [coderCopy encodeObject:scanDataDelegateIdentifier forKey:@"kScanDataDelegateIdentifierFieldCodingKey"];

  markupModelData = [(ICDocCamDocumentInfo *)self markupModelData];
  [coderCopy encodeObject:markupModelData forKey:@"kMarkupModelDataFieldCodingKey"];
}

- (ICDocCamViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end