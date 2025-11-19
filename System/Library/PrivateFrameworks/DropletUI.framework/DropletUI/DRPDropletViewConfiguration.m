@interface DRPDropletViewConfiguration
+ (id)edgeAdaptiveKeylineWithCanvasSize:(CGSize)a3 edge:(unint64_t)a4 protrusionFromEdge:(double)a5 centerAlongEdge:(double)a6 containerSize:(CGSize)a7 containerCornerRadius:(double)a8 transform3D:(CATransform3D *)a9 dropletRadius:(double)a10;
+ (id)edgeContentPresentedWithCanvasSize:(CGSize)a3 edge:(unint64_t)a4 lengthAlongEdge:(double)a5 protrusionFromEdge:(double)a6 centerAlongEdge:(double)a7 inflationProgress:(double)a8 dropletRadius:(double)a9;
+ (id)edgeHintWithCanvasSize:(CGSize)a3 hintSize:(double)a4 edge:(unint64_t)a5 centerAlongEdge:(double)a6 progress:(double)a7 dropletRadius:(double)a8;
+ (id)rightEdgeContentPresentedWithCanvasSize:(CGSize)a3 contentSize:(CGSize)a4 centerY:(double)a5 dropletRadius:(double)a6 isOffscreen:(BOOL)a7 inflationProgress:(double)a8;
+ (id)rightEdgeHintWithCanvasSize:(CGSize)a3 centerY:(double)a4 progress:(double)a5;
+ (id)trailingHintWithCanvasSize:(CGSize)a3 centerY:(double)a4 progress:(double)a5;
- (BOOL)disableDropletEffectFilters;
- (BOOL)isEqual:(id)a3;
- (CATransform3D)containerTransform;
- (DRPDropletContextKeylineStyle)keylineStyle;
- (DRPDropletViewConfiguration)init;
- (DRPDropletViewConfiguration)initWithCenterX:(double)a3 centerY:(double)a4 boundaryEdges:(unint64_t)a5 containerCornerRadius:(double)a6 containerHeight:(double)a7 containerWidth:(double)a8 containerTransform:(CATransform3D *)a9 dropletColor:(id)a10 dropletRadius:(double)a11 disableDropletEffectFilters:(BOOL)a12 boundaryOutsets:(UIEdgeInsets)a13 keylineStyle:(id)a14;
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
- (id)animationBlockForKeyPath:(id)a3;
- (id)animationCompletionBlockForKeyPath:(id)a3;
- (id)anyAnimationCompletionBlock;
- (id)behaviorSettingsForKeyPath:(id)a3;
- (id)copy;
- (unint64_t)boundaryEdges;
- (void)addAlongsideAnimationBlockForKeyPath:(id)a3 animationBlock:(id)a4;
- (void)addAnimationCompletionBlockForKeyPath:(id)a3 animationCompletionBlock:(id)a4;
- (void)addAnyAnimationCompletionBlock:(id)a3;
- (void)defaultResetKeylineForCanvasSize:(CGSize)a3;
- (void)removeAnyAnimationCompletionBlocks;
- (void)setBehaviorSettingsForKeyPath:(id)a3 behaviorSettings:(id)a4;
- (void)setBoundaryEdges:(unint64_t)a3;
- (void)setBoundaryOutsets:(UIEdgeInsets)a3;
- (void)setCenterX:(double)a3;
- (void)setCenterY:(double)a3;
- (void)setContainerCornerRadius:(double)a3;
- (void)setContainerHeight:(double)a3;
- (void)setContainerTransform:(CATransform3D *)a3;
- (void)setContainerWidth:(double)a3;
- (void)setDisableDropletEffectFilters:(BOOL)a3;
- (void)setDropletColor:(id)a3;
- (void)setDropletRadius:(double)a3;
- (void)setKeylineStyle:(id)a3;
@end

@implementation DRPDropletViewConfiguration

- (double)centerX
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_centerX;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCenterX:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_centerX;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)centerY
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_centerY;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setCenterY:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_centerY;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (unint64_t)boundaryEdges
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_boundaryEdges;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setBoundaryEdges:(unint64_t)a3
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_boundaryEdges;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)containerCornerRadius
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_containerCornerRadius;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setContainerCornerRadius:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_containerCornerRadius;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)containerHeight
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_containerHeight;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setContainerHeight:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_containerHeight;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (double)containerWidth
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_containerWidth;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setContainerWidth:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_containerWidth;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
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

