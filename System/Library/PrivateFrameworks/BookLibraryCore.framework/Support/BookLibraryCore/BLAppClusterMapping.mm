@interface BLAppClusterMapping
- (BLAppClusterMapping)initWithItemID:(id)d bundleID:(id)iD clusterVersionID:(id)versionID dictionary:(id)dictionary;
- (id)description;
- (void)_updateWithDictionary:(id)dictionary;
@end

@implementation BLAppClusterMapping

- (BLAppClusterMapping)initWithItemID:(id)d bundleID:(id)iD clusterVersionID:(id)versionID dictionary:(id)dictionary
{
  dCopy = d;
  iDCopy = iD;
  versionIDCopy = versionID;
  dictionaryCopy = dictionary;
  v22.receiver = self;
  v22.super_class = BLAppClusterMapping;
  v14 = [(BLAppClusterMapping *)&v22 init];
  if (v14)
  {
    v15 = [iDCopy copy];
    bundleID = v14->_bundleID;
    v14->_bundleID = v15;

    v17 = [versionIDCopy copy];
    clusterVersionID = v14->_clusterVersionID;
    v14->_clusterVersionID = v17;

    v19 = [dCopy copy];
    itemID = v14->_itemID;
    v14->_itemID = v19;

    [(BLAppClusterMapping *)v14 _updateWithDictionary:dictionaryCopy];
  }

  return v14;
}

- (id)description
{
  itemID = [(BLAppClusterMapping *)self itemID];
  clusterID = [(BLAppClusterMapping *)self clusterID];
  clusterVersionID = [(BLAppClusterMapping *)self clusterVersionID];
  foregroundUsageWeight = [(BLAppClusterMapping *)self foregroundUsageWeight];
  launchWeight = [(BLAppClusterMapping *)self launchWeight];
  v8 = [NSString stringWithFormat:@"{ itemID: %@ clusterID: %@  clusterVersion: %@ forgroundUsageWeight: %@ launchWeight: %@ }", itemID, clusterID, clusterVersionID, foregroundUsageWeight, launchWeight];

  return v8;
}

- (void)_updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"clusterId"];
  clusterID = self->_clusterID;
  self->_clusterID = v5;

  v7 = [dictionaryCopy objectForKeyedSubscript:@"usageDurationWeight"];
  foregroundUsageWeight = self->_foregroundUsageWeight;
  self->_foregroundUsageWeight = v7;

  v9 = [dictionaryCopy objectForKeyedSubscript:@"launchCountWeight"];

  launchWeight = self->_launchWeight;
  self->_launchWeight = v9;
}

@end