@interface LNSuggestedAction
- (LNSuggestedAction)initWithAction:(id)a3 systemProtocol:(id)a4 dialogParameters:(id)a5;
- (LNSuggestedAction)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSuggestedAction

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNSuggestedAction *)self action];
  [v4 encodeObject:v5 forKey:@"action"];

  v6 = [(LNSuggestedAction *)self systemProtocol];
  [v4 encodeObject:v6 forKey:@"systemProtocol"];

  v7 = [(LNSuggestedAction *)self dialogParameters];
  [v4 encodeObject:v7 forKey:@"dialogParameters"];
}

- (LNSuggestedAction)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"systemProtocol"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"dialogParameters"];

  v11 = [(LNSuggestedAction *)self initWithAction:v5 systemProtocol:v6 dialogParameters:v10];
  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNSuggestedAction *)self action];
  v7 = [(LNSuggestedAction *)self systemProtocol];
  v8 = [(LNSuggestedAction *)self dialogParameters];
  v9 = [v3 stringWithFormat:@"<%@: %p, action: %@, systemProtocol: %@, dialogParameters: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (LNSuggestedAction)initWithAction:(id)a3 systemProtocol:(id)a4 dialogParameters:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = LNSuggestedAction;
  v12 = [(LNSuggestedAction *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_action, a3);
    objc_storeStrong(&v13->_systemProtocol, a4);
    v14 = [v11 copy];
    dialogParameters = v13->_dialogParameters;
    v13->_dialogParameters = v14;

    v16 = v13;
  }

  return v13;
}

@end