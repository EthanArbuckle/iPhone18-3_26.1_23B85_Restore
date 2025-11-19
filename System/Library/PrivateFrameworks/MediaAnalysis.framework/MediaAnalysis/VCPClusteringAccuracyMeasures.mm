@interface VCPClusteringAccuracyMeasures
- (VCPClusteringAccuracyMeasures)init;
- (void)addClusterPrecision:(float)a3 forPersonID:(id)a4 personFaceCount:(unint64_t)a5 validFaceCount:(unint64_t)a6 identitySize:(unint64_t)a7;
- (void)addIdentityRecallExcludeMissDetection:(float)a3 forPersonID:(id)a4 personFaceCount:(unint64_t)a5 identitySize:(unint64_t)a6;
- (void)addIdentityRecallToGroundTruth:(float)a3 forPersonID:(id)a4 personFaceCount:(unint64_t)a5 identitySize:(unint64_t)a6;
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

- (void)addClusterPrecision:(float)a3 forPersonID:(id)a4 personFaceCount:(unint64_t)a5 validFaceCount:(unint64_t)a6 identitySize:(unint64_t)a7
{
  v21[5] = *MEMORY[0x1E69E9840];
  v12 = a4;
  precisionPerCluster = self->_precisionPerCluster;
  v20[0] = @"precision";
  *&v14 = a3;
  v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  v21[0] = v15;
  v21[1] = v12;
  v20[1] = @"personID";
  v20[2] = @"personFaceCount";
  v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v21[2] = v16;
  v20[3] = @"validFaceCount";
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  v21[3] = v17;
  v20[4] = @"identitySize";
  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
  v21[4] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:5];
  [(NSMutableArray *)precisionPerCluster addObject:v19];
}

- (void)addIdentityRecallToGroundTruth:(float)a3 forPersonID:(id)a4 personFaceCount:(unint64_t)a5 identitySize:(unint64_t)a6
{
  v18[4] = *MEMORY[0x1E69E9840];
  v10 = a4;
  recallPerPersonToGroundTruth = self->_recallPerPersonToGroundTruth;
  v17[0] = @"recall";
  *&v12 = a3;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v18[0] = v13;
  v18[1] = v10;
  v17[1] = @"personID";
  v17[2] = @"personFaceCount";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v18[2] = v14;
  v17[3] = @"identitySize";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  v18[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  [(NSMutableArray *)recallPerPersonToGroundTruth addObject:v16];
}

- (void)addIdentityRecallExcludeMissDetection:(float)a3 forPersonID:(id)a4 personFaceCount:(unint64_t)a5 identitySize:(unint64_t)a6
{
  v18[4] = *MEMORY[0x1E69E9840];
  v10 = a4;
  recallPerPersonExcludeMissDetection = self->_recallPerPersonExcludeMissDetection;
  v17[0] = @"recall";
  *&v12 = a3;
  v13 = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v18[0] = v13;
  v18[1] = v10;
  v17[1] = @"personID";
  v17[2] = @"personFaceCount";
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v18[2] = v14;
  v17[3] = @"identitySize";
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a6];
  v18[3] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:4];
  [(NSMutableArray *)recallPerPersonExcludeMissDetection addObject:v16];
}

@end