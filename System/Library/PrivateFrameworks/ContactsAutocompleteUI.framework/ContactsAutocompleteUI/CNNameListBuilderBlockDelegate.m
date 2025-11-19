@interface CNNameListBuilderBlockDelegate
- (BOOL)builder:(id)a3 isValidLengthOfString:(id)a4;
- (id)builder:(id)a3 nameAtIndex:(int64_t)a4;
@end

@implementation CNNameListBuilderBlockDelegate

- (BOOL)builder:(id)a3 isValidLengthOfString:(id)a4
{
  v5 = a4;
  v6 = [(CNNameListBuilderBlockDelegate *)self lengthValidationBlock];
  v7 = (v6)[2](v6, v5);

  return v7;
}

- (id)builder:(id)a3 nameAtIndex:(int64_t)a4
{
  v5 = [(CNNameListBuilderBlockDelegate *)self nameProviderBlock];
  v6 = v5[2](v5, a4);

  return v6;
}

@end