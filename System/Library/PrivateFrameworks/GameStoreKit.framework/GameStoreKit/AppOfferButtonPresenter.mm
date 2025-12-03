@interface AppOfferButtonPresenter
- (void)isEnabledDidChange:(id)change;
- (void)offerButtonTapped;
@end

@implementation AppOfferButtonPresenter

- (void)offerButtonTapped
{

  sub_24F0E4550();
}

- (void)isEnabledDidChange:(id)change
{
  v3 = sub_24F91EB58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();

  sub_24F0E0EE8();

  (*(v4 + 8))(v6, v3);
}

@end