@interface SGMISaliencyModelConfigRule
- (SGMISaliencyModelConfigRule)initWithDictionary:(id)dictionary;
- (SGMISaliencyModelConfigRule)initWithFeatureName:(id)name strictLowerBound:(id)bound strictUpperBound:(id)upperBound output:(id)output;
@end

@implementation SGMISaliencyModelConfigRule

- (SGMISaliencyModelConfigRule)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = SGMISaliencyModelConfigRule;
  v5 = [(SGMISaliencyModelConfigRule *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"feature"];
    v7 = +[SGMIFeature prettyNamesReverseMapping];
    v8 = [v7 objectForKeyedSubscript:v6];
    featureName = v5->_featureName;
    v5->_featureName = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"strictLowerBound"];
    strictLowerBound = v5->_strictLowerBound;
    v5->_strictLowerBound = v10;

    v12 = [dictionaryCopy objectForKeyedSubscript:@"strictUpperBound"];
    strictUpperBound = v5->_strictUpperBound;
    v5->_strictUpperBound = v12;
  }

  return v5;
}

- (SGMISaliencyModelConfigRule)initWithFeatureName:(id)name strictLowerBound:(id)bound strictUpperBound:(id)upperBound output:(id)output
{
  nameCopy = name;
  boundCopy = bound;
  upperBoundCopy = upperBound;
  outputCopy = output;
  v18.receiver = self;
  v18.super_class = SGMISaliencyModelConfigRule;
  v15 = [(SGMISaliencyModelConfigRule *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_featureName, name);
    objc_storeStrong(&v16->_strictLowerBound, bound);
    objc_storeStrong(&v16->_strictUpperBound, upperBound);
    objc_storeStrong(&v16->_output, output);
  }

  return v16;
}

@end