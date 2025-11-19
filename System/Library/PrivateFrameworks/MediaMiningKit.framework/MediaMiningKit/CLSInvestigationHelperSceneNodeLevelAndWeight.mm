@interface CLSInvestigationHelperSceneNodeLevelAndWeight
- (CLSInvestigationHelperSceneNodeLevelAndWeight)initWithTaxonomyNode:(id)a3 level:(unint64_t)a4 andWeight:(double)a5;
@end

@implementation CLSInvestigationHelperSceneNodeLevelAndWeight

- (CLSInvestigationHelperSceneNodeLevelAndWeight)initWithTaxonomyNode:(id)a3 level:(unint64_t)a4 andWeight:(double)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = CLSInvestigationHelperSceneNodeLevelAndWeight;
  v10 = [(CLSInvestigationHelperSceneNodeLevelAndWeight *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_taxonomyNode, a3);
    v11->_level = a4;
    v11->_weight = a5;
  }

  return v11;
}

@end