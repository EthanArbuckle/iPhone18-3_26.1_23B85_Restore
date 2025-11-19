@interface BBDismissalDictionaryAndFeeds
- (BBDismissalDictionaryAndFeeds)initWithDismissalDictionary:(id)a3 andFeeds:(unint64_t)a4;
- (id)description;
@end

@implementation BBDismissalDictionaryAndFeeds

- (BBDismissalDictionaryAndFeeds)initWithDismissalDictionary:(id)a3 andFeeds:(unint64_t)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = BBDismissalDictionaryAndFeeds;
  v7 = [(BBDismissalItem *)&v14 initWithFeeds:a4];
  if (v7)
  {
    v8 = [v6 objectForKey:@"d"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 timeIntervalSince1970];
    }

    else
    {
      [v8 doubleValue];
    }

    v7->_dismissalTimeInterval = v9;
    v10 = [v6 objectForKey:@"h"];
    v11 = [v10 copy];
    dismissalHash = v7->_dismissalHash;
    v7->_dismissalHash = v11;
  }

  return v7;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = BBDismissalDictionaryAndFeeds;
  v3 = [(BBDismissalItem *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" {dismissalTimeInterval %f dismissalHash %@}", *&self->_dismissalTimeInterval, self->_dismissalHash];

  return v4;
}

@end