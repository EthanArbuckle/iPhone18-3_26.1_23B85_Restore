@interface _DT_GCDAsyncReadPacket
- (_DT_GCDAsyncReadPacket)initWithData:(id)a3 startOffset:(unint64_t)a4 maxLength:(unint64_t)a5 timeout:(double)a6 readLength:(unint64_t)a7 terminator:(id)a8 tag:(int64_t)a9;
- (int64_t)searchForTermAfterPreBuffering:(int64_t)a3;
- (unint64_t)optimalReadLengthWithDefault:(unint64_t)a3 shouldPreBuffer:(BOOL *)a4;
- (unint64_t)readLengthForNonTermWithHint:(unint64_t)a3;
- (unint64_t)readLengthForTermWithHint:(unint64_t)a3 shouldPreBuffer:(BOOL *)a4;
- (unint64_t)readLengthForTermWithPreBuffer:(id)a3 found:(BOOL *)a4;
- (void)ensureCapacityForAdditionalDataOfLength:(unint64_t)a3;
@end

@implementation _DT_GCDAsyncReadPacket

- (_DT_GCDAsyncReadPacket)initWithData:(id)a3 startOffset:(unint64_t)a4 maxLength:(unint64_t)a5 timeout:(double)a6 readLength:(unint64_t)a7 terminator:(id)a8 tag:(int64_t)a9
{
  v17 = a3;
  v18 = a8;
  v30.receiver = self;
  v30.super_class = _DT_GCDAsyncReadPacket;
  v19 = [(_DT_GCDAsyncReadPacket *)&v30 init];
  v20 = v19;
  if (v19)
  {
    v19->bytesDone = 0;
    v19->maxLength = a5;
    v19->timeout = a6;
    v19->readLength = a7;
    v21 = [v18 copy];
    term = v20->term;
    v20->term = v21;

    v20->tag = a9;
    if (v17)
    {
      objc_storeStrong(&v20->buffer, a3);
      v20->startOffset = a4;
      v20->bufferOwner = 0;
      v23 = [v17 length];
    }

    else
    {
      readLength = v20->readLength;
      v25 = objc_alloc(MEMORY[0x277CBEB28]);
      if (readLength)
      {
        v26 = v20->readLength;
      }

      else
      {
        v26 = 0;
      }

      v27 = [v25 initWithLength:v26];
      buffer = v20->buffer;
      v20->buffer = v27;

      v23 = 0;
      v20->startOffset = 0;
      v20->bufferOwner = 1;
    }

    v20->originalBufferLength = v23;
  }

  return v20;
}

- (void)ensureCapacityForAdditionalDataOfLength:(unint64_t)a3
{
  if (a3 > [(NSMutableData *)self->buffer length]- (self->startOffset + self->bytesDone))
  {
    buffer = self->buffer;

    MEMORY[0x2821F9670](buffer, sel_increaseLengthBy_);
  }
}

- (unint64_t)optimalReadLengthWithDefault:(unint64_t)a3 shouldPreBuffer:(BOOL *)a4
{
  v5 = a3;
  readLength = self->readLength;
  if (readLength)
  {
    v7 = readLength - self->bytesDone;
    if (v7 < a3)
    {
      v5 = v7;
    }

    if (a4)
    {
      v8 = 0;
LABEL_11:
      *a4 = v8;
    }
  }

  else
  {
    maxLength = self->maxLength;
    if (maxLength)
    {
      v10 = maxLength - self->bytesDone;
      if (v10 < a3)
      {
        v5 = v10;
      }
    }

    if (a4)
    {
      v8 = [(NSMutableData *)self->buffer length]- (self->startOffset + self->bytesDone) < v5;
      goto LABEL_11;
    }
  }

  return v5;
}