- (void)setContainerTransform:(CATransform3D *)a3
{
  v3 = (self + OBJC_IVAR___DRPDropletViewConfiguration_containerTransform);
  v11 = *&a3->m11;
  v7 = *&a3->m13;
  v10 = *&a3->m21;
  v5 = *&a3->m33;
  v6 = *&a3->m23;
  v8 = *&a3->m41;
  v9 = *&a3->m31;
  v4 = *&a3->m43;
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

- (void)setDropletColor:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_dropletColor;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (double)dropletRadius
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_dropletRadius;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDropletRadius:(double)a3
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_dropletRadius;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)disableDropletEffectFilters
{
  v3 = OBJC_IVAR___DRPDropletViewConfiguration_disableDropletEffectFilters;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDisableDropletEffectFilters:(BOOL)a3
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_disableDropletEffectFilters;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
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

- (void)setBoundaryOutsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
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

- (void)setKeylineStyle:(id)a3
{
  v5 = OBJC_IVAR___DRPDropletViewConfiguration_keylineStyle;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
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
  v5 = self;
  sub_249E9F570(v3);
}

- (void)addAnyAnimationCompletionBlock:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  DRPDropletViewConfiguration.addAnyAnimationCompletionBlock(_:)(sub_249EB0F28, v5);
}

