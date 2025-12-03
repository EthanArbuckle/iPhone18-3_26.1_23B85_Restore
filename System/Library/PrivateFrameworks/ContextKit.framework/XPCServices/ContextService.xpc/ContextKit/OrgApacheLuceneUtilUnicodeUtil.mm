@interface OrgApacheLuceneUtilUnicodeUtil
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilUnicodeUtil

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v5 = -1;
    v6 = -1;
    v2 = new_OrgApacheLuceneUtilBytesRef_initWithByteArray_([IOSByteArray arrayWithBytes:&v5 count:10]);
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilUnicodeUtil_BIG_TERM_, v2);
    *&v3 = 0x100000001;
    *(&v3 + 1) = 0x100000001;
    v4[0] = v3;
    v4[1] = v3;
    v4[2] = v3;
    v4[3] = v3;
    v4[4] = v3;
    v4[5] = v3;
    v4[6] = v3;
    v4[7] = v3;
    v4[8] = v3;
    v4[9] = v3;
    v4[10] = v3;
    v4[11] = v3;
    v4[12] = v3;
    v4[13] = v3;
    v4[14] = v3;
    v4[15] = v3;
    v4[16] = v3;
    v4[17] = v3;
    v4[18] = v3;
    v4[19] = v3;
    v4[20] = v3;
    v4[21] = v3;
    v4[22] = v3;
    v4[23] = v3;
    v4[24] = v3;
    v4[25] = v3;
    v4[26] = v3;
    v4[27] = v3;
    v4[28] = v3;
    v4[29] = v3;
    v4[30] = v3;
    v4[31] = v3;
    *&v3 = 0x8000000080000000;
    *(&v3 + 1) = 0x8000000080000000;
    v4[32] = v3;
    v4[33] = v3;
    v4[34] = v3;
    v4[35] = v3;
    v4[36] = v3;
    v4[37] = v3;
    v4[38] = v3;
    v4[39] = v3;
    v4[40] = v3;
    v4[41] = v3;
    v4[42] = v3;
    v4[43] = v3;
    v4[44] = v3;
    v4[45] = v3;
    v4[46] = v3;
    v4[47] = v3;
    *&v3 = 0x200000002;
    *(&v3 + 1) = 0x200000002;
    v4[48] = v3;
    v4[49] = v3;
    v4[50] = v3;
    v4[51] = v3;
    v4[52] = v3;
    v4[53] = v3;
    v4[54] = v3;
    v4[55] = v3;
    *&v3 = 0x300000003;
    *(&v3 + 1) = 0x300000003;
    v4[56] = v3;
    v4[57] = v3;
    v4[58] = v3;
    v4[59] = v3;
    *&v3 = 0x400000004;
    *(&v3 + 1) = 0x400000004;
    v4[60] = v3;
    v4[61] = v3;
    JreStrongAssignAndConsume(&OrgApacheLuceneUtilUnicodeUtil_utf8CodeLength_, [IOSIntArray newArrayWithInts:v4 count:248]);
    atomic_store(1u, OrgApacheLuceneUtilUnicodeUtil__initialized);
  }
}

@end