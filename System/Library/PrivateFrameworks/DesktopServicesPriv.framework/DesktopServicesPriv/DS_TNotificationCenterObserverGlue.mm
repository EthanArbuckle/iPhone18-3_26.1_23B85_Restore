@interface DS_TNotificationCenterObserverGlue
- (DS_TNotificationCenterObserverGlue)initWithNote:(const void *)note;
- (id).cxx_construct;
- (id)initSimple:(const void *)simple;
- (void)invoke:(id)invoke;
@end

@implementation DS_TNotificationCenterObserverGlue

- (id)initSimple:(const void *)simple
{
  v4 = [(DS_TNotificationCenterObserverGlue *)self init];
  std::function<void ()(void)>::operator=(v4->_invokeSimple.__f_.__buf_.__data, simple);
  return v4;
}

- (DS_TNotificationCenterObserverGlue)initWithNote:(const void *)note
{
  v4 = [(DS_TNotificationCenterObserverGlue *)self init];
  std::function<void ()(NSNotification *)>::operator=(v4->_invokeWithNote.__f_.__buf_.__data, note);
  return v4;
}

- (void)invoke:(id)invoke
{
  invokeCopy = invoke;
  selfCopy = self;
  f = selfCopy->_invokeSimple.__f_.__f_;
  if (f)
  {
    (*(*f + 48))(f);
  }

  else
  {
    std::function<void ()(NSNotification *)>::operator()(&selfCopy->_invokeWithNote, invokeCopy);
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 8) = 0;
  return self;
}

@end