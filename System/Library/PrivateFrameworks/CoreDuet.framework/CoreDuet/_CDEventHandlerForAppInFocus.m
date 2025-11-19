@interface _CDEventHandlerForAppInFocus
- (_CDEventHandlerForAppInFocus)init;
- (void)eventHandler:(id)a3 withFileHandle:(id)a4;
@end

@implementation _CDEventHandlerForAppInFocus

- (_CDEventHandlerForAppInFocus)init
{
  v4.receiver = self;
  v4.super_class = _CDEventHandlerForAppInFocus;
  v2 = [(_CDEventHandlerForAppInFocus *)&v4 init];
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

@end