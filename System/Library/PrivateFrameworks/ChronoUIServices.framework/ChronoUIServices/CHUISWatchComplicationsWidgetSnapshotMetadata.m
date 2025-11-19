@interface CHUISWatchComplicationsWidgetSnapshotMetadata
- (BOOL)isEqual:(id)a3;
- (CHUISWatchComplicationsWidgetSnapshotMetadata)initWithBSXPCCoder:(id)a3;
- (NSString)description;
- (id)_encodedLabelData:(id)a3 atDirectory:(id)a4;
- (id)_initWithSnapshotMetadata:(id)a3;
- (id)copyForEncodingAtUrlDirectory:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation CHUISWatchComplicationsWidgetSnapshotMetadata

- (id)_initWithSnapshotMetadata:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = CHUISWatchComplicationsWidgetSnapshotMetadata;
  v5 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)&v8 init];
  p_isa = &v5->super.isa;
  if (v5)
  {
    objc_storeStrong(&v5->_labelData, v4[1]);
    objc_storeStrong(p_isa + 2, v4[2]);
    objc_storeStrong(p_isa + 3, v4[3]);
    objc_storeStrong(p_isa + 4, v4[4]);
    objc_storeStrong(p_isa + 5, v4[5]);
    objc_storeStrong(p_isa + 6, v4[6]);
  }

  return p_isa;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = objc_opt_class();
  v7 = v4;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  labelData = self->_labelData;
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __57__CHUISWatchComplicationsWidgetSnapshotMetadata_isEqual___block_invoke;
  v42[3] = &unk_1E8575548;
  v11 = v9;
  v43 = v11;
  v12 = [v5 appendObject:labelData counterpart:v42];
  gauge = self->_gauge;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __57__CHUISWatchComplicationsWidgetSnapshotMetadata_isEqual___block_invoke_2;
  v40[3] = &unk_1E8575570;
  v14 = v11;
  v41 = v14;
  v15 = [v5 appendObject:gauge counterpart:v40];
  gaugeProviderData = self->_gaugeProviderData;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __57__CHUISWatchComplicationsWidgetSnapshotMetadata_isEqual___block_invoke_3;
  v38[3] = &unk_1E8575598;
  v17 = v14;
  v39 = v17;
  v18 = [v5 appendObject:gaugeProviderData counterpart:v38];
  gaugeMinimumLabelData = self->_gaugeMinimumLabelData;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __57__CHUISWatchComplicationsWidgetSnapshotMetadata_isEqual___block_invoke_4;
  v36[3] = &unk_1E8575548;
  v20 = v17;
  v37 = v20;
  v21 = [v5 appendObject:gaugeMinimumLabelData counterpart:v36];
  gaugeMaximumLabelData = self->_gaugeMaximumLabelData;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __57__CHUISWatchComplicationsWidgetSnapshotMetadata_isEqual___block_invoke_5;
  v34[3] = &unk_1E8575548;
  v23 = v20;
  v35 = v23;
  v24 = [v5 appendObject:gaugeMaximumLabelData counterpart:v34];
  outerLabelData = self->_outerLabelData;
  v29 = MEMORY[0x1E69E9820];
  v30 = 3221225472;
  v31 = __57__CHUISWatchComplicationsWidgetSnapshotMetadata_isEqual___block_invoke_6;
  v32 = &unk_1E8575548;
  v26 = v23;
  v33 = v26;
  v27 = [v5 appendObject:outerLabelData counterpart:&v29];
  LOBYTE(v23) = [v5 isEqual];

  return v23;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [v3 appendObject:self->_labelData];
  v5 = [v3 appendObject:self->_gauge];
  v6 = [v3 appendObject:self->_gaugeProviderData];
  v7 = [v3 appendObject:self->_gaugeMinimumLabelData];
  v8 = [v3 appendObject:self->_gaugeMaximumLabelData];
  v9 = [v3 appendObject:self->_outerLabelData];
  v10 = [v3 hash];

  return v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  v4 = [v3 appendObject:self->_labelData withName:@"labelData"];
  v5 = [v3 appendObject:self->_gauge withName:@"gauge" skipIfNil:1];
  v6 = [v3 appendObject:self->_gaugeProviderData withName:@"gaugeProviderData" skipIfNil:1];
  v7 = [v3 appendObject:self->_gaugeMinimumLabelData withName:@"gaugeMinimumLabelData" skipIfNil:1];
  v8 = [v3 appendObject:self->_gaugeMaximumLabelData withName:@"gaugeMaximumLabelData" skipIfNil:1];
  v9 = [v3 appendObject:self->_outerLabelData withName:@"outerLabelData" skipIfNil:1];
  v10 = [v3 build];

  return v10;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeCollection:self->_labelData forKey:@"labelData"];
  [v4 encodeObject:self->_gauge forKey:@"gauge"];
  [v4 encodeObject:self->_gaugeProviderData forKey:@"gaugeProviderData"];
  [v4 encodeObject:self->_gaugeMinimumLabelData forKey:@"gaugeMinimumLabelData"];
  [v4 encodeObject:self->_gaugeMaximumLabelData forKey:@"gaugeMaximumLabelData"];
  [v4 encodeObject:self->_outerLabelData forKey:@"outerLabelData"];
}

