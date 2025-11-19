@interface CDMRegexEntry
- (CDMRegexEntry)initWithRegex:(id)a3 label:(id)a4;
@end

@implementation CDMRegexEntry

- (CDMRegexEntry)initWithRegex:(id)a3 label:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDMRegexEntry;
  v9 = [(CDMRegexEntry *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_regularExpression, a3);
    objc_storeStrong(&v10->_label, a4);
  }

  return v10;
}

@end