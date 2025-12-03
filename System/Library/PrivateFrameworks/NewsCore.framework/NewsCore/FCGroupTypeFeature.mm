@interface FCGroupTypeFeature
- (FCGroupTypeFeature)initWithGroupType:(int64_t)type;
- (FCGroupTypeFeature)initWithPersonalizationIdentifier:(id)identifier;
@end

@implementation FCGroupTypeFeature

- (FCGroupTypeFeature)initWithGroupType:(int64_t)type
{
  v11.receiver = self;
  v11.super_class = FCGroupTypeFeature;
  v4 = [(FCPersonalizationFeature *)&v11 init];
  v5 = v4;
  if (v4)
  {
    [(FCGroupTypeFeature *)v4 setGroupType:type];
    v6 = MEMORY[0x1E696AEC0];
    v7 = NSStringFromFCFeedGroupType(type);
    v8 = [v6 stringWithFormat:@"%@%@%@", @"f6", @"+", v7];
    personalizationIdentifier = v5->super._personalizationIdentifier;
    v5->super._personalizationIdentifier = v8;
  }

  return v5;
}

- (FCGroupTypeFeature)initWithPersonalizationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [identifierCopy rangeOfString:@"+"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    selfCopy = 0;
  }

  else
  {
    v8 = [identifierCopy substringWithRange:{v5 + v6, objc_msgSend(identifierCopy, "length") - (v5 + v6)}];
    self = [(FCGroupTypeFeature *)self initWithGroupType:FCFeedGroupTypeFromNSString(v8)];

    selfCopy = self;
  }

  return selfCopy;
}

@end