@interface ICTTMergeableWallClockValue
+ (BOOL)canParseData:(id)a3;
+ (id)extractContentsFromBoxedValue:(const void *)a3;
- (ICTTMergeableWallClockValue)initWithArchive:(const void *)a3;
- (ICTTMergeableWallClockValue)initWithData:(id)a3;
- (ICTTMergeableWallClockValue)initWithValue:(id)a3 timestamp:(id)a4;
- (id)description;
- (id)serialize;
- (unint64_t)merge:(id)a3;
- (void)saveToArchive:(void *)a3;
- (void)setValue:(id)a3;
@end

@implementation ICTTMergeableWallClockValue

- (ICTTMergeableWallClockValue)initWithValue:(id)a3 timestamp:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ICTTMergeableWallClockValue;
  v8 = [(ICTTMergeableWallClockValue *)&v14 init];
  if (v8)
  {
    v9 = [v6 copyWithZone:0];
    value = v8->_value;
    v8->_value = v9;

    if (v7)
    {
      v11 = v7;
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

- (void)setValue:(id)a3
{
  v12 = a3;
  v4 = [(ICTTMergeableWallClockValue *)self value];
  v5 = [v4 isEqual:v12];

  if ((v5 & 1) == 0)
  {
    v6 = NSStringFromSelector(sel_value);
    [(ICTTMergeableWallClockValue *)self willChangeValueForKey:v6];

    v7 = [v12 copyWithZone:0];
    value = self->_value;
    self->_value = v7;

    v9 = [MEMORY[0x277CBEAA8] now];
    timestamp = self->_timestamp;
    self->_timestamp = v9;

    v11 = NSStringFromSelector(sel_value);
    [(ICTTMergeableWallClockValue *)self didChangeValueForKey:v11];
  }
}

- (unint64_t)merge:(id)a3
{
  v4 = a3;
  v5 = [(ICTTMergeableWallClockValue *)self timestamp];
  v6 = [v4 timestamp];
  v7 = [v5 compare:v6];

  if (v7 == -1)
  {
    v9 = [v4 value];
    [(ICTTMergeableWallClockValue *)self setValue:v9];

    v10 = [v4 timestamp];
    [(ICTTMergeableWallClockValue *)self setTimestamp:v10];

    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

- (ICTTMergeableWallClockValue)initWithData:(id)a3
{
  v4 = a3;
  topotext::WallClockMergeableValue::WallClockMergeableValue(v10);
  v5 = [v4 bytes];
  v6 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v4 length]);
  if (google::protobuf::MessageLite::ParseFromArray(v10, v5, v6))
  {
    self = [(ICTTMergeableWallClockValue *)self initWithArchive:v10];
    v7 = self;
  }

  else
  {
    v8 = os_log_create("com.apple.notes", "Topotext");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [ICTTMergeableWallClockValue initWithData:v8];
    }

    v7 = 0;
  }

  topotext::WallClockMergeableValue::~WallClockMergeableValue(v10);

  return v7;
}

- (ICTTMergeableWallClockValue)initWithArchive:(const void *)a3
{
  if ((~*(a3 + 8) & 3) != 0)
  {
    v10 = 0;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5;
    v7 = *(a3 + 6);
    if (!v7)
    {
      v7 = *(topotext::WallClockMergeableValue::default_instance(v5) + 48);
    }

    v8 = [(topotext::WallClockMergeableValue *)v6 extractContentsFromBoxedValue:v7];
    v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:*(a3 + 5)];
    self = [(ICTTMergeableWallClockValue *)self initWithValue:v8 timestamp:v9];

    v10 = self;
  }

  return v10;
}

