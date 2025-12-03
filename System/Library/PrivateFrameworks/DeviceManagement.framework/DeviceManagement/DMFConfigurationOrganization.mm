@interface DMFConfigurationOrganization
- (DMFConfigurationOrganization)init;
- (DMFConfigurationOrganization)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFConfigurationOrganization

- (DMFConfigurationOrganization)init
{
  v3.receiver = self;
  v3.super_class = DMFConfigurationOrganization;
  return [(DMFConfigurationOrganization *)&v3 init];
}

- (id)description
{
  v7[4] = *MEMORY[0x1E69E9840];
  v7[0] = @"identifier";
  v7[1] = @"displayName";
  v7[2] = @"type";
  v7[3] = @"active";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4];
  v4 = DMFObjectDescriptionWithProperties(self, v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)debugDescription
{
  v7[5] = *MEMORY[0x1E69E9840];
  v7[0] = @"identifier";
  v7[1] = @"displayName";
  v7[2] = @"type";
  v7[3] = @"active";
  v7[4] = @"registeredConfigurationSources";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:5];
  v4 = DMFObjectDescriptionWithProperties(self, v3);

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (DMFConfigurationOrganization)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = DMFConfigurationOrganization;
  v5 = [(DMFConfigurationOrganization *)&v22 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v7;

    v9 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v10;

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"type"];
    type = v5->_type;
    v5->_type = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"active"];
    v5->_active = [v15 BOOLValue];

    v16 = MEMORY[0x1E695DFD8];
    v17 = objc_opt_class();
    v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
    v19 = [coderCopy decodeObjectOfClasses:v18 forKey:@"registeredConfigurationSources"];
    registeredConfigurationSources = v5->_registeredConfigurationSources;
    v5->_registeredConfigurationSources = v19;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(DMFConfigurationOrganization *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  displayName = [(DMFConfigurationOrganization *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  type = [(DMFConfigurationOrganization *)self type];
  [coderCopy encodeObject:type forKey:@"type"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[DMFConfigurationOrganization active](self, "active")}];
  [coderCopy encodeObject:v8 forKey:@"active"];

  registeredConfigurationSources = [(DMFConfigurationOrganization *)self registeredConfigurationSources];
  [coderCopy encodeObject:registeredConfigurationSources forKey:@"registeredConfigurationSources"];
}

@end