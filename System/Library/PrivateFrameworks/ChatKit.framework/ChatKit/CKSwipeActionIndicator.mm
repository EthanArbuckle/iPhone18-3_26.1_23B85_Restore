@interface CKSwipeActionIndicator
+ (id)generateMaterialReplyIndicator;
+ (id)generateReplyIndicator;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGSize)preferredSize;
- (CKSwipeActionIndicator)initWithCoder:(id)coder;
- (CKSwipeActionIndicator)initWithFrame:(CGRect)frame;
- (double)blurRadius;
- (double)currentHorizontalTranslation;
- (void)layoutSubviews;
- (void)setBlurRadius:(double)radius;
- (void)setCurrentHorizontalTranslation:(double)translation;
- (void)setTransformForScale:(double)scale horizontalTranslation:(double)translation;
@end

@implementation CKSwipeActionIndicator

+ (id)generateReplyIndicator
{
  v2 = sub_190D56ED0();
  systemImageNamed_ = [objc_opt_self() systemImageNamed_];

  v4 = objc_allocWithZone(type metadata accessor for SwipeActionIndicator());
  v5 = sub_190921310(systemImageNamed_);

  return v5;
}

+ (id)generateMaterialReplyIndicator
{
  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  ckImageNamed_ = [v2 ckImageNamed_];

  v5 = sub_190D56ED0();
  ckImageNamed_2 = [v2 ckImageNamed_];

  v7 = objc_allocWithZone(type metadata accessor for MaterialSwipeActionIndicator());
  v8 = sub_190921EE4(ckImageNamed_2, ckImageNamed_);

  return v8;
}

- (CGSize)preferredSize
{
  sub_190921AF4(self, a2, &selRef_endingReplyIndicatorSize);
  result.height = v3;
  result.width = v2;
  return result;
}

- (double)currentHorizontalTranslation
{
  v3 = OBJC_IVAR___CKSwipeActionIndicator_currentHorizontalTranslation;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setCurrentHorizontalTranslation:(double)translation
{
  v5 = OBJC_IVAR___CKSwipeActionIndicator_currentHorizontalTranslation;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = translation;
}

- (double)blurRadius
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___CKSwipeActionIndicator_imageView);
  if (!v2)
  {
    return 0.0;
  }

  selfCopy = self;
  v4 = v2;
  v5 = sub_190A86BA4();

  return v5;
}

- (void)setBlurRadius:(double)radius
{
  selfCopy = self;
  sub_19092103C();
}

- (CKSwipeActionIndicator)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR___CKSwipeActionIndicator_imageView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___CKSwipeActionIndicator_currentScale) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___CKSwipeActionIndicator_currentHorizontalTranslation) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SwipeActionIndicator();
  height = [(CKSwipeActionIndicator *)&v9 initWithFrame:x, y, width, height];
  sub_1909214B0();

  return height;
}

- (CKSwipeActionIndicator)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___CKSwipeActionIndicator_imageView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___CKSwipeActionIndicator_currentScale) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___CKSwipeActionIndicator_currentHorizontalTranslation) = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for SwipeActionIndicator();
  v2 = v5.receiver;
  [(CKSwipeActionIndicator *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR___CKSwipeActionIndicator_imageView];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }
}

- (void)setTransformForScale:(double)scale horizontalTranslation:(double)translation
{
  v7 = OBJC_IVAR___CKSwipeActionIndicator_currentScale;
  swift_beginAccess();
  *(&self->super.super.super.isa + v7) = scale;
  v8 = OBJC_IVAR___CKSwipeActionIndicator_currentHorizontalTranslation;
  swift_beginAccess();
  *(&self->super.super.super.isa + v8) = translation;
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&v11.a = *MEMORY[0x1E695EFD0];
  *&v11.c = v9;
  *&v11.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v10, &v11, scale, scale);
  v11 = v10;
  CGAffineTransformTranslate(&v10, &v11, translation, 0.0);
  v11 = v10;
  [(CKSwipeActionIndicator *)self setTransform:&v11];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_190921994(v4, v6);

  return v8 & 1;
}

@end