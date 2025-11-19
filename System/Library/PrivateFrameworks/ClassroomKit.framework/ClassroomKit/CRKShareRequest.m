@interface CRKShareRequest
- (CRKShareRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKShareRequest

- (CRKShareRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = CRKShareRequest;
  v5 = [(CATTaskRequest *)&v32 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"targetType"];
    targetType = v5->_targetType;
    v5->_targetType = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"targetIdentifier"];
    targetIdentifier = v5->_targetIdentifier;
    v5->_targetIdentifier = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"urls"];
    urls = v5->_urls;
    v5->_urls = v18;

    v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"shareDescription"];
    shareDescription = v5->_shareDescription;
    v5->_shareDescription = v21;

    v23 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v24 = [v4 decodeObjectOfClasses:v23 forKey:@"previewImageData"];
    previewImageData = v5->_previewImageData;
    v5->_previewImageData = v24;

    v26 = [v4 decodePropertyListForKey:@"sandboxExtensions"];
    sandboxExtensions = v5->_sandboxExtensions;
    v5->_sandboxExtensions = v26;

    v28 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v29 = [v4 decodeObjectOfClasses:v28 forKey:@"sourceBundleIdentifier"];
    sourceBundleIdentifier = v5->_sourceBundleIdentifier;
    v5->_sourceBundleIdentifier = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v13.receiver = self;
  v13.super_class = CRKShareRequest;
  v4 = a3;
  [(CATTaskRequest *)&v13 encodeWithCoder:v4];
  v5 = [(CRKShareRequest *)self courseIdentifier:v13.receiver];
  [v4 encodeObject:v5 forKey:@"courseIdentifier"];

  v6 = [(CRKShareRequest *)self targetType];
  [v4 encodeObject:v6 forKey:@"targetType"];

  v7 = [(CRKShareRequest *)self targetIdentifier];
  [v4 encodeObject:v7 forKey:@"targetIdentifier"];

  v8 = [(CRKShareRequest *)self urls];
  [v4 encodeObject:v8 forKey:@"urls"];

  v9 = [(CRKShareRequest *)self shareDescription];
  [v4 encodeObject:v9 forKey:@"shareDescription"];

  v10 = [(CRKShareRequest *)self previewImageData];
  [v4 encodeObject:v10 forKey:@"previewImageData"];

  v11 = [(CRKShareRequest *)self sandboxExtensions];
  [v4 encodeObject:v11 forKey:@"sandboxExtensions"];

  v12 = [(CRKShareRequest *)self sourceBundleIdentifier];
  [v4 encodeObject:v12 forKey:@"sourceBundleIdentifier"];
}

@end