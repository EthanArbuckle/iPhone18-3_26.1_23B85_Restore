@interface BMAccessDelegate
- (BMAccessDelegate)initWithDelegates:(id)a3;
- (BOOL)handlesDirectoryCreationForResource:(id)a3 inContainer:(id)a4;
- (BOOL)handlesDirectoryRemovalForResource:(id)a3 inContainer:(id)a4;
- (BOOL)prepareResource:(id)a3 withMode:(unint64_t)a4 inContainer:(id)a5;
- (BOOL)teardownResource:(id)a3 inContainer:(id)a4;
@end

@implementation BMAccessDelegate

- (BMAccessDelegate)initWithDelegates:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BMAccessDelegate;
  v6 = [(BMAccessDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_delegates, a3);
  }

  return v7;
}

- (BOOL)handlesDirectoryCreationForResource:(id)a3 inContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  delegates = self->_delegates;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "type")}];
  v10 = [(NSDictionary *)delegates objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 handlesDirectoryCreationForResource:v6 inContainer:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)handlesDirectoryRemovalForResource:(id)a3 inContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  delegates = self->_delegates;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "type")}];
  v10 = [(NSDictionary *)delegates objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 handlesDirectoryRemovalForResource:v6 inContainer:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)prepareResource:(id)a3 withMode:(unint64_t)a4 inContainer:(id)a5
{
  v8 = a3;
  v9 = a5;
  delegates = self->_delegates;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v8, "type")}];
  v12 = [(NSDictionary *)delegates objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = [v12 prepareResource:v8 withMode:a4 inContainer:v9];
  }

  else
  {
    v13 = 1;
  }

  return v13;
}

- (BOOL)teardownResource:(id)a3 inContainer:(id)a4
{
  v6 = a3;
  v7 = a4;
  delegates = self->_delegates;
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "type")}];
  v10 = [(NSDictionary *)delegates objectForKeyedSubscript:v9];

  if (v10)
  {
    v11 = [v10 teardownResource:v6 inContainer:v7];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

@end