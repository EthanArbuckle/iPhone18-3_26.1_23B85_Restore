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
- (void)configureWithPlayers:(id)players messagesGroupIdentifier:(id)identifier playerSelectionProxy:(id)proxy;
- (void)layoutSubviews;
- (void)setIconContainer:(id)container;
- (void)setPlayerView1:(id)view1;
- (void)setPlayerView1LeadingConstraint:(id)constraint;
- (void)setPlayerView1TopConstraint:(id)constraint;
- (void)setPlayerView1WidthContraint:(id)contraint;
- (void)setPlayerView2:(id)view2;
- (void)setPlayerView2BottomConstraint:(id)constraint;
- (void)setPlayerView2TrailingConstraint:(id)constraint;
- (void)setPlayerView2WidthContraint:(id)contraint;
- (void)setPlayerView3:(id)view3;
- (void)setPlayerView3BottomConstraint:(id)constraint;
- (void)setPlayerView3LeadingConstraint:(id)constraint;
- (void)setPlayerView3WidthContraint:(id)contraint;
- (void)setPlayerView4:(id)view4;
- (void)setPlayerView4TopConstraint:(id)constraint;
- (void)setPlayerView4TrailingConstraint:(id)constraint;
- (void)setPlayerView4WidthContraint:(id)contraint;
- (void)setPlayerView5:(id)view5;
- (void)setPlayerView5BottomConstraint:(id)constraint;
- (void)setPlayerView5LeadingConstraint:(id)constraint;
- (void)setPlayerView5WidthContraint:(id)contraint;
- (void)setPlayerView6:(id)view6;
- (void)setPlayerView6LeadingConstraint:(id)constraint;
- (void)setPlayerView6TopConstraint:(id)constraint;
- (void)setPlayerView6WidthContraint:(id)contraint;
- (void)setPlayerView7:(id)view7;
- (void)setPlayerView7BottomConstraint:(id)constraint;
- (void)setPlayerView7LeadingConstraint:(id)constraint;
- (void)setPlayerView7WidthContraint:(id)contraint;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation GKPlayerGroupView

- (UIView)iconContainer
{
  v2 = sub_24E0D2798();

  return v2;
}

- (void)setIconContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  sub_24E0D2800();
}

- (GKDashboardPlayerPhotoView)playerView1
{
  v2 = sub_24E0D2878();

  return v2;
}

- (void)setPlayerView1:(id)view1
{
  view1Copy = view1;
  selfCopy = self;
  sub_24E0D28E0();
}

- (GKDashboardPlayerPhotoView)playerView2
{
  v2 = sub_24E0D2958();

  return v2;
}

- (void)setPlayerView2:(id)view2
{
  view2Copy = view2;
  selfCopy = self;
  sub_24E0D29C0();
}

- (GKDashboardPlayerPhotoView)playerView3
{
  v2 = sub_24E0D2A38();

  return v2;
}

- (void)setPlayerView3:(id)view3
{
  view3Copy = view3;
  selfCopy = self;
  sub_24E0D2AA0();
}

- (GKDashboardPlayerPhotoView)playerView4
{
  v2 = sub_24E0D2B18();

  return v2;
}

- (void)setPlayerView4:(id)view4
{
  view4Copy = view4;
  selfCopy = self;
  sub_24E0D2B80();
}

- (GKDashboardPlayerPhotoView)playerView5
{
  v2 = sub_24E0D2BF8();

  return v2;
}

- (void)setPlayerView5:(id)view5
{
  view5Copy = view5;
  selfCopy = self;
  sub_24E0D2C60();
}

- (GKDashboardPlayerPhotoView)playerView6
{
  v2 = sub_24E0D2CD8();

  return v2;
}

- (void)setPlayerView6:(id)view6
{
  view6Copy = view6;
  selfCopy = self;
  sub_24E0D2D40();
}

- (GKDashboardPlayerPhotoView)playerView7
{
  v2 = sub_24E0D2DB8();

  return v2;
}

- (void)setPlayerView7:(id)view7
{
  view7Copy = view7;
  selfCopy = self;
  sub_24E0D2E20();
}

- (NSLayoutConstraint)playerView1WidthContraint
{
  v2 = sub_24E0D2E98();

  return v2;
}

- (void)setPlayerView1WidthContraint:(id)contraint
{
  contraintCopy = contraint;
  selfCopy = self;
  sub_24E0D2F00();
}

- (NSLayoutConstraint)playerView2WidthContraint
{
  v2 = sub_24E0D2F78();

  return v2;
}

- (void)setPlayerView2WidthContraint:(id)contraint
{
  contraintCopy = contraint;
  selfCopy = self;
  sub_24E0D2FE0();
}

- (NSLayoutConstraint)playerView3WidthContraint
{
  v2 = sub_24E0D3058();

  return v2;
}

- (void)setPlayerView3WidthContraint:(id)contraint
{
  contraintCopy = contraint;
  selfCopy = self;
  sub_24E0D30C0();
}

