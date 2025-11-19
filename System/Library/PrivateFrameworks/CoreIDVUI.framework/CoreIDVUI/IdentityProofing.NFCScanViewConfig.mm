@interface IdentityProofing.NFCScanViewConfig
- (void)appWillEnterForeground;
@end

@implementation IdentityProofing.NFCScanViewConfig

- (void)appWillEnterForeground
{

  sub_245802784("NFCScanViewConfig Starting NFC Session", &unk_285886F58, &unk_245919058, "NFCScanViewConfig NFC scanning already completed; not starting");
}

@end