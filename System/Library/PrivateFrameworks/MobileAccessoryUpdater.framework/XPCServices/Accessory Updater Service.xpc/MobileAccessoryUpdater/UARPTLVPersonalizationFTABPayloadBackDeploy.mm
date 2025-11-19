@interface UARPTLVPersonalizationFTABPayloadBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVPersonalizationFTABPayloadBackDeploy)init;
- (id)description;
- (void)setTLVs:(id)a3;
@end

@implementation UARPTLVPersonalizationFTABPayloadBackDeploy

- (UARPTLVPersonalizationFTABPayloadBackDeploy)init
{
  v6.receiver = self;
  v6.super_class = UARPTLVPersonalizationFTABPayloadBackDeploy;
  v2 = [(UARPMetaDataTLVBackDeploy *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = *(v2 + 28);
    *(v2 + 28) = v3;
  }

  return v2;
}

- (void)setTLVs:(id)a3
{
  v4 = a3;
  v5 = [v4 bytes];
  if ([v4 length])
  {
    v6 = 0;
    do
    {
      if (v6 + 4 > [v4 length])
      {
        break;
      }

      v7 = uarpNtohl(*&v5[v6]);
      v8 = v6 + 8;
      if (v6 + 8 > [v4 length])
      {
        break;
      }

      v9 = uarpNtohl(*&v5[v6 + 4]);
      v6 = v8 + v9;
      if (v6 > [v4 length])
      {
        break;
      }

      v10 = [UARPMetaDataTLVBackDeploy tlvFromType:v7 length:v9 value:&v5[v8]];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      [*(&self->super._tlvLength + 1) addObject:v10];
    }

    while (v6 < [v4 length]);
  }
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationFTABPayloadBackDeploy metaDataTableEntry];
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:@"Name"];
  [v4 appendFormat:@"<%@: \r", v5];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(&self->super._tlvLength + 1);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v4 appendFormat:@"        <%@>\r", *(*(&v13 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [v4 appendFormat:@"    >"];
  v11 = [NSString stringWithString:v4];

  return v11;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalization FTAB Payload";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationFTABPayloadBackDeploy tlvType]);
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4
{
  v4 = [NSData dataWithBytes:a4 length:a3];
  v5 = objc_opt_new();
  [v5 setTLVs:v4];

  return v5;
}

@end