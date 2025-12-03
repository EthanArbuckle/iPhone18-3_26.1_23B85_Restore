@interface CRKDownloadResourcesResultObject
- (CRKDownloadResourcesResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKDownloadResourcesResultObject

- (CRKDownloadResourcesResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CRKDownloadResourcesResultObject;
  v5 = [(CATTaskResultObject *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"resourceFileURLs"];
    resourceFileURLs = v5->_resourceFileURLs;
    v5->_resourceFileURLs = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKDownloadResourcesResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKDownloadResourcesResultObject *)self resourceFileURLs:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"resourceFileURLs"];
}

@end