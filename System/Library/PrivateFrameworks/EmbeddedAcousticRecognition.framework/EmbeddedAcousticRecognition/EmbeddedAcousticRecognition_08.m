void sub_1B50A22D8(_Unwind_Exception *a1)
{
  std::__tree<std::string>::destroy(v1 + 1504, *(v1 + 1512));
  std::__tree<std::string>::destroy(v1 + 1480, *(v1 + 1488));
  std::__tree<std::string>::destroy(v1 + 1456, *(v1 + 1464));
  std::__tree<std::string>::destroy(v1 + 1432, *(v1 + 1440));
  std::__tree<std::string>::destroy(v1 + 1408, *(v1 + 1416));
  std::__tree<std::string>::destroy(v1 + 1384, *(v1 + 1392));
  std::__tree<std::string>::destroy(v1 + 1360, *(v1 + 1368));
  std::__tree<std::string>::destroy(v1 + 1336, *(v1 + 1344));
  std::__tree<std::string>::destroy(v1 + 1312, *(v1 + 1320));
  std::__tree<std::string>::destroy(v1 + 1288, *(v1 + 1296));
  std::__tree<std::string>::destroy(v1 + 1264, *(v1 + 1272));
  std::__tree<std::string>::destroy(v1 + 1240, *(v1 + 1248));
  std::__tree<std::string>::destroy(v1 + 1216, *(v1 + 1224));
  std::__tree<std::string>::destroy(v1 + 1192, *(v1 + 1200));
  quasar::SpeechModelInfo::~SpeechModelInfo((v1 + 912));
  if (*(v1 + 911) < 0)
  {
    operator delete(*v5);
  }

  if (*(v1 + 887) < 0)
  {
    operator delete(*v4);
  }

  v7 = *(v1 + 856);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  if (*(v1 + 847) < 0)
  {
    operator delete(*v3);
  }

  quasar::SystemConfig::SystemConfigInfo::~SystemConfigInfo(v2);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

std::string *quasar::SystemConfig::SystemConfigInfo::SystemConfigInfo(std::string *this, const quasar::SystemConfig::SystemConfigInfo *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  this[1].__r_.__value_.__l.__size_ = &unk_1F2CFAA28;
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v5 = *(a2 + 40);
    this[2].__r_.__value_.__l.__size_ = *(a2 + 7);
    *&this[1].__r_.__value_.__r.__words[2] = v5;
  }

  LODWORD(this[2].__r_.__value_.__r.__words[2]) = *(a2 + 16);
  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v6 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v6;
  }

  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = 0;
  this[4].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::pair<std::string,quasar::PTree>>::__init_with_size[abi:ne200100]<std::pair<std::string,quasar::PTree>*,std::pair<std::string,quasar::PTree>*>(&this[4], *(a2 + 12), *(a2 + 13), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 13) - *(a2 + 12)) >> 3));
  this[5].__r_.__value_.__s.__data_[0] = *(a2 + 120);
  quasar::SpeechModelInfo::SpeechModelInfo((this + 128), (a2 + 128));
  quasar::TranslationModelInfo::TranslationModelInfo(this + 17, (a2 + 408));
  std::map<int,std::map<std::string,double>>::map[abi:ne200100](&this[28].__r_.__value_.__l.__size_, a2 + 680);
  std::map<std::string,int>::map[abi:ne200100](&this[29].__r_.__value_.__l.__size_, a2 + 88);
  LODWORD(this[30].__r_.__value_.__r.__words[1]) = *(a2 + 182);
  std::unordered_set<std::string>::unordered_set(&this[30].__r_.__value_.__r.__words[2], a2 + 736);
  std::unordered_set<std::string>::unordered_set(&this[32].__r_.__value_.__l.__size_, a2 + 776);
  return this;
}

void sub_1B50A2708(_Unwind_Exception *exception_object)
{
  *(v1 + 32) = v2;
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50A27A4()
{
  if (*(v0 + 95) < 0)
  {
    operator delete(*(v1 + 8));
  }

  JUMPOUT(0x1B50A2770);
}

std::string *quasar::TranslationModelInfo::TranslationModelInfo(std::string *this, const quasar::TranslationModelInfo *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  std::set<std::string>::set[abi:ne200100](this[1].__r_.__value_.__r.__words, a2 + 3);
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(&this[2], *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 4));
  std::unordered_map<std::string,std::vector<std::pair<std::string,std::string>>>::unordered_map(&this[3], a2 + 72);
  std::unordered_map<std::string,quasar::TranslationPairSetting>::unordered_map(&this[4].__r_.__value_.__r.__words[2], a2 + 112);
  std::unordered_map<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>::unordered_map(&this[6].__r_.__value_.__l.__size_, a2 + 152);
  std::unordered_map<std::string,std::string>::unordered_map(&this[8], a2 + 192);
  std::unordered_map<std::string,std::unordered_set<std::string>>::unordered_map(&this[9].__r_.__value_.__r.__words[2], a2 + 232);
  return this;
}

void sub_1B50A2894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v2 + 192);
  std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::~__hash_table(v2 + 152);
  std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::~__hash_table(v2 + 112);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::~__hash_table(v2 + 72);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](va);
  std::__tree<std::string>::destroy(v2 + 24, *(v2 + 32));
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,quasar::TranslationPairSetting>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,quasar::TranslationPairSetting> const&>(a1, i + 2);
  }

  return a1;
}

uint64_t std::unordered_map<std::string,std::vector<std::pair<std::string,std::string>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<std::pair<std::string,std::string>>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::vector<std::pair<std::string,std::string>>> const&>(a1, i + 2);
  }

  return a1;
}

uint64_t std::vector<std::pair<std::string,std::string>>::__init_with_size[abi:ne200100]<std::pair<std::string,std::string>*,std::pair<std::string,std::string>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<std::string,std::string>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50A2A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_map<std::string,quasar::TranslationPairSetting>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unordered_map<std::string,quasar::TranslationPairSetting>> const&>(a1, i + 2);
  }

  return a1;
}

uint64_t std::unordered_map<std::string,std::string>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(a1, i + 2);
  }

  return a1;
}

uint64_t std::unordered_map<std::string,std::unordered_set<std::string>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string>>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,std::unordered_set<std::string>> const&>(a1, i + 2);
  }

  return a1;
}

void *std::map<int,std::map<std::string,double>>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<int,std::map<std::string,double>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,std::map<std::string,double>>,std::__tree_node<std::__value_type<int,std::map<std::string,double>>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<int,std::map<std::string,double>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<int,std::map<std::string,double>>,std::__tree_node<std::__value_type<int,std::map<std::string,double>>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::__emplace_hint_unique_key_args<int,std::pair<int const,std::map<std::string,double>> const&>(v5, v5 + 1, v4 + 8);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::map<std::string,int>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,int>,std::__tree_node<std::__value_type<std::string,int>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,int>,std::__tree_node<std::__value_type<std::string,int>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,int>,std::__map_value_compare<std::string,std::__value_type<std::string,int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,int>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,int> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::unordered_set<std::string>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a1, i + 2);
  }

  return a1;
}

void *std::map<std::string,double *>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,float *>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,float *>,std::__tree_node<std::__value_type<std::string,float *>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

void *std::map<std::string,float *>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,float *>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,float *>,std::__tree_node<std::__value_type<std::string,float *>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

void *std::map<std::string,long long *>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,BOOL *>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,BOOL *>,std::__tree_node<std::__value_type<std::string,BOOL *>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

void *std::map<std::string,unsigned int *>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,BOOL *>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,BOOL *>,std::__tree_node<std::__value_type<std::string,BOOL *>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

void *std::map<std::string,int *>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,BOOL *>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,BOOL *>,std::__tree_node<std::__value_type<std::string,BOOL *>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

void *std::map<std::string,BOOL *>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,BOOL *>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,BOOL *>,std::__tree_node<std::__value_type<std::string,BOOL *>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,float *>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,float *>,std::__tree_node<std::__value_type<std::string,float *>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,float *>,std::__map_value_compare<std::string,std::__value_type<std::string,float *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,float *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,float *> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::map<std::string,BOOL *>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,BOOL *>,std::__tree_node<std::__value_type<std::string,BOOL *>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,BOOL *>,std::__map_value_compare<std::string,std::__value_type<std::string,BOOL *>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,BOOL *>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,BOOL *> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::map<std::string,quasar::filesystem::Path *>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::string*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string*>,std::__tree_node<std::__value_type<std::string,std::string*>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

void *std::map<std::string,std::unordered_set<std::string> *,std::less<std::string>,std::allocator<std::pair<std::string const,std::unordered_set<std::string> *>>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::string*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string*>,std::__tree_node<std::__value_type<std::string,std::string*>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

void *std::map<std::string,std::unordered_map<std::string,std::string> *,std::less<std::string>,std::allocator<std::pair<std::string const,std::unordered_map<std::string,std::string> *>>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::string*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string*>,std::__tree_node<std::__value_type<std::string,std::string*>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

void *std::map<std::string,std::vector<std::pair<std::string,std::string>> *,std::less<std::string>,std::allocator<std::pair<std::string const,std::vector<std::pair<std::string,std::string>> *>>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::string*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string*>,std::__tree_node<std::__value_type<std::string,std::string*>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

void *std::map<std::string,std::vector<std::string> *,std::less<std::string>,std::allocator<std::pair<std::string const,std::vector<std::string> *>>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::string*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string*>,std::__tree_node<std::__value_type<std::string,std::string*>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

void *std::map<std::string,std::string*>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::string*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string*>,std::__tree_node<std::__value_type<std::string,std::string*>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,std::string*>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::string*>,std::__tree_node<std::__value_type<std::string,std::string*>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::string*>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string*>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string*>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string*> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::map<std::string,quasar::SystemConfig::Version>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,quasar::SystemConfig::Version>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__tree_node<std::__value_type<std::string,quasar::SystemConfig::Version>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,quasar::SystemConfig::Version>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__tree_node<std::__value_type<std::string,quasar::SystemConfig::Version>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,quasar::SystemConfig::Version>,std::__map_value_compare<std::string,std::__value_type<std::string,quasar::SystemConfig::Version>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,quasar::SystemConfig::Version>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,quasar::SystemConfig::Version> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *std::map<std::string,std::set<std::string>>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,std::set<std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::set<std::string>>,std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,std::set<std::string>>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,std::set<std::string>>,std::__tree_node<std::__value_type<std::string,std::set<std::string>>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::set<std::string>> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *_ZNSt3__120__shared_ptr_emplaceIN6quasar21InverseTextNormalizerENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D21458;
  quasar::InverseTextNormalizer::InverseTextNormalizer((a1 + 3));
  return a1;
}

void quasar::InverseTextNormalizer::init(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (!a1[162])
  {
    if (*(a2 + 1552) != 1)
    {
      __p[0] = 0;
      __p[1] = 0;
      *&v13 = 0;
      memset(v10, 0, sizeof(v10));
      v11 = 1065353216;
      quasar::SystemConfig::readJsonFile(a2, (a1 + 30), __p, v10, 0, 0);
      std::__hash_table<std::__hash_value_type<std::string,std::string>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::string>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::string>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::string>>>::~__hash_table(v10);
      v9 = __p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v9);
    }

    if (*(a3 + 23) >= 0)
    {
      v6 = *(a3 + 23);
    }

    else
    {
      v6 = *(a3 + 8);
    }

    v7 = __p;
    std::string::basic_string[abi:ne200100](__p, v6 + 1);
    if (SBYTE7(v13) < 0)
    {
      v7 = __p[0];
    }

    if (v6)
    {
      if (*(a3 + 23) >= 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = *a3;
      }

      memmove(v7, v8, v6);
    }

    *(v7 + v6) = 46;
    quasar::SystemConfig::setPrefix(a2, __p);
    if (SBYTE7(v13) < 0)
    {
      operator delete(__p[0]);
    }

    (*(*a1 + 16))(a1, a2);
    quasar::SystemConfig::readPtree(a2, a3);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__p = 0u;
  v13 = 0u;
  kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "InverseTextNormalizer already initialized.");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(__p);
}

double quasar::InverseTextNormalizer::InverseTextNormalizer(quasar::InverseTextNormalizer *this)
{
  *this = &unk_1F2D05C10;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 46) = 0;
  *(this + 47) = this + 384;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 56) = 0;
  *(this + 114) = 1065353216;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 124) = 1065353216;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  *(this + 134) = 1065353216;
  *(this + 34) = 0u;
  *(this + 35) = 0u;
  *(this + 144) = 1065353216;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 158) = 1065353216;
  *(this + 162) = 0;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 86) = 0;
  *(this + 174) = 1065353216;
  *(this + 44) = 0u;
  *(this + 45) = 0u;
  *(this + 184) = 1065353216;
  *(this + 47) = 0u;
  *(this + 93) = this + 752;
  *(this + 97) = 0;
  return result;
}

void quasar::InverseTextNormalizer::registerParams(quasar::InverseTextNormalizer *this, const void **a2)
{
  std::string::basic_string[abi:ne200100]<0>(v6, "cluster-id-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File containing cluster Ids.");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 24, __p, 1, 33, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "compound-word-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File containing cluster Ids.");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 96, __p, 1, 33, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "max-num-feats");
  std::string::basic_string[abi:ne200100]<0>(__p, "Maximum number of feats");
  quasar::SystemConfig::Register<int>(a2, v6, this + 8, __p, 1, 33, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "no-title-casing-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File with list of words that should not be title-cased");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 144, __p, 1, 34, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "source-vocab-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "Source vocabulary file");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 168, __p, 0, 33, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "token-boundary-id");
  std::string::basic_string[abi:ne200100]<0>(__p, "Token boundary symbol ID");
  quasar::SystemConfig::Register<int>(a2, v6, this + 12, __p, 1, 33, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "word-sense-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File containing list of word senses.");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 264, __p, 1, 33, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "align-right-preitn-tokens-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "File storing list of pre-ITN tokens that should map to next post-ITN token.");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 288, __p, 0, 52, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "regex-feat-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "TSV file storing regex-to-feature map.");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 48, __p, 0, 53, 0, 67, 0);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "double-regex-feat-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "TSV file storing regex-to-feature map.");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 72, __p, 0, 68, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "guard-markers-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "TSV file storing guard markers that prevent ITN.");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 312, __p, 0, 57, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "supplement-config-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "supplemental json file which may contain punctuation and other frequently updated parameters such as max-num-feats");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 336, __p, 0, 87, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "chunk-length");
  std::string::basic_string[abi:ne200100]<0>(__p, "Number of tokens in each chunk");
  quasar::SystemConfig::Register<int>(a2, v6, this + 16, __p, 0, 136, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "chunk-overlap");
  std::string::basic_string[abi:ne200100]<0>(__p, "the number of overlap tokens between two chunks");
  quasar::SystemConfig::Register<int>(a2, v6, this + 20, __p, 0, 136, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "vocab-marisa-trie-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "The vocabulary symbol table file");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 192, __p, 0, 136, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "marisa-relabel-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "The relabel mapping of Marisa Trie. The relabel mapping is needed if the model doesn't adopt the new label created by Marisa Trie");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 216, __p, 0, 136, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(v6, "marisa-token-file");
  std::string::basic_string[abi:ne200100]<0>(__p, "The vocab file specifies the special tokens");
  quasar::SystemConfig::Register<std::string>(a2, v6, this + 240, __p, 0, 136, 0, 0x7FFFFFFF, 0x7FFFFFFF);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1B50A4810(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50A531C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1B50A5378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  a19 = &a54;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  if (a62 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a64);
  JUMPOUT(0x1B50A5458);
}

void sub_1B50A5398(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, std::locale a63)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  a18 = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a18);
  JUMPOUT(0x1B50A53ECLL);
}

void sub_1B50A5414(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::locale a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  std::locale::~locale(&a19);
  if (a62 < 0)
  {
    JUMPOUT(0x1B50A544CLL);
  }

  JUMPOUT(0x1B50A5450);
}

void sub_1B50A5438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0x1B50A544CLL);
  }

  JUMPOUT(0x1B50A5450);
}

void sub_1B50A55F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<kaldi::quasar::PrefixTree<std::string,std::string>>::__shared_ptr_emplace[abi:ne200100]<char const(&)[1],std::allocator<kaldi::quasar::PrefixTree<std::string,std::string>>,0>(void *a1, char *__s)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D06030;
  std::allocator<kaldi::quasar::PrefixTree<std::string,std::string>>::construct[abi:ne200100]<kaldi::quasar::PrefixTree<std::string,std::string>,char const(&)[1]>(&v2, a1 + 24, __s);
}

uint64_t kaldi::quasar::PrefixTree<std::string,std::string>::Node::Node(uint64_t a1, uint64_t a2, __int128 *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *a3, *(a3 + 1));
  }

  else
  {
    v4 = *a3;
    *(a1 + 88) = *(a3 + 2);
    *(a1 + 72) = v4;
  }

  return a1;
}

void sub_1B50A56F0(_Unwind_Exception *a1)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*v2);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v1);
  _Unwind_Resume(a1);
}

void sub_1B50A58AC(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x1B8C85200](v1);
  _Unwind_Resume(a1);
}

uint64_t kaldi::quasar::PrefixTree<std::string,std::string>::AddSequence(void **a1, uint64_t *a2, void *a3, void *a4)
{
  LODWORD(result) = kaldi::quasar::PrefixTree<std::string,std::string>::GetLongestPrefix(a1, a2, a3);
  *a4 = *a3;
  if (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > result)
  {
    operator new();
  }

  return result;
}

unint64_t kaldi::quasar::PrefixTree<std::string,std::string>::GetLongestPrefix(void **a1, uint64_t *a2, void *a3)
{
  v3 = *a1;
  *a3 = v3;
  v4 = *a2;
  if (a2[1] == *a2)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v9 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v3, (v4 + v7));
    if (!v9)
    {
      break;
    }

    v3 = v9[5];
    *a3 = v3;
    ++v8;
    v4 = *a2;
    v7 += 24;
  }

  while (0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3) > v8);
  return v8;
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1B50A5D5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50A5E24(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::__list_iterator<std::pair<std::string,std::vector<std::string>>,void *>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t quasar::VocabId::VocabId(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 88), "<PAD>");
  std::string::basic_string[abi:ne200100]<0>((a1 + 112), "<unk>");
  std::string::basic_string[abi:ne200100]<0>((a1 + 136), "<s>");
  std::string::basic_string[abi:ne200100]<0>((a1 + 160), "</s>");
  v6 = *(a3 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (v6)
  {
    v24 = 0;
    v7 = MEMORY[0x1E69E5528] + 64;
    v23 = MEMORY[0x1E69E5528] + 64;
    v8 = *(MEMORY[0x1E69E54C8] + 16);
    *&v21 = *(MEMORY[0x1E69E54C8] + 8);
    *(&v22[-1] + *(v21 - 24)) = v8;
    *(&v21 + 1) = 0;
    v9 = (&v22[-1] + *(v21 - 24));
    std::ios_base::init(v9, v22);
    v10 = MEMORY[0x1E69E5528] + 24;
    v9[1].__vftable = 0;
    v9[1].__fmtflags_ = -1;
    *&v21 = v10;
    v23 = v7;
    MEMORY[0x1B8C849F0](v22);
    std::ifstream::open();
    fst::FstReadOptions::FstReadOptions(v16, a3, 0, 0, 0);
    v17 = 2;
    std::istream::seekg();
    std::istream::tellg();
    v11 = v20;
    std::istream::seekg();
    fst::MappedFile::Map(&v21, v16, v11);
  }

  v12 = *(a2 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 8);
  }

  if (v12 && !*(a1 + 16))
  {
    if (v13 < 0)
    {
      std::string::__init_copy_ctor_external(&v15, *a2, *(a2 + 8));
    }

    else
    {
      v15 = *a2;
    }

    __p[0] = 0;
    LOBYTE(v18) = 0;
    kaldi::Input::OpenInternal(__p, &v15, 1, &v18);
    kaldi::Input::Stream(__p);
    std::allocate_shared[abi:ne200100]<kaldi::quasar::Vocab,std::allocator<kaldi::quasar::Vocab>,std::istream &,BOOL &,0>();
  }

  if (!*a1 && !*(a1 + 16))
  {
    memset(v22, 0, 256);
    v21 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "Not able to create vocab table from neither source-vocab-file nor vocab-marisa-trie-file", 88);
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(&v21);
  }

  return a1;
}

void sub_1B50A65A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62)
{
  kaldi::Input::~Input(&a13);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::ifstream::~ifstream(&a62);
  if (*(v62 + 183) < 0)
  {
    operator delete(*(v62 + 160));
  }

  if (*(v62 + 159) < 0)
  {
    operator delete(*(v62 + 136));
  }

  if (*(v62 + 135) < 0)
  {
    operator delete(*(v62 + 112));
  }

  if (*(v62 + 111) < 0)
  {
    operator delete(*(v62 + 88));
  }

  if (*(v62 + 72) == 1)
  {
    v64 = *(v62 + 56);
    if (v64)
    {
      MEMORY[0x1B8C85310](v64, 0x1000C8077774924);
    }
  }

  v65 = *(v62 + 40);
  if (v65)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  v66 = *(v62 + 24);
  if (v66)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v66);
  }

  v67 = *(v62 + 8);
  if (v67)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v67);
  }

  _Unwind_Resume(a1);
}

