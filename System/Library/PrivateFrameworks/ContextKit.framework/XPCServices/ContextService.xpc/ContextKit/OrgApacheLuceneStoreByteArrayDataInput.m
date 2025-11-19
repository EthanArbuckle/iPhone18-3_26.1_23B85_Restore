@interface OrgApacheLuceneStoreByteArrayDataInput
- (OrgApacheLuceneStoreByteArrayDataInput)initWithByteArray:(id)a3;
- (char)readByte;
- (int)readInt;
- (int)readVInt;
- (int64_t)readLong;
- (int64_t)readVLong;
- (signed)readShort;
- (void)dealloc;
- (void)resetWithByteArray:(id)a3;
- (void)resetWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5;
@end

@implementation OrgApacheLuceneStoreByteArrayDataInput

- (OrgApacheLuceneStoreByteArrayDataInput)initWithByteArray:(id)a3
{
  OrgApacheLuceneStoreDataInput_init(self, a2);
  [(OrgApacheLuceneStoreByteArrayDataInput *)self resetWithByteArray:a3];
  return self;
}

- (void)resetWithByteArray:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v4 = *(a3 + 2);

  [(OrgApacheLuceneStoreByteArrayDataInput *)self resetWithByteArray:a3 withInt:0 withInt:v4];
}

- (void)resetWithByteArray:(id)a3 withInt:(int)a4 withInt:(int)a5
{
  JreStrongAssign(&self->bytes_, a3);
  self->pos_ = a4;
  self->limit_ = a5 + a4;
}

- (signed)readShort
{
  pos = self->pos_;
  v3 = (pos + 1);
  self->pos_ = v3;
  bytes = self->bytes_;
  if (!bytes)
  {
    JreThrowNullPointerException();
  }

  size = bytes->super.size_;
  if ((pos & 0x80000000) != 0 || pos >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, pos);
  }

  v7 = *(&bytes->super.size_ + pos + 4);
  self->pos_ = v3 + 1;
  v8 = bytes->super.size_;
  if ((v3 & 0x80000000) != 0 || v3 >= v8)
  {
    IOSArray_throwOutOfBoundsWithMsg(v8, v3);
  }

  return *(&bytes->super.size_ + v3 + 4) | (v7 << 8);
}

- (int)readInt
{
  pos = self->pos_;
  self->pos_ = pos + 3;
  bytes = self->bytes_;
  if (!bytes)
  {
    JreThrowNullPointerException();
  }

  v5 = (pos + 1);
  v6 = (pos + 2);
  size = bytes->super.size_;
  if ((pos & 0x80000000) != 0 || pos >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, pos);
  }

  v8 = *(&bytes->super.size_ + pos + 4);
  if ((v5 & 0x80000000) != 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v5);
  }

  v9 = *(&bytes->super.size_ + v5 + 4);
  if ((v6 & 0x80000000) != 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  v10 = *(&bytes->super.size_ + v6 + 4);
  v11 = self->pos_;
  self->pos_ = v11 + 1;
  v12 = bytes->super.size_;
  if (v11 < 0 || v11 >= v12)
  {
    IOSArray_throwOutOfBoundsWithMsg(v12, v11);
  }

  return (v8 << 24) | (v9 << 16) | (v10 << 8) | *(&bytes->super.size_ + v11 + 4);
}

