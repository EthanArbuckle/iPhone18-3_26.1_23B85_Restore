@interface OrgApacheLuceneStoreBufferedIndexInput
+ (int)bufferSizeWithOrgApacheLuceneStoreIOContext:(id)context;
- (char)readByte;
- (char)readByteWithLong:(int64_t)long;
- (id)clone;
- (id)refill;
- (int)flushBufferWithOrgApacheLuceneStoreIndexOutput:(id)output withLong:(int64_t)long;
- (int)readInt;
- (int)readIntWithLong:(int64_t)long;
- (int)readVInt;
- (int64_t)readLong;
- (int64_t)readLongWithLong:(int64_t)long;
- (int64_t)readVLong;
- (signed)readShort;
- (signed)readShortWithLong:(int64_t)long;
- (void)dealloc;
- (void)seekWithLong:(int64_t)long;
@end

@implementation OrgApacheLuceneStoreBufferedIndexInput

- (char)readByte
{
  if (self->bufferPosition_ >= self->bufferLength_)
  {
    [OrgApacheLuceneStoreBufferedIndexInput refill]_0(self);
  }

  buffer = self->buffer_;
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  bufferPosition = self->bufferPosition_;
  self->bufferPosition_ = bufferPosition + 1;
  size = buffer->super.size_;
  if (bufferPosition < 0 || bufferPosition >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, bufferPosition);
  }

  return *(&buffer->super.size_ + bufferPosition + 4);
}

- (id)refill
{
  v2 = *(self + 40) + *(self + 52);
  v3 = v2 + *(self + 32);
  if (v3 > [self length])
  {
    LODWORD(v3) = [self length];
  }

  v11 = (v3 - v2);
  if (v11 <= 0)
  {
    v14 = JreStrcat("$@", v4, v5, v6, v7, v8, v9, v10, @"read past EOF: ");
    v15 = new_JavaIoEOFException_initWithNSString_(v14);
    objc_exception_throw(v15);
  }

  v12 = *(self + 24);
  if (!v12)
  {
    [self newBufferWithByteArray:{+[IOSByteArray arrayWithLength:](IOSByteArray, "arrayWithLength:", *(self + 32))}];
    [self seekInternalWithLong:*(self + 40)];
    v12 = *(self + 24);
  }

  result = [self readInternalWithByteArray:v12 withInt:0 withInt:v11];
  *(self + 48) = v11;
  *(self + 40) = v2;
  *(self + 52) = 0;
  return result;
}

- (signed)readShort
{
  bufferPosition = self->bufferPosition_;
  if (self->bufferLength_ - bufferPosition < 2)
  {
    v11.receiver = self;
    v11.super_class = OrgApacheLuceneStoreBufferedIndexInput;
    return [(OrgApacheLuceneStoreDataInput *)&v11 readShort];
  }

  else
  {
    v4 = bufferPosition + 1;
    self->bufferPosition_ = bufferPosition + 1;
    buffer = self->buffer_;
    if (!buffer)
    {
      JreThrowNullPointerException();
    }

    size = buffer->super.size_;
    if ((bufferPosition & 0x80000000) != 0 || (v7 = self->buffer_, bufferPosition >= size))
    {
      IOSArray_throwOutOfBoundsWithMsg(size, bufferPosition);
    }

    v8 = *(&buffer->super.size_ + bufferPosition + 4) << 8;
    self->bufferPosition_ = v4 + 1;
    v9 = buffer->super.size_;
    if (v4 < 0 || v4 >= v9)
    {
      IOSArray_throwOutOfBoundsWithMsg(v9, v4);
    }

    return v8 | *(&buffer->super.size_ + v4 + 4);
  }
}

- (int)readInt
{
  bufferPosition = self->bufferPosition_;
  if (self->bufferLength_ - bufferPosition < 4)
  {
    v14.receiver = self;
    v14.super_class = OrgApacheLuceneStoreBufferedIndexInput;
    return [(OrgApacheLuceneStoreDataInput *)&v14 readInt];
  }

  else
  {
    self->bufferPosition_ = bufferPosition + 3;
    buffer = self->buffer_;
    if (!buffer)
    {
      JreThrowNullPointerException();
    }

    v5 = bufferPosition + 1;
    v6 = (bufferPosition + 2);
    size = buffer->super.size_;
    if ((bufferPosition & 0x80000000) != 0 || bufferPosition >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, bufferPosition);
    }

    v8 = *(&buffer->super.size_ + bufferPosition + 4) << 24;
    if (v5 < 0 || v5 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, (bufferPosition + 1));
    }

    v9 = self->buffer_;
    if ((v6 & 0x80000000) != 0 || v6 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v6);
    }

    v10 = v8 | (*(&self->buffer_->super.size_ + v5 + 4) << 16) | (*(&v9->super.size_ + v6 + 4) << 8);
    v11 = self->bufferPosition_;
    self->bufferPosition_ = v11 + 1;
    v12 = v9->super.size_;
    if (v11 < 0 || v11 >= v12)
    {
      IOSArray_throwOutOfBoundsWithMsg(v12, v11);
    }

    return v10 | *(&v9->super.size_ + v11 + 4);
  }
}

