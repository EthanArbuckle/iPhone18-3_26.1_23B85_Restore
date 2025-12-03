@interface CRKDownloadResourcesRequest
- (CRKDownloadResourcesRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKDownloadResourcesRequest

- (CRKDownloadResourcesRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = CRKDownloadResourcesRequest;
  v5 = [(CATTaskRequest *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"resources"];
    resources = v5->_resources;
    v5->_resources = v12;

    v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"resourcesDescription"];
    resourcesDescription = v5->_resourcesDescription;
    v5->_resourcesDescription = v15;

    v17 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"previewImageData"];
    previewImageData = v5->_previewImageData;
    v5->_previewImageData = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"openAfterDownloadCompletes"];
    v5->_openAfterDownloadCompletes = [v20 BOOLValue];

    v21 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"sourceBundleIdentifier"];
    sourceBundleIdentifier = v5->_sourceBundleIdentifier;
    v5->_sourceBundleIdentifier = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v11.receiver = self;
  v11.super_class = CRKDownloadResourcesRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v11 encodeWithCoder:coderCopy];
  v5 = [(CRKDownloadResourcesRequest *)self courseIdentifier:v11.receiver];
  [coderCopy encodeObject:v5 forKey:@"courseIdentifier"];

  resources = [(CRKDownloadResourcesRequest *)self resources];
  [coderCopy encodeObject:resources forKey:@"resources"];

  resourcesDescription = [(CRKDownloadResourcesRequest *)self resourcesDescription];
  [coderCopy encodeObject:resourcesDescription forKey:@"resourcesDescription"];

  previewImageData = [(CRKDownloadResourcesRequest *)self previewImageData];
  [coderCopy encodeObject:previewImageData forKey:@"previewImageData"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKDownloadResourcesRequest openAfterDownloadCompletes](self, "openAfterDownloadCompletes")}];
  [coderCopy encodeObject:v9 forKey:@"openAfterDownloadCompletes"];

  sourceBundleIdentifier = [(CRKDownloadResourcesRequest *)self sourceBundleIdentifier];
  [coderCopy encodeObject:sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
}

@end