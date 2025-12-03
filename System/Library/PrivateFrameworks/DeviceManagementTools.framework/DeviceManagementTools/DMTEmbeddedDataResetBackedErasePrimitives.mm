@interface DMTEmbeddedDataResetBackedErasePrimitives
- (void)performEraseWithCompletion:(id)completion;
@end

@implementation DMTEmbeddedDataResetBackedErasePrimitives

- (void)performEraseWithCompletion:(id)completion
{
  completionCopy = completion;
  v8 = objc_opt_new();
  v4 = DMTBundle();
  v5 = [v4 localizedStringForKey:@"Preparing Device…" value:&stru_285B54748 table:0];

  v6 = [objc_alloc(MEMORY[0x277D072B8]) initWithMode:4 options:v8 reason:v5];
  mEMORY[0x277D072C0] = [MEMORY[0x277D072C0] sharedInstance];
  [mEMORY[0x277D072C0] resetWithRequest:v6 completion:completionCopy];
}

@end