@interface CKUnexpectedlyLoggedOutHandleDependentValueChanged
@end

@implementation CKUnexpectedlyLoggedOutHandleDependentValueChanged

void ___CKUnexpectedlyLoggedOutHandleDependentValueChanged_block_invoke()
{
  v0 = [MEMORY[0x1E696AD88] defaultCenter];
  [v0 postNotificationName:@"com.apple.ChatKit.IsUnexpectedlyLoggedOutChanged" object:0];
}

@end