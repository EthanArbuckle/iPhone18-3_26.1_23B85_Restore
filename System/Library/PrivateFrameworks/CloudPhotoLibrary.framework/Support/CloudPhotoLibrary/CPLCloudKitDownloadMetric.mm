@interface CPLCloudKitDownloadMetric
- (CPLCloudKitDownloadMetric)init;
- (id)description;
- (void)prepareCKEventMetric:(id)metric;
@end

@implementation CPLCloudKitDownloadMetric

- (CPLCloudKitDownloadMetric)init
{
  v3.receiver = self;
  v3.super_class = CPLCloudKitDownloadMetric;
  return [(CPLCloudKitMetric *)&v3 initWithName:@"resourcesDownload"];
}

- (void)prepareCKEventMetric:(id)metric
{
  requestedItemCount = self->_requestedItemCount;
  metricCopy = metric;
  v6 = [NSNumber numberWithUnsignedInteger:requestedItemCount];
  [metricCopy setObject:v6 forKeyedSubscript:@"requestedCount"];

  v7 = [NSNumber numberWithUnsignedLongLong:self->_expectedSize];
  [metricCopy setObject:v7 forKeyedSubscript:@"expectedSize"];

  v8 = [NSNumber numberWithUnsignedInteger:self->_downloadedItemCount];
  [metricCopy setObject:v8 forKeyedSubscript:@"downloadedCount"];

  v9 = [NSNumber numberWithUnsignedLongLong:self->_downloadedSize];
  [metricCopy setObject:v9 forKeyedSubscript:@"downloadedSize"];

  v10 = [NSNumber numberWithUnsignedInteger:self->_transcodedItemCount];
  [metricCopy setObject:v10 forKeyedSubscript:@"transcodedCount"];
}

- (id)description
{
  if (self->_requestedItemCount)
  {
    if (self->_downloadedItemCount || [(CPLCloudKitMetric *)self result])
    {
      v3 = [NSString alloc];
      identifier = [(CPLCloudKitMetric *)self identifier];
      requestedItemCount = self->_requestedItemCount;
      v6 = [NSByteCountFormatter stringFromByteCount:self->_expectedSize countStyle:3];
      downloadedItemCount = self->_downloadedItemCount;
      v8 = [NSByteCountFormatter stringFromByteCount:self->_downloadedSize countStyle:3];
      resultDescription = [(CPLCloudKitMetric *)self resultDescription];
      v10 = [v3 initWithFormat:@"<%@ (%lu/%@ -> %lu/%@)%@>", identifier, requestedItemCount, v6, downloadedItemCount, v8, resultDescription];
    }

    else
    {
      v12 = [NSString alloc];
      identifier2 = [(CPLCloudKitMetric *)self identifier];
      v14 = self->_requestedItemCount;
      v15 = [NSByteCountFormatter stringFromByteCount:self->_expectedSize countStyle:3];
      v10 = [v12 initWithFormat:@"<%@ (%lu/%@)>", identifier2, v14, v15];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = CPLCloudKitDownloadMetric;
    v10 = [(CPLCloudKitMetric *)&v16 description];
  }

  return v10;
}

@end