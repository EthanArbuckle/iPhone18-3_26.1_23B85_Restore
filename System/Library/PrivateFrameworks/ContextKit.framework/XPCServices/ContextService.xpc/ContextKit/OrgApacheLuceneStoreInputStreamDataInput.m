@interface OrgApacheLuceneStoreInputStreamDataInput
- (OrgApacheLuceneStoreInputStreamDataInput)initWithJavaIoInputStream:(id)a3;
- (char)readByte;
- (void)close;
- (void)dealloc;
@end

@implementation OrgApacheLuceneStoreInputStreamDataInput

- (OrgApacheLuceneStoreInputStreamDataInput)initWithJavaIoInputStream:(id)a3
{
  OrgApacheLuceneStoreDataInput_init(self, a2);
  JreStrongAssign(&self->is_, a3);
  return self;
}

- (char)readByte
{
  is = self->is_;
  if (!is)
  {
    JreThrowNullPointerException();
  }

  v3 = [(JavaIoInputStream *)is read];
  if (v3 == -1)
  {
    v4 = new_JavaIoEOFException_init();
    objc_exception_throw(v4);
  }

  return v3;
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