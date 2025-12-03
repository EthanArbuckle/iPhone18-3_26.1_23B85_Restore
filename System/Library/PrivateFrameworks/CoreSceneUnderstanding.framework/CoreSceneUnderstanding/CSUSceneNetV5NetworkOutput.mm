@interface CSUSceneNetV5NetworkOutput
- (CSUSceneNetV5NetworkOutput)initWithScenePrint:(id)print sceneClassificationLikelihoods:(id)likelihoods aestheticsAttributeScores:(id)scores aestheticsGlobalScores:(id)globalScores detectionScoreHeatMap:(id)map detectionCoordinateOffsetMap:(id)offsetMap saliencyAttentionMap:(id)attentionMap saliencyObjectnessMap:(id)self0 fingerprintEmbedding:(id)self1 entityNetClassificationLikelihoods:(id)self2;
@end

@implementation CSUSceneNetV5NetworkOutput

- (CSUSceneNetV5NetworkOutput)initWithScenePrint:(id)print sceneClassificationLikelihoods:(id)likelihoods aestheticsAttributeScores:(id)scores aestheticsGlobalScores:(id)globalScores detectionScoreHeatMap:(id)map detectionCoordinateOffsetMap:(id)offsetMap saliencyAttentionMap:(id)attentionMap saliencyObjectnessMap:(id)self0 fingerprintEmbedding:(id)self1 entityNetClassificationLikelihoods:(id)self2
{
  printCopy = print;
  obj = likelihoods;
  likelihoodsCopy = likelihoods;
  scoresCopy = scores;
  scoresCopy2 = scores;
  globalScoresCopy = globalScores;
  mapCopy = map;
  offsetMapCopy = offsetMap;
  attentionMapCopy = attentionMap;
  objectnessMapCopy = objectnessMap;
  embeddingCopy = embedding;
  classificationLikelihoodsCopy = classificationLikelihoods;
  v34.receiver = self;
  v34.super_class = CSUSceneNetV5NetworkOutput;
  v21 = [(CSUSceneNetV5NetworkOutput *)&v34 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_scenePrint, print);
    objc_storeStrong(&v22->_sceneClassificationLikelihoods, obj);
    objc_storeStrong(&v22->_aestheticsAttributeScores, scoresCopy);
    objc_storeStrong(&v22->_aestheticsGlobalScores, globalScores);
    objc_storeStrong(&v22->_detectionScoreHeatMap, map);
    objc_storeStrong(&v22->_detectionCoordinateOffsetMap, offsetMap);
    objc_storeStrong(&v22->_saliencyAttentionMap, attentionMap);
    objc_storeStrong(&v22->_saliencyObjectnessMap, objectnessMap);
    objc_storeStrong(&v22->_fingerprintEmbedding, embedding);
    objc_storeStrong(&v22->_entityNetClassificationLikelihoods, classificationLikelihoods);
  }

  return v22;
}

@end