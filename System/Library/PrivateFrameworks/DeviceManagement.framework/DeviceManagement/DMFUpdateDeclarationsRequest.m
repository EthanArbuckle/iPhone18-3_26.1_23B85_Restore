@interface DMFUpdateDeclarationsRequest
- (DMFUpdateDeclarationsRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFUpdateDeclarationsRequest

- (DMFUpdateDeclarationsRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = DMFUpdateDeclarationsRequest;
  v5 = [(CATTaskRequest *)&v41 initWithCoder:v4];
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

    v39 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v35 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = [v39 setWithObjects:{v37, v35, v12, v13, v14, v15, v16, v17, v18, v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"upsertDeclarations"];
    upsertDeclarations = v5->_upsertDeclarations;
    v5->_upsertDeclarations = v21;

    v40 = MEMORY[0x1E695DFD8];
    v38 = objc_opt_class();
    v36 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = objc_opt_class();
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v30 = objc_opt_class();
    v31 = [v40 setWithObjects:{v38, v36, v23, v24, v25, v26, v27, v28, v29, v30, objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"removeDeclarations"];
    removeDeclarations = v5->_removeDeclarations;
    v5->_removeDeclarations = v32;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = DMFUpdateDeclarationsRequest;
  v4 = a3;
  [(CATTaskRequest *)&v9 encodeWithCoder:v4];
  v5 = [(DMFUpdateDeclarationsRequest *)self organizationIdentifier:v9.receiver];
  [v4 encodeObject:v5 forKey:@"organizationIdentifier"];

  v6 = [(DMFUpdateDeclarationsRequest *)self syncToken];
  [v4 encodeObject:v6 forKey:@"syncToken"];

  v7 = [(DMFUpdateDeclarationsRequest *)self upsertDeclarations];
  [v4 encodeObject:v7 forKey:@"upsertDeclarations"];

  v8 = [(DMFUpdateDeclarationsRequest *)self removeDeclarations];
  [v4 encodeObject:v8 forKey:@"removeDeclarations"];
}

@end