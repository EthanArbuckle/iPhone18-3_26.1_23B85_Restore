@interface SGMISaliencyModelConfigRule
- (SGMISaliencyModelConfigRule)initWithDictionary:(id)a3;
- (SGMISaliencyModelConfigRule)initWithFeatureName:(id)a3 strictLowerBound:(id)a4 strictUpperBound:(id)a5 output:(id)a6;
@end

@implementation SGMISaliencyModelConfigRule

- (SGMISaliencyModelConfigRule)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SGMISaliencyModelConfigRule;
  v5 = [(SGMISaliencyModelConfigRule *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"feature"];
    v7 = +[SGMIFeature prettyNamesReverseMapping];
    v8 = [v7 objectForKeyedSubscript:v6];
    featureName = v5->_featureName;
    v5->_featureName = v8;

    v10 = [v4 objectForKeyedSubscript:@"strictLowerBound"];
    strictLowerBound = v5->_strictLowerBound;
    v5->_strictLowerBound = v10;

    v12 = [v4 objectForKeyedSubscript:@"strictUpperBound"];
    strictUpperBound = v5->_strictUpperBound;
    v5->_strictUpperBound = v12;
  }

  return v5;
}

- (SGMISaliencyModelConfigRule)initWithFeatureName:(id)a3 strictLowerBound:(id)a4 strictUpperBound:(id)a5 output:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = SGMISaliencyModelConfigRule;
  v15 = [(SGMISaliencyModelConfigRule *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_featureName, a3);
    objc_storeStrong(&v16->_strictLowerBound, a4);
    objc_storeStrong(&v16->_strictUpperBound, a5);
    objc_storeStrong(&v16->_output, a6);
  }

  return v16;
}

@end