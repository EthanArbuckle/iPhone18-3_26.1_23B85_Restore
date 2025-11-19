@interface HMIMotionDetection
+ (id)firstMotionDetectionInArray:(id)a3 withMode:(unint64_t)a4;
- (BOOL)applyEventTypeAndCheckIfSubBoundingIsStatic:(CGRect)a3 eventClass:(Class)a4 confidence:(float)a5;
- (CGRect)boundingBox;
- (CGSize)size;
- (HMIMotionDetection)initWithBoundingBox:(CGRect)a3 size:(CGSize)a4 motionVectors:(id)a5 motionScore:(float)a6 motionMode:(unint64_t)a7;
- (float)scoreForSubBoundingBox:(CGRect)a3 eventClass:(Class)a4 confidence:(float)a5;
- (id)classMotionScoreMap;
- (id)classPaddingMap;
@end

@implementation HMIMotionDetection

- (HMIMotionDetection)initWithBoundingBox:(CGRect)a3 size:(CGSize)a4 motionVectors:(id)a5 motionScore:(float)a6 motionMode:(unint64_t)a7
{
  height = a4.height;
  width = a4.width;
  v11 = a3.size.height;
  v12 = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v16 = a5;
  v22.receiver = self;
  v22.super_class = HMIMotionDetection;
  v17 = [(HMIMotionDetection *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_boundingBox.origin.x = x;
    v17->_boundingBox.origin.y = y;
    v17->_boundingBox.size.width = v12;
    v17->_boundingBox.size.height = v11;
    v17->_size.width = width;
    v17->_size.height = height;
    v19 = [v16 copy];
    motionVectors = v18->_motionVectors;
    v18->_motionVectors = v19;

    v18->_motionScore = a6;
    v18->_motionMode = a7;
  }

  return v18;
}

+ (id)firstMotionDetectionInArray:(id)a3 withMode:(unint64_t)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__HMIMotionDetection_firstMotionDetectionInArray_withMode___block_invoke;
  v6[3] = &__block_descriptor_40_e28_B16__0__HMIMotionDetection_8l;
  v6[4] = a4;
  v4 = [a3 na_firstObjectPassingTest:v6];

  return v4;
}

- (float)scoreForSubBoundingBox:(CGRect)a3 eventClass:(Class)a4 confidence:(float)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = 0;
  v12 = 0.0;
  while (1)
  {
    v13 = [(HMIMotionDetection *)self motionVectors];
    v14 = [v13 count];

    if (v14 <= v11)
    {
      break;
    }

    v15 = [(HMIMotionDetection *)self motionVectors];
    v16 = [v15 objectAtIndexedSubscript:v11];

    [v16 target];
    v18 = v17;
    v20 = v19;
    v21 = [v16 eventClass] != a4 && objc_msgSend(v16, "eventClass") != 0;
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v26.x = v18;
    v26.y = v20;
    if (!(v21 | !CGRectContainsPoint(v27, v26)))
    {
      [v16 distance];
      v23 = sqrt(v22) + v12;
      v12 = v23;
      *&v23 = a5;
      if (a5 > 0.6)
      {
        [v16 setEventClass:{a4, v23}];
      }
    }

    ++v11;
  }

  return v12 / (height * width + 0.00000011920929);
}

- (BOOL)applyEventTypeAndCheckIfSubBoundingIsStatic:(CGRect)a3 eventClass:(Class)a4 confidence:(float)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12 = [(HMIMotionDetection *)self classMotionScoreMap];
  v13 = [(HMIMotionDetection *)self classPaddingMap];
  v14 = [v13 objectForKeyedSubscript:a4];
  [v14 floatValue];
  v16 = v15;

  v17 = [v12 objectForKeyedSubscript:a4];
  [v17 floatValue];
  v19 = v18;

  [(HMIMotionDetection *)self size];
  [HMIVisionUtilities applyPadding:x withOriginalSize:y padding:width, height, v20, v21, v16, v16];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (objc_opt_class() == a4)
  {
    a4 = objc_opt_class();
  }

  *&v30 = a5;
  [(HMIMotionDetection *)self scoreForSubBoundingBox:a4 eventClass:v23 confidence:v25, v27, v29, v30];
  v32 = v31 < v19;

  return v32;
}

- (id)classMotionScoreMap
{
  if ([HMIMotionDetection classMotionScoreMap]::onceToken != -1)
  {
    [HMIMotionDetection classMotionScoreMap];
  }

  v3 = [HMIMotionDetection classMotionScoreMap]::motionScoreMap;

  return v3;
}

void __41__HMIMotionDetection_classMotionScoreMap__block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v3[0] = &unk_284075B60;
  v2[1] = objc_opt_class();
  v3[1] = &unk_284075B70;
  v2[2] = objc_opt_class();
  v3[2] = &unk_284075B60;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = [HMIMotionDetection classMotionScoreMap]::motionScoreMap;
  [HMIMotionDetection classMotionScoreMap]::motionScoreMap = v0;
}

- (id)classPaddingMap
{
  if ([HMIMotionDetection classPaddingMap]::onceToken != -1)
  {
    [HMIMotionDetection classPaddingMap];
  }

  v3 = [HMIMotionDetection classPaddingMap]::paddingMap;

  return v3;
}

void __37__HMIMotionDetection_classPaddingMap__block_invoke()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v2[0] = objc_opt_class();
  v3[0] = &unk_284075B80;
  v2[1] = objc_opt_class();
  v3[1] = &unk_284075B90;
  v2[2] = objc_opt_class();
  v3[2] = &unk_284075B80;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:3];
  v1 = [HMIMotionDetection classPaddingMap]::paddingMap;
  [HMIMotionDetection classPaddingMap]::paddingMap = v0;
}

- (CGRect)boundingBox
{
  objc_copyStruct(v6, &self->_boundingBox, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end