@interface VCPClusteringAccuracyMeasures
- (VCPClusteringAccuracyMeasures)init;
- (void)addClusterPrecision:(float)precision forPersonID:(id)d personFaceCount:(unint64_t)count validFaceCount:(unint64_t)faceCount identitySize:(unint64_t)size;
- (void)addIdentityRecallExcludeMissDetection:(float)detection forPersonID:(id)d personFaceCount:(unint64_t)count identitySize:(unint64_t)size;
- (void)addIdentityRecallToGroundTruth:(float)truth forPersonID:(id)d personFaceCount:(unint64_t)count identitySize:(unint64_t)size;
@end

@implementation VCPClusteringAccuracyMeasures

- (VCPClusteringAccuracyMeasures)init
{
  v10.receiver = self;
  v10.super_class = VCPClusteringAccuracyMeasures;
  v2 = [(VCPClusteringAccuracyMeasures *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    precisionPerCluster = v2->_precisionPerCluster;
    v2->_precisionPerCluster = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recallPerPersonToGroundTruth = v2->_recallPerPersonToGroundTruth;
    v2->_recallPerPersonToGroundTruth = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    recallPerPersonExcludeMissDetection = v2->_recallPerPersonExcludeMissDetection;
    v2->_recallPerPersonExcludeMissDetection = v7;
  }

  return v2;
}

- (void)addClusterPrecision:(float)precision forPersonID:(id)d personFaceCount:(unint64_t)count validFaceCount:(unint64_t)faceCount identitySize:(unint64_t)size
{
  v21[5] = *MEMORY[0x1E69E9840];
  dCopy = d;
  precisionPerCluster = self->_precisionPerCluster;
  v20[0] = @"precision";
  *&v14 = precision;
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  v21[0] = v15;
  v21[1] = dCopy;
  v20[1] = @"personID";
  v20[2] = @"personFaceCount";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  v21[2] = v16;
  v20[3] = @"validFaceCount";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:faceCount];
  v21[3] = v17;
  v20[4] = @"identitySize";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  v21[4] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:5];
  [(NSMutableArray *)precisionPerCluster addObject:v19];
}

- (void)addIdentityRecallToGroundTruth:(float)truth forPersonID:(id)d personFaceCount:(unint64_t)count identitySize:(unint64_t)size
{
  v18[4] = *MEMORY[0x1E69E9840];
  dCopy = d;
  recallPerPersonToGroundTruth = self->_recallPerPersonToGroundTruth;
  v17[0] = @"recall";
  *&v12 = truth;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v18[0] = v13;
  v18[1] = dCopy;
  v17[1] = @"personID";
  v17[2] = @"personFaceCount";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  v18[2] = v14;
  v17[3] = @"identitySize";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  v18[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  [(NSMutableArray *)recallPerPersonToGroundTruth addObject:v16];
}

- (void)addIdentityRecallExcludeMissDetection:(float)detection forPersonID:(id)d personFaceCount:(unint64_t)count identitySize:(unint64_t)size
{
  v18[4] = *MEMORY[0x1E69E9840];
  dCopy = d;
  recallPerPersonExcludeMissDetection = self->_recallPerPersonExcludeMissDetection;
  v17[0] = @"recall";
  *&v12 = detection;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v18[0] = v13;
  v18[1] = dCopy;
  v17[1] = @"personID";
  v17[2] = @"personFaceCount";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:count];
  v18[2] = v14;
  v17[3] = @"identitySize";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  v18[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  [(NSMutableArray *)recallPerPersonExcludeMissDetection addObject:v16];
}

@end