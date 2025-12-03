@interface BCSHashService
+ (BOOL)isValidFullHash:(id)hash;
+ (id)SHA256HashForInputString:(id)string;
+ (id)_SHA256DataForInputString:(uint64_t)string;
+ (int64_t)SHA256TruncatedHashForInputString:(id)string includedBytes:(unint64_t)bytes;
+ (int64_t)truncatedHashForFullHash:(id)hash includedBytes:(unint64_t)bytes;
+ (uint64_t)_truncatedHashForFullHashData:(unint64_t)data includedBytes:;
@end

@implementation BCSHashService

+ (int64_t)SHA256TruncatedHashForInputString:(id)string includedBytes:(unint64_t)bytes
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v7 = [(BCSHashService *)self _SHA256DataForInputString:stringCopy];
    v8 = [BCSHashService _truncatedHashForFullHashData:v7 includedBytes:bytes];
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

+ (id)_SHA256DataForInputString:(uint64_t)string
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

+ (uint64_t)_truncatedHashForFullHashData:(unint64_t)data includedBytes:
{
  v4 = a2;
  objc_opt_self();
  if ([v4 length])
  {
    v8 = 0;
    if (data >= 8)
    {
      dataCopy = 8;
    }

    else
    {
      dataCopy = data;
    }

    [v4 getBytes:&v8 length:dataCopy];
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

+ (int64_t)truncatedHashForFullHash:(id)hash includedBytes:(unint64_t)bytes
{
  v5 = [(NSData *)MEMORY[0x277CBEA90] bcs_dataWithHexString:hash];
  if (v5)
  {
    v6 = [BCSHashService _truncatedHashForFullHashData:v5 includedBytes:bytes];
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

+ (id)SHA256HashForInputString:(id)string
{
  v3 = [(BCSHashService *)self _SHA256DataForInputString:string];
  bytes = [v3 bytes];
  v5 = [v3 length];
  for (i = [MEMORY[0x277CCAB68] stringWithCapacity:2 * v5];
  {
    v7 = *bytes++;
    [i appendFormat:@"%02x", v7];
  }

  v8 = [i copy];

  return v8;
}

+ (BOOL)isValidFullHash:(id)hash
{
  v3 = [(NSData *)MEMORY[0x277CBEA90] bcs_dataWithHexString:hash];
  v4 = v3 != 0;

  return v4;
}

@end