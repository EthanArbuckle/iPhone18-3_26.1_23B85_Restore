@interface MFBase64Decoder
+ (BOOL)isValidBase64:(id)base64;
- (MFBase64Decoder)initWithConsumers:(id)consumers;
- (int64_t)appendData:(id)data;
- (unint64_t)_decodeBytes:(const char *)bytes end:(const char *)end into:(char *)into length:(unint64_t)length startingAt:(unint64_t)at outEncodedOffset:(unint64_t *)offset;
- (void)done;
- (void)setConvertCommas:(BOOL)commas;
@end

@implementation MFBase64Decoder

- (MFBase64Decoder)initWithConsumers:(id)consumers
{
  v4.receiver = self;
  v4.super_class = MFBase64Decoder;
  result = [(MFBaseFilterDataConsumer *)&v4 initWithConsumers:consumers];
  if (result)
  {
    result->_table = &Decode64Table;
  }

  return result;
}

- (unint64_t)_decodeBytes:(const char *)bytes end:(const char *)end into:(char *)into length:(unint64_t)length startingAt:(unint64_t)at outEncodedOffset:(unint64_t *)offset
{
  endCopy = bytes;
  equalCount = self->_equalCount;
  validBytes = self->_validBytes;
  decodedBits = self->_decodedBits;
  if (bytes >= end)
  {
    goto LABEL_18;
  }

  offsetCopy = offset;
  table = self->_table;
  do
  {
    v18 = table[*endCopy];
    if (table[*endCopy] < 0)
    {
      if ((~v18 & 0xFB) == 0)
      {
LABEL_9:
        equalCount = 0;
        goto LABEL_10;
      }

      if (v18 == 252 && validBytes != 0 && ++equalCount == 4 - validBytes)
      {
        goto LABEL_17;
      }
    }

    else
    {
      decodedBits = v18 + (decodedBits << 6);
      if ((++validBytes & 3) != 0)
      {
        goto LABEL_9;
      }

      if (at + 2 >= length)
      {
        v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:into length:at];
        v25.receiver = self;
        v25.super_class = MFBase64Decoder;
        [(MFBaseFilterDataConsumer *)&v25 appendData:v19];

        at = 0;
      }

      equalCount = 0;
      v20 = &into[at];
      *(v20 + 1) = bswap32(decodedBits) >> 16;
      *v20 = BYTE2(decodedBits);
      at += 3;
      decodedBits = 0;
    }

LABEL_10:
    ++endCopy;
  }

  while (endCopy != end);
  endCopy = end;
LABEL_17:
  offset = offsetCopy;
LABEL_18:
  self->_equalCount = equalCount;
  self->_validBytes = validBytes & 3;
  self->_decodedBits = decodedBits;
  if (offset)
  {
    *offset = endCopy - bytes;
  }

  return at;
}

