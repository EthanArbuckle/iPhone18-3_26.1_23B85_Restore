@interface BMDKEventCodec
+ (id)codecWithVersion:(unsigned int)version;
- (BMDKEventCodec)init;
- (id)encodeAsProtoData:(id)data;
@end

@implementation BMDKEventCodec

- (BMDKEventCodec)init
{
  v3.receiver = self;
  v3.super_class = BMDKEventCodec;
  result = [(BMDKEventCodec *)&v3 init];
  if (result)
  {
    result->_decodeMetadata = 1;
  }

  return result;
}

+ (id)codecWithVersion:(unsigned int)version
{
  if (version == 2)
  {
    v4 = _BMDKEventCodec_DKPREvent;
    goto LABEL_5;
  }

  if (version == 1)
  {
    v4 = _BMDKEventCodec_BMPBDKEvent;
LABEL_5:
    v5 = objc_alloc_init(v4);
    goto LABEL_9;
  }

  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(BMDKEventCodec *)version codecWithVersion:v6];
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (id)encodeAsProtoData:(id)data
{
  v3 = [(BMDKEventCodec *)self encodeAsProto:data];
  data = [v3 data];

  return data;
}

@end