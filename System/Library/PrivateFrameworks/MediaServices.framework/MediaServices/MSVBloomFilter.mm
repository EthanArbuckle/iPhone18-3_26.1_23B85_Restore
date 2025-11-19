@interface MSVBloomFilter
- (BOOL)containsObject:(id)a3;
- (MSVBloomFilter)initWithCapacity:(int64_t)a3 falsePositiveTolerance:(float)a4;
- (MSVBloomFilter)initWithCapacity:(int64_t)a3 falsePositiveTolerance:(float)a4 murmurSeed:(unint64_t)a5;
- (MSVBloomFilter)initWithCoder:(id)a3;
- (float)falsePositiveProbability;
- (id)_vectorIndexSetForObject:(id)a3;
- (id)description;
- (int64_t)estimatedCount;
- (unint64_t)_fnvHashObject:(id)a3;
- (unint64_t)_murmur2HashObject:(id)a3;
- (void)addObject:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (unint64_t)_murmur2HashObject:(id)a3
{
  v4 = [a3 hash];
  v5 = 0xC6A4A7935BD1E995 * (self->_murmurSeed ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))));
  return (0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) >> 47);
}

- (unint64_t)_fnvHashObject:(id)a3
{
  v3 = [a3 hash];
  v4 = 0;
  v5 = 0xCBF29CE484222325;
  do
  {
    v5 = 0x100000001B3 * ((v3 >> v4++) & 0xF ^ v5);
  }

  while (v4 != 8);
  return v5;
}

- (id)_vectorIndexSetForObject:(id)a3
{
  v4 = a3;
  v5 = [(MSVBloomFilter *)self _fnvHashObject:v4];
  v6 = [(MSVBloomFilter *)self _murmur2HashObject:v4];
  v7 = [MEMORY[0x1E696AD50] indexSet];
  if (self->_hashCount >= 1)
  {
    v8 = 0;
    do
    {
      [v7 addIndex:v5 % self->_vectorCapacity];
      ++v8;
      v5 += v6;
    }

    while (v8 < self->_hashCount);
  }

  return v7;
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

- (BOOL)containsObject:(id)a3
{
  v4 = a3;
  v5 = [(MSVBloomFilter *)self _vectorIndexSetForObject:v4];
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

- (void)addObject:(id)a3
{
  v4 = [(MSVBloomFilter *)self _vectorIndexSetForObject:a3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __28__MSVBloomFilter_addObject___block_invoke;
  v5[3] = &unk_1E7981DF8;
  v5[4] = self;
  [v4 enumerateIndexesUsingBlock:v5];
}

- (void)encodeWithCoder:(id)a3
{
  capacity = self->_capacity;
  v5 = a3;
  [v5 encodeInteger:capacity forKey:@"capacity"];
  [v5 encodeInteger:self->_vectorCapacity forKey:@"vectorCapacity"];
  [v5 encodeInteger:self->_falsePositiveTolerance forKey:@"falsePositiveTolerance"];
  [v5 encodeInteger:self->_hashCount forKey:@"hashCount"];
  [v5 encodeInt64:self->_murmurSeed forKey:@"murmurSeed"];
  v10 = [MEMORY[0x1E695DF88] dataWithLength:self->_vectorCapacity / 8];
  vector = self->_vector;
  vectorCapacity = self->_vectorCapacity;
  v8 = v10;
  v9 = [v10 mutableBytes];
  v12.location = 0;
  v12.length = vectorCapacity;
  CFBitVectorGetBits(vector, v12, v9);
  [v5 encodeObject:v10 forKey:@"vectorData"];
}

- (MSVBloomFilter)initWithCoder:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MSVBloomFilter;
  v5 = [(MSVBloomFilter *)&v17 init];
  if (!v5)
  {
    goto LABEL_6;
  }

  v5->_capacity = [v4 decodeIntegerForKey:@"capacity"];
  v5->_vectorCapacity = [v4 decodeIntegerForKey:@"vectorCapacity"];
  v5->_falsePositiveTolerance = [v4 decodeIntegerForKey:@"falsePositiveTolerance"];
  v5->_hashCount = [v4 decodeIntegerForKey:@"hashCount"];
  v5->_murmurSeed = [v4 decodeInt64ForKey:@"murmurSeed"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"vectorData"];
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

- (MSVBloomFilter)initWithCapacity:(int64_t)a3 falsePositiveTolerance:(float)a4 murmurSeed:(unint64_t)a5
{
  result = [(MSVBloomFilter *)self initWithCapacity:a3 falsePositiveTolerance:?];
  if (result)
  {
    result->_murmurSeed = a5;
  }

  return result;
}

- (MSVBloomFilter)initWithCapacity:(int64_t)a3 falsePositiveTolerance:(float)a4
{
  if (a3 <= 0)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"MSVBloomFilter.m" lineNumber:23 description:@"An expected capacity must be provided."];
  }

  if (a4 >= 1.0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MSVBloomFilter.m" lineNumber:24 description:@"Tolerance must be between 0..<1 and cannot be 1"];
  }

  if (a4 <= 0.0)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"MSVBloomFilter.m" lineNumber:25 description:@"Tolerance must be between 0..<1 and cannot be 0"];
  }

  v20.receiver = self;
  v20.super_class = MSVBloomFilter;
  v8 = [(MSVBloomFilter *)&v20 init];
  v9 = v8;
  if (v8)
  {
    v8->_falsePositiveTolerance = a4;
    v8->_capacity = a3;
    arc4random_buf(&v8->_murmurSeed, 8uLL);
    v10 = -log(a4);
    v11 = 1;
    v12 = a3;
    do
    {
      v13 = vcvtpd_s64_f64(v10 * v12 / 0.480453014);
      v9->_vectorCapacity = v13;
      v9->_hashCount = vcvtpd_s64_f64((v13 / v12) * 0.693147181);
      [(MSVBloomFilter *)v9 falsePositiveProbability];
      if (v11 > 0xB)
      {
        break;
      }

      ++v11;
      v12 += a3;
    }

    while (v14 > a4);
    Mutable = CFBitVectorCreateMutable(*MEMORY[0x1E695E480], v9->_vectorCapacity);
    v9->_vector = Mutable;
    CFBitVectorSetCount(Mutable, v9->_vectorCapacity);
  }

  return v9;
}

@end