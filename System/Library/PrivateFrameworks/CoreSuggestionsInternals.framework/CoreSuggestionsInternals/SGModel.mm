@interface SGModel
+ (Class)modelClassForObjective:(unint64_t)objective;
+ (id)featurize:(id)featurize;
+ (id)newTransformerInstanceForLanguage:(id)language;
+ (id)trainingFeaturesOf:(id)of inLanguage:(id)language;
+ (id)trainingFeaturesOf:(id)of inLanguage:(id)language withObjective:(unint64_t)objective;
+ (id)transformerInstanceForLanguage:(id)language;
+ (id)transformerInstanceForLanguage:(id)language withObjective:(unint64_t)objective;
- (SGModel)initWithModel:(id)model locale:(id)locale featurizer:(id)featurizer modelSource:(id)source;
- (id)predictForInput:(id)input;
- (id)trainingFeaturesOf:(id)of;
@end

@implementation SGModel

- (id)trainingFeaturesOf:(id)of
{
  ofCopy = of;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = ofCopy;
  }

  else
  {
    v6 = objc_opt_class();
    locale = [(SGModel *)self locale];
    v5 = [v6 trainingFeaturesOf:ofCopy inLanguage:locale];
  }

  return v5;
}

- (id)predictForInput:(id)input
{
  inputCopy = input;
  v6 = [(PMLTransformerProtocol *)self->_featurizer transform:inputCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"[vector isKindOfClass:PMLSparseVector.class]"}];
  }

  v7 = [objc_alloc(MEMORY[0x277D02560]) initWithSource:self->_modelSource vector:v6];
  v8 = objc_opt_class();
  source = [v7 source];
  if (([v8 isEqual:{objc_msgSend(source, "modelClass")}] & 1) == 0)
  {
    __assert_rtn("[SGModel predictForInput:]", "SGModels.m", 83, "[[self class] isEqual:features.source.modelClass]");
  }

  model = self->_model;
  vector = [v7 vector];
  v12 = [(PMLMultiLabelClassifierProtocol *)model predict:vector];

  if (v12)
  {
    i = v12;
  }

  else
  {
    outputDimension = [(PMLMultiLabelClassifierProtocol *)self->_model outputDimension];
    for (i = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:outputDimension]; outputDimension; --outputDimension)
    {
      [i addObject:&unk_284749110];
    }
  }

  return i;
}

- (SGModel)initWithModel:(id)model locale:(id)locale featurizer:(id)featurizer modelSource:(id)source
{
  modelCopy = model;
  localeCopy = locale;
  featurizerCopy = featurizer;
  sourceCopy = source;
  if (modelCopy)
  {
    if (localeCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"model"}];

    if (localeCopy)
    {
LABEL_3:
      if (featurizerCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"featurizer"}];

      if (sourceCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"locale"}];

  if (!featurizerCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (sourceCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"modelSource"}];

LABEL_5:
  v23.receiver = self;
  v23.super_class = SGModel;
  v16 = [(SGModel *)&v23 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_model, model);
    objc_storeStrong(&v17->_locale, locale);
    objc_storeStrong(&v17->_featurizer, featurizer);
    objc_storeStrong(&v17->_modelSource, source);
  }

  return v17;
}

+ (id)featurize:(id)featurize
{
  v19[3] = *MEMORY[0x277D85DE8];
  featurizeCopy = featurize;
  v5 = [featurizeCopy rangeOfString:@"%PHONE%"];
  v7 = [[SGDataDetectorMatch alloc] initWithMatchType:0 range:0 labelRange:0 labelString:0 valueRange:0 valueString:&stru_284703F00, v5, v6, @"%PHONE%"];
  v18[0] = @"INPUT_TEXT";
  v18[1] = @"TARGET_MATCH";
  v19[0] = featurizeCopy;
  v19[1] = v7;
  v18[2] = @"DD_MATCHES";
  v17 = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v19[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

  v10 = [self transformerInstanceForLanguage:@"en"];
  transformer = [v10 transformer];

  transformers = [transformer transformers];
  v13 = [transformer transform:v9 stopAfterTransformerWithIndex:{objc_msgSend(transformers, "count") - 2}];

  v14 = [v13 _pas_componentsJoinedByString:@" "];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (id)newTransformerInstanceForLanguage:(id)language
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:202 description:{@"%@ must implement +newTransformerInstanceForLanguage:", objc_opt_class()}];

  return 0;
}

