@interface MessageStoreService
- (void)messageStoreAccountInfoDidChange:(id)change;
- (void)messageStoreRequiresRefetch;
@end

@implementation MessageStoreService

- (void)messageStoreAccountInfoDidChange:(id)change
{
  changeCopy = change;

  MessageStoreService.messageStoreAccountInfoDidChange(_:)();
}

- (void)messageStoreRequiresRefetch
{

  MessageStoreService.messageStoreRequiresRefetch()();
}

@end