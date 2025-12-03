@interface CRKShareRequest
- (CRKShareRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKShareRequest

- (CRKShareRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = CRKShareRequest;
  v5 = [(CATTaskRequest *)&v32 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"targetType"];
    targetType = v5->_targetType;
    v5->_targetType = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"targetIdentifier"];
    targetIdentifier = v5->_targetIdentifier;
    v5->_targetIdentifier = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"urls"];
    urls = v5->_urls;
    v5->_urls = v18;

    v20 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"shareDescription"];
    shareDescription = v5->_shareDescription;
    v5->_shareDescription = v21;

    v23 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"previewImageData"];
    previewImageData = v5->_previewImageData;
    v5->_previewImageData = v24;

    v26 = [coderCopy decodePropertyListForKey:@"sandboxExtensions"];
    sandboxExtensions = v5->_sandboxExtensions;
    v5->_sandboxExtensions = v26;

    v28 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"sourceBundleIdentifier"];
    sourceBundleIdentifier = v5->_sourceBundleIdentifier;
    v5->_sourceBundleIdentifier = v29;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v13.receiver = self;
  v13.super_class = CRKShareRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v13 encodeWithCoder:coderCopy];
  v5 = [(CRKShareRequest *)self courseIdentifier:v13.receiver];
  [coderCopy encodeObject:v5 forKey:@"courseIdentifier"];

  targetType = [(CRKShareRequest *)self targetType];
  [coderCopy encodeObject:targetType forKey:@"targetType"];

  targetIdentifier = [(CRKShareRequest *)self targetIdentifier];
  [coderCopy encodeObject:targetIdentifier forKey:@"targetIdentifier"];

  urls = [(CRKShareRequest *)self urls];
  [coderCopy encodeObject:urls forKey:@"urls"];

  shareDescription = [(CRKShareRequest *)self shareDescription];
  [coderCopy encodeObject:shareDescription forKey:@"shareDescription"];

  previewImageData = [(CRKShareRequest *)self previewImageData];
  [coderCopy encodeObject:previewImageData forKey:@"previewImageData"];

  sandboxExtensions = [(CRKShareRequest *)self sandboxExtensions];
  [coderCopy encodeObject:sandboxExtensions forKey:@"sandboxExtensions"];

  sourceBundleIdentifier = [(CRKShareRequest *)self sourceBundleIdentifier];
  [coderCopy encodeObject:sourceBundleIdentifier forKey:@"sourceBundleIdentifier"];
}

@end