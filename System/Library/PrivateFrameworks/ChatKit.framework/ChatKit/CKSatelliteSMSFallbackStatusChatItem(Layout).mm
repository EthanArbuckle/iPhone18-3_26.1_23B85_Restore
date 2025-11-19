@interface CKSatelliteSMSFallbackStatusChatItem(Layout)
@end

@implementation CKSatelliteSMSFallbackStatusChatItem(Layout)

- (void)layoutItemSpacingWithEnvironment:()Layout datasourceItemIndex:allDatasourceItems:supplementryItems:.cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "CKSatelliteSMSFallBackChatItem should not follow %{public}@", &v5, 0xCu);
}

@end