@interface FCTextInfo
+ (id)textInfoFromJSONValues:(id)a3 URLGenerator:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FCTextInfo

+ (id)textInfoFromJSONValues:(id)a3 URLGenerator:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5)
  {
    v7 = objc_alloc_init(FCTextInfo);
    v8 = [v5 objectForKeyedSubscript:@"lineHeightMultiplier"];
    [v8 floatValue];
    [(FCTextInfo *)v7 setLineHeightMultiplier:v9];

    v10 = [v5 objectForKeyedSubscript:@"fontSizeAdjustment"];
    [v10 floatValue];
    [(FCTextInfo *)v7 setFontSizeAdjustment:v11];

    v12 = [v5 objectForKeyedSubscript:@"fontColor"];
    if ([v12 length])
    {
      v13 = [FCColor colorWithHexString:v12];
      [(FCTextInfo *)v7 setColor:v13];
    }

    else
    {
      [(FCTextInfo *)v7 setColor:0];
    }

    v14 = [v5 objectForKeyedSubscript:@"fontResourceID"];
    if (v14)
    {
      v15 = [v6 generateURLForResourceID:v14];
    }

    else
    {
      v15 = 0;
    }

    v16 = [v5 objectForKeyedSubscript:@"fontName"];
    v17 = [FCLoadableFont loadableFontWithName:v16 url:v15];
    [(FCTextInfo *)v7 setFont:v17];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[FCTextInfo allocWithZone:](FCTextInfo init];
  [(FCTextInfo *)self lineHeightMultiplier];
  [(FCTextInfo *)v5 setLineHeightMultiplier:?];
  [(FCTextInfo *)v5 setFontSizeAdjustment:[(FCTextInfo *)self fontSizeAdjustment]];
  v6 = [(FCTextInfo *)self color];
  v7 = [v6 copyWithZone:a3];
  [(FCTextInfo *)v5 setColor:v7];

  v8 = [(FCTextInfo *)self font];
  v9 = [v8 copyWithZone:a3];
  [(FCTextInfo *)v5 setFont:v9];

  return v5;
}

@end