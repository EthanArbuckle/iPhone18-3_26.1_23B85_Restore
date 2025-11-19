@interface EFBloomFilter
+ (id)bestBloomFilterForValues:(id)a3 excludingValues:(id)a4 falsePositiveRate:(double)a5 knownFalsePositives:(id *)a6;
+ (id)bestBloomFilterForValues:(id)a3 excludingValues:(id)a4 knownFalsePositives:(id *)a5;
+ (id)bloomFilterWithContentsOfFile:(id)a3 error:(id *)a4;
- (BOOL)mayContainData:(id)a3;
- (BOOL)mayContainString:(id)a3;
- (BOOL)writeToFile:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (EFBloomFilter)init;
- (EFBloomFilter)initWithValues:(id)a3 falsePositiveRate:(double)a4 seed:(unint64_t)a5;
- (id)_initWithBucketCount:(unint64_t)a3 hashFunctionCount:(unint64_t)a4 seed:(unint64_t)a5 indexes:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation EFBloomFilter

- (EFBloomFilter)init
{
  v3 = objc_alloc_init(MEMORY[0x1E696AC90]);
  v4 = [(EFBloomFilter *)self _initWithBucketCount:1 hashFunctionCount:1 seed:0 indexes:v3];

  return v4;
}

- (EFBloomFilter)initWithValues:(id)a3 falsePositiveRate:(double)a4 seed:(unint64_t)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v29 = a3;
  if (a4 <= 0.0)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"EFBloomFilter.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"falsePositiveRate > 0.0"}];
  }

  if (a4 >= 1.0)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"EFBloomFilter.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"falsePositiveRate < 1.0"}];
  }

  v9 = [v29 count];
  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v11 = log(a4);
  if (v11 * -1.44269504 >= 0.0)
  {
    v12 = v11 * -1.44269504;
  }

  else
  {
    v12 = 0.0;
  }

  v13 = v11 * -2.08136898;
  if (v13 >= 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.0;
  }

  v15 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v16 = v29;
  v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
  v18 = vcvtpd_u64_f64(fmin(v12, 100.0));
  v19 = vcvtpd_u64_f64(fmin(v14 * v10, 9.22337204e18));
  if (v17)
  {
    v20 = *v31;
    do
    {
      v21 = 0;
      do
      {
        if (*v31 != v20)
        {
          objc_enumerationMutation(v16);
        }

        v22 = *(*(&v30 + 1) + 8 * v21);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          addStringToIndexes(v15, v22, v19, v18, a5);
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            addDataToIndexes(v15, v22, v19, v18, a5);
          }
        }

        ++v21;
      }

      while (v17 != v21);
      v17 = [v16 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v17);
  }

  v23 = [(EFBloomFilter *)self _initWithBucketCount:v19 hashFunctionCount:v18 seed:a5 indexes:v15];
  v24 = *MEMORY[0x1E69E9840];
  return v23;
}

- (id)_initWithBucketCount:(unint64_t)a3 hashFunctionCount:(unint64_t)a4 seed:(unint64_t)a5 indexes:(id)a6
{
  v12 = a6;
  if (!a3)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"EFBloomFilter.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"bucketCount > 0"}];
    goto LABEL_10;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"EFBloomFilter.m" lineNumber:130 description:{@"Invalid parameter not satisfying: %@", @"bucketCount <= kMaxBuckets"}];
LABEL_10:

    if (a4)
    {
      goto LABEL_4;
    }

LABEL_11:
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"EFBloomFilter.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"hashFunctionCount > 0"}];
    goto LABEL_13;
  }

  if (!a4)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (a4 < 0x65)
  {
    goto LABEL_5;
  }

  v17 = [MEMORY[0x1E696AAA8] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"EFBloomFilter.m" lineNumber:132 description:{@"Invalid parameter not satisfying: %@", @"hashFunctionCount <= kMaxHashFunctions"}];
LABEL_13:

LABEL_5:
  v18.receiver = self;
  v18.super_class = EFBloomFilter;
  v13 = [(EFBloomFilter *)&v18 init];
  v14 = v13;
  if (v13)
  {
    v13->_bucketCount = a3;
    v13->_hashFunctionCount = a4;
    v13->_seed = a5;
    objc_storeStrong(&v13->_indexes, a6);
  }

  return v14;
}

