@interface MFIMAPConnectionFlagSearchRequest
- (MFIMAPConnectionFlagSearchRequest)initWithMask:(unint64_t)a3 searchTerms:(id)a4 positiveMatch:(BOOL)a5;
- (void)dealloc;
@end

@implementation MFIMAPConnectionFlagSearchRequest

- (MFIMAPConnectionFlagSearchRequest)initWithMask:(unint64_t)a3 searchTerms:(id)a4 positiveMatch:(BOOL)a5
{
  v11.receiver = self;
  v11.super_class = MFIMAPConnectionFlagSearchRequest;
  v8 = [(MFIMAPConnectionFlagSearchRequest *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_mask = a3;
    v8->_isPositiveMatch = a5;
    v8->_searchTerms = [a4 copy];
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