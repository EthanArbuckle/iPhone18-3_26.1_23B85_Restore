@interface BCSHashService
+ (BOOL)isValidFullHash:(id)a3;
+ (id)SHA256HashForInputString:(id)a3;
+ (id)_SHA256DataForInputString:(uint64_t)a1;
+ (int64_t)SHA256TruncatedHashForInputString:(id)a3 includedBytes:(unint64_t)a4;
+ (int64_t)truncatedHashForFullHash:(id)a3 includedBytes:(unint64_t)a4;
+ (uint64_t)_truncatedHashForFullHashData:(unint64_t)a3 includedBytes:;
@end

@implementation BCSHashService

+ (int64_t)SHA256TruncatedHashForInputString:(id)a3 includedBytes:(unint64_t)a4
{
  v6 = a3;
  if ([v6 length])
  {
    v7 = [(BCSHashService *)a1 _SHA256DataForInputString:v6];
    v8 = [BCSHashService _truncatedHashForFullHashData:v7 includedBytes:a4];
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

+ (id)_SHA256DataForInputString:(uint64_t)a1
{
  v2 = a2;
  objc_opt_self();
  if (v2)
  {
    v3 = [v2 cStringUsingEncoding:4];
    v4 = [MEMORY[0x277CBEA90] dataWithBytes:v3 length:strlen(v3)];
    v5 = [MEMORY[0x277CBEB28] dataWithLength:32];
    CC_SHA256([v4 bytes], objc_msgSend(v4, "length"), objc_msgSend(v5, "mutableBytes"));
    v6 = [v5 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (uint64_t)_truncatedHashForFullHashData:(unint64_t)a3 includedBytes:
{
  v4 = a2;
  objc_opt_self();
  if ([v4 length])
  {
    v8 = 0;
    if (a3 >= 8)
    {
      v5 = 8;
    }

    else
    {
      v5 = a3;
    }

    [v4 getBytes:&v8 length:v5];
    if (v8 >= 0)
    {
      v6 = v8;
    }

    else
    {
      v6 = -v8;
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

+ (int64_t)truncatedHashForFullHash:(id)a3 includedBytes:(unint64_t)a4
{
  v5 = [(NSData *)MEMORY[0x277CBEA90] bcs_dataWithHexString:a3];
  if (v5)
  {
    v6 = [BCSHashService _truncatedHashForFullHashData:v5 includedBytes:a4];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

+ (id)SHA256HashForInputString:(id)a3
{
  v3 = [(BCSHashService *)a1 _SHA256DataForInputString:a3];
  v4 = [v3 bytes];
  v5 = [v3 length];
  for (i = [MEMORY[0x277CCAB68] stringWithCapacity:2 * v5];
  {
    v7 = *v4++;
    [i appendFormat:@"%02x", v7];
  }

  v8 = [i copy];

  return v8;
}

+ (BOOL)isValidFullHash:(id)a3
{
  v3 = [(NSData *)MEMORY[0x277CBEA90] bcs_dataWithHexString:a3];
  v4 = v3 != 0;

  return v4;
}

@end