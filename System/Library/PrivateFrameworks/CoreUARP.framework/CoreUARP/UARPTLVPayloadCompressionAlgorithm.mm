@interface UARPTLVPayloadCompressionAlgorithm
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPayloadCompressionAlgorithm)init;
- (id)generateTLV;
- (id)tlvValue;
- (void)setCompressionAlgorithm:(int)algorithm;
@end

@implementation UARPTLVPayloadCompressionAlgorithm

- (UARPTLVPayloadCompressionAlgorithm)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPayloadCompressionAlgorithm;
  result = [(UARPMetaDataTLV *)&v3 init];
  if (result)
  {
    *(&result->super._tlvLength + 1) = -858619636;
    result->_tlvType = 4;
  }

  return result;
}

- (void)setCompressionAlgorithm:(int)algorithm
{
  obj = self;
  objc_sync_enter(obj);
  obj->_tlvLength = algorithm;
  objc_sync_exit(obj);
}

- (id)generateTLV
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB28]);
  v8 = uarpHtonl(*(&self->super._tlvLength + 1));
  [v3 appendBytes:&v8 length:4];
  v7 = uarpHtonl(self->_tlvType);
  [v3 appendBytes:&v7 length:4];
  tlvValue = [(UARPTLVPayloadCompressionAlgorithm *)self tlvValue];
  [v3 appendData:tlvValue];

  v5 = [MEMORY[0x277CBEA90] dataWithData:v3];

  return v5;
}

- (id)tlvValue
{
  v4 = uarpHtonl(self->_tlvLength);
  v2 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:&v4 length:4];

  return v2;
}

+ (id)metaDataTableEntry
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:@"Payload Compression Algorithm" forKeyedSubscript:@"Name"];
  [v2 setObject:&unk_2859CACB8 forKeyedSubscript:@"Value"];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v2];

  return v3;
}

+ (id)tlvFromPropertyListValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = valueCopy;
    v5 = objc_opt_new();
    if ([v4 compare:@"LZBitmapFast2"])
    {
      v6 = 1;
    }

    else
    {
      v6 = 2 * ([v4 compare:@"LZBitmap2"] != 0);
    }

    [v5 setCompressionAlgorithm:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  if (length == 4)
  {
    v5 = objc_opt_new();
    [v5 setCompressionAlgorithm:uarpHtonl(*value)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end