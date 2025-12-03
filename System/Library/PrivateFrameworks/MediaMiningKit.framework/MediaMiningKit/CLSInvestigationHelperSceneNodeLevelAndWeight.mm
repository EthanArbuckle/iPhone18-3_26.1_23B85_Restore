@interface CLSInvestigationHelperSceneNodeLevelAndWeight
- (CLSInvestigationHelperSceneNodeLevelAndWeight)initWithTaxonomyNode:(id)node level:(unint64_t)level andWeight:(double)weight;
@end

@implementation CLSInvestigationHelperSceneNodeLevelAndWeight

- (CLSInvestigationHelperSceneNodeLevelAndWeight)initWithTaxonomyNode:(id)node level:(unint64_t)level andWeight:(double)weight
{
  nodeCopy = node;
  v13.receiver = self;
  v13.super_class = CLSInvestigationHelperSceneNodeLevelAndWeight;
  v10 = [(CLSInvestigationHelperSceneNodeLevelAndWeight *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_taxonomyNode, node);
    v11->_level = level;
    v11->_weight = weight;
  }

  return v11;
}

@end