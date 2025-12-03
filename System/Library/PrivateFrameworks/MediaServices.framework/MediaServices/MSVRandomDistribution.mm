@interface MSVRandomDistribution
- (MSVRandomDistribution)init;
- (MSVRandomDistribution)initWithCoder:(id)coder;
- (MSVRandomDistribution)initWithRandomSource:(id)source lowestValue:(int64_t)value highestValue:(int64_t)highestValue;
- (unint64_t)nextIntWithUpperBound:(unint64_t)bound;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSVRandomDistribution

- (unint64_t)nextIntWithUpperBound:(unint64_t)bound
{
  v20[3] = *MEMORY[0x1E69E9840];
  lowestValue = self->_lowestValue;
  v4 = lowestValue & ~(lowestValue >> 63);
  if (v4 > bound)
  {
    v9 = MEMORY[0x1E695DF30];
    v10 = *MEMORY[0x1E695D940];
    v19[0] = @"lowestInclusive";
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:lowestValue];
    v20[0] = v13;
    v19[1] = @"highestInclusive";
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:self->_highestValue];
    v20[1] = v14;
    v19[2] = @"upper";
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:bound];
    v20[2] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:3];
    v17 = [v9 exceptionWithName:v10 reason:@"upper bound provided is less than lowestInclusive" userInfo:v16];
    v18 = v17;

    objc_exception_throw(v17);
  }

  v5 = self->_highestValue & ~(self->_highestValue >> 63);
  if (v5 >= bound - 1)
  {
    v5 = bound - 1;
  }

  v6 = [(MSVRandom *)self->_source nextIntWithUpperBound:v5 - lowestValue + 1];
  v7 = *MEMORY[0x1E69E9840];
  return v6 + v4;
}

- (void)encodeWithCoder:(id)coder
{
  source = self->_source;
  coderCopy = coder;
  [coderCopy encodeObject:source forKey:@"source"];
  [coderCopy encodeInteger:self->_lowestValue forKey:@"lowest"];
  [coderCopy encodeInteger:self->_highestValue forKey:@"highest"];
}

- (MSVRandomDistribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"source"];
  v6 = [coderCopy decodeIntegerForKey:@"lowest"];
  v7 = [coderCopy decodeIntegerForKey:@"highest"];

  v8 = [(MSVRandomDistribution *)self initWithRandomSource:v5 lowestValue:v6 highestValue:v7];
  return v8;
}

- (MSVRandomDistribution)initWithRandomSource:(id)source lowestValue:(int64_t)value highestValue:(int64_t)highestValue
{
  sourceCopy = source;
  v13.receiver = self;
  v13.super_class = MSVRandomDistribution;
  v10 = [(MSVRandomDistribution *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_source, source);
    v11->_lowestValue = value;
    v11->_highestValue = highestValue;
  }

  return v11;
}

- (MSVRandomDistribution)init
{
  v3 = objc_alloc_init(MSVARC4RandomSource);
  v4 = [(MSVRandomDistribution *)self initWithRandomSource:v3 lowestValue:0 highestValue:0];

  return v4;
}

@end