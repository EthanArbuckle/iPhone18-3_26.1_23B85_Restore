@interface CSUSceneNetV5NetworkOutput
- (CSUSceneNetV5NetworkOutput)initWithScenePrint:(id)a3 sceneClassificationLikelihoods:(id)a4 aestheticsAttributeScores:(id)a5 aestheticsGlobalScores:(id)a6 detectionScoreHeatMap:(id)a7 detectionCoordinateOffsetMap:(id)a8 saliencyAttentionMap:(id)a9 saliencyObjectnessMap:(id)a10 fingerprintEmbedding:(id)a11 entityNetClassificationLikelihoods:(id)a12;
@end

@implementation CSUSceneNetV5NetworkOutput

- (CSUSceneNetV5NetworkOutput)initWithScenePrint:(id)a3 sceneClassificationLikelihoods:(id)a4 aestheticsAttributeScores:(id)a5 aestheticsGlobalScores:(id)a6 detectionScoreHeatMap:(id)a7 detectionCoordinateOffsetMap:(id)a8 saliencyAttentionMap:(id)a9 saliencyObjectnessMap:(id)a10 fingerprintEmbedding:(id)a11 entityNetClassificationLikelihoods:(id)a12
{
  v33 = a3;
  obj = a4;
  v32 = a4;
  v25 = a5;
  v31 = a5;
  v30 = a6;
  v29 = a7;
  v28 = a8;
  v27 = a9;
  v18 = a10;
  v19 = a11;
  v20 = a12;
  v34.receiver = self;
  v34.super_class = CSUSceneNetV5NetworkOutput;
  v21 = [(CSUSceneNetV5NetworkOutput *)&v34 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_scenePrint, a3);
    objc_storeStrong(&v22->_sceneClassificationLikelihoods, obj);
    objc_storeStrong(&v22->_aestheticsAttributeScores, v25);
    objc_storeStrong(&v22->_aestheticsGlobalScores, a6);
    objc_storeStrong(&v22->_detectionScoreHeatMap, a7);
    objc_storeStrong(&v22->_detectionCoordinateOffsetMap, a8);
    objc_storeStrong(&v22->_saliencyAttentionMap, a9);
    objc_storeStrong(&v22->_saliencyObjectnessMap, a10);
    objc_storeStrong(&v22->_fingerprintEmbedding, a11);
    objc_storeStrong(&v22->_entityNetClassificationLikelihoods, a12);
  }

  return v22;
}

@end