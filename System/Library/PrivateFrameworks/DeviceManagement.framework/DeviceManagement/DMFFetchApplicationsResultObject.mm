@interface DMFFetchApplicationsResultObject
- (DMFFetchApplicationsResultObject)initWithApplicationsByIdentifier:(id)identifier;
- (DMFFetchApplicationsResultObject)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchApplicationsResultObject

- (DMFFetchApplicationsResultObject)initWithApplicationsByIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = DMFFetchApplicationsResultObject;
  v5 = [(CATTaskResultObject *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    applicationsByIdentifier = v5->_applicationsByIdentifier;
    v5->_applicationsByIdentifier = v6;
  }

  return v5;
}

- (DMFFetchApplicationsResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DMFFetchApplicationsResultObject;
  v5 = [(CATTaskResultObject *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"applicationsByIdentifier"];
    applicationsByIdentifier = v5->_applicationsByIdentifier;
    v5->_applicationsByIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchApplicationsResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchApplicationsResultObject *)self applicationsByIdentifier:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"applicationsByIdentifier"];
}

- (id)description
{
  v19 = *MEMORY[0x1E69E9840];
  applicationsByIdentifier = [(DMFFetchApplicationsResultObject *)self applicationsByIdentifier];
  allValues = [applicationsByIdentifier allValues];
  v4 = [allValues sortedArrayUsingComparator:&__block_literal_global_8];

  v5 = [MEMORY[0x1E696AD60] stringWithString:@"["];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    v10 = &stru_1F57A0020;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 appendFormat:@"%@\n%@", v10, *(*(&v14 + 1) + 8 * i), v14];
        v10 = @",";
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v10 = @",";
    }

    while (v8);
  }

  [v5 appendString:@"\n]"];
  v12 = *MEMORY[0x1E69E9840];

  return v5;
}

uint64_t __47__DMFFetchApplicationsResultObject_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 bundleIdentifier];
  v6 = [v4 bundleIdentifier];

  v7 = [v5 compare:v6];
  return v7;
}

@end