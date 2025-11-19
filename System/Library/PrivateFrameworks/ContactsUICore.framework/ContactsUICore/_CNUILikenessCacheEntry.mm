@interface _CNUILikenessCacheEntry
- (_CNUILikenessCacheEntry)initWithProvider:(id)a3 cancelationToken:(id)a4;
- (void)dealloc;
@end

@implementation _CNUILikenessCacheEntry

- (_CNUILikenessCacheEntry)initWithProvider:(id)a3 cancelationToken:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(_CNUILikenessCacheEntry *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_provider, a3);
    objc_storeStrong(&v10->_cancelationToken, a4);
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