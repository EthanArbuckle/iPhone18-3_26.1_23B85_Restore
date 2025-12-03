@interface CCDatabaseJoinedProvenance
+ (id)joinedProvenanceFromDatabaseValueRow:(id)row;
- (CCDatabaseJoinedProvenance)initWithProvenance:(id)provenance contentData:(id)data metaContentData:(id)contentData;
@end

@implementation CCDatabaseJoinedProvenance

+ (id)joinedProvenanceFromDatabaseValueRow:(id)row
{
  rowCopy = row;
  if (rowCopy)
  {
    v4 = [CCProvenanceRecord recordFromDatabaseValueRow:rowCopy];
    if (v4)
    {
      columnCount = [rowCopy columnCount];
      v6 = [rowCopy dataValueAtColumnIndex:columnCount - 2];
      v7 = [rowCopy dataValueAtColumnIndex:columnCount - 1];
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

- (CCDatabaseJoinedProvenance)initWithProvenance:(id)provenance contentData:(id)data metaContentData:(id)contentData
{
  provenanceCopy = provenance;
  dataCopy = data;
  contentDataCopy = contentData;
  v15.receiver = self;
  v15.super_class = CCDatabaseJoinedProvenance;
  v12 = [(CCDatabaseJoinedProvenance *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_provenance, provenance);
    objc_storeStrong(&v13->_contentData, data);
    objc_storeStrong(&v13->_metaContentData, contentData);
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