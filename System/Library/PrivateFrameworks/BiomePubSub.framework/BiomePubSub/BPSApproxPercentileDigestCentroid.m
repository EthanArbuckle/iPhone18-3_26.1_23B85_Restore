@interface BPSApproxPercentileDigestCentroid
- (BOOL)isEqual:(id)a3;
- (BPSApproxPercentileDigestCentroid)initWithMeanAndWeight:(float)a3 weight:(unsigned int)a4;
@end

@implementation BPSApproxPercentileDigestCentroid

- (BPSApproxPercentileDigestCentroid)initWithMeanAndWeight:(float)a3 weight:(unsigned int)a4
{
  v7.receiver = self;
  v7.super_class = BPSApproxPercentileDigestCentroid;
  result = [(BPSApproxPercentileDigestCentroid *)&v7 init];
  if (result)
  {
    result->_mean = a3;
    result->_weight = a4;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    [(BPSApproxPercentileDigestCentroid *)self mean];
    v7 = v6;
    [v5 mean];
    v9 = v8;
    v10 = [(BPSApproxPercentileDigestCentroid *)self weight];
    v11 = [v5 weight];

    v13 = v10 == v11 && v7 == v9;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end