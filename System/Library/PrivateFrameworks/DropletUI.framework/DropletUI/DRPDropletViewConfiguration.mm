@interface DRPDropletViewConfiguration
+ (id)edgeAdaptiveKeylineWithCanvasSize:(CGSize)size edge:(unint64_t)edge protrusionFromEdge:(double)fromEdge centerAlongEdge:(double)alongEdge containerSize:(CGSize)containerSize containerCornerRadius:(double)radius transform3D:(CATransform3D *)d dropletRadius:(double)self0;
+ (id)edgeContentPresentedWithCanvasSize:(CGSize)size edge:(unint64_t)edge lengthAlongEdge:(double)alongEdge protrusionFromEdge:(double)fromEdge centerAlongEdge:(double)centerAlongEdge inflationProgress:(double)progress dropletRadius:(double)radius;
+ (id)edgeHintWithCanvasSize:(CGSize)size hintSize:(double)hintSize edge:(unint64_t)edge centerAlongEdge:(double)alongEdge progress:(double)progress dropletRadius:(double)radius;
+ (id)rightEdgeContentPresentedWithCanvasSize:(CGSize)size contentSize:(CGSize)contentSize centerY:(double)y dropletRadius:(double)radius isOffscreen:(BOOL)offscreen inflationProgress:(double)progress;
+ (id)rightEdgeHintWithCanvasSize:(CGSize)size centerY:(double)y progress:(double)progress;
+ (id)trailingHintWithCanvasSize:(CGSize)size centerY:(double)y progress:(double)progress;
- (BOOL)disableDropletEffectFilters;
- (BOOL)isEqual:(id)equal;
- (CATransform3D)containerTransform;
- (DRPDropletContextKeylineStyle)keylineStyle;
- (DRPDropletViewConfiguration)init;
- (DRPDropletViewConfiguration)initWithCenterX:(double)x centerY:(double)y boundaryEdges:(unint64_t)edges containerCornerRadius:(double)radius containerHeight:(double)height containerWidth:(double)width containerTransform:(CATransform3D *)transform dropletColor:(id)self0 dropletRadius:(double)self1 disableDropletEffectFilters:(BOOL)self2 boundaryOutsets:(UIEdgeInsets)self3 keylineStyle:(id)self4;
- (NSString)debugDescription;
- (NSString)description;
- (UIColor)dropletColor;
- (UIEdgeInsets)boundaryOutsets;
- (double)centerX;
- (double)centerY;
- (double)containerCornerRadius;
- (double)containerHeight;
- (double)containerWidth;
- (double)dropletRadius;
- (id)animationBlockForKeyPath:(id)path;
- (id)animationCompletionBlockForKeyPath:(id)path;
- (id)anyAnimationCompletionBlock;
- (id)behaviorSettingsForKeyPath:(id)path;
- (id)copy;
- (unint64_t)boundaryEdges;
- (void)addAlongsideAnimationBlockForKeyPath:(id)path animationBlock:(id)block;
- (void)addAnimationCompletionBlockForKeyPath:(id)path animationCompletionBlock:(id)block;
- (void)addAnyAnimationCompletionBlock:(id)block;
- (void)defaultResetKeylineForCanvasSize:(CGSize)size;
- (void)removeAnyAnimationCompletionBlocks;
- (void)setBehaviorSettingsForKeyPath:(id)path behaviorSettings:(id)settings;
- (void)setBoundaryEdges:(unint64_t)edges;
- (void)setBoundaryOutsets:(UIEdgeInsets)outsets;
- (void)setCenterX:(double)x;
- (void)setCenterY:(double)y;
- (void)setContainerCornerRadius:(double)radius;
- (void)setContainerHeight:(double)height;
- (void)setContainerTransform:(CATransform3D *)transform;
- (void)setContainerWidth:(double)width;
- (void)setDisableDropletEffectFilters:(BOOL)filters;
- (void)setDropletColor:(id)color;
- (void)setDropletRadius:(double)radius;
- (void)setKeylineStyle:(id)style;
@end

@implementation DRPDropletViewConfiguration

- (double)centerX
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_centerX;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCenterX:(double)x
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_centerX;
  swift_beginAccess();
  *(&self->super.isa + v5) = x;
}

