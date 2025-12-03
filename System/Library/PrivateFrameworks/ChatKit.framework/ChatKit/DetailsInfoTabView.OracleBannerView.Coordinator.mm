@interface DetailsInfoTabView.OracleBannerView.Coordinator
- (_TtCVV7ChatKit18DetailsInfoTabView16OracleBannerView11Coordinator)init;
- (void)sharedProfileBannerView:(id)view didDismissWithUpdatedContact:(id)contact forAction:(unint64_t)action;
- (void)sharedProfileBannerView:(id)view didUpdateContact:(id)contact forAction:(unint64_t)action;
@end

@implementation DetailsInfoTabView.OracleBannerView.Coordinator

- (void)sharedProfileBannerView:(id)view didUpdateContact:(id)contact forAction:(unint64_t)action
{
  viewCopy = view;
  contactCopy = contact;
  selfCopy = self;
  sub_19095CC58(viewCopy, action);
}

- (void)sharedProfileBannerView:(id)view didDismissWithUpdatedContact:(id)contact forAction:(unint64_t)action
{
  viewCopy = view;
  contactCopy = contact;
  selfCopy = self;
  sub_19095CF44();
}

- (_TtCVV7ChatKit18DetailsInfoTabView16OracleBannerView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end