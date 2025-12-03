@interface ISLayeredIcon
- (BOOL)isEqual:(id)equal;
- (ISLayeredIcon)initWithCoder:(id)coder;
- (ISLayeredIcon)initWithTypeIdentifier:(id)identifier layerGroups:(id)groups;
- (id)description;
- (id)makeResourceProvider;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ISLayeredIcon

- (ISLayeredIcon)initWithTypeIdentifier:(id)identifier layerGroups:(id)groups
{
  v26[2] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  groupsCopy = groups;
  v24 = identifierCopy;
  v7 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:identifierCopy];
  if ([groupsCopy count])
  {
    v8 = 0;
    do
    {
      v9 = [groupsCopy objectAtIndexedSubscript:v8];
      v10 = MEMORY[0x1E696AFB0];
      v11 = MEMORY[0x1E696AEC0];
      digest = [v9 digest];
      v13 = [v11 stringWithFormat:@"%@_%d", digest, v8];
      v14 = [v10 _IF_UUIDWithString:v13];

      v15 = MEMORY[0x1E696AFB0];
      v26[0] = v7;
      v26[1] = v14;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
      v17 = [v15 _IF_UUIDByXORingUUIDs:v16];

      ++v8;
      v7 = v17;
    }

    while ([groupsCopy count] > v8);
  }

  else
  {
    v17 = v7;
  }

  v25.receiver = self;
  v25.super_class = ISLayeredIcon;
  v18 = [(ISConcreteIcon *)&v25 initWithDigest:v17];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_typeIdentifier, identifier);
    objc_storeStrong(&v19->_layerGroups, groups);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (ISLayeredIcon)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = ISLayeredIcon;
  v5 = [(ISConcreteIcon *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"typeIdentifier"];
    typeIdentifier = v5->_typeIdentifier;
    v5->_typeIdentifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"layerGroups"];
    layerGroups = v5->_layerGroups;
    v5->_layerGroups = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ISLayeredIcon;
  coderCopy = coder;
  [(ISConcreteIcon *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_typeIdentifier forKey:{@"typeIdentifier", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_layerGroups forKey:@"layerGroups"];
}

- (id)makeResourceProvider
{
  v3 = [ISDynamicIconStackResource alloc];
  typeIdentifier = [(ISLayeredIcon *)self typeIdentifier];
  layerGroups = [(ISLayeredIcon *)self layerGroups];
  v6 = [(ISDynamicIconStackResource *)v3 initWithTypeIdentifier:typeIdentifier layerGroups:layerGroups];

  v7 = [[ISResourceProvider alloc] initWithResource:v6 templateResource:0];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = ISLayeredIcon;
  v4 = [(ISLayeredIcon *)&v9 description];
  typeIdentifier = [(ISLayeredIcon *)self typeIdentifier];
  layerGroups = [(ISLayeredIcon *)self layerGroups];
  v7 = [v3 stringWithFormat:@"%@ Type: %@ LayerGroups: %@", v4, typeIdentifier, layerGroups];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      digest = [(ISConcreteIcon *)self digest];
      digest2 = [(ISConcreteIcon *)equalCopy digest];
      v7 = [digest isEqual:digest2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  digest = [(ISConcreteIcon *)self digest];
  v3 = [digest hash];

  return v3;
}

@end