void *std::__shared_ptr_emplace<quasar::VocabId>::__shared_ptr_emplace[abi:ne200100]<std::string &,std::string &,std::string &,std::string &,std::allocator<quasar::VocabId>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D05F40;
  quasar::VocabId::VocabId((a1 + 3), a2, a3);
  return a1;
}

void *_ZNSt3__120__shared_ptr_emplaceIN6marisa4TrieENS_9allocatorIS2_EEEC2B8ne200100IJES4_Li0EEES4_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D00528;
  marisa::Trie::Trie(a1 + 3);
  return a1;
}

marisa::grimoire::trie::LoudsTrie **marisa::Trie::map(marisa::grimoire::trie::LoudsTrie **this, const void *a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    exception[2] = 0x200000021;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:33: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
  }

  v6 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
  if (!v6)
  {
    v13 = 0;
    v11 = __cxa_allocate_exception(0x20uLL);
    *v11 = &unk_1F2D43298;
    v11[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc";
    v11[2] = 0x800000024;
    v11[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/trie.cc:36: MARISA_MEMORY_ERROR: temp.get() == NULL";
  }

  v7 = v6;
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v6);
  v13 = v7;
  marisa::grimoire::io::Mapper::Mapper(v12);
  marisa::grimoire::io::Mapper::open(v12, a2, a3);
  marisa::grimoire::trie::LoudsTrie::map(v13, v12);
  v8 = *this;
  *this = v13;
  v13 = v8;
  marisa::grimoire::io::Mapper::~Mapper(v12);
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v13);
}

void sub_1B50A69AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(va);
  _Unwind_Resume(a1);
}

marisa::grimoire::trie::LoudsTrie *marisa::grimoire::trie::LoudsTrie::LoudsTrie(marisa::grimoire::trie::LoudsTrie *this)
{
  *(this + 25) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 137) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 185) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 89) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 233) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 345) = 0u;
  *(this + 393) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 297) = 0u;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 16) = 0u;
  *(this + 441) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 553) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  *(this + 601) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 505) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 29) = 0u;
  *(this + 649) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 697) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 90) = 0;
  *(this + 182) = 0;
  *(this + 92) = 0;
  marisa::grimoire::trie::Tail::Tail((this + 744));
  *(this + 1048) = 0;
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  *(this + 1000) = 0u;
  *(this + 66) = 0u;
  *(this + 134) = 3;
  *(this + 135) = 0x100000000200;
  *(this + 272) = 0x20000;
  marisa::grimoire::io::Mapper::Mapper(this + 1096);
  return this;
}

void sub_1B50A6B28(_Unwind_Exception *a1)
{
  v8 = v1[126];
  if (v8)
  {
    MEMORY[0x1B8C85310](v8, 0x1000C8077774924);
  }

  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(v4);
  marisa::grimoire::trie::Tail::~Tail((v1 + 93));
  if (*v6)
  {
    MEMORY[0x1B8C85310](*v6, 0x1000C8077774924);
  }

  if (*v5)
  {
    MEMORY[0x1B8C85310](*v5, 0x1000C8077774924);
  }

  marisa::grimoire::vector::BitVector::~BitVector(v3);
  marisa::grimoire::vector::BitVector::~BitVector(v2);
  marisa::grimoire::vector::BitVector::~BitVector(v1);
  _Unwind_Resume(a1);
}

__n128 marisa::grimoire::io::Mapper::open(marisa::grimoire::io::Mapper *this, const void *a2, uint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x20000003FLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:63: MARISA_NULL_ERROR: (ptr == NULL) && (size != 0)";
  }

  v3 = *this;
  v4 = *(this + 1);
  *this = a2;
  *(this + 1) = -1;
  *(this + 2) = a3;
  *(this + 3) = 0;
  v8[0] = v3;
  v8[1] = v4;
  v5 = *(this + 8);
  *(this + 8) = -1;
  v9 = v5;
  marisa::grimoire::io::Mapper::~Mapper(v8);
  return result;
}

void marisa::grimoire::io::Mapper::~Mapper(marisa::grimoire::io::Mapper *this)
{
  v2 = *(this + 1);
  if (v2 != -1)
  {
    munmap(v2, *(this + 3));
  }

  v3 = *(this + 8);
  if (v3 != -1)
  {
    close(v3);
  }
}

uint64_t marisa::grimoire::io::Mapper::Mapper(uint64_t this)
{
  *this = 0;
  *(this + 8) = -1;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = -1;
  return this;
}

double marisa::grimoire::trie::Tail::Tail(marisa::grimoire::trie::Tail *this)
{
  result = 0.0;
  *(this + 25) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 73) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 185) = 0u;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 233) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 137) = 0u;
  return result;
}

void marisa::grimoire::trie::LoudsTrie::map(marisa::grimoire::trie::LoudsTrie *this, marisa::grimoire::io::Mapper *a2)
{
  marisa::grimoire::trie::Header::map(v4, a2);
  marisa::grimoire::trie::LoudsTrie::LoudsTrie(v4);
  marisa::grimoire::trie::LoudsTrie::map_(v4, a2);
  marisa::grimoire::io::Mapper::swap(v5, a2);
  marisa::grimoire::trie::LoudsTrie::swap(this, v4);
  marisa::grimoire::trie::LoudsTrie::~LoudsTrie(v4);
}

_BYTE *marisa::grimoire::trie::Header::map(marisa::grimoire::trie::Header *this, marisa::grimoire::io::Mapper *a2)
{
  result = marisa::grimoire::io::Mapper::map_data(a2, 0x10uLL);
  if (*result != 87)
  {
    goto LABEL_7;
  }

  v3 = 1u;
  do
  {
    if (v3 == 16)
    {
      return result;
    }

    v4 = result[v3];
    v5 = marisa::grimoire::trie::Header::get_header(void)::buf[v3++];
  }

  while (v4 == v5);
  if ((v3 - 2) <= 0xE)
  {
LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/header.h";
    exception[2] = 0xA00000015;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/header.h:21: MARISA_FORMAT_ERROR: !test_header(ptr)";
  }

  return result;
}

uint64_t marisa::grimoire::io::Mapper::map_data(marisa::grimoire::io::Mapper *this, unint64_t a2)
{
  v2 = *this;
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000063;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:99: MARISA_STATE_ERROR: !is_open()";
LABEL_6:
    exception[3] = v8;
  }

  v3 = *(this + 2);
  v4 = v3 >= a2;
  v5 = v3 - a2;
  if (!v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000064;
    v8 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:100: MARISA_IO_ERROR: size > avail_";
    goto LABEL_6;
  }

  *this = v2 + a2;
  *(this + 2) = v5;
  return v2;
}

uint64_t marisa::grimoire::vector::Vector<unsigned long long>::map_(uint64_t a1, marisa::grimoire::io::Mapper *this)
{
  v4 = *marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  if ((v4 & 7) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  v5 = v4 >> 3;
  marisa::grimoire::io::Mapper::map<unsigned long long>(this, (a1 + 16), v4 >> 3);
  marisa::grimoire::io::Mapper::seek(this, 0);
  *(a1 + 24) = v5;

  return marisa::grimoire::vector::Vector<unsigned long long>::fix(a1);
}

uint64_t marisa::grimoire::vector::BitVector::map(marisa::grimoire::vector::BitVector *this, marisa::grimoire::io::Mapper *a2)
{
  memset(v4, 0, 41);
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v4[3] = 0u;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  marisa::grimoire::vector::BitVector::map_(v4, a2);
  marisa::grimoire::vector::BitVector::swap(this, v4);
  if (v9)
  {
    MEMORY[0x1B8C85310](v9, 0x1000C8077774924);
  }

  if (v7)
  {
    MEMORY[0x1B8C85310](v7, 0x1000C8077774924);
  }

  if (v5)
  {
    MEMORY[0x1B8C85310](v5, 0x1000C8077774924);
  }

  result = *&v4[0];
  if (*&v4[0])
  {
    return MEMORY[0x1B8C85310](*&v4[0], 0x1000C8077774924);
  }

  return result;
}

double marisa::grimoire::trie::LoudsTrie::map_(marisa::grimoire::trie::LoudsTrie *this, marisa::grimoire::io::Mapper *a2)
{
  marisa::grimoire::vector::BitVector::map(this, a2);
  marisa::grimoire::vector::BitVector::map((this + 208), a2);
  marisa::grimoire::vector::BitVector::map((this + 416), a2);
  marisa::grimoire::vector::Vector<unsigned char>::map(this + 39, a2);
  marisa::grimoire::vector::FlatVector::map((this + 672), a2);
  marisa::grimoire::trie::Tail::map((this + 744), a2);
  if (*(this + 59) && !*(this + 96))
  {
    v4 = operator new(0x470uLL, MEMORY[0x1E69E5398]);
    v5 = v4;
    if (v4)
    {
      marisa::grimoire::trie::LoudsTrie::LoudsTrie(v4);
    }

    marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::reset(this + 125, v5);
    v6 = *(this + 125);
    if (!v6)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F2D43298;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc";
      exception[2] = 0x80000021ELL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/louds-trie.cc:542: MARISA_MEMORY_ERROR: next_trie_.get() == NULL";
    }

    marisa::grimoire::trie::LoudsTrie::map_(v6, a2);
  }

  marisa::grimoire::vector::Vector<marisa::grimoire::trie::Cache>::map(this + 63, a2);
  *(this + 132) = *(this + 129) - 1;
  *(this + 133) = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  v7 = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  v10 = 3;
  *&v11 = 0x100000000200;
  v12 = 0x20000;
  marisa::grimoire::trie::Config::parse_(&v10, v7);
  *(this + 134) = v10;
  result = v11;
  *(this + 135) = v11;
  *(this + 272) = v12;
  return result;
}

uint64_t marisa::grimoire::vector::BitVector::map_(marisa::grimoire::vector::BitVector *this, marisa::grimoire::io::Mapper *a2)
{
  marisa::grimoire::vector::Vector<unsigned long long>::map(this, a2);
  *(this + 6) = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  v4 = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  if (*(this + 6) < v4)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/bit-vector.h";
    exception[2] = 0xA00000087;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/bit-vector.h:135: MARISA_FORMAT_ERROR: temp_num_1s > size_";
  }

  *(this + 7) = v4;
  marisa::grimoire::vector::Vector<marisa::grimoire::vector::RankIndex>::map(this + 4, a2);
  marisa::grimoire::vector::Vector<unsigned int>::map(this + 7, a2);

  return marisa::grimoire::vector::Vector<unsigned int>::map(this + 10, a2);
}

uint64_t marisa::grimoire::io::Mapper::map<unsigned long long>(marisa::grimoire::io::Mapper *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x20000001CLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:28: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 61)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x70000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:30: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = marisa::grimoire::io::Mapper::map_data(a1, 8 * a3);
  *a2 = result;
  return result;
}

uint64_t marisa::grimoire::vector::Vector<unsigned long long>::map(__int128 *a1, marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  marisa::grimoire::vector::Vector<unsigned long long>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B8C85310](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1B50A74E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C85310](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marisa::grimoire::io::Mapper::seek(marisa::grimoire::io::Mapper *this, unint64_t a2)
{
  if (!*this)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x100000047;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:71: MARISA_STATE_ERROR: !is_open()";
    goto LABEL_8;
  }

  if (*(this + 2) < a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc";
    exception[2] = 0x900000048;
    v4 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/io/mapper.cc:72: MARISA_IO_ERROR: size > avail_";
LABEL_8:
    exception[3] = v4;
  }

  return marisa::grimoire::io::Mapper::map_data(this, a2);
}

uint64_t marisa::grimoire::vector::Vector<unsigned long long>::fix(uint64_t result)
{
  if (*(result + 40) == 1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0x10000006BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:107: MARISA_STATE_ERROR: fixed_";
  }

  *(result + 40) = 1;
  return result;
}

uint64_t marisa::grimoire::vector::Vector<marisa::grimoire::vector::RankIndex>::map(__int128 *a1, marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  marisa::grimoire::vector::Vector<marisa::grimoire::vector::RankIndex>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B8C85310](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1B50A7700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C85310](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marisa::grimoire::vector::Vector<marisa::grimoire::vector::RankIndex>::map_(uint64_t a1, marisa::grimoire::io::Mapper *this)
{
  v4 = *marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  v5 = v4 / 0xC;
  if (v4 % 0xC)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  marisa::grimoire::io::Mapper::map<marisa::grimoire::vector::RankIndex>(this, (a1 + 16), v5);
  marisa::grimoire::io::Mapper::seek(this, -v4 & 7);
  *(a1 + 24) = v5;

  return marisa::grimoire::vector::Vector<unsigned long long>::fix(a1);
}

uint64_t marisa::grimoire::io::Mapper::map<marisa::grimoire::vector::RankIndex>(marisa::grimoire::io::Mapper *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x20000001CLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:28: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >= 0x1555555555555556)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x70000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:30: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = marisa::grimoire::io::Mapper::map_data(a1, 12 * a3);
  *a2 = result;
  return result;
}

uint64_t marisa::grimoire::vector::Vector<unsigned int>::map_(uint64_t a1, marisa::grimoire::io::Mapper *this)
{
  v4 = *marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  if ((v4 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h";
    exception[2] = 0xA000000CALL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/vector.h:202: MARISA_FORMAT_ERROR: (total_size % sizeof(T)) != 0";
  }

  marisa::grimoire::io::Mapper::map<unsigned int>(this, (a1 + 16), v4 >> 2);
  marisa::grimoire::io::Mapper::seek(this, -v4 & 4);
  *(a1 + 24) = v4 >> 2;

  return marisa::grimoire::vector::Vector<unsigned long long>::fix(a1);
}

uint64_t marisa::grimoire::io::Mapper::map<unsigned int>(marisa::grimoire::io::Mapper *a1, uint64_t *a2, unint64_t a3)
{
  if (!a2 && a3)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x20000001CLL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:28: MARISA_NULL_ERROR: (objs == NULL) && (num_objs != 0)";
    goto LABEL_7;
  }

  if (a3 >> 62)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h";
    exception[2] = 0x70000001ELL;
    v6 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../io/mapper.h:30: MARISA_SIZE_ERROR: num_objs > (MARISA_SIZE_MAX / sizeof(T))";
LABEL_7:
    exception[3] = v6;
  }

  result = marisa::grimoire::io::Mapper::map_data(a1, 4 * a3);
  *a2 = result;
  return result;
}

uint64_t marisa::grimoire::vector::Vector<unsigned int>::map(__int128 *a1, marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  marisa::grimoire::vector::Vector<unsigned int>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B8C85310](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1B50A7B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C85310](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *marisa::grimoire::vector::BitVector::swap(marisa::grimoire::vector::BitVector *this, marisa::grimoire::vector::BitVector *a2)
{
  marisa::grimoire::vector::Vector<unsigned char>::swap(this, a2);
  v4 = *(this + 6);
  *(this + 6) = *(a2 + 6);
  *(a2 + 6) = v4;
  v5 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v5;
  marisa::grimoire::vector::Vector<unsigned char>::swap(this + 8, a2 + 8);
  marisa::grimoire::vector::Vector<unsigned char>::swap(this + 14, a2 + 14);

  return marisa::grimoire::vector::Vector<unsigned char>::swap(this + 20, a2 + 20);
}

uint64_t *marisa::grimoire::vector::Vector<unsigned char>::swap(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  v3 = result[1];
  result[1] = a2[1];
  a2[1] = v3;
  v4 = result[2];
  v5 = result[3];
  v6 = a2[3];
  result[2] = a2[2];
  result[3] = v6;
  a2[2] = v4;
  a2[3] = v5;
  v7 = result[4];
  result[4] = a2[4];
  a2[4] = v7;
  LOBYTE(v7) = *(result + 40);
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = v7;
  return result;
}

void *marisa::grimoire::vector::FlatVector::map_(marisa::grimoire::vector::FlatVector *this, marisa::grimoire::io::Mapper *a2)
{
  marisa::grimoire::vector::Vector<unsigned long long>::map(this, a2);
  v4 = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  if (v4 >= 0x21)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/flat-vector.h";
    exception[2] = 0xA00000086;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/../vector/flat-vector.h:134: MARISA_FORMAT_ERROR: temp_value_size > 32";
  }

  *(this + 6) = v4;
  *(this + 14) = *marisa::grimoire::io::Mapper::map_data(a2, 4uLL);
  result = marisa::grimoire::io::Mapper::map_data(a2, 8uLL);
  *(this + 8) = *result;
  return result;
}

