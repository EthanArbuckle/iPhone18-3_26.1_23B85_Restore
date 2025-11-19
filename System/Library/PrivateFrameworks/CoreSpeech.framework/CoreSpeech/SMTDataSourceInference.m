@interface SMTDataSourceInference
- (SMTDataSourceInference)initWithLength:(unint64_t)a3 contextKey:(id)a4 targetKey:(id)a5;
- (id).cxx_construct;
- (id)dataPointAtIndex:(unint64_t)a3 error:(id *)a4;
- (void)setVectorsWithProcessor:(id)a3;
@end

@implementation SMTDataSourceInference

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

- (void)setVectorsWithProcessor:(id)a3
{
  v14 = a3;
  v4 = [v14 textSequence];
  v5 = [v4 firstObject];
  v6 = [v5 sequence];

  v7 = [v14 textSequence];
  v8 = [v7 firstObject];
  v9 = [v8 target];

  for (i = 0; i < [v6 count]; ++i)
  {
    v11 = [v6 objectAtIndexedSubscript:i];
    [v11 floatValue];
    *(*self->_contextData.__begin_ + 4 * i) = v12;
  }

  [v9 floatValue];
  **self->_targetData.__begin_ = v13;
}

- (id)dataPointAtIndex:(unint64_t)a3 error:(id *)a4
{
  v5 = objc_opt_new();
  v21[0] = &off_10003B1C8;
  v21[1] = &off_10003B1C8;
  v21[2] = &off_10003B1C8;
  v21[3] = &off_10003B1C8;
  v6 = [NSNumber numberWithUnsignedInteger:self->_sequenceLength];
  v21[4] = v6;
  v19 = [NSArray arrayWithObjects:v21 count:5];

  v7 = [NSNumber numberWithUnsignedInteger:self->_sequenceLength];
  v20[0] = v7;
  v8 = [NSNumber numberWithUnsignedInteger:self->_sequenceLength];
  v20[1] = v8;
  v9 = [NSNumber numberWithUnsignedInteger:self->_sequenceLength];
  v20[2] = v9;
  v10 = [NSNumber numberWithUnsignedInteger:self->_sequenceLength];
  v20[3] = v10;
  v20[4] = &off_10003B1C8;
  v11 = [NSArray arrayWithObjects:v20 count:5];

  v12 = [[ETDataTensor alloc] initWithData:*self->_contextData.__begin_ type:2 shape:v19 strides:v11];
  [v5 setObject:v12 forKeyedSubscript:self->_contextKey];

  v13 = [NSNumber numberWithUnsignedInteger:self->_sequenceLength];
  v14 = [v5 objectForKeyedSubscript:self->_contextKey];
  [v14 setMaxNumberOfElements:v13];

  v15 = [[ETDataTensor alloc] initWithData:*self->_targetData.__begin_ type:2 shape:&off_10003B2A8 strides:&off_10003B2C0];
  [v5 setObject:v15 forKeyedSubscript:self->_targetKey];

  v16 = [NSNumber numberWithUnsignedInteger:self->_sequenceLength];
  v17 = [v5 objectForKeyedSubscript:self->_targetKey];
  [v17 setMaxNumberOfElements:v16];

  return v5;
}

- (SMTDataSourceInference)initWithLength:(unint64_t)a3 contextKey:(id)a4 targetKey:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = SMTDataSourceInference;
  v11 = [(SMTDataSourceInference *)&v14 init];
  v12 = v11;
  if (v11)
  {
    sub_10001EAD0(v11 + 1, 1uLL);
    sub_10001EAD0(v12 + 4, 1uLL);
    sub_10001ECA8(*(v12 + 1), a3);
    sub_10001ECA8(*(v12 + 4), a3);
    *(v12 + 7) = a3;
    objc_storeStrong(v12 + 8, a4);
    objc_storeStrong(v12 + 9, a5);
  }

  return v12;
}

@end