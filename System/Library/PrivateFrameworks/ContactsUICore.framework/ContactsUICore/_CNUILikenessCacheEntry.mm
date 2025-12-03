@interface _CNUILikenessCacheEntry
- (_CNUILikenessCacheEntry)initWithProvider:(id)provider cancelationToken:(id)token;
- (void)dealloc;
@end

@implementation _CNUILikenessCacheEntry

- (_CNUILikenessCacheEntry)initWithProvider:(id)provider cancelationToken:(id)token
{
  providerCopy = provider;
  tokenCopy = token;
  v9 = [(_CNUILikenessCacheEntry *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_provider, provider);
    objc_storeStrong(&v10->_cancelationToken, token);
    v11 = v10;
  }

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _CNUILikenessCacheEntry;
  [(_CNUILikenessCacheEntry *)&v2 dealloc];
}

@end