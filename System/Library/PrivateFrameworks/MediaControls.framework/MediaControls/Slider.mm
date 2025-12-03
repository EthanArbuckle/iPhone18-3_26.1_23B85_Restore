@interface Slider
- (BOOL)isEnabled;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGRect)hitRect;
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (void)_sliderFluidInteractionDidEnd:(id)end;
- (void)_sliderFluidInteractionWillBegin:(id)begin withLocation:(CGPoint)location;
- (void)_sliderFluidInteractionWillContinue:(id)continue withLocation:(CGPoint)location;
- (void)_sliderFluidInteractionWillEnd:(id)end;
- (void)_sliderFluidInteractionWillRubberband:(id)rubberband insets:(UIEdgeInsets)insets;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation Slider

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  height = bounds.size.height;
  v22 = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v24.receiver = self;
  v24.super_class = type metadata accessor for Slider();
  v7 = v24.receiver;
  [(Slider *)&v24 trackRectForBounds:x, y, width, height];
  v8 = v27.origin.x;
  v9 = v27.origin.y;
  v10 = v27.size.width;
  v11 = v27.size.height;
  MinX = CGRectGetMinX(v27);
  v28.origin.x = v8;
  v28.origin.y = v9;
  v28.size.width = v10;
  v28.size.height = v11;
  v12 = CGRectGetWidth(v28);
  (*((*MEMORY[0x1E69E7D40] & *v7) + 0xA0))(v25);
  if (v26)
  {
    v13 = x;
  }

  else
  {
    v13 = v8;
  }

  if (v26)
  {
    v14 = y;
  }

  else
  {
    v14 = v9;
  }

  if (v26)
  {
    v15 = width;
  }

  else
  {
    v15 = v10;
  }

  v16 = v22;
  if ((v26 & 1) == 0)
  {
    v16 = v11;
  }

  v17 = CGRectGetHeight(*&v13);

  v18 = 0.0;
  v19 = MinX;
  v20 = v12;
  v21 = v17;
  result.size.height = v21;
  result.size.width = v20;
  result.origin.y = v18;
  result.origin.x = v19;
  return result;
}

- (BOOL)isEnabled
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Slider();
  return [(Slider *)&v3 isEnabled];
}

- (void)setEnabled:(BOOL)enabled
{
  if (enabled)
  {
    v4 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x110);
    selfCopy = self;
    v6 = v4();
  }

  else
  {
    selfCopy2 = self;
    v6 = 0;
  }

  v8.receiver = self;
  v8.super_class = type metadata accessor for Slider();
  [(Slider *)&v8 setEnabled:v6 & 1];
}

- (CGRect)hitRect
{
  v18.receiver = self;
  v18.super_class = type metadata accessor for Slider();
  v2 = v18.receiver;
  hitRect = [(Slider *)&v18 hitRect];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  (*((*MEMORY[0x1E69E7D40] & *v2) + 0xA0))(v19, hitRect);
  v12 = *&v19[2];
  v13 = *&v19[3];

  v14 = UIEdgeInsetsInsetRect(v5, v7, v9, v11, v12, v13);
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(Slider *)selfCopy hitRect];
  v9.x = x;
  v9.y = y;
  v7 = CGRectContainsPoint(v10, v9);

  return v7;
}

- (void)accessibilityIncrement
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x128);
  selfCopy = self;
  v4 = v2();
  if (v4)
  {
    v5 = v4;
    v4();

    sub_1A210F5C0(v5);
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = type metadata accessor for Slider();
    [(Slider *)&v6 accessibilityIncrement];
  }
}

- (void)accessibilityDecrement
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x140);
  selfCopy = self;
  v4 = v2();
  if (v4)
  {
    v5 = v4;
    v4();

    sub_1A210F5C0(v5);
  }

  else
  {
    v6.receiver = selfCopy;
    v6.super_class = type metadata accessor for Slider();
    [(Slider *)&v6 accessibilityDecrement];
  }
}

- (void)_sliderFluidInteractionWillBegin:(id)begin withLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v6 = MEMORY[0x1E69E7D40];
  v7 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0xF0);
  selfCopy = self;
  v7(1);
  if ((*((*v6 & selfCopy->super.super.super.super.super.isa) + 0x88))())
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(selfCopy, ObjectType, v9, x, y);
    swift_unknownObjectRelease();
  }
}

- (void)_sliderFluidInteractionWillContinue:(id)continue withLocation:(CGPoint)location
{
  y = location.y;
  x = location.x;
  v6 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x88);
  selfCopy = self;
  if (v6())
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(selfCopy, ObjectType, v8, x, y);
    swift_unknownObjectRelease();
  }
}

- (void)_sliderFluidInteractionWillEnd:(id)end
{
  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x88);
  selfCopy = self;
  if (v3())
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(selfCopy, ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

- (void)_sliderFluidInteractionDidEnd:(id)end
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0xF0);
  selfCopy = self;
  v4(0);
  if ((*((*v3 & selfCopy->super.super.super.super.super.isa) + 0x88))())
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    (*(v6 + 32))(selfCopy, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (void)_sliderFluidInteractionWillRubberband:(id)rubberband insets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  v8 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x88);
  selfCopy = self;
  if (v8())
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    (*(v10 + 40))(selfCopy, ObjectType, v10, top, left, bottom, right);
    swift_unknownObjectRelease();
  }
}

@end