uint64_t marisa::grimoire::vector::FlatVector::map(marisa::grimoire::vector::FlatVector *this, marisa::grimoire::io::Mapper *a2)
{
  memset(v9, 0, 41);
  v10 = 0;
  v11 = 0;
  v12 = 0;
  marisa::grimoire::vector::FlatVector::map_(v9, a2);
  v3 = *this;
  *this = v9[0];
  v9[0] = v3;
  v4 = *(this + 2);
  *(this + 2) = *&v9[1];
  *&v9[1] = v4;
  v5 = *(this + 24);
  *(this + 24) = *(&v9[1] + 8);
  *(&v9[1] + 8) = v5;
  LOBYTE(v4) = *(this + 40);
  *(this + 40) = BYTE8(v9[2]);
  BYTE8(v9[2]) = v4;
  v6 = *(this + 6);
  *(this + 6) = v10;
  v10 = v6;
  LODWORD(v6) = *(this + 14);
  *(this + 14) = v11;
  v11 = v6;
  v7 = *(this + 8);
  *(this + 8) = v12;
  result = v3;
  v12 = v7;
  if (v3)
  {
    return MEMORY[0x1B8C85310](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1B50A7DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C85310](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marisa::grimoire::vector::Vector<unsigned char>::map_(uint64_t a1, marisa::grimoire::io::Mapper *this)
{
  v4 = *marisa::grimoire::io::Mapper::map_data(this, 8uLL);
  *(a1 + 16) = marisa::grimoire::io::Mapper::map_data(this, v4);
  marisa::grimoire::io::Mapper::seek(this, -v4 & 7);
  *(a1 + 24) = v4;

  return marisa::grimoire::vector::Vector<unsigned long long>::fix(a1);
}

uint64_t marisa::grimoire::vector::Vector<unsigned char>::map(__int128 *a1, marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  marisa::grimoire::vector::Vector<unsigned char>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B8C85310](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1B50A7F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C85310](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marisa::grimoire::trie::Tail::map(marisa::grimoire::trie::Tail *this, marisa::grimoire::io::Mapper *a2)
{
  memset(v8, 0, 41);
  memset(v9, 0, 41);
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  v9[3] = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  marisa::grimoire::vector::Vector<char>::map(v8, a2);
  marisa::grimoire::vector::BitVector::map(v9, a2);
  v4 = *this;
  *this = v8[0];
  v8[0] = v4;
  v5 = *(this + 2);
  *(this + 2) = *&v8[1];
  *&v8[1] = v5;
  v6 = *(this + 24);
  *(this + 24) = *(&v8[1] + 8);
  *(&v8[1] + 8) = v6;
  LOBYTE(v5) = *(this + 40);
  *(this + 40) = BYTE8(v8[2]);
  BYTE8(v8[2]) = v5;
  marisa::grimoire::vector::BitVector::swap((this + 48), v9);
  if (v14)
  {
    MEMORY[0x1B8C85310](v14, 0x1000C8077774924);
  }

  if (v12)
  {
    MEMORY[0x1B8C85310](v12, 0x1000C8077774924);
  }

  if (v10)
  {
    MEMORY[0x1B8C85310](v10, 0x1000C8077774924);
  }

  if (*&v9[0])
  {
    MEMORY[0x1B8C85310](*&v9[0], 0x1000C8077774924);
  }

  result = *&v8[0];
  if (*&v8[0])
  {
    return MEMORY[0x1B8C85310](*&v8[0], 0x1000C8077774924);
  }

  return result;
}

uint64_t marisa::grimoire::vector::Vector<char>::map(__int128 *a1, marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  marisa::grimoire::vector::Vector<unsigned char>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B8C85310](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1B50A8124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C85310](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

marisa::grimoire::trie::LoudsTrie **marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::reset(marisa::grimoire::trie::LoudsTrie **a1, marisa::grimoire::trie::LoudsTrie *a2)
{
  if (a2 && *a1 == a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h";
    exception[2] = 0x600000013;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h:19: MARISA_RESET_ERROR: (ptr != NULL) && (ptr == ptr_)";
  }

  v4 = *a1;
  *a1 = a2;
  return marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(&v4);
}

marisa::grimoire::trie::LoudsTrie **marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(marisa::grimoire::trie::LoudsTrie **a1)
{
  v2 = *a1;
  if (v2)
  {
    marisa::grimoire::trie::LoudsTrie::~LoudsTrie(v2);
    MEMORY[0x1B8C85350]();
  }

  return a1;
}

uint64_t marisa::grimoire::vector::Vector<marisa::grimoire::trie::Cache>::map(__int128 *a1, marisa::grimoire::io::Mapper *a2)
{
  memset(v7, 0, 41);
  marisa::grimoire::vector::Vector<marisa::grimoire::vector::RankIndex>::map_(v7, a2);
  v3 = *a1;
  *a1 = v7[0];
  v7[0] = v3;
  v4 = *(a1 + 2);
  *(a1 + 2) = *&v7[1];
  *&v7[1] = v4;
  v5 = *(a1 + 24);
  *(a1 + 24) = *(&v7[1] + 8);
  *(&v7[1] + 8) = v5;
  LOBYTE(v4) = *(a1 + 40);
  *(a1 + 40) = BYTE8(v7[2]);
  result = v3;
  BYTE8(v7[2]) = v4;
  if (v3)
  {
    return MEMORY[0x1B8C85310](v3, 0x1000C8077774924);
  }

  return result;
}

void sub_1B50A82C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    MEMORY[0x1B8C85310](a9, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marisa::grimoire::trie::Config::parse_(marisa::grimoire::trie::Config *this, unsigned int a2)
{
  if (a2 >= 0x100000)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x50000003BLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:59: MARISA_CODE_ERROR: (config_flags & ~MARISA_CONFIG_MASK) != 0";
  }

  if ((a2 & 0x7F) != 0)
  {
    *this = a2 & 0x7F;
  }

  marisa::grimoire::trie::Config::parse_cache_level(this, a2);
  marisa::grimoire::trie::Config::parse_tail_mode(this, a2);

  return marisa::grimoire::trie::Config::parse_node_order(this, a2);
}

uint64_t marisa::grimoire::trie::Config::parse_tail_mode(uint64_t this, __int16 a2)
{
  v2 = 4096;
  v3 = a2 & 0xF000;
  if ((a2 & 0xF000) != 0 && v3 != 4096)
  {
    if (v3 != 0x2000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F2D43298;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x500000079;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:121: MARISA_CODE_ERROR: undefined tail mode";
    }

    v2 = 0x2000;
  }

  *(this + 12) = v2;
  return this;
}

uint64_t marisa::grimoire::trie::Config::parse_cache_level(uint64_t this, __int16 a2)
{
  v2 = a2 & 0xF80;
  v3 = 512;
  if (v2 > 0x1FF)
  {
    if (v2 == 512)
    {
      goto LABEL_11;
    }

    if (v2 != 1024)
    {
      v3 = a2 & 0xF80;
      if (v2 != 2048)
      {
        goto LABEL_9;
      }

      goto LABEL_11;
    }

LABEL_10:
    v3 = a2 & 0xF80;
    goto LABEL_11;
  }

  if ((a2 & 0xF80) == 0)
  {
    goto LABEL_11;
  }

  if (v2 == 128)
  {
    goto LABEL_10;
  }

  v3 = a2 & 0xF80;
  if (v2 != 256)
  {
LABEL_9:
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
    exception[2] = 0x500000065;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:101: MARISA_CODE_ERROR: undefined cache level";
  }

LABEL_11:
  *(this + 8) = v3;
  return this;
}

uint64_t *marisa::grimoire::trie::LoudsTrie::swap(marisa::grimoire::trie::LoudsTrie *this, marisa::grimoire::trie::LoudsTrie *a2)
{
  marisa::grimoire::vector::BitVector::swap(this, a2);
  marisa::grimoire::vector::BitVector::swap((this + 208), (a2 + 208));
  marisa::grimoire::vector::BitVector::swap((this + 416), (a2 + 416));
  marisa::grimoire::vector::Vector<unsigned char>::swap(this + 78, a2 + 78);
  marisa::grimoire::vector::Vector<unsigned char>::swap(this + 84, a2 + 84);
  v4 = *(this + 90);
  *(this + 90) = *(a2 + 90);
  *(a2 + 90) = v4;
  LODWORD(v4) = *(this + 182);
  *(this + 182) = *(a2 + 182);
  *(a2 + 182) = v4;
  v5 = *(this + 92);
  *(this + 92) = *(a2 + 92);
  *(a2 + 92) = v5;
  marisa::grimoire::trie::Tail::swap((this + 744), (a2 + 744));
  v6 = *(this + 125);
  *(this + 125) = *(a2 + 125);
  *(a2 + 125) = v6;
  marisa::grimoire::vector::Vector<unsigned char>::swap(this + 126, a2 + 126);
  v7 = *(this + 132);
  *(this + 132) = *(a2 + 132);
  *(a2 + 132) = v7;
  v8 = *(this + 133);
  *(this + 133) = *(a2 + 133);
  *(a2 + 133) = v8;
  v9 = *(this + 134);
  *(this + 134) = *(a2 + 134);
  *(a2 + 134) = v9;
  v10 = *(this + 135);
  *(this + 135) = *(a2 + 135);
  *(a2 + 135) = v10;
  LODWORD(v9) = *(this + 272);
  *(this + 272) = *(a2 + 272);
  *(a2 + 272) = v9;

  return marisa::grimoire::io::Mapper::swap(this + 137, (a2 + 1096));
}

uint64_t marisa::grimoire::trie::Config::parse_node_order(uint64_t this, int a2)
{
  v2 = 0x20000;
  v3 = a2 & 0xF0000;
  if ((a2 & 0xF0000) != 0 && v3 != 0x20000)
  {
    if (v3 != 0x10000)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *exception = &unk_1F2D43298;
      exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h";
      exception[2] = 0x50000008DLL;
      exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/grimoire/trie/config.h:141: MARISA_CODE_ERROR: undefined node order";
    }

    v2 = 0x10000;
  }

  *(this + 16) = v2;
  return this;
}

uint64_t *marisa::grimoire::io::Mapper::swap(uint64_t *this, marisa::grimoire::io::Mapper *a2)
{
  v2 = *this;
  *this = *a2;
  *a2 = v2;
  v4 = this[1];
  v3 = this[2];
  v5 = *(a2 + 2);
  this[1] = *(a2 + 1);
  this[2] = v5;
  *(a2 + 1) = v4;
  *(a2 + 2) = v3;
  v6 = this[3];
  this[3] = *(a2 + 3);
  *(a2 + 3) = v6;
  LODWORD(v6) = *(this + 8);
  *(this + 8) = *(a2 + 8);
  *(a2 + 8) = v6;
  return this;
}

uint64_t *marisa::grimoire::trie::Tail::swap(marisa::grimoire::trie::Tail *this, marisa::grimoire::trie::Tail *a2)
{
  marisa::grimoire::vector::Vector<unsigned char>::swap(this, a2);

  return marisa::grimoire::vector::BitVector::swap((this + 48), (a2 + 48));
}

void marisa::grimoire::trie::LoudsTrie::~LoudsTrie(marisa::grimoire::trie::LoudsTrie *this)
{
  marisa::grimoire::io::Mapper::~Mapper((this + 1096));
  v2 = *(this + 126);
  if (v2)
  {
    MEMORY[0x1B8C85310](v2, 0x1000C8077774924);
  }

  marisa::scoped_ptr<marisa::grimoire::trie::LoudsTrie>::~scoped_ptr(this + 1000);
  v3 = *(this + 119);
  if (v3)
  {
    MEMORY[0x1B8C85310](v3, 0x1000C8077774924);
  }

  v4 = *(this + 113);
  if (v4)
  {
    MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
  }

  v5 = *(this + 107);
  if (v5)
  {
    MEMORY[0x1B8C85310](v5, 0x1000C8077774924);
  }

  v6 = *(this + 99);
  if (v6)
  {
    MEMORY[0x1B8C85310](v6, 0x1000C8077774924);
  }

  v7 = *(this + 93);
  if (v7)
  {
    MEMORY[0x1B8C85310](v7, 0x1000C8077774924);
  }

  v8 = *(this + 84);
  if (v8)
  {
    MEMORY[0x1B8C85310](v8, 0x1000C8077774924);
  }

  v9 = *(this + 78);
  if (v9)
  {
    MEMORY[0x1B8C85310](v9, 0x1000C8077774924);
  }

  v10 = *(this + 72);
  if (v10)
  {
    MEMORY[0x1B8C85310](v10, 0x1000C8077774924);
  }

  v11 = *(this + 66);
  if (v11)
  {
    MEMORY[0x1B8C85310](v11, 0x1000C8077774924);
  }

  v12 = *(this + 60);
  if (v12)
  {
    MEMORY[0x1B8C85310](v12, 0x1000C8077774924);
  }

  v13 = *(this + 52);
  if (v13)
  {
    MEMORY[0x1B8C85310](v13, 0x1000C8077774924);
  }

  v14 = *(this + 46);
  if (v14)
  {
    MEMORY[0x1B8C85310](v14, 0x1000C8077774924);
  }

  v15 = *(this + 40);
  if (v15)
  {
    MEMORY[0x1B8C85310](v15, 0x1000C8077774924);
  }

  v16 = *(this + 34);
  if (v16)
  {
    MEMORY[0x1B8C85310](v16, 0x1000C8077774924);
  }

  v17 = *(this + 26);
  if (v17)
  {
    MEMORY[0x1B8C85310](v17, 0x1000C8077774924);
  }

  v18 = *(this + 20);
  if (v18)
  {
    MEMORY[0x1B8C85310](v18, 0x1000C8077774924);
  }

  v19 = *(this + 14);
  if (v19)
  {
    MEMORY[0x1B8C85310](v19, 0x1000C8077774924);
  }

  v20 = *(this + 8);
  if (v20)
  {
    MEMORY[0x1B8C85310](v20, 0x1000C8077774924);
  }

  if (*this)
  {
    MEMORY[0x1B8C85310](*this, 0x1000C8077774924);
  }
}

void kaldi::ReadIntegerVector<int>(void *a1, int a2, std::vector<int> *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v38 = *MEMORY[0x1E69E9840];
  if (a5)
  {
    *a5 = 0;
  }

  if (a2)
  {
    v13 = std::istream::peek();
    if (v13 != 4)
    {
      v21 = v13;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
      v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "ReadIntegerVector: expected to see type of size ", 48);
      v23 = MEMORY[0x1B8C84C30](v22, 4);
      v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", saw instead ", 14);
      v25 = MEMORY[0x1B8C84C00](v24, v21);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", at file position ", 19);
      std::istream::tellg();
      MEMORY[0x1B8C84C60](v26, v35);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
    }

    std::istream::get();
    LODWORD(__sz) = 0;
    std::istream::read();
    if ((*(a1 + *(*a1 - 24) + 32) & 5) == 0)
    {
      v14 = __sz;
      v15 = __sz;
      if (a7)
      {
        *a7 = __sz;
      }

      if (a4 && (a5 ? (v16 = v14 < 0) : (v16 = 0), !v16 ? (v17 = 0) : (v17 = 1), a6 || v17))
      {
        if (v17)
        {
          std::istream::tellg();
          *a5 = a4 + v37;
        }

        else if (a6)
        {
          std::istream::tellg();
          *a6 = a4 + v37;
        }

        std::istream::seekg();
        a3->__end_ = a3->__begin_;
        std::vector<int>::shrink_to_fit(a3);
      }

      else
      {
        std::vector<int>::resize(a3, v15);
        if (__sz >= 1)
        {
          std::istream::read();
        }
      }

      goto LABEL_37;
    }

LABEL_38:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "ReadIntegerVector: read failure at file position ", 49);
    std::istream::tellg();
    MEMORY[0x1B8C84C60](v20, v35);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
  }

  __p = 0;
  v32 = 0;
  v33 = 0;
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  if (std::istream::peek() != 91)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v36);
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "ReadIntegerVector: expected to see [, saw ", 42);
    v28 = std::istream::peek();
    v29 = MEMORY[0x1B8C84C00](v27, v28);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, ", at file position ", 19);
    std::istream::tellg();
    MEMORY[0x1B8C84C60](v30, v35);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v36);
  }

  std::istream::get();
  std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  while (1)
  {
    v18 = std::istream::peek();
    if (v18 == 93)
    {
      break;
    }

    LODWORD(v36[0]) = 0;
    v19 = MEMORY[0x1B8C84AE0](a1, v36);
    std::ws[abi:ne200100]<char,std::char_traits<char>>(v19);
    if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
    {
      goto LABEL_28;
    }

    std::vector<int>::push_back[abi:ne200100](&__p, v36);
  }

  std::istream::get();
  if (&__p != a3)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a3, __p, v32, (v32 - __p) >> 2);
  }

  if (a7)
  {
    *a7 = a3->__end_ - a3->__begin_;
  }

LABEL_28:
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  if (v18 != 93)
  {
    goto LABEL_38;
  }

LABEL_37:
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    goto LABEL_38;
  }
}

void sub_1B50A8CD0(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B50A8D04);
}

void sub_1B50A8CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t marisa::Trie::num_keys(marisa::Trie *this)
{
  if (*this)
  {
    return *(*this + 264);
  }

  else
  {
    return 0;
  }
}

void quasar::VocabId::initMarisaToken(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (v3)
  {
    *&v19[0] = 0;
    v20[0] = 0;
    kaldi::Input::OpenInternal(v19, a2, 1, v20);
    v4 = kaldi::Input::Stream(v19);
    kaldi::ExpectToken(v4, v20[0], "<UnknownWord>");
    v5 = kaldi::Input::Stream(v19);
    kaldi::ReadToken(v5, v20[0], a1 + 112);
    v6 = kaldi::Input::Stream(v19);
    kaldi::ExpectToken(v6, v20[0], "<BeginOfSentenceWord>");
    v7 = kaldi::Input::Stream(v19);
    kaldi::ReadToken(v7, v20[0], a1 + 136);
    v8 = kaldi::Input::Stream(v19);
    kaldi::ExpectToken(v8, v20[0], "<EndOfSentenceWord>");
    v9 = kaldi::Input::Stream(v19);
    kaldi::ReadToken(v9, v20[0], a1 + 160);
    v10 = kaldi::Input::Stream(v19);
    kaldi::ExpectToken(v10, v20[0], "<PaddingWord>");
    v11 = kaldi::Input::Stream(v19);
    kaldi::ReadToken(v11, v20[0], a1 + 88);
    kaldi::Input::~Input(v19);
  }

  if (*(a1 + 16))
  {
    marisa::Agent::Agent(v20);
    if (*(a1 + 135) < 0)
    {
      v13 = *(a1 + 112);
    }

    else
    {
      v13 = (a1 + 112);
    }

    marisa::Agent::set_query(v12, v13);
    if (!marisa::Trie::lookup(*(a1 + 16), v20))
    {
      memset(v19, 0, sizeof(v19));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Cannot find special token ", 27);
      v15 = *(a1 + 135);
      if (v15 >= 0)
      {
        v16 = a1 + 112;
      }

      else
      {
        v16 = *(a1 + 112);
      }

      if (v15 >= 0)
      {
        v17 = *(a1 + 135);
      }

      else
      {
        v17 = *(a1 + 120);
      }

      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " as OOV word. Need to specify special tokens in marisa-token-file", 66);
      quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v19);
    }

    *(a1 + 80) = v21;
    marisa::Agent::~Agent(v20);
  }
}

void kaldi::ExpectToken(uint64_t *a1, char a2, const char *a3)
{
  v24[34] = *MEMORY[0x1E69E9840];
  std::istream::tellg();
  v6 = v24[16];
  LOBYTE(v7) = *a3;
  v8 = 1;
  do
  {
    if ((v7 & 0x80) != 0)
    {
      __maskrune(v7, 0x4000uLL);
    }

    v7 = a3[v8++];
  }

  while (v7);
  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  __s1 = 0;
  v22 = 0;
  v23 = 0;
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, &__s1);
  std::istream::get();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v24);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Failed to read token [started at file position ", 47);
    v11 = MEMORY[0x1B8C84C30](v10, v6);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "], expected ", 12);
    v13 = strlen(a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, a3, v13);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
  }

  if (SHIBYTE(v23) < 0)
  {
    v9 = __s1;
    if (strcmp(__s1, a3))
    {
      goto LABEL_15;
    }

    operator delete(v9);
  }

  else if (strcmp(&__s1, a3))
  {
LABEL_15:
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v24);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Expected token ", 16);
    v15 = strlen(a3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, a3, v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", got instead ", 16);
    if (v23 >= 0)
    {
      p_s1 = &__s1;
    }

    else
    {
      p_s1 = __s1;
    }

    if (v23 >= 0)
    {
      v19 = HIBYTE(v23);
    }

    else
    {
      v19 = v22;
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, p_s1, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ".", 2);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
  }
}

void sub_1B50A9150(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

marisa::grimoire::trie::LoudsTrie *marisa::Trie::lookup(marisa::grimoire::trie::LoudsTrie **this, marisa::Agent *a2)
{
  result = *this;
  if (result)
  {
    if (!*(a2 + 5))
    {
      marisa::Agent::init_state(a2);
      result = *this;
    }

    return marisa::grimoire::trie::LoudsTrie::lookup(result, a2);
  }

  return result;
}

double marisa::Agent::Agent(marisa::Agent *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

void *marisa::Agent::init_state(marisa::Agent *this)
{
  v1 = (this + 40);
  if (*(this + 5))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x100000024;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:36: MARISA_STATE_ERROR: state_.get() != NULL";
    goto LABEL_8;
  }

  v2 = operator new(0x70uLL, MEMORY[0x1E69E5398]);
  if (v2)
  {
    *(v2 + 25) = 0u;
    *v2 = 0u;
    v2[1] = 0u;
    v2[3] = 0u;
    v2[4] = 0u;
    *(v2 + 73) = 0u;
    *(v2 + 12) = 0;
    *(v2 + 13) = 0;
  }

  result = marisa::scoped_ptr<marisa::grimoire::trie::State>::reset(v1, v2);
  if (!*v1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x800000026;
    v5 = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:38: MARISA_MEMORY_ERROR: state_.get() == NULL";
LABEL_8:
    exception[3] = v5;
  }

  return result;
}

void *marisa::Agent::set_query(void *this, const char *a2)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc";
    exception[2] = 0x20000000DLL;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/lib/marisa/agent.cc:13: MARISA_NULL_ERROR: str == NULL";
  }

  v2 = this[5];
  if (v2)
  {
    *(v2 + 108) = 0;
  }

  v3 = 0;
    ;
  }

  *this = a2;
  this[1] = v3 - 1;
  return this;
}

void *marisa::scoped_ptr<marisa::grimoire::trie::State>::reset(uint64_t *a1, uint64_t a2)
{
  if (a2 && *a1 == a2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *exception = &unk_1F2D43298;
    exception[1] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h";
    exception[2] = 0x600000013;
    exception[3] = "/Library/Caches/com.apple.xbs/Sources/Marisa/include/marisa/scoped-ptr.h:19: MARISA_RESET_ERROR: (ptr != NULL) && (ptr == ptr_)";
  }

  v4 = *a1;
  *a1 = a2;
  return marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(&v4);
}

void *marisa::scoped_ptr<marisa::grimoire::trie::State>::~scoped_ptr(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = v2[6];
    if (v3)
    {
      MEMORY[0x1B8C85310](v3, 0x1000C8077774924);
    }

    if (*v2)
    {
      MEMORY[0x1B8C85310](*v2, 0x1000C8077774924);
    }

    MEMORY[0x1B8C85350](v2, 0x1070C406A3FAA47);
  }

  return a1;
}

