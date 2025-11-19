@interface TCDumpNumeric
- (TCDumpNumeric)initWithType:(int)a3 enumType:(id)a4;
- (void)fromBinary:(__sFILE *)a3 toXml:(_xmlNode *)a4 state:(id)a5;
@end

@implementation TCDumpNumeric

- (TCDumpNumeric)initWithType:(int)a3 enumType:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = TCDumpNumeric;
  v8 = [(TCDumpType *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->mType = a3;
    objc_storeStrong(&v8->mEnumType, a4);
  }

  return v9;
}

- (void)fromBinary:(__sFILE *)a3 toXml:(_xmlNode *)a4 state:(id)a5
{
  v18 = a5;
  mType = self->mType;
  if (mType <= 4)
  {
    if (mType > 2)
    {
      if (mType == 3)
      {
        UI8 = TCDumpReadUI8(a3);
        v17 = TCDumpReadUI8(a3);
        v11 = 0;
        LEUI32 = UI8 | (v17 << 8);
      }

      else
      {
        v12 = TCDumpReadUI8(a3);
        LEUI32 = (v12 | (TCDumpReadUI8(a3) << 8));
        v11 = 1;
      }

      v10 = 2;
    }

    else if (mType == 1)
    {
      LEUI32 = TCDumpReadUI8(a3);
      v11 = 0;
      v10 = 1;
    }

    else
    {
      if (mType != 2)
      {
        goto LABEL_22;
      }

      LEUI32 = TCDumpReadUI8(a3);
      v10 = 1;
      v11 = 1;
    }

    goto LABEL_19;
  }

  if (mType <= 6)
  {
    if (mType == 5)
    {
      LEUI32 = TCDumpReadLEUI32(a3);
      v11 = 0;
    }

    else
    {
      LEUI32 = TCDumpReadLEUI32(a3);
      v11 = 1;
    }

    v10 = 4;
LABEL_19:
    writeIntToXml(a4, LEUI32, v10, v11, self->mEnumType, v18);
    goto LABEL_22;
  }

  if (mType == 7)
  {
    v14 = COERCE_FLOAT(TCDumpReadLEUI32(a3));
    v15 = 4;
  }

  else
  {
    if (mType != 8)
    {
      goto LABEL_22;
    }

    v13 = TCDumpReadLEUI32(a3);
    *&v14 = v13 | (TCDumpReadLEUI32(a3) << 32);
    v15 = 8;
  }

  writeRealToXml(a4, v15, v14);
LABEL_22:
}

@end