- (double)centerY
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_centerY;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCenterY:(double)y
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_centerY;
  swift_beginAccess();
  *(&self->super.isa + v5) = y;
}

- (unint64_t)boundaryEdges
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_boundaryEdges;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBoundaryEdges:(unint64_t)edges
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_boundaryEdges;
  swift_beginAccess();
  *(&self->super.isa + v5) = edges;
}

- (double)containerCornerRadius
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_containerCornerRadius;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setContainerCornerRadius:(double)radius
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_containerCornerRadius;
  swift_beginAccess();
  *(&self->super.isa + v5) = radius;
}

- (double)containerHeight
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_containerHeight;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setContainerHeight:(double)height
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_containerHeight;
  swift_beginAccess();
  *(&self->super.isa + v5) = height;
}

- (double)containerWidth
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_containerWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setContainerWidth:(double)width
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_containerWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = width;
}

- (CATransform3D)containerTransform
{
  v4 = (self + OBJC_IVAR___DRPDropletViewConfiguration_containerTransform);
  result = swift_beginAccess();
  v6 = v4[1];
  *&retstr->m11 = *v4;
  *&retstr->m13 = v6;
  v7 = v4[3];
  *&retstr->m21 = v4[2];
  *&retstr->m23 = v7;
  v8 = v4[5];
  *&retstr->m31 = v4[4];
  *&retstr->m33 = v8;
  v9 = v4[7];
  *&retstr->m41 = v4[6];
  *&retstr->m43 = v9;
  return result;
}

- (void)setContainerTransform:(CATransform3D *)transform
{
  v3 = (self + OBJC_IVAR___DRPDropletViewConfiguration_containerTransform);
  v11 = *&transform->m11;
  v7 = *&transform->m13;
  v10 = *&transform->m21;
  v5 = *&transform->m33;
  v6 = *&transform->m23;
  v8 = *&transform->m41;
  v9 = *&transform->m31;
  v4 = *&transform->m43;
  swift_beginAccess();
  *v3 = v11;
  v3[1] = v7;
  v3[2] = v10;
  v3[3] = v6;
  v3[4] = v9;
  v3[5] = v5;
  v3[6] = v8;
  v3[7] = v4;
}

- (UIColor)dropletColor
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_dropletColor;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDropletColor:(id)color
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_dropletColor;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = color;
  colorCopy = color;
}

- (double)dropletRadius
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_dropletRadius;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDropletRadius:(double)radius
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_dropletRadius;
  swift_beginAccess();
  *(&self->super.isa + v5) = radius;
}

- (BOOL)disableDropletEffectFilters
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_disableDropletEffectFilters;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDisableDropletEffectFilters:(BOOL)filters
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_disableDropletEffectFilters;
  swift_beginAccess();
  *(&self->super.isa + v5) = filters;
}

