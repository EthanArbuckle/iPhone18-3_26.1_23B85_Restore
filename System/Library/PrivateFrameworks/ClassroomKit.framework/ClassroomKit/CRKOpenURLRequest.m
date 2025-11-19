@interface CRKOpenURLRequest
- (CRKOpenURLRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKOpenURLRequest

- (CRKOpenURLRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CRKOpenURLRequest;
  v5 = [(CATTaskRequest *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"URLDisplayName"];
    URLDisplayName = v5->_URLDisplayName;
    v5->_URLDisplayName = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lockInApp"];
    v5->_lockInApp = [v12 BOOLValue];

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"handlingBundleIdentifiers"];
    handlingBundleIdentifiers = v5->_handlingBundleIdentifiers;
    v5->_handlingBundleIdentifiers = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CRKOpenURLRequest;
  v4 = a3;
  [(CATTaskRequest *)&v9 encodeWithCoder:v4];
  v5 = [(CRKOpenURLRequest *)self URL:v9.receiver];
  [v4 encodeObject:v5 forKey:@"URL"];

  v6 = [(CRKOpenURLRequest *)self URLDisplayName];
  [v4 encodeObject:v6 forKey:@"URLDisplayName"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKOpenURLRequest lockInApp](self, "lockInApp")}];
  [v4 encodeObject:v7 forKey:@"lockInApp"];

  v8 = [(CRKOpenURLRequest *)self handlingBundleIdentifiers];
  [v4 encodeObject:v8 forKey:@"handlingBundleIdentifiers"];
}

@end