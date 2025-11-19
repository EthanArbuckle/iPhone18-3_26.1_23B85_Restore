@interface SubscriptionStatusCoordinator
- (void)subscriptionPurchaseCompleted:(id)a3;
@end

@implementation SubscriptionStatusCoordinator

- (void)subscriptionPurchaseCompleted:(id)a3
{
  v3 = sub_217005974();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217005934();

  sub_216E3FA94();

  (*(v4 + 8))(v6, v3);
}

@end