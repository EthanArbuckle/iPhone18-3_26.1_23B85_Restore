@interface MSVBloomFilter
- (BOOL)containsObject:(id)object;
- (MSVBloomFilter)initWithCapacity:(int64_t)capacity falsePositiveTolerance:(float)tolerance;
- (MSVBloomFilter)initWithCapacity:(int64_t)capacity falsePositiveTolerance:(float)tolerance murmurSeed:(unint64_t)seed;
- (MSVBloomFilter)initWithCoder:(id)coder;
- (float)falsePositiveProbability;
- (id)_vectorIndexSetForObject:(id)object;
- (id)description;
- (int64_t)estimatedCount;
- (unint64_t)_fnvHashObject:(id)object;
- (unint64_t)_murmur2HashObject:(id)object;
- (void)addObject:(id)object;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSVBloomFilter

- (void)dealloc
{
  vector = self->_vector;
  if (vector)
  {
    CFRelease(vector);
  }

  v4.receiver = self;
  v4.super_class = MSVBloomFilter;
  [(MSVBloomFilter *)&v4 dealloc];
}

- (unint64_t)_murmur2HashObject:(id)object
{
  v4 = [object hash];
  v5 = 0xC6A4A7935BD1E995 * (self->_murmurSeed ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))));
  return (0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) >> 47);
}

- (unint64_t)_fnvHashObject:(id)object
{
  v3 = [object hash];
  v4 = 0;
  v5 = 0xCBF29CE484222325;
  do
  {
    v5 = 0x100000001B3 * ((v3 >> v4++) & 0xF ^ v5);
  }

  while (v4 != 8);
  return v5;
}

- (id)_vectorIndexSetForObject:(id)object
{
  objectCopy = object;
  v5 = [(MSVBloomFilter *)self _fnvHashObject:objectCopy];
  v6 = [(MSVBloomFilter *)self _murmur2HashObject:objectCopy];
  indexSet = [MEMORY[0x1E696AD50] indexSet];
  if (self->_hashCount >= 1)
  {
    v8 = 0;
    do
    {
      [indexSet addIndex:v5 % self->_vectorCapacity];
      ++v8;
      v5 += v6;
    }

    while (v8 < self->_hashCount);
  }

  return indexSet;
}

- (int64_t)estimatedCount
{
  v5.length = self->_vectorCapacity;
  v5.location = 0;
  CountOfBit = CFBitVectorGetCountOfBit(self->_vector, v5, 1u);
  return vcvtpd_s64_f64(log((1.0 - (CountOfBit / self->_vectorCapacity))) * (-self->_vectorCapacity / self->_hashCount));
}

- (float)falsePositiveProbability
{
  hashCount = self->_hashCount;
  v3 = pow(2.71828183, (-(hashCount * self->_capacity) / self->_vectorCapacity));
  return pow(1.0 - v3, hashCount);
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  v5 = [(MSVBloomFilter *)self _vectorIndexSetForObject:objectCopy];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 1;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__MSVBloomFilter_containsObject___block_invoke;
  v7[3] = &unk_1E7981E20;
  v7[4] = self;
  v7[5] = &v8;
  [v5 enumerateIndexesUsingBlock:v7];
  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return self;
}

