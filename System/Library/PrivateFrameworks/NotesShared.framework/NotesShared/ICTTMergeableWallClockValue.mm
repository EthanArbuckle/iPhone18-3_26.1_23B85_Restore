@interface ICTTMergeableWallClockValue
+ (BOOL)canParseData:(id)data;
+ (id)extractContentsFromBoxedValue:(const void *)value;
- (ICTTMergeableWallClockValue)initWithArchive:(const void *)archive;
- (ICTTMergeableWallClockValue)initWithData:(id)data;
- (ICTTMergeableWallClockValue)initWithValue:(id)value timestamp:(id)timestamp;
- (id)description;
- (id)serialize;
- (unint64_t)merge:(id)merge;
- (void)saveToArchive:(void *)archive;
- (void)setValue:(id)value;
@end

@implementation ICTTMergeableWallClockValue

- (ICTTMergeableWallClockValue)initWithValue:(id)value timestamp:(id)timestamp
{
  valueCopy = value;
  timestampCopy = timestamp;
  v14.receiver = self;
  v14.super_class = ICTTMergeableWallClockValue;
  v8 = [(ICTTMergeableWallClockValue *)&v14 init];
  if (v8)
  {
    v9 = [valueCopy copyWithZone:0];
    value = v8->_value;
    v8->_value = v9;

    if (timestampCopy)
    {
      v11 = timestampCopy;
    }

    else
    {
      v11 = [MEMORY[0x277CBEAA8] now];
    }

    timestamp = v8->_timestamp;
    v8->_timestamp = v11;
  }

  return v8;
}

- (void)setValue:(id)value
{
  valueCopy = value;
  value = [(ICTTMergeableWallClockValue *)self value];
  v5 = [value isEqual:valueCopy];

  if ((v5 & 1) == 0)
  {
    v6 = NSStringFromSelector(sel_value);
    [(ICTTMergeableWallClockValue *)self willChangeValueForKey:v6];

    v7 = [valueCopy copyWithZone:0];
    value = self->_value;
    self->_value = v7;

    v9 = [MEMORY[0x277CBEAA8] now];
    timestamp = self->_timestamp;
    self->_timestamp = v9;

    v11 = NSStringFromSelector(sel_value);
    [(ICTTMergeableWallClockValue *)self didChangeValueForKey:v11];
  }
}

- (unint64_t)merge:(id)merge
{
  mergeCopy = merge;
  timestamp = [(ICTTMergeableWallClockValue *)self timestamp];
  timestamp2 = [mergeCopy timestamp];
  v7 = [timestamp compare:timestamp2];

  if (v7 == -1)
  {
    value = [mergeCopy value];
    [(ICTTMergeableWallClockValue *)self setValue:value];

    timestamp3 = [mergeCopy timestamp];
    [(ICTTMergeableWallClockValue *)self setTimestamp:timestamp3];

    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (ICTTMergeableWallClockValue)initWithData:(id)data
{
  dataCopy = data;
  topotext::WallClockMergeableValue::WallClockMergeableValue(v10);
  bytes = [dataCopy bytes];
  v6 = ICTTBoundedCheckedCastNSUIntegerToUInt32([dataCopy length]);
  if (google::protobuf::MessageLite::ParseFromArray(v10, bytes, v6))
  {
    self = [(ICTTMergeableWallClockValue *)self initWithArchive:v10];
    selfCopy = self;
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ICTTMergeableWallClockValue initWithData:v8];
    }

    selfCopy = 0;
  }

  topotext::WallClockMergeableValue::~WallClockMergeableValue(v10);

  return selfCopy;
}

- (ICTTMergeableWallClockValue)initWithArchive:(const void *)archive
{
  if ((~*(archive + 8) & 3) != 0)
  {
    selfCopy = 0;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = *(archive + 6);
    if (!v7)
    {
      v7 = *(topotext::WallClockMergeableValue::default_instance(v5) + 48);
    }

    v8 = [(topotext::WallClockMergeableValue *)v6 extractContentsFromBoxedValue:v7];
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(archive + 5)];
    self = [(ICTTMergeableWallClockValue *)self initWithValue:v8 timestamp:v9];

    selfCopy = self;
  }

  return selfCopy;
}

