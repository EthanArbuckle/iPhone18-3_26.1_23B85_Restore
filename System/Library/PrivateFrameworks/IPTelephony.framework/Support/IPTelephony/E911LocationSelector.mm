@interface E911LocationSelector
- (id).cxx_construct;
- (void)dealloc;
- (void)locationSelectorDidSelectLocation:(id)location;
@end

@implementation E911LocationSelector

- (void)dealloc
{
  bundle = self->_bundle;
  if (bundle)
  {
    self->_bundle = 0;
  }

  config = self->_config;
  if (config)
  {
    self->_config = 0;
  }

  cntrl = self->_delegate.__cntrl_;
  self->_delegate.__ptr_ = 0;
  self->_delegate.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_weak(cntrl);
  }

  location = self->_location;
  if (location)
  {
    [(CLEmergencyLocationSelector *)location stopSession];
    v7 = self->_location;
    self->_location = 0;
  }

  v8.receiver = self;
  v8.super_class = E911LocationSelector;
  [(E911LocationSelector *)&v8 dealloc];
}

- (void)locationSelectorDidSelectLocation:(id)location
{
  v56 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  v44 = 0u;
  v45 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v46 = 3000.0;
  v53 = 0;
  ims::getStaticLoggerFor("ims.location", buf);
  v5 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E4C3F000, v5, OS_LOG_TYPE_DEFAULT, "updated location available", buf, 2u);
  }

  if (locationCopy)
  {
    [locationCopy coordinate];
    *&v44 = v6;
    [locationCopy coordinate];
    *(&v44 + 1) = v7;
    [locationCopy horizontalAccuracy];
    *&v45 = v8;
    timestamp = [locationCopy timestamp];
    [timestamp timeIntervalSince1970];
    *&v47 = v10;

    [locationCopy ellipsoidalAltitude];
    v12 = v11;
    v43 = v11;
    [locationCopy verticalAccuracy];
    v14 = v13;
    v42 = v13;
    memset(buf, 0, sizeof(buf));
    v41 = 0;
    std::string::basic_string[abi:ne200100]<0>(buf, "invalid");
    ims::getStaticLoggerFor("ims.location", v55);
    v15 = *&v55[8];
    ctu::OsLogContext::~OsLogContext(v55);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v55 = 134218240;
      *&v55[4] = v44;
      *&v55[12] = 2048;
      *&v55[14] = *(&v44 + 1);
      _os_log_impl(&dword_1E4C3F000, v15, OS_LOG_TYPE_DEFAULT, "selected valid location %lf, %lf", v55, 0x16u);
    }

    if (v14 <= 0.0)
    {
      memset(v55, 0, sizeof(v55));
      ims::detail::to_string_impl<double,std::integral_constant<BOOL,false>>::operator()();
    }

    *(&v45 + 1) = v12;
    v46 = v14;
    v39.__r_.__value_.__r.__words[0] = 0x3FF0000000000000;
    *v54 = 1.0;
    confidence = self->_confidence;
    if (CLGetUncertaintyScaleFactors())
    {
      *&v45 = *&v39.__r_.__value_.__l.__data_ * *&v45;
      v46 = *v54 * v46;
    }

    ims::getStaticLoggerFor("ims.location", v55);
    v18 = *&v55[8];
    ctu::OsLogContext::~OsLogContext(v55);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v55 = 134217984;
      *&v55[4] = v47;
      _os_log_impl(&dword_1E4C3F000, v18, OS_LOG_TYPE_DEFAULT, "timestamp is : %lf", v55, 0xCu);
    }

    ims::getStaticLoggerFor("ims.location", v55);
    v19 = *&v55[8];
    ctu::OsLogContext::~OsLogContext(v55);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      [locationCopy trustedTimestamp];
      *v55 = 134217984;
      *&v55[4] = v20;
      _os_log_impl(&dword_1E4C3F000, v19, OS_LOG_TYPE_DEFAULT, "absolute timestamp is : %lf", v55, 0xCu);
    }

    [locationCopy trustedTimestamp];
    if (v21 > 0.0)
    {
      v22 = MEMORY[0x1E695DF00];
      [locationCopy trustedTimestamp];
      v23 = [v22 dateWithTimeIntervalSinceReferenceDate:?];
      [v23 timeIntervalSince1970];
      *&v47 = v24;
    }

    if (SHIBYTE(v41) < 0)
    {
      operator delete(*buf);
    }
  }

  cntrl = self->_delegate.__cntrl_;
  if (cntrl)
  {
    v26 = std::__shared_weak_count::lock(cntrl);
    if (v26)
    {
      v27 = v26;
      ptr = self->_delegate.__ptr_;
      if (ptr)
      {
        ims::LocationInfo::LocationInfo(v30, &v44);
        (*(*ptr + 16))(ptr, v30);
        if (v38 < 0)
        {
          operator delete(__p);
        }

        if (v36 < 0)
        {
          operator delete(v35);
        }

        if (v34 < 0)
        {
          operator delete(v33);
        }

        if (v32 < 0)
        {
          operator delete(v31);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }
  }

  if (SHIBYTE(v53) < 0)
  {
    operator delete(v52);
  }

  if (SHIBYTE(v51) < 0)
  {
    operator delete(*(&v50 + 1));
  }

  if (SBYTE7(v50) < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(*(&v47 + 1));
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end