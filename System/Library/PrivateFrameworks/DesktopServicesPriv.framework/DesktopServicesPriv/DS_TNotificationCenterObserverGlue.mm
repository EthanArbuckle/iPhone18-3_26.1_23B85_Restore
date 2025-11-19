@interface DS_TNotificationCenterObserverGlue
- (DS_TNotificationCenterObserverGlue)initWithNote:(const void *)a3;
- (id).cxx_construct;
- (id)initSimple:(const void *)a3;
- (void)invoke:(id)a3;
@end

@implementation DS_TNotificationCenterObserverGlue

- (id)initSimple:(const void *)a3
{
  v4 = [(DS_TNotificationCenterObserverGlue *)self init];
  std::function<void ()(void)>::operator=(v4->_invokeSimple.__f_.__buf_.__data, a3);
  return v4;
}

- (DS_TNotificationCenterObserverGlue)initWithNote:(const void *)a3
{
  v4 = [(DS_TNotificationCenterObserverGlue *)self init];
  std::function<void ()(NSNotification *)>::operator=(v4->_invokeWithNote.__f_.__buf_.__data, a3);
  return v4;
}

- (void)invoke:(id)a3
{
  v6 = a3;
  v4 = self;
  f = v4->_invokeSimple.__f_.__f_;
  if (f)
  {
    (*(*f + 48))(f);
  }

  else
  {
    std::function<void ()(NSNotification *)>::operator()(&v4->_invokeWithNote, v6);
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 8) = 0;
  return self;
}

@end