- (UIEdgeInsets)boundaryOutsets
{
  v2 = (self + OBJC_IVAR___DRPDropletViewConfiguration_boundaryOutsets);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

- (void)setBoundaryOutsets:(UIEdgeInsets)outsets
{
  right = outsets.right;
  bottom = outsets.bottom;
  left = outsets.left;
  top = outsets.top;
  v7 = (self + OBJC_IVAR___DRPDropletViewConfiguration_boundaryOutsets);
  swift_beginAccess();
  *v7 = top;
  v7[1] = left;
  v7[2] = bottom;
  v7[3] = right;
}

- (DRPDropletContextKeylineStyle)keylineStyle
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_keylineStyle;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setKeylineStyle:(id)style
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_keylineStyle;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = style;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (id)anyAnimationCompletionBlock
{
  if (*(&self->super.isa + OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock))
  {
    v2 = *(&self->centerX + OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock);
    v5[4] = *(&self->super.isa + OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock);
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_249EAA184;
    v5[3] = &block_descriptor_83;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)removeAnyAnimationCompletionBlocks
{
  v2 = (&self->super.isa + OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock);
  v3 = *(&self->super.isa + OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock);
  v4 = *(&self->centerX + OBJC_IVAR___DRPDropletViewConfiguration__anyAnimationCompletionBlock);
  *v2 = 0;
  v2[1] = 0;
  selfCopy = self;
  sub_249E9F570(v3);
}

- (void)addAnyAnimationCompletionBlock:(id)block
{
  v4 = _Block_copy(block);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  DRPDropletViewConfiguration.addAnyAnimationCompletionBlock(_:)(sub_249EB0F28, v5);
}

- (id)animationBlockForKeyPath:(id)path
{
  v4 = sub_249ED6C70();
  v6 = v5;
  selfCopy = self;
  v8 = DRPDropletViewConfiguration.animationBlock(forKeyPath:)(v4, v6);
  v10 = v9;

  if (v8)
  {
    v12[4] = v8;
    v12[5] = v10;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_249EAA6AC;
    v12[3] = &block_descriptor_77;
    v8 = _Block_copy(v12);
  }

  return v8;
}

- (void)addAlongsideAnimationBlockForKeyPath:(id)path animationBlock:(id)block
{
  v5 = _Block_copy(block);
  v6 = sub_249ED6C70();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_249EB0F20;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  DRPDropletViewConfiguration.addAlongsideAnimationBlock(forKeyPath:animationBlock:)(v6, v8, v5, v9);
  sub_249E9F570(v5);
}

- (id)behaviorSettingsForKeyPath:(id)path
{
  v4 = sub_249ED6C70();
  v6 = v5;
  selfCopy = self;
  v8 = DRPDropletViewConfiguration.behaviorSettings(forKeyPath:)(v4, v6);

  return v8;
}

- (void)setBehaviorSettingsForKeyPath:(id)path behaviorSettings:(id)settings
{
  v6 = sub_249ED6C70();
  v8 = v7;
  swift_beginAccess();
  swift_unknownObjectRetain_n();
  selfCopy = self;
  sub_249EAA96C(settings, v6, v8);
  swift_endAccess();
  swift_unknownObjectRelease();
}

- (id)animationCompletionBlockForKeyPath:(id)path
{
  v4 = sub_249ED6C70();
  v6 = v5;
  selfCopy = self;
  v8 = DRPDropletViewConfiguration.animationCompletionBlock(forKeyPath:)(v4, v6);
  v10 = v9;

  if (v8)
  {
    v12[4] = v8;
    v12[5] = v10;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_249EAB03C;
    v12[3] = &block_descriptor_0;
    v8 = _Block_copy(v12);
  }

  return v8;
}

- (void)addAnimationCompletionBlockForKeyPath:(id)path animationCompletionBlock:(id)block
{
  v5 = _Block_copy(block);
  v6 = sub_249ED6C70();
  v8 = v7;
  if (v5)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v5;
    v5 = sub_249EB0EE8;
  }

  else
  {
    v9 = 0;
  }

  selfCopy = self;
  DRPDropletViewConfiguration.addAnimationCompletionBlock(forKeyPath:animationCompletionBlock:)(v6, v8, v5, v9);
  sub_249E9F570(v5);
}

- (DRPDropletViewConfiguration)initWithCenterX:(double)x centerY:(double)y boundaryEdges:(unint64_t)edges containerCornerRadius:(double)radius containerHeight:(double)height containerWidth:(double)width containerTransform:(CATransform3D *)transform dropletColor:(id)self0 dropletRadius:(double)self1 disableDropletEffectFilters:(BOOL)self2 boundaryOutsets:(UIEdgeInsets)self3 keylineStyle:(id)self4
{
  v22 = *&transform->m13;
  v34[0] = *&transform->m11;
  v34[1] = v22;
  v23 = *&transform->m23;
  v34[2] = *&transform->m21;
  v34[3] = v23;
  v24 = *&transform->m33;
  v34[4] = *&transform->m31;
  v34[5] = v24;
  v25 = *&transform->m43;
  v34[6] = *&transform->m41;
  v34[7] = v25;
  colorCopy = color;
  swift_unknownObjectRetain();
  v30 = sub_249EAFC84(edges, v34, color, filters, style, x, y, radius, height, width, dropletRadius, outsets.top, outsets.left, v27, v28, v29, *&outsets.bottom, *&outsets.right);

  swift_unknownObjectRelease();
  return v30;
}

- (id)copy
{
  v3 = objc_allocWithZone(DRPDropletViewConfiguration);

  return [v3 initWithViewConfiguration_];
}

- (NSString)description
{
  selfCopy = self;
  sub_249EAC358(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29548, &qword_249ED8EA0);
  sub_249EAFF14(&qword_27EF29550, &qword_27EF29548, &qword_249ED8EA0);
  sub_249ED6C50();

  v3 = sub_249ED6C60();

  return v3;
}

- (NSString)debugDescription
{
  selfCopy = self;
  DRPDropletViewConfiguration.debugDescription.getter();

  v3 = sub_249ED6C60();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_249ED6D90();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = DRPDropletViewConfiguration.isEqual(_:)(v8);

  sub_249EAFF5C(v8);
  return v6 & 1;
}

- (DRPDropletViewConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)defaultResetKeylineForCanvasSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  DRPDropletViewConfiguration.defaultResetKeyline(forCanvasSize:)(__PAIR128__(*&height, *&width));
}

