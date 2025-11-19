@interface ProductAskToBuyPresenter
- (void)handleAskToBuyRequestSent:(id)a3;
- (void)updateStatusAndNotifyIfNeeded;
@end

@implementation ProductAskToBuyPresenter

- (void)updateStatusAndNotifyIfNeeded
{

  sub_24E8FE920();
}

- (void)handleAskToBuyRequestSent:(id)a3
{
  v3 = sub_24F91EB58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();

  sub_24E8FFCD0(v6);

  (*(v4 + 8))(v6, v3);
}

@end