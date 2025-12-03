@interface CLPOutdoorEstimatorLogEntryNotification
- (CLPOutdoorEstimatorLogEntryNotification)init;
- (CLPOutdoorEstimatorLogEntryNotification)initWithCoder:(id)coder;
- (CLPOutdoorEstimatorLogEntryNotification)initWithSerializedOutdoorEstimatorLogEntry:()basic_string<char;
- (basic_string<char,)serializedOutdoorEstimatorLogEntry;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLPOutdoorEstimatorLogEntryNotification

- (id).cxx_construct
{
  *(self + 8) = 0uLL;
  *(self + 3) = 0;
  return self;
}

- (CLPOutdoorEstimatorLogEntryNotification)init
{
  objc_msgSend_doesNotRecognizeSelector_(self, a2, v2, v3, v4, a2);

  return 0;
}

- (CLPOutdoorEstimatorLogEntryNotification)initWithSerializedOutdoorEstimatorLogEntry:()basic_string<char
{
  v8.receiver = self;
  v8.super_class = CLPOutdoorEstimatorLogEntryNotification;
  v4 = [(CLPOutdoorEstimatorLogEntryNotification *)&v8 init];
  v5 = v4;
  if (v4)
  {
    std::string::operator=((v4 + 8), a3);
    v6 = v5;
  }

  return v5;
}

- (CLPOutdoorEstimatorLogEntryNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = CLPOutdoorEstimatorLogEntryNotification;
  v5 = [(CLPOutdoorEstimatorLogEntryNotification *)&v28 init];
  if (v5)
  {
    v6 = objc_opt_class();
    v11 = objc_msgSend_decodeObjectOfClass_forKey_(coderCopy, v7, v8, v9, v10, v6, @"outdoorEstimatorLogEntry");
    v12 = v11;
    v17 = objc_msgSend_bytes(v12, v13, v14, v15, v16);
    v22 = objc_msgSend_length(v11, v18, v19, v20, v21);
    v23 = v22;
    if (v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_245A3C1B4();
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v27) = v22;
    if (v22)
    {
      memmove(&__dst, v17, v22);
      *(&__dst + v23) = 0;
      if ((*(&v5->_serializedOutdoorEstimatorLogEntry.__rep_.__l + 23) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }
    }

    else
    {
      LOBYTE(__dst) = 0;
      if ((*(&v5->_serializedOutdoorEstimatorLogEntry.__rep_.__l + 23) & 0x80000000) == 0)
      {
LABEL_6:
        *v5->_serializedOutdoorEstimatorLogEntry.__rep_.__s.__data_ = __dst;
        *(&v5->_serializedOutdoorEstimatorLogEntry.__rep_.__l + 2) = v27;
        v24 = v5;

        goto LABEL_7;
      }
    }

    operator delete(v5->_serializedOutdoorEstimatorLogEntry.__rep_.__l.__data_);
    goto LABEL_6;
  }

LABEL_7:

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8 = *(&self->_serializedOutdoorEstimatorLogEntry.__rep_.__l + 23);
  if (v8 < 0)
  {
    objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v4, v5, v6, v7, self->_serializedOutdoorEstimatorLogEntry.__rep_.__l.__data_, self->_serializedOutdoorEstimatorLogEntry.__rep_.__l.__size_);
  }

  else
  {
    objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v4, v5, v6, v7, &self->_serializedOutdoorEstimatorLogEntry, v8);
  }
  v9 = ;
  objc_msgSend_encodeObject_forKey_(coderCopy, v10, v11, v12, v13, v9, @"outdoorEstimatorLogEntry");
}

- (basic_string<char,)serializedOutdoorEstimatorLogEntry
{
  if (result[1].__rep_.__s.__data_[7] < 0)
  {
    return sub_245A3C288(retstr, result->__rep_.__l.__size_, *(&result->__rep_.__l + 2));
  }

  *retstr = *(result + 8);
  return result;
}

@end