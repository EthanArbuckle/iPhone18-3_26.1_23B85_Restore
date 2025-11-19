@interface DetailsInfoTabView.OracleBannerView.Coordinator
- (_TtCVV7ChatKit18DetailsInfoTabView16OracleBannerView11Coordinator)init;
- (void)sharedProfileBannerView:(id)a3 didDismissWithUpdatedContact:(id)a4 forAction:(unint64_t)a5;
- (void)sharedProfileBannerView:(id)a3 didUpdateContact:(id)a4 forAction:(unint64_t)a5;
@end

@implementation DetailsInfoTabView.OracleBannerView.Coordinator

- (void)sharedProfileBannerView:(id)a3 didUpdateContact:(id)a4 forAction:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  sub_19095CC58(v8, a5);
}

- (void)sharedProfileBannerView:(id)a3 didDismissWithUpdatedContact:(id)a4 forAction:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  sub_19095CF44();
}

- (_TtCVV7ChatKit18DetailsInfoTabView16OracleBannerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end