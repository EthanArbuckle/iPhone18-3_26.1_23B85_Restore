@interface STPropVariant
- (id)asDataOfType:(int *)type;
- (void)dealloc;
- (void)setBlobValue:(id)value;
- (void)setStringValue:(id)value;
@end

@implementation STPropVariant

- (void)setStringValue:(id)value
{
  v6[2] = 0;
  v6[0] = 30;
  valueCopy = value;
  v6[1] = [value UTF8String];
  propVariantCopyContents(v6, &self->mProp);
}

- (void)setBlobValue:(id)value
{
  v6[0] = 65;
  valueCopy = value;
  v6[1] = [valueCopy length];
  bytes = [valueCopy bytes];

  v6[2] = bytes;
  propVariantCopyContents(v6, &self->mProp);
}

- (id)asDataOfType:(int *)type
{
  v4 = 0;
  vt = self->mProp.vt;
  if (vt <= 0x3F)
  {
    switch(vt)
    {
      case 2u:
        *type = 0;
        v8 = MEMORY[0x277CBEA90];
        p_v = &self->mProp.v;
        cbSize = 2;
        break;
      case 3u:
        *type = 1;
        v8 = MEMORY[0x277CBEA90];
        p_v = &self->mProp.v;
        cbSize = 4;
        break;
      case 0x1Eu:
        *type = 2;
        bstrVal = self->mProp.v.bstrVal;
        cbSize = strlen(bstrVal) + 1;
        v8 = MEMORY[0x277CBEA90];
        p_v = bstrVal;
        break;
      default:
        goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (vt == 64)
  {
    *type = 3;
    v16 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
    if (v16)
    {
      v12 = v16;
      if (!time_tFromWinFileTime(&self->mProp.v.lVal, v16))
      {
        v13 = MEMORY[0x277CBEA90];
        v15 = v12;
        v14 = 8;
        goto LABEL_24;
      }

      free(v12);
    }

LABEL_16:
    v4 = 0;
    goto LABEL_20;
  }

  if (vt == 65)
  {
    *type = 5;
    v8 = MEMORY[0x277CBEA90];
    p_v = self->mProp.v.blob.pData;
    cbSize = self->mProp.v.blob.cbSize;
LABEL_19:
    v4 = [v8 dataWithBytes:p_v length:cbSize];
    goto LABEL_20;
  }

  if (vt != 71)
  {
    goto LABEL_20;
  }

  *type = 4;
  v10 = *self->mProp.v.bstrVal;
  if (v10 > 0xFFFFFFFB)
  {
    goto LABEL_16;
  }

  v11 = malloc_type_malloc(v10 + 4, 0x6AED3857uLL);
  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = v11;
  CsLeWriteUInt32(*self->mProp.v.bstrVal, v11);
  CsLeWriteUInt32(*(self->mProp.v.bstrVal + 1), v12 + 1);
  memcpy(v12 + 2, *(self->mProp.v.bstrVal + 1), *self->mProp.v.bstrVal - 4);
  v13 = MEMORY[0x277CBEA90];
  v14 = (*self->mProp.v.bstrVal + 4);
  v15 = v12;
LABEL_24:
  v4 = [v13 dataWithBytes:v15 length:v14];
  free(v12);
LABEL_20:

  return v4;
}

- (void)dealloc
{
  propVariantCleanup(&self->mProp);
  v3.receiver = self;
  v3.super_class = STPropVariant;
  [(STPropVariant *)&v3 dealloc];
}

@end