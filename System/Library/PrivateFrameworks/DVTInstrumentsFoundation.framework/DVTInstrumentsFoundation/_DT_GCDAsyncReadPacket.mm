@interface _DT_GCDAsyncReadPacket
- (_DT_GCDAsyncReadPacket)initWithData:(id)data startOffset:(unint64_t)offset maxLength:(unint64_t)length timeout:(double)timeout readLength:(unint64_t)readLength terminator:(id)terminator tag:(int64_t)tag;
- (int64_t)searchForTermAfterPreBuffering:(int64_t)buffering;
- (unint64_t)optimalReadLengthWithDefault:(unint64_t)default shouldPreBuffer:(BOOL *)buffer;
- (unint64_t)readLengthForNonTermWithHint:(unint64_t)hint;
- (unint64_t)readLengthForTermWithHint:(unint64_t)hint shouldPreBuffer:(BOOL *)buffer;
- (unint64_t)readLengthForTermWithPreBuffer:(id)buffer found:(BOOL *)found;
- (void)ensureCapacityForAdditionalDataOfLength:(unint64_t)length;
@end

@implementation _DT_GCDAsyncReadPacket

- (_DT_GCDAsyncReadPacket)initWithData:(id)data startOffset:(unint64_t)offset maxLength:(unint64_t)length timeout:(double)timeout readLength:(unint64_t)readLength terminator:(id)terminator tag:(int64_t)tag
{
  dataCopy = data;
  terminatorCopy = terminator;
  v30.receiver = self;
  v30.super_class = _DT_GCDAsyncReadPacket;
  v19 = [(_DT_GCDAsyncReadPacket *)&v30 init];
  v20 = v19;
  if (v19)
  {
    v19->bytesDone = 0;
    v19->maxLength = length;
    v19->timeout = timeout;
    v19->readLength = readLength;
    v21 = [terminatorCopy copy];
    term = v20->term;
    v20->term = v21;

    v20->tag = tag;
    if (dataCopy)
    {
      objc_storeStrong(&v20->buffer, data);
      v20->startOffset = offset;
      v20->bufferOwner = 0;
      v23 = [dataCopy length];
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

- (void)ensureCapacityForAdditionalDataOfLength:(unint64_t)length
{
  if (length > [(NSMutableData *)self->buffer length]- (self->startOffset + self->bytesDone))
  {
    buffer = self->buffer;

    MEMORY[0x2821F9670](buffer, sel_increaseLengthBy_);
  }
}

- (unint64_t)optimalReadLengthWithDefault:(unint64_t)default shouldPreBuffer:(BOOL *)buffer
{
  defaultCopy = default;
  readLength = self->readLength;
  if (readLength)
  {
    v7 = readLength - self->bytesDone;
    if (v7 < default)
    {
      defaultCopy = v7;
    }

    if (buffer)
    {
      v8 = 0;
LABEL_11:
      *buffer = v8;
    }
  }

  else
  {
    maxLength = self->maxLength;
    if (maxLength)
    {
      v10 = maxLength - self->bytesDone;
      if (v10 < default)
      {
        defaultCopy = v10;
      }
    }

    if (buffer)
    {
      v8 = [(NSMutableData *)self->buffer length]- (self->startOffset + self->bytesDone) < defaultCopy;
      goto LABEL_11;
    }
  }

  return defaultCopy;
}

- (unint64_t)readLengthForNonTermWithHint:(unint64_t)hint
{
  if (self->term)
  {
    sub_24802D514();
    if (hint)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_24802D580();
    goto LABEL_3;
  }

  if (!hint)
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
      return hint;
    }
  }

  v6 = readLength - self->bytesDone;
  if (v6 >= hint)
  {
    return hint;
  }

  else
  {
    return v6;
  }
}

- (unint64_t)readLengthForTermWithHint:(unint64_t)hint shouldPreBuffer:(BOOL *)buffer
{
  hintCopy = hint;
  if (!self->term)
  {
    sub_24802D5EC();
    if (hintCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    sub_24802D658();
    goto LABEL_3;
  }

  if (!hint)
  {
    goto LABEL_10;
  }

LABEL_3:
  maxLength = self->maxLength;
  if (maxLength)
  {
    v8 = maxLength - self->bytesDone;
    if (v8 < hintCopy)
    {
      hintCopy = v8;
    }
  }

  if (buffer)
  {
    *buffer = [(NSMutableData *)self->buffer length]- (self->startOffset + self->bytesDone) < hintCopy;
  }

  return hintCopy;
}

- (unint64_t)readLengthForTermWithPreBuffer:(id)buffer found:(BOOL *)found
{
  v33 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  if (!self->term)
  {
    sub_24802D6C4();
  }

  if (![bufferCopy availableBytes])
  {
    sub_24802D730();
  }

  v7 = [(NSData *)self->term length];
  availableBytes = [bufferCopy availableBytes];
  v9 = availableBytes;
  bytesDone = self->bytesDone;
  if (bytesDone + availableBytes >= v7)
  {
    v30 = &foundCopy;
    maxLength = self->maxLength;
    v12 = maxLength - bytesDone;
    if (availableBytes < v12)
    {
      v12 = availableBytes;
    }

    if (maxLength)
    {
      v9 = v12;
    }

    bytes = [(NSData *)self->term bytes];
    if (self->bytesDone >= v7 - 1)
    {
      v13 = v7 - 1;
    }

    else
    {
      v13 = self->bytesDone;
    }

    mutableBytes = [(NSMutableData *)self->buffer mutableBytes];
    startOffset = self->startOffset;
    v16 = self->bytesDone;
    v31 = bufferCopy;
    readBuffer = [bufferCopy readBuffer];
    v29 = v9;
    v18 = v9 - v7 + v13;
    v19 = v18 + 1;
    if (v18 != -1)
    {
      v20 = readBuffer;
      foundCopy = found;
      v21 = v7 - v13;
      v22 = &mutableBytes[startOffset + v16 - v13];
      v23 = 1;
      v24 = v18 + 1;
      v25 = 1;
      while (1)
      {
        if (v13)
        {
          memcpy(&foundCopy - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v13);
          memcpy(&foundCopy + v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v21);
          if (!memcmp(&foundCopy - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), bytes, v7))
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
          if (!memcmp(v20, bytes, v7))
          {
            v9 = &v20[v7 - [v31 readBuffer]];
LABEL_29:
            found = foundCopy;
            if (!foundCopy)
            {
LABEL_25:
              bufferCopy = v31;
              goto LABEL_26;
            }

LABEL_24:
            *found = v25;
            goto LABEL_25;
          }

          v13 = 0;
          ++v20;
        }

        v25 = v23++ < v19;
        if (!--v24)
        {
          found = foundCopy;
          goto LABEL_23;
        }
      }
    }

    v25 = 0;
LABEL_23:
    v9 = v29;
    if (!found)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_26:

  v26 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int64_t)searchForTermAfterPreBuffering:(int64_t)buffering
{
  if (!self->term)
  {
    sub_24802D79C();
  }

  mutableBytes = [(NSMutableData *)self->buffer mutableBytes];
  bytesDone = self->bytesDone;
  bytes = [(NSData *)self->term bytes];
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

  v11 = &mutableBytes[v10];
  v12 = v10 + v8;
  while (v12 <= bytesDone + buffering)
  {
    v13 = memcmp(&v11[self->startOffset], bytes, v9);
    ++v11;
    ++v12;
    if (!v13)
    {
      return bytesDone + buffering - v12 + 1;
    }
  }

  return -1;
}

@end