@interface OrgApacheLuceneUtilBitUtil
+ (int)zigZagDecodeWithInt:(int)int;
+ (int)zigZagEncodeWithInt:(int)int;
+ (int64_t)zigZagDecodeWithLong:(int64_t)long;
+ (int64_t)zigZagEncodeWithLong:(int64_t)long;
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilBitUtil

+ (int)zigZagEncodeWithInt:(int)int
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  return (int >> 31) ^ (2 * int);
}

+ (int64_t)zigZagEncodeWithLong:(int64_t)long
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  return (long >> 63) ^ (2 * long);
}

+ (int)zigZagDecodeWithInt:(int)int
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  return -(int & 1) ^ (int >> 1);
}

+ (int64_t)zigZagDecodeWithLong:(int64_t)long
{
  if ((atomic_load_explicit(OrgApacheLuceneUtilBitUtil__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100032370();
  }

  return -(long & 1) ^ (long >> 1);
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v7[12] = xmmword_100314208;
    v7[13] = unk_100314218;
    v7[14] = xmmword_100314228;
    v7[15] = unk_100314238;
    v7[8] = xmmword_1003141C8;
    v7[9] = unk_1003141D8;
    v7[10] = xmmword_1003141E8;
    v7[11] = unk_1003141F8;
    v7[4] = xmmword_100314188;
    v7[5] = unk_100314198;
    v7[6] = xmmword_1003141A8;
    v7[7] = unk_1003141B8;
    v7[0] = xmmword_100314148;
    v7[1] = unk_100314158;
    v7[2] = xmmword_100314168;
    v7[3] = unk_100314178;
    JreStrongAssignAndConsume(&qword_100553F10, [IOSByteArray newArrayWithBytes:v7 count:256]);
    memcpy(__dst, &unk_100314248, sizeof(__dst));
    JreStrongAssignAndConsume(&qword_100553F18, [IOSIntArray newArrayWithInts:__dst count:256]);
    v5 = 0xAAAAAAAAAAAAAAAALL;
    v4[0] = xmmword_100314648;
    v4[1] = unk_100314658;
    v4[2] = xmmword_100314668;
    JreStrongAssignAndConsume(&qword_100553F20, [IOSLongArray newArrayWithLongs:v4 count:7]);
    v2 = 0x8000400020001;
    v3 = 16;
    JreStrongAssignAndConsume(&qword_100553F28, [IOSShortArray newArrayWithShorts:&v2 count:5]);
    atomic_store(1u, OrgApacheLuceneUtilBitUtil__initialized);
  }
}

@end