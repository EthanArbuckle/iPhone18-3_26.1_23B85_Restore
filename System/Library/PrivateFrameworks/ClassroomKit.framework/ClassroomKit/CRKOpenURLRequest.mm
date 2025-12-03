@interface CRKOpenURLRequest
- (CRKOpenURLRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKOpenURLRequest

- (CRKOpenURLRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CRKOpenURLRequest;
  v5 = [(CATTaskRequest *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"URLDisplayName"];
    URLDisplayName = v5->_URLDisplayName;
    v5->_URLDisplayName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockInApp"];
    v5->_lockInApp = [v12 BOOLValue];

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"handlingBundleIdentifiers"];
    handlingBundleIdentifiers = v5->_handlingBundleIdentifiers;
    v5->_handlingBundleIdentifiers = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CRKOpenURLRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v9 encodeWithCoder:coderCopy];
  v5 = [(CRKOpenURLRequest *)self URL:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"URL"];

  uRLDisplayName = [(CRKOpenURLRequest *)self URLDisplayName];
  [coderCopy encodeObject:uRLDisplayName forKey:@"URLDisplayName"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKOpenURLRequest lockInApp](self, "lockInApp")}];
  [coderCopy encodeObject:v7 forKey:@"lockInApp"];

  handlingBundleIdentifiers = [(CRKOpenURLRequest *)self handlingBundleIdentifiers];
  [coderCopy encodeObject:handlingBundleIdentifiers forKey:@"handlingBundleIdentifiers"];
}

@end