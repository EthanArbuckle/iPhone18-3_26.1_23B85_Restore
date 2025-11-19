@interface SGMISaliencyModelOutput
- (SGMISaliencyModelOutput)initWithData:(id)a3;
- (double)regularScore;
- (double)salientScore;
@end

@implementation SGMISaliencyModelOutput

- (double)salientScore
{
  v2 = [(MLMultiArray *)self->_data objectForKeyedSubscript:&unk_28474A720];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (double)regularScore
{
  v2 = [(MLMultiArray *)self->_data objectForKeyedSubscript:&unk_28474A708];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (SGMISaliencyModelOutput)initWithData:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SGMISaliencyModelOutput;
  v6 = [(SGMISaliencyModelOutput *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_data, a3);
  }

  return v7;
}

@end