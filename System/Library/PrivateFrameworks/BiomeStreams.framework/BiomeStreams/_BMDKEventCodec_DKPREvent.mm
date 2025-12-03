@interface _BMDKEventCodec_DKPREvent
- (id)decodeWithProto:(id)proto;
- (id)decodeWithProtoData:(id)data;
- (id)encodeAsProto:(id)proto;
@end

@implementation _BMDKEventCodec_DKPREvent

- (id)encodeAsProto:(id)proto
{
  dkEvent = [proto dkEvent];
  if (objc_opt_respondsToSelector())
  {
    [dkEvent toPBCodableUseStructuredMetadata:1];
  }

  else
  {
    [dkEvent toPBCodable];
  }
  v4 = ;

  return v4;
}

- (id)decodeWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    get_DKPREventClass();
    if (objc_opt_isKindOfClass())
    {
      get_DKEventClass_1();
      v5 = objc_opt_respondsToSelector();
      DKEventClass_1 = get_DKEventClass_1();
      if (v5)
      {
        [DKEventClass_1 fromPBCodable:protoCopy skipMetadata:{-[BMDKEventCodec decodeMetadata](self, "decodeMetadata") ^ 1}];
      }

      else
      {
        [DKEventClass_1 fromPBCodable:protoCopy];
      }
      v9 = ;
      v8 = [[BMDKEvent alloc] initWithDKEvent:v9];

      goto LABEL_11;
    }

    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [_BMDKEventCodec_DKPREvent decodeWithProto:v7];
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)decodeWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [objc_alloc(get_DKPREventClass()) initWithData:dataCopy];

    v6 = [(_BMDKEventCodec_DKPREvent *)self decodeWithProto:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end