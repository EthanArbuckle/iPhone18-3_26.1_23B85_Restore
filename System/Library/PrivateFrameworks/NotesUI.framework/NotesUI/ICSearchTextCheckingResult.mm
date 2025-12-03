@interface ICSearchTextCheckingResult
- (ICSearchTextCheckingResult)initWithRange:(_NSRange)range csEvaluatorMatchString:(id)string;
- (_NSRange)ic_range;
@end

@implementation ICSearchTextCheckingResult

- (ICSearchTextCheckingResult)initWithRange:(_NSRange)range csEvaluatorMatchString:(id)string
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = ICSearchTextCheckingResult;
  v9 = [(ICSearchTextCheckingResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_ic_range.location = location;
    v9->_ic_range.length = length;
    objc_storeStrong(&v9->_csEvaluatorMatchString, string);
  }

  return v10;
}

- (_NSRange)ic_range
{
  p_ic_range = &self->_ic_range;
  location = self->_ic_range.location;
  length = p_ic_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end