uint64_t marisa::grimoire::trie::LoudsTrie::find_child(marisa::grimoire::trie::LoudsTrie *this, marisa::Agent *a2)
{
  v4 = *(a2 + 5);
  v5 = *(v4 + 96);
  v6 = *(v4 + 100);
  v7 = (*(*a2 + v6) ^ (32 * v5) ^ v5) & *(this + 132);
  v8 = (*(this + 128) + 12 * v7);
  if (v5 != *v8)
  {
    v10 = marisa::grimoire::vector::BitVector::select0(this, v5);
    v11 = *(this + 2);
    if ((*(v11 + (((v10 + 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v10 + 1)))
    {
      v12 = v10 - *(v4 + 96);
      *(v4 + 96) = v12;
      v13 = v10 + 2;
      v14 = 0xFFFFFFFFLL;
      while (1)
      {
        v15 = v12;
        if ((*(*(this + 54) + ((v12 >> 3) & 0x1FFFFFF8)) >> v12))
        {
          if (v14 == 0xFFFFFFFFLL)
          {
            v14 = marisa::grimoire::vector::BitVector::rank1((this + 416), v12);
            v15 = *(v4 + 96);
          }

          else
          {
            ++v14;
          }

          v17 = *(v4 + 100);
          v18 = *(this + 90);
          v19 = v18 * v14;
          v20 = (v18 * v14) & 0x3F;
          v21 = v20 + v18;
          v22 = (*(this + 86) + 8 * ((v18 * v14) >> 6));
          v23 = *v22;
          if (v21 > 0x40)
          {
            v24 = ((2 * v22[1]) << ~v19) | (v23 >> v19);
          }

          else
          {
            v24 = v23 >> v20;
          }

          v25 = *(*(this + 80) + v15) | ((*(this + 182) & v24) << 8);
          v26 = *(this + 125);
          if (v26)
          {
            if (marisa::grimoire::trie::LoudsTrie::match_(v26, a2, v25))
            {
              return 1;
            }
          }

          else if (marisa::grimoire::trie::Tail::match((this + 744), a2, v25))
          {
            return 1;
          }

          if (*(v4 + 100) != v17)
          {
            return 0;
          }

          v12 = *(v4 + 96);
          v11 = *(this + 2);
        }

        else
        {
          v16 = *(v4 + 100);
          if (*(*(this + 80) + v12) == *(*a2 + v16))
          {
            *(v4 + 100) = v16 + 1;
            return 1;
          }
        }

        *(v4 + 96) = ++v12;
        v27 = *(v11 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v13;
        ++v13;
        if ((v27 & 1) == 0)
        {
          return 0;
        }
      }
    }

    return 0;
  }

  v9 = v8[2];
  if (v9 > 0xFFFFFEFF)
  {
    *(v4 + 100) = v6 + 1;
    goto LABEL_25;
  }

  v28 = *(this + 125);
  if (v28)
  {
    if (marisa::grimoire::trie::LoudsTrie::match_(v28, a2, v9))
    {
      goto LABEL_25;
    }

    return 0;
  }

  if ((marisa::grimoire::trie::Tail::match((this + 744), a2, v9) & 1) == 0)
  {
    return 0;
  }

LABEL_25:
  *(v4 + 96) = *(*(this + 128) + 12 * v7 + 4);
  return 1;
}

uint64_t marisa::grimoire::trie::LoudsTrie::lookup(marisa::grimoire::trie::LoudsTrie *this, marisa::Agent *a2)
{
  v4 = *(a2 + 5);
  *(v4 + 96) = 0;
  *(v4 + 108) = 0;
  while (1)
  {
    v5 = *(a2 + 1);
    if (v5 <= *(v4 + 100))
    {
      break;
    }

    if ((marisa::grimoire::trie::LoudsTrie::find_child(this, a2) & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(v4 + 96);
  if ((*(*(this + 28) + ((v6 >> 3) & 0x1FFFFFF8)) >> v6))
  {
    *(a2 + 3) = *a2;
    *(a2 + 8) = v5;
    *(a2 + 9) = marisa::grimoire::vector::BitVector::rank1((this + 208), v6);
    return 1;
  }

  return 0;
}

unint64_t marisa::grimoire::vector::BitVector::select0(marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 16) + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = *(this + 10);
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3;
    v8 = v3-- << 9;
    v9 = (v7 + 12);
    do
    {
      v10 = *v9;
      v9 += 3;
      ++v3;
      v8 += 512;
    }

    while (v8 - v10 <= a2);
  }

  else
  {
    do
    {
      if (((v4 + v3) >> 1 << 9) - *(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v11 = (v5 + 12 * v3);
  v12 = v11[1];
  v13 = (a2 - (v3 << 9) + *v11);
  v14 = 8 * v3;
  if (v13 >= 256 - (v12 >> 23))
  {
    v16 = v11[2];
    v17 = (v16 >> 9) & 0x1FF;
    if (v13 >= 384 - v17)
    {
      v19 = (v16 >> 18) & 0x1FF;
      if (v13 >= 448 - v19)
      {
        v14 |= 7uLL;
        v13 = (v13 + v19 - 448);
      }

      else
      {
        v14 |= 6uLL;
        v13 = (v13 + v17 - 384);
      }
    }

    else if (v13 >= 320 - (v16 & 0x1FF))
    {
      v14 |= 5uLL;
      v13 = (v13 + (v16 & 0x1FF) - 320);
    }

    else
    {
      v14 |= 4uLL;
      v13 = (v13 + (v12 >> 23) - 256);
    }
  }

  else if (v13 >= 128 - (v12 >> 7))
  {
    v18 = (v12 >> 15);
    if (v13 >= 192 - v18)
    {
      v14 |= 3uLL;
      v13 = (v13 + v18 - 192);
    }

    else
    {
      v14 |= 2uLL;
      v13 = (v13 + (v12 >> 7) - 128);
    }
  }

  else
  {
    v15 = v12 & 0x7F;
    if (v13 >= 64 - v15)
    {
      v14 |= 1uLL;
      v13 = (v13 + v15 - 64);
    }
  }
}

unint64_t marisa::grimoire::vector::anonymous namespace::select_bit(marisa::grimoire::vector::_anonymous_namespace_ *this, uint64_t a2, unint64_t a3)
{
  v3 = (((a3 - ((a3 >> 1) & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((a3 - ((a3 >> 1) & 0x5555555555555555)) & 0x3333333333333333);
  v4 = (v3 + (v3 >> 4)) & 0xF0F0F0F0F0F0F0FLL;
  v5 = __clz(__rbit64(((((0x101010101010101 * v4) | 0x8080808080808080) - 0x101010101010101 * this - 0x101010101010101) >> 7) & 0x101010101010101));
}

uint64_t marisa::grimoire::vector::BitVector::rank1(marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 10) + 12 * (a2 >> 9));
  v3 = *v2;
  v4 = (a2 >> 6) & 7;
  if (v4 > 3)
  {
    if (((a2 >> 6) & 7) > 5)
    {
      if (v4 == 6)
      {
        v5 = (v2[2] >> 9) & 0x1FF;
      }

      else
      {
        v5 = (v2[2] >> 18) & 0x1FF;
      }

      goto LABEL_16;
    }

    if (v4 != 4)
    {
      v5 = v2[2] & 0x1FF;
      goto LABEL_16;
    }

    v3 += v2[1] >> 23;
  }

  else if (((a2 >> 6) & 7) > 1)
  {
    if (v4 == 2)
    {
      v6 = v2[1] >> 7;
    }

    else
    {
      v6 = v2[1] >> 15;
    }

    v3 += v6;
  }

  else if (v4)
  {
    v5 = v2[1] & 0x7F;
LABEL_16:
    v3 += v5;
  }

  v7 = *(*(this + 2) + 8 * (a2 >> 6)) & ~(-1 << a2);
  v8 = (((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) >> 2) & 0x3333333333333333) + ((((v7 >> 1) & 0x5555555555555555) + (v7 & 0x5555555555555555)) & 0x3333333333333333);
  return v3 + ((0x101010101010101 * (((v8 >> 4) & 0x707070707070707) + (v8 & 0x707070707070707))) >> 56);
}

uint64_t marisa::grimoire::trie::LoudsTrie::match_(marisa::grimoire::trie::LoudsTrie *this, marisa::Agent *a2, unint64_t a3)
{
  v6 = *(a2 + 5);
  while (1)
  {
    while (1)
    {
      v7 = *(this + 132) & a3;
      v8 = *(this + 128) + 12 * v7;
      if (a3 == *(v8 + 4))
      {
        break;
      }

      if (((*(*(this + 54) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
      {
        v22 = *(v6 + 100);
        if (*(*(this + 80) + a3) != *(*a2 + v22))
        {
          return 0;
        }

        *(v6 + 100) = v22 + 1;
        goto LABEL_28;
      }

      v11 = *(this + 125);
      v12 = *(*(this + 80) + a3);
      v13 = marisa::grimoire::vector::BitVector::rank1((this + 416), a3);
      v14 = *(this + 90);
      v15 = v14 * v13;
      v16 = (v14 * v13) & 0x3F;
      v17 = v16 + v14;
      v18 = (*(this + 86) + 8 * ((v14 * v13) >> 6));
      v19 = *v18;
      if (v11)
      {
        if (v17 > 0x40)
        {
          v20 = ((2 * v18[1]) << ~v15) | (v19 >> v15);
        }

        else
        {
          v20 = v19 >> v16;
        }

        v24 = v12 | ((*(this + 182) & v20) << 8);
        v25 = *(this + 125);
        if (v25)
        {
          if ((marisa::grimoire::trie::LoudsTrie::match_(v25, a2, v24) & 1) == 0)
          {
            return 0;
          }

          goto LABEL_28;
        }
      }

      else
      {
        if (v17 > 0x40)
        {
          v23 = ((2 * v18[1]) << ~v15) | (v19 >> v15);
        }

        else
        {
          v23 = v19 >> v16;
        }

        v24 = v12 | ((*(this + 182) & v23) << 8);
      }

      if ((marisa::grimoire::trie::Tail::match((this + 744), a2, v24) & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      if (a3 <= *(this + 133))
      {
        return 1;
      }

      if (*(a2 + 1) <= *(v6 + 100))
      {
        return 0;
      }

      a3 = marisa::grimoire::vector::BitVector::select1(this, a3) + ~a3;
    }

    v9 = *(v8 + 8);
    if (v9 <= 0xFFFFFEFF)
    {
      v21 = *(this + 125);
      if (v21)
      {
        if ((marisa::grimoire::trie::LoudsTrie::match_(v21, a2, v9) & 1) == 0)
        {
          return 0;
        }
      }

      else if ((marisa::grimoire::trie::Tail::match((this + 744), a2, v9) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v10 = *(v6 + 100);
      if (*(*a2 + v10) != v9)
      {
        return 0;
      }

      *(v6 + 100) = v10 + 1;
    }

    a3 = *(*(this + 128) + 12 * v7);
    if (!a3)
    {
      return 1;
    }

    if (*(a2 + 1) <= *(v6 + 100))
    {
      return 0;
    }
  }
}

uint64_t marisa::grimoire::trie::Tail::match(marisa::grimoire::trie::Tail *this, marisa::Agent *a2, unint64_t a3)
{
  v3 = *(a2 + 5);
  v4 = *(this + 2);
  if (*(this + 12))
  {
    v5 = *(v3 + 100);
    v6 = *a2;
    v7 = *(a2 + 1);
    do
    {
      if (*(v4 + a3) != *(v6 + v5))
      {
        break;
      }

      *(v3 + 100) = ++v5;
      if ((*(*(this + 8) + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a3))
      {
        return 1;
      }

      ++a3;
    }

    while (v7 > v5);
  }

  else
  {
    v12 = v4 + a3;
    v8 = v4 + a3 - *(v3 + 100);
    v9 = *a2;
    v10 = *(a2 + 1);
    v11 = *v12;
    LODWORD(v12) = *(v3 + 100);
    while (v11 == *(v9 + v12))
    {
      v12 = (v12 + 1);
      *(v3 + 100) = v12;
      v11 = *(v8 + v12);
      if (!*(v8 + v12))
      {
        return 1;
      }

      if (v10 <= v12)
      {
        return 0;
      }
    }
  }

  return 0;
}

unint64_t marisa::grimoire::vector::BitVector::select1(marisa::grimoire::vector::BitVector *this, unint64_t a2)
{
  v2 = (*(this + 22) + 4 * (a2 >> 9));
  if ((a2 & 0x1FF) == 0)
  {
    return *v2;
  }

  v3 = *v2 >> 9;
  v4 = (v2[1] + 511) >> 9;
  v5 = *(this + 10);
  if (v3 + 10 >= v4)
  {
    v7 = v5 + 12 * v3--;
    v8 = (v7 + 12);
    do
    {
      v9 = *v8;
      v8 += 3;
      ++v3;
    }

    while (v9 <= a2);
  }

  else
  {
    do
    {
      if (*(v5 + 12 * ((v4 + v3) >> 1)) > a2)
      {
        v4 = (v4 + v3) >> 1;
      }

      else
      {
        v3 = (v4 + v3) >> 1;
      }
    }

    while (v3 + 1 < v4);
  }

  v10 = (v5 + 12 * v3);
  v11 = v10[1];
  v12 = a2 - *v10;
  v13 = 8 * v3;
  if (v12 >= v11 >> 23)
  {
    v23 = v11 >> 23;
    v24 = v10[2];
    v25 = (v24 >> 9) & 0x1FF;
    v26 = (v24 >> 18) & 0x1FF;
    v27 = v13 | 7;
    v28 = v12 >= v26;
    if (v12 < v26)
    {
      v29 = (v12 - v25);
    }

    else
    {
      v29 = (v12 - v26);
    }

    if (!v28)
    {
      v27 = v13 | 6;
    }

    v30 = v24 & 0x1FF;
    v31 = v13 | 5;
    v32 = v13 | 4;
    v33 = (v12 - v23);
    if (v12 < v30)
    {
      v34 = v32;
    }

    else
    {
      v33 = (v12 - v30);
      v34 = v31;
    }

    if (v12 < v25)
    {
      v21 = v33;
    }

    else
    {
      v21 = v29;
    }

    if (v12 < v25)
    {
      v22 = v34;
    }

    else
    {
      v22 = v27;
    }
  }

  else
  {
    v14 = v11 >> 7;
    v15 = (v11 >> 15);
    v16 = (v12 - (v11 >> 7));
    if (v12 < v15)
    {
      v17 = v13 | 2;
    }

    else
    {
      v16 = (v12 - v15);
      v17 = v13 | 3;
    }

    v18 = v11 & 0x7F;
    v19 = v13 | 1;
    v28 = v12 >= v18;
    v20 = (v12 - v18);
    if (!v28)
    {
      v20 = v12;
      v19 = v13;
    }

    if (v12 < v14)
    {
      v21 = v20;
    }

    else
    {
      v21 = v16;
    }

    if (v12 < v14)
    {
      v22 = v19;
    }

    else
    {
      v22 = v17;
    }
  }
}

uint64_t quasar::loadClusterIdFile(uint64_t a1, uint64_t a2)
{
  v19[19] = *MEMORY[0x1E69E9840];
  std::ifstream::basic_ifstream(v17);
  memset(&__str, 0, sizeof(__str));
  memset(v14, 0, sizeof(v14));
  memset(&__p, 0, sizeof(__p));
  v3 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((v17 + *(v17[0] - 24)));
    v4 = std::locale::use_facet(&v12, v3);
    v5 = (v4->__vftable[2].~facet_0)(v4, 10);
    std::locale::~locale(&v12);
    v6 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v17, &__str, v5);
    if ((*(v6 + *(*v6 - 24) + 32) & 5) != 0)
    {
      break;
    }

    kaldi::SplitStringToVector(&__str, " ", 1, v14);
    if (*(v14[0] + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v12, *v14[0], *(v14[0] + 8));
    }

    else
    {
      v7 = *v14[0];
      v12.__r_.__value_.__r.__words[2] = *(v14[0] + 16);
      *&v12.__r_.__value_.__l.__data_ = v7;
    }

    size = HIBYTE(v12.__r_.__value_.__r.__words[2]);
    if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v12.__r_.__value_.__l.__size_;
    }

    std::string::basic_string(&v11, &__str, size + 1, 0xFFFFFFFFFFFFFFFFLL, &v16);
    kaldi::SplitStringToIntegers<int>(&v11, "^", 1, &__p);
    if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v11.__r_.__value_.__l.__data_);
    }

    v11.__r_.__value_.__r.__words[0] = &v12;
    v9 = (std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a2, &v12.__r_.__value_.__l.__data_) + 56);
    if (v9 != &__p)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v9, __p.__begin_, __p.__end_, __p.__end_ - __p.__begin_);
    }

    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
    }
  }

  if (__p.__begin_)
  {
    __p.__end_ = __p.__begin_;
    operator delete(__p.__begin_);
  }

  __p.__begin_ = v14;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v17[0] = *MEMORY[0x1E69E54C8];
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54C8] + 24);
  MEMORY[0x1B8C84A00](&v18);
  std::istream::~istream();
  return MEMORY[0x1B8C85200](v19);
}

uint64_t kaldi::SplitStringToIntegers<int>(uint64_t a1, const char *a2, int a3, std::vector<unsigned int> *a4)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (*v5)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    kaldi::SplitStringToVector(a1, a2, a3, &v14);
    std::vector<int>::resize(a4, 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3));
    v6 = v14;
    if (v15 == v14)
    {
LABEL_13:
      v12 = 1;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = (v6 + v7);
        if (*(v6 + v7 + 23) < 0)
        {
          v9 = *v9;
        }

        __endptr = 0;
        v10 = strtoll(v9, &__endptr, 10);
        if (__endptr == v9 || *__endptr)
        {
          v12 = 0;
          begin = a4->__begin_;
          goto LABEL_17;
        }

        begin = a4->__begin_;
        if (v10 != v10)
        {
          break;
        }

        begin[v8++] = v10;
        v6 = v14;
        v7 += 24;
        if (v8 >= 0xAAAAAAAAAAAAAAABLL * ((v15 - v14) >> 3))
        {
          goto LABEL_13;
        }
      }

      v12 = 0;
LABEL_17:
      a4->__end_ = begin;
    }

    __endptr = &v14;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__endptr);
  }

  else
  {
    a4->__end_ = a4->__begin_;
    return 1;
  }

  return v12;
}

void sub_1B50AA43C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::vector<int>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::vector<int>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<float>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void sub_1B50AA9A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a23);
  _Unwind_Resume(a1);
}

void fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::AddArc(void *a1, _DWORD *a2)
{
  if (!*a2)
  {
    ++a1[1];
  }

  if (!a2[1])
  {
    ++a1[2];
  }

  v5 = a1[4];
  v4 = a1[5];
  if (v5 >= v4)
  {
    v7 = a1[3];
    v8 = (v5 - v7) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>((a1 + 3), v11);
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v6 = 16 * v8 + 16;
    v13 = a1[3];
    v14 = a1[4] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = a1[3];
    a1[3] = v15;
    a1[4] = v6;
    a1[5] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  a1[4] = v6;
}

void quasar::LabelTransformer::init(quasar::LabelTransformer *this, const quasar::PTree *a2, const quasar::SystemConfig *a3)
{
  *(this + 6) = quasar::SystemConfig::getConfigFileVersion(a3);
  std::string::basic_string[abi:ne200100]<0>(__p, "nnet-file");
  quasar::PTree::getString(a2, __p);
}

void sub_1B50AB904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<quasar::PMRegexEnumerator>>>>::~__hash_table(&STACK[0x220]);
  if (*(v20 - 201) < 0)
  {
    operator delete(*(v20 - 224));
  }

  if (*(v20 - 169) < 0)
  {
    operator delete(*(v20 - 192));
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (*(v20 - 121) < 0)
  {
    operator delete(*(v20 - 144));
  }

  _Unwind_Resume(a1);
}

uint64_t *std::__hash_table<std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>,std::__unordered_map_hasher<int,std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,std::vector<std::shared_ptr<quasar::FstTokenTransform>>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(void *a1, int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t quasar::TokenTransform<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::TokenTransform(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_1F2D3D1A0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v3;
  }

  quasar::StopWatch::StopWatch((a1 + 32), a2);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  quasar::StopWatch::reset(a1 + 32);
  return a1;
}

void sub_1B50ABF34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = v4;
  v7 = *v5;
  if (*v5)
  {
    *(v2 + 128) = v7;
    operator delete(v7);
  }

  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v2 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void quasar::ComposeFstTokenTransform::initImpl(quasar::ComposeFstTokenTransform *this)
{
  (*(**(this + 23) + 16))(&v4);
  v2 = v4;
  v4 = 0uLL;
  v3 = *(this + 22);
  *(this + 168) = v2;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    if (*(&v4 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v4 + 1));
    }
  }
}

void *quasar::ComposeFstTokenTransform::ComposeFstTokenTransform(void *a1, __int128 *a2, __int128 *a3, void *a4)
{
  v7 = quasar::TokenTransform<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>>::TokenTransform(a1, a2);
  v7->__r_.__value_.__r.__words[0] = &unk_1F2D3D038;
  v8 = v7 + 6;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    v8->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&v8->__r_.__value_.__l.__data_ = v9;
  }

  a1[21] = 0;
  a1[22] = 0;
  v10 = a4[1];
  a1[23] = *a4;
  a1[24] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

quasar::StopWatch *quasar::StopWatch::StopWatch(quasar::StopWatch *this, clockid_t a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 56) = 1;
  kaldi::Timer::Reset((this + 32), a2);
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  quasar::StopWatch::reset(this);
  return this;
}

void sub_1B50AC118(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1B50AC348(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<quasar::FstTokenTransform>::shared_ptr[abi:ne200100]<quasar::SpaceApplyDefaultFstTokenTransform,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1, const std::string *a2, int a3)
{
  a1[22] = 0;
  v6 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v9 = MEMORY[0x1E69E54D8];
  v10 = *(MEMORY[0x1E69E54D8] + 24);
  v11 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x1E69E5560] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), a2, a3);
  return a1;
}

void sub_1B50AC638(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](v1);
  _Unwind_Resume(a1);
}

uint64_t quasar::StopWatch::reset(uint64_t this)
{
  if (*(this + 24))
  {
    memset(v1, 0, sizeof(v1));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v1, "StopWatch is still running.");
    quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v1);
  }

  *(this + 72) = 0;
  *(this + 80) = 0;
  return this;
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = &unk_1F2CFDB68;
  *(a1 + 8) = 0;
  std::string::basic_string[abi:ne200100]<0>((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = &unk_1F2CFDAB8;
  std::string::basic_string[abi:ne200100]<0>(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_1B50AC7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

void *std::vector<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *,std::allocator<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::CompactLatticeWeightTpl<fst::LatticeWeightTpl<float>,int>,int>>>> *>>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>(result, a2);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<fst::FstWithLabel<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<quasar::LmeInfo>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::LmeInfo>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::vector<quasar::LmeInfo>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<quasar::LmeInfo>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(this, __n);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 24);
  v4 = *v5;
  v6 = (v5[1] - *v5) >> 4;
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

uint64_t sub_1B50ACC70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B5AD6664();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t kaldi::quasar::ShortlistDataInManyFiles::ShortlistDataInManyFiles(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t *a4)
{
  *a1 = &unk_1F2CFA720;
  v5 = *a2;
  *(a1 + 24) = *(a2 + 2);
  *(a1 + 8) = v5;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v6 = *a3;
  *(a1 + 48) = *(a3 + 2);
  *(a1 + 32) = v6;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__hash_table(a1 + 56, a4);
  return a1;
}

double kaldi::quasar::ShortlistDataInManyFiles::GetConstrainedWordIds@<D0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v13 = a4;
  v12 = a5;
  v8 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 56), a2);
  if (v8)
  {
    v11[0] = a3;
    v11[1] = &v13;
    v11[2] = &v12;
    v9 = *(v8 + 14);
    if (v9 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    v14 = v11;
    (off_1F2CFA790[v9])(&v14, v8 + 5);
  }

  else
  {
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 1065353216;
  }

  return result;
}

