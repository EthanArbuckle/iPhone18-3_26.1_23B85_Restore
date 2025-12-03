@interface ML3UpdateArtworkInterestDataOperation
- (BOOL)_execute:(id *)_execute;
- (BOOL)_verifyLibraryConnectionAndAttributesProperties:(id *)properties;
@end

@implementation ML3UpdateArtworkInterestDataOperation

- (BOOL)_verifyLibraryConnectionAndAttributesProperties:(id *)properties
{
  v13.receiver = self;
  v13.super_class = ML3UpdateArtworkInterestDataOperation;
  if (![(ML3DatabaseOperation *)&v13 _verifyLibraryConnectionAndAttributesProperties:?])
  {
    return 0;
  }

  attributes = [(ML3DatabaseOperation *)self attributes];
  v6 = [attributes objectForKey:@"MLDatabaseOperationAttributeArtworkTokenKey"];

  attributes2 = [(ML3DatabaseOperation *)self attributes];
  v8 = [attributes2 objectForKey:@"MLDatabaseOperationAttributeArtworkInterestDataKey"];

  objc_opt_class();
  v9 = (objc_opt_isKindOfClass() & 1) != 0 && [v6 length] != 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  v10 = v9 & isKindOfClass;
  if (properties && !v10)
  {
    *properties = [ML3MediaLibraryWriter writerErrorWithCode:500 description:@"ML3UpdateArtworkInterestDataOperation requires an artworkToken attribute and an artwork interest data blob"];
  }

  return v10;
}

- (BOOL)_execute:(id *)_execute
{
  v22[2] = *MEMORY[0x277D85DE8];
  attributes = [(ML3DatabaseOperation *)self attributes];
  v6 = [attributes objectForKey:@"MLDatabaseOperationAttributeArtworkTokenKey"];

  attributes2 = [(ML3DatabaseOperation *)self attributes];
  v8 = [attributes2 objectForKey:@"MLDatabaseOperationAttributeArtworkInterestDataKey"];

  transaction = [(ML3DatabaseOperation *)self transaction];
  connection = [transaction connection];

  v22[0] = v8;
  v22[1] = v6;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v17 = 0;
  v12 = [connection executeUpdate:@"UPDATE artwork SET interest_data = ? WHERE artwork_token = ?" withParameters:v11 error:&v17];
  v13 = v17;

  if ((v12 & 1) == 0)
  {
    v14 = os_log_create("com.apple.amp.medialibrary", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v19 = v6;
      v20 = 2114;
      v21 = v13;
      _os_log_impl(&dword_22D2FA000, v14, OS_LOG_TYPE_ERROR, "Failed to save interest data to database for artwork_token %{public}@ with error: %{public}@", buf, 0x16u);
    }
  }

  v15 = v13;
  *_execute = v13;

  return v12;
}

@end