@interface MessageStoreController
- (void)messageStoreAccountInfoDidChange:(id)a3;
@end

@implementation MessageStoreController

- (void)messageStoreAccountInfoDidChange:(id)a3
{
  v3 = a3;

  MessageStoreController.messageStoreAccountInfoDidChange(_:)(v3);
}

@end