+ (id)trailingHintWithCanvasSize:(CGSize)size centerY:(double)y progress:(double)progress
{
  v5 = [self rightEdgeHintWithCanvasSize:size.width centerY:size.height progress:{y, progress}];

  return v5;
}

+ (id)rightEdgeHintWithCanvasSize:(CGSize)size centerY:(double)y progress:(double)progress
{
  height = size.height;
  width = size.width;
  rootSettings = [objc_opt_self() rootSettings];
  [rootSettings rightEdgeHintSize];
  v12 = v11;
  [rootSettings rightEdgeHintDropletRadius];
  v14 = [self edgeHintWithCanvasSize:8 hintSize:width edge:height centerAlongEdge:v12 progress:y dropletRadius:{progress, v13}];

  return v14;
}

+ (id)edgeHintWithCanvasSize:(CGSize)size hintSize:(double)hintSize edge:(unint64_t)edge centerAlongEdge:(double)alongEdge progress:(double)progress dropletRadius:(double)radius
{
  v8 = sub_249EB0328(edge, size.width, size.height, hintSize, alongEdge, progress, radius);

  return v8;
}

+ (id)rightEdgeContentPresentedWithCanvasSize:(CGSize)size contentSize:(CGSize)contentSize centerY:(double)y dropletRadius:(double)radius isOffscreen:(BOOL)offscreen inflationProgress:(double)progress
{
  offscreenCopy = offscreen;
  width = contentSize.width;
  height = size.height;
  v11 = size.width;
  v12 = [self edgeContentPresentedWithCanvasSize:8 edge:size.width lengthAlongEdge:size.height protrusionFromEdge:contentSize.height centerAlongEdge:contentSize.width inflationProgress:y dropletRadius:{progress, radius}];
  v13 = v12;
  if (offscreenCopy)
  {
    [v12 centerX];
    [v13 setCenterX_];
  }

  [v13 defaultResetKeylineForCanvasSize_];

  return v13;
}

+ (id)edgeContentPresentedWithCanvasSize:(CGSize)size edge:(unint64_t)edge lengthAlongEdge:(double)alongEdge protrusionFromEdge:(double)fromEdge centerAlongEdge:(double)centerAlongEdge inflationProgress:(double)progress dropletRadius:(double)radius
{
  height = size.height;
  width = size.width;
  swift_getObjCClassMetadata();
  v17 = sub_249EADE54(edge, width, height, alongEdge, fromEdge, centerAlongEdge, progress, radius);

  return v17;
}

+ (id)edgeAdaptiveKeylineWithCanvasSize:(CGSize)size edge:(unint64_t)edge protrusionFromEdge:(double)fromEdge centerAlongEdge:(double)alongEdge containerSize:(CGSize)containerSize containerCornerRadius:(double)radius transform3D:(CATransform3D *)d dropletRadius:(double)self0
{
  v10 = *&d->m13;
  v16[0] = *&d->m11;
  v16[1] = v10;
  v11 = *&d->m23;
  v16[2] = *&d->m21;
  v16[3] = v11;
  v12 = *&d->m33;
  v16[4] = *&d->m31;
  v16[5] = v12;
  v13 = *&d->m43;
  v16[6] = *&d->m41;
  v16[7] = v13;
  v14 = sub_249EB08F0(edge, v16, size.width, size.height, fromEdge, alongEdge, containerSize.width, containerSize.height, radius, dropletRadius);

  return v14;
}

@end