@interface MFNotAuthenticatedBannerView
+ (BOOL)shouldDisplayBannerIfIsShowingGroupedSenderMessageList:(BOOL)a3;
- (_TtC12MobileMailUI28MFNotAuthenticatedBannerView)initWithFrame:(CGRect)a3 sender:(id)a4;
- (_TtP12MobileMailUI36MFNotAuthenticatedBannerViewDelegate_)delegate;
- (void)setDelegate:(id)a3;
@end

@implementation MFNotAuthenticatedBannerView

- (_TtP12MobileMailUI36MFNotAuthenticatedBannerViewDelegate_)delegate
{
  MEMORY[0x277D82BE0](self, a2);
  v4 = sub_214A0C834();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setDelegate:(id)a3
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self, v4);
  sub_214A0C8FC();
  MEMORY[0x277D82BD8](self);
}

- (_TtC12MobileMailUI28MFNotAuthenticatedBannerView)initWithFrame:(CGRect)a3 sender:(id)a4
{
  MEMORY[0x277D82BE0](a4, a2);
  v4 = sub_214A1A634();
  v9 = MFNotAuthenticatedBannerView.init(frame:sender:)(v4, v5, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height);
  MEMORY[0x277D82BD8](a4);
  return v9;
}

+ (BOOL)shouldDisplayBannerIfIsShowingGroupedSenderMessageList:(BOOL)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_214A1A4C4();
  swift_getObjCClassMetadata();
  static MFNotAuthenticatedBannerView.shouldDisplayBanner(_:)(v4 & 1);
  return sub_214A1A4B4() & 1;
}

@end