@interface ICCollaboratorAvatarView
+ (double)contentHeight;
- (CGPoint)frameAnchorPoint;
- (NSString)name;
- (void)didMoveToWindow;
- (void)handleHoverWithRecognizer:(id)a3;
- (void)handleTap:(id)a3;
- (void)removeFromSuperviewAnimatedWithCompletion:(id)a3;
- (void)setFrameAnchorPoint:(CGPoint)a3;
- (void)setIsExpanded:(BOOL)a3 animated:(BOOL)a4;
- (void)updateWithoutAnimation;
@end

@implementation ICCollaboratorAvatarView

+ (double)contentHeight
{
  v2 = [objc_opt_self() ic:*MEMORY[0x277D769D0] preferredFontForStyle:*MEMORY[0x277D74410] withFontWeight:?];
  if (v2)
  {
    v4 = v2;
    [v2 lineHeight];
    v6 = v5;

    result = v6 + 6.0;
    if (v6 + 6.0 <= 30.0)
    {
      return 30.0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (NSString)name
{

  v2 = sub_2154A1D2C();

  return v2;
}

- (CGPoint)frameAnchorPoint
{
  v2 = *(self + OBJC_IVAR___ICCollaboratorAvatarView_frameAnchorPoint);
  v3 = *(self + OBJC_IVAR___ICCollaboratorAvatarView_frameAnchorPoint + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setFrameAnchorPoint:(CGPoint)a3
{
  *(self + OBJC_IVAR___ICCollaboratorAvatarView_frameAnchorPoint) = a3;
  v3 = self;
  sub_21532CAEC(0);
  sub_21532CEBC();
}

- (void)didMoveToWindow
{
  v2 = self;
  CollaboratorAvatarView.didMoveToWindow()();
}

- (void)setIsExpanded:(BOOL)a3 animated:(BOOL)a4
{
  if (*(self + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded) != a3)
  {
    *(self + OBJC_IVAR___ICCollaboratorAvatarView_isExpanded) = a3;
    v6 = self;
    sub_21532CAEC(a4);
    sub_21532CEBC();
  }
}

- (void)removeFromSuperviewAnimatedWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = sub_21532FCDC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  v8 = self;
  sub_21532DCA8(v7, v6);
  sub_21532594C(v7);
}

- (void)updateWithoutAnimation
{
  v2 = self;
  sub_21532CAEC(0);
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21532FB7C();
}

- (void)handleHoverWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21532F73C(v4);
}

@end