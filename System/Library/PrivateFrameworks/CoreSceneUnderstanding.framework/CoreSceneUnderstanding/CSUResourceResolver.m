@interface CSUResourceResolver
+ (basic_string<char,)pathForResource:(std::allocator<char>> *__return_ptr)retstr;
@end

@implementation CSUResourceResolver

+ (basic_string<char,)pathForResource:(std::allocator<char>> *__return_ptr)retstr
{
  v6 = v3;
  v8 = objc_msgSend_bundleForClass_(MEMORY[0x1E696AAE8], v2, v1, v4, v5);
  v13 = objc_msgSend_resourcePath(v8, v9, v10, v11, v12);
  v14 = v13;
  v19 = objc_msgSend_UTF8String(v14, v15, v16, v17, v18);
  memset(&v26, 0, sizeof(v26));
  v20 = (v19 - 1);
  do
  {
    v21 = v20->__r_.__value_.__s.__data_[1];
    v20 = (v20 + 1);
  }

  while (v21);
  sub_1AC077890(&v26, v19, v20);
  memset(&v25, 0, sizeof(v25));
  v22 = *(v6 + 23);
  if (v22 >= 0)
  {
    v23 = v6;
  }

  else
  {
    v23 = *v6;
  }

  if (v22 < 0)
  {
    v22 = *(v6 + 8);
  }

  sub_1AC077890(&v25, v23, (v23 + v22));
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1AC0674A0(&__p, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v26;
  }

  sub_1AC0775AC(&__p, &v25);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_1AC0674A0(retstr, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_19;
      }
    }

    else if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *retstr = __p;
    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_19:
      operator delete(v25.__r_.__value_.__l.__data_);
      if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_20;
      }

      goto LABEL_17;
    }
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_20:
    operator delete(v26.__r_.__value_.__l.__data_);
  }

LABEL_17:

  return result;
}

@end