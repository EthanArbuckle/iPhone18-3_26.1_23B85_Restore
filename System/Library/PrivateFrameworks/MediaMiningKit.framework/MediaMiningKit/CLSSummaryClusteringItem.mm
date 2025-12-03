@interface CLSSummaryClusteringItem
- (CLSSummaryClusteringItem)initWithCluster:(id)cluster numberOfItemsToElect:(unint64_t)elect;
@end

@implementation CLSSummaryClusteringItem

- (CLSSummaryClusteringItem)initWithCluster:(id)cluster numberOfItemsToElect:(unint64_t)elect
{
  clusterCopy = cluster;
  v11.receiver = self;
  v11.super_class = CLSSummaryClusteringItem;
  v8 = [(CLSSummaryClusteringItem *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cluster, cluster);
    v9->_numberOfItemsToElect = elect;
  }

  return v9;
}

@end