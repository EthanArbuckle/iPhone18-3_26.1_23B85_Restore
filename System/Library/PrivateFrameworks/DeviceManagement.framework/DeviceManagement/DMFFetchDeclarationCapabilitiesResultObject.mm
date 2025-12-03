@interface DMFFetchDeclarationCapabilitiesResultObject
- (DMFFetchDeclarationCapabilitiesResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchDeclarationCapabilitiesResultObject

- (DMFFetchDeclarationCapabilitiesResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v42.receiver = self;
  v42.super_class = DMFFetchDeclarationCapabilitiesResultObject;
  v5 = [(CATTaskResultObject *)&v42 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"supportedCommands"];
    supportedCommands = v5->_supportedCommands;
    v5->_supportedCommands = v9;

    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"supportedAssets"];
    supportedAssets = v5->_supportedAssets;
    v5->_supportedAssets = v14;

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"supportedConfigurations"];
    supportedConfigurations = v5->_supportedConfigurations;
    v5->_supportedConfigurations = v19;

    v21 = MEMORY[0x1E695DFD8];
    v22 = objc_opt_class();
    v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
    v24 = [coderCopy decodeObjectOfClasses:v23 forKey:@"supportedEvents"];
    supportedEvents = v5->_supportedEvents;
    v5->_supportedEvents = v24;

    v26 = MEMORY[0x1E695DFD8];
    v27 = objc_opt_class();
    v28 = [v26 setWithObjects:{v27, objc_opt_class(), 0}];
    v29 = [coderCopy decodeObjectOfClasses:v28 forKey:@"supportedActivations"];
    supportedActivations = v5->_supportedActivations;
    v5->_supportedActivations = v29;

    v31 = MEMORY[0x1E695DFD8];
    v32 = objc_opt_class();
    v33 = [v31 setWithObjects:{v32, objc_opt_class(), 0}];
    v34 = [coderCopy decodeObjectOfClasses:v33 forKey:@"supportedPredicates"];
    supportedPredicates = v5->_supportedPredicates;
    v5->_supportedPredicates = v34;

    v36 = MEMORY[0x1E695DFD8];
    v37 = objc_opt_class();
    v38 = [v36 setWithObjects:{v37, objc_opt_class(), 0}];
    v39 = [coderCopy decodeObjectOfClasses:v38 forKey:@"supportedMessages"];
    supportedMessages = v5->_supportedMessages;
    v5->_supportedMessages = v39;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = DMFFetchDeclarationCapabilitiesResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v12 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchDeclarationCapabilitiesResultObject *)self supportedCommands:v12.receiver];
  [coderCopy encodeObject:v5 forKey:@"supportedCommands"];

  supportedAssets = [(DMFFetchDeclarationCapabilitiesResultObject *)self supportedAssets];
  [coderCopy encodeObject:supportedAssets forKey:@"supportedAssets"];

  supportedConfigurations = [(DMFFetchDeclarationCapabilitiesResultObject *)self supportedConfigurations];
  [coderCopy encodeObject:supportedConfigurations forKey:@"supportedConfigurations"];

  supportedEvents = [(DMFFetchDeclarationCapabilitiesResultObject *)self supportedEvents];
  [coderCopy encodeObject:supportedEvents forKey:@"supportedEvents"];

  supportedActivations = [(DMFFetchDeclarationCapabilitiesResultObject *)self supportedActivations];
  [coderCopy encodeObject:supportedActivations forKey:@"supportedActivations"];

  supportedPredicates = [(DMFFetchDeclarationCapabilitiesResultObject *)self supportedPredicates];
  [coderCopy encodeObject:supportedPredicates forKey:@"supportedPredicates"];

  supportedMessages = [(DMFFetchDeclarationCapabilitiesResultObject *)self supportedMessages];
  [coderCopy encodeObject:supportedMessages forKey:@"supportedMessages"];
}

@end