+ (id)bestBloomFilterForValues:(id)a3 excludingValues:(id)a4 knownFalsePositives:(id *)a5
{
  v5 = [a1 bestBloomFilterForValues:a3 excludingValues:a4 falsePositiveRate:a5 knownFalsePositives:0.05];

  return v5;
}

+ (id)bestBloomFilterForValues:(id)a3 excludingValues:(id)a4 falsePositiveRate:(double)a5 knownFalsePositives:(id *)a6
{
  v9 = a3;
  v10 = a4;
  if ([v9 count])
  {
    v11 = [v9 count];
    v12 = log(a5);
    v13 = v12 * -1.44269504;
    if (v12 * -1.44269504 < 0.0)
    {
      v13 = 0.0;
    }

    v14 = vcvtpd_u64_f64(fmin(v13, 100.0));
    v15 = v12 * -2.08136898;
    if (v15 < 0.0)
    {
      v15 = 0.0;
    }

    v40 = 0;
    v16 = bestBloomFilterCandidate(v9, v10, vcvtpd_u64_f64(fmin(v15 * v11, 9.22337204e18)), v14, &v40);
    v17 = v40;
    v18 = v17;
    if (v17 && ![v17 count])
    {
      goto LABEL_21;
    }

    if (v14 >= 2)
    {
      v19 = [v9 count];
      v20 = (v14 - 1);
      v21 = -(v20 * v19);
      v22 = pow(a5, 1.0 / v20);
      v23 = log(1.0 - v22);
      v39 = 0;
      v24 = bestBloomFilterCandidate(v9, v10, vcvtpd_u64_f64(fmin(v21 / v23, 9.22337204e18)), v14 - 1, &v39);
      v25 = v39;
      v26 = [v25 count];
      if (v26 >= [v18 count])
      {
        v27 = v16;
        v28 = v18;
      }

      else
      {
        v27 = v24;

        v28 = v25;
        if (v28)
        {
          v16 = v27;
          v18 = v28;
          if (![v28 count])
          {
LABEL_20:

            goto LABEL_21;
          }
        }
      }

      v18 = v28;
      v16 = v27;
      if (v14 > 0x7FFFFFFFFFFFFFFELL)
      {
LABEL_21:
        if (a6)
        {
          v36 = v18;
          *a6 = v18;
        }

        goto LABEL_24;
      }
    }

    v29 = v14 + 1;
    v30 = -(v29 * [v9 count]);
    v31 = pow(a5, 1.0 / v29);
    v32 = log(1.0 - v31);
    v38 = 0;
    v27 = bestBloomFilterCandidate(v9, v10, vcvtpd_u64_f64(fmin(v30 / v32, 9.22337204e18)), v29, &v38);
    v28 = v38;
    v33 = [v28 count];
    if (v33 < [v18 count])
    {
      v34 = v27;

      v35 = v28;
      v16 = v34;
      v18 = v35;
    }

    goto LABEL_20;
  }

  if (a6)
  {
    *a6 = MEMORY[0x1E695E0F0];
  }

  v16 = objc_alloc_init(EFBloomFilter);
LABEL_24:

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [EFBloomFilter alloc];
  v5 = [(EFBloomFilter *)self bucketCount];
  v6 = [(EFBloomFilter *)self hashFunctionCount];
  v7 = [(EFBloomFilter *)self seed];
  indexes = self->_indexes;

  return [(EFBloomFilter *)v4 _initWithBucketCount:v5 hashFunctionCount:v6 seed:v7 indexes:indexes];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [EFMutableBloomFilter alloc];
  v5 = [(EFBloomFilter *)self bucketCount];
  v6 = [(EFBloomFilter *)self hashFunctionCount];
  v7 = [(EFBloomFilter *)self seed];
  indexes = self->_indexes;

  return [(EFMutableBloomFilter *)v4 _initWithBucketCount:v5 hashFunctionCount:v6 seed:v7 indexes:indexes];
}

