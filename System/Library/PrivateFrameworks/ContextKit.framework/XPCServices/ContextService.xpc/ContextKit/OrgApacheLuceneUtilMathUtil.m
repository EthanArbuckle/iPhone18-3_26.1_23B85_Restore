@interface OrgApacheLuceneUtilMathUtil
+ (double)acoshWithDouble:(double)a3;
@end

@implementation OrgApacheLuceneUtilMathUtil

+ (double)acoshWithDouble:(double)a3
{
  v3 = JavaLangMath_sqrtWithDouble_(a3 * a3 + -1.0) + a3;

  return JavaLangMath_logWithDouble_(v3);
}

@end