@interface ICSearchTextCheckingResult
- (ICSearchTextCheckingResult)initWithRange:(_NSRange)a3 csEvaluatorMatchString:(id)a4;
- (_NSRange)ic_range;
@end

@implementation ICSearchTextCheckingResult

- (ICSearchTextCheckingResult)initWithRange:(_NSRange)a3 csEvaluatorMatchString:(id)a4
{
  length = a3.length;
  location = a3.location;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICSearchTextCheckingResult;
  v9 = [(ICSearchTextCheckingResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_ic_range.location = location;
    v9->_ic_range.length = length;
    objc_storeStrong(&v9->_csEvaluatorMatchString, a4);
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