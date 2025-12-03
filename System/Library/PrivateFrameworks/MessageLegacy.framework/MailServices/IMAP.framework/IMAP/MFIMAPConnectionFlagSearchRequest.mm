@interface MFIMAPConnectionFlagSearchRequest
- (MFIMAPConnectionFlagSearchRequest)initWithMask:(unint64_t)mask searchTerms:(id)terms positiveMatch:(BOOL)match;
- (void)dealloc;
@end

@implementation MFIMAPConnectionFlagSearchRequest

- (MFIMAPConnectionFlagSearchRequest)initWithMask:(unint64_t)mask searchTerms:(id)terms positiveMatch:(BOOL)match
{
  v11.receiver = self;
  v11.super_class = MFIMAPConnectionFlagSearchRequest;
  v8 = [(MFIMAPConnectionFlagSearchRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_mask = mask;
    v8->_isPositiveMatch = match;
    v8->_searchTerms = [terms copy];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFIMAPConnectionFlagSearchRequest;
  [(MFIMAPConnectionFlagSearchRequest *)&v3 dealloc];
}

@end