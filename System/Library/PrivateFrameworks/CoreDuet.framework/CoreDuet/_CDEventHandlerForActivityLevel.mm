@interface _CDEventHandlerForActivityLevel
- (_CDEventHandlerForActivityLevel)init;
- (void)eventHandler:(id)a3 withFileHandle:(id)a4;
- (void)init;
@end

@implementation _CDEventHandlerForActivityLevel

- (_CDEventHandlerForActivityLevel)init
{
  v4.receiver = self;
  v4.super_class = _CDEventHandlerForActivityLevel;
  v2 = [(_CDEventHandlerForActivityLevel *)&v4 init];
  if (v2)
  {
    [_CDEventHandlerForActivityLevel init];
  }

  return v2;
}

- (void)eventHandler:(id)a3 withFileHandle:(id)a4
{
  v6 = OUTLINED_FUNCTION_4_10(self, a2, a3, a4);
  v7 = v5;
  v8 = [v7 metadata];
  v18 = [v8 copy];

  [v4 anonymizer];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2_10();
  v11 = [(_CDDataCollectionAnonymizer *)v9 anonymizeDictionary:v10];

  [v4 utility];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_15();
  v16 = [(_CDFileUtility *)v12 fileHandlerUtiity:v13 withBundleId:v14 withMetaData:v15];

  v17 = [v4 utility];
  OUTLINED_FUNCTION_1_14(v17);
}

- (void)init
{
  v1 = [_CDDataCollectionUtilities randomDataWithLength:32];
  v2 = [[_CDDataCollectionAnonymizer alloc] initWithSalt:v1];
  v3 = OUTLINED_FUNCTION_7_3(v2);

  OUTLINED_FUNCTION_6_10(objc_alloc_init(_CDFileUtility));
}

@end