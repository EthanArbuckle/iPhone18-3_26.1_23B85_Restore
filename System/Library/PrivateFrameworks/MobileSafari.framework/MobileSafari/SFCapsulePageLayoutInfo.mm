@interface SFCapsulePageLayoutInfo
- (BOOL)canRepresentCornersAsRadius;
- (BOOL)ignoresCornerRadius;
- (BOOL)isHidden;
- (CACornerRadii)cornerRadii;
- (CGAffineTransform)transform;
- (CGRect)frame;
- (NSString)parentIdentifier;
- (double)alpha;
- (double)cornerRadius;
- (void)setAlpha:(double)alpha;
- (void)setCanRepresentCornersAsRadius:(BOOL)radius;
- (void)setCornerRadii:(CACornerRadii *)radii;
- (void)setCornerRadius:(double)radius;
- (void)setFrame:(CGRect)frame;
- (void)setIgnoresCornerRadius:(BOOL)radius;
- (void)setIsHidden:(BOOL)hidden;
- (void)setParentIdentifier:(id)identifier;
- (void)setTransform:(CGAffineTransform *)transform;
@end

@implementation SFCapsulePageLayoutInfo

- (NSString)parentIdentifier
{
  v2 = self + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_parentIdentifier;
  swift_beginAccess();
  if (*(v2 + 1))
  {
    sub_18BC1E3F8();
    v3 = sub_18BC20B98();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (double)cornerRadius
{
  v3 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii;
  swift_beginAccess();
  return *(self + v3);
}

- (CGRect)frame
{
  v2 = *(self + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame);
  v3 = *(self + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 8);
  v4 = *(self + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 16);
  v5 = *(self + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (double)alpha
{
  v3 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_alpha;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)isHidden
{
  v3 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_isHidden;
  swift_beginAccess();
  return *(self + v3);
}

- (CGAffineTransform)transform
{
  v4 = (self + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_transform);
  result = swift_beginAccess();
  v6 = v4[1];
  *&retstr->a = *v4;
  *&retstr->c = v6;
  *&retstr->tx = v4[2];
  return result;
}

- (void)setAlpha:(double)alpha
{
  v5 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_alpha;
  swift_beginAccess();
  *(self + v5) = alpha;
}

- (BOOL)canRepresentCornersAsRadius
{
  v3 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_canRepresentCornersAsRadius;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCanRepresentCornersAsRadius:(BOOL)radius
{
  v5 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_canRepresentCornersAsRadius;
  swift_beginAccess();
  *(self + v5) = radius;
}

- (CACornerRadii)cornerRadii
{
  v4 = self + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_cornerRadii;
  result = swift_beginAccess();
  v6 = *(v4 + 1);
  retstr->minXMaxY = *v4;
  retstr->maxXMaxY = v6;
  v7 = *(v4 + 3);
  retstr->maxXMinY = *(v4 + 2);
  retstr->minXMinY = v7;
  return result;
}

- (void)setCornerRadii:(CACornerRadii *)radii
{
  maxXMaxY = radii->maxXMaxY;
  v5[0] = radii->minXMaxY;
  v5[1] = maxXMaxY;
  minXMinY = radii->minXMinY;
  v5[2] = radii->maxXMinY;
  v5[3] = minXMinY;
  sub_18BB8132C(v5);
}

- (void)setCornerRadius:(double)radius
{
  selfCopy = self;
  sub_18BB815EC(radius);
}

- (void)setFrame:(CGRect)frame
{
  x = frame.origin.x;
  selfCopy = self;
  v4 = _SFRoundRectToPixels(x);
  v5 = selfCopy + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_pixelAlignedFrame;
  *v5 = v4;
  *(v5 + 1) = v6;
  *(v5 + 2) = v7;
  *(v5 + 3) = v8;
}

- (BOOL)ignoresCornerRadius
{
  v3 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_ignoresCornerRadius;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIgnoresCornerRadius:(BOOL)radius
{
  v5 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_ignoresCornerRadius;
  swift_beginAccess();
  *(self + v5) = radius;
}

- (void)setIsHidden:(BOOL)hidden
{
  v5 = OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_isHidden;
  swift_beginAccess();
  *(self + v5) = hidden;
}

- (void)setParentIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = sub_18BC20BD8();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_parentIdentifier);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (void)setTransform:(CGAffineTransform *)transform
{
  tx = transform->tx;
  ty = transform->ty;
  v5 = self + OBJC_IVAR____TtC12MobileSafari23SFCapsulePageLayoutInfo_transform;
  v6 = *&transform->c;
  v7 = *&transform->a;
  swift_beginAccess();
  *v5 = v7;
  *(v5 + 1) = v6;
  *(v5 + 4) = tx;
  *(v5 + 5) = ty;
}

@end