- (int64_t)readLong
{
  bufferPosition = self->bufferPosition_;
  if (self->bufferLength_ - bufferPosition < 8)
  {
    v27.receiver = self;
    v27.super_class = OrgApacheLuceneStoreBufferedIndexInput;
    return [(OrgApacheLuceneStoreDataInput *)&v27 readLong];
  }

  else
  {
    self->bufferPosition_ = bufferPosition + 3;
    buffer = self->buffer_;
    if (!buffer)
    {
      JreThrowNullPointerException();
    }

    v5 = (bufferPosition + 1);
    v6 = (bufferPosition + 2);
    size = buffer->super.size_;
    if ((bufferPosition & 0x80000000) != 0 || bufferPosition >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, bufferPosition);
    }

    v8 = *(&buffer->super.size_ + bufferPosition + 4);
    if ((v5 & 0x80000000) != 0 || v5 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v5);
    }

    v9 = *(&self->buffer_->super.size_ + v5 + 4);
    if ((v6 & 0x80000000) != 0 || v6 >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, v6);
    }

    v10 = *(&buffer->super.size_ + v6 + 4);
    v11 = self->bufferPosition_;
    v12 = v11 + 1;
    self->bufferPosition_ = v11 + 1;
    v13 = buffer->super.size_;
    if (v11 < 0 || v11 >= v13)
    {
      IOSArray_throwOutOfBoundsWithMsg(v13, v11);
    }

    v14 = *(&buffer->super.size_ + v11 + 4);
    v15 = (v11 + 2);
    v16 = (v11 + 3);
    self->bufferPosition_ = v11 + 4;
    v17 = self->buffer_;
    v18 = v17->super.size_;
    if (v12 < 0 || v12 >= v18)
    {
      IOSArray_throwOutOfBoundsWithMsg(v18, v12);
    }

    v19 = self->buffer_;
    v20 = (v8 << 24) | (v9 << 16);
    if ((v15 & 0x80000000) != 0 || v15 >= v18)
    {
      IOSArray_throwOutOfBoundsWithMsg(v18, v15);
    }

    v21 = v20 | (v10 << 8);
    if ((v16 & 0x80000000) != 0 || v16 >= v18)
    {
      IOSArray_throwOutOfBoundsWithMsg(v18, v16);
    }

    v22 = v21 | v14;
    v23 = (*(&v17->super.size_ + v12 + 4) << 24) | (*(&v17->super.size_ + v15 + 4) << 16) | (*(&v19->super.size_ + v16 + 4) << 8);
    v24 = self->bufferPosition_;
    self->bufferPosition_ = v24 + 1;
    v25 = v19->super.size_;
    if (v24 < 0 || v24 >= v25)
    {
      IOSArray_throwOutOfBoundsWithMsg(v25, v24);
    }

    return v23 | *(&v17->super.size_ + v24 + 4) | (v22 << 32);
  }
}

