@interface OrgApacheLuceneStoreBufferedChecksum
- (OrgApacheLuceneStoreBufferedChecksum)initWithJavaUtilZipChecksum:(id)a3;
- (OrgApacheLuceneStoreBufferedChecksum)initWithJavaUtilZipChecksum:(id)a3 withInt:(int)a4;
- (int64_t)getValue;
- (void)dealloc;
- (void)flush;
- (void)reset;
- (void)updateWithInt:(int)a3;
@end

@implementation OrgApacheLuceneStoreBufferedChecksum

- (OrgApacheLuceneStoreBufferedChecksum)initWithJavaUtilZipChecksum:(id)a3
{
  JreStrongAssign(&self->in_, a3);
  JreStrongAssignAndConsume(&self->buffer_, [IOSByteArray newArrayWithLength:256]);
  return self;
}

- (OrgApacheLuceneStoreBufferedChecksum)initWithJavaUtilZipChecksum:(id)a3 withInt:(int)a4
{
  JreStrongAssign(&self->in_, a3);
  JreStrongAssignAndConsume(&self->buffer_, [IOSByteArray newArrayWithLength:a4]);
  return self;
}

- (void)updateWithInt:(int)a3
{
  buffer = self->buffer_;
  if (!buffer)
  {
    goto LABEL_10;
  }

  v4 = a3;
  upto = self->upto_;
  if (upto == buffer->super.size_)
  {
    if (upto < 1)
    {
      upto = 0;
      goto LABEL_7;
    }

    in = self->in_;
    if (in)
    {
      [(JavaUtilZipChecksum *)in updateWithByteArray:buffer withInt:0 withInt:upto];
      upto = 0;
      buffer = self->buffer_;
      goto LABEL_7;
    }

LABEL_10:
    JreThrowNullPointerException();
  }

LABEL_7:
  self->upto_ = upto + 1;
  size = buffer->super.size_;
  if ((upto & 0x80000000) != 0 || upto >= size)
  {
    IOSArray_throwOutOfBoundsWithMsg(size, upto);
  }

  *(&buffer->super.size_ + upto + 4) = v4;
}

- (int64_t)getValue
{
  if (self->upto_ >= 1)
  {
    in = self->in_;
    if (!in)
    {
      goto LABEL_8;
    }

    [(JavaUtilZipChecksum *)in updateWithByteArray:self->buffer_ withInt:0 withInt:?];
  }

  self->upto_ = 0;
  v4 = self->in_;
  if (!v4)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  return [(JavaUtilZipChecksum *)v4 getValue];
}

- (void)reset
{
  self->upto_ = 0;
  in = self->in_;
  if (!in)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilZipChecksum *)in reset];
}

- (void)flush
{
  if (self->upto_ >= 1)
  {
    in = self->in_;
    if (!in)
    {
      JreThrowNullPointerException();
    }

    [(JavaUtilZipChecksum *)in updateWithByteArray:self->buffer_ withInt:0 withInt:?];
  }

  self->upto_ = 0;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreBufferedChecksum;
  [(OrgApacheLuceneStoreBufferedChecksum *)&v3 dealloc];
}

@end