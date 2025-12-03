@interface TCDumpNumeric
- (TCDumpNumeric)initWithType:(int)type enumType:(id)enumType;
- (void)fromBinary:(__sFILE *)binary toXml:(_xmlNode *)xml state:(id)state;
@end

@implementation TCDumpNumeric

- (TCDumpNumeric)initWithType:(int)type enumType:(id)enumType
{
  enumTypeCopy = enumType;
  v11.receiver = self;
  v11.super_class = TCDumpNumeric;
  v8 = [(TCDumpType *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->mType = type;
    objc_storeStrong(&v8->mEnumType, enumType);
  }

  return v9;
}

- (void)fromBinary:(__sFILE *)binary toXml:(_xmlNode *)xml state:(id)state
{
  stateCopy = state;
  mType = self->mType;
  if (mType <= 4)
  {
    if (mType > 2)
    {
      if (mType == 3)
      {
        UI8 = TCDumpReadUI8(binary);
        v17 = TCDumpReadUI8(binary);
        v11 = 0;
        LEUI32 = UI8 | (v17 << 8);
      }

      else
      {
        v12 = TCDumpReadUI8(binary);
        LEUI32 = (v12 | (TCDumpReadUI8(binary) << 8));
        v11 = 1;
      }

      v10 = 2;
    }

    else if (mType == 1)
    {
      LEUI32 = TCDumpReadUI8(binary);
      v11 = 0;
      v10 = 1;
    }

    else
    {
      if (mType != 2)
      {
        goto LABEL_22;
      }

      LEUI32 = TCDumpReadUI8(binary);
      v10 = 1;
      v11 = 1;
    }

    goto LABEL_19;
  }

  if (mType <= 6)
  {
    if (mType == 5)
    {
      LEUI32 = TCDumpReadLEUI32(binary);
      v11 = 0;
    }

    else
    {
      LEUI32 = TCDumpReadLEUI32(binary);
      v11 = 1;
    }

    v10 = 4;
LABEL_19:
    writeIntToXml(xml, LEUI32, v10, v11, self->mEnumType, stateCopy);
    goto LABEL_22;
  }

  if (mType == 7)
  {
    v14 = COERCE_FLOAT(TCDumpReadLEUI32(binary));
    v15 = 4;
  }

  else
  {
    if (mType != 8)
    {
      goto LABEL_22;
    }

    v13 = TCDumpReadLEUI32(binary);
    *&v14 = v13 | (TCDumpReadLEUI32(binary) << 32);
    v15 = 8;
  }

  writeRealToXml(xml, v15, v14);
LABEL_22:
}

@end