@interface HDDemoDataStatisticsSampleGenerator
- (HDDemoDataStatisticsSampleGenerator)init;
- (HDDemoDataStatisticsSampleGenerator)initWithCoder:(id)coder;
- (double)computeNoiseFromTime:(double)time stdDev:(double)dev;
- (double)pseudoRandomDoubleFromTime:(double)time;
- (double)randomSampleFromNormalDistributionWithMean:(double)mean stdDev:(double)dev;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
- (void)setupWithDemoDataGenerator:(id)generator;
@end

@implementation HDDemoDataStatisticsSampleGenerator

- (HDDemoDataStatisticsSampleGenerator)init
{
  v6.receiver = self;
  v6.super_class = HDDemoDataStatisticsSampleGenerator;
  v2 = [(HDDemoDataBaseSampleGenerator *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 40) = xmmword_229167660;
    v2[64] = 0;
    v4 = *(v2 + 9);
    *(v2 + 9) = 0;
  }

  return v3;
}

- (HDDemoDataStatisticsSampleGenerator)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = HDDemoDataStatisticsSampleGenerator;
  v5 = [(HDDemoDataBaseSampleGenerator *)&v14 initWithCoder:coderCopy];
  v6 = v5;
  if (v5)
  {
    *(v5 + 40) = xmmword_229167660;
    v5[64] = 0;
    v7 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v9 = [v7 setWithArray:v8];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"HDDemoDataStatisticsSampleGeneratorPseudoRandomDoublesKey"];
    pseudoRandomDoubles = v6->_pseudoRandomDoubles;
    v6->_pseudoRandomDoubles = v10;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = HDDemoDataStatisticsSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_pseudoRandomDoubles forKey:@"HDDemoDataStatisticsSampleGeneratorPseudoRandomDoublesKey"];
}

- (void)setupWithDemoDataGenerator:(id)generator
{
  generatorCopy = generator;
  v11.receiver = self;
  v11.super_class = HDDemoDataStatisticsSampleGenerator;
  [(HDDemoDataBaseSampleGenerator *)&v11 setupWithDemoDataGenerator:generatorCopy];
  if (![(HDDemoDataBaseSampleGenerator *)self createdFromNSKeyedUnarchiver])
  {
    if (self)
    {
      v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      for (i = 1; i != 101; ++i)
      {
        v7 = [MEMORY[0x277CCABB0] numberWithDouble:i / 100.0];
        [(NSArray *)v5 addObject:v7];
      }

      v8 = 0;
      v9 = 100;
      do
      {
        [(NSArray *)v5 exchangeObjectAtIndex:v8 withObjectAtIndex:v8 + arc4random_uniform(v9)];
        ++v8;
        --v9;
      }

      while (v8 != 100);
    }

    else
    {
      v5 = 0;
    }

    pseudoRandomDoubles = self->_pseudoRandomDoubles;
    self->_pseudoRandomDoubles = v5;
  }
}

- (double)pseudoRandomDoubleFromTime:(double)time
{
  v3 = [(NSArray *)self->_pseudoRandomDoubles objectAtIndexedSubscript:(time * 15485863.0) % [(NSArray *)self->_pseudoRandomDoubles count]];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (double)computeNoiseFromTime:(double)time stdDev:(double)dev
{
  result = 0.0;
  if (self)
  {
    if (dev != 0.0)
    {
      [(HDDemoDataStatisticsSampleGenerator *)self pseudoRandomDoubleFromTime:time];
      return 0.0 - (dev - (dev + dev) * v7);
    }
  }

  return result;
}

- (double)randomSampleFromNormalDistributionWithMean:(double)mean stdDev:(double)dev
{
  v5[0] = mean;
  v5[1] = dev;
  v6 = 0;
  return std::normal_distribution<double>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(v5, &self->_generator.__x_, v5);
}

- (id).cxx_construct
{
  *(self + 8) = 1;
  *(self + 40) = xmmword_229167670;
  *(self + 64) = 0;
  return self;
}

@end