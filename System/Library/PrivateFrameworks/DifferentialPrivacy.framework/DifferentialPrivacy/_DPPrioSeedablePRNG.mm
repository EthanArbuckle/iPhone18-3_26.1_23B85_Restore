@interface _DPPrioSeedablePRNG
+ (id)generateSeed;
+ (id)randomDataFromSeed:(id)seed length:(unint64_t)length;
@end

@implementation _DPPrioSeedablePRNG

+ (id)randomDataFromSeed:(id)seed length:(unint64_t)length
{
  seedCopy = seed;
  v7 = [seedCopy length];
  if (v7 == [self seedLength])
  {
    v8 = [seedCopy subdataWithRange:{0, 16}];
    v9 = [seedCopy subdataWithRange:{16, 16}];
    cryptorRef = 0;
    v10 = CCCryptorCreateWithMode(0, 4u, 0, 0, [v9 bytes], -[NSObject bytes](v8, "bytes"), 0x10uLL, 0, 0, 0, 2u, &cryptorRef);
    if (v10)
    {
      v11 = v10;
      v12 = +[_DPLog framework];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [_DPGaussianPRNG randomFloatVectorFromSeed:v11 length:v12 mean:? stddev:?];
      }

      v13 = 0;
    }

    else
    {
      v26 = v9;
      v27 = v8;
      v25 = [MEMORY[0x277CBEB28] dataWithLength:4 * length];
      mutableBytes = [v25 mutableBytes];
      v15 = (length >> 2) & 0xFFFFFFFFFFFFFFFLL;
      if (v15 >= 0xFFF)
      {
        v15 = 4095;
      }

      v16 = 16 * v15 + 16;
      v17 = [MEMORY[0x277CBEB28] dataWithLength:v16];
      if (length)
      {
        v18 = 0;
        while (1)
        {
          bzero([v17 mutableBytes], objc_msgSend(v17, "length"));
          v19 = CCCryptorUpdate(cryptorRef, [v17 bytes], objc_msgSend(v17, "length"), objc_msgSend(v17, "mutableBytes"), objc_msgSend(v17, "length"), 0);
          if (v19)
          {
            break;
          }

          if (v18 < length)
          {
            v20 = 0;
            do
            {
              v21 = *([v17 bytes] + v20);
              if (v21 <= 0xFFF00000)
              {
                *(mutableBytes + 4 * v18++) = v21;
              }

              v20 += 4;
            }

            while (v20 < v16 && v18 < length);
          }

          if (v18 >= length)
          {
            goto LABEL_21;
          }
        }

        v22 = v19;
        v23 = +[_DPLog framework];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [_DPGaussianPRNG randomFloatVectorFromSeed:v22 length:v23 mean:? stddev:?];
        }

        CCCryptorRelease(cryptorRef);
        v13 = 0;
        v9 = v26;
        v8 = v27;
        v12 = v25;
      }

      else
      {
LABEL_21:
        CCCryptorRelease(cryptorRef);
        v12 = v25;
        v13 = v25;
        v9 = v26;
        v8 = v27;
      }
    }
  }

  else
  {
    v8 = +[_DPLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [_DPPrioSeedablePRNG randomDataFromSeed:v8 length:?];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)generateSeed
{
  v2 = +[_DPPrioSeedablePRNG seedLength];
  v3 = [MEMORY[0x277CBEB28] dataWithLength:v2];
  arc4random_buf([v3 mutableBytes], v2);

  return v3;
}

@end