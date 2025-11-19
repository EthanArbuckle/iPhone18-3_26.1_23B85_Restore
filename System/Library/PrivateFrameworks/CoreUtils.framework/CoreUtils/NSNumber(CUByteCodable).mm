@interface NSNumber(CUByteCodable)
+ (__CFString)createWithBytesNoCopy:()CUByteCodable length:error:;
- (CFMutableDataRef)encodedDataAndReturnError:()CUByteCodable;
- (uint64_t)encodedBytesAndReturnLength:()CUByteCodable error:;
@end

@implementation NSNumber(CUByteCodable)

- (CFMutableDataRef)encodedDataAndReturnError:()CUByteCodable
{
  v16 = 0;
  DataMutable = OPACKEncoderCreateDataMutable(a1, 8u, &v16);
  v11 = DataMutable;
  if (DataMutable)
  {
    v12 = DataMutable;
  }

  else if (a3)
  {
    if (v16)
    {
      v13 = v16;
    }

    else
    {
      v13 = 4294960534;
    }

    *a3 = NSErrorWithOSStatusF(v13, "OPACK encode failed", v5, v6, v7, v8, v9, v10, v15);
  }

  return v11;
}

- (uint64_t)encodedBytesAndReturnLength:()CUByteCodable error:
{
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

+ (__CFString)createWithBytesNoCopy:()CUByteCodable length:error:
{
  v25 = 0;
  v13 = _OPACKDecodeBytes(0, bytes, a4, 8u, &v25);
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      free(bytes);
      v20 = v13;
      goto LABEL_13;
    }

    if (a5)
    {
      v22 = NSErrorWithOSStatusF(4294960540, "OPACK decode non-dictionary", v14, v15, v16, v17, v18, v19, v24);
LABEL_11:
      v20 = 0;
      *a5 = v22;
      goto LABEL_13;
    }
  }

  else if (a5)
  {
    if (v25)
    {
      v21 = v25;
    }

    else
    {
      v21 = 4294960534;
    }

    v22 = NSErrorWithOSStatusF(v21, "OPACK decode failed", v7, v8, v9, v10, v11, v12, v24);
    goto LABEL_11;
  }

  v20 = 0;
LABEL_13:

  return v20;
}

@end