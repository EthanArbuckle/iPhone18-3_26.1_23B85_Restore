@interface CLVisionNotification
- (CLVisionNotification)init;
- (CLVisionNotification)initWithARSessionState:(unint64_t)a3;
- (CLVisionNotification)initWithCoder:(id)a3;
- (CLVisionNotification)initWithSerializedVIOEstimation:()basic_string<char;
- (CLVisionNotification)initWithSerializedVLLocalizationResult:()basic_string<char;
- (basic_string<char,)serializedVIOEstimation;
- (basic_string<char,)serializedVLLocalizationResult;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLVisionNotification

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  return self;
}

- (CLVisionNotification)init
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, v2, v3, v4, a2);

  return 0;
}

- (CLVisionNotification)initWithARSessionState:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = CLVisionNotification;
  v4 = [(CLVisionNotification *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_arSessionState = a3;
    v4->_notificationType = 0;
    v6 = v4;
  }

  return v5;
}

- (CLVisionNotification)initWithSerializedVIOEstimation:()basic_string<char
{
  v8.receiver = self;
  v8.super_class = CLVisionNotification;
  v4 = [(CLVisionNotification *)&v8 init];
  v5 = v4;
  if (v4)
  {
    std::string::operator=(v4 + 1, a3);
    v5->_notificationType = 1;
    v6 = v5;
  }

  return v5;
}

- (CLVisionNotification)initWithSerializedVLLocalizationResult:()basic_string<char
{
  v8.receiver = self;
  v8.super_class = CLVisionNotification;
  v4 = [(CLVisionNotification *)&v8 init];
  v5 = v4;
  if (v4)
  {
    std::string::operator=(v4 + 2, a3);
    v5->_notificationType = 2;
    v6 = v5;
  }

  return v5;
}

- (CLVisionNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v55.receiver = self;
  v55.super_class = CLVisionNotification;
  v6 = [(CLVisionNotification *)&v55 init];
  if (v6)
  {
    v6->_arSessionState = objc_msgSend_decodeIntForKey_(v4, v5, v7, v8, v9, @"arSessionState");
    v6->_notificationType = objc_msgSend_decodeIntForKey_(v4, v10, v11, v12, v13, @"notificationType");
    v14 = objc_opt_class();
    v19 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v15, v16, v17, v18, v14, @"vioEstimation");
    v20 = v19;
    v25 = objc_msgSend_bytes(v20, v21, v22, v23, v24);
    v30 = objc_msgSend_length(v19, v26, v27, v28, v29);
    v31 = v30;
    if (v30 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_245A3C1B4();
    }

    if (v30 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v54) = v30;
    if (v30)
    {
      memmove(&__dst, v25, v30);
      *(&__dst + v31) = 0;
      if ((*(&v6->_serializedVIOEstimation.__rep_.__l + 23) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      if ((*(&v6->_serializedVIOEstimation.__rep_.__l + 23) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    operator delete(v6->_serializedVIOEstimation.__rep_.__l.__data_);
LABEL_6:
    *v6->_serializedVIOEstimation.__rep_.__s.__data_ = __dst;
    *(&v6->_serializedVIOEstimation.__rep_.__l + 2) = v54;
    v32 = objc_opt_class();
    v37 = objc_msgSend_decodeObjectOfClass_forKey_(v4, v33, v34, v35, v36, v32, @"vlLocalizationResult");

    v38 = v37;
    v39 = v37;
    v44 = objc_msgSend_bytes(v38, v40, v41, v42, v43);
    v49 = objc_msgSend_length(v37, v45, v46, v47, v48);
    v50 = v49;
    if (v49 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_245A3C1B4();
    }

    if (v49 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v54) = v49;
    if (v49)
    {
      memmove(&__dst, v44, v49);
      *(&__dst + v50) = 0;
      if ((*(&v6->_serializedVLLocalizationResult.__rep_.__l + 23) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      if ((*(&v6->_serializedVLLocalizationResult.__rep_.__l + 23) & 0x80000000) == 0)
      {
LABEL_10:
        *v6->_serializedVLLocalizationResult.__rep_.__s.__data_ = __dst;
        *(&v6->_serializedVLLocalizationResult.__rep_.__l + 2) = v54;
        v51 = v6;

        goto LABEL_11;
      }
    }

    operator delete(v6->_serializedVLLocalizationResult.__rep_.__l.__data_);
    goto LABEL_10;
  }

LABEL_11:

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v32 = a3;
  objc_msgSend_encodeInt_forKey_(v32, v4, v5, v6, v7, LODWORD(self->_arSessionState), @"arSessionState");
  objc_msgSend_encodeInt_forKey_(v32, v8, v9, v10, v11, self->_notificationType, @"notificationType");
  v16 = *(&self->_serializedVIOEstimation.__rep_.__l + 23);
  if (v16 < 0)
  {
    objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v12, v13, v14, v15, self->_serializedVIOEstimation.__rep_.__l.__data_, self->_serializedVIOEstimation.__rep_.__l.__size_);
  }

  else
  {
    objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v12, v13, v14, v15, &self->_serializedVIOEstimation, v16);
  }
  v17 = ;
  objc_msgSend_encodeObject_forKey_(v32, v18, v19, v20, v21, v17, @"vioEstimation");

  v26 = *(&self->_serializedVLLocalizationResult.__rep_.__l + 23);
  if (v26 < 0)
  {
    objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v22, v23, v24, v25, self->_serializedVLLocalizationResult.__rep_.__l.__data_, self->_serializedVLLocalizationResult.__rep_.__l.__size_);
  }

  else
  {
    objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v22, v23, v24, v25, &self->_serializedVLLocalizationResult, v26);
  }
  v27 = ;
  objc_msgSend_encodeObject_forKey_(v32, v28, v29, v30, v31, v27, @"vlLocalizationResult");
}

- (basic_string<char,)serializedVIOEstimation
{
  if (*(&result[1].__rep_.__l + 23) < 0)
  {
    return sub_245A3C288(retstr, result[1].__rep_.__l.__data_, result[1].__rep_.__l.__size_);
  }

  *retstr = result[1];
  return result;
}

- (basic_string<char,)serializedVLLocalizationResult
{
  if (*(&result[2].__rep_.__l + 23) < 0)
  {
    return sub_245A3C288(retstr, result[2].__rep_.__l.__data_, result[2].__rep_.__l.__size_);
  }

  *retstr = result[2];
  return result;
}

@end