void kaldi::quasar::ShortlistDataInManyFiles::Write(std::string::size_type a1, void *a2, uint64_t a3)
{
  v10 = a3;
  kaldi::WriteToken(a2, a3, "<ShortlistTableInManyFiles>");
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 32), *(a1 + 40));
  }

  else
  {
    __p = *(a1 + 32);
  }

  kaldi::WriteToken(a2, a3, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  for (i = *(a1 + 72); i; i = *i)
  {
    __p.__r_.__value_.__r.__words[0] = (i + 2);
    __p.__r_.__value_.__l.__size_ = a1;
    __p.__r_.__value_.__r.__words[2] = (i + 2);
    v9 = &v10;
    v7 = *(i + 14);
    if (v7 == -1)
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }

    p_p = &__p;
    (off_1F2CFA7A0[v7])(&p_p, i + 5);
  }
}

void sub_1B50AD1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::quasar::ShortlistDataInManyFiles::Combine(uint64_t a1, void *lpsrc)
{
  if (!result)
  {
    __cxa_bad_cast();
  }

  v4 = result[9];
  if (v4)
  {
    v5 = *(v4 + 56);
    if (v5 == 1)
    {
      v6 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 56), (v4 + 16));
      if (!v6)
      {
        for (i = 0; i != 9; i += 3)
        {
          v9 = &v10[i];
          v9[1] = 0;
          *(v9 + 16) = 0;
        }

        std::allocate_shared[abi:ne200100]<kaldi::quasar::ShortlistDataOnDisk,std::allocator<kaldi::quasar::ShortlistDataOnDisk>,std::array<kaldi::MappableVector<int>,3ul>,std::array<kaldi::MappableVector<int>,2ul>,0>();
      }

      v7 = *(v6 + 14);
      if (v7 == 1)
      {
        kaldi::MappableVector<int>::append();
      }

      if (!v7)
      {
LABEL_14:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v10);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, "Combine of not loaded shortlist data objects is not supported.");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v10);
      }
    }

    else if (!v5)
    {
      goto LABEL_14;
    }

    std::__throw_bad_variant_access[abi:ne200100]();
  }

  return result;
}

void sub_1B50AD51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, __s, v4);
}

uint64_t kaldi::quasar::ShortlistDataInManyFiles::operator==(uint64_t a1, void *lpsrc)
{
  if (!v3)
  {
    __cxa_bad_cast();
  }

  if (*(a1 + 80) != v3[10])
  {
    return 0;
  }

  v4 = v3[9];
  if (!v4)
  {
    return 1;
  }

  while (1)
  {
    result = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 56), v4 + 2);
    if (!result)
    {
      break;
    }

    if (*(result + 56) != 1 || *(v4 + 14) != 1)
    {
      return 0;
    }

    result = kaldi::quasar::operator==(*(result + 40), v4[5]);
    if (!result)
    {
      return result;
    }

    v4 = *v4;
    if (!v4)
    {
      return 1;
    }
  }

  return result;
}

uint64_t kaldi::quasar::ShortlistDataInManyFiles::GetVocabSize(kaldi::quasar::ShortlistDataInManyFiles *this)
{
  if (!*(this + 10))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "Vocab size requested on emtpy shortlist data");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
  }

  v1 = *(this + 9);
  v2 = *(v1 + 56);
  if (v2 == -1)
  {
    std::__throw_bad_variant_access[abi:ne200100]();
  }

  v5[0] = &v4;
  return (off_1F2CFA7B0[v2])(v5, v1 + 40);
}

void kaldi::quasar::ShortlistDataInManyFiles::LoadLanguagePair(uint64_t a1, uint64_t a2)
{
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((a1 + 56), a2);
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 14) != 1)
    {
      kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataOnDisk(a1 + 8, a2, &v20);
      if (v20)
      {
        std::__variant_detail::__assignment<std::__variant_detail::__traits<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>::__assign_alt[abi:ne200100]<1ul,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>&>((v5 + 5), v5 + 5, &v20);
        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
          v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Shortlist data for language pair: ", 34);
          v7 = *(a2 + 23);
          if (v7 >= 0)
          {
            v8 = a2;
          }

          else
          {
            v8 = *a2;
          }

          if (v7 >= 0)
          {
            v9 = *(a2 + 23);
          }

          else
          {
            v9 = *(a2 + 8);
          }

          v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " is successfully loaded", 23);
          kaldi::KaldiLogMessage::~KaldiLogMessage(v22);
        }
      }

      else if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Unable to read shortlist data for language pair: ", 49);
        v17 = *(a2 + 23);
        if (v17 >= 0)
        {
          v18 = a2;
        }

        else
        {
          v18 = *a2;
        }

        if (v17 >= 0)
        {
          v19 = *(a2 + 23);
        }

        else
        {
          v19 = *(a2 + 8);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v22);
      }

      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
      }
    }
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v22);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Language pair: ", 15);
    v12 = *(a2 + 23);
    if (v12 >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    if (v12 >= 0)
    {
      v14 = *(a2 + 23);
    }

    else
    {
      v14 = *(a2 + 8);
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " is not supported. Skip loading.", 32);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v22);
  }
}

void sub_1B50AD894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, char a11)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::quasar::ShortlistDataInManyFiles::~ShortlistDataInManyFiles(void **this)
{
  *this = &unk_1F2CFA720;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::~__hash_table((this + 7));
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F2CFA720;
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::~__hash_table((this + 7));
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C85350);
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D0] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E5410], std::bad_variant_access::~bad_variant_access);
}

double std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<kaldi::quasar::ShortlistDataInManyFiles::GetConstrainedWordIds(std::string const&,std::vector<int> const&,int,int)::$_0,kaldi::quasar::ShortlistDataInManyFiles::GetConstrainedWordIds(std::string const&,std::vector<int> const&,int,int)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>> const&>@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  return result;
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

void std::__variant_detail::__visitation::__base::__dispatcher<0ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<kaldi::quasar::ShortlistDataInManyFiles::Write(std::ostream &,BOOL)::$_0,kaldi::quasar::ShortlistDataInManyFiles::Write(std::ostream &,BOOL)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>> const&>(uint64_t ***a1)
{
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    v1 = *a1;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "Language: ", 10);
    v3 = *(*v1 + 23);
    if (v3 >= 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = **v1;
    }

    if (v3 >= 0)
    {
      v5 = *(*v1 + 23);
    }

    else
    {
      v5 = (*v1)[1];
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " is not loaded. Nothing to write on disk.", 41);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v7);
  }
}

void std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<kaldi::quasar::ShortlistDataInManyFiles::Write(std::ostream &,BOOL)::$_0,kaldi::quasar::ShortlistDataInManyFiles::Write(std::ostream &,BOOL)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>> const&>(uint64_t *a1, uint64_t *a2)
{
  v27[2] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  std::__fs::filesystem::operator/[abi:ne200100]((*(*a1 + 8) + 32), *(*a1 + 8) + 8, &v26);
  std::__fs::filesystem::__create_directories(&v26, 0);
  v4 = *(v3 + 16);
  *(&v24.__r_.__value_.__s + 23) = 10;
  strcpy(&v24, ".shortlist");
  v5 = *(v4 + 23);
  if (v5 >= 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *v4;
  }

  if (v5 >= 0)
  {
    v7 = *(v4 + 23);
  }

  else
  {
    v7 = *(v4 + 8);
  }

  v8 = std::string::insert(&v24, 0, v6, v7);
  v9 = v8->__r_.__value_.__r.__words[0];
  v27[0] = v8->__r_.__value_.__l.__size_;
  *(v27 + 7) = *(&v8->__r_.__value_.__r.__words[1] + 7);
  v10 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  *(&__p[0].__r_.__value_.__r.__words[1] + 7) = *(v27 + 7);
  __p[0].__r_.__value_.__r.__words[0] = v9;
  __p[0].__r_.__value_.__l.__size_ = v27[0];
  *(&__p[0].__r_.__value_.__s + 23) = v10;
  std::__fs::filesystem::operator/[abi:ne200100](__p, &v26, &v25);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(__p, v25.__pn_.__r_.__value_.__l.__data_, v25.__pn_.__r_.__value_.__l.__size_);
  }

  else
  {
    __p[0] = v25.__pn_;
  }

  kaldi::Output::Output(&v24, __p, **(v3 + 24), 1);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (!v24.__r_.__value_.__r.__words[0])
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Unable to create shortlist file: ", 33);
    std::__fs::filesystem::operator<<[abi:ne200100]<char,std::char_traits<char>,0>(v22, &v25);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  v11 = *a2;
  v12 = kaldi::Output::Stream(&v24);
  kaldi::quasar::ShortlistDataOnDisk::Write(v11, v12, **(v3 + 24));
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Shortlist file for language pair ", 34);
    v14 = *(v3 + 16);
    v15 = *(v14 + 23);
    if (v15 >= 0)
    {
      v16 = *(v3 + 16);
    }

    else
    {
      v16 = *v14;
    }

    if (v15 >= 0)
    {
      v17 = *(v14 + 23);
    }

    else
    {
      v17 = *(v14 + 8);
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " is created: ", 14);
    size = HIBYTE(v25.__pn_.__r_.__value_.__r.__words[2]);
    if ((v25.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v25;
    }

    else
    {
      v21 = v25.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v25.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v25.__pn_.__r_.__value_.__l.__size_;
    }

    std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(v19, v21, v21 + size, 0x22u, 0x5Cu);
    kaldi::KaldiLogMessage::~KaldiLogMessage(__p);
  }

  kaldi::Output::~Output(&v24);
  if (SHIBYTE(v25.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_1B50ADDF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::__fs::filesystem::operator<<[abi:ne200100]<char,std::char_traits<char>,0>(void *a1, uint64_t *a2)
{
  v3 = *(a2 + 23);
  v4 = a2[1];
  if ((v3 & 0x80u) != 0)
  {
    a2 = *a2;
    v3 = v4;
  }

  std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(a1, a2, a2 + v3, 0x22u, 0x5Cu);
  return a1;
}

void *std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(void *a1, _BYTE *a2, _BYTE *a3, unsigned __int8 __c, unsigned __int8 a5)
{
  memset(&v15, 0, sizeof(v15));
  std::string::push_back(&v15, __c);
  while (a2 != a3)
  {
    v10 = *a2;
    if (v10 == a5 || v10 == __c)
    {
      std::string::push_back(&v15, a5);
      LOBYTE(v10) = *a2;
    }

    std::string::push_back(&v15, v10);
    ++a2;
  }

  std::string::push_back(&v15, __c);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v15;
  }

  else
  {
    v11 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v11, size);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v13;
}

void sub_1B50ADFE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__visitation::__base::__dispatcher<1ul>::__dispatch[abi:ne200100]<std::__variant_detail::__visitation::__variant::__value_visitor<overloaded<kaldi::quasar::ShortlistDataInManyFiles::GetVocabSize(void)::$_0,kaldi::quasar::ShortlistDataInManyFiles::GetVocabSize(void)::$_1>> &&,std::__variant_detail::__base<(std::__variant_detail::_Trait)1,kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>> const&>(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*(*a2 + 16) < 2uLL)
  {
    v4 = *(v2 + 40);
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = *(v2 + 8);
    v4 = v3[1];
  }

  return (v4 - *v3);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,0>(uint64_t a1)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::__variant_detail::__dtor<std::__variant_detail::__traits<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 != -1)
  {
    result = (off_1F2CFA7C0[v2])(&v3, result);
  }

  *(v1 + 16) = -1;
  return result;
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN5kaldi6quasar24ShortlistDataInManyFiles28NotLoadedShortListDataOnDiskENS_10shared_ptrINS9_19ShortlistDataOnDiskEEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSG_1EJSB_SE_EEEEEEDcSI_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void *std::__shared_ptr_emplace<kaldi::quasar::ShortlistDataOnDisk>::__shared_ptr_emplace[abi:ne200100]<std::array<kaldi::MappableVector<int>,3ul>,std::array<kaldi::MappableVector<int>,2ul>,std::allocator<kaldi::quasar::ShortlistDataOnDisk>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2CFA7E0;
  std::allocator<kaldi::quasar::ShortlistDataOnDisk>::construct[abi:ne200100]<kaldi::quasar::ShortlistDataOnDisk,std::array<kaldi::MappableVector<int>,3ul>,std::array<kaldi::MappableVector<int>,2ul>>(&v5, (a1 + 3), a2, a3);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::ShortlistDataOnDisk>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFA7E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_emplace<kaldi::quasar::ShortlistDataOnDisk>::__on_zero_shared(uint64_t a1)
{
  v2 = (a1 + 144);
  v3 = -48;
  do
  {
    if (*v2 == 1)
    {
      v4 = *(v2 - 2);
      if (v4)
      {
        MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
      }
    }

    v2 -= 24;
    v3 += 24;
  }

  while (v3);
  v5 = (a1 + 96);
  v6 = -72;
  do
  {
    if (*v5 == 1)
    {
      v7 = *(v5 - 2);
      if (v7)
      {
        MEMORY[0x1B8C85310](v7, 0x1000C8077774924);
      }
    }

    v5 -= 24;
    v6 += 24;
  }

  while (v6);
  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    v9 = *(*result + 8);

    return v9();
  }

  return result;
}

uint64_t std::allocator<kaldi::quasar::ShortlistDataOnDisk>::construct[abi:ne200100]<kaldi::quasar::ShortlistDataOnDisk,std::array<kaldi::MappableVector<int>,3ul>,std::array<kaldi::MappableVector<int>,2ul>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = 0; i != 72; i += 24)
  {
    v5 = &v26[i];
    v6 = a3 + i;
    v7 = *(a3 + i + 8);
    *v5 = *(a3 + i);
    *(v5 + 1) = v7;
    v5[16] = *(a3 + i + 16);
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = v23;
  do
  {
    v11 = v8;
    v12 = a4 + 24 * v9;
    v13 = *(v12 + 8);
    *v10 = *v12;
    v10[1] = v13;
    *(v10 + 16) = *(v12 + 16);
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    v8 = 1;
    v10 = &v24;
    v9 = 1;
  }

  while ((v11 & 1) == 0);
  result = kaldi::quasar::ShortlistDataOnDisk::ShortlistDataOnDisk(a2, v26, v23);
  v15 = &v25;
  v16 = -48;
  v17 = &v25;
  do
  {
    v18 = *v17;
    v17 -= 24;
    if (v18 == 1)
    {
      result = *(v15 - 2);
      if (result)
      {
        result = MEMORY[0x1B8C85310](result, 0x1000C8077774924);
      }
    }

    v15 = v17;
    v16 += 24;
  }

  while (v16);
  v19 = &v27;
  v20 = -72;
  v21 = &v27;
  do
  {
    v22 = *v21;
    v21 -= 24;
    if (v22 == 1)
    {
      result = *(v19 - 2);
      if (result)
      {
        result = MEMORY[0x1B8C85310](result, 0x1000C8077774924);
      }
    }

    v19 = v21;
    v20 += 24;
  }

  while (v20);
  return result;
}

void sub_1B50AE55C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  std::allocator<kaldi::quasar::ShortlistDataOnDisk>::construct[abi:ne200100]<kaldi::quasar::ShortlistDataOnDisk,std::array<kaldi::MappableVector<int>,3ul>,std::array<kaldi::MappableVector<int>,2ul>>(v2 + 48, va, va1);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__emplace_unique_key_args<std::string,std::string const&,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__construct_node_hash<std::string const&,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1B50AE8B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

std::string *std::pair<std::string const,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>::pair[abi:ne200100]<std::string const&,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>,0>(std::string *this, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  *&this[1].__r_.__value_.__l.__data_ = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  LODWORD(this[1].__r_.__value_.__r.__words[2]) = 1;
  return this;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>::__assign_alt[abi:ne200100]<1ul,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>&>(uint64_t a1, void *a2, uint64_t *a3)
{
  if (*(a1 + 16) == 1)
  {
    v5 = *a3;
    v4 = a3[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = a2[1];
    *a2 = v5;
    a2[1] = v4;
    if (v6)
    {

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](a1);
    v8 = a3[1];
    *a1 = *a3;
    *(a1 + 8) = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *(a1 + 16) = 1;
  }
}

uint64_t kaldi::quasar::Shortlist::Shortlist(uint64_t result, uint64_t *a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = -1;
  v2 = *a2;
  *a2 = 0;
  *(result + 32) = v2;
  return result;
}

unint64_t kaldi::quasar::Shortlist::GetSoftmaxIdx(kaldi::quasar::Shortlist *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (v2 == *this)
  {
    v4 = *(this + 1);
  }

  else
  {
    v3 = (v2 - *this) >> 2;
    v4 = *this;
    do
    {
      v5 = v3 >> 1;
      v6 = &v4[v3 >> 1];
      v8 = *v6;
      v7 = v6 + 1;
      v3 += ~(v3 >> 1);
      if (v8 < a2)
      {
        v4 = v7;
      }

      else
      {
        v3 = v5;
      }
    }

    while (v3);
  }

  if (v2 == v4 || *v4 != a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Shortlist target symbol id ", 27);
    v11 = MEMORY[0x1B8C84C00](v10, a2);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, " not in shortlist!");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  return (v4 - *this) >> 2;
}

uint64_t kaldi::quasar::Shortlist::MapShortlist(unsigned int **a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, int **a7, int **a8, void *a9, char a10)
{
  v85 = a4;
  v86 = a3;
  v16 = (*(*a1[4] + 16))(a1[4]);
  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v77);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, "Language pair: ", 15);
    v18 = *(a2 + 23);
    if (v18 >= 0)
    {
      v19 = a2;
    }

    else
    {
      v19 = *a2;
    }

    if (v18 >= 0)
    {
      v20 = *(a2 + 23);
    }

    else
    {
      v20 = *(a2 + 8);
    }

    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    if (v16)
    {
      v22 = " is supported";
    }

    else
    {
      v22 = " is not supported";
    }

    if (v16)
    {
      v23 = 13;
    }

    else
    {
      v23 = 17;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v22, v23);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v77);
  }

  if (a6 + a5 > 0)
  {
    v24 = v16;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    (**a1[4])(v83);
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v83, &v86);
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v83, &v85);
    v25 = *a7;
    v26 = a7[1];
    while (v25 != v26)
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v83, v25++);
    }

    v47 = *a8;
    v48 = a8[1];
    while (v47 != v48)
    {
      std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__emplace_unique_key_args<int,int const&>(v83, v47++);
    }

    v49 = *a9;
    if (*a9 != a9 + 1)
    {
      do
      {
        LODWORD(v77[0].__locale_) = *(v49 + 7);
        std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__erase_unique<int>(v83, v77);
        v50 = v49[1];
        if (v50)
        {
          do
          {
            v51 = v50;
            v50 = *v50;
          }

          while (v50);
        }

        else
        {
          do
          {
            v51 = v49[2];
            v52 = *v51 == v49;
            v49 = v51;
          }

          while (!v52);
        }

        v49 = v51;
      }

      while (v51 != a9 + 1);
    }

    v53 = *a1;
    a1[1] = *a1;
    if (v84)
    {
      v54 = 0;
      v55 = v84;
      do
      {
        ++v54;
        v55 = *v55;
      }

      while (v55);
    }

    else
    {
      v54 = 0;
    }

    std::vector<int>::__insert_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<int,void *> *>,std::__hash_const_iterator<std::__hash_node<int,void *> *>>(a1, v53, v84, 0, v54);
    std::__sort<std::__less<int,int> &,int *>();
    v57 = *a1;
    v58 = a1[1];
    if (*a1 == v58)
    {
      v59 = *a1;
    }

    else
    {
      v59 = *a1;
      v60 = *a1;
      while (*v60 != v86)
      {
        v60 += 4;
        v59 += 4;
        if (v60 == v58)
        {
          v59 = a1[1];
          break;
        }
      }
    }

    *(a1 + 6) = (v59 - v57) >> 2;
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v77);
      v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, "Using shortlist for language_pair: ", 35);
      v62 = *(a2 + 23);
      v63 = v62 >= 0 ? a2 : *a2;
      v64 = v62 >= 0 ? *(a2 + 23) : *(a2 + 8);
      v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v63, v64);
      v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, ", reducing Voc size to ", 23);
      MEMORY[0x1B8C84C00](v66, (v58 - v57) >> 2);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v77);
      if (kaldi::g_kaldi_verbose_level >= 5)
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v77);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, "Shortlisted vocabulary:", 23);
        v67 = *a1;
        v68 = a1[1];
        if (*a1 != v68)
        {
          do
          {
            v69 = *v67;
            v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v78, " ", 1);
            MEMORY[0x1B8C84C00](v70, v69);
            ++v67;
          }

          while (v67 != v68);
        }

        if (kaldi::g_kaldi_verbose_level > 4)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(v76, 5);
          std::stringbuf::str();
          if ((v75 & 0x80u) == 0)
          {
            v71 = __p;
          }

          else
          {
            v71 = __p[0];
          }

          if ((v75 & 0x80u) == 0)
          {
            v72 = v75;
          }

          else
          {
            v72 = __p[1];
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, v71, v72);
          if (v75 < 0)
          {
            operator delete(__p[0]);
          }

          kaldi::KaldiVlogMessage::~KaldiVlogMessage(v76);
        }

        v77[0] = *MEMORY[0x1E69E54D8];
        v73 = *(MEMORY[0x1E69E54D8] + 72);
        *(v77 + *(v77[0].__locale_ - 3)) = *(MEMORY[0x1E69E54D8] + 64);
        v78 = v73;
        v79 = MEMORY[0x1E69E5548] + 16;
        if (v81 < 0)
        {
          operator delete(v80[7].__locale_);
        }

        v79 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v80);
        std::iostream::~basic_iostream();
        MEMORY[0x1B8C85200](&v82);
      }
    }

    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v83);
  }

  else
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v77);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, "Has shortlist, but disabled due to shortlist-lang-pair = ", 57);
      v28 = *(a2 + 23);
      if (v28 >= 0)
      {
        v29 = a2;
      }

      else
      {
        v29 = *a2;
      }

      if (v28 >= 0)
      {
        v30 = *(a2 + 23);
      }

      else
      {
        v30 = *(a2 + 8);
      }

      v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, v29, v30);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ", shortlist-cond-n = ", 21);
      v33 = MEMORY[0x1B8C84C00](v32, a5);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, ", shortlist-freq-n = ", 21);
      MEMORY[0x1B8C84C00](v34, a6);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v77);
    }

    if (!a10)
    {
      result = 0;
      a1[1] = *a1;
      return result;
    }

    v35 = (*(*a1[4] + 40))(a1[4]) - 1;
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v77);
      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, "Shortlist is disabled, and fallback to use full vocab (", 55);
      v37 = MEMORY[0x1B8C84C00](v36, v35);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ") instead.", 10);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v77);
    }

    std::vector<int>::resize(a1, v35);
    v39 = *a1;
    v38 = a1[1];
    if (*a1 != v38)
    {
      v40 = 0;
      v41 = (v38 - v39 - 4) >> 2;
      v42 = vdupq_n_s64(v41);
      v43 = (v41 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v44 = v39 + 8;
      do
      {
        v45 = vdupq_n_s64(v40);
        v46 = vmovn_s64(vcgeq_u64(v42, vorrq_s8(v45, xmmword_1B5AE0060)));
        if (vuzp1_s16(v46, *v42.i8).u8[0])
        {
          *(v44 - 2) = v40;
        }

        if (vuzp1_s16(v46, *&v42).i8[2])
        {
          *(v44 - 1) = v40 + 1;
        }

        if (vuzp1_s16(*&v42, vmovn_s64(vcgeq_u64(v42, vorrq_s8(v45, xmmword_1B5AE0050)))).i32[1])
        {
          *v44 = v40 + 2;
          v44[1] = v40 + 3;
        }

        v40 += 4;
        v44 += 4;
      }

      while (v43 != v40);
    }

    *(a1 + 6) = v86;
  }

  return 1;
}

