@interface OrgApacheLuceneStoreRAMFile
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (OrgApacheLuceneStoreRAMFile)init;
- (OrgApacheLuceneStoreRAMFile)initWithOrgApacheLuceneStoreRAMDirectory:(id)directory;
- (id)addBufferWithInt:(int)int;
- (int)numBuffers;
- (int64_t)getLength;
- (int64_t)ramBytesUsed;
- (unint64_t)hash;
- (void)dealloc;
- (void)setLengthWithLong:(int64_t)long;
@end

@implementation OrgApacheLuceneStoreRAMFile

- (OrgApacheLuceneStoreRAMFile)init
{
  v3 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&self->buffers_, v3);
  return self;
}

- (OrgApacheLuceneStoreRAMFile)initWithOrgApacheLuceneStoreRAMDirectory:(id)directory
{
  v5 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&self->buffers_, v5);
  JreStrongAssign(&self->directory_, directory);
  return self;
}

- (int64_t)getLength
{
  objc_sync_enter(self);
  length = self->length_;
  objc_sync_exit(self);
  return length;
}

- (void)setLengthWithLong:(int64_t)long
{
  objc_sync_enter(self);
  self->length_ = long;

  objc_sync_exit(self);
}

- (id)addBufferWithInt:(int)int
{
  v5 = [(OrgApacheLuceneStoreRAMFile *)self newBufferWithInt:?];
  objc_sync_enter(self);
  buffers = self->buffers_;
  if (!buffers)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilArrayList *)buffers addWithId:v5];
  self->sizeInBytes_ += int;
  objc_sync_exit(self);
  directory = self->directory_;
  if (directory)
  {
    sizeInBytes = directory->sizeInBytes_;
    if (!sizeInBytes)
    {
      JreThrowNullPointerException();
    }

    [(JavaUtilConcurrentAtomicAtomicLong *)sizeInBytes getAndAddWithLong:int];
  }

  return v5;
}

- (int)numBuffers
{
  objc_sync_enter(self);
  buffers = self->buffers_;
  if (!buffers)
  {
    JreThrowNullPointerException();
  }

  v4 = [(JavaUtilArrayList *)buffers size];
  objc_sync_exit(self);
  return v4;
}

- (int64_t)ramBytesUsed
{
  objc_sync_enter(self);
  sizeInBytes = self->sizeInBytes_;
  objc_sync_exit(self);
  return sizeInBytes;
}

- (NSString)description
{
  v3 = [-[OrgApacheLuceneStoreRAMFile getClass](self "getClass")];
  length = self->length_;
  return JreStrcat("$$JC", v4, v5, v6, v7, v8, v9, v10, v3);
}

- (unint64_t)hash
{
  length = self->length_;
  length_high = HIDWORD(self->length_);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  buffers = self->buffers_;
  if (!buffers)
  {
    JreThrowNullPointerException();
  }

  v5 = length_high ^ length;
  v6 = [(JavaUtilArrayList *)self->buffers_ countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(buffers);
        }

        v5 = JavaUtilArrays_hashCodeWithByteArray_(*(*(&v11 + 1) + 8 * i)) - v5 + 32 * v5;
      }

      v7 = [(JavaUtilArrayList *)buffers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  getClass = [(OrgApacheLuceneStoreRAMFile *)self getClass];
  if (getClass != [equal getClass])
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  if (self->length_ != *(equal + 2))
  {
    return 0;
  }

  buffers = self->buffers_;
  if (!buffers)
  {
    JreThrowNullPointerException();
  }

  v7 = [(JavaUtilArrayList *)buffers size];
  if (v7 != [*(equal + 1) size])
  {
    return 0;
  }

  if ([(JavaUtilArrayList *)self->buffers_ size]< 1)
  {
    return 1;
  }

  v8 = 0;
  do
  {
    v9 = JavaUtilArrays_equalsWithByteArray_withByteArray_(-[JavaUtilArrayList getWithInt:](self->buffers_, "getWithInt:", v8), [*(equal + 1) getWithInt:v8]);
    if ((v9 & 1) == 0)
    {
      break;
    }

    v8 = (v8 + 1);
  }

  while (v8 < [(JavaUtilArrayList *)self->buffers_ size]);
  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneStoreRAMFile;
  [(OrgApacheLuceneStoreRAMFile *)&v3 dealloc];
}

@end