+ (id)extractContentsFromBoxedValue:(const void *)a3
{
  v4 = 0;
  v5 = *(a3 + 12);
  if (v5 <= 4)
  {
    switch(v5)
    {
      case 1:
        v7 = [MEMORY[0x277CCABB0] numberWithLongLong:*(a3 + 5)];
        break;
      case 3:
        v7 = [MEMORY[0x277CCABB0] numberWithDouble:*(a3 + 5)];
        break;
      case 4:
        v6 = *(a3 + 5);
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
      v17 = *(a3 + 12);
      if (v17 == 5)
      {
        v18 = *(a3 + 5);
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
        v21 = *(a3 + 5);
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
      if (*(a3 + 12) == 6)
      {
        v20 = *(a3 + 5);
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
      v9 = topotext::BoxedValue::jsonvalue(a3);
      if (*(v9 + 23) >= 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = *v9;
      }

      v11 = topotext::BoxedValue::jsonvalue(a3);
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
  v3 = [v2 mutableBytes];
  v4 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v2 length]);
  google::protobuf::MessageLite::SerializeToArray(v6, v3, v4);
  topotext::WallClockMergeableValue::~WallClockMergeableValue(v6);

  return v2;
}

- (void)saveToArchive:(void *)a3
{
  v42 = *MEMORY[0x277D85DE8];
  *(a3 + 8) |= 2u;
  v5 = *(a3 + 6);
  if (!v5)
  {
    operator new();
  }

  v6 = [(ICTTMergeableWallClockValue *)self value];

  if (v6)
  {
    v7 = [(ICTTMergeableWallClockValue *)self value];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    v9 = [(ICTTMergeableWallClockValue *)self value];
    v10 = v9;
    if (isKindOfClass)
    {
      if (CFNumberIsFloatType(v9))
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
        v21 = [(__CFNumber *)v10 integerValue];
        if (*(v5 + 48) != 1)
        {
          topotext::BoxedValue::clear_contents(v5);
          *(v5 + 48) = 1;
        }

        *(v5 + 40) = v21;
      }

      goto LABEL_51;
    }

    objc_opt_class();
    v13 = objc_opt_isKindOfClass();

    v14 = [(ICTTMergeableWallClockValue *)self value];
    v15 = v14;
    if (v13)
    {
      v16 = [v14 UTF8String];
      v17 = strlen(v16);
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
        memmove(&__dst, v16, v17);
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

    v20 = [(ICTTMergeableWallClockValue *)self value];
    v15 = v20;
    if (v19)
    {
      std::string::basic_string[abi:ne200100](&__dst, [v20 bytes], objc_msgSend(v20, "length"));
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
      v23 = [(ICTTMergeableWallClockValue *)self value];
      *&__dst.__r_.__value_.__l.__data_ = 0uLL;
      [v23 getUUIDBytes:&__dst];
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
      v26 = [(ICTTMergeableWallClockValue *)self value];
      LODWORD(v25) = [v25 isValidJSONObject:v26];

      if (v25)
      {
        v27 = MEMORY[0x277CCAAA0];
        v28 = [(ICTTMergeableWallClockValue *)self value];
        v40 = 0;
        v29 = [v27 dataWithJSONObject:v28 options:0 error:&v40];
        v30 = v40;

        if (!v29 || v30)
        {
          v34 = os_log_create("com.apple.notes", "Topotext");
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v37 = [(ICTTMergeableWallClockValue *)self value];
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
        v33 = [(ICTTMergeableWallClockValue *)self value];
        [v32 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICTTMergeableWallClockValue saveToArchive:]" simulateCrash:1 showAlert:0 format:{@"Unsupported contents type for boxing in ICTTMergeableWallClockValue: %@", objc_opt_class()}];
      }
    }
  }

LABEL_51:
  v35 = [(ICTTMergeableWallClockValue *)self timestamp];
  [v35 timeIntervalSinceReferenceDate];
  *(a3 + 8) |= 1u;
  *(a3 + 5) = v36;
}

+ (BOOL)canParseData:(id)a3
{
  v3 = a3;
  topotext::WallClockMergeableValue::WallClockMergeableValue(v7);
  v4 = [v3 bytes];
  v5 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v3 length]);
  LOBYTE(v4) = google::protobuf::MessageLite::ParseFromArray(v7, v4, v5);
  topotext::WallClockMergeableValue::~WallClockMergeableValue(v7);

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ICTTMergeableWallClockValue *)self timestamp];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  v8 = [(ICTTMergeableWallClockValue *)self value];
  v9 = [v3 stringWithFormat:@"<%@: %p, timestamp: %f, value: %@>", v4, self, v7, v8];

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