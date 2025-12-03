@interface FCLoadableFont
+ (FCLoadableFont)loadableFontWithName:(id)name url:(id)url;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
@end

@implementation FCLoadableFont

+ (FCLoadableFont)loadableFontWithName:(id)name url:(id)url
{
  nameCopy = name;
  if (name)
  {
    urlCopy = url;
    v6 = nameCopy;
    nameCopy = objc_alloc_init(FCLoadableFont);
    [(FCLoadableFont *)nameCopy setFontName:v6];

    [(FCLoadableFont *)nameCopy setFontURL:urlCopy];
  }

  return nameCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (equalCopy)
  {
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

  fontName = [(FCLoadableFont *)self fontName];
  fontName2 = [v6 fontName];
  if ([fontName isEqualToString:fontName2])
  {
    v9 = MEMORY[0x1E69E58C0];
    fontURL = [(FCLoadableFont *)self fontURL];
    fontURL2 = [v6 fontURL];
    v12 = [v9 nf_object:fontURL isEqualToObject:fontURL2];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  fontName = [(FCLoadableFont *)self fontName];
  v4 = [fontName hash];
  fontURL = [(FCLoadableFont *)self fontURL];
  v6 = [fontURL hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = [[FCDescription alloc] initWithObject:self];
  fontName = [(FCLoadableFont *)self fontName];
  [(FCDescription *)v3 addField:@"fontName" value:fontName];

  fontURL = [(FCLoadableFont *)self fontURL];
  absoluteString = [fontURL absoluteString];
  [(FCDescription *)v3 addField:@"fontURL" value:absoluteString];

  descriptionString = [(FCDescription *)v3 descriptionString];

  return descriptionString;
}

@end