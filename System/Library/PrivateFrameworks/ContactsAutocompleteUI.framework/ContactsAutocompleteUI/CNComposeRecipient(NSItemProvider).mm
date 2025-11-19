@interface CNComposeRecipient(NSItemProvider)
@end

@implementation CNComposeRecipient(NSItemProvider)

+ (void)objectWithItemProviderData:()NSItemProvider typeIdentifier:error:.cold.1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1B8106000, a2, OS_LOG_TYPE_ERROR, "Failed to decode a compose recipient: %@", &v4, 0xCu);
}

@end