@interface OrgApacheLuceneStoreRAMInputStream_$1
- (OrgApacheLuceneStoreRAMInputStream_$1)initWithLong:(int64_t)long withNSString:(id)string withOrgApacheLuceneStoreRAMFile:(id)file withLong:(int64_t)withLong;
- (id)sliceWithNSString:(id)string withLong:(int64_t)long withLong:(int64_t)withLong;
- (int64_t)getFilePointer;
- (int64_t)length;
- (void)seekWithLong:(int64_t)long;
@end

@implementation OrgApacheLuceneStoreRAMInputStream_$1

- (void)seekWithLong:(int64_t)long
{
  if (long < 0)
  {
    v9 = JreStrcat("$@", a2, long, v3, v4, v5, v6, v7, @"Seeking to negative position: ");
    v10 = new_JavaLangIllegalArgumentException_initWithNSString_(v9);
    objc_exception_throw(v10);
  }

  v8 = *(&self->super.bufferLength_ + 1);
  v11.receiver = self;
  v11.super_class = OrgApacheLuceneStoreRAMInputStream__1;
  [(OrgApacheLuceneStoreRAMInputStream *)&v11 seekWithLong:v8 + long];
}

- (int64_t)getFilePointer
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreRAMInputStream__1;
  return [(OrgApacheLuceneStoreRAMInputStream *)&v3 getFilePointer]- *(&self->super.bufferLength_ + 1);
}

- (int64_t)length
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreRAMInputStream__1;
  return [(OrgApacheLuceneStoreRAMInputStream *)&v3 length]- *(&self->super.bufferLength_ + 1);
}

- (id)sliceWithNSString:(id)string withLong:(int64_t)long withLong:(int64_t)withLong
{
  v5 = *(&self->super.bufferLength_ + 1);
  v7.receiver = self;
  v7.super_class = OrgApacheLuceneStoreRAMInputStream__1;
  return [(OrgApacheLuceneStoreRAMInputStream *)&v7 sliceWithNSString:string withLong:v5 + long withLong:withLong];
}

- (OrgApacheLuceneStoreRAMInputStream_$1)initWithLong:(int64_t)long withNSString:(id)string withOrgApacheLuceneStoreRAMFile:(id)file withLong:(int64_t)withLong
{
  *(&self->super.bufferLength_ + 1) = long;
  OrgApacheLuceneStoreRAMInputStream_initWithNSString_withOrgApacheLuceneStoreRAMFile_withLong_(self, string, file, withLong, file, withLong, v6, v7);
  [(OrgApacheLuceneStoreRAMInputStream_$1 *)self seekWithLong:0];
  return self;
}

@end