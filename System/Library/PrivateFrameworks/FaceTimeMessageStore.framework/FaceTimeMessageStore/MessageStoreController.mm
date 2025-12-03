@interface MessageStoreController
- (void)messageStoreAccountInfoDidChange:(id)change;
@end

@implementation MessageStoreController

- (void)messageStoreAccountInfoDidChange:(id)change
{
  changeCopy = change;

  MessageStoreController.messageStoreAccountInfoDidChange(_:)(changeCopy);
}

@end