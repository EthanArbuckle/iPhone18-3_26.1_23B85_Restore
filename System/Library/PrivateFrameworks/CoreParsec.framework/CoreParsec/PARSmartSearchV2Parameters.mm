@interface PARSmartSearchV2Parameters
- (PARSmartSearchV2Parameters)init;
- (PARSmartSearchV2Parameters)initWithCoder:(id)coder;
- (id)initFromBag:(id)bag;
- (id)initFromEnabled:(BOOL)enabled enableCount:(BOOL)count minCount:(int64_t)minCount;
- (id)initFromEnabled:(BOOL)enabled enableCount:(BOOL)count minCount:(int64_t)minCount zkwMinCount:(int64_t)zkwMinCount;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PARSmartSearchV2Parameters

- (void)encodeWithCoder:(id)coder
{
  enabled = self->_enabled;
  coderCopy = coder;
  [coderCopy encodeBool:enabled forKey:@"_enabled"];
  [coderCopy encodeBool:self->_enableCount forKey:@"_enableCount"];
  [coderCopy encodeDouble:@"_paramA" forKey:self->_paramA];
  [coderCopy encodeDouble:@"_paramB" forKey:self->_paramB];
  [coderCopy encodeDouble:@"_paramC" forKey:self->_paramC];
  [coderCopy encodeDouble:@"_paramK" forKey:self->_paramK];
  [coderCopy encodeDouble:@"_paramM" forKey:self->_paramM];
  [coderCopy encodeDouble:@"_paramQ" forKey:self->_paramQ];
  [coderCopy encodeDouble:@"_paramV" forKey:self->_paramV];
  [coderCopy encodeDouble:@"_windowBucket" forKey:self->_windowBucket];
  [coderCopy encodeInteger:self->_minCount forKey:@"_minCount"];
  [coderCopy encodeInteger:self->_zkwMinCount forKey:@"_zkwMinCount"];
}

- (PARSmartSearchV2Parameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PARSmartSearchV2Parameters *)self init];
  if (v5)
  {
    v5->_enabled = [coderCopy decodeBoolForKey:@"_enabled"];
    v5->_enableCount = [coderCopy decodeBoolForKey:@"_enableCount"];
    [coderCopy decodeDoubleForKey:@"_paramA"];
    v5->_paramA = v6;
    [coderCopy decodeDoubleForKey:@"_paramB"];
    v5->_paramB = v7;
    [coderCopy decodeDoubleForKey:@"_paramC"];
    v5->_paramC = v8;
    [coderCopy decodeDoubleForKey:@"_paramK"];
    v5->_paramK = v9;
    [coderCopy decodeDoubleForKey:@"_paramM"];
    v5->_paramM = v10;
    [coderCopy decodeDoubleForKey:@"_paramQ"];
    v5->_paramQ = v11;
    [coderCopy decodeDoubleForKey:@"_paramV"];
    v5->_paramV = v12;
    [coderCopy decodeDoubleForKey:@"_windowBucket"];
    v5->_windowBucket = v13;
    v5->_minCount = [coderCopy decodeIntegerForKey:@"_minCount"];
    v5->_zkwMinCount = [coderCopy decodeIntegerForKey:@"_zkwMinCount"];
  }

  return v5;
}

- (id)initFromBag:(id)bag
{
  bagCopy = bag;
  v5 = [(PARSmartSearchV2Parameters *)self init];
  if (v5)
  {
    smartSearchV2Parameters = [bagCopy smartSearchV2Parameters];
    v7 = smartSearchV2Parameters;
    if (smartSearchV2Parameters)
    {
      v8 = [smartSearchV2Parameters objectForKeyedSubscript:@"smart_history_score_v2_enabled"];
      v28 = [v7 objectForKeyedSubscript:@"smart_history_score_v2_enable_count"];
      v27 = [v7 objectForKeyedSubscript:@"pqc_score_a"];
      v26 = [v7 objectForKeyedSubscript:@"pqc_score_b"];
      v25 = [v7 objectForKeyedSubscript:@"pqc_score_c"];
      v24 = [v7 objectForKeyedSubscript:@"pqc_score_k"];
      v9 = [v7 objectForKeyedSubscript:@"pqc_score_m"];
      v10 = [v7 objectForKeyedSubscript:@"pqc_score_q"];
      v11 = [v7 objectForKeyedSubscript:@"pqc_score_v"];
      v12 = [v7 objectForKeyedSubscript:@"pqc_window_bucket"];
      v13 = [v7 objectForKeyedSubscript:@"pqc_score_min_count"];
      v14 = [v7 objectForKeyedSubscript:@"pqc_zkw_min_count"];
      if (v8 && [v8 BOOLValue] && v28 && v27 && v26 && v25 && v24 && v9 && v10 && v11 && v12 && v13)
      {
        v5->_enabled = [v8 BOOLValue];
        v5->_enableCount = [v28 BOOLValue];
        [v27 doubleValue];
        v5->_paramA = v15;
        [v26 doubleValue];
        v5->_paramB = v16;
        [v25 doubleValue];
        v5->_paramC = v17;
        [v24 doubleValue];
        v5->_paramK = v18;
        [v9 doubleValue];
        v5->_paramM = v19;
        [v10 doubleValue];
        v5->_paramQ = v20;
        [v11 doubleValue];
        v5->_paramV = v21;
        [v12 doubleValue];
        v5->_windowBucket = v22;
        v5->_minCount = [v13 integerValue];
        v5->_zkwMinCount = [v14 integerValue];
      }
    }
  }

  return v5;
}

- (PARSmartSearchV2Parameters)init
{
  v8.receiver = self;
  v8.super_class = PARSmartSearchV2Parameters;
  result = [(PARSmartSearchV2Parameters *)&v8 init];
  if (result)
  {
    *&result->_enabled = 0;
    __asm { FMOV            V1.2D, #1.0 }

    *&result->_paramA = xmmword_1B1135300;
    *&result->_paramC = _Q1;
    *&result->_paramM = xmmword_1B1135310;
    *&result->_paramV = xmmword_1B1135320;
    result->_minCount = 0;
    result->_zkwMinCount = 0;
  }

  return result;
}

- (id)initFromEnabled:(BOOL)enabled enableCount:(BOOL)count minCount:(int64_t)minCount zkwMinCount:(int64_t)zkwMinCount
{
  result = [(PARSmartSearchV2Parameters *)self init];
  if (result)
  {
    *(result + 8) = enabled;
    *(result + 9) = count;
    *(result + 10) = minCount;
    *(result + 11) = zkwMinCount;
  }

  return result;
}

- (id)initFromEnabled:(BOOL)enabled enableCount:(BOOL)count minCount:(int64_t)minCount
{
  result = [(PARSmartSearchV2Parameters *)self init];
  if (result)
  {
    *(result + 8) = enabled;
    *(result + 9) = count;
    *(result + 10) = minCount;
  }

  return result;
}

@end