+ (id)trainingFeaturesOf:(id)of inLanguage:(id)language withObjective:(unint64_t)objective
{
  languageCopy = language;
  ofCopy = of;
  v10 = [objc_msgSend(self modelClassForObjective:{objective), "trainingFeaturesOf:inLanguage:", ofCopy, languageCopy}];

  return v10;
}

+ (id)trainingFeaturesOf:(id)of inLanguage:(id)language
{
  ofCopy = of;
  v7 = [self transformerInstanceForLanguage:language];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 trainingFeaturesOf:ofCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (Class)modelClassForObjective:(unint64_t)objective
{
  if (objective > 3)
  {
    if (objective < 8)
    {
LABEL_5:
      v6 = objc_opt_class();
      goto LABEL_6;
    }
  }

  else if ((objective & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"SGModels.m" lineNumber:178 description:{@"Undefined class for model objective %lu", objective}];

LABEL_6:

  return v6;
}

+ (id)transformerInstanceForLanguage:(id)language withObjective:(unint64_t)objective
{
  languageCopy = language;
  v7 = [objc_msgSend(self modelClassForObjective:{objective), "transformerInstanceForLanguage:", languageCopy}];

  return v7;
}

+ (id)transformerInstanceForLanguage:(id)language
{
  languageCopy = language;
  if (transformerInstanceForLanguage___pasOnceToken789 != -1)
  {
    dispatch_once(&transformerInstanceForLanguage___pasOnceToken789, &__block_literal_global_683);
  }

  v5 = transformerInstanceForLanguage___pasExprOnceResult;
  v6 = objc_autoreleasePoolPush();
  if (languageCopy)
  {
    v7 = languageCopy;
  }

  else
  {
    v7 = &stru_284703F00;
  }

  v8 = NSStringFromClass(self);
  v9 = [(__CFString *)v7 stringByAppendingString:v8];

  objc_autoreleasePoolPop(v6);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __42__SGModel_transformerInstanceForLanguage___block_invoke_56;
  v17 = &unk_27894AE90;
  v20 = &v22;
  v10 = v9;
  v18 = v10;
  selfCopy = self;
  v11 = languageCopy;
  v19 = v11;
  [v5 runWithLockAcquired:&v14];
  result = [v23[5] result];

  _Block_object_dispose(&v22, 8);

  return result;
}

void __42__SGModel_transformerInstanceForLanguage___block_invoke_56(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = objc_alloc(MEMORY[0x277D425E8]);
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __42__SGModel_transformerInstanceForLanguage___block_invoke_2_58;
    v14 = &unk_27894AE68;
    v16 = *(a1 + 56);
    v15 = *(a1 + 40);
    v8 = [v7 initWithBlock:&v11];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    [v3 setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:{*(a1 + 32), v11, v12, v13, v14}];
  }
}

id __42__SGModel_transformerInstanceForLanguage___block_invoke_2_58(uint64_t a1)
{
  v1 = [*(a1 + 40) newTransformerInstanceForLanguage:*(a1 + 32)];

  return v1;
}

void __42__SGModel_transformerInstanceForLanguage___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277D425F8]);
  v2 = objc_opt_new();
  v3 = [v1 initWithGuardedData:v2];

  v4 = MEMORY[0x277D02558];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__SGModel_transformerInstanceForLanguage___block_invoke_2;
  v7[3] = &unk_278954A30;
  v5 = v3;
  v8 = v5;
  [v4 registerOnUpdateBlock:v7];

  v6 = transformerInstanceForLanguage___pasExprOnceResult;
  transformerInstanceForLanguage___pasExprOnceResult = v5;

  objc_autoreleasePoolPop(v0);
}

@end