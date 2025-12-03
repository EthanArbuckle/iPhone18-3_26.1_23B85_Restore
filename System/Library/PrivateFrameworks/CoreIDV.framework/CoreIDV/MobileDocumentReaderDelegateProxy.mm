@interface MobileDocumentReaderDelegateProxy
- (void)mobileDocumentReaderStateDidChange:(id)change;
@end

@implementation MobileDocumentReaderDelegateProxy

- (void)mobileDocumentReaderStateDidChange:(id)change
{
  v5 = *self->onStateChange;
  v4 = *&self->onStateChange[8];
  v6 = OBJC_IVAR____TtC7CoreIDV35XPCMobileDocumentReaderSessionState_value;
  changeCopy = change;

  v5(change + v6);
}

@end