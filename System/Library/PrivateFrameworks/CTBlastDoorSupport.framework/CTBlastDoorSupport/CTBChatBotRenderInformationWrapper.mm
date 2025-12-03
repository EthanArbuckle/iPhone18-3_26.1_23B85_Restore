@interface CTBChatBotRenderInformationWrapper
- (CTBChatBotRenderInformationWrapper)initWithWrapped:(optional<ctb:(optional<ctb:(optional<ctb::chatbot::WebResources> *)wrapped :chatbot::CategoryList> *)a4 :chatbot::RenderInformation> *)a3;
- (id).cxx_construct;
@end

@implementation CTBChatBotRenderInformationWrapper

- (CTBChatBotRenderInformationWrapper)initWithWrapped:(optional<ctb:(optional<ctb:(optional<ctb::chatbot::WebResources> *)wrapped :chatbot::CategoryList> *)a4 :chatbot::RenderInformation> *)a3
{
  v9.receiver = self;
  v9.super_class = CTBChatBotRenderInformationWrapper;
  v6 = [(CTBChatBotRenderInformationWrapper *)&v9 init:a3];
  v7 = v6;
  if (v6)
  {
    std::__optional_storage_base<ctb::chatbot::RenderInformation,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::chatbot::RenderInformation,false>>(&v6->_wrapped, a3);
  }

  return v7;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 688) = 0;
  return self;
}

@end