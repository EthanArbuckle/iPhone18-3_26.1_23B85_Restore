@interface CRKOpenFilesRequest
- (CRKOpenFilesRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKOpenFilesRequest

- (CRKOpenFilesRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CRKOpenFilesRequest;
  v5 = [(CATTaskRequest *)&v22 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"fileItems"];
    fileItems = v5->_fileItems;
    v5->_fileItems = v9;

    v11 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"senderName"];
    senderName = v5->_senderName;
    v5->_senderName = v12;

    v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"previewImageData"];
    previewImageData = v5->_previewImageData;
    v5->_previewImageData = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"autoAccept"];
    v5->_autoAccept = [v17 BOOLValue];

    v18 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"sourceBundleIdentifier"];
    sourceBundleIdentifier = v5->_sourceBundleIdentifier;
    v5->_sourceBundleIdentifier = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CRKOpenFilesRequest;
  v4 = a3;
  [(CATTaskRequest *)&v10 encodeWithCoder:v4];
  v5 = [(CRKOpenFilesRequest *)self fileItems:v10.receiver];
  [v4 encodeObject:v5 forKey:@"fileItems"];

  v6 = [(CRKOpenFilesRequest *)self senderName];
  [v4 encodeObject:v6 forKey:@"senderName"];

  v7 = [(CRKOpenFilesRequest *)self previewImageData];
  [v4 encodeObject:v7 forKey:@"previewImageData"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKOpenFilesRequest autoAccept](self, "autoAccept")}];
  [v4 encodeObject:v8 forKey:@"autoAccept"];

  v9 = [(CRKOpenFilesRequest *)self sourceBundleIdentifier];
  [v4 encodeObject:v9 forKey:@"sourceBundleIdentifier"];
}

@end