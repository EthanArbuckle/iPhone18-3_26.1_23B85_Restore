@interface NetworkQualityExecutionsResult
- (NetworkQualityExecutionsResult)init;
@end

@implementation NetworkQualityExecutionsResult

- (NetworkQualityExecutionsResult)init
{
  v8.receiver = self;
  v8.super_class = NetworkQualityExecutionsResult;
  v2 = [(NetworkQualityResult *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    [(NetworkQualityExecutionsResult *)v2 setWorkingLatencyResults:v3];

    v4 = [MEMORY[0x277CBEB38] dictionary];
    [(NetworkQualityExecutionsResult *)v2 setIdleLatencyResults:v4];

    v5 = [MEMORY[0x277CBEB38] dictionary];
    [(NetworkQualityExecutionsResult *)v2 setMutableOtherValues:v5];

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NetworkQualityExecutionsResult *)v2 setMutableURLSessionMetrics:v6];
  }

  return v2;
}

@end