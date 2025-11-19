@interface CKSwipeActionIndicator
+ (id)generateMaterialReplyIndicator;
+ (id)generateReplyIndicator;
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CGSize)preferredSize;
- (CKSwipeActionIndicator)initWithCoder:(id)a3;
- (CKSwipeActionIndicator)initWithFrame:(CGRect)a3;
- (double)blurRadius;
- (double)currentHorizontalTranslation;
- (void)layoutSubviews;
- (void)setBlurRadius:(double)a3;
- (void)setCurrentHorizontalTranslation:(double)a3;
- (void)setTransformForScale:(double)a3 horizontalTranslation:(double)a4;
@end

@implementation CKSwipeActionIndicator

+ (id)generateReplyIndicator
{
  v2 = sub_190D56ED0();
  v3 = [objc_opt_self() systemImageNamed_];

  v4 = objc_allocWithZone(type metadata accessor for SwipeActionIndicator());
  v5 = sub_190921310(v3);

  return v5;
}

+ (id)generateMaterialReplyIndicator
{
  v2 = objc_opt_self();
  v3 = sub_190D56ED0();
  v4 = [v2 ckImageNamed_];

  v5 = sub_190D56ED0();
  v6 = [v2 ckImageNamed_];

  v7 = objc_allocWithZone(type metadata accessor for MaterialSwipeActionIndicator());
  v8 = sub_190921EE4(v6, v4);

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

- (void)setCurrentHorizontalTranslation:(double)a3
{
  v5 = OBJC_IVAR___CKSwipeActionIndicator_currentHorizontalTranslation;
  swift_beginAccess();
  *(&self->super.super.super.isa + v5) = a3;
}

- (double)blurRadius
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR___CKSwipeActionIndicator_imageView);
  if (!v2)
  {
    return 0.0;
  }

  v3 = self;
  v4 = v2;
  v5 = sub_190A86BA4();

  return v5;
}

- (void)setBlurRadius:(double)a3
{
  v3 = self;
  sub_19092103C();
}

- (CKSwipeActionIndicator)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR___CKSwipeActionIndicator_imageView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___CKSwipeActionIndicator_currentScale) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR___CKSwipeActionIndicator_currentHorizontalTranslation) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SwipeActionIndicator();
  v7 = [(CKSwipeActionIndicator *)&v9 initWithFrame:x, y, width, height];
  sub_1909214B0();

  return v7;
}

- (CKSwipeActionIndicator)initWithCoder:(id)a3
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

- (void)setTransformForScale:(double)a3 horizontalTranslation:(double)a4
{
  v7 = OBJC_IVAR___CKSwipeActionIndicator_currentScale;
  swift_beginAccess();
  *(&self->super.super.super.isa + v7) = a3;
  v8 = OBJC_IVAR___CKSwipeActionIndicator_currentHorizontalTranslation;
  swift_beginAccess();
  *(&self->super.super.super.isa + v8) = a4;
  v9 = *(MEMORY[0x1E695EFD0] + 16);
  *&v11.a = *MEMORY[0x1E695EFD0];
  *&v11.c = v9;
  *&v11.tx = *(MEMORY[0x1E695EFD0] + 32);
  CGAffineTransformScale(&v10, &v11, a3, a3);
  v11 = v10;
  CGAffineTransformTranslate(&v10, &v11, a4, 0.0);
  v11 = v10;
  [(CKSwipeActionIndicator *)self setTransform:&v11];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  if (a3)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  v8 = sub_190921994(v4, v6);

  return v8 & 1;
}

@end