+ (id)bloomFilterWithContentsOfFile:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfURL:v6 options:2 error:a4];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_23;
  }

  if ([v7 length] <= 0x17)
  {
    if (a4)
    {
      v9 = [MEMORY[0x1E696ABC0] ef_invalidInputError];
LABEL_22:
      v23 = 0;
      *a4 = v9;
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v28 = 0;
  [v8 getBytes:&v28 length:1];
  v10 = v28 >> 4;
  if (v10 == 1)
  {
    if (a4)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (v10 != 2)
  {
    if (a4)
    {
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if ((v28 & 0xF) != 1)
  {
    if (a4)
    {
LABEL_21:
      v9 = [MEMORY[0x1E696ABC0] ef_notSupportedError];
      goto LABEL_22;
    }

LABEL_23:
    v23 = 0;
    goto LABEL_24;
  }

  v27 = 0;
  [v8 getBytes:&v27 range:{4, 8}];
  v26 = 0;
  [v8 getBytes:&v26 range:{12, 8}];
  v25 = 0;
  [v8 getBytes:&v25 range:{20, 1}];
  v11 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v12 = [v8 subdataWithRange:{24, objc_msgSend(v8, "length", v11) - 24}];
  v13 = v11;
  v14 = v12;
  v15 = [v14 length];
  if (v15 >= 8)
  {
    v16 = 0;
    v17 = 0;
    v18 = v15 >> 3;
    do
    {
      v29 = 0;
      [v14 getBytes:&v29 range:{8 * v17, 8}];
      v19 = v29;
      v20 = v16;
      v21 = 64;
      do
      {
        if (v19)
        {
          [v13 addIndex:v20];
          v19 = v29;
        }

        v19 >>= 1;
        v29 = v19;
        ++v20;
        --v21;
      }

      while (v21);
      ++v17;
      v16 += 64;
    }

    while (v17 != v18);
  }

  v22 = [a1 alloc];
  v23 = [v22 _initWithBucketCount:v26 hashFunctionCount:v25 seed:v27 indexes:v13];

LABEL_24:

  return v23;
}

- (BOOL)writeToFile:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v8 = a3;
  v19 = 0;
  v9 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v18 = 33;
  [v9 appendBytes:&v18 length:1];
  [v9 appendBytes:&v19 length:3];
  v17 = [(EFBloomFilter *)self seed];
  [v9 appendBytes:&v17 length:8];
  v16 = [(EFBloomFilter *)self bucketCount];
  [v9 appendBytes:&v16 length:8];
  v15 = [(EFBloomFilter *)self hashFunctionCount];
  [v9 appendBytes:&v15 length:1];
  [v9 appendBytes:&v19 length:3];
  v10 = [(NSIndexSet *)self->_indexes copy];
  [(EFBloomFilter *)self bucketCount];
  v11 = v9;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v25[3] = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __appendIndexesToData_block_invoke;
  v20[3] = &unk_1E82487F8;
  v22 = v25;
  v23 = &v26;
  v24 = 0;
  v12 = v11;
  v21 = v12;
  [v10 enumerateIndexesUsingBlock:v20];
  if (v27[3])
  {
    [v12 appendBytes:v27 + 3 length:8];
  }

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v26, 8);

  v13 = [v12 writeToURL:v8 options:a4 error:a5];
  return v13;
}

- (BOOL)mayContainString:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __34__EFBloomFilter_mayContainString___block_invoke;
  v7[3] = &unk_1E82487A8;
  v8 = v4;
  v5 = v4;
  LOBYTE(self) = checkValueWithBlock(self, v7);

  return self;
}

unint64_t __34__EFBloomFilter_mayContainString___block_invoke(uint64_t a1, uint64_t a2, unint64_t *a3, _DWORD *a4)
{
  result = EFMurmurHash3String(*(a1 + 32), a2, a4);
  *a3 = result;
  return result;
}

- (BOOL)mayContainData:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__EFBloomFilter_mayContainData___block_invoke;
  v7[3] = &unk_1E82487A8;
  v8 = v4;
  v5 = v4;
  LOBYTE(self) = checkValueWithBlock(self, v7);

  return self;
}

unint64_t __32__EFBloomFilter_mayContainData___block_invoke(uint64_t a1, uint64_t a2, unint64_t *a3, _DWORD *a4)
{
  result = EFMurmurHash3Data(*(a1 + 32), a2, a4);
  *a3 = result;
  return result;
}

@end