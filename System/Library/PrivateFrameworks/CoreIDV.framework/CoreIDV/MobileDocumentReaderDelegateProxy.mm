@interface MobileDocumentReaderDelegateProxy
- (void)mobileDocumentReaderStateDidChange:(id)a3;
@end

@implementation MobileDocumentReaderDelegateProxy

- (void)mobileDocumentReaderStateDidChange:(id)a3
{
  v5 = *self->onStateChange;
  v4 = *&self->onStateChange[8];
  v6 = OBJC_IVAR____TtC7CoreIDV35XPCMobileDocumentReaderSessionState_value;
  v7 = a3;

  v5(a3 + v6);
}

@end