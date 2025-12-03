@interface IFObjectHasher
- (id).cxx_construct;
- (id)combine:(id)combine;
- (id)combineBytes:(void *)bytes size:(unint64_t)size;
- (id)combineInteger:(unint64_t)integer;
- (unint64_t)finalize;
@end

@implementation IFObjectHasher

- (unint64_t)finalize
{
  if (self->_finalized)
  {
    return self->_hash;
  }

  value = self->_hasher._buffer.value;
  v4 = self->_hasher._v3 ^ value;
  self->_hasher._v3 = v4;
  c = self->_hasher._c;
  if (c <= 0)
  {
    v6 = self->_hasher._v1;
    v8 = self->_hasher._v2;
    v7 = self->_hasher._v0;
  }

  else
  {
    v7 = self->_hasher._v0;
    v6 = self->_hasher._v1;
    v8 = self->_hasher._v2;
    do
    {
      v9 = v7 + v6;
      v10 = v9 ^ __ROR8__(v6, 51);
      v11 = v8 + v4;
      v12 = __ROR8__(v4, 48);
      v7 = (v11 ^ v12) + __ROR8__(v9, 32);
      v4 = v7 ^ __ROR8__(v11 ^ v12, 43);
      v13 = v11 + v10;
      v6 = v13 ^ __ROR8__(v10, 47);
      v8 = __ROR8__(v13, 32);
      --c;
    }

    while (c);
    self->_hasher._v1 = v6;
    self->_hasher._v3 = v4;
  }

  v14 = v7 ^ value;
  self->_hasher._v0 = v14;
  v15 = v8 ^ 0xFF;
  self->_hasher._v2 = v15;
  d = self->_hasher._d;
  if (d >= 1)
  {
    do
    {
      v17 = v14 + v6;
      v18 = v17 ^ __ROR8__(v6, 51);
      v19 = v15 + v4;
      v20 = __ROR8__(v4, 48);
      v14 = (v19 ^ v20) + __ROR8__(v17, 32);
      v4 = v14 ^ __ROR8__(v19 ^ v20, 43);
      v21 = v19 + v18;
      v6 = v21 ^ __ROR8__(v18, 47);
      v15 = __ROR8__(v21, 32);
      --d;
    }

    while (d);
    self->_hasher._v0 = v14;
    self->_hasher._v1 = v6;
    self->_hasher._v2 = v15;
    self->_hasher._v3 = v4;
  }

  v2 = v6 ^ v14 ^ v15 ^ v4;
  self->_hash = v2;
  self->_finalized = 1;
  return v2;
}

- (id).cxx_construct
{
  *(self + 1) = 0x400000002;
  strcpy(self + 16, "uespemosmodnarodarenegylsetybdet");
  *(self + 49) = 0;
  *(self + 25) = 0;
  *(self + 13) = 0;
  return self;
}

- (id)combineBytes:(void *)bytes size:(unint64_t)size
{
  if (size >= 1)
  {
    v4 = bytes + size;
    v5 = *(self + 6);
    while (1)
    {
      v6 = v4 - bytes;
      if (v4 - bytes >= 8)
      {
        v6 = 8;
      }

      if (v6 <= 7)
      {
        break;
      }

      v7 = *bytes;
LABEL_23:
      v8 = HIBYTE(v5) & 7;
      v9 = 8 * v8;
      v10 = v8 + v6;
      v11 = v7 << (8 * v8);
      if (v10 <= 7)
      {
        v5 = (v11 | v5) + (v6 << 56);
        *(self + 6) = v5;
      }

      else
      {
        v12 = v11 | v5 & 0xFFFFFFFFFFFFFFLL;
        v13 = HIBYTE(v5) + v6;
        v14 = v7 >> -v9;
        if (v10 == 8)
        {
          v14 = 0;
        }

        v5 = v14 | (v13 << 56);
        v15 = *(self + 5) ^ v12;
        *(self + 5) = v15;
        *(self + 6) = v5;
        v16 = *(self + 2);
        v17 = *(self + 2);
        if (v16 >= 1)
        {
          v19 = *(self + 3);
          v18 = *(self + 4);
          do
          {
            v20 = v17 + v19;
            v21 = v20 ^ __ROR8__(v19, 51);
            v22 = v18 + v15;
            v23 = __ROR8__(v15, 48);
            v17 = (v22 ^ v23) + __ROR8__(v20, 32);
            v15 = v17 ^ __ROR8__(v22 ^ v23, 43);
            v24 = v22 + v21;
            v19 = v24 ^ __ROR8__(v21, 47);
            v18 = __ROR8__(v24, 32);
            --v16;
          }

          while (v16);
          *(self + 4) = v18;
          *(self + 5) = v15;
          *(self + 3) = v19;
        }

        *(self + 2) = v17 ^ v12;
      }

      bytes = bytes + 8;
      if (bytes >= v4)
      {
        return self;
      }
    }

    v7 = 0;
    if (v6 <= 3)
    {
      if (v6 == 1)
      {
LABEL_22:
        v7 |= *bytes;
        goto LABEL_23;
      }

      if (v6 == 2)
      {
LABEL_21:
        v7 |= *(bytes + 1) << 8;
        goto LABEL_22;
      }

      if (v6 != 3)
      {
        goto LABEL_23;
      }

LABEL_20:
      v7 |= *(bytes + 2) << 16;
      goto LABEL_21;
    }

    if (v6 > 5)
    {
      if (v6 != 6)
      {
        v7 = *(bytes + 6) << 48;
      }

      v7 |= *(bytes + 5) << 40;
    }

    else if (v6 == 4)
    {
LABEL_19:
      v7 |= *(bytes + 3) << 24;
      goto LABEL_20;
    }

    v7 |= *(bytes + 4) << 32;
    goto LABEL_19;
  }

  return self;
}

- (id)combineInteger:(unint64_t)integer
{
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:integer];
  v5 = [(IFObjectHasher *)self combineContentsOfPropertyListObject:v4];

  return self;
}

- (id)combine:(id)combine
{
  combineCopy = combine;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(combineCopy, "hash")}];
  v6 = [(IFObjectHasher *)self combineContentsOfPropertyListObject:v5];

  return self;
}

@end