- (int)readVInt
{
  bufferPosition = self->bufferPosition_;
  if (self->bufferLength_ - bufferPosition < 5)
  {
    v24.receiver = self;
    v24.super_class = OrgApacheLuceneStoreBufferedIndexInput;
    return [(OrgApacheLuceneStoreDataInput *)&v24 readVInt];
  }

  else
  {
    buffer = self->buffer_;
    if (!buffer)
    {
      JreThrowNullPointerException();
    }

    self->bufferPosition_ = bufferPosition + 1;
    size = buffer->super.size_;
    if ((bufferPosition & 0x80000000) != 0 || bufferPosition >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, bufferPosition);
    }

    result = *(&buffer->super.size_ + bufferPosition + 4);
    if (result < 0)
    {
      v7 = result & 0x7F;
      v8 = self->buffer_;
      v9 = self->bufferPosition_;
      self->bufferPosition_ = v9 + 1;
      v10 = v8->super.size_;
      if (v9 < 0 || v9 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v9);
      }

      v11 = *(&v8->super.size_ + v9 + 4);
      result = v7 & 0xFFFFC07F | ((v11 & 0x7F) << 7);
      if (v11 < 0)
      {
        v12 = self->buffer_;
        v13 = self->bufferPosition_;
        self->bufferPosition_ = v13 + 1;
        v14 = v12->super.size_;
        if (v13 < 0 || v13 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v13);
        }

        v15 = *(&v12->super.size_ + v13 + 4);
        result = result & 0xFFE03FFF | ((v15 & 0x7F) << 14);
        if (v15 < 0)
        {
          v16 = self->buffer_;
          v17 = self->bufferPosition_;
          self->bufferPosition_ = v17 + 1;
          v18 = v16->super.size_;
          if (v17 < 0 || v17 >= v18)
          {
            IOSArray_throwOutOfBoundsWithMsg(v18, v17);
          }

          v19 = *(&v16->super.size_ + v17 + 4);
          result = result & 0xF01FFFFF | ((v19 & 0x7F) << 21);
          if (v19 < 0)
          {
            v20 = self->buffer_;
            v21 = self->bufferPosition_;
            self->bufferPosition_ = v21 + 1;
            if (v21 < 0 || v21 >= v20->super.size_)
            {
              IOSArray_throwOutOfBoundsWithMsg(v20->super.size_, v21);
            }

            v22 = *(&v20->super.size_ + v21 + 4);
            if (v22 > 0xF)
            {
              v23 = new_JavaIoIOException_initWithNSString_(@"Invalid vInt detected (too many bits)");
              objc_exception_throw(v23);
            }

            return result | (v22 << 28);
          }
        }
      }
    }
  }

  return result;
}