- (unint64_t)readLengthForNonTermWithHint:(unint64_t)a3
{
  if (self->term)
  {
    sub_24802D514();
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_24802D580();
    goto LABEL_3;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  readLength = self->readLength;
  if (!readLength)
  {
    readLength = self->maxLength;
    if (!readLength)
    {
      return a3;
    }
  }

  v6 = readLength - self->bytesDone;
  if (v6 >= a3)
  {
    return a3;
  }

  else
  {
    return v6;
  }
}

- (unint64_t)readLengthForTermWithHint:(unint64_t)a3 shouldPreBuffer:(BOOL *)a4
{
  v5 = a3;
  if (!self->term)
  {
    sub_24802D5EC();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_24802D658();
    goto LABEL_3;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

LABEL_3:
  maxLength = self->maxLength;
  if (maxLength)
  {
    v8 = maxLength - self->bytesDone;
    if (v8 < v5)
    {
      v5 = v8;
    }
  }

  if (a4)
  {
    *a4 = [(NSMutableData *)self->buffer length]- (self->startOffset + self->bytesDone) < v5;
  }

  return v5;
}

- (unint64_t)readLengthForTermWithPreBuffer:(id)a3 found:(BOOL *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!self->term)
  {
    sub_24802D6C4();
  }

  if (![v6 availableBytes])
  {
    sub_24802D730();
  }

  v7 = [(NSData *)self->term length];
  v8 = [v6 availableBytes];
  v9 = v8;
  bytesDone = self->bytesDone;
  if (bytesDone + v8 >= v7)
  {
    v30 = &v28;
    maxLength = self->maxLength;
    v12 = maxLength - bytesDone;
    if (v8 < v12)
    {
      v12 = v8;
    }

    if (maxLength)
    {
      v9 = v12;
    }

    v32 = [(NSData *)self->term bytes];
    if (self->bytesDone >= v7 - 1)
    {
      v13 = v7 - 1;
    }

    else
    {
      v13 = self->bytesDone;
    }

    v14 = [(NSMutableData *)self->buffer mutableBytes];
    startOffset = self->startOffset;
    v16 = self->bytesDone;
    v31 = v6;
    v17 = [v6 readBuffer];
    v29 = v9;
    v18 = v9 - v7 + v13;
    v19 = v18 + 1;
    if (v18 != -1)
    {
      v20 = v17;
      v28 = a4;
      v21 = v7 - v13;
      v22 = &v14[startOffset + v16 - v13];
      v23 = 1;
      v24 = v18 + 1;
      v25 = 1;
      while (1)
      {
        if (v13)
        {
          memcpy(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v13);
          memcpy(&v28 + v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v21);
          if (!memcmp(&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v32, v7))
          {
            v9 = v21;
            goto LABEL_29;
          }

          ++v22;
          --v13;
          ++v21;
        }

        else
        {
          if (!memcmp(v20, v32, v7))
          {
            v9 = &v20[v7 - [v31 readBuffer]];
LABEL_29:
            a4 = v28;
            if (!v28)
            {
LABEL_25:
              v6 = v31;
              goto LABEL_26;
            }

LABEL_24:
            *a4 = v25;
            goto LABEL_25;
          }

          v13 = 0;
          ++v20;
        }

        v25 = v23++ < v19;
        if (!--v24)
        {
          a4 = v28;
          goto LABEL_23;
        }
      }
    }

    v25 = 0;
LABEL_23:
    v9 = v29;
    if (!a4)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_26:

  v26 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int64_t)searchForTermAfterPreBuffering:(int64_t)a3
{
  if (!self->term)
  {
    sub_24802D79C();
  }

  v5 = [(NSMutableData *)self->buffer mutableBytes];
  bytesDone = self->bytesDone;
  v7 = [(NSData *)self->term bytes];
  v8 = [(NSData *)self->term length];
  v9 = v8;
  if (bytesDone >= v8)
  {
    v10 = bytesDone - v8 + 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = &v5[v10];
  v12 = v10 + v8;
  while (v12 <= bytesDone + a3)
  {
    v13 = memcmp(&v11[self->startOffset], v7, v9);
    ++v11;
    ++v12;
    if (!v13)
    {
      return bytesDone + a3 - v12 + 1;
    }
  }

  return -1;
}

@end