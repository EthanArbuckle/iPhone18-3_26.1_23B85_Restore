@interface MSSearchProxy
- (MSSearch)search;
- (MSSearchProxy)initWithSearch:(id)a3;
- (void)foundResults:(id)a3 error:(id)a4;
@end

@implementation MSSearchProxy

- (MSSearchProxy)initWithSearch:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MSSearchProxy;
  v5 = [(MSSearchProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_search, v4);
  }

  return v6;
}

- (void)foundResults:(id)a3 error:(id)a4
{
  v8 = a3;
  v6 = a4;
  v7 = [(MSSearchProxy *)self search];
  [v7 foundResults:v8 error:v6];
}

- (MSSearch)search
{
  WeakRetained = objc_loadWeakRetained(&self->_search);

  return WeakRetained;
}

@end