@interface CRKFetchIdentitiesTaskResultObject
- (CRKFetchIdentitiesTaskResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchIdentitiesTaskResultObject

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  courseIdentityInfosByGroupIdentifier = [(CRKFetchIdentitiesTaskResultObject *)self courseIdentityInfosByGroupIdentifier];
  [coderCopy encodeObject:courseIdentityInfosByGroupIdentifier forKey:@"courseIdentityInfosByGroupIdentifier"];
}

- (CRKFetchIdentitiesTaskResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CRKFetchIdentitiesTaskResultObject;
  v5 = [(CATTaskResultObject *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v20 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v18 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v20 setWithObjects:{v19, v18, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"courseIdentityInfosByGroupIdentifier"];
    courseIdentityInfosByGroupIdentifier = v5->_courseIdentityInfosByGroupIdentifier;
    v5->_courseIdentityInfosByGroupIdentifier = v15;
  }

  return v5;
}

@end