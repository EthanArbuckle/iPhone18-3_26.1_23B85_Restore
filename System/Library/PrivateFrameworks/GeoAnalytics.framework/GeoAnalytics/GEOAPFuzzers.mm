@interface GEOAPFuzzers
+ (double)fuzzTime:(double)a3 bySeconds:(unsigned int)a4;
+ (id)saltedHashWithSalt:(unint64_t)a3 value:(id)a4;
+ (id)twoDecimalLocation:(id)a3;
+ (unint64_t)bucketNavDurationTime:(unint64_t)a3;
+ (unsigned)bucket1800:(unsigned int)a3;
+ (unsigned)bucket21:(unsigned int)a3;
+ (unsigned)max11:(unsigned int)a3;
+ (unsigned)max2:(unsigned int)a3;
+ (unsigned)max6:(unsigned int)a3;
@end

@implementation GEOAPFuzzers

+ (id)saltedHashWithSalt:(unint64_t)a3 value:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  data = a3;
  v4 = a4;
  v5 = v4;
  if (v4)
  {
    *len = 64;
    [v4 getBytes:v24 maxLength:64 usedLength:len encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v4, "length"), 0}];
    memset(&c, 0, sizeof(c));
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, &data, 8u);
    CC_SHA256_Update(&c, v24, len[0]);
    CC_SHA256_Final(md, &c);
    v6 = 0;
    v7 = v23;
    v8.i64[0] = 0xF0F0F0F0F0F0F0FLL;
    v8.i64[1] = 0xF0F0F0F0F0F0F0FLL;
    v9.i64[0] = 0xA0A0A0A0A0A0A0A0;
    v9.i64[1] = 0xA0A0A0A0A0A0A0A0;
    v10.i64[0] = 0x3030303030303030;
    v10.i64[1] = 0x3030303030303030;
    v11.i64[0] = 0x3737373737373737;
    v11.i64[1] = 0x3737373737373737;
    v12.i64[0] = 0xA0A0A0A0A0A0A0ALL;
    v12.i64[1] = 0xA0A0A0A0A0A0A0ALL;
    do
    {
      v13 = *&md[v6];
      v14 = vandq_s8(v13, v8);
      v15.i64[0] = 0x3030303030303030;
      v15.i64[1] = 0x3030303030303030;
      v16.i64[0] = 0x3737373737373737;
      v16.i64[1] = 0x3737373737373737;
      v28.val[0] = vbslq_s8(vcgtq_u8(v9, v13), vsraq_n_u8(v15, v13, 4uLL), vsraq_n_u8(v16, v13, 4uLL));
      v28.val[1] = vbslq_s8(vcgtq_u8(v12, v14), vorrq_s8(v14, v10), vaddq_s8(v14, v11));
      vst2q_s8(v7, v28);
      v7 += 32;
      v6 += 16;
    }

    while (v6 != 32);
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v23 length:64 encoding:4];
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

+ (unint64_t)bucketNavDurationTime:(unint64_t)a3
{
  v3 = 600;
  v4 = 1010;
  v5 = 1800;
  v6 = 2669;
  if (a3 > 0xA6D)
  {
    v6 = 3985;
  }

  if (a3 >= 0x709)
  {
    v5 = v6;
  }

  if (a3 >= 0x3F3)
  {
    v4 = v5;
  }

  if (a3 >= 0x259)
  {
    v3 = v4;
  }

  if (a3 >= 0x126)
  {
    return v3;
  }

  else
  {
    return 293;
  }
}

+ (unsigned)bucket1800:(unsigned int)a3
{
  if (a3 < 7)
  {
    return 0;
  }

  if (a3 < 0x1F)
  {
    return 6;
  }

  if (a3 < 0x3D)
  {
    return 30;
  }

  if (a3 < 0x79)
  {
    return 60;
  }

  if (a3 < 0xB5)
  {
    return 120;
  }

  if (a3 < 0xF1)
  {
    return 180;
  }

  if (a3 < 0x12D)
  {
    return 240;
  }

  if (a3 < 0x169)
  {
    return 300;
  }

  if (a3 < 0x1A5)
  {
    return 360;
  }

  if (a3 < 0x1E1)
  {
    return 420;
  }

  if (a3 < 0x21D)
  {
    return 480;
  }

  if (a3 < 0x259)
  {
    return 540;
  }

  if (a3 < 0x385)
  {
    return 600;
  }

  if (a3 < 0x4B1)
  {
    return 900;
  }

  if (a3 < 0x5DD)
  {
    return 1200;
  }

  if (a3 <= 0x708)
  {
    return 1500;
  }

  return 1800;
}

+ (unsigned)bucket21:(unsigned int)a3
{
  if (a3 >= 0x15)
  {
    v3 = 21;
  }

  else
  {
    v3 = 16;
  }

  if (a3 >= 0x10)
  {
    v4 = v3;
  }

  else
  {
    v4 = 11;
  }

  if (a3 >= 0xB)
  {
    return v4;
  }

  else
  {
    return a3;
  }
}

+ (unsigned)max11:(unsigned int)a3
{
  if (a3 >= 0xB)
  {
    return 11;
  }

  else
  {
    return a3;
  }
}

+ (unsigned)max6:(unsigned int)a3
{
  if (a3 >= 6)
  {
    return 6;
  }

  else
  {
    return a3;
  }
}

+ (unsigned)max2:(unsigned int)a3
{
  if (a3 >= 2)
  {
    return 2;
  }

  else
  {
    return a3;
  }
}

+ (id)twoDecimalLocation:(id)a3
{
  if (a3)
  {
    [a3 coordinate];
    GEOCoordinateWithReducedPrecision();
    v6 = [objc_alloc(MEMORY[0x1E69A1E50]) initWithCoordinate:{v4, v5}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (double)fuzzTime:(double)a3 bySeconds:(unsigned int)a4
{
  v4 = a4;
  v5 = a3 % a4;
  if (v5)
  {
    v6 = a3 < 0.0;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    v4 = 0;
  }

  return floor(a3 - (v4 + v5));
}

@end