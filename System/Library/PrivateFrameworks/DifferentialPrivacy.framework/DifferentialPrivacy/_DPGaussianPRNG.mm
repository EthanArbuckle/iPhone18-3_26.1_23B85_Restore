@interface _DPGaussianPRNG
+ (BOOL)generateGaussianFloatsWithMean:(double)mean stddev:(double)stddev x:(int)x y:(int)y out1:(float *)out1 out2:(float *)out2;
+ (id)generateSeed;
+ (id)randomFloatVectorFromSeed:(id)seed length:(unint64_t)length mean:(double)mean stddev:(double)stddev;
+ (id)randomZeroMeanFloatVectorWithLength:(unint64_t)length stddev:(double)stddev;
@end

@implementation _DPGaussianPRNG

+ (id)randomFloatVectorFromSeed:(id)seed length:(unint64_t)length mean:(double)mean stddev:(double)stddev
{
  seedCopy = seed;
  v11 = [seedCopy length];
  if (v11 == [self seedLength])
  {
    v12 = [seedCopy subdataWithRange:{0, 16}];
    v13 = [seedCopy subdataWithRange:{16, 16}];
    cryptorRef = 0;
    v14 = CCCryptorCreateWithMode(0, 4u, 0, 0, [v13 bytes], -[NSObject bytes](v12, "bytes"), 0x10uLL, 0, 0, 0, 2u, &cryptorRef);
    if (v14)
    {
      v15 = v14;
      v16 = +[_DPLog framework];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [_DPGaussianPRNG randomFloatVectorFromSeed:v15 length:v16 mean:? stddev:?];
      }

      v17 = 0;
    }

    else
    {
      v35 = v13;
      v36 = v12;
      v34 = [MEMORY[0x277CBEB28] dataWithLength:4 * length];
      mutableBytes = [v34 mutableBytes];
      v19 = (length >> 2) & 0xFFFFFFFFFFFFFFFLL;
      if (v19 >= 0xFFF)
      {
        v19 = 4095;
      }

      v20 = 16 * v19 + 16;
      v33 = [MEMORY[0x277CBEB28] dataWithLength:v20];
      mutableBytes2 = [v33 mutableBytes];
      if (length)
      {
        v22 = mutableBytes2;
        v23 = 0;
        v37 = (mutableBytes2 + 4);
        while (1)
        {
          bzero(v22, v20);
          v24 = CCCryptorUpdate(cryptorRef, v22, v20, v22, v20, 0);
          if (v24)
          {
            break;
          }

          if (v23 < length)
          {
            v25 = v37;
            v26 = 2;
            do
            {
              v27 = *(v25 - 1);
              v28 = *v25;
              v38 = 0;
              if ([self generateGaussianFloatsWithMean:v27 stddev:v28 x:&v38 + 4 y:&v38 out1:mean out2:stddev])
              {
                v29 = v23 + 1;
                *(mutableBytes + 4 * v23) = HIDWORD(v38);
                if (v23 + 1 >= length)
                {
                  ++v23;
                }

                else
                {
                  v23 += 2;
                  *(mutableBytes + 4 * v29) = v38;
                }
              }

              if (v26 >= (v20 >> 2) - 1)
              {
                break;
              }

              v25 += 2;
              v26 += 2;
            }

            while (v23 < length);
          }

          if (v23 >= length)
          {
            goto LABEL_23;
          }
        }

        v30 = v24;
        v31 = +[_DPLog framework];
        v12 = v36;
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [_DPGaussianPRNG randomFloatVectorFromSeed:v30 length:v31 mean:? stddev:?];
        }

        CCCryptorRelease(cryptorRef);
        v17 = 0;
        v16 = v34;
        v13 = v35;
      }

      else
      {
LABEL_23:
        CCCryptorRelease(cryptorRef);
        v16 = v34;
        v17 = v34;
        v13 = v35;
        v12 = v36;
      }
    }
  }

  else
  {
    v12 = +[_DPLog framework];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [_DPGaussianPRNG randomFloatVectorFromSeed:seedCopy length:self mean:v12 stddev:?];
    }

    v17 = 0;
  }

  return v17;
}

+ (id)generateSeed
{
  v2 = +[_DPGaussianPRNG seedLength];
  v3 = [MEMORY[0x277CBEB28] dataWithLength:v2];
  arc4random_buf([v3 mutableBytes], v2);

  return v3;
}

+ (BOOL)generateGaussianFloatsWithMean:(double)mean stddev:(double)stddev x:(int)x y:(int)y out1:(float *)out1 out2:(float *)out2
{
  v8 = x & 0x7FFFFFFF;
  v9 = y & 0x7FFFFFFF;
  v10 = v9 * v9 + v8 * v8;
  if (v10 - 1 > 0x3FFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  v15 = (y != 0) | (y >> 31);
  v16 = (x != 0) | (x >> 31);
  v17 = vcvtd_n_f64_u64(v10, 0x3EuLL);
  v18 = sqrt(log(v17) * -2.0 / v17);
  v19 = mean + stddev * (v8 * v16 / 2147483650.0 * v18);
  *out1 = v19;
  *&v18 = mean + stddev * (v9 * v15 / 2147483650.0 * v18);
  *out2 = *&v18;
  v20 = *out1;
  return 1;
}

+ (id)randomZeroMeanFloatVectorWithLength:(unint64_t)length stddev:(double)stddev
{
  generateSeed = [objc_opt_class() generateSeed];
  v7 = [objc_opt_class() randomFloatVectorFromSeed:generateSeed length:length mean:0.0 stddev:stddev];

  return v7;
}

+ (void)randomFloatVectorFromSeed:(NSObject *)a3 length:mean:stddev:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 134218240;
  v7 = [a1 length];
  v8 = 2048;
  v9 = [a2 seedLength];
  _os_log_error_impl(&dword_22622D000, a3, OS_LOG_TYPE_ERROR, "_DPGaussianPRNG's seed is with wrong length %lu, should be %lu", &v6, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)randomFloatVectorFromSeed:(int)a1 length:(NSObject *)a2 mean:stddev:.cold.2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "Failed to create cryptor %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)randomFloatVectorFromSeed:(int)a1 length:(NSObject *)a2 mean:stddev:.cold.3(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_22622D000, a2, OS_LOG_TYPE_ERROR, "Failed call to CCCryptorUpdate %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

@end