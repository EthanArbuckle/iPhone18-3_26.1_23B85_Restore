@interface DetectedPersonData
+ (DetectedPersonData)InvalidPersonData;
- (BOOL)isValid;
- (CGRect)screenRect;
- (DetectedPersonData)initWithMinPosition:(DetectedPersonData *)self maxPosition:(SEL)position screenRect:(CGRect)rect;
- (DetectedPersonData)initWithNormalizedMinX:(double)x maxX:(double)maxX minY:(double)y maxY:(double)maxY depth:(float)depth camera:(id)camera orientation:(int64_t)orientation;
@end

@implementation DetectedPersonData

- (DetectedPersonData)initWithMinPosition:(DetectedPersonData *)self maxPosition:(SEL)position screenRect:(CGRect)rect
{
  v5 = v4;
  v6 = v3;
  height = rect.size.height;
  width = rect.size.width;
  v14 = *&rect.origin.y;
  origin = rect.origin;
  v16.receiver = self;
  v16.super_class = DetectedPersonData;
  v9 = [(DetectedPersonData *)&v16 init];
  v10 = v9;
  if (v9)
  {
    *v9->_minPosition = origin;
    *v9->_maxPosition = v14;
    v11 = vaddq_s32(v14, origin);
    *v9->_position = vshrq_n_s32(vsraq_n_u32(v11, v11, 0x1FuLL), 1uLL);
    v9->_screenRect.origin.x = width;
    v9->_screenRect.origin.y = height;
    v9->_screenRect.size.width = v6;
    v9->_screenRect.size.height = v5;
    v9->_isEnabled = 1;
    face = v9->_face;
    v9->_face = 0;
  }

  return v10;
}

- (DetectedPersonData)initWithNormalizedMinX:(double)x maxX:(double)maxX minY:(double)y maxY:(double)maxY depth:(float)depth camera:(id)camera orientation:(int64_t)orientation
{
  cameraCopy = camera;
  v27.receiver = self;
  v27.super_class = DetectedPersonData;
  v17 = [(DetectedPersonData *)&v27 init];
  if (v17)
  {
    [cameraCopy unprojectPoint:orientation ontoPlaneWithTransform:x orientation:y viewportSize:?];
    v26 = v18;
    [cameraCopy unprojectPoint:orientation ontoPlaneWithTransform:maxX orientation:maxY viewportSize:{*&_PromotedConst, 0.0, -0.0078125, 0.0, 1.0, 1.0}];
    v19 = vdup_n_s32(0x447A0000u);
    v20.i32[3] = HIDWORD(v26);
    *v20.i8 = vcvt_s32_f32(vmul_f32(*&v26, v19));
    v20.i32[2] = (depth * 1000.0);
    *v22.i8 = vcvt_s32_f32(vmul_f32(v21, v19));
    v22.i32[2] = v20.i32[2];
    *v17->_minPosition = v20;
    *v17->_maxPosition = v22;
    v23 = vaddq_s32(v22, v20);
    *v17->_position = vshrq_n_s32(vsraq_n_u32(v23, v23, 0x1FuLL), 1uLL);
    v17->_screenRect.origin.x = x;
    v17->_screenRect.origin.y = y;
    v17->_screenRect.size.width = maxX - x;
    v17->_screenRect.size.height = maxY - y;
    v17->_isEnabled = 1;
    v24 = v17;
  }

  return v17;
}

+ (DetectedPersonData)InvalidPersonData
{
  if (+[DetectedPersonData InvalidPersonData]::onceToken != -1)
  {
    +[DetectedPersonData InvalidPersonData];
  }

  v3 = +[DetectedPersonData InvalidPersonData]::invalidPersonData;

  return v3;
}

uint64_t __39__DetectedPersonData_InvalidPersonData__block_invoke()
{
  v0 = [DetectedPersonData alloc];
  v1 = [(DetectedPersonData *)v0 initWithMinPosition:0.0 maxPosition:0.0 screenRect:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
  v2 = +[DetectedPersonData InvalidPersonData]::invalidPersonData;
  +[DetectedPersonData InvalidPersonData]::invalidPersonData = v1;

  v3 = +[DetectedPersonData InvalidPersonData]::invalidPersonData;

  return [v3 setIsEnabled:0];
}

- (BOOL)isValid
{
  v3 = +[DetectedPersonData InvalidPersonData];
  LOBYTE(self) = v3 != self;

  return self;
}

- (CGRect)screenRect
{
  x = self->_screenRect.origin.x;
  y = self->_screenRect.origin.y;
  width = self->_screenRect.size.width;
  height = self->_screenRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end