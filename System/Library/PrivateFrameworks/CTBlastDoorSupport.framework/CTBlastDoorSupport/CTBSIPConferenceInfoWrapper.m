@interface CTBSIPConferenceInfoWrapper
- (CTBSIPConferenceInfoWrapper)initWithWrapped:(optional<ctb:(BOOL)a4 :SIPConferenceInfo> *)a3;
- (id).cxx_construct;
@end

@implementation CTBSIPConferenceInfoWrapper

- (CTBSIPConferenceInfoWrapper)initWithWrapped:(optional<ctb:(BOOL)a4 :SIPConferenceInfo> *)a3
{
  v8.receiver = self;
  v8.super_class = CTBSIPConferenceInfoWrapper;
  v5 = [(CTBSIPConferenceInfoWrapper *)&v8 init:a3];
  v6 = v5;
  if (v5)
  {
    std::__optional_storage_base<ctb::SIPConferenceInfo,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<ctb::SIPConferenceInfo,false>>(&v5->_wrapped, a3);
  }

  return v6;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 104) = 0;
  return self;
}

@end