uint64_t __33__MSVBloomFilter_containsObject___block_invoke(uint64_t a1, CFIndex a2, _BYTE *a3)
{
  result = CFBitVectorGetBitAtIndex(*(*(a1 + 32) + 8), a2);
  if (!result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

- (void)addObject:(id)object
{
  v4 = [(MSVBloomFilter *)self _vectorIndexSetForObject:object];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__MSVBloomFilter_addObject___block_invoke;
  v5[3] = &unk_1E7981DF8;
  v5[4] = self;
  [v4 enumerateIndexesUsingBlock:v5];
}

- (void)encodeWithCoder:(id)coder
{
  capacity = self->_capacity;
  coderCopy = coder;
  [coderCopy encodeInteger:capacity forKey:@"capacity"];
  [coderCopy encodeInteger:self->_vectorCapacity forKey:@"vectorCapacity"];
  [coderCopy encodeInteger:self->_falsePositiveTolerance forKey:@"falsePositiveTolerance"];
  [coderCopy encodeInteger:self->_hashCount forKey:@"hashCount"];
  [coderCopy encodeInt64:self->_murmurSeed forKey:@"murmurSeed"];
  v10 = [MEMORY[0x1E695DF88] dataWithLength:self->_vectorCapacity / 8];
  vector = self->_vector;
  vectorCapacity = self->_vectorCapacity;
  v8 = v10;
  mutableBytes = [v10 mutableBytes];
  v12.location = 0;
  v12.length = vectorCapacity;
  CFBitVectorGetBits(vector, v12, mutableBytes);
  [coderCopy encodeObject:v10 forKey:@"vectorData"];
}

- (MSVBloomFilter)initWithCoder:(id)coder
{
  v24 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = MSVBloomFilter;
  v5 = [(MSVBloomFilter *)&v17 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v5->_capacity = [coderCopy decodeIntegerForKey:@"capacity"];
  v5->_vectorCapacity = [coderCopy decodeIntegerForKey:@"vectorCapacity"];
  v5->_falsePositiveTolerance = [coderCopy decodeIntegerForKey:@"falsePositiveTolerance"];
  v5->_hashCount = [coderCopy decodeIntegerForKey:@"hashCount"];
  v5->_murmurSeed = [coderCopy decodeInt64ForKey:@"murmurSeed"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vectorData"];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  if ([v6 length] != v5->_vectorCapacity / 8)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v14 = [v7 length];
      vectorCapacity = v5->_vectorCapacity;
      v16 = vectorCapacity + 7;
      if (vectorCapacity >= 0)
      {
        v16 = v5->_vectorCapacity;
      }

      *buf = 134218496;
      v19 = v14;
      v20 = 2048;
      v21 = vectorCapacity;
      v22 = 2048;
      v23 = v16 >> 3;
      _os_log_fault_impl(&dword_1AC81F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "MSVBloomFilter encoded data length does not match vector capacity: %lld != (%lld / 8) [%lld]", buf, 0x20u);
    }

    goto LABEL_8;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = CFBitVectorCreate(*MEMORY[0x1E695E480], [v7 bytes], v5->_vectorCapacity);
  if (!v9)
  {
LABEL_8:

    v11 = 0;
    goto LABEL_9;
  }

  v10 = v9;
  v5->_vector = CFBitVectorCreateMutableCopy(v8, v5->_vectorCapacity, v9);
  CFRelease(v10);

LABEL_6:
  v11 = v5;
LABEL_9:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = self->_vectorCapacity / 8;
  hashCount = self->_hashCount;
  [(MSVBloomFilter *)self falsePositiveProbability];
  return [v3 stringWithFormat:@"<%@: %p size=%ld hashCount=%ld falsePositiveProbability=%0.4f>", v4, self, v5, hashCount, v7];
}

- (MSVBloomFilter)initWithCapacity:(int64_t)capacity falsePositiveTolerance:(float)tolerance murmurSeed:(unint64_t)seed
{
  result = [(MSVBloomFilter *)self initWithCapacity:capacity falsePositiveTolerance:?];
  if (result)
  {
    result->_murmurSeed = seed;
  }

  return result;
}

- (MSVBloomFilter)initWithCapacity:(int64_t)capacity falsePositiveTolerance:(float)tolerance
{
  if (capacity <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSVBloomFilter.m" lineNumber:23 description:@"An expected capacity must be provided."];
  }

  if (tolerance >= 1.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSVBloomFilter.m" lineNumber:24 description:@"Tolerance must be between 0..<1 and cannot be 1"];
  }

  if (tolerance <= 0.0)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"MSVBloomFilter.m" lineNumber:25 description:@"Tolerance must be between 0..<1 and cannot be 0"];
  }

  v20.receiver = self;
  v20.super_class = MSVBloomFilter;
  v8 = [(MSVBloomFilter *)&v20 init];
  v9 = v8;
  if (v8)
  {
    v8->_falsePositiveTolerance = tolerance;
    v8->_capacity = capacity;
    arc4random_buf(&v8->_murmurSeed, 8uLL);
    v10 = -log(tolerance);
    v11 = 1;
    capacityCopy = capacity;
    do
    {
      v13 = vcvtpd_s64_f64(v10 * capacityCopy / 0.480453014);
      v9->_vectorCapacity = v13;
      v9->_hashCount = vcvtpd_s64_f64((v13 / capacityCopy) * 0.693147181);
      [(MSVBloomFilter *)v9 falsePositiveProbability];
      if (v11 > 0xB)
      {
        break;
      }

      ++v11;
      capacityCopy += capacity;
    }

    while (v14 > tolerance);
    Mutable = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], v9->_vectorCapacity);
    v9->_vector = Mutable;
    CFBitVectorSetCount(Mutable, v9->_vectorCapacity);
  }

  return v9;
}

@end