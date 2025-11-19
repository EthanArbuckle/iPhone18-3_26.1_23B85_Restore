@interface TitleInfo
- (id)debugDescription;
@end

@implementation TitleInfo

- (id)debugDescription
{
  v7.receiver = self;
  v7.super_class = TitleInfo;
  v3 = [(TitleInfo *)&v7 debugDescription];
  conditionals = self->_conditionals;
  v5 = [NSString stringWithFormat:@"%@: %@ %@ %lu %lu %lu %lu C:%@ TS:%@", v3, self->_title, self->_importantTokens, self->_tokenCountMatching, self->_tokenCountPrimary, self->_tokenCount, self->_index, conditionals, self->_tokenString];

  return v5;
}

@end