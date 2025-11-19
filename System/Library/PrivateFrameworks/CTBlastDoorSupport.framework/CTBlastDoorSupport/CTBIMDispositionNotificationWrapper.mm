@interface CTBIMDispositionNotificationWrapper
- (CTBIMDispositionNotificationWrapper)initWithWrapped:(optional<ctb::IMDispositionNotification> *)a3;
- (id).cxx_construct;
@end

@implementation CTBIMDispositionNotificationWrapper

- (CTBIMDispositionNotificationWrapper)initWithWrapped:(optional<ctb::IMDispositionNotification> *)a3
{
  v7.receiver = self;
  v7.super_class = CTBIMDispositionNotificationWrapper;
  v4 = [(CTBIMDispositionNotificationWrapper *)&v7 init];
  v5 = v4;
  if (v4)
  {
    std::__optional_storage_base<ctb::IMDispositionNotification,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::IMDispositionNotification,false>>(&v4->_wrapped, &a3->var0.var0);
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 88) = 0;
  return self;
}

@end