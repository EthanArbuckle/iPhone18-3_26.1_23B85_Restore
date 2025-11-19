@interface DMFAppRequest
- (DMFAppRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFAppRequest

- (DMFAppRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = DMFAppRequest;
  v5 = [(CATTaskRequest *)&v22 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"storeItemIdentifier"];
    storeItemIdentifier = v5->_storeItemIdentifier;
    v5->_storeItemIdentifier = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"manifestURL"];
    manifestURL = v5->_manifestURL;
    v5->_manifestURL = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"personaIdentifier"];
    personaIdentifier = v5->_personaIdentifier;
    v5->_personaIdentifier = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"sourceIdentifier"];
    sourceIdentifier = v5->_sourceIdentifier;
    v5->_sourceIdentifier = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = DMFAppRequest;
  v4 = a3;
  [(CATTaskRequest *)&v10 encodeWithCoder:v4];
  v5 = [(DMFAppRequest *)self bundleIdentifier:v10.receiver];
  [v4 encodeObject:v5 forKey:@"bundleIdentifier"];

  v6 = [(DMFAppRequest *)self storeItemIdentifier];
  [v4 encodeObject:v6 forKey:@"storeItemIdentifier"];

  v7 = [(DMFAppRequest *)self manifestURL];
  [v4 encodeObject:v7 forKey:@"manifestURL"];

  v8 = [(DMFAppRequest *)self personaIdentifier];
  [v4 encodeObject:v8 forKey:@"personaIdentifier"];

  v9 = [(DMFAppRequest *)self sourceIdentifier];
  [v4 encodeObject:v9 forKey:@"sourceIdentifier"];
}

@end