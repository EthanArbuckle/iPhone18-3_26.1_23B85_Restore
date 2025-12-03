@interface BPSApproxPercentileDigestCentroid
- (BOOL)isEqual:(id)equal;
- (BPSApproxPercentileDigestCentroid)initWithMeanAndWeight:(float)weight weight:(unsigned int)a4;
@end

@implementation BPSApproxPercentileDigestCentroid

- (BPSApproxPercentileDigestCentroid)initWithMeanAndWeight:(float)weight weight:(unsigned int)a4
{
  v7.receiver = self;
  v7.super_class = BPSApproxPercentileDigestCentroid;
  result = [(BPSApproxPercentileDigestCentroid *)&v7 init];
  if (result)
  {
    result->_mean = weight;
    result->_weight = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    [(BPSApproxPercentileDigestCentroid *)self mean];
    v7 = v6;
    [v5 mean];
    v9 = v8;
    weight = [(BPSApproxPercentileDigestCentroid *)self weight];
    weight2 = [v5 weight];

    v13 = weight == weight2 && v7 == v9;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end