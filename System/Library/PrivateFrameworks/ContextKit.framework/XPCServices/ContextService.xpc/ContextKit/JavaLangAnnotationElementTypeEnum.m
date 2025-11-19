@interface JavaLangAnnotationElementTypeEnum
+ (void)initialize;
@end

@implementation JavaLangAnnotationElementTypeEnum

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [JavaLangAnnotationElementTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v2, @"TYPE", 0);
    JavaLangAnnotationElementTypeEnum_values_[0] = v2;
    v3 = [JavaLangAnnotationElementTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v3, @"FIELD", 1);
    qword_100558230 = v3;
    v4 = [JavaLangAnnotationElementTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v4, @"METHOD", 2);
    qword_100558238 = v4;
    v5 = [JavaLangAnnotationElementTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v5, @"PARAMETER", 3);
    qword_100558240 = v5;
    v6 = [JavaLangAnnotationElementTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v6, @"CONSTRUCTOR", 4);
    qword_100558248 = v6;
    v7 = [JavaLangAnnotationElementTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v7, @"LOCAL_VARIABLE", 5);
    qword_100558250 = v7;
    v8 = [JavaLangAnnotationElementTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v8, @"ANNOTATION_TYPE", 6);
    qword_100558258 = v8;
    v9 = [JavaLangAnnotationElementTypeEnum alloc];
    JavaLangEnum_initWithNSString_withInt_(v9, @"PACKAGE", 7);
    qword_100558260 = v9;
    atomic_store(1u, JavaLangAnnotationElementTypeEnum__initialized);
  }
}

@end