- (id)animationBlockForKeyPath:(id)a3
{
  v4 = sub_249ED6C70();
  v6 = v5;
  v7 = self;
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

- (void)addAlongsideAnimationBlockForKeyPath:(id)a3 animationBlock:(id)a4
{
  v5 = _Block_copy(a4);
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

  v10 = self;
  DRPDropletViewConfiguration.addAlongsideAnimationBlock(forKeyPath:animationBlock:)(v6, v8, v5, v9);
  sub_249E9F570(v5);
}

- (id)behaviorSettingsForKeyPath:(id)a3
{
  v4 = sub_249ED6C70();
  v6 = v5;
  v7 = self;
  v8 = DRPDropletViewConfiguration.behaviorSettings(forKeyPath:)(v4, v6);

  return v8;
}

- (void)setBehaviorSettingsForKeyPath:(id)a3 behaviorSettings:(id)a4
{
  v6 = sub_249ED6C70();
  v8 = v7;
  swift_beginAccess();
  swift_unknownObjectRetain_n();
  v9 = self;
  sub_249EAA96C(a4, v6, v8);
  swift_endAccess();
  swift_unknownObjectRelease();
}

- (id)animationCompletionBlockForKeyPath:(id)a3
{
  v4 = sub_249ED6C70();
  v6 = v5;
  v7 = self;
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

- (void)addAnimationCompletionBlockForKeyPath:(id)a3 animationCompletionBlock:(id)a4
{
  v5 = _Block_copy(a4);
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

  v10 = self;
  DRPDropletViewConfiguration.addAnimationCompletionBlock(forKeyPath:animationCompletionBlock:)(v6, v8, v5, v9);
  sub_249E9F570(v5);
}

- (DRPDropletViewConfiguration)initWithCenterX:(double)a3 centerY:(double)a4 boundaryEdges:(unint64_t)a5 containerCornerRadius:(double)a6 containerHeight:(double)a7 containerWidth:(double)a8 containerTransform:(CATransform3D *)a9 dropletColor:(id)a10 dropletRadius:(double)a11 disableDropletEffectFilters:(BOOL)a12 boundaryOutsets:(UIEdgeInsets)a13 keylineStyle:(id)a14
{
  v22 = *&a9->m13;
  v34[0] = *&a9->m11;
  v34[1] = v22;
  v23 = *&a9->m23;
  v34[2] = *&a9->m21;
  v34[3] = v23;
  v24 = *&a9->m33;
  v34[4] = *&a9->m31;
  v34[5] = v24;
  v25 = *&a9->m43;
  v34[6] = *&a9->m41;
  v34[7] = v25;
  v26 = a10;
  swift_unknownObjectRetain();
  v30 = sub_249EAFC84(a5, v34, a10, a12, a14, a3, a4, a6, a7, a8, a11, a13.top, a13.left, v27, v28, v29, *&a13.bottom, *&a13.right);

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
  v2 = self;
  sub_249EAC358(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF29548, &qword_249ED8EA0);
  sub_249EAFF14(&qword_27EF29550, &qword_27EF29548, &qword_249ED8EA0);
  sub_249ED6C50();

  v3 = sub_249ED6C60();

  return v3;
}

- (NSString)debugDescription
{
  v2 = self;
  DRPDropletViewConfiguration.debugDescription.getter();

  v3 = sub_249ED6C60();

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_249ED6D90();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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

- (void)defaultResetKeylineForCanvasSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  DRPDropletViewConfiguration.defaultResetKeyline(forCanvasSize:)(__PAIR128__(*&height, *&width));
}

+ (id)trailingHintWithCanvasSize:(CGSize)a3 centerY:(double)a4 progress:(double)a5
{
  v5 = [a1 rightEdgeHintWithCanvasSize:a3.width centerY:a3.height progress:{a4, a5}];

  return v5;
}

+ (id)rightEdgeHintWithCanvasSize:(CGSize)a3 centerY:(double)a4 progress:(double)a5
{
  height = a3.height;
  width = a3.width;
  v10 = [objc_opt_self() rootSettings];
  [v10 rightEdgeHintSize];
  v12 = v11;
  [v10 rightEdgeHintDropletRadius];
  v14 = [a1 edgeHintWithCanvasSize:8 hintSize:width edge:height centerAlongEdge:v12 progress:a4 dropletRadius:{a5, v13}];

  return v14;
}

+ (id)edgeHintWithCanvasSize:(CGSize)a3 hintSize:(double)a4 edge:(unint64_t)a5 centerAlongEdge:(double)a6 progress:(double)a7 dropletRadius:(double)a8
{
  v8 = sub_249EB0328(a5, a3.width, a3.height, a4, a6, a7, a8);

  return v8;
}

+ (id)rightEdgeContentPresentedWithCanvasSize:(CGSize)a3 contentSize:(CGSize)a4 centerY:(double)a5 dropletRadius:(double)a6 isOffscreen:(BOOL)a7 inflationProgress:(double)a8
{
  v8 = a7;
  width = a4.width;
  height = a3.height;
  v11 = a3.width;
  v12 = [a1 edgeContentPresentedWithCanvasSize:8 edge:a3.width lengthAlongEdge:a3.height protrusionFromEdge:a4.height centerAlongEdge:a4.width inflationProgress:a5 dropletRadius:{a8, a6}];
  v13 = v12;
  if (v8)
  {
    [v12 centerX];
    [v13 setCenterX_];
  }

  [v13 defaultResetKeylineForCanvasSize_];

  return v13;
}

+ (id)edgeContentPresentedWithCanvasSize:(CGSize)a3 edge:(unint64_t)a4 lengthAlongEdge:(double)a5 protrusionFromEdge:(double)a6 centerAlongEdge:(double)a7 inflationProgress:(double)a8 dropletRadius:(double)a9
{
  height = a3.height;
  width = a3.width;
  swift_getObjCClassMetadata();
  v17 = sub_249EADE54(a4, width, height, a5, a6, a7, a8, a9);

  return v17;
}

+ (id)edgeAdaptiveKeylineWithCanvasSize:(CGSize)a3 edge:(unint64_t)a4 protrusionFromEdge:(double)a5 centerAlongEdge:(double)a6 containerSize:(CGSize)a7 containerCornerRadius:(double)a8 transform3D:(CATransform3D *)a9 dropletRadius:(double)a10
{
  v10 = *&a9->m13;
  v16[0] = *&a9->m11;
  v16[1] = v10;
  v11 = *&a9->m23;
  v16[2] = *&a9->m21;
  v16[3] = v11;
  v12 = *&a9->m33;
  v16[4] = *&a9->m31;
  v16[5] = v12;
  v13 = *&a9->m43;
  v16[6] = *&a9->m41;
  v16[7] = v13;
  v14 = sub_249EB08F0(a4, v16, a3.width, a3.height, a5, a6, a7.width, a7.height, a8, a10);

  return v14;
}

@end