@interface DS_TKeyValueObserverGlue
- (DS_TKeyValueObserverGlue)initWithFunctor:(const void *)a3 observedObjects:(const void *)a4 observedKeyPath:(const void *)a5;
- (DS_TKeyValueObserverGlue)initWithFunctorWithChange:(const void *)a3 observedObjects:(const void *)a4 observedKeyPath:(const void *)a5;
- (id).cxx_construct;
- (void)initCommon:(const void *)a3 observedKeyPath:(const void *)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
@end

@implementation DS_TKeyValueObserverGlue

- (DS_TKeyValueObserverGlue)initWithFunctor:(const void *)a3 observedObjects:(const void *)a4 observedKeyPath:(const void *)a5
{
  v10.receiver = self;
  v10.super_class = DS_TKeyValueObserverGlue;
  v8 = [(DS_TKeyValueObserverGlue *)&v10 init];
  std::function<void ()(void)>::operator=(v8->_functor.__f_.__buf_.__data, a3);
  [(DS_TKeyValueObserverGlue *)v8 initCommon:a4 observedKeyPath:a5];
  return v8;
}

- (DS_TKeyValueObserverGlue)initWithFunctorWithChange:(const void *)a3 observedObjects:(const void *)a4 observedKeyPath:(const void *)a5
{
  v10.receiver = self;
  v10.super_class = DS_TKeyValueObserverGlue;
  v8 = [(DS_TKeyValueObserverGlue *)&v10 init];
  std::function<void ()(NSDictionary<NSString *,NSObject *> *)>::operator=(v8->_functorWithChange.__f_.__buf_.__data, a3);
  [(DS_TKeyValueObserverGlue *)v8 initCommon:a4 observedKeyPath:a5];
  return v8;
}

- (void)initCommon:(const void *)a3 observedKeyPath:(const void *)a4
{
  std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::operator=(&self->_observedObjects, a3);
  if (&self->_observedKeyPath != a4)
  {
    v6 = *a4;

    TString::SetStringRefAsImmutable(&self->_observedKeyPath, v6);
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (operator==(&self->_observedKeyPath.fString.fRef, v10) && (v15 = v11, std::__hash_table<NSObject *,std::hash<std::hash>,std::equal_to<std::hash>,std::allocator<std::hash>>::find<std::hash>(&self->_observedObjects.__table_.__bucket_list_.__ptr_, &v15)))
  {
    f = self->_functor.__f_.__f_;
    if (f)
    {
      (*(*f + 48))(f);
    }

    else if (self->_functorWithChange.__f_.__f_)
    {
      std::function<void ()(NSDictionary<NSString *,NSObject *> *)>::operator()(&self->_functorWithChange, v12);
    }
  }

  else
  {
    v14.receiver = self;
    v14.super_class = DS_TKeyValueObserverGlue;
    [(DS_TKeyValueObserverGlue *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
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