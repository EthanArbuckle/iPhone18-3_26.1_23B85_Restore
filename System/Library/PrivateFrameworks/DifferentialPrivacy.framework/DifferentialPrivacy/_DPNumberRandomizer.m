@interface _DPNumberRandomizer
+ (id)numberRandomizerWithRange:(unint64_t)a3 epsilon:(double)a4;
- (NSString)description;
- (_DPNumberRandomizer)initWithRange:(unint64_t)a3 epsilon:(double)a4;
- (id)randomize:(id)a3;
- (id)randomizeNumbers:(id)a3 forKey:(id)a4;
@end

@implementation _DPNumberRandomizer

- (_DPNumberRandomizer)initWithRange:(unint64_t)a3 epsilon:(double)a4
{
  if (isInvalidEpsilon(a4))
  {
    v7 = 0;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = _DPNumberRandomizer;
    v8 = [(_DPNumberRandomizer *)&v13 init];
    v9 = v8;
    if (v8)
    {
      v8->_range = a3;
      v8->_epsilon = a4;
      v10 = [_DPLaplaceNoiseGenerator zeroMeanLaplaceNoiseGenerator:a3 / a4];
      generator = v9->_generator;
      v9->_generator = v10;
    }

    self = v9;
    v7 = self;
  }

  return v7;
}

+ (id)numberRandomizerWithRange:(unint64_t)a3 epsilon:(double)a4
{
  v4 = [[a1 alloc] initWithRange:a3 epsilon:a4];

  return v4;
}

- (id)randomize:(id)a3
{
  generator = self->_generator;
  v4 = a3;
  [(_DPLaplaceNoiseGenerator *)generator sample];
  v6 = v5;
  v7 = MEMORY[0x277CCABB0];
  [v4 doubleValue];
  v9 = v8;

  return [v7 numberWithDouble:v6 + v9];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { range=%ld  epsilon=%.16g ; laplaceNoiseGenerator=%@ }", v5, self->_range, *&self->_epsilon, self->_generator];;

  return v6;
}

- (id)randomizeNumbers:(id)a3 forKey:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v8 timeIntervalSinceReferenceDate];
  v10 = v9;

  v25 = [MEMORY[0x277CBEBF8] mutableCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = v6;
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v26 + 1) + 8 * i);
        v17 = [(_DPNumberRandomizer *)self randomize:v16];
        v18 = [_DPNumericDataRecord alloc];
        [v16 doubleValue];
        v20 = v19;
        [v17 doubleValue];
        v22 = [(_DPNumericDataRecord *)v18 initWithKey:v7 clearNumber:0 privateNumber:0 creationDate:v20 submitted:v21 objectId:v10];
        if (v22)
        {
          [v25 addObject:v22];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v25;
}

@end