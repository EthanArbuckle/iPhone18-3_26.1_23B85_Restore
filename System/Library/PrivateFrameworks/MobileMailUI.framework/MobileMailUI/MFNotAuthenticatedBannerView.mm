@interface MFNotAuthenticatedBannerView
+ (BOOL)shouldDisplayBannerIfIsShowingGroupedSenderMessageList:(BOOL)list;
- (_TtC12MobileMailUI28MFNotAuthenticatedBannerView)initWithFrame:(CGRect)frame sender:(id)sender;
- (_TtP12MobileMailUI36MFNotAuthenticatedBannerViewDelegate_)delegate;
- (void)setDelegate:(id)delegate;
@end

@implementation MFNotAuthenticatedBannerView

- (_TtP12MobileMailUI36MFNotAuthenticatedBannerViewDelegate_)delegate
{
  MEMORY[0x277D82BE0](self, a2);
  v4 = sub_214A0C834();
  MEMORY[0x277D82BD8](self);

  return v4;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  MEMORY[0x277D82BE0](self, v4);
  sub_214A0C8FC();
  MEMORY[0x277D82BD8](self);
}

- (_TtC12MobileMailUI28MFNotAuthenticatedBannerView)initWithFrame:(CGRect)frame sender:(id)sender
{
  MEMORY[0x277D82BE0](sender, a2);
  v4 = sub_214A1A634();
  v9 = MFNotAuthenticatedBannerView.init(frame:sender:)(v4, v5, frame.origin.x, frame.origin.y, frame.size.width, frame.size.height);
  MEMORY[0x277D82BD8](sender);
  return v9;
}

+ (BOOL)shouldDisplayBannerIfIsShowingGroupedSenderMessageList:(BOOL)list
{
  swift_getObjCClassMetadata();
  v4 = sub_214A1A4C4();
  swift_getObjCClassMetadata();
  static MFNotAuthenticatedBannerView.shouldDisplayBanner(_:)(v4 & 1);
  return sub_214A1A4B4() & 1;
}

@end