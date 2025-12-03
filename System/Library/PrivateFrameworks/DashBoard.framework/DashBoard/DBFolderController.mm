@interface DBFolderController
- (DBEnvironment)environment;
- (int64_t)defaultPageIndex;
- (void)setEnvironment:(id)environment;
- (void)setLayoutEngine:(id)engine;
@end

@implementation DBFolderController

- (void)setEnvironment:(id)environment
{
  environmentCopy = environment;
  objc_storeWeak(&self->_environment, environmentCopy);
  contentView = [(SBFolderController *)self contentView];
  [contentView setEnvironment:environmentCopy];
}

- (void)setLayoutEngine:(id)engine
{
  engineCopy = engine;
  contentView = [(SBFolderController *)self contentView];
  [contentView setLayoutEngine:engineCopy];
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