@interface CNNameListBuilderBlockDelegate
- (BOOL)builder:(id)builder isValidLengthOfString:(id)string;
- (id)builder:(id)builder nameAtIndex:(int64_t)index;
@end

@implementation CNNameListBuilderBlockDelegate

- (BOOL)builder:(id)builder isValidLengthOfString:(id)string
{
  stringCopy = string;
  lengthValidationBlock = [(CNNameListBuilderBlockDelegate *)self lengthValidationBlock];
  v7 = (lengthValidationBlock)[2](lengthValidationBlock, stringCopy);

  return v7;
}

- (id)builder:(id)builder nameAtIndex:(int64_t)index
{
  nameProviderBlock = [(CNNameListBuilderBlockDelegate *)self nameProviderBlock];
  v6 = nameProviderBlock[2](nameProviderBlock, index);

  return v6;
}

@end