@interface DS_TKeyValueObserverGlue
- (DS_TKeyValueObserverGlue)initWithFunctor:(const void *)functor observedObjects:(const void *)objects observedKeyPath:(const void *)path;
- (DS_TKeyValueObserverGlue)initWithFunctorWithChange:(const void *)change observedObjects:(const void *)objects observedKeyPath:(const void *)path;
- (id).cxx_construct;
- (void)initCommon:(const void *)common observedKeyPath:(const void *)path;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation DS_TKeyValueObserverGlue

- (DS_TKeyValueObserverGlue)initWithFunctor:(const void *)functor observedObjects:(const void *)objects observedKeyPath:(const void *)path
{
  v10.receiver = self;
  v10.super_class = DS_TKeyValueObserverGlue;
  v8 = [(DS_TKeyValueObserverGlue *)&v10 init];
  std::function<void ()(void)>::operator=(v8->_functor.__f_.__buf_.__data, functor);
  [(DS_TKeyValueObserverGlue *)v8 initCommon:objects observedKeyPath:path];
  return v8;
}

- (DS_TKeyValueObserverGlue)initWithFunctorWithChange:(const void *)change observedObjects:(const void *)objects observedKeyPath:(const void *)path
{
  v10.receiver = self;
  v10.super_class = DS_TKeyValueObserverGlue;
  v8 = [(DS_TKeyValueObserverGlue *)&v10 init];
  std::function<void ()(NSDictionary<NSString *,NSObject *> *)>::operator=(v8->_functorWithChange.__f_.__buf_.__data, change);
  [(DS_TKeyValueObserverGlue *)v8 initCommon:objects observedKeyPath:path];
  return v8;
}

- (void)initCommon:(const void *)common observedKeyPath:(const void *)path
{
  std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::operator=(&self->_observedObjects, common);
  if (&self->_observedKeyPath != path)
  {
    v6 = *path;

    TString::SetStringRefAsImmutable(&self->_observedKeyPath, v6);
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (operator==(&self->_observedKeyPath.fString.fRef, pathCopy) && (v15 = objectCopy, std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::find<std::hash>(&self->_observedObjects.__table_.__bucket_list_.__ptr_, &v15)))
  {
    f = self->_functor.__f_.__f_;
    if (f)
    {
      (*(*f + 48))(f);
    }

    else if (self->_functorWithChange.__f_.__f_)
    {
      std::function<void ()(NSDictionary<NSString *,NSObject *> *)>::operator()(&self->_functorWithChange, changeCopy);
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = DS_TKeyValueObserverGlue;
    [(DS_TKeyValueObserverGlue *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (id).cxx_construct
{
  self->_functor.__f_.__f_ = 0;
  *&self->_functorWithChange.__f_.__f_ = 0u;
  *&self->_observedObjects.__table_.__bucket_list_.__deleter_.__size_ = 0u;
  self->_observedObjects.__table_.__size_ = 0;
  *&self->_observedObjects.__table_.__key_eq_ = 1065353216;
  self->_observedKeyPath.fString.fRef = &stru_1F5F42870;
  CFRetain(&stru_1F5F42870);
  return self;
}

@end