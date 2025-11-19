@interface VCPRTLandmarkDetector
- (id)initFromConfigFile:(id)a3 numStage:(int)a4 numLandmarks:(int)a5 numTreePerStage:(int)a6 depthOfTree:(int)a7 numFeatures:(int)a8;
- (void)calculateFaceRectFromPrevLM:(float *)a3 result:(float *)a4 numOfLandmarks:(int)a5;
- (void)dealloc;
- (void)detectLandmark:(char *)a3 width:(int)a4 height:(int)a5 stride:(int)a6 facerect:(float *)a7 prevResult:(float *)a8 result:(float *)a9;
@end

@implementation VCPRTLandmarkDetector

- (id)initFromConfigFile:(id)a3 numStage:(int)a4 numLandmarks:(int)a5 numTreePerStage:(int)a6 depthOfTree:(int)a7 numFeatures:(int)a8
{
  v14 = a3;
  v28.receiver = self;
  v28.super_class = VCPRTLandmarkDetector;
  v15 = [(VCPRTLandmarkDetector *)&v28 init];
  if (v15)
  {
    v16 = operator new(0x58uLL, MEMORY[0x1E69E5398]);
    v18 = v16;
    if (v16)
    {
      v17 = ma::LandmarkDetector::LandmarkDetector(v16);
    }

    v15->_internalLandmarkDetector = v18;
    v19 = [v14 path];
    v20 = fopen([v19 UTF8String], "rb");

    internalLandmarkDetector = v15->_internalLandmarkDetector;
    if (internalLandmarkDetector)
    {
      v22 = v20 == 0;
    }

    else
    {
      v22 = 1;
    }

    if (v22)
    {
      v23 = 0;
      v24 = 0;
      if (!v20)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v15->_numOfLandmarks = a5;
      if (ma::LandmarkDetector::Initialize(internalLandmarkDetector, v20, a4, a5, a6, a7, a8))
      {
        v23 = 0;
      }

      else
      {
        v23 = v15;
      }
    }

    fclose(v20);
    v24 = v23;
LABEL_16:
    v25 = v24;
    goto LABEL_17;
  }

  v25 = 0;
LABEL_17:

  return v25;
}

- (void)dealloc
{
  internalLandmarkDetector = self->_internalLandmarkDetector;
  if (internalLandmarkDetector)
  {
    ma::LandmarkDetector::~LandmarkDetector(internalLandmarkDetector);
    MEMORY[0x1CCA95C50]();
  }

  v4.receiver = self;
  v4.super_class = VCPRTLandmarkDetector;
  [(VCPRTLandmarkDetector *)&v4 dealloc];
}

- (void)detectLandmark:(char *)a3 width:(int)a4 height:(int)a5 stride:(int)a6 facerect:(float *)a7 prevResult:(float *)a8 result:(float *)a9
{
  bzero(a9, 8 * self->_numOfLandmarks);
  ma::LandmarkDetector::SetPreviousLandmarks(self->_internalLandmarkDetector, a8);
  internalLandmarkDetector = self->_internalLandmarkDetector;

  ma::LandmarkDetector::DetectLandmarks(internalLandmarkDetector, a3, a4, a5, a6, a7, a9);
}

- (void)calculateFaceRectFromPrevLM:(float *)a3 result:(float *)a4 numOfLandmarks:(int)a5
{
  v6 = vdup_n_s32(0xE0AD78EC);
  v7 = vdup_n_s32(0x60AD78ECu);
  if (a5 >= 1)
  {
    v8 = a5;
    do
    {
      v9 = *a3;
      a3 += 2;
      v5.i32[1] = v9.i32[1];
      v7 = vbsl_s8(vcgt_f32(v7, v9), v9, v7);
      v6 = vbsl_s8(vcgt_f32(v9, v6), v9, v6);
      --v8;
    }

    while (v8);
  }

  v10 = vsub_f32(v6, v7);
  v5.i32[0] = v10.i32[1];
  if (v10.f32[0] >= v10.f32[1])
  {
    *v5.i32 = v10.f32[0];
  }

  *v5.i32 = (*v5.i32 * 1.1) * 0.5;
  *v11.i8 = vadd_f32(v7, vmul_f32(v10, 0x3F0000003F000000));
  v11.i64[1] = v11.i64[0];
  v12 = vrev64q_s32(v11);
  v13 = vdupq_lane_s32(v5, 0);
  v14.i64[0] = vsubq_f32(v12, v13).u64[0];
  v14.i64[1] = vaddq_f32(v12, v13).i64[1];
  *a4 = vrndaq_f32(v14);
}

@end