void sub_1B50AF268(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, int a5, __int16 a6, char a7, char a8, std::locale a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, ...)
{
  va_start(va, a59);
  if (a8 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a9);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a44, MEMORY[0x1E69E54D8]);
  MEMORY[0x1B8C85200](va);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(v59 - 128);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x1E69E5560] + 104;
  a1[16] = MEMORY[0x1E69E5560] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x1E69E5560] + 64;
  a1[2] = MEMORY[0x1E69E5560] + 64;
  v5 = MEMORY[0x1E69E54D8];
  v6 = *(MEMORY[0x1E69E54D8] + 24);
  v7 = *(MEMORY[0x1E69E54D8] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x1E69E5560] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_1B50AF5A8(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x1B8C85200](v1);
  _Unwind_Resume(a1);
}

void kaldi::KaldiVlogMessage::~KaldiVlogMessage(std::locale *this)
{
  v2 = kaldi::KaldiVlogMessage::g_logger;
  std::stringbuf::str();
  (v2)(&__p, LODWORD(this[33].__locale_), this[34].__locale_);
  if (v6 < 0)
  {
    operator delete(__p);
  }

  v3 = MEMORY[0x1E69E54E8];
  v4 = *MEMORY[0x1E69E54E8];
  this->__locale_ = *MEMORY[0x1E69E54E8];
  *(this + *(v4 - 24)) = v3[3];
  this[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  this[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&this[14]);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t *std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::__erase_unique<int>(void *a1, int *a2)
{
  result = std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::find<int>(a1, a2);
  if (result)
  {
    std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::erase(a1, result);
    return 1;
  }

  return result;
}

char *std::vector<int>::__insert_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<int,void *> *>,std::__hash_const_iterator<std::__hash_node<int,void *> *>>(void *a1, char *__src, void *a3, void *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 2)
  {
    v16 = (v9 - __src) >> 2;
    if (v16 >= a5)
    {
      v21 = &__src[4 * a5];
      v22 = &v9[-4 * a5];
      v23 = a1[1];
      while (v22 < v9)
      {
        v24 = *v22;
        v22 += 4;
        *v23++ = v24;
      }

      a1[1] = v23;
      if (v9 != v21)
      {
        memmove(&__src[4 * a5], __src, v9 - v21);
      }

      *__src = *(v7 + 4);
      if (a5 != 1)
      {
        v25 = __src + 4;
        v26 = a5 + 1;
        do
        {
          v7 = *v7;
          *v25++ = *(v7 + 4);
          --v26;
        }

        while (v26 > 2);
      }
    }

    else
    {
      v17 = a3;
      if (v16 >= 1)
      {
        v18 = v16 + 1;
        v17 = a3;
        do
        {
          v17 = *v17;
          --v18;
        }

        while (v18 > 1);
      }

      v19 = a1[1];
      if (v17 == a4)
      {
        v20 = a1[1];
      }

      else
      {
        v35 = v17;
        v20 = a1[1];
        do
        {
          *v20 = *(v35 + 4);
          v20 += 4;
          v35 = *v35;
          ++v19;
        }

        while (v35 != a4);
      }

      a1[1] = v19;
      if (v16 >= 1)
      {
        v36 = &__src[4 * a5];
        v37 = &v19[-a5];
        v38 = v19;
        while (v37 < v9)
        {
          v39 = *v37;
          v37 += 4;
          *v38++ = v39;
        }

        a1[1] = v38;
        if (v20 != v36)
        {
          memmove(&__src[4 * a5], __src, v19 - v36);
        }

        if (v17 != v7)
        {
          v40 = __src;
          do
          {
            *v40++ = *(v7 + 4);
            v7 = *v7;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + (&v9[-*a1] >> 2);
  if (v12 >> 62)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v13 = __src - v11;
  v14 = v10 - v11;
  if (v14 >> 1 > v12)
  {
    v12 = v14 >> 1;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v15 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(a1, v15);
  }

  v27 = 4 * (v13 >> 2);
  v28 = 4 * a5;
  v29 = v27;
  do
  {
    *v29++ = *(v7 + 4);
    v7 = *v7;
    v28 -= 4;
  }

  while (v28);
  memcpy((v27 + 4 * a5), __src, a1[1] - __src);
  v30 = *a1;
  v31 = v27 + 4 * a5 + a1[1] - __src;
  a1[1] = __src;
  v32 = (__src - v30);
  v33 = (v27 - (__src - v30));
  memcpy(v33, v30, v32);
  v34 = *a1;
  *a1 = v33;
  a1[1] = v31;
  a1[2] = 0;
  if (v34)
  {
    operator delete(v34);
  }

  return v27;
}

void kaldi::quasar::ShortlistNnetBuilder::ConstrainSoftmax(kaldi::nnet1::Nnet *a1)
{
  Component = kaldi::nnet1::Nnet::GetComponent(a1, ((*(a1 + 1) - *a1) >> 3) - 1);
  (*(*Component + 24))(Component);
  operator new();
}

void sub_1B50B0628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, kaldi::nnet1::Nnet **a4, uint64_t a5, ...)
{
  va_start(va, a5);
  kaldi::Vector<float>::Destroy(v5 - 112);
  kaldi::Matrix<float>::~Matrix(va);
  std::unique_ptr<kaldi::nnet1::Nnet>::~unique_ptr[abi:ne200100](a4);
  _Unwind_Resume(a1);
}

kaldi::nnet1::Nnet **std::unique_ptr<kaldi::nnet1::Nnet>::~unique_ptr[abi:ne200100](kaldi::nnet1::Nnet **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    kaldi::nnet1::Nnet::~Nnet(v2);
    MEMORY[0x1B8C85350]();
  }

  return a1;
}

void kaldi::quasar::ShortlistNnetBuilder::ConstructNnet(uint64_t a1)
{
  kaldi::MatrixBase<float>::NumCols(a1);
  kaldi::MatrixBase<float>::NumRows(a1);
  operator new();
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::SetLinearity(uint64_t a1, uint64_t a2)
{
  kaldi::MatrixBase<float>::NumRows(a2);
  kaldi::quasar::Vocab::VocabSize((a1 + 48));
  kaldi::MatrixBase<float>::NumCols(a2);
  kaldi::QuantizedMatrixBase<short>::NumCols(a1 + 48);

  kaldi::QuantizedMatrixBase<signed char>::CopyFromMat(a1 + 48, a2);
}

uint64_t kaldi::nnet1::QuantizedAffineTransform<signed char>::QuantizedAffineTransform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F2CFA848;
  kaldi::QuantizedMatrix<signed char>::QuantizedMatrix(a1 + 48, a3, a2);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = &unk_1F2D3AC18;
  *(a1 + 120) = 0;
  kaldi::CuVector<float>::Resize(a1 + 96, a3, 0);
  return a1;
}

void sub_1B50B09D8(_Unwind_Exception *a1)
{
  kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v1 + 48);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::~QuantizedAffineTransform(kaldi::nnet1::Component *a1)
{
  kaldi::nnet1::QuantizedAffineTransform<signed char>::~QuantizedAffineTransform(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2CFA848;
  v2 = a1 + 48;
  kaldi::CuVector<float>::~CuVector(a1 + 12);
  kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v2);

  kaldi::nnet1::Component::~Component(a1);
}

void sub_1B50B0AFC(_Unwind_Exception *a1)
{
  kaldi::QuantizedMatrixBase<signed char>::~QuantizedMatrixBase(v3);
  kaldi::nnet1::Component::~Component(v2);
  MEMORY[0x1B8C85350](v2, v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Component::VectorizeWeightsCorrs(uint64_t a1)
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
  v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "VectorizeWeightsCorrs", 21);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, " is not implemented for ", 24);
  v4 = (*(*a1 + 24))(a1);
  kaldi::nnet1::Component::TypeToMarker(v4, &v8);
  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v8;
  }

  else
  {
    v5 = v8.__r_.__value_.__r.__words[0];
  }

  if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v8.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, size);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, " component.");
  std::string::~string(&v8);
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::Info(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "\n  linearity is quantized");
  v4 = std::string::append(&v11, "\n  bias");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>(a1 + 96);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v12, v6, v7);
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1B50B0D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::WriteData(uint64_t a1, void *a2, int a3, int a4)
{
  kaldi::QuantizedMatrix<signed char>::Write((a1 + 48), a2, a3, a4);

  kaldi::CuVectorBase<float>::Write(a1 + 96, a2, a3);
}

uint64_t *kaldi::nnet1::QuantizedAffineTransform<signed char>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  LODWORD(a4) = 1.0;
  kaldi::CuMatrixBase<float>::AddMatMat<signed char>(a3, a2, 111, (a1 + 48), 112, a4, 0.0);

  return kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 96, 1.0, 1.0);
}

void kaldi::nnet1::Component::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 8);
  v10 = &unk_1F2CFA908;
  *&v11 = v4;
  *(&v11 + 1) = v3 | 0x100000000;
  LODWORD(v12) = v3;
  DWORD1(v12) = v3;
  *(&v12 + 1) = *(a2 + 24);
  v5 = *(a3 + 16);
  v6 = *(a3 + 8);
  v7 = &unk_1F2CFA908;
  *&v8 = v6;
  *(&v8 + 1) = v5 | 0x100000000;
  LODWORD(v9) = v5;
  DWORD1(v9) = v5;
  *(&v9 + 1) = *(a3 + 24);
  (*(*a1 + 112))(a1, &v10, &v7, 0);
  v7 = &unk_1F2CFA908;
  v8 = 0u;
  v9 = 0u;
  quasar::Bitmap::~Bitmap(&v7);
  v10 = &unk_1F2CFA908;
  v11 = 0u;
  v12 = 0u;
  quasar::Bitmap::~Bitmap(&v10);
}

void sub_1B50B0F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16)
{
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  quasar::Bitmap::~Bitmap(&a9);
  a15 = 0u;
  a16 = 0u;
  quasar::Bitmap::~Bitmap(&a14);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::BackpropagateFnc()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "BackpropagateFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

char **kaldi::nnet1::Component::SetWorkspace(uint64_t a1, char **a2)
{
  result = (a1 + 24);
  if (result != a2)
  {
    return std::vector<kaldi::CuWorkspace *>::__assign_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(result, *a2, a2[1], (a2[1] - *a2) >> 3);
  }

  return result;
}

void kaldi::nnet1::QuantizedAffineTransform<signed char>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int16x4_t a5)
{
  a5.i32[0] = *(*(a1 + 104) + 4 * a3);
  kaldi::CuVectorBase<float>::Set(a4, a5);
  kaldi::QuantizedMatrixBase<signed char>::Row(a1 + 48, a3, v10);
  LODWORD(v9) = 1.0;
  kaldi::CuVectorBase<float>::AddMatVec<signed char>(a4, a2, 111, v10, v9, 1.0);
}

float kaldi::nnet1::QuantizedAffineTransform<signed char>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*(a1 + 104) + 4 * a3);
  kaldi::QuantizedMatrixBase<signed char>::Row(a1 + 48, a3, v6);
  return v4 + kaldi::VecVec<float,signed char>(a2, v6);
}

double kaldi::nnet1::QuantizedAffineTransform<signed char>::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  kaldi::QuantizedMatrix<signed char>::Read((a1 + 48), a2, a3, a4);

  return kaldi::CuVector<float>::Read(a1 + 96, a2, a3);
}

uint64_t std::vector<kaldi::CuWorkspace *>::__init_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50B11F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::MomentStatistics<float>(uint64_t a1)
{
  v2 = *(a1 + 16);
  memset(v3, 0, sizeof(v3));
  kaldi::Vector<float>::Resize(v3, v2, 0);
  kaldi::CuVectorBase<float>::CopyToVec<float>(a1, v3);
  kaldi::nnet1::MomentStatistics<float>(v3);
  kaldi::Vector<float>::Destroy(v3);
}

{
  v20 = 0;
  v21 = 0;
  v22 = 0;
  kaldi::Vector<float>::Resize(&v20, *(a1 + 8), 1);
  kaldi::VectorBase<float>::CopyFromVec(&v20, a1);
  memset(v19, 0, sizeof(v19));
  kaldi::Vector<float>::Resize(v19, *(a1 + 8), 1);
  kaldi::VectorBase<float>::CopyFromVec(v19, a1);
  v2 = kaldi::VectorBase<float>::Sum(a1);
  kaldi::VectorBase<float>::Add(&v20, -(*&v2 / *(a1 + 8)));
  kaldi::Vector<float>::Resize(v19, v21, 1);
  kaldi::VectorBase<float>::CopyFromVec(v19, &v20);
  kaldi::VectorBase<float>::MulElements(&v20, v19);
  v3 = kaldi::VectorBase<float>::Sum(&v20);
  v4 = *&v3;
  v5 = *(a1 + 8);
  kaldi::VectorBase<float>::MulElements(&v20, v19);
  kaldi::VectorBase<float>::Sum(&v20);
  pow((v4 / v5), 1.5);
  kaldi::VectorBase<float>::MulElements(&v20, v19);
  kaldi::VectorBase<float>::Sum(&v20);
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "(min ", 7);
  kaldi::VectorBase<float>::Min(a1, v6);
  v7 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", max ", 6);
  kaldi::VectorBase<float>::Max(a1, v8);
  v9 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", mean ", 7);
  v10 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", variance ", 11);
  v11 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", skewness ", 11);
  v12 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ", kurtosis ", 11);
  v13 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ") ", 3);
  std::stringbuf::str();
  v14 = *MEMORY[0x1E69E54E8];
  *(&v14 + *(v14 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v15 = MEMORY[0x1E69E5548] + 16;
  if (v17 < 0)
  {
    operator delete(v16[7].__locale_);
  }

  v15 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&v18);
  kaldi::Vector<float>::Destroy(v19);
  kaldi::Vector<float>::Destroy(&v20);
}

{
  v2 = kaldi::MatrixBase<float>::NumRows(a1);
  v3 = kaldi::MatrixBase<float>::NumCols(a1);
  memset(v4, 0, sizeof(v4));
  kaldi::Vector<float>::Resize(v4, (v3 * v2), 0);
  kaldi::VectorBase<float>::CopyRowsFromMat(v4, a1);
  kaldi::nnet1::MomentStatistics<float>(v4);
  kaldi::Vector<float>::Destroy(v4);
}

void sub_1B50B127C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

void sub_1B50B15E4(_Unwind_Exception *a1)
{
  kaldi::Vector<float>::Destroy(v1 - 144);
  kaldi::Vector<float>::Destroy(v1 - 120);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void kaldi::CuSubMatrix<float>::~CuSubMatrix(uint64_t a1)
{
  *a1 = &unk_1F2CFA908;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  quasar::Bitmap::~Bitmap(a1);
}

{
  *a1 = &unk_1F2CFA908;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  quasar::Bitmap::~Bitmap(a1);

  JUMPOUT(0x1B8C85350);
}

void kaldi::CuSubMatrix<float>::Read()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Function not implemented for this class");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void *std::vector<kaldi::CuWorkspace *>::__assign_with_size[abi:ne200100]<kaldi::CuWorkspace **,kaldi::CuWorkspace **>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<kaldi::CuWorkspace *>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void kaldi::nnet1::QuantizedAffineTransform<short>::SetLinearity(uint64_t a1, uint64_t a2)
{
  kaldi::MatrixBase<float>::NumRows(a2);
  kaldi::quasar::Vocab::VocabSize((a1 + 48));
  kaldi::MatrixBase<float>::NumCols(a2);
  kaldi::QuantizedMatrixBase<short>::NumCols(a1 + 48);

  kaldi::QuantizedMatrixBase<short>::CopyFromMat(a1 + 48, a2);
}

uint64_t kaldi::nnet1::QuantizedAffineTransform<short>::QuantizedAffineTransform(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_1F2CFA968;
  kaldi::QuantizedMatrix<short>::QuantizedMatrix(a1 + 48, a3, a2);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = &unk_1F2D3AC18;
  *(a1 + 120) = 0;
  kaldi::CuVector<float>::Resize(a1 + 96, a3, 0);
  return a1;
}

void sub_1B50B1A48(_Unwind_Exception *a1)
{
  kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v1 + 48);
  kaldi::nnet1::Component::~Component(v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::QuantizedAffineTransform<short>::~QuantizedAffineTransform(kaldi::nnet1::Component *a1)
{
  kaldi::nnet1::QuantizedAffineTransform<short>::~QuantizedAffineTransform(a1);

  JUMPOUT(0x1B8C85350);
}

{
  *a1 = &unk_1F2CFA968;
  v2 = a1 + 48;
  kaldi::CuVector<float>::~CuVector(a1 + 12);
  kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v2);

  kaldi::nnet1::Component::~Component(a1);
}

void sub_1B50B1B6C(_Unwind_Exception *a1)
{
  kaldi::QuantizedMatrixBase<short>::~QuantizedMatrixBase(v3);
  kaldi::nnet1::Component::~Component(v2);
  MEMORY[0x1B8C85350](v2, v1);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::QuantizedAffineTransform<short>::Info(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v11, "\n  linearity is quantized");
  v4 = std::string::append(&v11, "\n  bias");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  kaldi::nnet1::MomentStatistics<float>(a1 + 96);
  if ((v10 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = v10;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v12, v6, v7);
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_1B50B1C90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::QuantizedAffineTransform<short>::WriteData(uint64_t a1, void *a2, int a3, int a4)
{
  kaldi::QuantizedMatrix<short>::Write((a1 + 48), a2, a3, a4);

  kaldi::CuVectorBase<float>::Write(a1 + 96, a2, a3);
}

uint64_t *kaldi::nnet1::QuantizedAffineTransform<short>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  LODWORD(a4) = 1.0;
  kaldi::CuMatrixBase<float>::AddMatMat<short>(a3, a2, 111, (a1 + 48), 112, a4, 0.0);

  return kaldi::CuMatrixBase<float>::AddVecToRows(a3, a1 + 96, 1.0, 1.0);
}

void kaldi::nnet1::QuantizedAffineTransform<short>::BackpropagateFnc()
{
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v1);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "BackpropagateFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void kaldi::nnet1::QuantizedAffineTransform<short>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int16x4_t a5)
{
  a5.i32[0] = *(*(a1 + 104) + 4 * a3);
  kaldi::CuVectorBase<float>::Set(a4, a5);
  kaldi::QuantizedMatrixBase<short>::Row(a1 + 48, a3, v10);
  LODWORD(v9) = 1.0;
  kaldi::CuVectorBase<float>::AddMatVec<short>(a4, a2, 111, v10, v9, 1.0);
}

float kaldi::nnet1::QuantizedAffineTransform<short>::GetUnitOutputFnc(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(*(a1 + 104) + 4 * a3);
  kaldi::QuantizedMatrixBase<short>::Row(a1 + 48, a3, v6);
  return v4 + kaldi::VecVec<float,short>(a2, v6);
}

double kaldi::nnet1::QuantizedAffineTransform<short>::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  kaldi::QuantizedMatrix<short>::Read((a1 + 48), a2, a3, a4);

  return kaldi::CuVector<float>::Read(a1 + 96, a2, a3);
}

int *kaldi::nnet1::AffineTransform::SetLinearity(kaldi::nnet1::AffineTransform *a1, int *a2)
{
  kaldi::MatrixBase<float>::NumRows(a2);
  kaldi::nnet1::AffineTransform::Linearity(a1);
  kaldi::MatrixBase<float>::NumCols(a2);
  kaldi::nnet1::AffineTransform::Linearity(a1);
  v4 = kaldi::nnet1::AffineTransform::Linearity(a1);

  return kaldi::CuMatrixBase<float>::CopyFromMat(v4, a2, 111);
}

void std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v4 - 32;
      v7 = v4 - 32;
      v8 = v4 - 32;
      do
      {
        v9 = *v8;
        v8 -= 32;
        (*(v9 + 8))(v7);
        v6 -= 32;
        v10 = v7 == v2;
        v7 = v8;
      }

      while (!v10);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_1B50B229C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  quasar::SystemConfig::~SystemConfig(&a24);

  _Unwind_Resume(a1);
}

