@interface CPLCloudKitUploadMetric
- (CPLCloudKitUploadMetric)init;
- (id)description;
- (void)prepareCKEventMetric:(id)metric;
@end

@implementation CPLCloudKitUploadMetric

- (CPLCloudKitUploadMetric)init
{
  v3.receiver = self;
  v3.super_class = CPLCloudKitUploadMetric;
  return [(CPLCloudKitMetric *)&v3 initWithName:@"batchUpload"];
}

- (void)prepareCKEventMetric:(id)metric
{
  itemCount = self->_itemCount;
  metricCopy = metric;
  v6 = [NSNumber numberWithUnsignedInteger:itemCount];
  [metricCopy setObject:v6 forKeyedSubscript:@"itemCount"];

  v7 = [NSNumber numberWithUnsignedLongLong:self->_uploadSize];
  [metricCopy setObject:v7 forKeyedSubscript:@"uploadsize"];

  v8 = [NSNumber numberWithUnsignedLongLong:self->_referencedResourcesCount];
  [metricCopy setObject:v8 forKeyedSubscript:@"referencedResourcesCount"];

  v9 = [NSNumber numberWithUnsignedLongLong:self->_referencedResourcesSize];
  [metricCopy setObject:v9 forKeyedSubscript:@"referencedSize"];

  v10 = [NSNumber numberWithUnsignedInteger:self->_otherItemCount];
  [metricCopy setObject:v10 forKeyedSubscript:@"otherCount"];

  v11 = [NSNumber numberWithUnsignedLongLong:self->_uploadedSize];
  [metricCopy setObject:v11 forKeyedSubscript:@"uploadedSize"];
}

- (id)description
{
  if (self->_itemCount || self->_otherItemCount)
  {
    if (self->_uploadedSize || [(CPLCloudKitMetric *)self result])
    {
      v3 = [NSString alloc];
      identifier = [(CPLCloudKitMetric *)self identifier];
      itemCount = self->_itemCount;
      otherItemCount = self->_otherItemCount;
      v7 = [NSByteCountFormatter stringFromByteCount:self->_uploadSize countStyle:3];
      v8 = [NSByteCountFormatter stringFromByteCount:self->_uploadedSize countStyle:3];
      resultDescription = [(CPLCloudKitMetric *)self resultDescription];
      v10 = [v3 initWithFormat:@"<%@ (%lu/%lu/%@ -> %@)%@>", identifier, itemCount, otherItemCount, v7, v8, resultDescription];
    }

    else
    {
      v12 = [NSString alloc];
      identifier2 = [(CPLCloudKitMetric *)self identifier];
      v14 = self->_itemCount;
      v15 = self->_otherItemCount;
      v16 = [NSByteCountFormatter stringFromByteCount:self->_uploadSize countStyle:3];
      v10 = [v12 initWithFormat:@"<%@ (%lu/%lu/%@)>", identifier2, v14, v15, v16];
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = CPLCloudKitUploadMetric;
    v10 = [(CPLCloudKitMetric *)&v17 description];
  }

  return v10;
}

@end