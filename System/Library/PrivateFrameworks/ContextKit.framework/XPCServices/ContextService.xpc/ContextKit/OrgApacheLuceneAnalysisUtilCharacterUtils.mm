@interface OrgApacheLuceneAnalysisUtilCharacterUtils
+ (id)getInstance;
+ (id)getJava4Instance;
+ (void)initialize;
- (BOOL)fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:(id)a3 withJavaIoReader:(id)a4;
- (int)toCodePointsWithCharArray:(id)a3 withInt:(int)a4 withInt:(int)a5 withIntArray:(id)a6 withInt:(int)a7;
@end

@implementation OrgApacheLuceneAnalysisUtilCharacterUtils

+ (id)getInstance
{
  if ((atomic_load_explicit(&OrgApacheLuceneAnalysisUtilCharacterUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000BD9B0();
  }

  return qword_100554418;
}

+ (id)getJava4Instance
{
  if ((atomic_load_explicit(&OrgApacheLuceneAnalysisUtilCharacterUtils__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_1000BD9B0();
  }

  return qword_100554410;
}

- (int)toCodePointsWithCharArray:(id)a3 withInt:(int)a4 withInt:(int)a5 withIntArray:(id)a6 withInt:(int)a7
{
  if (a5 < 0)
  {
    v20 = new_JavaLangIllegalArgumentException_initWithNSString_(@"srcLen must be >= 0");
    objc_exception_throw(v20);
  }

  if (!a5)
  {
    return 0;
  }

  v12 = 0;
  v13 = 0;
  do
  {
    v14 = [(OrgApacheLuceneAnalysisUtilCharacterUtils *)self codePointAtWithCharArray:a3 withInt:(v13 + a4) withInt:(a5 + a4)];
    v15 = JavaLangCharacter_charCountWithInt_(v14);
    if (!a6)
    {
      JreThrowNullPointerException();
    }

    v16 = v15;
    v17 = *(a6 + 2);
    v18 = a7 + v12;
    if (a7 + v12 < 0 || v18 >= v17)
    {
      IOSArray_throwOutOfBoundsWithMsg(v17, v18);
    }

    *(a6 + a7 + v12 + 3) = v14;
    v13 += v16;
    ++v12;
  }

  while (v13 < a5);
  return v12;
}

- (BOOL)fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:(id)a3 withJavaIoReader:(id)a4
{
  if (!a3 || (v4 = *(a3 + 2)) == 0)
  {
    JreThrowNullPointerException();
  }

  v5 = *(v4 + 8);

  return [OrgApacheLuceneAnalysisUtilCharacterUtils fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:"fillWithOrgApacheLuceneAnalysisUtilCharacterUtils_CharacterBuffer:withJavaIoReader:withInt:" withJavaIoReader:? withInt:?];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    JreStrongAssignAndConsume(&qword_100554410, [OrgApacheLuceneAnalysisUtilCharacterUtils_Java4CharacterUtils alloc]);
    JreStrongAssignAndConsume(&qword_100554418, [OrgApacheLuceneAnalysisUtilCharacterUtils_Java5CharacterUtils alloc]);
    atomic_store(1u, &OrgApacheLuceneAnalysisUtilCharacterUtils__initialized);
  }
}

@end