- (int64_t)readLong
{
  pos = self->pos_;
  self->pos_ = pos + 3;
  bytes = self->bytes_;
  if (!bytes)
  {
    JreThrowNullPointerException();
  }

  v5 = pos + 1;
  v6 = (pos + 2);
  size = bytes->super.size_;
  if ((pos & 0x80000000) != 0 || pos >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, pos);
  }

  v8 = *(&bytes->super.size_ + pos + 4);
  if (v5 < 0 || v5 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, (pos + 1));
  }

  v9 = *(&bytes->super.size_ + v5 + 4);
  if ((v6 & 0x80000000) != 0 || v6 >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, v6);
  }

  v10 = *(&bytes->super.size_ + v6 + 4);
  v11 = self->pos_;
  v12 = v11 + 1;
  self->pos_ = v11 + 1;
  v13 = bytes->super.size_;
  if (v11 < 0 || v11 >= v13)
  {
    IOSArray_throwOutOfBoundsWithMsg(v13, v11);
  }

  v14 = *(&bytes->super.size_ + v11 + 4);
  v15 = (v11 + 2);
  v16 = (v11 + 3);
  self->pos_ = v11 + 4;
  v17 = self->bytes_;
  v18 = v17->super.size_;
  if (v12 < 0 || v12 >= v18)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, v12);
  }

  v19 = self->bytes_;
  v20 = *(&v17->super.size_ + v12 + 4);
  if ((v15 & 0x80000000) != 0 || v15 >= v18)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, v15);
  }

  v21 = *(&v19->super.size_ + v15 + 4);
  if ((v16 & 0x80000000) != 0 || v16 >= v18)
  {
    IOSArray_throwOutOfBoundsWithMsg(v18, v16);
  }

  v22 = *(&v17->super.size_ + v16 + 4);
  v23 = self->pos_;
  self->pos_ = v23 + 1;
  v24 = v19->super.size_;
  if (v23 < 0 || v23 >= v24)
  {
    IOSArray_throwOutOfBoundsWithMsg(v24, v23);
  }

  return (v20 << 24) | (v21 << 16) | (v22 << 8) | *(&v19->super.size_ + v23 + 4) | (((v8 << 24) | (v9 << 16) | (v10 << 8) | v14) << 32);
}

- (int)readVInt
{
  bytes = self->bytes_;
  if (!bytes)
  {
    JreThrowNullPointerException();
  }

  pos = self->pos_;
  self->pos_ = pos + 1;
  size = bytes->super.size_;
  if (pos < 0 || pos >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, pos);
  }

  v6 = *(&bytes->super.size_ + pos + 4);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = v6 & 0x7F;
    v8 = self->bytes_;
    v9 = self->pos_;
    self->pos_ = v9 + 1;
    v10 = v8->super.size_;
    if (v9 < 0 || v9 >= v10)
    {
      IOSArray_throwOutOfBoundsWithMsg(v10, v9);
    }

    v11 = *(&v8->super.size_ + v9 + 4);
    v6 = v7 & 0xFFFFC07F | ((v11 & 0x7F) << 7);
    if (v11 < 0)
    {
      v12 = self->bytes_;
      v13 = self->pos_;
      self->pos_ = v13 + 1;
      v14 = v12->super.size_;
      if (v13 < 0 || v13 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v13);
      }

      v15 = *(&v12->super.size_ + v13 + 4);
      v6 = v6 & 0xFFE03FFF | ((v15 & 0x7F) << 14);
      if (v15 < 0)
      {
        v16 = self->bytes_;
        v17 = self->pos_;
        self->pos_ = v17 + 1;
        v18 = v16->super.size_;
        if (v17 < 0 || v17 >= v18)
        {
          IOSArray_throwOutOfBoundsWithMsg(v18, v17);
        }

        v19 = *(&v16->super.size_ + v17 + 4);
        v6 = v6 & 0xF01FFFFF | ((v19 & 0x7F) << 21);
        if (v19 < 0)
        {
          v20 = self->bytes_;
          v21 = self->pos_;
          self->pos_ = v21 + 1;
          v22 = v20->super.size_;
          if (v21 < 0 || v21 >= v22)
          {
            IOSArray_throwOutOfBoundsWithMsg(v22, v21);
          }

          v23 = *(&v20->super.size_ + v21 + 4);
          if (v23 > 0xF)
          {
            v25 = new_JavaLangRuntimeException_initWithNSString_(@"Invalid vInt detected (too many bits)");
            objc_exception_throw(v25);
          }

          v6 |= v23 << 28;
        }
      }
    }
  }

  return v6;
}

