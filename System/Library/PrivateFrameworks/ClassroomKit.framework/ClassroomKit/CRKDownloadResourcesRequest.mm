@interface CRKDownloadResourcesRequest
- (CRKDownloadResourcesRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKDownloadResourcesRequest

- (CRKDownloadResourcesRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CRKDownloadResourcesRequest;
  v5 = [(CATTaskRequest *)&v25 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = MEMORY[0x277CBEB98];
    v10 = objc_opt_class();
    v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"resources"];
    resources = v5->_resources;
    v5->_resources = v12;

    v14 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"resourcesDescription"];
    resourcesDescription = v5->_resourcesDescription;
    v5->_resourcesDescription = v15;

    v17 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"previewImageData"];
    previewImageData = v5->_previewImageData;
    v5->_previewImageData = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"openAfterDownloadCompletes"];
    v5->_openAfterDownloadCompletes = [v20 BOOLValue];

    v21 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v22 = [v4 decodeObjectOfClasses:v21 forKey:@"sourceBundleIdentifier"];
    sourceBundleIdentifier = v5->_sourceBundleIdentifier;
    v5->_sourceBundleIdentifier = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = CRKDownloadResourcesRequest;
  v4 = a3;
  [(CATTaskRequest *)&v11 encodeWithCoder:v4];
  v5 = [(CRKDownloadResourcesRequest *)self courseIdentifier:v11.receiver];
  [v4 encodeObject:v5 forKey:@"courseIdentifier"];

  v6 = [(CRKDownloadResourcesRequest *)self resources];
  [v4 encodeObject:v6 forKey:@"resources"];

  v7 = [(CRKDownloadResourcesRequest *)self resourcesDescription];
  [v4 encodeObject:v7 forKey:@"resourcesDescription"];

  v8 = [(CRKDownloadResourcesRequest *)self previewImageData];
  [v4 encodeObject:v8 forKey:@"previewImageData"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKDownloadResourcesRequest openAfterDownloadCompletes](self, "openAfterDownloadCompletes")}];
  [v4 encodeObject:v9 forKey:@"openAfterDownloadCompletes"];

  v10 = [(CRKDownloadResourcesRequest *)self sourceBundleIdentifier];
  [v4 encodeObject:v10 forKey:@"sourceBundleIdentifier"];
}

@end