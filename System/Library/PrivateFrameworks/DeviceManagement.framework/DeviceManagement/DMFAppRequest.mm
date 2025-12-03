@interface DMFAppRequest
- (DMFAppRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFAppRequest

- (DMFAppRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = DMFAppRequest;
  v5 = [(CATTaskRequest *)&v22 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"storeItemIdentifier"];
    storeItemIdentifier = v5->_storeItemIdentifier;
    v5->_storeItemIdentifier = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"manifestURL"];
    manifestURL = v5->_manifestURL;
    v5->_manifestURL = v13;

    v15 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"personaIdentifier"];
    personaIdentifier = v5->_personaIdentifier;
    v5->_personaIdentifier = v16;

    v18 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"sourceIdentifier"];
    sourceIdentifier = v5->_sourceIdentifier;
    v5->_sourceIdentifier = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = DMFAppRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v10 encodeWithCoder:coderCopy];
  v5 = [(DMFAppRequest *)self bundleIdentifier:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"bundleIdentifier"];

  storeItemIdentifier = [(DMFAppRequest *)self storeItemIdentifier];
  [coderCopy encodeObject:storeItemIdentifier forKey:@"storeItemIdentifier"];

  manifestURL = [(DMFAppRequest *)self manifestURL];
  [coderCopy encodeObject:manifestURL forKey:@"manifestURL"];

  personaIdentifier = [(DMFAppRequest *)self personaIdentifier];
  [coderCopy encodeObject:personaIdentifier forKey:@"personaIdentifier"];

  sourceIdentifier = [(DMFAppRequest *)self sourceIdentifier];
  [coderCopy encodeObject:sourceIdentifier forKey:@"sourceIdentifier"];
}

@end