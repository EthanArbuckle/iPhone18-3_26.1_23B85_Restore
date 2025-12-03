@interface VCPCompactResult
- (VCPCompactResult)initWithTimerange:(id *)timerange andScore:(float)score;
@end

@implementation VCPCompactResult

- (VCPCompactResult)initWithTimerange:(id *)timerange andScore:(float)score
{
  v12.receiver = self;
  v12.super_class = VCPCompactResult;
  v6 = [(VCPCompactResult *)&v12 init];
  v7 = v6;
  if (v6)
  {
    v8 = *&timerange->var0.var0;
    v9 = *&timerange->var0.var3;
    *(v6 + 44) = *&timerange->var1.var1;
    *(v6 + 28) = v9;
    *(v6 + 12) = v8;
    *(v6 + 2) = score;
    v10 = v6;
  }

  return v7;
}

@end