void sub_1B50B246C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void quasar::filesystem::Path::~Path(void **this)
{
  *this = &unk_1F2CFAA28;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_1F2CFAA28;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::ModelLoader>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2CFAA58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_set<std::string>>,0>(uint64_t a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::unordered_map<std::string,quasar::TranslationPairSetting>>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,quasar::TranslationPairSetting>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,quasar::TranslationPairSetting>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::pair<std::string const,quasar::TranslationPairSetting>::~pair(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::vector<std::pair<std::string,std::string>>>,0>(uint64_t a1)
{
  v2 = (a1 + 24);
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void std::allocator<std::pair<std::string,std::string>>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::__node_insert_multi(uint64_t **a1, uint64_t a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (*(a2 + 32) >= *(v4 + 8))
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

uint64_t **std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,double>,std::__tree_node<std::__value_type<std::string,double>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v8[7] = v9[7];
          leaf_high = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_leaf_high(v5, &v16, v15 + 4);
          std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__insert_node_at(v5, v16, leaf_high, v15);
          v15 = v14;
          if (v14)
          {
            v14 = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::__detach_next(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v13);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_multi<std::pair<std::string const,double> const&>();
  }

  return result;
}

void sub_1B50B2B7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50B2C3C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::__value_type<int,std::map<std::string,double>>,std::__map_value_compare<int,std::__value_type<int,std::map<std::string,double>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::map<std::string,double>>>>::destroy(*a1, v2);
  }

  return a1;
}

void sub_1B50B2E18(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,std::map<std::string,double>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void *std::map<std::string,double>::map[abi:ne200100](void *a1, const void ***a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<std::string,double>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,double>,std::__tree_node<std::__value_type<std::string,double>,void *> *,long>>>(a1, *a2, a2 + 1);
  return a1;
}

uint64_t std::map<std::string,double>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,double>,std::__tree_node<std::__value_type<std::string,double>,void *> *,long>>>(uint64_t result, const void **a2, const void ***a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,double> const&>(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,double> const&>(void *a1, uint64_t a2, const void **a3)
{
  result = *std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__find_equal<std::string>(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,double>,std::__map_value_compare<std::string,std::__value_type<std::string,double>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,double>>>::__construct_node<std::pair<std::string const,double> const&>();
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<int,std::map<std::string,double>>,void *>>>::operator()[abi:ne200100](uint64_t a1, char **a2)
{
  if (*(a1 + 8) == 1)
  {
    std::__tree<std::string>::destroy((a2 + 5), a2[6]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void sub_1B50B3050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B50B3110(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,double>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

std::logic_error *quasar::Bitmap::CoordinatesOutOfRange::CoordinatesOutOfRange(std::logic_error *this, double a2, double a3)
{
  std::to_string(&v17, a2);
  v5 = std::string::insert(&v17, 0, "Texture coordinates (");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v18, ",");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a3);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v19, p_p, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v20, ") out of range");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::logic_error::logic_error(this, &v21);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  this->__vftable = &unk_1F2CFAAA8;
  return this;
}

void sub_1B50B32B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

std::logic_error *quasar::Bitmap::CoordinatesOutOfRange::CoordinatesOutOfRange(std::logic_error *this, int __val, int a3)
{
  std::to_string(&v17, __val);
  v5 = std::string::insert(&v17, 0, "Bitmap coordinates (");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v18, ",");
  v8 = *&v7->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, a3);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v19, p_p, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v20, ") out of bounds");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v21.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v21.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  std::logic_error::logic_error(this, &v21);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  this->__vftable = &unk_1F2CFAAA8;
  return this;
}

void sub_1B50B34E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (*(v33 - 73) < 0)
  {
    operator delete(*(v33 - 96));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void quasar::Bitmap::CoordinatesOutOfRange::~CoordinatesOutOfRange(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::Bitmap::nearestNeighborSampleAt(quasar::Bitmap *this, quasar::Bitmap *a2, double a3, double a4)
{
  if (a4 > 1.0 || (a3 >= 0.0 ? (v6 = a3 > 1.0) : (v6 = 1), v6 || a4 < 0.0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    quasar::Bitmap::CoordinatesOutOfRange::CoordinatesOutOfRange(exception, a3, a4);
  }

  v8 = (*(*this + 16))(this, a2);
  v9 = (*(*this + 24))(this);
  v10 = vcvtmd_s64_f64(v8 * a3);
  v11 = vcvtmd_s64_f64(v9 * a4);
  if (v8 - 1 < v10)
  {
    v10 = v8 - 1;
  }

  v12 = v10 & ~(v10 >> 31);
  v13 = v9 - 1;
  if (v9 - 1 >= v11)
  {
    v13 = v11;
  }

  v14 = *(*this + 32);

  return v14(this, v12, v13 & ~(v13 >> 31));
}

void quasar::G2WP::G2WP(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __p[35] = *MEMORY[0x1E69E9840];
  v12 = a2[1];
  v14[0] = *a2;
  v14[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13[0] = 0;
  v13[1] = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::QuasarG2PBase::QuasarG2PBase(a1, v14, v13, a4, a5, a6, a7);
}

void sub_1B50B3F2C(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B50B4164);
}

void sub_1B50B3F3C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if ((v51 & 0x80000000) == 0)
  {
    if (v53 < 0)
    {
      operator delete(v52);
    }

    if (v55 < 0)
    {
      operator delete(v54);
    }

    JUMPOUT(0x1B50B40D8);
  }

  JUMPOUT(0x1B50B4030);
}

void sub_1B50B409C(_Unwind_Exception *a1)
{
  std::__tree<int>::destroy(v6, v6[1]);
  std::unique_ptr<quasar::SentencePieceModule>::reset[abi:ne200100](&v1[48].__locale_, 0);
  std::unique_ptr<quasar::Lexicon>::reset[abi:ne200100](&v1[47].__locale_, 0);
  locale = v1[46].__locale_;
  v1[46].__locale_ = 0;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  v5 = *v2;
  *v2 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  quasar::QuasarG2PBase::~QuasarG2PBase(v1);
  _Unwind_Resume(a1);
}

void sub_1B50B41B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, std::__shared_weak_count *a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a36)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a36);
  }

  if (a38)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a38);
  }

  JUMPOUT(0x1B50B4164);
}

void quasar::QuasarExceptionMessage::~QuasarExceptionMessage(quasar::QuasarExceptionMessage *this)
{
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(this);
}

{
  v2 = quasar::QuasarExceptionMessage::logger;
  std::stringbuf::str();
  v3 = (v2)(&__p, *(this + 33));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (!MEMORY[0x1B8C852F0](v3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::runtime_error::runtime_error(exception, &__p);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  abort();
}

void quasar::QuasarG2PBase::~QuasarG2PBase(std::locale *this)
{
  this->__locale_ = &unk_1F2D07A48;
  if (SHIBYTE(this[44].__locale_) < 0)
  {
    operator delete(this[42].__locale_);
  }

  if (SHIBYTE(this[41].__locale_) < 0)
  {
    operator delete(this[39].__locale_);
  }

  quasar::G2P::~G2P(this);
}

void quasar::G2WP::~G2WP(std::locale *this)
{
  this->__locale_ = &unk_1F2CFAAF8;
  std::unique_ptr<quasar::SentencePieceModule>::reset[abi:ne200100](&this[48].__locale_, 0);
  std::unique_ptr<quasar::Lexicon>::reset[abi:ne200100](&this[47].__locale_, 0);
  locale = this[46].__locale_;
  this[46].__locale_ = 0;
  if (locale)
  {
    (*(*locale + 8))(locale);
  }

  v3 = this[45].__locale_;
  this[45].__locale_ = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  quasar::QuasarG2PBase::~QuasarG2PBase(this);
}

{
  quasar::G2WP::~G2WP(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::G2WP::normalizeToken(uint64_t a1@<X1>, std::string *a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *a1;
    a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
  }
}

void quasar::G2WP::doG2P(uint64_t a1@<X0>, __int128 *a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  quasar::LmeDataFactoryBase::PronSet::PronSet(v21);
  quasar::PronGuessStats::PronGuessStats(__p);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  std::vector<quasar::TextTokenizer::Token>::push_back[abi:ne200100](&v13, a2);
  v16 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  std::vector<quasar::TextTokenizer::Token>::__init_with_size[abi:ne200100]<quasar::TextTokenizer::Token*,quasar::TextTokenizer::Token*>(v23, v13, v14, (v14 - v13) >> 5);
  v25 = v16;
  memset(v12, 0, sizeof(v12));
  std::vector<quasar::TextTokenizer::TokenString>::__init_with_size[abi:ne200100]<quasar::TextTokenizer::TokenString const*,quasar::TextTokenizer::TokenString const*>(v12, v23, &v26, 1uLL);
  v22 = v23;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v22);
  v8 = *(a1 + 360);
  std::string::basic_string[abi:ne200100]<0>(v23, "");
  quasar::G2P::getProns(v8, v12, __p, 0, a4);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_12:
    v23[0] = v12;
    std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](v23);
    v23[0] = &v13;
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v23);
    std::__tree<std::string>::destroy(&v19, v20);
    goto LABEL_13;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_3:
  quasar::LmeDataFactoryBase::PronSet::insert(v21, a4);
  v23[0] = a4;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](v23);
  v23[0] = v12;
  std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](v23);
  v23[0] = &v13;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v23);
  std::__tree<std::string>::destroy(&v19, v20);
  quasar::LmeDataFactoryBase::PronSet::toPronChoices(v21, 3, &v13);
  quasar::G2WP::g2pToWP(a1, &v13, __p);
  quasar::LmeDataFactoryBase::PronSet::insert(v21, __p);
  v23[0] = __p;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](v23);
  v23[0] = &v13;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](v23);
  v9 = *(a1 + 384);
  if (v9)
  {
    quasar::SentencePieceModule::encode(v9, a2, __p);
    v10 = v18;
    v11 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v10 = __p[1];
    }

    if (v10)
    {
      quasar::LmeDataFactoryBase::PronSet::insert(v21, 4, __p, 0.0);
      v11 = v18;
    }

    if ((v11 & 0x80) != 0)
    {
      operator delete(__p[0]);
    }
  }

  quasar::LmeDataFactoryBase::PronSet::toPronChoices(v21, a3, a4);
LABEL_13:
  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v21, v21[1]);
}

void sub_1B50B4608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v27 - 120, *(v27 - 112));
  _Unwind_Resume(a1);
}

uint64_t std::vector<quasar::TextTokenizer::Token>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<quasar::TextTokenizer::Token>::__emplace_back_slow_path<quasar::TextTokenizer::Token const&>(a1, a2);
  }

  else
  {
    std::vector<quasar::TextTokenizer::Token>::__construct_one_at_end[abi:ne200100]<quasar::TextTokenizer::Token const&>(a1, a2);
    result = v3 + 32;
  }

  *(a1 + 8) = result;
  return result;
}

void quasar::G2P::getProns(uint64_t a1@<X0>, __int128 ***a2@<X2>, int32x2_t *a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v7 = 0;
  v5 = 0;
  v6 = 0;
  quasar::G2P::getProns(a1, a2, a3, &v5, &v7, a4, a5);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_1B50B4788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void quasar::G2WP::g2pToWP(uint64_t a1@<X0>, int **a2@<X1>, uint64_t *a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  quasar::LmeDataFactoryBase::PronSet::PronSet(v30);
  if (*a2 != a2[1] && *(a1 + 368))
  {
    quasar::PronGuessStats::PronGuessStats(&v26);
    v6 = *a2;
    v7 = a2[1];
    if (*a2 != v7)
    {
      do
      {
        if (quasar::isPronTypePhoneme(*v6))
        {
          memset(&v24, 0, sizeof(v24));
          std::string::operator=(&v24, (v6 + 2));
          v25 = 0;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          std::vector<quasar::TextTokenizer::Token>::push_back[abi:ne200100](&v20, &v24);
          v23 = 0;
          memset(v32, 0, sizeof(v32));
          std::vector<quasar::TextTokenizer::Token>::__init_with_size[abi:ne200100]<quasar::TextTokenizer::Token*,quasar::TextTokenizer::Token*>(v32, v20, v21, (v21 - v20) >> 5);
          v33 = v23;
          memset(v19, 0, sizeof(v19));
          std::vector<quasar::TextTokenizer::TokenString>::__init_with_size[abi:ne200100]<quasar::TextTokenizer::TokenString const*,quasar::TextTokenizer::TokenString const*>(v19, v32, &v34, 1uLL);
          __p[0] = v32;
          std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](__p);
          v8 = *(a1 + 368);
          std::string::basic_string[abi:ne200100]<0>(__p, "");
          quasar::G2P::getProns(v8, v19, &v26, 1, v32);
          quasar::LmeDataFactoryBase::PronSet::insert(v30, v32);
          v31 = v32;
          std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v31);
          if (v18 < 0)
          {
            operator delete(__p[0]);
          }

          v32[0] = v19;
          std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](v32);
          v32[0] = &v20;
          std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v32);
          if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v24.__r_.__value_.__l.__data_);
          }
        }

        v6 += 10;
      }

      while (v6 != v7);
    }

    std::__tree<std::string>::destroy(v29, v29[1]);
  }

  if (*(a1 + 376))
  {
    v9 = quasar::PronTypeToSeparator(5);
    v10 = *a2;
    v11 = a2[1];
    if (*a2 != v11)
    {
      v12 = v9;
      do
      {
        if (quasar::isPronTypePhoneme(*v10))
        {
          v26 = 0u;
          v27 = 0u;
          v28 = 1065353216;
          v13 = *(a1 + 376);
          std::string::basic_string[abi:ne200100]<0>(&v24, v12);
          v14 = quasar::Lexicon::lookUpProns(v13, (v10 + 2), &v26, &v24);
          if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v24.__r_.__value_.__l.__data_);
          }

          v15 = v27;
          if (v27)
          {
            v16 = v14;
          }

          else
          {
            v16 = 0;
          }

          if (v16 == 1)
          {
            do
            {
              quasar::LmeDataFactoryBase::PronSet::insert(v30, 5, (v15 + 2), 0.0);
              v15 = *v15;
            }

            while (v15);
          }

          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&v26);
        }

        v10 += 10;
      }

      while (v10 != v11);
    }
  }

  quasar::LmeDataFactoryBase::PronSet::toPronChoices(v30, 3, a3);
  std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(v30, v30[1]);
}

void quasar::G2WP::convertPhonemePronsToAllProns(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 != v6)
  {
    v7 = 0;
    do
    {
      LODWORD(v8) = 1;
      LODWORD(v10) = 0;
      if (v7 >= a3[2])
      {
        v7 = std::vector<quasar::PronChoice>::__emplace_back_slow_path<quasar::PronType,std::string const&,int>(a3, &v8, v5, &v10);
      }

      else
      {
        std::allocator<quasar::PronChoice>::construct[abi:ne200100]<quasar::PronChoice,quasar::PronType,std::string const&,int>(a3, v7, &v8, v5, &v10);
        v7 += 40;
      }

      a3[1] = v7;
      v5 += 24;
    }

    while (v5 != v6);
  }

  quasar::G2WP::g2pToWP(a1, a3, &v8);
  std::vector<quasar::PronChoice>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::PronChoice*>,std::__wrap_iter<quasar::PronChoice*>>(a3, a3[1], v8, v9, 0xCCCCCCCCCCCCCCCDLL * ((v9 - v8) >> 3));
  v10 = &v8;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&v10);
}

void sub_1B50B4C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, void ***a12)
{
  a12 = &a9;
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void quasar::G2WP::batchDoG2P()
{
  memset(v0, 0, sizeof(v0));
  kaldi::KaldiWarnMessage::KaldiWarnMessage(v0);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented");
  quasar::QuasarExceptionMessage::~QuasarExceptionMessage(v0);
}

void sub_1B50B4DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v17 & 1) == 0)
    {
LABEL_6:
      v19 = MEMORY[0x1E69E54E8];
      v20 = *MEMORY[0x1E69E54E8];
      *v15 = *MEMORY[0x1E69E54E8];
      *(v15 + *(v20 - 24)) = *(v19 + 24);
      *(v15 + 8) = MEMORY[0x1E69E5548] + 16;
      if (*(v15 + 95) < 0)
      {
        operator delete(*(v15 + 72));
      }

      *(v15 + 8) = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale((v15 + 16));
      std::ostream::~ostream();
      MEMORY[0x1B8C85200](v15 + 112);
      _Unwind_Resume(a1);
    }
  }

  else if (!v17)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v16);
  goto LABEL_6;
}

uint64_t std::vector<quasar::TextTokenizer::Token>::__init_with_size[abi:ne200100]<quasar::TextTokenizer::Token*,quasar::TextTokenizer::Token*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::TextTokenizer::Token>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50B4F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::TextTokenizer::Token>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TextTokenizer::Token>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TextTokenizer::Token>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*,quasar::TextTokenizer::Token*,quasar::TextTokenizer::Token*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      LODWORD(v4[1].__r_.__value_.__l.__data_) = *(v6 + 6);
      v6 += 2;
      v4 = (v8 + 32);
      v13 = (v8 + 32);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

void std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::__map_value_compare<std::pair<quasar::PronType,std::string>,std::__value_type<std::pair<quasar::PronType,std::string>,float>,std::less<std::pair<quasar::PronType,std::string>>,true>,std::allocator<std::__value_type<std::pair<quasar::PronType,std::string>,float>>>::destroy(a1, *(a2 + 1));
    if (a2[63] < 0)
    {
      operator delete(*(a2 + 5));
    }

    operator delete(a2);
  }
}

void std::vector<quasar::PronChoice>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<quasar::PronChoice>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<quasar::PronChoice>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
    }
  }

  a1[1] = v2;
}

uint64_t *std::unique_ptr<quasar::PronCombinator>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__tree<int>::destroy(v2 + 8, *(v2 + 16));

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

quasar::SentencePieceModule *std::unique_ptr<quasar::SentencePieceModule>::reset[abi:ne200100](quasar::SentencePieceModule **a1, quasar::SentencePieceModule *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    quasar::SentencePieceModule::~SentencePieceModule(result);

    JUMPOUT(0x1B8C85350);
  }

  return result;
}

void *std::map<quasar::PronType,int>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<quasar::PronType,int>,std::__map_value_compare<quasar::PronType,std::__value_type<quasar::PronType,int>,std::less<quasar::PronType>,true>,std::allocator<std::__value_type<quasar::PronType,int>>>::__emplace_hint_unique_key_args<quasar::PronType,std::pair<quasar::PronType const,int> const&>(a1, v4, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<quasar::PronType,int>,std::__map_value_compare<quasar::PronType,std::__value_type<quasar::PronType,int>,std::less<quasar::PronType>,true>,std::allocator<std::__value_type<quasar::PronType,int>>>::__emplace_hint_unique_key_args<quasar::PronType,std::pair<quasar::PronType const,int> const&>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<quasar::PronType,int>,std::__map_value_compare<quasar::PronType,std::__value_type<quasar::PronType,int>,std::less<quasar::PronType>,true>,std::allocator<std::__value_type<quasar::PronType,int>>>::__find_equal<quasar::PronType>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::map<quasar::PronType,int>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<quasar::PronType,int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<quasar::PronType,int>,std::__tree_node<std::__value_type<quasar::PronType,int>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<quasar::PronType,int>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<quasar::PronType,int>,std::__tree_node<std::__value_type<quasar::PronType,int>,void *> *,long>>>(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<quasar::PronType,int>,std::__map_value_compare<quasar::PronType,std::__value_type<quasar::PronType,int>,std::less<quasar::PronType>,true>,std::allocator<std::__value_type<quasar::PronType,int>>>::__emplace_hint_unique_key_args<quasar::PronType,std::pair<quasar::PronType const,int> const&>(v5, v5 + 1, v4 + 7);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

float std::vector<quasar::TextTokenizer::Token>::__construct_one_at_end[abi:ne200100]<quasar::TextTokenizer::Token const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  result = *(a2 + 6);
  *(v4 + 24) = result;
  *(a1 + 8) = v4 + 32;
  return result;
}

uint64_t std::vector<quasar::TextTokenizer::Token>::__emplace_back_slow_path<quasar::TextTokenizer::Token const&>(uint64_t a1, __int128 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (v7)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TextTokenizer::Token>>(a1, v7);
  }

  v8 = 32 * v2;
  v18 = 0;
  v19 = v8;
  v20 = v8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8, *a2, *(a2 + 1));
    v10 = v19;
    v11 = v20;
  }

  else
  {
    v9 = *a2;
    *(v8 + 16) = *(a2 + 2);
    *v8 = v9;
    v10 = v8;
    v11 = v8;
  }

  *(v8 + 24) = *(a2 + 6);
  *&v20 = v11 + 32;
  v12 = *(a1 + 8);
  v13 = v10 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = *(a1 + 16);
  v17 = v20;
  *(a1 + 8) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(&v18);
  return v17;
}

