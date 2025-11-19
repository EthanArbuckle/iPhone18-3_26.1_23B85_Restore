@interface WFHTMLToMarkdownAbbreviation
- (BOOL)isEqual:(id)a3;
- (unint64_t)hash;
@end

@implementation WFHTMLToMarkdownAbbreviation

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(WFHTMLToMarkdownAbbreviation *)self abbreviation];
      v6 = [(WFHTMLToMarkdownAbbreviation *)v4 abbreviation];
      v7 = [v5 isEqualToString:v6];
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
  v2 = [(WFHTMLToMarkdownAbbreviation *)self abbreviation];
  v3 = [v2 hash];

  return v3;
}

@end