- (int64_t)readVLong
{
  bytes = self->bytes_;
  if (!bytes)
  {
    JreThrowNullPointerException();
  }

  pos = self->pos_;
  self->pos_ = pos + 1;
  size = bytes->super.size_;
  if (pos < 0 || pos >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, pos);
  }

  result = *(&bytes->super.size_ + pos + 4);
  if (result < 0)
  {
    v7 = result & 0x7F;
    v8 = self->bytes_;
    v9 = self->pos_;
    self->pos_ = v9 + 1;
    v10 = v8->super.size_;
    if (v9 < 0 || v9 >= v10)
    {
      IOSArray_throwOutOfBoundsWithMsg(v10, v9);
    }

    v11 = *(&v8->super.size_ + v9 + 4);
    result = v7 | ((v11 & 0x7F) << 7);
    if (v11 < 0)
    {
      v12 = self->bytes_;
      v13 = self->pos_;
      self->pos_ = v13 + 1;
      if (v13 < 0 || v13 >= v12->super.size_)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12->super.size_, v13);
      }

      v14 = *(&v12->super.size_ + v13 + 4);
      result |= (v14 & 0x7F) << 14;
      if (v14 < 0)
      {
        v15 = self->bytes_;
        v16 = self->pos_;
        self->pos_ = v16 + 1;
        if (v16 < 0 || v16 >= v15->super.size_)
        {
          IOSArray_throwOutOfBoundsWithMsg(v15->super.size_, v16);
        }

        v17 = *(&v15->super.size_ + v16 + 4);
        result |= (v17 & 0x7F) << 21;
        if (v17 < 0)
        {
          v18 = self->bytes_;
          v19 = self->pos_;
          self->pos_ = v19 + 1;
          if (v19 < 0 || v19 >= v18->super.size_)
          {
            IOSArray_throwOutOfBoundsWithMsg(v18->super.size_, v19);
          }

          v20 = *(&v18->super.size_ + v19 + 4);
          result |= (v20 & 0x7F) << 28;
          if (v20 < 0)
          {
            v21 = self->bytes_;
            v22 = self->pos_;
            self->pos_ = v22 + 1;
            if (v22 < 0 || v22 >= v21->super.size_)
            {
              IOSArray_throwOutOfBoundsWithMsg(v21->super.size_, v22);
            }

            v23 = *(&v21->super.size_ + v22 + 4);
            result |= (v23 & 0x7F) << 35;
            if (v23 < 0)
            {
              v24 = self->bytes_;
              v25 = self->pos_;
              self->pos_ = v25 + 1;
              if (v25 < 0 || v25 >= v24->super.size_)
              {
                IOSArray_throwOutOfBoundsWithMsg(v24->super.size_, v25);
              }

              v26 = *(&v24->super.size_ + v25 + 4);
              result |= (v26 & 0x7F) << 42;
              if (v26 < 0)
              {
                v27 = self->bytes_;
                v28 = self->pos_;
                self->pos_ = v28 + 1;
                if (v28 < 0 || v28 >= v27->super.size_)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v27->super.size_, v28);
                }

                v29 = *(&v27->super.size_ + v28 + 4);
                result |= (v29 & 0x7F) << 49;
                if (v29 < 0)
                {
                  v30 = self->bytes_;
                  v31 = self->pos_;
                  self->pos_ = v31 + 1;
                  if (v31 < 0 || v31 >= v30->super.size_)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v30->super.size_, v31);
                  }

                  v32 = *(&v30->super.size_ + v31 + 4);
                  if (v32 < 0)
                  {
                    v33 = new_JavaLangRuntimeException_initWithNSString_(@"Invalid vLong detected (negative values disallowed)");
                    objc_exception_throw(v33);
                  }

                  return result | (v32 << 56);
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

- (char)readByte
{
  bytes = self->bytes_;
  if (!bytes)
  {
    JreThrowNullPointerException();
  }

  pos = self->pos_;
  self->pos_ = pos + 1;
  size = bytes->super.size_;
  if (pos < 0 || pos >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, pos);
  }

  return *(&bytes->super.size_ + pos + 4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreByteArrayDataInput;
  [(OrgApacheLuceneStoreDataInput *)&v3 dealloc];
}

@end