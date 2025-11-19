@interface CCDatabaseJoinedProvenance
+ (id)joinedProvenanceFromDatabaseValueRow:(id)a3;
- (CCDatabaseJoinedProvenance)initWithProvenance:(id)a3 contentData:(id)a4 metaContentData:(id)a5;
@end

@implementation CCDatabaseJoinedProvenance

+ (id)joinedProvenanceFromDatabaseValueRow:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [CCProvenanceRecord recordFromDatabaseValueRow:v3];
    if (v4)
    {
      v5 = [v3 columnCount];
      v6 = [v3 dataValueAtColumnIndex:v5 - 2];
      v7 = [v3 dataValueAtColumnIndex:v5 - 1];
      v8 = [[CCDatabaseJoinedProvenance alloc] initWithProvenance:v4 contentData:v6 metaContentData:v7];
    }

    else
    {
      v9 = __biome_log_for_category();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[CCDatabaseJoinedProvenance joinedProvenanceFromDatabaseValueRow:];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CCDatabaseJoinedProvenance)initWithProvenance:(id)a3 contentData:(id)a4 metaContentData:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CCDatabaseJoinedProvenance;
  v12 = [(CCDatabaseJoinedProvenance *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_provenance, a3);
    objc_storeStrong(&v13->_contentData, a4);
    objc_storeStrong(&v13->_metaContentData, a5);
  }

  return v13;
}

+ (void)joinedProvenanceFromDatabaseValueRow:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end