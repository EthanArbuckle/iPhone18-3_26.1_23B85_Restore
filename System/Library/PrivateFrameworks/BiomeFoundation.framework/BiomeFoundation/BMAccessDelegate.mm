@interface BMAccessDelegate
- (BMAccessDelegate)initWithDelegates:(id)delegates;
- (BOOL)handlesDirectoryCreationForResource:(id)resource inContainer:(id)container;
- (BOOL)handlesDirectoryRemovalForResource:(id)resource inContainer:(id)container;
- (BOOL)prepareResource:(id)resource withMode:(unint64_t)mode inContainer:(id)container;
- (BOOL)teardownResource:(id)resource inContainer:(id)container;
@end

@implementation BMAccessDelegate

- (BMAccessDelegate)initWithDelegates:(id)delegates
{
  delegatesCopy = delegates;
  v9.receiver = self;
  v9.super_class = BMAccessDelegate;
  v6 = [(BMAccessDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegates, delegates);
  }

  return v7;
}

- (BOOL)handlesDirectoryCreationForResource:(id)resource inContainer:(id)container
{
  resourceCopy = resource;
  containerCopy = container;
  delegates = self->_delegates;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(resourceCopy, "type")}];
  v10 = [(NSDictionary *)delegates objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 handlesDirectoryCreationForResource:resourceCopy inContainer:containerCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)handlesDirectoryRemovalForResource:(id)resource inContainer:(id)container
{
  resourceCopy = resource;
  containerCopy = container;
  delegates = self->_delegates;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(resourceCopy, "type")}];
  v10 = [(NSDictionary *)delegates objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 handlesDirectoryRemovalForResource:resourceCopy inContainer:containerCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)prepareResource:(id)resource withMode:(unint64_t)mode inContainer:(id)container
{
  resourceCopy = resource;
  containerCopy = container;
  delegates = self->_delegates;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(resourceCopy, "type")}];
  v12 = [(NSDictionary *)delegates objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = [v12 prepareResource:resourceCopy withMode:mode inContainer:containerCopy];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)teardownResource:(id)resource inContainer:(id)container
{
  resourceCopy = resource;
  containerCopy = container;
  delegates = self->_delegates;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(resourceCopy, "type")}];
  v10 = [(NSDictionary *)delegates objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 teardownResource:resourceCopy inContainer:containerCopy];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end