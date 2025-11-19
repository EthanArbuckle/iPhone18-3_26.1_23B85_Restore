@interface GKPlayerGroupView
+ (id)create;
- (GKDashboardPlayerPhotoView)playerView1;
- (GKDashboardPlayerPhotoView)playerView2;
- (GKDashboardPlayerPhotoView)playerView3;
- (GKDashboardPlayerPhotoView)playerView4;
- (GKDashboardPlayerPhotoView)playerView5;
- (GKDashboardPlayerPhotoView)playerView6;
- (GKDashboardPlayerPhotoView)playerView7;
- (NSLayoutConstraint)playerView1LeadingConstraint;
- (NSLayoutConstraint)playerView1TopConstraint;
- (NSLayoutConstraint)playerView1WidthContraint;
- (NSLayoutConstraint)playerView2BottomConstraint;
- (NSLayoutConstraint)playerView2TrailingConstraint;
- (NSLayoutConstraint)playerView2WidthContraint;
- (NSLayoutConstraint)playerView3BottomConstraint;
- (NSLayoutConstraint)playerView3LeadingConstraint;
- (NSLayoutConstraint)playerView3WidthContraint;
- (NSLayoutConstraint)playerView4TopConstraint;
- (NSLayoutConstraint)playerView4TrailingConstraint;
- (NSLayoutConstraint)playerView4WidthContraint;
- (NSLayoutConstraint)playerView5BottomConstraint;
- (NSLayoutConstraint)playerView5LeadingConstraint;
- (NSLayoutConstraint)playerView5WidthContraint;
- (NSLayoutConstraint)playerView6LeadingConstraint;
- (NSLayoutConstraint)playerView6TopConstraint;
- (NSLayoutConstraint)playerView6WidthContraint;
- (NSLayoutConstraint)playerView7BottomConstraint;
- (NSLayoutConstraint)playerView7LeadingConstraint;
- (NSLayoutConstraint)playerView7WidthContraint;
- (UIView)iconContainer;
- (void)awakeFromNib;
- (void)configureWithPlayers:(id)a3 messagesGroupIdentifier:(id)a4 playerSelectionProxy:(id)a5;
- (void)layoutSubviews;
- (void)setIconContainer:(id)a3;
- (void)setPlayerView1:(id)a3;
- (void)setPlayerView1LeadingConstraint:(id)a3;
- (void)setPlayerView1TopConstraint:(id)a3;
- (void)setPlayerView1WidthContraint:(id)a3;
- (void)setPlayerView2:(id)a3;
- (void)setPlayerView2BottomConstraint:(id)a3;
- (void)setPlayerView2TrailingConstraint:(id)a3;
- (void)setPlayerView2WidthContraint:(id)a3;
- (void)setPlayerView3:(id)a3;
- (void)setPlayerView3BottomConstraint:(id)a3;
- (void)setPlayerView3LeadingConstraint:(id)a3;
- (void)setPlayerView3WidthContraint:(id)a3;
- (void)setPlayerView4:(id)a3;
- (void)setPlayerView4TopConstraint:(id)a3;
- (void)setPlayerView4TrailingConstraint:(id)a3;
- (void)setPlayerView4WidthContraint:(id)a3;
- (void)setPlayerView5:(id)a3;
- (void)setPlayerView5BottomConstraint:(id)a3;
- (void)setPlayerView5LeadingConstraint:(id)a3;
- (void)setPlayerView5WidthContraint:(id)a3;
- (void)setPlayerView6:(id)a3;
- (void)setPlayerView6LeadingConstraint:(id)a3;
- (void)setPlayerView6TopConstraint:(id)a3;
- (void)setPlayerView6WidthContraint:(id)a3;
- (void)setPlayerView7:(id)a3;
- (void)setPlayerView7BottomConstraint:(id)a3;
- (void)setPlayerView7LeadingConstraint:(id)a3;
- (void)setPlayerView7WidthContraint:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation GKPlayerGroupView

- (UIView)iconContainer
{
  v2 = sub_24E0D2798();

  return v2;
}

- (void)setIconContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D2800();
}

- (GKDashboardPlayerPhotoView)playerView1
{
  v2 = sub_24E0D2878();

  return v2;
}

- (void)setPlayerView1:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D28E0();
}

- (GKDashboardPlayerPhotoView)playerView2
{
  v2 = sub_24E0D2958();

  return v2;
}

- (void)setPlayerView2:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D29C0();
}

- (GKDashboardPlayerPhotoView)playerView3
{
  v2 = sub_24E0D2A38();

  return v2;
}

- (void)setPlayerView3:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D2AA0();
}

- (GKDashboardPlayerPhotoView)playerView4
{
  v2 = sub_24E0D2B18();

  return v2;
}

- (void)setPlayerView4:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D2B80();
}

- (GKDashboardPlayerPhotoView)playerView5
{
  v2 = sub_24E0D2BF8();

  return v2;
}

- (void)setPlayerView5:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D2C60();
}

- (GKDashboardPlayerPhotoView)playerView6
{
  v2 = sub_24E0D2CD8();

  return v2;
}

- (void)setPlayerView6:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D2D40();
}

