@interface UARPMetaDataTLVBackDeploy
+ (id)metaDataTable;
+ (id)tlvFromKey:(id)key value:(id)value;
- (UARPMetaDataTLVBackDeploy)init;
- (UARPMetaDataTLVBackDeploy)initWithType:(unsigned int)type length:(unsigned int)length value:(void *)value;
- (id)generateTLV;
@end

@implementation UARPMetaDataTLVBackDeploy

- (UARPMetaDataTLVBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPMetaDataTLVBackDeploy;
  return [(UARPMetaDataTLVBackDeploy *)&v3 init];
}

- (UARPMetaDataTLVBackDeploy)initWithType:(unsigned int)type length:(unsigned int)length value:(void *)value
{
  v13.receiver = self;
  v13.super_class = UARPMetaDataTLVBackDeploy;
  v8 = [(UARPMetaDataTLVBackDeploy *)&v13 init];
  v9 = v8;
  if (v8)
  {
    v8->_tlvType = type;
    v8->_tlvLength = length;
    v10 = [NSData dataWithBytes:value length:length];
    tlvValue = v9->_tlvValue;
    v9->_tlvValue = v10;
  }

  return v9;
}

+ (id)tlvFromKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  v6 = +[UARPMetaDataTLVBackDeploy metaDataTable];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"Name"];
        if (![keyCopy caseInsensitiveCompare:v13])
        {
          v14 = [v12 objectForKeyedSubscript:@"Value"];
          v15 = [v14 unsignedLongValue] + 2001563392;
          if (v15 <= 0x35 && ((0x3F036601FFFFFFuLL >> v15) & 1) != 0)
          {
            v16 = [(__objc2_class *)*off_1000AB588[v15] tlvFromPropertyListValue:valueCopy];
            v17 = v9;
            v9 = v16;
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)metaDataTable
{
  if (qword_1000C90D0 != -1)
  {
    sub_10003D380();
  }

  v3 = qword_1000C90C8;

  return v3;
}

- (id)generateTLV
{
  v3 = objc_alloc_init(NSMutableData);
  v7 = uarpHtonl(self->_tlvType);
  [v3 appendBytes:&v7 length:4];
  v6 = uarpHtonl(self->_tlvLength);
  [v3 appendBytes:&v6 length:4];
  [v3 appendData:self->_tlvValue];
  v4 = [NSData dataWithData:v3];

  return v4;
}

@end