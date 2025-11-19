@interface SGQuickResponsesClassificationModel
+ (id)featurizerWithMethods:(id)a3 bucketSize:(unint64_t)a4 characterNGramRange:(_NSRange)a5 tokenNGramRange:(_NSRange)a6 idVectorLength:(unint64_t)a7 extraIdOptions:(unint64_t)a8 vectorizerStrategy:(unint64_t)a9 vectorNormalization:(int64_t)a10 vocab:(id)a11;
+ (id)newTransformerInstanceForConfig:(id)a3 seed:(unint64_t)a4 useSeed:(BOOL)a5;
+ (id)newTransformerInstanceForLanguage:(id)a3 mode:(unint64_t)a4 plistPath:(id)a5 vocabPath:(id)a6;
+ (id)newTransformerInstanceForLanguage:(id)a3 withDictionary:(id)a4 withVocab:(id)a5 withSeed:(unint64_t)a6 forMode:(unint64_t)a7;
@end

@implementation SGQuickResponsesClassificationModel

+ (id)newTransformerInstanceForConfig:(id)a3 seed:(unint64_t)a4 useSeed:(BOOL)a5
{
  v7 = a3;
  if (!v7)
  {
    v41 = [MEMORY[0x277CCA890] currentHandler];
    [v41 handleFailureInMethod:a2 object:a1 file:@"SGQuickResponsesClassificationModel.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"config"}];
  }

  v8 = [SGModelSource alloc];
  v9 = [v7 sessionDescriptor];
  v53 = [(SGModelSource *)v8 initWithSessionDescriptor:v9 modelClass:objc_opt_class()];

  v49 = [v7 preprocessingMethods];
  v52 = [v7 modelHyperparameters];
  v48 = [v52 vectorLength];
  v51 = [v7 modelHyperparameters];
  v10 = [v51 characterNGramRange];
  v46 = v11;
  v47 = v10;
  v50 = [v7 modelHyperparameters];
  v12 = [v50 tokenNGramRange];
  v44 = v13;
  v45 = v12;
  v14 = [v7 modelHyperparameters];
  v15 = [v14 idVectorLength];
  v16 = [v7 modelHyperparameters];
  v17 = [v16 extraIdOptions];
  v18 = [v7 modelHyperparameters];
  v19 = [v18 vectorizerStrategy];
  v20 = [v7 modelHyperparameters];
  v21 = [v20 vectorNormalization];
  v22 = [v7 vocab];
  v23 = [SGQuickResponsesClassificationModel featurizerWithMethods:v49 bucketSize:v48 characterNGramRange:v47 tokenNGramRange:v46 idVectorLength:v45 extraIdOptions:v44 vectorizerStrategy:v15 vectorNormalization:v17 vocab:v19, v21, v22];

  if ([v7 mode] == 1)
  {
    v24 = 0;
    v25 = 0;
  }

  else
  {
    if (a5)
    {
      v26 = [objc_alloc(MEMORY[0x277D42618]) initWithSeed:a4];
    }

    else
    {
      v26 = objc_opt_new();
    }

    v27 = v26;
    v28 = [v7 preprocessingMethods];
    v29 = [v7 labels];
    v25 = [SGTextLabelTransformer withMethods:v28 withLabelStrings:v29];

    v30 = [SGModelSampler alloc];
    v31 = [v7 classificationParams];
    [v31 positiveSamplingRate];
    v33 = v32;
    v34 = [v7 classificationParams];
    [v34 dynamicLabelSamplingRate];
    v36 = v35;
    v37 = [v7 classificationParams];
    [v37 negativeSamplingRate];
    v24 = [(SGModelSampler *)v30 initWithPositiveRate:v27 dynamicLabelRate:v33 negativeRate:v36 rng:v38];
  }

  v39 = [[SGQuickResponsesTransformerInstance alloc] initWithConfig:v7 featurizer:v23 source:v53 labeler:v25 sampler:v24];

  return v39;
}

+ (id)featurizerWithMethods:(id)a3 bucketSize:(unint64_t)a4 characterNGramRange:(_NSRange)a5 tokenNGramRange:(_NSRange)a6 idVectorLength:(unint64_t)a7 extraIdOptions:(unint64_t)a8 vectorizerStrategy:(unint64_t)a9 vectorNormalization:(int64_t)a10 vocab:(id)a11
{
  length = a6.length;
  location = a6.location;
  v13 = a5.length;
  v14 = a5.location;
  v26[2] = *MEMORY[0x277D85DE8];
  v17 = a11;
  v18 = [SGStringPreprocessingTransformer withMethods:a3];
  v26[0] = v18;
  LOBYTE(v25) = 0;
  LOBYTE(v24) = 0;
  v19 = [MEMORY[0x277D41F28] withBucketSize:a4 characterNGramRange:v14 tokenNGramRange:v13 shouldNormalizeTokens:location shouldNormalizeCharacters:length localeForNonwordTokens:0 tokenizeNewlines:v24 idVectorLength:0 extraIdOptions:v25 vectorizerStrategy:a7 vectorNormalization:a8 vocab:{a9, a10, v17}];

  v26[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v21 = [SGPipelineTransformer withTransformers:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)newTransformerInstanceForLanguage:(id)a3 withDictionary:(id)a4 withVocab:(id)a5 withSeed:(unint64_t)a6 forMode:(unint64_t)a7
{
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[SGQuickResponsesConfig alloc] initWithLanguage:v13 mode:a7 dictionary:v12 vocab:v11];

  if (v14)
  {
    v15 = [SGQuickResponsesClassificationModel newTransformerInstanceForConfig:v14 seed:a6 useSeed:1];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)newTransformerInstanceForLanguage:(id)a3 mode:(unint64_t)a4 plistPath:(id)a5 vocabPath:(id)a6
{
  v6 = [SGQuickResponsesConfig configWithLanguage:a3 mode:a4 plistPath:a5 vocabPath:a6];
  if (v6)
  {
    v7 = [SGQuickResponsesClassificationModel newTransformerInstanceForConfig:v6 seed:0 useSeed:0];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end