- (CHUISWatchComplicationsWidgetSnapshotMetadata)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = CHUISWatchComplicationsWidgetSnapshotMetadata;
  v5 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [v4 decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"labelData"];
    labelData = v5->_labelData;
    v5->_labelData = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gauge"];
    gauge = v5->_gauge;
    v5->_gauge = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gaugeProviderData"];
    gaugeProviderData = v5->_gaugeProviderData;
    v5->_gaugeProviderData = v11;

    v13 = objc_opt_class();
    v14 = [v4 decodeCollectionOfClass:v13 containingClass:objc_opt_class() forKey:@"gaugeMinimumLabelData"];
    gaugeMinimumLabelData = v5->_gaugeMinimumLabelData;
    v5->_gaugeMinimumLabelData = v14;

    v16 = objc_opt_class();
    v17 = [v4 decodeCollectionOfClass:v16 containingClass:objc_opt_class() forKey:@"gaugeMaximumLabelData"];
    gaugeMaximumLabelData = v5->_gaugeMaximumLabelData;
    v5->_gaugeMaximumLabelData = v17;

    v19 = objc_opt_class();
    v20 = [v4 decodeCollectionOfClass:v19 containingClass:objc_opt_class() forKey:@"outerLabelData"];
    outerLabelData = v5->_outerLabelData;
    v5->_outerLabelData = v20;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CHUISWatchComplicationsWidgetSnapshotMetadata allocWithZone:a3];

  return [(CHUISWatchComplicationsWidgetSnapshotMetadata *)v4 _initWithSnapshotMetadata:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CHUISMutableWatchComplicationsWidgetSnapshotMetadata allocWithZone:a3];

  return [(CHUISWatchComplicationsWidgetSnapshotMetadata *)v4 _initWithSnapshotMetadata:self];
}

- (id)copyForEncodingAtUrlDirectory:(id)a3
{
  v4 = a3;
  v5 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self labelData];
  v6 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self _encodedLabelData:v5 atDirectory:v4];

  v7 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self gaugeMinimumLabelData];
  v8 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self _encodedLabelData:v7 atDirectory:v4];

  v9 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self gaugeMaximumLabelData];
  v10 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self _encodedLabelData:v9 atDirectory:v4];

  v11 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self outerLabelData];
  v12 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self _encodedLabelData:v11 atDirectory:v4];

  v13 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self copy];
  v14 = v13[1];
  v13[1] = v6;
  v15 = v6;

  v16 = v13[4];
  v13[4] = v8;
  v17 = v8;

  v18 = v13[5];
  v13[5] = v10;
  v19 = v10;

  v20 = v13[6];
  v13[6] = v12;

  return v13;
}

- (id)_encodedLabelData:(id)a3 atDirectory:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = [*(*(&v15 + 1) + 8 * i) copyForEncodingAtUrlDirectory:{v6, v15}];
          [v7 addObject:v12];
        }

        v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

@end