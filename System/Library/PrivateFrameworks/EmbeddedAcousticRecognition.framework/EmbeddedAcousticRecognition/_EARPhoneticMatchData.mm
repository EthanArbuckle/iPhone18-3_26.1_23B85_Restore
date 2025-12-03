@interface _EARPhoneticMatchData
- (BOOL)appendData:(id)data prior:(float)prior;
- (_EARPhoneticMatchData)initWithFeedType:(int64_t)type jsonConfigFile:(id)file;
- (id).cxx_construct;
- (int)convertFeedType:(int64_t)type;
- (shared_ptr<quasar::DataFeed>)dataFeed;
- (void)writeTsv:(id)tsv;
@end

@implementation _EARPhoneticMatchData

- (int)convertFeedType:(int64_t)type
{
  if ((type - 1) < 0xD)
  {
    return type;
  }

  else
  {
    return 0;
  }
}

- (_EARPhoneticMatchData)initWithFeedType:(int64_t)type jsonConfigFile:(id)file
{
  v9 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  v7.receiver = self;
  v7.super_class = _EARPhoneticMatchData;
  if ([(_EARPhoneticMatchData *)&v7 init])
  {
    quasar::SystemConfig::SystemConfig(v8);
  }

  return 0;
}

- (void)writeTsv:(id)tsv
{
  tsvCopy = tsv;
  v5 = tsvCopy;
  ptr = self->_dataFeed.__ptr_;
  if (tsvCopy)
  {
    [tsvCopy ear_toString];
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v8 = 0;
  }

  quasar::DataFeed::writeTSV(ptr, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

- (BOOL)appendData:(id)data prior:(float)prior
{
  dataCopy = data;
  v21[0] = 0;
  v21[1] = 0;
  v20 = v21;
  quasar::DataFeedItem::setPrior(&v19, prior);
  quasar::DataFeed::getFieldNames(self->_dataFeed.__ptr_, v18);
  v7 = [dataCopy count];
  if (v7 == 0xAAAAAAAAAAAAAAABLL * ((v18[1] - v18[0]) >> 3))
  {
    v8 = 0;
    for (i = 0; [dataCopy count] > i; ++i)
    {
      v10 = [dataCopy objectAtIndexedSubscript:i];
      v11 = [v10 length];

      if (!v11)
      {
        goto LABEL_11;
      }

      v12 = v18[0];
      v13 = [dataCopy objectAtIndexedSubscript:i];
      v14 = v13;
      if (v13)
      {
        [v13 ear_toString];
      }

      else
      {
        memset(&__p, 0, sizeof(__p));
      }

      quasar::DataFeedItem::setField(&v19, (v12 + v8), &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v8 += 24;
    }

    appended = quasar::DataFeed::appendItem(self->_dataFeed.__ptr_, &v19);
  }

  else
  {
LABEL_11:
    appended = 0;
  }

  __p.__r_.__value_.__r.__words[0] = v18;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(&v20, v21[0]);

  return appended;
}

- (shared_ptr<quasar::DataFeed>)dataFeed
{
  cntrl = self->_dataFeed.__cntrl_;
  *v2 = self->_dataFeed.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end