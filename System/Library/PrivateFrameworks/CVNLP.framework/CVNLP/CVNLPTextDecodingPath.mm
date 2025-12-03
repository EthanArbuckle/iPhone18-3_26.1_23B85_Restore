@interface CVNLPTextDecodingPath
+ (id)defaultPathScoringFunction;
+ (id)defaultPathScoringFunctionForLanguageResourceBundle:(id)bundle;
+ (id)defaultPathScoringFunctionForLanguageResourceBundle:(id)bundle pruneProblematicMixedScriptWordPaths:(BOOL)paths;
+ (id)defaultPathScoringFunctionPruneProblematicMixedScriptWordPaths:(BOOL)paths;
- (CVNLPTextDecodingPath)init;
- (CVNLPTextDecodingPath)initWithCharacterLanguageModelLogProbability:(double)probability wordLanguageModelLogProbability:(double)logProbability lexiconScore:(double)score hasProblematicMixedScriptWords:(BOOL)words string:(id)string;
@end

@implementation CVNLPTextDecodingPath

- (CVNLPTextDecodingPath)init
{
  v5.receiver = self;
  v5.super_class = CVNLPTextDecodingPath;
  result = [(CVNLPTextDecodingPath *)&v5 init];
  if (result)
  {
    result->_hasProblematicMixedScriptWords = 0;
    *&result->_modelLogProbability = 0u;
    *&result->_wordLanguageModelLogProbability = 0u;
    *&result->_characterCount = 0u;
    string = result->_string;
    result->_tokenCount = 0;
    result->_string = &stru_1F554FF38;
    v4 = result;

    return v4;
  }

  return result;
}

- (CVNLPTextDecodingPath)initWithCharacterLanguageModelLogProbability:(double)probability wordLanguageModelLogProbability:(double)logProbability lexiconScore:(double)score hasProblematicMixedScriptWords:(BOOL)words string:(id)string
{
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = CVNLPTextDecodingPath;
  v14 = [(CVNLPTextDecodingPath *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_characterLanguageModelLogProbability = probability;
    v14->_wordLanguageModelLogProbability = logProbability;
    v14->_lexiconScore = score;
    v14->_hasProblematicMixedScriptWords = words;
    objc_storeStrong(&v14->_string, string);
  }

  return v15;
}

+ (id)defaultPathScoringFunctionForLanguageResourceBundle:(id)bundle
{
  bundleCopy = bundle;
  v4 = objc_opt_class();
  v6 = objc_msgSend_defaultPathScoringFunctionForLanguageResourceBundle_pruneProblematicMixedScriptWordPaths_(v4, v5, bundleCopy, 0);

  return v6;
}

+ (id)defaultPathScoringFunctionForLanguageResourceBundle:(id)bundle pruneProblematicMixedScriptWordPaths:(BOOL)paths
{
  bundleCopy = bundle;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1D9DB0448;
  v13[3] = &unk_1E858E210;
  pathsCopy = paths;
  v14 = bundleCopy;
  v6 = bundleCopy;
  v7 = MEMORY[0x1DA741A60](v13);
  v11 = MEMORY[0x1DA741A60](v7, v8, v9, v10);

  return v11;
}

+ (id)defaultPathScoringFunction
{
  v2 = objc_opt_class();

  return MEMORY[0x1EEE66B58](v2, sel_defaultPathScoringFunctionPruneProblematicMixedScriptWordPaths_, 0, v3);
}

+ (id)defaultPathScoringFunctionPruneProblematicMixedScriptWordPaths:(BOOL)paths
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1D9DB0668;
  v6[3] = &unk_1E858E230;
  pathsCopy = paths;
  v3 = MEMORY[0x1DA741A60](v6, a2);
  v4 = MEMORY[0x1DA741A60]();

  return v4;
}

@end