- (int64_t)readVLong
{
  bufferPosition = self->bufferPosition_;
  if (self->bufferLength_ - bufferPosition < 9)
  {
    v40.receiver = self;
    v40.super_class = OrgApacheLuceneStoreBufferedIndexInput;
    return [(OrgApacheLuceneStoreDataInput *)&v40 readVLong];
  }

  else
  {
    buffer = self->buffer_;
    if (!buffer)
    {
      JreThrowNullPointerException();
    }

    self->bufferPosition_ = bufferPosition + 1;
    size = buffer->super.size_;
    if ((bufferPosition & 0x80000000) != 0 || bufferPosition >= size)
    {
      IOSArray_throwOutOfBoundsWithMsg(size, bufferPosition);
    }

    result = *(&buffer->super.size_ + bufferPosition + 4);
    if (result < 0)
    {
      v7 = result & 0x7F;
      v8 = self->buffer_;
      v9 = self->bufferPosition_;
      self->bufferPosition_ = v9 + 1;
      v10 = v8->super.size_;
      if (v9 < 0 || v9 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v9);
      }

      v11 = *(&v8->super.size_ + v9 + 4);
      result = v7 | ((v11 & 0x7F) << 7);
      if (v11 < 0)
      {
        v12 = self->buffer_;
        v13 = self->bufferPosition_;
        self->bufferPosition_ = v13 + 1;
        v14 = v12->super.size_;
        if (v13 < 0 || v13 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v13);
        }

        v15 = *(&v12->super.size_ + v13 + 4);
        result |= (v15 & 0x7F) << 14;
        if (v15 < 0)
        {
          v16 = self->buffer_;
          v17 = self->bufferPosition_;
          self->bufferPosition_ = v17 + 1;
          v18 = v16->super.size_;
          if (v17 < 0 || v17 >= v18)
          {
            IOSArray_throwOutOfBoundsWithMsg(v18, v17);
          }

          v19 = *(&v16->super.size_ + v17 + 4);
          result |= (v19 & 0x7F) << 21;
          if (v19 < 0)
          {
            v20 = self->buffer_;
            v21 = self->bufferPosition_;
            self->bufferPosition_ = v21 + 1;
            v22 = v20->super.size_;
            if (v21 < 0 || v21 >= v22)
            {
              IOSArray_throwOutOfBoundsWithMsg(v22, v21);
            }

            v23 = *(&v20->super.size_ + v21 + 4);
            result |= (v23 & 0x7F) << 28;
            if (v23 < 0)
            {
              v24 = self->buffer_;
              v25 = self->bufferPosition_;
              self->bufferPosition_ = v25 + 1;
              v26 = v24->super.size_;
              if (v25 < 0 || v25 >= v26)
              {
                IOSArray_throwOutOfBoundsWithMsg(v26, v25);
              }

              v27 = *(&v24->super.size_ + v25 + 4);
              result |= (v27 & 0x7F) << 35;
              if (v27 < 0)
              {
                v28 = self->buffer_;
                v29 = self->bufferPosition_;
                self->bufferPosition_ = v29 + 1;
                v30 = v28->super.size_;
                if (v29 < 0 || v29 >= v30)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v30, v29);
                }

                v31 = *(&v28->super.size_ + v29 + 4);
                result |= (v31 & 0x7F) << 42;
                if (v31 < 0)
                {
                  v32 = self->buffer_;
                  v33 = self->bufferPosition_;
                  self->bufferPosition_ = v33 + 1;
                  v34 = v32->super.size_;
                  if (v33 < 0 || v33 >= v34)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v34, v33);
                  }

                  v35 = *(&v32->super.size_ + v33 + 4);
                  result |= (v35 & 0x7F) << 49;
                  if (v35 < 0)
                  {
                    v36 = self->buffer_;
                    v37 = self->bufferPosition_;
                    self->bufferPosition_ = v37 + 1;
                    if (v37 < 0 || v37 >= v36->super.size_)
                    {
                      IOSArray_throwOutOfBoundsWithMsg(v36->super.size_, v37);
                    }

                    v38 = *(&v36->super.size_ + v37 + 4);
                    if (v38 < 0)
                    {
                      v39 = new_JavaIoIOException_initWithNSString_(@"Invalid vLong detected (negative values disallowed)");
                      objc_exception_throw(v39);
                    }

                    return result | (v38 << 56);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (char)readByteWithLong:(int64_t)long
{
  v4 = long - self->bufferStart_;
  if (v4 < 0 || v4 >= self->bufferLength_)
  {
    self->bufferStart_ = long;
    self->bufferPosition_ = 0;
    self->bufferLength_ = 0;
    [(OrgApacheLuceneStoreBufferedIndexInput *)self seekInternalWithLong:?];
    [OrgApacheLuceneStoreBufferedIndexInput refill]_0(self);
    v4 = 0;
  }

  buffer = self->buffer_;
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  size = buffer->super.size_;
  if (size <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  return *(&buffer->super.size_ + v4 + 4);
}

- (signed)readShortWithLong:(int64_t)long
{
  v4 = long - self->bufferStart_;
  if (v4 < 0 || v4 >= self->bufferLength_ - 1)
  {
    self->bufferStart_ = long;
    self->bufferPosition_ = 0;
    self->bufferLength_ = 0;
    [(OrgApacheLuceneStoreBufferedIndexInput *)self seekInternalWithLong:?];
    [OrgApacheLuceneStoreBufferedIndexInput refill]_0(self);
    v4 = 0;
  }

  buffer = self->buffer_;
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  size = buffer->super.size_;
  if (size <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v7 = *(&buffer->super.size_ + v4 + 4);
  if (size <= v4 + 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4 + 1);
  }

  return *(&self->buffer_->super.size_ + v4 + 5) | (v7 << 8);
}

- (int)readIntWithLong:(int64_t)long
{
  v4 = long - self->bufferStart_;
  if (v4 < 0 || v4 >= self->bufferLength_ - 3)
  {
    self->bufferStart_ = long;
    self->bufferPosition_ = 0;
    self->bufferLength_ = 0;
    [(OrgApacheLuceneStoreBufferedIndexInput *)self seekInternalWithLong:?];
    [OrgApacheLuceneStoreBufferedIndexInput refill]_0(self);
    v4 = 0;
  }

  buffer = self->buffer_;
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  size = buffer->super.size_;
  if (size <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  if (size <= v4 + 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4 + 1);
  }

  v7 = self->buffer_;
  v8 = v4 << 32;
  v9 = (v4 << 32) + 0x200000000;
  if (v9 >> 32 < 0 || size <= SHIDWORD(v9))
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v9 >> 32);
  }

  v10 = (v8 + 0x300000000) >> 32;
  if (v10 < 0 || size <= v10)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (v8 + 0x300000000) >> 32);
  }

  return (*(&buffer->super.size_ + v4 + 4) << 24) | (*(&v7->super.size_ + v4 + 5) << 16) | (*(&v7->super.size_ + (v9 >> 32) + 4) << 8) | *(&v7->super.size_ + v10 + 4);
}

- (int64_t)readLongWithLong:(int64_t)long
{
  v4 = long - self->bufferStart_;
  if (v4 < 0 || v4 >= self->bufferLength_ - 7)
  {
    self->bufferStart_ = long;
    self->bufferPosition_ = 0;
    self->bufferLength_ = 0;
    [(OrgApacheLuceneStoreBufferedIndexInput *)self seekInternalWithLong:?];
    [OrgApacheLuceneStoreBufferedIndexInput refill]_0(self);
    v4 = 0;
  }

  buffer = self->buffer_;
  if (!buffer)
  {
    JreThrowNullPointerException();
  }

  size = buffer->super.size_;
  if (size <= v4)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4);
  }

  v7 = self->buffer_;
  v8 = *(&buffer->super.size_ + v4 + 4);
  if (size <= v4 + 1)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v4 + 1);
  }

  v9 = self->buffer_;
  v10 = *(&v7->super.size_ + v4 + 5);
  v11 = v4 << 32;
  v12 = (v4 << 32) + 0x200000000;
  if (v12 >> 32 < 0 || size <= SHIDWORD(v12))
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v12 >> 32);
  }

  v13 = *(&v7->super.size_ + (v12 >> 32) + 4);
  v14 = (v11 + 0x300000000) >> 32;
  if (v14 < 0 || size <= v14)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (v11 + 0x300000000) >> 32);
  }

  v15 = *(&v7->super.size_ + v14 + 4);
  v16 = (v11 + 0x400000000) >> 32;
  if (v16 < 0 || size <= v16)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (v11 + 0x400000000) >> 32);
  }

  v17 = *(&v7->super.size_ + v16 + 4);
  v18 = (v11 + 0x500000000) >> 32;
  if (v18 < 0 || size <= v18)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (v11 + 0x500000000) >> 32);
  }

  v19 = *(&self->buffer_->super.size_ + v18 + 4);
  v20 = (v11 + 0x600000000) >> 32;
  if (v20 < 0 || size <= v20)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (v11 + 0x600000000) >> 32);
  }

  v21 = *(&v9->super.size_ + v20 + 4);
  v22 = (v11 + 0x700000000) >> 32;
  if (v22 < 0 || size <= v22)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (v11 + 0x700000000) >> 32);
  }

  return (v17 << 24) | (v19 << 16) | (v21 << 8) | *(&v9->super.size_ + v22 + 4) | (((v8 << 24) | (v10 << 16) | (v13 << 8) | v15) << 32);
}

