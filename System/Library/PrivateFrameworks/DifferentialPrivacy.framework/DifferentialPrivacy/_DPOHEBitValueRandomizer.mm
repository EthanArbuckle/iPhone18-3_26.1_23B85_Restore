@interface _DPOHEBitValueRandomizer
+ (id)oheBitValueRandomizerWithDimensionality:(unint64_t)dimensionality epsilon:(double)epsilon;
- (NSString)description;
- (_DPOHEBitValueRandomizer)initWithDimensionality:(unint64_t)dimensionality epsilon:(double)epsilon;
- (id).cxx_construct;
- (id)randomize:(id)randomize;
- (id)randomizeBitValues:(id)values forKey:(id)key;
- (id)randomizeWithMessageIndex:(unint64_t)index numberOfFlippedBits:(unint64_t)bits;
@end

@implementation _DPOHEBitValueRandomizer

- (_DPOHEBitValueRandomizer)initWithDimensionality:(unint64_t)dimensionality epsilon:(double)epsilon
{
  v7 = isInvalidEpsilon(epsilon);
  if (dimensionality)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    v18.receiver = self;
    v18.super_class = _DPOHEBitValueRandomizer;
    v10 = [(_DPOHEBitValueRandomizer *)&v18 init];
    v11 = v10;
    if (v10)
    {
      v10->_epsilon = epsilon;
      v10->_domainSize = dimensionality;
      v12 = exp(-epsilon);
      v11->_flipProbability = v12 / (v12 + 1.0);
      v13 = arc4random();
      v11->_rng.__x_[0] = v13;
      v14 = 1;
      for (i = 9; i != 632; ++i)
      {
        v16 = 1812433253 * (v13 ^ (v13 >> 30));
        v13 = v16 + v14;
        *(&v11->super.isa + i) = i + v16 - 8;
        ++v14;
      }

      v11->_rng.__i_ = 0;
    }

    self = v11;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)oheBitValueRandomizerWithDimensionality:(unint64_t)dimensionality epsilon:(double)epsilon
{
  v4 = [[self alloc] initWithDimensionality:dimensionality epsilon:epsilon];

  return v4;
}

- (id)randomizeWithMessageIndex:(unint64_t)index numberOfFlippedBits:(unint64_t)bits
{
  bitsCopy = bits;
  indexCopy = index;
  domainSize = self->_domainSize;
  if (domainSize > index && domainSize >= bits)
  {
    v15 = 0u;
    v16 = 0u;
    v17 = 1065353216;
    if (sampleUniformWithoutReplace<unsigned long,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(&v15, &self->_domainSize, &bitsCopy, &self->_rng))
    {
      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v15, &indexCopy);
      v8 = v7;
      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__erase_unique<unsigned long>(&v15, &indexCopy);
      v9 = uniformRandomProbabilityExcludingOne();
      v10 = *(&v16 + 1);
      v11 = [&stru_2839671C8 mutableCopy];
      v12 = v16;
      if (v16)
      {
        v13 = (v9 * v10);
        do
        {
          if ([v11 length])
          {
            [v11 appendString:{@", "}];
          }

          [v11 appendFormat:@"%lu", v12[2]];
          if (((v13 == 0) & v8) == 1)
          {
            [v11 appendFormat:@", %lu", indexCopy];
          }

          v12 = *v12;
          --v13;
        }

        while (v12);
      }

      if (((*(&v16 + 1) == 0) & v8) != 0)
      {
        [v11 appendFormat:@"%lu", indexCopy];
      }

      v6 = [v11 copy];
    }

    else
    {
      v6 = 0;
    }

    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(&v15);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)randomize:(id)randomize
{
  unsignedLongValue = [randomize unsignedLongValue];
  if (unsignedLongValue >= self->_domainSize)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(_DPOHEBitValueRandomizer *)self randomizeWithMessageIndex:unsignedLongValue numberOfFlippedBits:[(_DPOHEBitValueRandomizer *)self drawNumberOfFlippedBits]];
  }

  return v5;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { p=%lu  epsilon=%lf }", v5, self->_domainSize, *&self->_epsilon];;

  return v6;
}

- (id)randomizeBitValues:(id)values forKey:(id)key
{
  v26 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  keyCopy = key;
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:0.0];
  [v6 timeIntervalSinceReferenceDate];
  v8 = v7;

  v19 = [MEMORY[0x277CBEBF8] mutableCopy];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = valuesCopy;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if (([v13 isEqualToNumber:&unk_283975F10] & 1) == 0)
        {
          v14 = [(_DPOHEBitValueRandomizer *)self randomize:v13];
          v15 = -[_DPBitValueRecord initWithKey:clearBitValue:privateBitValueStr:creationDate:submitted:objectId:]([_DPBitValueRecord alloc], "initWithKey:clearBitValue:privateBitValueStr:creationDate:submitted:objectId:", keyCopy, [v13 shortValue], v14, 0, 0, v8);
          if (v15)
          {
            [v19 addObject:v15];
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v10);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id).cxx_construct
{
  v2 = 5489;
  *(self + 8) = 5489;
  v3 = 1;
  for (i = 9; i != 632; ++i)
  {
    v5 = 1812433253 * (v2 ^ (v2 >> 30));
    v2 = v5 + v3;
    *(self + i) = i + v5 - 8;
    ++v3;
  }

  *(self + 316) = 0;
  return self;
}

@end