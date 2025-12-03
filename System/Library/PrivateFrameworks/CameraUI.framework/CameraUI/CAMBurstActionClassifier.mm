@interface CAMBurstActionClassifier
- (BOOL)isBurstAction;
- (CAMBurstActionClassifier)init;
- (CAMBurstActionClassifier)initWithVersion:(int)version;
- (double)computeKernelValueWithSupportVector:(const CAMBurstSupportVector *)vector;
- (float)predictResult;
- (void)scaleVector;
@end

@implementation CAMBurstActionClassifier

- (CAMBurstActionClassifier)init
{
  v3.receiver = self;
  v3.super_class = CAMBurstActionClassifier;
  result = [(CAMBurstActionClassifier *)&v3 init];
  if (result)
  {
    *&result->testMinRegionOfInterestSize = 2139095039;
    *&result->testAverageCameraTravelDistance = 0u;
    *&result->testBeginningVsEndAEMatrixVsAverageAdjacentAEMatrix = 0u;
    result->hasBeenScaled = 0;
  }

  return result;
}

- (CAMBurstActionClassifier)initWithVersion:(int)version
{
  v8.receiver = self;
  v8.super_class = CAMBurstActionClassifier;
  v4 = [(CAMBurstActionClassifier *)&v8 init];
  v5 = v4;
  if (v4)
  {
    if (version <= 1)
    {
      v6 = &g_svmParameters_v1;
    }

    else
    {
      v6 = &g_svmParameters_v2;
    }

    [(CAMBurstActionClassifier *)v4 setSvmParameters:v6];
  }

  return v5;
}

- (void)scaleVector
{
  if (!self->hasBeenScaled)
  {
    svmParameters = [(CAMBurstActionClassifier *)self svmParameters];
    v4 = log((self->testAverageCameraTravelDistance + 1.0));
    v5 = 0;
    *&v4 = v4;
    self->testAverageCameraTravelDistance = *&v4;
    self->testVector[0] = *&v4;
    v6 = (self->testMeanPeakRegistrationError / self->testMaxPeakRegistrationError);
    self->testVector[1] = self->testMaxRegistrationErrorIntegral;
    self->testVector[2] = v6;
    v7 = *&self->testMaxInnerDistance;
    *&self->testVector[3] = vcvtq_f64_f32(*&self->testBeginningVsEndAEMatrixVsAverageAdjacentAEMatrix);
    *&self->testVector[5] = vcvtq_f64_f32(v7);
    p_var1 = &svmParameters->var0[0].var1;
    do
    {
      self->testVector[v5] = (self->testVector[v5] - *p_var1) / *(p_var1 - 1);
      p_var1 += 2;
      ++v5;
    }

    while (v5 != 7);
    BurstLoggingMessage("\tscaled Average Camera Travel Distance = %f\n", self->testVector[0]);
    BurstLoggingMessage("\tscaled Max Registration Error Integral = %f\n", self->testVector[1]);
    BurstLoggingMessage("\tscaled Mean peak registration error / Max peak registration error = %f\n", self->testVector[2]);
    BurstLoggingMessage("\tscaled Beginning vs. End AEMatrix difference vs. Average of Adjacent AE Matrix Differences = %f\n", self->testVector[3]);
    BurstLoggingMessage("\tscaled In-out ratio = %f\n", self->testVector[4]);
    BurstLoggingMessage("\tscaled Max inner distance = %f\n", self->testVector[5]);
    BurstLoggingMessage("\tscaled Average registration error skewness = %f\n", self->testVector[6]);
    self->hasBeenScaled = 1;
  }
}

- (double)computeKernelValueWithSupportVector:(const CAMBurstSupportVector *)vector
{
  result = 0.0;
  if (self->hasBeenScaled)
  {
    v4 = 0;
    v5 = 0.0;
    do
    {
      v6 = vector->var1[v4] - self->testVector[v4];
      v5 = v5 + v6 * v6;
      ++v4;
    }

    while (v4 != 7);
    var0 = vector->var0;
    return var0 * exp(-([(CAMBurstActionClassifier *)self svmParameters][56] * v5));
  }

  return result;
}

- (float)predictResult
{
  v3 = 0;
  v4 = 0.0 - [(CAMBurstActionClassifier *)self svmParameters][64];
  do
  {
    [(CAMBurstActionClassifier *)self computeKernelValueWithSupportVector:[(CAMBurstActionClassifier *)self svmParameters][80] + v3];
    v4 = v4 + v5;
    v3 += 64;
  }

  while (v3 != 2880);
  for (i = 0; i != 2816; i += 64)
  {
    [(CAMBurstActionClassifier *)self computeKernelValueWithSupportVector:[(CAMBurstActionClassifier *)self svmParameters][88] + i];
    v4 = v4 + v7;
  }

  return v4;
}

- (BOOL)isBurstAction
{
  testMaxPeakRegistrationError = self->testMaxPeakRegistrationError;
  if (testMaxPeakRegistrationError >= 7250.0)
  {
    BurstLoggingMessage("Non-Linear SVM Action classifier called with:\n", a2);
    BurstLoggingMessage("\tAverage Camera Travel Distance = %f\n", self->testAverageCameraTravelDistance);
    BurstLoggingMessage("\tMax Registration Error Integral = %f\n", self->testMaxRegistrationErrorIntegral);
    BurstLoggingMessage("\tMean peak registration error / Max peak registration error = %f\n", (self->testMeanPeakRegistrationError / self->testMaxPeakRegistrationError));
    BurstLoggingMessage("\tBeginning vs. End AEMatrix difference vs. Average of Adjacent AE Matrix Differences = %f\n", self->testBeginningVsEndAEMatrixVsAverageAdjacentAEMatrix);
    BurstLoggingMessage("\tIn-out ratio = %f\n", self->testInOutRatio);
    BurstLoggingMessage("\tMax inner distance = %f\n", self->testMaxInnerDistance);
    BurstLoggingMessage("\tAverage registration error skewness = %f\n", self->testAverageRegistrationErrorSkewness);
    [(CAMBurstActionClassifier *)self scaleVector];
    [(CAMBurstActionClassifier *)self predictResult];
    v3 = v5 >= 0.0;
    v6 = "NON-ACTION";
    if (v5 >= 0.0)
    {
      v6 = "ACTION";
    }

    BurstLoggingMessage("PREDICTION: --- %s --- (value = %f)\n", v6, v5);
  }

  else
  {
    BurstLoggingMessage("Sequence classified as NON-ACTION due to complete lack of local motion (%f, threshold %f)\n", testMaxPeakRegistrationError, 7250.0);
    return 0;
  }

  return v3;
}

@end