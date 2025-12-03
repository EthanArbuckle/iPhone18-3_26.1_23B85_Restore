@interface NSDate(EFSQLExpressable)
- (id)ef_SQLExpression;
- (void)ef_renderSQLExpressionInto:()EFSQLExpressable;
@end

@implementation NSDate(EFSQLExpressable)

- (id)ef_SQLExpression
{
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [self ef_renderSQLExpressionInto:v2];

  return v2;
}

- (void)ef_renderSQLExpressionInto:()EFSQLExpressable
{
  v5 = a3;
  [self timeIntervalSince1970];
  [v5 appendFormat:@"%lld", vcvtmd_s64_f64(v4)];
}

@end