@interface ISDecoratedIcon
- (ISDecoratedIcon)iconWithDecorations:(id)a3;
- (ISDecoratedIcon)initWithCoder:(id)a3;
- (ISDecoratedIcon)initWithIcon:(id)a3 decorations:(id)a4;
- (NSArray)decorations;
- (id)description;
- (id)makeResourceProvider;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ISDecoratedIcon

- (ISDecoratedIcon)initWithIcon:(id)a3 decorations:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [v7 digest];
    [v9 addObject:v10];
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v26 + 1) + 8 * i) uuid];
        [v9 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  v17 = [MEMORY[0x1E696AFB0] _IF_UUIDByXORingUUIDs:v9];
  v25.receiver = self;
  v25.super_class = ISDecoratedIcon;
  v18 = [(ISConcreteIcon *)&v25 initWithDigest:v17];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_icon, a3);
    v20 = [v11 copy];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v19->_decorations, v22);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v19;
}

- (ISDecoratedIcon)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ISDecoratedIcon;
  v5 = [(ISConcreteIcon *)&v11 initWithCoder:v4];
  if (v5)
  {
    if (initWithCoder__onceToken != -1)
    {
      [ISDecoratedIcon initWithCoder:];
    }

    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"icon"];
    icon = v5->_icon;
    v5->_icon = v6;

    v8 = [v4 decodeObjectOfClasses:initWithCoder__classes forKey:@"decorations"];
    decorations = v5->_decorations;
    v5->_decorations = v8;
  }

  return v5;
}

void __33__ISDecoratedIcon_initWithCoder___block_invoke()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = initWithCoder__classes;
  initWithCoder__classes = v2;

  v4 = *MEMORY[0x1E69E9840];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = ISDecoratedIcon;
  [(ISConcreteIcon *)&v6 encodeWithCoder:v4];
  icon = self->_icon;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 encodeObject:self->_icon forKey:@"icon"];
  }

  [v4 encodeObject:self->_decorations forKey:@"decorations"];
}

- (ISDecoratedIcon)iconWithDecorations:(id)a3
{
  v4 = a3;
  v5 = [[ISDecoratedIcon alloc] initWithIcon:self->_icon decorations:v4];

  v6 = +[ISIconManager sharedInstance];
  v7 = [v6 findOrRegisterIcon:v5];

  return v7;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  Class = object_getClass(self);
  Name = class_getName(Class);
  v6 = [(ISDecoratedIcon *)self icon];
  v7 = [(ISDecoratedIcon *)self decorations];
  v8 = [v3 initWithFormat:@"<%s %p>icon: %@ decorations: %@", Name, self, v6, v7];

  return v8;
}

- (NSArray)decorations
{
  v3 = [(ISIcon *)self->_icon decorations];
  v4 = v3;
  v5 = MEMORY[0x1E695E0F0];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [v6 arrayByAddingObjectsFromArray:self->_decorations];

  return v7;
}

- (id)makeResourceProvider
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [(ISDecoratedIcon *)self icon];
  objc_opt_class();
  v27 = v3;
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 makeResourceProvider];
  }

  else
  {
    v4 = 0;
  }

  v28 = objc_opt_new();
  v5 = objc_alloc(MEMORY[0x1E695DF88]);
  v26 = v4;
  v6 = [v4 resourceToken];
  v7 = [v5 initWithData:v6];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [(ISDecoratedIcon *)self decorations];
  v9 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v14 = [v13 identifierKind];
          if (v14 == 1)
          {
            v18 = objc_alloc(MEMORY[0x1E69635F8]);
            v16 = [v13 identifier];
            v17 = [v18 initWithBundleIdentifier:v16 allowPlaceholder:1 error:0];
LABEL_14:
            v19 = v17;
          }

          else
          {
            if (v14 == 2)
            {
              v15 = MEMORY[0x1E69636B0];
              v16 = [v13 identifier];
              v17 = [v15 typeRecordWithIdentifier:v16];
              goto LABEL_14;
            }

            v19 = 0;
          }

          v20 = [ISResourceProvider resourceWithRecord:v19 options:0];
          if (v20)
          {
            v21 = [v19 persistentIdentifier];
            [v7 appendData:v21];

            v22 = [v13 uuid];
            [v28 setObject:v20 forKey:v22];
          }

          continue;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v10);
  }

  [v26 setDecorationResources:v28];
  v23 = [v7 copy];
  [v26 setResourceToken:v23];

  v24 = *MEMORY[0x1E69E9840];

  return v26;
}

@end