- (int64_t)appendData:(id)data
{
  v38 = MEMORY[0x1EEE9AC00](self, a2, data);
  v44 = *MEMORY[0x1E69E9840];
  v36 = v3;
  v4 = [v36 length];
  bytes = [v36 bytes];
  memset(__b, 170, sizeof(__b));
  convertCommas = [v38 convertCommas];
  if (!v4)
  {
    goto LABEL_64;
  }

  v7 = 0;
  v8 = 0;
  v37 = convertCommas;
  do
  {
    v9 = *(v38 + 40);
    if (v9 && *(v38 + 48) == 4 - v9)
    {
      v10 = 0;
      v11 = v4 - v7;
      goto LABEL_32;
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = bytes + v7;
    v16 = 1;
    do
    {
      v17 = *(v15 + v12);
      if ((*(v15 + v12) & 0x80000000) == 0 && (v17 == 44 ? (v18 = convertCommas) : (v18 = 0), (v18 & 1) != 0 || ((1 << (v17 & 7)) & _IsValidBase64Chr_table[*(v15 + v12) >> 3]) != 0))
      {
        v16 = v13 == 0;
      }

      else
      {
        if (*(v15 + v12) <= 0xCu)
        {
          if (v17 != 9)
          {
            if (v17 == 10)
            {
LABEL_21:
              v14 = 1;
              goto LABEL_29;
            }

LABEL_28:
            v16 = 0;
            goto LABEL_29;
          }
        }

        else
        {
          if (v17 == 13)
          {
            goto LABEL_21;
          }

          if (v17 == 33)
          {
            if (v13)
            {
              v16 = 0;
            }

            v13 = 1;
            goto LABEL_29;
          }

          if (v17 != 32)
          {
            goto LABEL_28;
          }
        }

        if (!v13)
        {
          goto LABEL_29;
        }
      }

      if (v14)
      {
        v11 = v12 - 1;
        goto LABEL_31;
      }

LABEL_29:
      ++v12;
    }

    while (v4 - v7 != v12);
    v11 = 0;
LABEL_31:
    v10 = v16;
    if (!v10)
    {
LABEL_32:
      if (v11)
      {
        if (*(v38 + 24))
        {
          v42.receiver = v38;
          v42.super_class = MFBase64Decoder;
          [(MFBaseFilterDataConsumer *)&v42 appendData:?];
          v19 = *(v38 + 24);
          *(v38 + 24) = 0;
        }

        for (i = 0; i < v11; i += v22)
        {
          v21 = 0x4000 - v8;
          if (v8 > 0x4000)
          {
            v21 = 0x4000;
          }

          if (v21 >= v4 - (i + v7))
          {
            v22 = v4 - (i + v7);
          }

          else
          {
            v22 = v21;
          }

          memmove(&__b[v8], (bytes + i + v7), v22);
          v8 += v22;
          v23 = v8 - 0x4000;
          if (v8 >= 0x4000)
          {
            v24 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:__b length:0x4000];
            v41.receiver = v38;
            v41.super_class = MFBase64Decoder;
            [(MFBaseFilterDataConsumer *)&v41 appendData:v24];

            v8 = v23;
          }
        }

        goto LABEL_51;
      }
    }

    if (!v11)
    {
      v10 = 0;
    }

    v25 = *(v38 + 24);
    if (!v10)
    {
      if ([v25 length] + v4 - v7 <= 0x4000)
      {
        goto LABEL_58;
      }

      v27 = *(v38 + 24);
      if (v27)
      {
        v8 = [v38 _decodeBytes:objc_msgSend(v27 end:"bytes") into:objc_msgSend(*(v38 + 24) length:"bytes") + objc_msgSend(*(v38 + 24) startingAt:"length") outEncodedOffset:{__b, 0x4000, v8, 0}];
        v28 = *(v38 + 24);
        *(v38 + 24) = 0;
      }

      if (v4 - v7 <= 0x4000)
      {
LABEL_58:
        v29 = v38;
      }

      else
      {
        v40 = 0;
        v29 = v38;
        v8 = [v38 _decodeBytes:bytes + v7 end:bytes + v4 - 0x4000 into:__b length:0x4000 startingAt:v8 outEncodedOffset:&v40];
        v7 += v40;
      }

      v30 = *(v29 + 24);
      if (v30)
      {
        [v30 appendBytes:bytes + v7 length:v4 - v7];
      }

      else
      {
        v31 = [objc_alloc(MEMORY[0x1E695DF88]) initWithBytes:bytes + v7 length:v4 - v7];
        v32 = *(v38 + 24);
        *(v38 + 24) = v31;
      }

      break;
    }

    if (v25)
    {
      v8 = [v38 _decodeBytes:objc_msgSend(v25 end:"bytes") into:objc_msgSend(*(v38 + 24) length:"bytes") + objc_msgSend(*(v38 + 24) startingAt:"length") outEncodedOffset:{__b, 0x4000, v8, 0}];
      v26 = *(v38 + 24);
      *(v38 + 24) = 0;
    }

    v8 = [v38 _decodeBytes:bytes + v7 end:bytes + v7 + v11 into:__b length:0x4000 startingAt:v8 outEncodedOffset:0];
LABEL_51:
    v7 += v11;
    convertCommas = v37;
  }

  while (v7 < v4);
  if (v8)
  {
    v33 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:__b length:v8];
    v39.receiver = v38;
    v39.super_class = MFBase64Decoder;
    [(MFBaseFilterDataConsumer *)&v39 appendData:v33];
  }

LABEL_64:

  v34 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)done
{
  v15 = *MEMORY[0x1E69E9840];
  memset(__b, 170, sizeof(__b));
  leftovers = self->_leftovers;
  if (leftovers)
  {
    v4 = [(MFBase64Decoder *)self _decodeBytes:[(NSMutableData *)leftovers bytes] end:[(NSMutableData *)self->_leftovers bytes]+ [(NSMutableData *)self->_leftovers length] into:__b length:0x2000 startingAt:0 outEncodedOffset:0];
    v5 = self->_leftovers;
    self->_leftovers = 0;
  }

  else
  {
    v4 = 0;
  }

  if (self->_bound)
  {
    validBytes = self->_validBytes;
    if (self->_equalCount != 4 - validBytes)
    {
      goto LABEL_13;
    }
  }

  else
  {
    validBytes = self->_validBytes;
  }

  if (validBytes == 2)
  {
    v9 = self->_decodedBits >> 4;
    v10 = 1;
    v8 = v4;
  }

  else
  {
    if (validBytes != 3)
    {
      goto LABEL_13;
    }

    decodedBits = self->_decodedBits;
    v8 = v4 + 1;
    __b[v4] = decodedBits >> 10;
    v9 = decodedBits >> 2;
    v10 = 2;
  }

  v4 += v10;
  __b[v8] = v9;
  self->_validBytes = 1;
  self->_validBytes = 1 - self->_equalCount;
LABEL_13:
  if (v4)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:__b length:v4];
    v13.receiver = self;
    v13.super_class = MFBase64Decoder;
    [(MFBaseFilterDataConsumer *)&v13 appendData:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setConvertCommas:(BOOL)commas
{
  v3 = &Decode64Table;
  if (commas)
  {
    v3 = &Decode64AltTable;
  }

  self->_table = v3;
}

+ (BOOL)isValidBase64:(id)base64
{
  base64Copy = base64;
  bytes = [base64Copy bytes];
  v5 = [base64Copy length];
  LODWORD(v6) = bytes;
  if (v5 < 1)
  {
    goto LABEL_14;
  }

  v7 = 0;
  v6 = bytes;
  do
  {
    v8 = *v6;
    if (v8 == 61)
    {
      ++v7;
      v9 = 1;
    }

    else
    {
      v10 = 0;
      if (v7 || v8 < 0)
      {
        goto LABEL_16;
      }

      v7 = 0;
      v9 = (_IsValidBase64Chr_table[v8 >> 3] >> (v8 & 7)) & 1;
    }

    ++v6;
  }

  while (v9 && v6 < bytes + v5);
  v11 = v7 < 3 ? v9 : 0;
  if (v11 == 1)
  {
LABEL_14:
    v10 = ((v6 - bytes) & 3) == 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_16:

  return v10;
}

@end