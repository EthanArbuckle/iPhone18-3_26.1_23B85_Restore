@interface _DPGaussianPRNG
+ (BOOL)generateGaussianFloatsWithMean:(double)a3 stddev:(double)a4 x:(int)a5 y:(int)a6 out1:(float *)a7 out2:(float *)a8;
+ (id)generateSeed;
+ (id)randomFloatVectorFromSeed:(id)a3 length:(unint64_t)a4 mean:(double)a5 stddev:(double)a6;
+ (id)randomZeroMeanFloatVectorWithLength:(unint64_t)a3 stddev:(double)a4;
@end

@implementation _DPGaussianPRNG

+ (id)randomFloatVectorFromSeed:(id)a3 length:(unint64_t)a4 mean:(double)a5 stddev:(double)a6
{
  v10 = a3;
  v11 = [v10 length];
  if (v11 == [a1 seedLength])
  {
    v12 = [v10 subdataWithRange:{0, 16}];
    v13 = [v10 subdataWithRange:{16, 16}];
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
      v34 = [MEMORY[0x277CBEB28] dataWithLength:4 * a4];
      v18 = [v34 mutableBytes];
      v19 = (a4 >> 2) & 0xFFFFFFFFFFFFFFFLL;
      if (v19 >= 0xFFF)
      {
        v19 = 4095;
      }

      v20 = 16 * v19 + 16;
      v33 = [MEMORY[0x277CBEB28] dataWithLength:v20];
      v21 = [v33 mutableBytes];
      if (a4)
      {
        v22 = v21;
        v23 = 0;
        v37 = (v21 + 4);
        while (1)
        {
          bzero(v22, v20);
          v24 = CCCryptorUpdate(cryptorRef, v22, v20, v22, v20, 0);
          if (v24)
          {
            break;
          }

          if (v23 < a4)
          {
            v25 = v37;
            v26 = 2;
            do
            {
              v27 = *(v25 - 1);
              v28 = *v25;
              v38 = 0;
              if ([a1 generateGaussianFloatsWithMean:v27 stddev:v28 x:&v38 + 4 y:&v38 out1:a5 out2:a6])
              {
                v29 = v23 + 1;
                *(v18 + 4 * v23) = HIDWORD(v38);
                if (v23 + 1 >= a4)
                {
                  ++v23;
                }

                else
                {
                  v23 += 2;
                  *(v18 + 4 * v29) = v38;
                }
              }

              if (v26 >= (v20 >> 2) - 1)
              {
                break;
              }

              v25 += 2;
              v26 += 2;
            }

            while (v23 < a4);
          }

          if (v23 >= a4)
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
      [_DPGaussianPRNG randomFloatVectorFromSeed:v10 length:a1 mean:v12 stddev:?];
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

+ (BOOL)generateGaussianFloatsWithMean:(double)a3 stddev:(double)a4 x:(int)a5 y:(int)a6 out1:(float *)a7 out2:(float *)a8
{
  v8 = a5 & 0x7FFFFFFF;
  v9 = a6 & 0x7FFFFFFF;
  v10 = v9 * v9 + v8 * v8;
  if (v10 - 1 > 0x3FFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  v15 = (a6 != 0) | (a6 >> 31);
  v16 = (a5 != 0) | (a5 >> 31);
  v17 = vcvtd_n_f64_u64(v10, 0x3EuLL);
  v18 = sqrt(log(v17) * -2.0 / v17);
  v19 = a3 + a4 * (v8 * v16 / 2147483650.0 * v18);
  *a7 = v19;
  *&v18 = a3 + a4 * (v9 * v15 / 2147483650.0 * v18);
  *a8 = *&v18;
  v20 = *a7;
  return 1;
}

+ (id)randomZeroMeanFloatVectorWithLength:(unint64_t)a3 stddev:(double)a4
{
  v6 = [objc_opt_class() generateSeed];
  v7 = [objc_opt_class() randomFloatVectorFromSeed:v6 length:a3 mean:0.0 stddev:a4];

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