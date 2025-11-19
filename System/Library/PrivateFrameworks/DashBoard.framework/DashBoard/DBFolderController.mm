@interface DBFolderController
- (DBEnvironment)environment;
- (int64_t)defaultPageIndex;
- (void)setEnvironment:(id)a3;
- (void)setLayoutEngine:(id)a3;
@end

@implementation DBFolderController

- (void)setEnvironment:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_environment, v4);
  v5 = [(SBFolderController *)self contentView];
  [v5 setEnvironment:v4];
}

- (void)setLayoutEngine:(id)a3
{
  v4 = a3;
  v5 = [(SBFolderController *)self contentView];
  [v5 setLayoutEngine:v4];
}

- (int64_t)defaultPageIndex
{
  if (self->_defaultPageIndex)
  {
    return self->_defaultPageIndex;
  }

  else
  {
    return [(SBFolderController *)self minimumPageIndex];
  }
}

- (DBEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end