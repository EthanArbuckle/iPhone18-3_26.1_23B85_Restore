@interface FigIrisAutoTrimmerMotionSample
- ($01BB1521EC52D44A8E7628F5261DCEC8)accel;
- ($01BB1521EC52D44A8E7628F5261DCEC8)attitude;
- ($01BB1521EC52D44A8E7628F5261DCEC8)attitudeRelativeTo:(id)to;
- ($01BB1521EC52D44A8E7628F5261DCEC8)delta;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)originatingFrameTime;
- ($E2C29196C7A5C696474C6955C5A9CE06)gravity;
- (FigIrisAutoTrimmerMotionSample)initWithAttitude:(id *)attitude gravity:(id *)gravity motionTimestamp:(double)timestamp frameTimestamp:(id *)frameTimestamp previousSample:(id)sample;
- (void)dealloc;
- (void)prepareIntermediates:(int64_t)intermediates;
@end

@implementation FigIrisAutoTrimmerMotionSample

- (FigIrisAutoTrimmerMotionSample)initWithAttitude:(id *)attitude gravity:(id *)gravity motionTimestamp:(double)timestamp frameTimestamp:(id *)frameTimestamp previousSample:(id)sample
{
  v26.receiver = self;
  v26.super_class = FigIrisAutoTrimmerMotionSample;
  v12 = [(FigIrisAutoTrimmerMotionSample *)&v26 init];
  v13 = v12;
  if (v12)
  {
    v14 = *&attitude->var0;
    *(v12 + 104) = *&attitude->var2;
    *(v12 + 88) = v14;
    v15 = *&gravity->var0;
    *(v12 + 14) = LODWORD(gravity->var2);
    *(v12 + 6) = v15;
    *(v12 + 2) = timestamp;
    v16 = *&frameTimestamp->var0;
    *(v12 + 76) = frameTimestamp->var3;
    *(v12 + 60) = v16;
    if (sample)
    {
      *(v12 + 15) = FigMotionMultiplyByInverseOfQuaternion(&attitude->var0, sample + 11);
      v13->_delta.x = v17;
      v13->_delta.y = v18;
      v13->_delta.z = v19;
      v13->_accel.w = FigMotionMultiplyByInverseOfQuaternion(&v13->_delta.w, sample + 15);
      v13->_accel.x = v20;
      v13->_accel.y = v21;
      v13->_accel.z = v22;
      [sample timestamp];
      v24 = timestamp - v23;
    }

    else
    {
      *(v12 + 19) = 0x3FF0000000000000;
      *(v12 + 20) = 0;
      *(v12 + 21) = 0;
      *(v12 + 22) = 0;
      *(v12 + 120) = *(v12 + 152);
      *(v12 + 136) = *(v12 + 168);
      v24 = 0.0666666667;
    }

    v13->_deltaPeriod = v24;
  }

  return v13;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)attitudeRelativeTo:(id)to
{
  v3 = FigMotionMultiplyByInverseOfQuaternion(&self->_attitude.w, to + 11);
  result.var3 = v6;
  result.var2 = v5;
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigIrisAutoTrimmerMotionSample;
  [(FigIrisAutoTrimmerMotionSample *)&v3 dealloc];
}

- (void)prepareIntermediates:(int64_t)intermediates
{
  if (!self->_intermediateCalculations)
  {
    self->_intermediateCalculations = [MEMORY[0x1E695DF90] dictionaryWithCapacity:intermediates];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)originatingFrameTime
{
  *&retstr->var0 = *&self[2].var2;
  retstr->var3 = *(&self[3].var0 + 4);
  return self;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)attitude
{
  w = self->_attitude.w;
  x = self->_attitude.x;
  y = self->_attitude.y;
  z = self->_attitude.z;
  result.var3 = z;
  result.var2 = y;
  result.var1 = x;
  result.var0 = w;
  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)delta
{
  w = self->_delta.w;
  x = self->_delta.x;
  y = self->_delta.y;
  z = self->_delta.z;
  result.var3 = z;
  result.var2 = y;
  result.var1 = x;
  result.var0 = w;
  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)accel
{
  w = self->_accel.w;
  x = self->_accel.x;
  y = self->_accel.y;
  z = self->_accel.z;
  result.var3 = z;
  result.var2 = y;
  result.var1 = x;
  result.var0 = w;
  return result;
}

- ($E2C29196C7A5C696474C6955C5A9CE06)gravity
{
  x = self->_gravity.x;
  y = self->_gravity.y;
  z = self->_gravity.z;
  result.var2 = z;
  result.var1 = y;
  result.var0 = x;
  return result;
}

@end