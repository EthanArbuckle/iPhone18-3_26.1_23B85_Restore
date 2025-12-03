@interface CHUISWatchComplicationsWidgetSnapshotMetadata
- (BOOL)isEqual:(id)equal;
- (CHUISWatchComplicationsWidgetSnapshotMetadata)initWithBSXPCCoder:(id)coder;
- (NSString)description;
- (id)_encodedLabelData:(id)data atDirectory:(id)directory;
- (id)_initWithSnapshotMetadata:(id)metadata;
- (id)copyForEncodingAtUrlDirectory:(id)directory;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation CHUISWatchComplicationsWidgetSnapshotMetadata

- (id)_initWithSnapshotMetadata:(id)metadata
{
  metadataCopy = metadata;
  v8.receiver = self;
  v8.super_class = CHUISWatchComplicationsWidgetSnapshotMetadata;
  v5 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)&v8 init];
  p_isa = &v5->super.isa;
  if (v5)
  {
    objc_storeStrong(&v5->_labelData, metadataCopy[1]);
    objc_storeStrong(p_isa + 2, metadataCopy[2]);
    objc_storeStrong(p_isa + 3, metadataCopy[3]);
    objc_storeStrong(p_isa + 4, metadataCopy[4]);
    objc_storeStrong(p_isa + 5, metadataCopy[5]);
    objc_storeStrong(p_isa + 6, metadataCopy[6]);
  }

  return p_isa;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  v6 = objc_opt_class();
  v7 = equalCopy;
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
  builder = [MEMORY[0x1E698E6B8] builder];
  v4 = [builder appendObject:self->_labelData];
  v5 = [builder appendObject:self->_gauge];
  v6 = [builder appendObject:self->_gaugeProviderData];
  v7 = [builder appendObject:self->_gaugeMinimumLabelData];
  v8 = [builder appendObject:self->_gaugeMaximumLabelData];
  v9 = [builder appendObject:self->_outerLabelData];
  v10 = [builder hash];

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
  build = [v3 build];

  return build;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeCollection:self->_labelData forKey:@"labelData"];
  [coderCopy encodeObject:self->_gauge forKey:@"gauge"];
  [coderCopy encodeObject:self->_gaugeProviderData forKey:@"gaugeProviderData"];
  [coderCopy encodeObject:self->_gaugeMinimumLabelData forKey:@"gaugeMinimumLabelData"];
  [coderCopy encodeObject:self->_gaugeMaximumLabelData forKey:@"gaugeMaximumLabelData"];
  [coderCopy encodeObject:self->_outerLabelData forKey:@"outerLabelData"];
}

- (CHUISWatchComplicationsWidgetSnapshotMetadata)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = CHUISWatchComplicationsWidgetSnapshotMetadata;
  v5 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)&v23 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = [coderCopy decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"labelData"];
    labelData = v5->_labelData;
    v5->_labelData = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gauge"];
    gauge = v5->_gauge;
    v5->_gauge = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gaugeProviderData"];
    gaugeProviderData = v5->_gaugeProviderData;
    v5->_gaugeProviderData = v11;

    v13 = objc_opt_class();
    v14 = [coderCopy decodeCollectionOfClass:v13 containingClass:objc_opt_class() forKey:@"gaugeMinimumLabelData"];
    gaugeMinimumLabelData = v5->_gaugeMinimumLabelData;
    v5->_gaugeMinimumLabelData = v14;

    v16 = objc_opt_class();
    v17 = [coderCopy decodeCollectionOfClass:v16 containingClass:objc_opt_class() forKey:@"gaugeMaximumLabelData"];
    gaugeMaximumLabelData = v5->_gaugeMaximumLabelData;
    v5->_gaugeMaximumLabelData = v17;

    v19 = objc_opt_class();
    v20 = [coderCopy decodeCollectionOfClass:v19 containingClass:objc_opt_class() forKey:@"outerLabelData"];
    outerLabelData = v5->_outerLabelData;
    v5->_outerLabelData = v20;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHUISWatchComplicationsWidgetSnapshotMetadata allocWithZone:zone];

  return [(CHUISWatchComplicationsWidgetSnapshotMetadata *)v4 _initWithSnapshotMetadata:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CHUISMutableWatchComplicationsWidgetSnapshotMetadata allocWithZone:zone];

  return [(CHUISWatchComplicationsWidgetSnapshotMetadata *)v4 _initWithSnapshotMetadata:self];
}

- (id)copyForEncodingAtUrlDirectory:(id)directory
{
  directoryCopy = directory;
  labelData = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self labelData];
  v6 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self _encodedLabelData:labelData atDirectory:directoryCopy];

  gaugeMinimumLabelData = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self gaugeMinimumLabelData];
  v8 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self _encodedLabelData:gaugeMinimumLabelData atDirectory:directoryCopy];

  gaugeMaximumLabelData = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self gaugeMaximumLabelData];
  v10 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self _encodedLabelData:gaugeMaximumLabelData atDirectory:directoryCopy];

  outerLabelData = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self outerLabelData];
  v12 = [(CHUISWatchComplicationsWidgetSnapshotMetadata *)self _encodedLabelData:outerLabelData atDirectory:directoryCopy];

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

- (id)_encodedLabelData:(id)data atDirectory:(id)directory
{
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  directoryCopy = directory;
  if ([dataCopy count])
  {
    v7 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = dataCopy;
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

          v12 = [*(*(&v15 + 1) + 8 * i) copyForEncodingAtUrlDirectory:{directoryCopy, v15}];
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