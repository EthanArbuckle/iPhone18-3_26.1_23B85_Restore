@interface MOSuggestionAsset
- (MOSuggestionAsset)initWithCoder:(id)a3;
- (id)debugDescription;
- (id)init:(id)a3 type:(id)a4 contentClassType:(Class)a5;
- (void)addIdentifier:(id)a3;
- (void)addMetadata:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MOSuggestionAsset

- (id)init:(id)a3 type:(id)a4 contentClassType:(Class)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = MOSuggestionAsset;
  v11 = [(MOSuggestionAsset *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_content, a3);
    objc_storeStrong(&v12->_assetType, a4);
    objc_storeStrong(&v12->_contentClassType, a5);
    identifier = v12->_identifier;
    v12->_identifier = &stru_2840EECB0;
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  content = self->_content;
  v5 = a3;
  [v5 encodeObject:content forKey:@"coderKeyMOSuggestionAssetContent"];
  [v5 encodeObject:self->_assetType forKey:@"coderKeyMOSuggestionAssetType"];
  [v5 encodeObject:self->_metadata forKey:@"coderKeyMOSuggestionAssetMetadata"];
  [v5 encodeObject:self->_identifier forKey:@"coderKeyMOSuggestionAssetIdentifier"];
}

- (MOSuggestionAsset)initWithCoder:(id)a3
{
  v4 = a3;
  v44.receiver = self;
  v44.super_class = MOSuggestionAsset;
  v5 = [(MOSuggestionAsset *)&v44 init];
  if (v5)
  {
    v42 = MEMORY[0x277CBEB98];
    v40 = objc_opt_class();
    v38 = objc_opt_class();
    v36 = objc_opt_class();
    v34 = objc_opt_class();
    v33 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v42 setWithObjects:{v40, v38, v36, v34, v33, v6, v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"coderKeyMOSuggestionAssetContent"];
    content = v5->_content;
    v5->_content = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coderKeyMOSuggestionAssetType"];
    assetType = v5->_assetType;
    v5->_assetType = v17;

    v43 = MEMORY[0x277CBEB98];
    v41 = objc_opt_class();
    v39 = objc_opt_class();
    v37 = objc_opt_class();
    v35 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v43 setWithObjects:{v41, v39, v37, v35, v19, v20, v21, v22, v23, v24, v25, v26, objc_opt_class(), 0}];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"coderKeyMOSuggestionAssetMetadata"];
    metadata = v5->_metadata;
    v5->_metadata = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"coderKeyMOSuggestionAssetIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v30;
  }

  return v5;
}

- (id)debugDescription
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(NSDictionary *)self->_metadata allKeys];
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:v8];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 appendFormat:@"%@: %p \n", v8, 0];
        }

        else
        {
          v10 = [(NSDictionary *)self->_metadata objectForKeyedSubscript:v8];
          [v3 appendFormat:@"%@: %p \n", v8, v10];
        }
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  content = self->_content;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ content: %p, contentType: %@, identifier: %@, metadata: \n%@", self, content, self->_assetType, self->_identifier, v3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)addMetadata:(id)a3
{
  v4 = [a3 copy];
  [(MOSuggestionAsset *)self setMetadata:v4];
}

- (void)addIdentifier:(id)a3
{
  v4 = [a3 copy];
  [(MOSuggestionAsset *)self setIdentifier:v4];
}

@end