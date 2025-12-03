@interface CDMRegexEntry
- (CDMRegexEntry)initWithRegex:(id)regex label:(id)label;
@end

@implementation CDMRegexEntry

- (CDMRegexEntry)initWithRegex:(id)regex label:(id)label
{
  regexCopy = regex;
  labelCopy = label;
  v12.receiver = self;
  v12.super_class = CDMRegexEntry;
  v9 = [(CDMRegexEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_regularExpression, regex);
    objc_storeStrong(&v10->_label, label);
  }

  return v10;
}

@end