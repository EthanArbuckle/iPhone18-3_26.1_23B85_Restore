@interface _BMDKEventCodec_BMPBDKEvent
- (id)decodeWithProto:(id)proto;
- (id)decodeWithProtoData:(id)data;
- (id)encodeAsProto:(id)proto;
@end

@implementation _BMDKEventCodec_BMPBDKEvent

- (id)encodeAsProto:(id)proto
{
  protoCopy = proto;
  v4 = objc_opt_new();
  v5 = MEMORY[0x1E696ACC8];
  dkEvent = [protoCopy dkEvent];

  v18 = 0;
  v7 = [v5 archivedDataWithRootObject:dkEvent requiringSecureCoding:1 error:&v18];
  v8 = v18;

  if (v8)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(_BMDKEventCodec_BMPBDKEvent *)v8 encodeAsProto:v9, v10, v11, v12, v13, v14, v15];
    }

    v16 = 0;
  }

  else
  {
    [v4 setDkEvent:v7];
    v16 = v4;
  }

  return v16;
}

- (id)decodeWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
    v21 = 0;
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [_BMDKEventCodec_BMPBDKEvent decodeWithProto:v5];
    }

    v21 = 0;
    goto LABEL_25;
  }

  v5 = protoCopy;
  if (([v5 hasDkEvent]& 1) == 0)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [_BMDKEventCodec_BMPBDKEvent decodeWithProto:v13];
    }

    v21 = 0;
    goto LABEL_24;
  }

  v6 = MEMORY[0x1E695DFD8];
  v34 = 0;
  v35 = &v34;
  v36 = 0x2050000000;
  v7 = get_DKEventClass_softClass_3;
  v37 = get_DKEventClass_softClass_3;
  if (!get_DKEventClass_softClass_3)
  {
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __get_DKEventClass_block_invoke_3;
    v33[3] = &unk_1E6E52EB0;
    v33[4] = &v34;
    __get_DKEventClass_block_invoke_3(v33);
    v7 = v35[3];
  }

  v8 = v7;
  _Block_object_dispose(&v34, 8);
  v9 = [v6 setWithObject:objc_opt_class()];
  v10 = objc_alloc(MEMORY[0x1E696ACD0]);
  dkEvent = [v5 dkEvent];
  v32 = 0;
  v12 = [v10 initForReadingFromData:dkEvent error:&v32];
  v13 = v32;

  if (v13)
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(_BMDKEventCodec_BMPBDKEvent *)v13 decodeWithProto:v14, v15, v16, v17, v18, v19, v20];
    }
  }

  else
  {
    [v12 setRequiresSecureCoding:1];
    [v12 setDecodingFailurePolicy:1];
    if (objc_opt_respondsToSelector())
    {
      [v12 setDk_shouldSkipDecodingMetadata:{-[BMDKEventCodec decodeMetadata](self, "decodeMetadata") ^ 1}];
    }

    v22 = *MEMORY[0x1E696A508];
    v31 = 0;
    v14 = [v12 decodeTopLevelObjectOfClasses:v9 forKey:v22 error:&v31];
    v13 = v31;
    if (!v13)
    {
      v21 = [[BMDKEvent alloc] initWithDKEvent:v14];
      goto LABEL_23;
    }

    v23 = __biome_log_for_category();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [(_BMDKEventCodec_BMPBDKEvent *)v13 decodeWithProto:v23, v24, v25, v26, v27, v28, v29];
    }
  }

  v21 = 0;
LABEL_23:

LABEL_24:
LABEL_25:

LABEL_26:

  return v21;
}

- (id)decodeWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBDKEvent alloc] initWithData:dataCopy];

    v6 = [(_BMDKEventCodec_BMPBDKEvent *)self decodeWithProto:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end