void sub_1B50B56B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::TextTokenizer::Token>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 6);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::Token>,quasar::TextTokenizer::Token*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::vector<quasar::TextTokenizer::TokenString>::__init_with_size[abi:ne200100]<quasar::TextTokenizer::TokenString const*,quasar::TextTokenizer::TokenString const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<quasar::TextTokenizer::TokenString>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1B50B57E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<quasar::TextTokenizer::TokenString>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TextTokenizer::TokenString>>(a1, a2);
  }

  std::vector<int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::TextTokenizer::TokenString>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::TextTokenizer::TokenString>,quasar::TextTokenizer::TokenString const*,quasar::TextTokenizer::TokenString const*,quasar::TextTokenizer::TokenString*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      *(v4 + 16) = 0;
      std::vector<quasar::TextTokenizer::Token>::__init_with_size[abi:ne200100]<quasar::TextTokenizer::Token*,quasar::TextTokenizer::Token*>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 5);
      *(v4 + 24) = *(v6 + 24);
      v6 += 32;
      v4 = v11 + 32;
      v11 += 32;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::TokenString>,quasar::TextTokenizer::TokenString*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::TokenString>,quasar::TextTokenizer::TokenString*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::TokenString>,quasar::TextTokenizer::TokenString*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::TextTokenizer::TokenString>,quasar::TextTokenizer::TokenString*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v1 -= 4;
    v3 = v1;
    std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v3);
  }
}

void std::vector<quasar::TextTokenizer::TokenString>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 4;
        v6 = v4;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t std::vector<quasar::PronChoice>::__emplace_back_slow_path<quasar::PronType,std::string const&,int>(uint64_t *a1, int *a2, uint64_t a3, int *a4)
{
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if (v4 + 1 > 0x666666666666666)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v8 = 0x666666666666666;
  }

  else
  {
    v8 = v5;
  }

  v18 = a1;
  if (v8)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PronChoice>>(a1, v8);
  }

  v15 = 0;
  v16 = 40 * v4;
  std::allocator<quasar::PronChoice>::construct[abi:ne200100]<quasar::PronChoice,quasar::PronType,std::string const&,int>(a1, 40 * v4, a2, a3, a4);
  v17 = 40 * v4 + 40;
  v9 = a1[1];
  v10 = (40 * v4 + *a1 - v9);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PronChoice>,quasar::PronChoice*>(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  std::__split_buffer<quasar::PronChoice>::~__split_buffer(&v15);
  return v14;
}

void sub_1B50B5B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<quasar::PronChoice>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::allocator<quasar::PronChoice>::construct[abi:ne200100]<quasar::PronChoice,quasar::PronType,std::string const&,int>(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, int *a5)
{
  v7 = *a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  v8 = *a5;
  *a2 = v7;
  v9 = (a2 + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(a2 + 32) = v8;
    if (v10 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(a2 + 24) = *(&__p.__r_.__value_.__l + 2);
    *(a2 + 32) = v8;
  }
}

void sub_1B50B5C40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PronChoice>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PronChoice>,quasar::PronChoice*>(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 == a3)
  {
    v9 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      quasar::PronChoice::PronChoice(a4, v6);
      v6 += 40;
      a4 = v11 + 10;
      v11 += 10;
    }

    while (v6 != a3);
    v9 = 1;
    while (v5 != a3)
    {
      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 40;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PronChoice>,quasar::PronChoice*>>::~__exception_guard_exceptions[abi:ne200100](v8);
}

_DWORD *quasar::PronChoice::PronChoice(_DWORD *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 2);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v5 = *(a2 + 8);
    v4->__r_.__value_.__r.__words[2] = *(a2 + 24);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  a1[8] = *(a2 + 32);
  return a1;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PronChoice>,quasar::PronChoice*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PronChoice>,quasar::PronChoice*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PronChoice>,quasar::PronChoice*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    if (*(v1 - 9) < 0)
    {
      operator delete(*(v1 - 32));
    }

    v1 -= 40;
  }
}

uint64_t std::__split_buffer<quasar::PronChoice>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<quasar::PronChoice>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<quasar::PronChoice>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 40;
      *(a1 + 16) = v2 - 40;
      if (*(v2 - 9) < 0)
      {
        operator delete(*(v2 - 32));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::vector<quasar::PronChoice>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::PronChoice*>,std::__wrap_iter<quasar::PronChoice*>>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  if (a5 >= 1)
  {
    v7 = a3;
    v10 = a1[1];
    v9 = a1[2];
    if ((0xCCCCCCCCCCCCCCCDLL * ((v9 - v10) >> 3)) >= a5)
    {
      v16 = v10 - a2;
      if ((0xCCCCCCCCCCCCCCCDLL * ((v10 - a2) >> 3)) >= a5)
      {
        v19 = 5 * a5;
        std::vector<quasar::PronChoice>::__move_range(a1, a2, a1[1], a2 + 40 * a5);
        v20 = 0;
        v21 = v7 + 8 * v19;
        do
        {
          *(v20 + v5) = *v7;
          std::string::operator=((v20 + v5 + 8), (v7 + 8));
          *(v20 + v5 + 32) = *(v7 + 32);
          v20 += 40;
          v7 += 40;
        }

        while (v7 != v21);
      }

      else
      {
        v17 = v16 + a3;
        a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::PronChoice>,quasar::PronChoice*,quasar::PronChoice*,quasar::PronChoice*>(a1, v16 + a3, a4, a1[1]);
        if (v16 >= 1)
        {
          std::vector<quasar::PronChoice>::__move_range(a1, v5, v10, v5 + 40 * a5);
          v18 = 0;
          do
          {
            *(v18 + v5) = *v7;
            std::string::operator=((v18 + v5 + 8), (v7 + 8));
            *(v18 + v5 + 32) = *(v7 + 32);
            v18 += 40;
            v7 += 40;
          }

          while (v7 != v17);
        }
      }
    }

    else
    {
      v11 = *a1;
      v12 = a5 - 0x3333333333333333 * ((v10 - *a1) >> 3);
      if (v12 > 0x666666666666666)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v13 = a2 - v11;
      v14 = 0xCCCCCCCCCCCCCCCDLL * ((v9 - v11) >> 3);
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x333333333333333)
      {
        v15 = 0x666666666666666;
      }

      else
      {
        v15 = v12;
      }

      v29 = a1;
      if (v15)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<quasar::PronChoice>>(a1, v15);
      }

      v22 = (8 * (v13 >> 3));
      v26[0] = 0;
      v26[1] = v22;
      v27 = v22;
      v28 = 0;
      v23 = &v22[10 * a5];
      v24 = 40 * a5;
      do
      {
        quasar::PronChoice::PronChoice(v22, v7);
        v22 += 10;
        v7 += 40;
        v24 -= 40;
      }

      while (v24);
      v27 = v23;
      v5 = std::vector<quasar::PronChoice>::__swap_out_circular_buffer(a1, v26, v5);
      std::__split_buffer<quasar::PronChoice>::~__split_buffer(v26);
    }
  }

  return v5;
}

float std::vector<quasar::PronChoice>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = a2 + v6 - a4;
  if (v7 >= a3)
  {
    v10 = *(a1 + 8);
  }

  else
  {
    v9 = a2 + v6 - a4;
    v10 = *(a1 + 8);
    do
    {
      quasar::PronChoice::PronChoice(v10, v9);
      v9 += 40;
      v10 += 10;
    }

    while (v9 < a3);
  }

  *(a1 + 8) = v10;
  if (v6 != a4)
  {
    v12 = 0;
    v13 = a4 - v6;
    do
    {
      *(v6 + v12 - 40) = *(v7 + v12 - 40);
      std::string::operator=((v6 + v12 - 32), (v7 + v12 - 32));
      result = *(v7 + v12 - 8);
      *(v6 + v12 - 8) = result;
      v12 -= 40;
    }

    while (v13 != v12);
  }

  return result;
}

uint64_t std::vector<quasar::PronChoice>::__swap_out_circular_buffer(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PronChoice>,quasar::PronChoice*>(a1, a3, a1[1], *(a2 + 16));
  v7 = *a1;
  v8 = *(a2 + 8);
  *(a2 + 16) += a1[1] - a3;
  a1[1] = a3;
  v9 = (v8 + v7 - a3);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<quasar::PronChoice>,quasar::PronChoice*>(a1, v7, a3, v9);
  *(a2 + 8) = v9;
  v10 = *a1;
  a1[1] = *a1;
  *a1 = *(a2 + 8);
  *(a2 + 8) = v10;
  v11 = a1[1];
  a1[1] = *(a2 + 16);
  *(a2 + 16) = v11;
  v12 = a1[2];
  a1[2] = *(a2 + 24);
  *(a2 + 24) = v12;
  *a2 = *(a2 + 8);
  return v6;
}

_DWORD *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<quasar::PronChoice>,quasar::PronChoice*,quasar::PronChoice*,quasar::PronChoice*>(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      quasar::PronChoice::PronChoice(v4, v6);
      v6 += 40;
      v4 = v11 + 10;
      v11 += 10;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<quasar::PronChoice>,quasar::PronChoice*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t *kaldi::nnet1::PdfPrior::SubtractOnLogpost(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "--class-frame-counts is empty: Cannot initialize priors ", 56);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "without the counts.");
    goto LABEL_7;
  }

  if (v2 != *(a2 + 16))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Dimensionality mismatch,", 24);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " class_frame_counts ", 20);
    v8 = MEMORY[0x1B8C84C00](v7, *(a1 + 24));
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " pdf_output_llk ", 16);
    MEMORY[0x1B8C84C00](v9, *(a2 + 16));
LABEL_7:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v3 = -*a1;

  return kaldi::CuMatrixBase<float>::AddVecToRows(a2, a1 + 8, v3, 1.0);
}

uint64_t kaldi::nnet1::PdfPrior::SubtractLogpostForPdf(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "--class-frame-counts is empty: Cannot initialize priors ", 56);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "without the counts.");
    goto LABEL_7;
  }

  if (v3 <= a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Invalid pdf (", 13);
    v8 = MEMORY[0x1B8C84C00](v7, a2);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "): log-prior dimension = ", 25);
    MEMORY[0x1B8C84C00](v9, *(a1 + 24));
LABEL_7:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v4 = -(*a1 * *(*(a1 + 16) + 4 * a2));

  return kaldi::CuVectorBase<float>::Add(a3, v4);
}

uint64_t quasar::matchMetaData(quasar::PTree *a1, quasar::PTree *a2, uint64_t a3)
{
  if (!quasar::PTree::isLeaf(a1))
  {
    if (quasar::PTree::isLeaf(a2))
    {
      goto LABEL_28;
    }

    v15 = quasar::PTree::size(a1);
    if (v15 != quasar::PTree::size(a2))
    {
      goto LABEL_28;
    }

    v16 = quasar::PTree::begin(a1);
    v17 = quasar::PTree::begin(a2);
    if (v16 != quasar::PTree::end(a1))
    {
      v21 = 0;
      while (1)
      {
        v22 = v16 + v21;
        v23 = v17 + v21;
        if (v17 + v21 == quasar::PTree::end(a2))
        {
          break;
        }

        v24 = *(v22 + 23);
        if (v24 >= 0)
        {
          v25 = *(v22 + 23);
        }

        else
        {
          v25 = *(v22 + 8);
        }

        v26 = *(v23 + 23);
        v27 = v26;
        if ((v26 & 0x80u) != 0)
        {
          v26 = *(v23 + 8);
        }

        if (v25 != v26)
        {
          goto LABEL_28;
        }

        v28 = v24 >= 0 ? (v16 + v21) : *v22;
        v29 = v27 >= 0 ? (v17 + v21) : *v23;
        if (memcmp(v28, v29, v25) || !quasar::matchMetaData(v16 + v21 + 24, v17 + v21 + 24, a3))
        {
          goto LABEL_28;
        }

        v21 += 88;
        if (v16 + v21 == quasar::PTree::end(a1))
        {
          v17 += v21;
          v16 += v21;
          goto LABEL_24;
        }
      }

      v17 += v21;
      v16 += v21;
    }

LABEL_24:
    if (v16 != quasar::PTree::end(a1) || v17 != quasar::PTree::end(a2))
    {
      if (quasar::gLogLevel >= 1)
      {
LABEL_27:
        memset(v40, 0, sizeof(v40));
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v40);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "Logic error (this should not happen).", 37);
        quasar::QuasarErrorMessage::~QuasarErrorMessage(v40);
      }

LABEL_28:
      v14 = 0;
      return v14 & 1;
    }

LABEL_30:
    v14 = 1;
    return v14 & 1;
  }

  String = quasar::PTree::getString(a1);
  v7 = *(String + 23);
  if (v7 >= 0)
  {
    v8 = *(String + 23);
  }

  else
  {
    v8 = String[1];
  }

  v9 = *(a3 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a3 + 8);
  }

  if (v8 == v9)
  {
    if (v7 < 0)
    {
      String = *String;
    }

    v11 = v10 >= 0 ? a3 : *a3;
    if (!memcmp(String, v11, v8))
    {
      goto LABEL_30;
    }
  }

  DataType = quasar::PTree::getDataType(a1);
  if (DataType != quasar::PTree::getDataType(a2))
  {
    goto LABEL_28;
  }

  v13 = quasar::PTree::getDataType(a1);
  if (v13 <= 1)
  {
    if (v13)
    {
      if (v13 != 1)
      {
        return v14 & 1;
      }

      Double = quasar::PTree::getDouble(a1);
      v20 = Double == quasar::PTree::getDouble(a2);
    }

    else
    {
      v32 = quasar::PTree::getString(a1);
      v33 = quasar::PTree::getString(a2);
      v34 = *(v32 + 23);
      if (v34 >= 0)
      {
        v35 = *(v32 + 23);
      }

      else
      {
        v35 = *(v32 + 8);
      }

      v36 = *(v33 + 23);
      v37 = v36;
      if ((v36 & 0x80u) != 0)
      {
        v36 = *(v33 + 8);
      }

      if (v35 != v36)
      {
        goto LABEL_28;
      }

      if (v34 >= 0)
      {
        v38 = v32;
      }

      else
      {
        v38 = *v32;
      }

      if (v37 >= 0)
      {
        v39 = v33;
      }

      else
      {
        v39 = *v33;
      }

      v20 = memcmp(v38, v39, v35) == 0;
    }

    goto LABEL_67;
  }

  switch(v13)
  {
    case 2:
      v30 = quasar::PTree::getInt<int>(a1);
      v20 = v30 == quasar::PTree::getInt<int>(a2);
LABEL_67:
      v14 = v20;
      return v14 & 1;
    case 3:
      Bool = quasar::PTree::getBool(a1);
      v14 = Bool ^ quasar::PTree::getBool(a2) ^ 1;
      return v14 & 1;
    case 4:
      if (quasar::gLogLevel >= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_28;
  }

  return v14 & 1;
}

uint64_t quasar::SelectBlockOptions::options@<X0>(quasar::SelectBlockOptions *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 16;
  v3[1] = this + 176;
  v3[2] = this + 376;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::OptionValueBase *>::__init_with_size[abi:ne200100]<quasar::OptionValueBase * const*,quasar::OptionValueBase * const*>(a2, v3, &v4, 3uLL);
}

void quasar::SelectBlock::processBody(quasar::SelectBlock *this)
{
  Value = quasar::ProcessingInput::getValue((this + 552));
  if (*Value != Value[1])
  {
    v3 = quasar::ProcessingInput::getValue((this + 552));
    v4 = quasar::MetaInfo::get((*v3 + 256));
    v5 = quasar::OptionValue<std::string>::value(this + 3);
    quasar::PTree::getChildOptional(v4, v5);
  }

  v6 = *(*this - 24);
  std::string::basic_string[abi:ne200100]<0>(__p, "pass");
  v7 = quasar::ProcessingInput::getValue((this + 608));
  quasar::ProcessingBlock::send(this + v6, __p, v7, 0);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1B50B6B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::ProcessingInput::getValue(quasar::ProcessingInput *this)
{
  if ((*(this + 24) & 1) == 0 && quasar::gLogLevel >= 1)
  {
    memset(v8, 0, sizeof(v8));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v8);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "Input'", 6);
    v3 = *(this + 23);
    if (v3 >= 0)
    {
      v4 = this;
    }

    else
    {
      v4 = *this;
    }

    if (v3 >= 0)
    {
      v5 = *(this + 23);
    }

    else
    {
      v5 = *(this + 1);
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, v4, v5);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "' has no value set!", 19);
    quasar::QuasarErrorMessage::~QuasarErrorMessage(v8);
  }

  return this + 32;
}

void quasar::ConfiguredProcessingBlock<quasar::SelectBlockOptions>::setContextProvider(uint64_t a1, uint64_t *a2)
{
  v3 = (*(*a1 + 8))(a1);
  (**v3)(&v10);
  v4 = v10;
  v5 = v11;
  if (v10 != v11)
  {
    do
    {
      v6 = *v4;
      v7 = a2[1];
      v8 = *a2;
      v9 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      quasar::OptionValueBase::setContextProvider(v6, &v8);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      ++v4;
    }

    while (v4 != v5);
    v4 = v10;
  }

  if (v4)
  {
    v11 = v4;
    operator delete(v4);
  }
}

void sub_1B50B6D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void quasar::ProcessingBlock::compilationSpecs(void *a1@<X8>)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
}

void quasar::SelectBlock::~SelectBlock(quasar::SelectBlock *this)
{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 664));
}

{
  quasar::ProcessingBlock::~ProcessingBlock((v1 + 664));

  JUMPOUT(0x1B8C85350);
}

uint64_t quasar::SelectBlock::inputs@<X0>(quasar::SelectBlock *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 552;
  v3[1] = this + 608;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::ProcessingInput *>::__init_with_size[abi:ne200100]<quasar::ProcessingInput * const*,quasar::ProcessingInput * const*>(a2, v3, &v4, 2uLL);
}

uint64_t non-virtual thunk toquasar::SelectBlock::inputs@<X0>(quasar::SelectBlock *this@<X0>, void *a2@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = this + 8;
  v3[1] = this + 64;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return std::vector<quasar::ProcessingInput *>::__init_with_size[abi:ne200100]<quasar::ProcessingInput * const*,quasar::ProcessingInput * const*>(a2, v3, &v4, 2uLL);
}

void non-virtual thunk toquasar::SelectBlock::~SelectBlock(char **this)
{

  quasar::ProcessingBlock::~ProcessingBlock(this + 15);
}

{
  quasar::ProcessingBlock::~ProcessingBlock(this + 15);

  JUMPOUT(0x1B8C85350);
}

void virtual thunk toquasar::SelectBlock::~SelectBlock(quasar::SelectBlock *this)
{
  v2 = (v1 + 664);

  quasar::ProcessingBlock::~ProcessingBlock(v2);
}

{
  v1 = (this + *(*this - 24));
  quasar::ProcessingBlock::~ProcessingBlock(v1 + 83);

  JUMPOUT(0x1B8C85350);
}

void quasar::QuasarErrorMessage::~QuasarErrorMessage(std::locale *this)
{
  v2 = quasar::QuasarErrorMessage::logger;
  std::stringbuf::str();
  (v2)(&__p, this[33].__locale_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (getenv("QSR_CRASH_ON_WARN"))
  {
    if (!MEMORY[0x1B8C852F0]())
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::runtime_error::runtime_error(exception, &__p);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    abort();
  }

  v3 = MEMORY[0x1E69E54E8];
  v4 = *MEMORY[0x1E69E54E8];
  this->__locale_ = *MEMORY[0x1E69E54E8];
  *(this + *(v4 - 24)) = v3[3];
  this[1].__locale_ = (MEMORY[0x1E69E5548] + 16);
  if (SHIBYTE(this[11].__locale_) < 0)
  {
    operator delete(this[9].__locale_);
  }

  this[1].__locale_ = (MEMORY[0x1E69E5538] + 16);
  std::locale::~locale(this + 2);
  std::ostream::~ostream();
  MEMORY[0x1B8C85200](&this[14]);
}