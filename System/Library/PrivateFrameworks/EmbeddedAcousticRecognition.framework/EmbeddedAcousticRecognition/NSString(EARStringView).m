@interface NSString(EARStringView)
+ (id)ear_stringWithStringView:()EARStringView;
- (uint64_t)ear_toString;
- (void)ear_toStringOrNothing;
@end

@implementation NSString(EARStringView)

- (uint64_t)ear_toString
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {

    return std::string::basic_string[abi:ne200100]<0>(a2, CStringPtr);
  }

  else
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    v6 = [(__CFString *)a1 lengthOfBytesUsingEncoding:4];
    std::string::resize(a2, v6, 0);
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = a2->__r_.__value_.__r.__words[0];
    }

    result = [(__CFString *)a1 getCString:v7 maxLength:v6 + 1 encoding:4];
    if ((result & 1) == 0)
    {
      return [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Invalid string: %@", a1}];
    }
  }

  return result;
}

+ (id)ear_stringWithStringView:()EARStringView
{
  v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a3 length:a4 encoding:4];

  return v4;
}

- (void)ear_toStringOrNothing
{
  CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
  if (CStringPtr)
  {
    std::string::basic_string[abi:ne200100]<0>(&v9, CStringPtr);
    *a2 = v9;
    v5 = v10;
LABEL_8:
    *(a2 + 16) = v5;
    *(a2 + 24) = 1;
    return;
  }

  memset(&v26, 0, sizeof(v26));
  v6 = [(__CFString *)a1 lengthOfBytesUsingEncoding:4];
  std::string::resize(&v26, v6, 0);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v26;
  }

  else
  {
    v7 = v26.__r_.__value_.__r.__words[0];
  }

  if (([(__CFString *)a1 getCString:v7 maxLength:v6 + 1 encoding:4]& 1) != 0)
  {
    *a2 = *&v26.__r_.__value_.__l.__data_;
    v5 = v26.__r_.__value_.__r.__words[2];
    goto LABEL_8;
  }

  if (quasar::gLogLevel >= 4)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v9);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v9, "Failed to perform UTF-8 encoding on string: ", 44);
    MEMORY[0x1B8C84BD0](v8, a1 != 0);
    quasar::QuasarInfoMessage::~QuasarInfoMessage(&v9);
  }

  *a2 = 0;
  *(a2 + 24) = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }
}

@end