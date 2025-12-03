@interface CTBChatBotMessageWrapper
- (CTBChatBotMessageWrapper)initWithWrapped:(optional<ctb:(BOOL)wrapped :chatbot::Message> *)a3;
- (id).cxx_construct;
@end

@implementation CTBChatBotMessageWrapper

- (CTBChatBotMessageWrapper)initWithWrapped:(optional<ctb:(BOOL)wrapped :chatbot::Message> *)a3
{
  v8.receiver = self;
  v8.super_class = CTBChatBotMessageWrapper;
  v5 = [(CTBChatBotMessageWrapper *)&v8 init:a3];
  v6 = v5;
  if (v5)
  {
    std::__optional_storage_base<ctb::chatbot::Message,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::Message,false>>(&v5->_wrapped.var0.var0, a3);
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 352) = 0;
  return self;
}

@end