@interface WFHTMLToMarkdownAbbreviation
- (BOOL)isEqual:(id)equal;
- (unint64_t)hash;
@end

@implementation WFHTMLToMarkdownAbbreviation

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      abbreviation = [(WFHTMLToMarkdownAbbreviation *)self abbreviation];
      abbreviation2 = [(WFHTMLToMarkdownAbbreviation *)equalCopy abbreviation];
      v7 = [abbreviation isEqualToString:abbreviation2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  abbreviation = [(WFHTMLToMarkdownAbbreviation *)self abbreviation];
  v3 = [abbreviation hash];

  return v3;
}

@end