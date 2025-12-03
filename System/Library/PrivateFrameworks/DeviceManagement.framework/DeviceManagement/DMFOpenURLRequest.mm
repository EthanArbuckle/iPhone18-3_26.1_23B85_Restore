@interface DMFOpenURLRequest
- (DMFOpenURLRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFOpenURLRequest

- (DMFOpenURLRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = DMFOpenURLRequest;
  v5 = [(CATTaskRequest *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"url"];
    url = v5->_url;
    v5->_url = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"URLDisplayName"];
    URLDisplayName = v5->_URLDisplayName;
    v5->_URLDisplayName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockInApp"];
    v5->_lockInApp = [v12 BOOLValue];

    v13 = MEMORY[0x1E695DFD8];
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
  v9.super_class = DMFOpenURLRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v9 encodeWithCoder:coderCopy];
  v5 = [(DMFOpenURLRequest *)self url:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"url"];

  uRLDisplayName = [(DMFOpenURLRequest *)self URLDisplayName];
  [coderCopy encodeObject:uRLDisplayName forKey:@"URLDisplayName"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFOpenURLRequest lockInApp](self, "lockInApp")}];
  [coderCopy encodeObject:v7 forKey:@"lockInApp"];

  handlingBundleIdentifiers = [(DMFOpenURLRequest *)self handlingBundleIdentifiers];
  [coderCopy encodeObject:handlingBundleIdentifiers forKey:@"handlingBundleIdentifiers"];
}

@end