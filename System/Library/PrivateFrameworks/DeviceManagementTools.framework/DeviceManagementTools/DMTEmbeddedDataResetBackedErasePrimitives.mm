@interface DMTEmbeddedDataResetBackedErasePrimitives
- (void)performEraseWithCompletion:(id)a3;
@end

@implementation DMTEmbeddedDataResetBackedErasePrimitives

- (void)performEraseWithCompletion:(id)a3
{
  v3 = a3;
  v8 = objc_opt_new();
  v4 = DMTBundle();
  v5 = [v4 localizedStringForKey:@"Preparing Device…" value:&stru_285B54748 table:0];

  v6 = [objc_alloc(MEMORY[0x277D072B8]) initWithMode:4 options:v8 reason:v5];
  v7 = [MEMORY[0x277D072C0] sharedInstance];
  [v7 resetWithRequest:v6 completion:v3];
}

@end