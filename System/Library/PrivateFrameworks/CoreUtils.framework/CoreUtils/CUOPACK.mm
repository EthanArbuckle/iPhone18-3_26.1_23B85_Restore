@interface CUOPACK
+ (id)decodeData:(id)a3 flags:(unsigned int)a4 error:(id *)a5;
+ (id)encodeObject:(id)a3 flags:(unsigned int)a4 error:(id *)a5;
@end

@implementation CUOPACK

+ (id)decodeData:(id)a3 flags:(unsigned int)a4 error:(id *)a5
{
  v17 = -6700;
  v6 = OPACKDecodeData(a3, a4, &v17);
  v12 = v6;
  if (v6)
  {
    v13 = v6;
  }

  else if (a5)
  {
    if (v17)
    {
      v15 = v17;
    }

    else
    {
      v15 = 4294960596;
    }

    *a5 = NSErrorF_safe(*MEMORY[0x1E696A768], v15, "OPACK decode failed", v7, v8, v9, v10, v11, v16);
  }

  return v12;
}

+ (id)encodeObject:(id)a3 flags:(unsigned int)a4 error:(id *)a5
{
  v17 = -6700;
  DataMutable = OPACKEncoderCreateDataMutable(a3, a4, &v17);
  v12 = DataMutable;
  if (DataMutable)
  {
    v13 = DataMutable;
  }

  else if (a5)
  {
    if (v17)
    {
      v15 = v17;
    }

    else
    {
      v15 = 4294960596;
    }

    *a5 = NSErrorF_safe(*MEMORY[0x1E696A768], v15, "OPACK encode failed", v7, v8, v9, v10, v11, v16);
  }

  return v12;
}

@end