- (GKDashboardPlayerPhotoView)playerView7
{
  v2 = sub_24E0D2DB8();

  return v2;
}

- (void)setPlayerView7:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D2E20();
}

- (NSLayoutConstraint)playerView1WidthContraint
{
  v2 = sub_24E0D2E98();

  return v2;
}

- (void)setPlayerView1WidthContraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D2F00();
}

- (NSLayoutConstraint)playerView2WidthContraint
{
  v2 = sub_24E0D2F78();

  return v2;
}

- (void)setPlayerView2WidthContraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D2FE0();
}

- (NSLayoutConstraint)playerView3WidthContraint
{
  v2 = sub_24E0D3058();

  return v2;
}

- (void)setPlayerView3WidthContraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D30C0();
}

- (NSLayoutConstraint)playerView4WidthContraint
{
  v2 = sub_24E0D3138();

  return v2;
}

- (void)setPlayerView4WidthContraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D31A0();
}

- (NSLayoutConstraint)playerView5WidthContraint
{
  v2 = sub_24E0D3218();

  return v2;
}

- (void)setPlayerView5WidthContraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D3280();
}

- (NSLayoutConstraint)playerView6WidthContraint
{
  v2 = sub_24E0D32F8();

  return v2;
}

- (void)setPlayerView6WidthContraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D3360();
}

- (NSLayoutConstraint)playerView7WidthContraint
{
  v2 = sub_24E0D33D8();

  return v2;
}

- (void)setPlayerView7WidthContraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D3440();
}

- (NSLayoutConstraint)playerView1LeadingConstraint
{
  v2 = sub_24E0D34B8();

  return v2;
}

- (void)setPlayerView1LeadingConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D3520();
}

- (NSLayoutConstraint)playerView1TopConstraint
{
  v2 = sub_24E0D3598();

  return v2;
}

- (void)setPlayerView1TopConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D3600();
}

- (NSLayoutConstraint)playerView2TrailingConstraint
{
  v2 = sub_24E0D3678();

  return v2;
}

- (void)setPlayerView2TrailingConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D36E0();
}

- (NSLayoutConstraint)playerView2BottomConstraint
{
  v2 = sub_24E0D3758();

  return v2;
}

- (void)setPlayerView2BottomConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D37C0();
}

- (NSLayoutConstraint)playerView3LeadingConstraint
{
  v2 = sub_24E0D3838();

  return v2;
}

- (void)setPlayerView3LeadingConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D38A0();
}

- (NSLayoutConstraint)playerView3BottomConstraint
{
  v2 = sub_24E0D3918();

  return v2;
}

- (void)setPlayerView3BottomConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D3980();
}

- (NSLayoutConstraint)playerView4TrailingConstraint
{
  v2 = sub_24E0D39F8();

  return v2;
}

- (void)setPlayerView4TrailingConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D3A60();
}

- (NSLayoutConstraint)playerView4TopConstraint
{
  v2 = sub_24E0D3AD8();

  return v2;
}

- (void)setPlayerView4TopConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D3B40();
}

- (NSLayoutConstraint)playerView5LeadingConstraint
{
  v2 = sub_24E0D3BB8();

  return v2;
}

- (void)setPlayerView5LeadingConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D3C20();
}

- (NSLayoutConstraint)playerView5BottomConstraint
{
  v2 = sub_24E0D3C98();

  return v2;
}

- (void)setPlayerView5BottomConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D3D00();
}

- (NSLayoutConstraint)playerView6LeadingConstraint
{
  v2 = sub_24E0D3D78();

  return v2;
}

- (void)setPlayerView6LeadingConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D3DE0();
}

- (NSLayoutConstraint)playerView6TopConstraint
{
  v2 = sub_24E0D3E58();

  return v2;
}

- (void)setPlayerView6TopConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D3EC0();
}

- (NSLayoutConstraint)playerView7LeadingConstraint
{
  v2 = sub_24E0D3F38();

  return v2;
}

- (void)setPlayerView7LeadingConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D3FA0();
}

- (NSLayoutConstraint)playerView7BottomConstraint
{
  v2 = sub_24E0D4018();

  return v2;
}

- (void)setPlayerView7BottomConstraint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E0D4080();
}

- (void)awakeFromNib
{
  v2 = self;
  GKPlayerGroupView.awakeFromNib()();
}

- (void)configureWithPlayers:(id)a3 messagesGroupIdentifier:(id)a4 playerSelectionProxy:(id)a5
{
  sub_24DF95978();
  v8 = sub_24E347F08();
  if (a4)
  {
    v9 = sub_24E347CF8();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  swift_unknownObjectRetain();
  v11 = self;
  GKPlayerGroupView.configure(players:messagesGroupIdentifier:playerSelectionProxy:)(v8, v9, a4, a5);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  GKPlayerGroupView.traitCollectionDidChange(_:)(v9);
}

- (void)layoutSubviews
{
  v2 = self;
  GKPlayerGroupView.layoutSubviews()();
}

+ (id)create
{
  swift_getObjCClassMetadata();
  static GKPlayerGroupView.create()();

  return v2;
}

@end