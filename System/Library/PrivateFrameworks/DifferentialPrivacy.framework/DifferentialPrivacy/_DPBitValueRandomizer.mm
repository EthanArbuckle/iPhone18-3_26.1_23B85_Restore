@interface _DPBitValueRandomizer
+ (id)bitValueRandomizerWithDimensionality:(unint64_t)a3 epsilon:(double)a4;
- (NSString)description;
- (_DPBitValueRandomizer)initWithDimensionality:(unint64_t)a3 epsilon:(double)a4;
- (id)randomize:(id)a3;
- (id)randomizeBitValues:(id)a3 forKey:(id)a4;
- (id)randomizeStrings:(id)a3 forKey:(id)a4;
@end

@implementation _DPBitValueRandomizer

- (_DPBitValueRandomizer)initWithDimensionality:(unint64_t)a3 epsilon:(double)a4
{
  if (isInvalidEpsilon(a4))
  {
    goto LABEL_2;
  }

  v12.receiver = self;
  v12.super_class = _DPBitValueRandomizer;
  v8 = [(_DPBitValueRandomizer *)&v12 init];
  self = v8;
  if (!v8)
  {
    goto LABEL_5;
  }

  v8->_p = a3;
  v8->_epsilon = a4;
  v9 = [_DPBiasedCoin coinWithBias:(1.0 / (exp(a4 * 0.5) + 1.0))];
  epsilonCoin = self->_epsilonCoin;
  self->_epsilonCoin = v9;

  if (!self->_epsilonCoin)
  {
LABEL_2:
    v7 = 0;
  }

  else
  {
LABEL_5:
    self = self;
    v7 = self;
  }

  return v7;
}

+ (id)bitValueRandomizerWithDimensionality:(unint64_t)a3 epsilon:(double)a4
{
  v4 = [[a1 alloc] initWithDimensionality:a3 epsilon:a4];

  return v4;
}

- (id)randomize:(id)a3
{
  v4 = [a3 unsignedLongValue];
  if (v4 >= self->_p)
  {
    v6 = 0;
  }

  else
  {
    v5 = v4;
    v6 = [&stru_2839671C8 mutableCopy];
    if (self->_p)
    {
      v7 = 0;
      do
      {
        v8 = [(_DPBiasedCoin *)self->_epsilonCoin generateByte];
        if ((v7 ^ v5) >= 8)
        {
          v9 = 0;
        }

        else
        {
          v9 = 1 << (v5 & 7);
        }

        [v6 appendFormat:@"%02X", v8 ^ v9];
        v7 += 8;
      }

      while (v7 < self->_p);
    }
  }

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { p=%ld  epsilon=%lf ; cEpsilon=%lf ; epsilonCoin=%@ }", v5, self->_p, *&self->_epsilon, 1.0 / (exp(self->_epsilon * 0.5) + 1.0), self->_epsilonCoin];;

  return v6;
}

- (id)randomizeStrings:(id)a3 forKey:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [_DPBitValueMap bitValueMapForKey:v6];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v21 = [MEMORY[0x277CBEBF8] mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [v7 bitValueForString:{*(*(&v23 + 1) + 8 * i), v21}];
        if (([v16 isEqualToNumber:&unk_283975F40] & 1) == 0)
        {
          v17 = [(_DPBitValueRandomizer *)self randomize:v16];
          v18 = -[_DPBitValueRecord initWithKey:clearBitValue:privateBitValueStr:creationDate:submitted:objectId:]([_DPBitValueRecord alloc], "initWithKey:clearBitValue:privateBitValueStr:creationDate:submitted:objectId:", v6, [v16 shortValue], v17, 0, 0, v10);
          if (v18)
          {
            [v21 addObject:v18];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)randomizeBitValues:(id)a3 forKey:(id)a4
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
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        if (([v16 isEqualToNumber:&unk_283975F40] & 1) == 0)
        {
          v17 = [(_DPBitValueRandomizer *)self randomize:v16];
          v18 = -[_DPBitValueRecord initWithKey:clearBitValue:privateBitValueStr:creationDate:submitted:objectId:]([_DPBitValueRecord alloc], "initWithKey:clearBitValue:privateBitValueStr:creationDate:submitted:objectId:", v7, [v16 shortValue], v17, 0, 0, v10);
          if (v18)
          {
            [v21 addObject:v18];
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v21;
}

@end