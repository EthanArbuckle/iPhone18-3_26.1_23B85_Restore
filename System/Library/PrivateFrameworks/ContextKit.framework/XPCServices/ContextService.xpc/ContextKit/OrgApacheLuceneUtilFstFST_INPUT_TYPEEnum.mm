@interface OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum
+ (void)initialize;
@end

@implementation OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"BYTE1", 0);
    OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum_values_[0] = v2;
    v3 = [OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"BYTE2", 1);
    qword_100557B78 = v3;
    v4 = [OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"BYTE4", 2);
    qword_100557B80 = v4;
    atomic_store(1u, OrgApacheLuceneUtilFstFST_INPUT_TYPEEnum__initialized);
  }
}

@end