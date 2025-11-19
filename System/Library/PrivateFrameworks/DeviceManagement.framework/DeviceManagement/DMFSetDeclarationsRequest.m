@interface DMFSetDeclarationsRequest
- (DMFSetDeclarationsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFSetDeclarationsRequest

- (DMFSetDeclarationsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = DMFSetDeclarationsRequest;
  v5 = [(CATTaskRequest *)&v27 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"organizationIdentifier"];
    organizationIdentifier = v5->_organizationIdentifier;
    v5->_organizationIdentifier = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"syncToken"];
    syncToken = v5->_syncToken;
    v5->_syncToken = v10;

    v26 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v24 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v26 setWithObjects:{v25, v24, v12, v13, v14, v15, v16, v17, v18, v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"declarations"];
    declarations = v5->_declarations;
    v5->_declarations = v21;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = DMFSetDeclarationsRequest;
  v4 = a3;
  [(CATTaskRequest *)&v8 encodeWithCoder:v4];
  v5 = [(DMFSetDeclarationsRequest *)self organizationIdentifier:v8.receiver];
  [v4 encodeObject:v5 forKey:@"organizationIdentifier"];

  v6 = [(DMFSetDeclarationsRequest *)self syncToken];
  [v4 encodeObject:v6 forKey:@"syncToken"];

  v7 = [(DMFSetDeclarationsRequest *)self declarations];
  [v4 encodeObject:v7 forKey:@"declarations"];
}

@end