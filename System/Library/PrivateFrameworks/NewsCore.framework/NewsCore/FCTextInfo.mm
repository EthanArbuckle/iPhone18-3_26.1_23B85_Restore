@interface FCTextInfo
+ (id)textInfoFromJSONValues:(id)values URLGenerator:(id)generator;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FCTextInfo

+ (id)textInfoFromJSONValues:(id)values URLGenerator:(id)generator
{
  valuesCopy = values;
  generatorCopy = generator;
  if (valuesCopy)
  {
    v7 = objc_alloc_init(FCTextInfo);
    v8 = [valuesCopy objectForKeyedSubscript:@"lineHeightMultiplier"];
    [v8 floatValue];
    [(FCTextInfo *)v7 setLineHeightMultiplier:v9];

    v10 = [valuesCopy objectForKeyedSubscript:@"fontSizeAdjustment"];
    [v10 floatValue];
    [(FCTextInfo *)v7 setFontSizeAdjustment:v11];

    v12 = [valuesCopy objectForKeyedSubscript:@"fontColor"];
    if ([v12 length])
    {
      v13 = [FCColor colorWithHexString:v12];
      [(FCTextInfo *)v7 setColor:v13];
    }

    else
    {
      [(FCTextInfo *)v7 setColor:0];
    }

    v14 = [valuesCopy objectForKeyedSubscript:@"fontResourceID"];
    if (v14)
    {
      v15 = [generatorCopy generateURLForResourceID:v14];
    }

    else
    {
      v15 = 0;
    }

    v16 = [valuesCopy objectForKeyedSubscript:@"fontName"];
    v17 = [FCLoadableFont loadableFontWithName:v16 url:v15];
    [(FCTextInfo *)v7 setFont:v17];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[FCTextInfo allocWithZone:](FCTextInfo init];
  [(FCTextInfo *)self lineHeightMultiplier];
  [(FCTextInfo *)v5 setLineHeightMultiplier:?];
  [(FCTextInfo *)v5 setFontSizeAdjustment:[(FCTextInfo *)self fontSizeAdjustment]];
  color = [(FCTextInfo *)self color];
  v7 = [color copyWithZone:zone];
  [(FCTextInfo *)v5 setColor:v7];

  font = [(FCTextInfo *)self font];
  v9 = [font copyWithZone:zone];
  [(FCTextInfo *)v5 setFont:v9];

  return v5;
}

@end