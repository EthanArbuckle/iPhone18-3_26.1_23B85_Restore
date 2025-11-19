@interface FCLoadableFont
+ (FCLoadableFont)loadableFontWithName:(id)a3 url:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation FCLoadableFont

+ (FCLoadableFont)loadableFontWithName:(id)a3 url:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v5 = a4;
    v6 = v4;
    v4 = objc_alloc_init(FCLoadableFont);
    [(FCLoadableFont *)v4 setFontName:v6];

    [(FCLoadableFont *)v4 setFontURL:v5];
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [(FCLoadableFont *)self fontName];
  v8 = [v6 fontName];
  if ([v7 isEqualToString:v8])
  {
    v9 = MEMORY[0x1E69E58C0];
    v10 = [(FCLoadableFont *)self fontURL];
    v11 = [v6 fontURL];
    v12 = [v9 nf_object:v10 isEqualToObject:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(FCLoadableFont *)self fontName];
  v4 = [v3 hash];
  v5 = [(FCLoadableFont *)self fontURL];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  v4 = [(FCLoadableFont *)self fontName];
  [(FCDescription *)v3 addField:@"fontName" value:v4];

  v5 = [(FCLoadableFont *)self fontURL];
  v6 = [v5 absoluteString];
  [(FCDescription *)v3 addField:@"fontURL" value:v6];

  v7 = [(FCDescription *)v3 descriptionString];

  return v7;
}

@end