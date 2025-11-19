@interface ISLayeredIcon
- (BOOL)isEqual:(id)a3;
- (ISLayeredIcon)initWithCoder:(id)a3;
- (ISLayeredIcon)initWithTypeIdentifier:(id)a3 layerGroups:(id)a4;
- (id)description;
- (id)makeResourceProvider;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ISLayeredIcon

- (ISLayeredIcon)initWithTypeIdentifier:(id)a3 layerGroups:(id)a4
{
  v26[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v24 = v5;
  v7 = [MEMORY[0x1E696AFB0] _IF_UUIDWithString:v5];
  if ([v6 count])
  {
    v8 = 0;
    do
    {
      v9 = [v6 objectAtIndexedSubscript:v8];
      v10 = MEMORY[0x1E696AFB0];
      v11 = MEMORY[0x1E696AEC0];
      v12 = [v9 digest];
      v13 = [v11 stringWithFormat:@"%@_%d", v12, v8];
      v14 = [v10 _IF_UUIDWithString:v13];

      v15 = MEMORY[0x1E696AFB0];
      v26[0] = v7;
      v26[1] = v14;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
      v17 = [v15 _IF_UUIDByXORingUUIDs:v16];

      ++v8;
      v7 = v17;
    }

    while ([v6 count] > v8);
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
    objc_storeStrong(&v18->_typeIdentifier, a3);
    objc_storeStrong(&v19->_layerGroups, a4);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (ISLayeredIcon)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = ISLayeredIcon;
  v5 = [(ISConcreteIcon *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"typeIdentifier"];
    typeIdentifier = v5->_typeIdentifier;
    v5->_typeIdentifier = v6;

    v8 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v10 = [v8 setWithArray:v9];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"layerGroups"];
    layerGroups = v5->_layerGroups;
    v5->_layerGroups = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ISLayeredIcon;
  v4 = a3;
  [(ISConcreteIcon *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_typeIdentifier forKey:{@"typeIdentifier", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_layerGroups forKey:@"layerGroups"];
}

- (id)makeResourceProvider
{
  v3 = [ISDynamicIconStackResource alloc];
  v4 = [(ISLayeredIcon *)self typeIdentifier];
  v5 = [(ISLayeredIcon *)self layerGroups];
  v6 = [(ISDynamicIconStackResource *)v3 initWithTypeIdentifier:v4 layerGroups:v5];

  v7 = [[ISResourceProvider alloc] initWithResource:v6 templateResource:0];

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = ISLayeredIcon;
  v4 = [(ISLayeredIcon *)&v9 description];
  v5 = [(ISLayeredIcon *)self typeIdentifier];
  v6 = [(ISLayeredIcon *)self layerGroups];
  v7 = [v3 stringWithFormat:@"%@ Type: %@ LayerGroups: %@", v4, v5, v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(ISConcreteIcon *)self digest];
      v6 = [(ISConcreteIcon *)v4 digest];
      v7 = [v5 isEqual:v6];
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
  v2 = [(ISConcreteIcon *)self digest];
  v3 = [v2 hash];

  return v3;
}

@end