@interface CKConversationListCollectionViewController(Banners)
@end

@implementation CKConversationListCollectionViewController(Banners)

- (void)addBanner:()Banners animated:.cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [a1 superview];
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = 0;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Not displaying banner, banner superview: %@ isn't the view controller's view: %@ after insertion", &v4, 0x16u);
}

@end