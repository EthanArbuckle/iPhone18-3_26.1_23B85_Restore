@interface BLAppClusterMapping
- (BLAppClusterMapping)initWithItemID:(id)a3 bundleID:(id)a4 clusterVersionID:(id)a5 dictionary:(id)a6;
- (id)description;
- (void)_updateWithDictionary:(id)a3;
@end

@implementation BLAppClusterMapping

- (BLAppClusterMapping)initWithItemID:(id)a3 bundleID:(id)a4 clusterVersionID:(id)a5 dictionary:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = BLAppClusterMapping;
  v14 = [(BLAppClusterMapping *)&v22 init];
  if (v14)
  {
    v15 = [v11 copy];
    bundleID = v14->_bundleID;
    v14->_bundleID = v15;

    v17 = [v12 copy];
    clusterVersionID = v14->_clusterVersionID;
    v14->_clusterVersionID = v17;

    v19 = [v10 copy];
    itemID = v14->_itemID;
    v14->_itemID = v19;

    [(BLAppClusterMapping *)v14 _updateWithDictionary:v13];
  }

  return v14;
}

- (id)description
{
  v3 = [(BLAppClusterMapping *)self itemID];
  v4 = [(BLAppClusterMapping *)self clusterID];
  v5 = [(BLAppClusterMapping *)self clusterVersionID];
  v6 = [(BLAppClusterMapping *)self foregroundUsageWeight];
  v7 = [(BLAppClusterMapping *)self launchWeight];
  v8 = [NSString stringWithFormat:@"{ itemID: %@ clusterID: %@  clusterVersion: %@ forgroundUsageWeight: %@ launchWeight: %@ }", v3, v4, v5, v6, v7];

  return v8;
}

- (void)_updateWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"clusterId"];
  clusterID = self->_clusterID;
  self->_clusterID = v5;

  v7 = [v4 objectForKeyedSubscript:@"usageDurationWeight"];
  foregroundUsageWeight = self->_foregroundUsageWeight;
  self->_foregroundUsageWeight = v7;

  v9 = [v4 objectForKeyedSubscript:@"launchCountWeight"];

  launchWeight = self->_launchWeight;
  self->_launchWeight = v9;
}

@end