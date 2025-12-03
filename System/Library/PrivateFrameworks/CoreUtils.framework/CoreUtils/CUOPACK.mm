@interface CUOPACK
+ (id)decodeData:(id)data flags:(unsigned int)flags error:(id *)error;
+ (id)encodeObject:(id)object flags:(unsigned int)flags error:(id *)error;
@end

@implementation CUOPACK

+ (id)decodeData:(id)data flags:(unsigned int)flags error:(id *)error
{
  v17 = -6700;
  v6 = OPACKDecodeData(data, flags, &v17);
  v12 = v6;
  if (v6)
  {
    v13 = v6;
  }

  else if (error)
  {
    if (v17)
    {
      v15 = v17;
    }

    else
    {
      v15 = 4294960596;
    }

    *error = NSErrorF_safe(*MEMORY[0x1E696A768], v15, "OPACK decode failed", v7, v8, v9, v10, v11, v16);
  }

  return v12;
}

+ (id)encodeObject:(id)object flags:(unsigned int)flags error:(id *)error
{
  v17 = -6700;
  DataMutable = OPACKEncoderCreateDataMutable(object, flags, &v17);
  v12 = DataMutable;
  if (DataMutable)
  {
    v13 = DataMutable;
  }

  else if (error)
  {
    if (v17)
    {
      v15 = v17;
    }

    else
    {
      v15 = 4294960596;
    }

    *error = NSErrorF_safe(*MEMORY[0x1E696A768], v15, "OPACK encode failed", v7, v8, v9, v10, v11, v16);
  }

  return v12;
}

@end