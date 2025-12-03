@interface OrgApacheLuceneStoreInputStreamDataInput
- (OrgApacheLuceneStoreInputStreamDataInput)initWithJavaIoInputStream:(id)stream;
- (char)readByte;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneStoreInputStreamDataInput

- (OrgApacheLuceneStoreInputStreamDataInput)initWithJavaIoInputStream:(id)stream
{
  OrgApacheLuceneStoreDataInput_init(self, a2);
  JreStrongAssign(&self->is_, stream);
  return self;
}

- (char)readByte
{
  is = self->is_;
  if (!is)
  {
    JreThrowNullPointerException();
  }

  read = [(JavaIoInputStream *)is read];
  if (read == -1)
  {
    v4 = new_JavaIoEOFException_init();
    objc_exception_throw(v4);
  }

  return read;
}

- (void)close
{
  is = self->is_;
  if (!is)
  {
    JreThrowNullPointerException();
  }

  [(JavaIoInputStream *)is close];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreInputStreamDataInput;
  [(OrgApacheLuceneStoreDataInput *)&v3 dealloc];
}

@end