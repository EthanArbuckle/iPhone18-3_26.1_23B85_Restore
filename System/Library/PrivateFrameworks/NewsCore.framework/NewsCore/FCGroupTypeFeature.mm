@interface FCGroupTypeFeature
- (FCGroupTypeFeature)initWithGroupType:(int64_t)a3;
- (FCGroupTypeFeature)initWithPersonalizationIdentifier:(id)a3;
@end

@implementation FCGroupTypeFeature

- (FCGroupTypeFeature)initWithGroupType:(int64_t)a3
{
  v11.receiver = self;
  v11.super_class = FCGroupTypeFeature;
  v4 = [(FCPersonalizationFeature *)&v11 init];
  v5 = v4;
  if (v4)
  {
    [(FCGroupTypeFeature *)v4 setGroupType:a3];
    v6 = MEMORY[0x1E696AEC0];
    v7 = NSStringFromFCFeedGroupType(a3);
    v8 = [v6 stringWithFormat:@"%@%@%@", @"f6", @"+", v7];
    personalizationIdentifier = v5->super._personalizationIdentifier;
    v5->super._personalizationIdentifier = v8;
  }

  return v5;
}

- (FCGroupTypeFeature)initWithPersonalizationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 rangeOfString:@"+"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 substringWithRange:{v5 + v6, objc_msgSend(v4, "length") - (v5 + v6)}];
    self = [(FCGroupTypeFeature *)self initWithGroupType:FCFeedGroupTypeFromNSString(v8)];

    v7 = self;
  }

  return v7;
}

@end