+ (id)extractContentsFromBoxedValue:(const void *)value
{
  v4 = 0;
  v5 = *(value + 12);
  if (v5 <= 4)
  {
    switch(v5)
    {
      case 1:
        v7 = [MEMORY[0x277CCABB0] numberWithLongLong:*(value + 5)];
        break;
      case 3:
        v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(value + 5)];
        break;
      case 4:
        v6 = *(value + 5);
        if (*(v6 + 23) < 0)
        {
          v6 = *v6;
        }

        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
        break;
      default:
        goto LABEL_42;
    }

    goto LABEL_41;
  }

  switch(v5)
  {
    case 5:
      v16 = objc_alloc(MEMORY[0x277CBEA90]);
      v17 = *(value + 12);
      if (v17 == 5)
      {
        v18 = *(value + 5);
      }

      else
      {
        v18 = google::protobuf::internal::empty_string_;
        if (!google::protobuf::internal::empty_string_)
        {
          versioned_document::Version::SharedCtor();
        }
      }

      if (*(v18 + 23) < 0)
      {
        v18 = *v18;
      }

      if (v17 == 5)
      {
        v21 = *(value + 5);
      }

      else
      {
        v21 = google::protobuf::internal::empty_string_;
        if (!google::protobuf::internal::empty_string_)
        {
          versioned_document::Version::SharedCtor();
        }
      }

      v22 = *(v21 + 23);
      if (v22 < 0)
      {
        v22 = *(v21 + 8);
      }

      v7 = [v16 initWithBytes:v18 length:v22];
      goto LABEL_41;
    case 6:
      v19 = objc_alloc(MEMORY[0x277CCAD78]);
      if (*(value + 12) == 6)
      {
        v20 = *(value + 5);
      }

      else
      {
        v20 = google::protobuf::internal::empty_string_;
        if (!google::protobuf::internal::empty_string_)
        {
          versioned_document::Version::SharedCtor();
        }
      }

      if (*(v20 + 23) < 0)
      {
        v20 = *v20;
      }

      v7 = [v19 initWithUUIDBytes:v20];
LABEL_41:
      v4 = v7;
      break;
    case 7:
      v8 = objc_alloc(MEMORY[0x277CBEA90]);
      v9 = topotext::BoxedValue::jsonvalue(value);
      if (*(v9 + 23) >= 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = *v9;
      }

      v11 = topotext::BoxedValue::jsonvalue(value);
      if (*(v11 + 23) >= 0)
      {
        v12 = *(v11 + 23);
      }

      else
      {
        v12 = *(v11 + 8);
      }

      v13 = [v8 initWithBytes:v10 length:v12];
      v24 = 0;
      v4 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v13 options:0 error:&v24];
      v14 = v24;
      if (v14)
      {
        v15 = os_log_create("com.apple.notes", "Topotext");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [(ICTTMergeableWallClockValue *)v14 extractContentsFromBoxedValue:v15];
        }
      }

      break;
  }

LABEL_42:

  return v4;
}

- (id)serialize
{
  [(ICTTMergeableWallClockValue *)self saveToArchive:v6, topotext::WallClockMergeableValue::WallClockMergeableValue(v6)];
  v2 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:topotext::WallClockMergeableValue::ByteSize(v6)];
  mutableBytes = [v2 mutableBytes];
  v4 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v2 length]);
  google::protobuf::MessageLite::SerializeToArray(v6, mutableBytes, v4);
  topotext::WallClockMergeableValue::~WallClockMergeableValue(v6);

  return v2;
}

