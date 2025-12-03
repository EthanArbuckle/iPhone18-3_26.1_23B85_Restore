@interface SGQuickResponsesClassificationModel
+ (id)featurizerWithMethods:(id)methods bucketSize:(unint64_t)size characterNGramRange:(_NSRange)range tokenNGramRange:(_NSRange)gramRange idVectorLength:(unint64_t)length extraIdOptions:(unint64_t)options vectorizerStrategy:(unint64_t)strategy vectorNormalization:(int64_t)self0 vocab:(id)self1;
+ (id)newTransformerInstanceForConfig:(id)config seed:(unint64_t)seed useSeed:(BOOL)useSeed;
+ (id)newTransformerInstanceForLanguage:(id)language mode:(unint64_t)mode plistPath:(id)path vocabPath:(id)vocabPath;
+ (id)newTransformerInstanceForLanguage:(id)language withDictionary:(id)dictionary withVocab:(id)vocab withSeed:(unint64_t)seed forMode:(unint64_t)mode;
@end

@implementation SGQuickResponsesClassificationModel

+ (id)newTransformerInstanceForConfig:(id)config seed:(unint64_t)seed useSeed:(BOOL)useSeed
{
  configCopy = config;
  if (!configCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGQuickResponsesClassificationModel.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"config"}];
  }

  v8 = [SGModelSource alloc];
  sessionDescriptor = [configCopy sessionDescriptor];
  v53 = [(SGModelSource *)v8 initWithSessionDescriptor:sessionDescriptor modelClass:objc_opt_class()];

  preprocessingMethods = [configCopy preprocessingMethods];
  modelHyperparameters = [configCopy modelHyperparameters];
  vectorLength = [modelHyperparameters vectorLength];
  modelHyperparameters2 = [configCopy modelHyperparameters];
  characterNGramRange = [modelHyperparameters2 characterNGramRange];
  v46 = v11;
  v47 = characterNGramRange;
  modelHyperparameters3 = [configCopy modelHyperparameters];
  tokenNGramRange = [modelHyperparameters3 tokenNGramRange];
  v44 = v13;
  v45 = tokenNGramRange;
  modelHyperparameters4 = [configCopy modelHyperparameters];
  idVectorLength = [modelHyperparameters4 idVectorLength];
  modelHyperparameters5 = [configCopy modelHyperparameters];
  extraIdOptions = [modelHyperparameters5 extraIdOptions];
  modelHyperparameters6 = [configCopy modelHyperparameters];
  vectorizerStrategy = [modelHyperparameters6 vectorizerStrategy];
  modelHyperparameters7 = [configCopy modelHyperparameters];
  vectorNormalization = [modelHyperparameters7 vectorNormalization];
  vocab = [configCopy vocab];
  v23 = [SGQuickResponsesClassificationModel featurizerWithMethods:preprocessingMethods bucketSize:vectorLength characterNGramRange:v47 tokenNGramRange:v46 idVectorLength:v45 extraIdOptions:v44 vectorizerStrategy:idVectorLength vectorNormalization:extraIdOptions vocab:vectorizerStrategy, vectorNormalization, vocab];

  if ([configCopy mode] == 1)
  {
    v24 = 0;
    v25 = 0;
  }

  else
  {
    if (useSeed)
    {
      v26 = [objc_alloc(MEMORY[0x277D42618]) initWithSeed:seed];
    }

    else
    {
      v26 = objc_opt_new();
    }

    v27 = v26;
    preprocessingMethods2 = [configCopy preprocessingMethods];
    labels = [configCopy labels];
    v25 = [SGTextLabelTransformer withMethods:preprocessingMethods2 withLabelStrings:labels];

    v30 = [SGModelSampler alloc];
    classificationParams = [configCopy classificationParams];
    [classificationParams positiveSamplingRate];
    v33 = v32;
    classificationParams2 = [configCopy classificationParams];
    [classificationParams2 dynamicLabelSamplingRate];
    v36 = v35;
    classificationParams3 = [configCopy classificationParams];
    [classificationParams3 negativeSamplingRate];
    v24 = [(SGModelSampler *)v30 initWithPositiveRate:v27 dynamicLabelRate:v33 negativeRate:v36 rng:v38];
  }

  v39 = [[SGQuickResponsesTransformerInstance alloc] initWithConfig:configCopy featurizer:v23 source:v53 labeler:v25 sampler:v24];

  return v39;
}

+ (id)featurizerWithMethods:(id)methods bucketSize:(unint64_t)size characterNGramRange:(_NSRange)range tokenNGramRange:(_NSRange)gramRange idVectorLength:(unint64_t)length extraIdOptions:(unint64_t)options vectorizerStrategy:(unint64_t)strategy vectorNormalization:(int64_t)self0 vocab:(id)self1
{
  length = gramRange.length;
  location = gramRange.location;
  v13 = range.length;
  v14 = range.location;
  v26[2] = *MEMORY[0x277D85DE8];
  vocabCopy = vocab;
  v18 = [SGStringPreprocessingTransformer withMethods:methods];
  v26[0] = v18;
  LOBYTE(v25) = 0;
  LOBYTE(v24) = 0;
  v19 = [MEMORY[0x277D41F28] withBucketSize:size characterNGramRange:v14 tokenNGramRange:v13 shouldNormalizeTokens:location shouldNormalizeCharacters:length localeForNonwordTokens:0 tokenizeNewlines:v24 idVectorLength:0 extraIdOptions:v25 vectorizerStrategy:length vectorNormalization:options vocab:{strategy, normalization, vocabCopy}];

  v26[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v21 = [SGPipelineTransformer withTransformers:v20];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (id)newTransformerInstanceForLanguage:(id)language withDictionary:(id)dictionary withVocab:(id)vocab withSeed:(unint64_t)seed forMode:(unint64_t)mode
{
  vocabCopy = vocab;
  dictionaryCopy = dictionary;
  languageCopy = language;
  v14 = [[SGQuickResponsesConfig alloc] initWithLanguage:languageCopy mode:mode dictionary:dictionaryCopy vocab:vocabCopy];

  if (v14)
  {
    v15 = [SGQuickResponsesClassificationModel newTransformerInstanceForConfig:v14 seed:seed useSeed:1];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)newTransformerInstanceForLanguage:(id)language mode:(unint64_t)mode plistPath:(id)path vocabPath:(id)vocabPath
{
  v6 = [SGQuickResponsesConfig configWithLanguage:language mode:mode plistPath:path vocabPath:vocabPath];
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