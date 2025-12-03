@interface CRKOpenFilesRequest
- (CRKOpenFilesRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKOpenFilesRequest

- (CRKOpenFilesRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = CRKOpenFilesRequest;
  v5 = [(CATTaskRequest *)&v22 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"fileItems"];
    fileItems = v5->_fileItems;
    v5->_fileItems = v9;

    v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"senderName"];
    senderName = v5->_senderName;
    v5->_senderName = v12;

    v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"previewImageData"];
    previewImageData = v5->_previewImageData;
    v5->_previewImageData = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"autoAccept"];
    v5->_autoAccept = [v17 BOOLValue];

    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"sourceBundleIdentifier"];
    sourceBundleIdentifier = v5->_sourceBundleIdentifier;
    v5->_sourceBundleIdentifier = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CRKOpenFilesRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v10 encodeWithCoder:coderCopy];
  v5 = [(CRKOpenFilesRequest *)self fileItems:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"fileItems"];

  senderName = [(CRKOpenFilesRequest *)self senderName];
  [coderCopy encodeObject:senderName forKey:@"senderName"];

  previewImageData = [(CRKOpenFilesRequest *)self previewImageData];
  [coderCopy encodeObject:previewImageData forKey:@"previewImageData"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKOpenFilesRequest autoAccept](self, "autoAccept")}];
  [coderCopy encodeObject:v8 forKey:@"autoAccept"];

  sourceBundleIdentifier = [(CRKOpenFilesRequest *)self sourceBundleIdentifier];
  [coderCopy encodeObject:sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
}

@end