@interface ProductPrimaryBannerPresenter
- (void)bannerHideCriteriaDidChange:(id)a3;
@end

@implementation ProductPrimaryBannerPresenter

- (void)bannerHideCriteriaDidChange:(id)a3
{
  v3 = sub_24F91EB58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91EB08();

  sub_24EEA4CD4(v6);

  (*(v4 + 8))(v6, v3);
}

@end