- (NSLayoutConstraint)playerView4WidthContraint
{
  v2 = sub_24E0D3138();

  return v2;
}

- (void)setPlayerView4WidthContraint:(id)contraint
{
  contraintCopy = contraint;
  selfCopy = self;
  sub_24E0D31A0();
}

- (NSLayoutConstraint)playerView5WidthContraint
{
  v2 = sub_24E0D3218();

  return v2;
}

- (void)setPlayerView5WidthContraint:(id)contraint
{
  contraintCopy = contraint;
  selfCopy = self;
  sub_24E0D3280();
}

- (NSLayoutConstraint)playerView6WidthContraint
{
  v2 = sub_24E0D32F8();

  return v2;
}

- (void)setPlayerView6WidthContraint:(id)contraint
{
  contraintCopy = contraint;
  selfCopy = self;
  sub_24E0D3360();
}

- (NSLayoutConstraint)playerView7WidthContraint
{
  v2 = sub_24E0D33D8();

  return v2;
}

- (void)setPlayerView7WidthContraint:(id)contraint
{
  contraintCopy = contraint;
  selfCopy = self;
  sub_24E0D3440();
}

- (NSLayoutConstraint)playerView1LeadingConstraint
{
  v2 = sub_24E0D34B8();

  return v2;
}

- (void)setPlayerView1LeadingConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E0D3520();
}

- (NSLayoutConstraint)playerView1TopConstraint
{
  v2 = sub_24E0D3598();

  return v2;
}

- (void)setPlayerView1TopConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E0D3600();
}

- (NSLayoutConstraint)playerView2TrailingConstraint
{
  v2 = sub_24E0D3678();

  return v2;
}

- (void)setPlayerView2TrailingConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E0D36E0();
}

- (NSLayoutConstraint)playerView2BottomConstraint
{
  v2 = sub_24E0D3758();

  return v2;
}

- (void)setPlayerView2BottomConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E0D37C0();
}

- (NSLayoutConstraint)playerView3LeadingConstraint
{
  v2 = sub_24E0D3838();

  return v2;
}

- (void)setPlayerView3LeadingConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E0D38A0();
}

- (NSLayoutConstraint)playerView3BottomConstraint
{
  v2 = sub_24E0D3918();

  return v2;
}

- (void)setPlayerView3BottomConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E0D3980();
}

- (NSLayoutConstraint)playerView4TrailingConstraint
{
  v2 = sub_24E0D39F8();

  return v2;
}

- (void)setPlayerView4TrailingConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E0D3A60();
}

- (NSLayoutConstraint)playerView4TopConstraint
{
  v2 = sub_24E0D3AD8();

  return v2;
}

- (void)setPlayerView4TopConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E0D3B40();
}

- (NSLayoutConstraint)playerView5LeadingConstraint
{
  v2 = sub_24E0D3BB8();

  return v2;
}

- (void)setPlayerView5LeadingConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E0D3C20();
}

- (NSLayoutConstraint)playerView5BottomConstraint
{
  v2 = sub_24E0D3C98();

  return v2;
}

- (void)setPlayerView5BottomConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E0D3D00();
}

- (NSLayoutConstraint)playerView6LeadingConstraint
{
  v2 = sub_24E0D3D78();

  return v2;
}

- (void)setPlayerView6LeadingConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E0D3DE0();
}

- (NSLayoutConstraint)playerView6TopConstraint
{
  v2 = sub_24E0D3E58();

  return v2;
}

- (void)setPlayerView6TopConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E0D3EC0();
}

- (NSLayoutConstraint)playerView7LeadingConstraint
{
  v2 = sub_24E0D3F38();

  return v2;
}

- (void)setPlayerView7LeadingConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E0D3FA0();
}

- (NSLayoutConstraint)playerView7BottomConstraint
{
  v2 = sub_24E0D4018();

  return v2;
}

- (void)setPlayerView7BottomConstraint:(id)constraint
{
  constraintCopy = constraint;
  selfCopy = self;
  sub_24E0D4080();
}

- (void)awakeFromNib
{
  selfCopy = self;
  GKPlayerGroupView.awakeFromNib()();
}

- (void)configureWithPlayers:(id)players messagesGroupIdentifier:(id)identifier playerSelectionProxy:(id)proxy
{
  sub_24DF95978();
  v8 = sub_24E347F08();
  if (identifier)
  {
    v9 = sub_24E347CF8();
    identifier = v10;
  }

  else
  {
    v9 = 0;
  }

  swift_unknownObjectRetain();
  selfCopy = self;
  GKPlayerGroupView.configure(players:messagesGroupIdentifier:playerSelectionProxy:)(v8, v9, identifier, proxy);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = change;
  GKPlayerGroupView.traitCollectionDidChange(_:)(v9);
}

- (void)layoutSubviews
{
  selfCopy = self;
  GKPlayerGroupView.layoutSubviews()();
}

+ (id)create
{
  swift_getObjCClassMetadata();
  static GKPlayerGroupView.create()();

  return v2;
}

@end