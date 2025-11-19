@interface CNAutocompleteNetworkActivityThrottlingPolicy
- (CNAutocompleteNetworkActivityThrottlingPolicy)initWithString:(id)a3;
- (double)delayBeforeBeginningNetworkActivity;
@end

@implementation CNAutocompleteNetworkActivityThrottlingPolicy

- (double)delayBeforeBeginningNetworkActivity
{
  lengthOfString = self->_lengthOfString;
  result = (5.0 - lengthOfString) * 0.1;
  if (lengthOfString > 5)
  {
    return 0.0;
  }

  return result;
}

- (CNAutocompleteNetworkActivityThrottlingPolicy)initWithString:(id)a3
{
  v4 = a3;
  v5 = [(CNAutocompleteNetworkActivityThrottlingPolicy *)self init];
  if (v5)
  {
    v5->_lengthOfString = [v4 length];
    v6 = v5;
  }

  return v5;
}

@end