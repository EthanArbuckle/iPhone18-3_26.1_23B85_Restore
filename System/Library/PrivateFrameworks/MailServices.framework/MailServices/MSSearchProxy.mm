@interface MSSearchProxy
- (MSSearch)search;
- (MSSearchProxy)initWithSearch:(id)search;
- (void)foundResults:(id)results error:(id)error;
@end

@implementation MSSearchProxy

- (MSSearchProxy)initWithSearch:(id)search
{
  searchCopy = search;
  v8.receiver = self;
  v8.super_class = MSSearchProxy;
  v5 = [(MSSearchProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_search, searchCopy);
  }

  return v6;
}

- (void)foundResults:(id)results error:(id)error
{
  resultsCopy = results;
  errorCopy = error;
  search = [(MSSearchProxy *)self search];
  [search foundResults:resultsCopy error:errorCopy];
}

- (MSSearch)search
{
  WeakRetained = objc_loadWeakRetained(&self->_search);

  return WeakRetained;
}

@end