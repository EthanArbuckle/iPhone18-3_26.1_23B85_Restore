@interface SharedURLSession
@end

@implementation SharedURLSession

void ___SharedURLSession_block_invoke()
{
  v3 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
  v0 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"CDPSecureBackupURLSession"];
  [v3 set_appleIDContext:v0];

  v1 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v3];
  v2 = _SharedURLSession_sharedURLSession;
  _SharedURLSession_sharedURLSession = v1;
}

@end