- (void)seekWithLong:(int64_t)long
{
  bufferStart = self->bufferStart_;
  if (long < bufferStart || bufferStart + self->bufferLength_ <= long)
  {
    self->bufferStart_ = long;
    self->bufferPosition_ = 0;
    self->bufferLength_ = 0;
    [(OrgApacheLuceneStoreBufferedIndexInput *)self seekInternalWithLong:?];
  }

  else
  {
    self->bufferPosition_ = long - bufferStart;
  }
}

- (id)clone
{
  v5.receiver = self;
  v5.super_class = OrgApacheLuceneStoreBufferedIndexInput;
  clone = [(OrgApacheLuceneStoreIndexInput *)&v5 clone];
  objc_opt_class();
  if (!clone)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  JreStrongAssign(clone + 3, 0);
  *(clone + 12) = 0;
  *(clone + 13) = 0;
  clone[5] = (self->bufferStart_ + self->bufferPosition_);
  return clone;
}

- (int)flushBufferWithOrgApacheLuceneStoreIndexOutput:(id)output withLong:(int64_t)long
{
  if (self->bufferLength_ - self->bufferPosition_ <= long)
  {
    longCopy = self->bufferLength_ - self->bufferPosition_;
  }

  else
  {
    longCopy = long;
  }

  if (longCopy >= 1)
  {
    if (!output)
    {
      JreThrowNullPointerException();
    }

    [output writeBytesWithByteArray:self->buffer_ withInt:? withInt:?];
    self->bufferPosition_ += longCopy;
  }

  return longCopy;
}

+ (int)bufferSizeWithOrgApacheLuceneStoreIOContext:(id)context
{
  if (!context)
  {
    JreThrowNullPointerException();
  }

  if ([*(context + 1) ordinal])
  {
    return 1024;
  }

  else
  {
    return 4096;
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreBufferedIndexInput;
  [(OrgApacheLuceneStoreIndexInput *)&v3 dealloc];
}

@end