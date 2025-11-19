@interface FCNewsTabiChannelPickerSuggestionsUserContextConfiguration
- (FCNewsTabiChannelPickerSuggestionsUserContextConfiguration)initWithDictionary:(id)a3;
- (id)description;
@end

@implementation FCNewsTabiChannelPickerSuggestionsUserContextConfiguration

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];;
  [v3 appendFormat:@"\n\tmaximumTagCount: %ld;", -[FCNewsTabiChannelPickerSuggestionsUserContextConfiguration maximumTagCount](self, "maximumTagCount")];
  [v3 appendFormat:@"\n\tmaximumTopicTagsPerHeadline: %ld;", -[FCNewsTabiChannelPickerSuggestionsUserContextConfiguration maximumTopicTagsPerHeadline](self, "maximumTopicTagsPerHeadline")];
  [v3 appendString:@"\n>"];

  return v3;
}

- (FCNewsTabiChannelPickerSuggestionsUserContextConfiguration)initWithDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FCNewsTabiChannelPickerSuggestionsUserContextConfiguration;
  v5 = [(FCNewsTabiChannelPickerSuggestionsUserContextConfiguration *)&v9 init];
  if (v5)
  {
    v6 = FCAppConfigurationNumberValue(v4, @"maximumTagCount", &unk_1F2E70590);
    v5->_maximumTagCount = [v6 integerValue];

    v7 = FCAppConfigurationNumberValue(v4, @"maximumTopicTagsPerHeadline", &unk_1F2E705A8);
    v5->_maximumTopicTagsPerHeadline = [v7 integerValue];
  }

  return v5;
}

@end