@interface EARTokenPronounciations
- (EARTokenPronounciations)initWithToken:(id)a3 pronunciations:(id)a4;
- (TokenProns)_quasarProns;
@end

@implementation EARTokenPronounciations

- (EARTokenPronounciations)initWithToken:(id)a3 pronunciations:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = EARTokenPronounciations;
  v8 = [(EARTokenPronounciations *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    token = v8->_token;
    v8->_token = v9;

    v11 = [v7 copy];
    pronunciations = v8->_pronunciations;
    v8->_pronunciations = v11;
  }

  return v8;
}

- (TokenProns)_quasarProns
{
  v2 = v1;
  v16 = retstr;
  v31[16] = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 16);
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = *v27;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v27 != v6)
      {
        objc_enumerationMutation(v4);
      }

      v8 = *(*(&v26 + 1) + 8 * i);
      v9 = v8;
      if (!v8)
      {
        memset(&__p, 0, sizeof(__p));
        v23 = 1;
LABEL_11:
        v24 = __p;
        v25 = 0;
        goto LABEL_12;
      }

      [v8 ear_toString];
      v23 = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      std::string::__init_copy_ctor_external(&v24, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      v25 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_12:

      v10 = v21;
      if (v21 >= v22)
      {
        v13 = std::vector<quasar::PronChoice>::__emplace_back_slow_path<quasar::PronChoice>(&v20, &v23);
      }

      else
      {
        *v21 = v23;
        v11 = (v10 + 2);
        if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v11, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
        }

        else
        {
          v12 = *&v24.__r_.__value_.__l.__data_;
          *(v10 + 3) = *(&v24.__r_.__value_.__l + 2);
          *&v11->__r_.__value_.__l.__data_ = v12;
        }

        v10[8] = v25;
        v13 = v10 + 10;
      }

      v21 = v13;
      if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v24.__r_.__value_.__l.__data_);
      }
    }

    v5 = [v4 countByEnumeratingWithState:&v26 objects:v31 count:16];
  }

  while (v5);
LABEL_22:

  v14 = *(v2 + 8);
  if (v14)
  {
    [v14 ear_toString];
  }

  else
  {
    memset(&v19, 0, sizeof(v19));
  }

  memset(v18, 0, sizeof(v18));
  std::vector<quasar::PronChoice>::__init_with_size[abi:ne200100]<quasar::PronChoice*,quasar::PronChoice*>(v18, v20, v21, 0xCCCCCCCCCCCCCCCDLL * ((v21 - v20) >> 3));
  memset(v17, 0, sizeof(v17));
  quasar::G2P::TokenProns::TokenProns(v16, &v19, v18, v17);
  v31[0] = v17;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](v31);
  v31[0] = v18;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](v31);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v31[0] = &v20;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](v31);
  return result;
}

@end