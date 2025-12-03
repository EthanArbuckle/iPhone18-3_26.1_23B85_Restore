@interface _CPLWeakLibraryManager
- (CPLLibraryManager)weakLibraryManager;
- (_CPLWeakLibraryManager)initWithLibraryManager:(id)manager;
@end

@implementation _CPLWeakLibraryManager

- (CPLLibraryManager)weakLibraryManager
{
  WeakRetained = objc_loadWeakRetained(&self->_weakLibraryManager);

  return WeakRetained;
}

- (_CPLWeakLibraryManager)initWithLibraryManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = _CPLWeakLibraryManager;
  v5 = [(_CPLWeakLibraryManager *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakLibraryManager, managerCopy);
  }

  return v6;
}

@end