- (void)saveToArchive:(void *)archive
{
  v42 = *MEMORY[0x277D85DE8];
  *(archive + 8) |= 2u;
  v5 = *(archive + 6);
  if (!v5)
  {
    operator new();
  }

  value = [(ICTTMergeableWallClockValue *)self value];

  if (value)
  {
    value2 = [(ICTTMergeableWallClockValue *)self value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    value3 = [(ICTTMergeableWallClockValue *)self value];
    v10 = value3;
    if (isKindOfClass)
    {
      if (CFNumberIsFloatType(value3))
      {
        [(__CFNumber *)v10 doubleValue];
        v12 = v11;
        if (*(v5 + 48) != 3)
        {
          topotext::BoxedValue::clear_contents(v5);
          *(v5 + 48) = 3;
        }

        *(v5 + 40) = v12;
      }

      else
      {
        integerValue = [(__CFNumber *)v10 integerValue];
        if (*(v5 + 48) != 1)
        {
          topotext::BoxedValue::clear_contents(v5);
          *(v5 + 48) = 1;
        }

        *(v5 + 40) = integerValue;
      }

      goto LABEL_51;
    }

    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    value4 = [(ICTTMergeableWallClockValue *)self value];
    v15 = value4;
    if (v13)
    {
      uTF8String = [value4 UTF8String];
      v17 = strlen(uTF8String);
      if (v17 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v18 = v17;
      if (v17 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v17;
      if (v17)
      {
        memmove(&__dst, uTF8String, v17);
      }

      __dst.__r_.__value_.__s.__data_[v18] = 0;
      if (*(v5 + 48) != 4)
      {
        topotext::BoxedValue::clear_contents(v5);
        *(v5 + 48) = 4;
        operator new();
      }

      std::string::operator=(*(v5 + 40), &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

LABEL_28:

      goto LABEL_51;
    }

    objc_opt_class();
    v19 = objc_opt_isKindOfClass();

    value5 = [(ICTTMergeableWallClockValue *)self value];
    v15 = value5;
    if (v19)
    {
      std::string::basic_string[abi:ne200100](&__dst, [value5 bytes], objc_msgSend(value5, "length"));
      if (*(v5 + 48) != 5)
      {
        topotext::BoxedValue::clear_contents(v5);
        *(v5 + 48) = 5;
        operator new();
      }

      std::string::operator=(*(v5 + 40), &__dst);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      goto LABEL_28;
    }

    objc_opt_class();
    v22 = objc_opt_isKindOfClass();

    if (v22)
    {
      value6 = [(ICTTMergeableWallClockValue *)self value];
      *&__dst.__r_.__value_.__l.__data_ = 0uLL;
      [value6 getUUIDBytes:&__dst];
      if (*(v5 + 48) != 6)
      {
        topotext::BoxedValue::clear_contents(v5);
        *(v5 + 48) = 6;
        operator new();
      }

      v24 = *(v5 + 40);
      if (*(v24 + 23) < 0)
      {
        v24[1] = 16;
        v24 = *v24;
      }

      else
      {
        *(v24 + 23) = 16;
      }

      *v24 = *&__dst.__r_.__value_.__l.__data_;
      *(v24 + 16) = 0;
    }

    else
    {
      v25 = MEMORY[0x277CCAAA0];
      value7 = [(ICTTMergeableWallClockValue *)self value];
      LODWORD(v25) = [v25 isValidJSONObject:value7];

      if (v25)
      {
        v27 = MEMORY[0x277CCAAA0];
        value8 = [(ICTTMergeableWallClockValue *)self value];
        v40 = 0;
        v29 = [v27 dataWithJSONObject:value8 options:0 error:&v40];
        v30 = v40;

        if (!v29 || v30)
        {
          v34 = os_log_create("com.apple.notes", "Topotext");
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            value9 = [(ICTTMergeableWallClockValue *)self value];
            v38 = objc_opt_class();
            LODWORD(__dst.__r_.__value_.__l.__data_) = 138412546;
            *(__dst.__r_.__value_.__r.__words + 4) = v38;
            WORD2(__dst.__r_.__value_.__r.__words[1]) = 2112;
            *(&__dst.__r_.__value_.__r.__words[1] + 6) = v30;
            v39 = v38;
            _os_log_error_impl(&dword_214D51000, v34, OS_LOG_TYPE_ERROR, "Error converting ICTTMergeableWallClockValue: %@ to JSON: %@", &__dst, 0x16u);
          }
        }

        else
        {
          v31 = v29;
          std::string::basic_string[abi:ne200100](&__dst, [v29 bytes], objc_msgSend(v29, "length"));
          topotext::BoxedValue::set_jsonvalue(v5, &__dst);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }
      }

      else
      {
        v32 = MEMORY[0x277D36198];
        value10 = [(ICTTMergeableWallClockValue *)self value];
        [v32 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICTTMergeableWallClockValue saveToArchive:]" simulateCrash:1 showAlert:0 format:{@"Unsupported contents type for boxing in ICTTMergeableWallClockValue: %@", objc_opt_class()}];
      }
    }
  }

LABEL_51:
  timestamp = [(ICTTMergeableWallClockValue *)self timestamp];
  [timestamp timeIntervalSinceReferenceDate];
  *(archive + 8) |= 1u;
  *(archive + 5) = v36;
}

+ (BOOL)canParseData:(id)data
{
  dataCopy = data;
  topotext::WallClockMergeableValue::WallClockMergeableValue(v7);
  bytes = [dataCopy bytes];
  v5 = ICTTBoundedCheckedCastNSUIntegerToUInt32([dataCopy length]);
  LOBYTE(bytes) = google::protobuf::MessageLite::ParseFromArray(v7, bytes, v5);
  topotext::WallClockMergeableValue::~WallClockMergeableValue(v7);

  return bytes;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  timestamp = [(ICTTMergeableWallClockValue *)self timestamp];
  [timestamp timeIntervalSinceReferenceDate];
  v7 = v6;
  value = [(ICTTMergeableWallClockValue *)self value];
  v9 = [v3 stringWithFormat:@"<%@: %p, timestamp: %f, value: %@>", v4, self, v7, value];

  return v9;
}

+ (void)extractContentsFromBoxedValue:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Error parsing JSON for ICTTMergeableWallClockValue: %@", &v2, 0xCu);
}

@end