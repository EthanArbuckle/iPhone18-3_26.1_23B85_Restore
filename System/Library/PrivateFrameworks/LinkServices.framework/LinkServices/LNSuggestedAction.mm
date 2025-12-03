@interface LNSuggestedAction
- (LNSuggestedAction)initWithAction:(id)action systemProtocol:(id)protocol dialogParameters:(id)parameters;
- (LNSuggestedAction)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSuggestedAction

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  action = [(LNSuggestedAction *)self action];
  [coderCopy encodeObject:action forKey:@"action"];

  systemProtocol = [(LNSuggestedAction *)self systemProtocol];
  [coderCopy encodeObject:systemProtocol forKey:@"systemProtocol"];

  dialogParameters = [(LNSuggestedAction *)self dialogParameters];
  [coderCopy encodeObject:dialogParameters forKey:@"dialogParameters"];
}

- (LNSuggestedAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemProtocol"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"dialogParameters"];

  v11 = [(LNSuggestedAction *)self initWithAction:v5 systemProtocol:v6 dialogParameters:v10];
  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  action = [(LNSuggestedAction *)self action];
  systemProtocol = [(LNSuggestedAction *)self systemProtocol];
  dialogParameters = [(LNSuggestedAction *)self dialogParameters];
  v9 = [v3 stringWithFormat:@"<%@: %p, action: %@, systemProtocol: %@, dialogParameters: %@>", v5, self, action, systemProtocol, dialogParameters];

  return v9;
}

- (LNSuggestedAction)initWithAction:(id)action systemProtocol:(id)protocol dialogParameters:(id)parameters
{
  actionCopy = action;
  protocolCopy = protocol;
  parametersCopy = parameters;
  v18.receiver = self;
  v18.super_class = LNSuggestedAction;
  v12 = [(LNSuggestedAction *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_action, action);
    objc_storeStrong(&v13->_systemProtocol, protocol);
    v14 = [parametersCopy copy];
    dialogParameters = v13->_dialogParameters;
    v13->_dialogParameters = v14;

    v16 = v13;
  }

  return v13;
}

@end