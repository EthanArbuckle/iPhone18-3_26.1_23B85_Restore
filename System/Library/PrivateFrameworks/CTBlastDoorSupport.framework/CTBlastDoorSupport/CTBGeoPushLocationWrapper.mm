@interface CTBGeoPushLocationWrapper
- (CTBGeoPushLocationWrapper)initWithWrapped:(optional<ctb::GeoPushLocation> *)wrapped;
- (id).cxx_construct;
@end

@implementation CTBGeoPushLocationWrapper

- (CTBGeoPushLocationWrapper)initWithWrapped:(optional<ctb::GeoPushLocation> *)wrapped
{
  v6.receiver = self;
  v6.super_class = CTBGeoPushLocationWrapper;
  result = [(CTBGeoPushLocationWrapper *)&v6 init];
  if (result)
  {
    var0 = wrapped->var0;
    result->_wrapped.__engaged_ = wrapped->__engaged_;
    result->_wrapped.var0 = var0;
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 24) = 0;
  return self;
}

@end