@interface _DPOBHRandomizer
+ (id)obhRandomizerWithDimensionality:(unint64_t)a3 epsilon:(double)a4;
- (BOOL)getBitValueAtIndex:(unint64_t)a3 forString:(id)a4;
- (NSString)description;
- (_DPOBHRandomizer)initWithDimensionality:(unint64_t)a3 epsilon:(double)a4;
- (id)randomizeStrings:(id)a3 forKey:(id)a4;
- (id)randomizedBitForString:(id)a3;
@end

@implementation _DPOBHRandomizer

- (_DPOBHRandomizer)initWithDimensionality:(unint64_t)a3 epsilon:(double)a4
{
  if (isInvalidEpsilon(a4))
  {
    goto LABEL_2;
  }

  v15.receiver = self;
  v15.super_class = _DPOBHRandomizer;
  v8 = [(_DPOBHRandomizer *)&v15 init];
  self = v8;
  if (!v8)
  {
    goto LABEL_6;
  }

  v8->_m = a3;
  v9 = [_DPRandomBitPositionGenerator generatorWithDimensionality:a3];
  bitPositionGenerator = self->_bitPositionGenerator;
  self->_bitPositionGenerator = v9;

  self->_epsilon = a4;
  v11 = exp(a4);
  self->_cEpsilon = v11 / (v11 + 1.0);
  v12 = [_DPBiasedCoin coinWithBias:?];
  epsilonCoin = self->_epsilonCoin;
  self->_epsilonCoin = v12;

  if (!self->_bitPositionGenerator || !self->_epsilonCoin)
  {
LABEL_2:
    v7 = 0;
  }

  else
  {
LABEL_6:
    self = self;
    v7 = self;
  }

  return v7;
}

+ (id)obhRandomizerWithDimensionality:(unint64_t)a3 epsilon:(double)a4
{
  v4 = [[a1 alloc] initWithDimensionality:a3 epsilon:a4];

  return v4;
}

- (BOOL)getBitValueAtIndex:(unint64_t)a3 forString:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [a4 UTF8String];
  v6 = strlen(v5);
  CC_SHA256(v5, v6, md);
  dataIn[0] = 0;
  dataIn[1] = bswap64(a3 >> 7);
  v7 = CCCrypt(0, 0, 2u, md, 0x20uLL, 0, dataIn, 0x10uLL, dataIn, 0x10uLL, 0);
  if (v7)
  {
    v8 = v7;
    v9 = +[_DPLog framework];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_DPOBHRandomizer getBitValueAtIndex:v8 forString:v9];
    }

    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = (*(dataIn + ((a3 >> 3) & 0xF)) >> (a3 & 7)) & 1;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)randomizedBitForString:(id)a3
{
  bitPositionGenerator = self->_bitPositionGenerator;
  v5 = a3;
  v6 = [(_DPRandomBitPositionGenerator *)bitPositionGenerator sample];
  v7 = [(_DPOBHRandomizer *)self getBitValueAtIndex:v6 forString:v5];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  if ([(_DPBiasedCoin *)self->_epsilonCoin flip])
  {
    v9 = v8;
  }

  else
  {
    v9 = -v8;
  }

  return [_DPRandomizedBit randomizedBit:v9 atIndex:v6];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  m = self->_m;
  epsilon = self->_epsilon;
  v8 = [v3 stringWithFormat:@"%@: { dimensionality=%ld  bitPositionGenerator=%@ ; epsilon=%.16g ; cEpsilon=%.16g ; epsilonCoin=%@ }", v5, m, self->_bitPositionGenerator, *&epsilon, *&self->_cEpsilon, self->_epsilonCoin];;

  return v8;
}

- (id)randomizeStrings:(id)a3 forKey:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v21 = [MEMORY[0x277CBEBF8] mutableCopy];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v6;
  v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [(_DPOBHRandomizer *)self randomizedBitForString:v15];
        v17 = +[_DPOBHSequenceRecord recordWithKey:sequence:bitPosition:bitValue:creationDate:submitted:objectId:](_DPOBHSequenceRecord, "recordWithKey:sequence:bitPosition:bitValue:creationDate:submitted:objectId:", v7, v15, [v16 index], objc_msgSend(v16, "value") == 1, 0, 0, v10);
        if (v17)
        {
          [v21 addObject:v17];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)getBitValueAtIndex:(int)a1 forString:(NSObject *)a2 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "CCCryptorStatus failed: %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end