@interface EMFQueryUntokenized
- (BOOL)hasMultipleConstituentTokens;
- (id)tokens;
@end

@implementation EMFQueryUntokenized

- (id)tokens
{
  queryString = [(EMFQuery *)self queryString];
  locale = [(EMFQuery *)self locale];
  v5 = _createNormalizedString(queryString, locale);

  v6 = [MEMORY[0x1E695DEC8] arrayWithObject:v5];
  v10.receiver = self;
  v10.super_class = EMFQueryUntokenized;
  [(EMFQuery *)&v10 setTokens:v6];
  v9.receiver = self;
  v9.super_class = EMFQueryUntokenized;
  tokens = [(EMFQuery *)&v9 tokens];

  return tokens;
}

- (BOOL)hasMultipleConstituentTokens
{
  v5.receiver = self;
  v5.super_class = EMFQueryUntokenized;
  tokens = [(EMFQuery *)&v5 tokens];
  v3 = [tokens count] > 1;

  return v3;
}

@end