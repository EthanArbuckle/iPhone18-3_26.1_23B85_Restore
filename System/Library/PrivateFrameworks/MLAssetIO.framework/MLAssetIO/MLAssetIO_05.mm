uint64_t CoreML::Specification::ArrayFeatureType::clear_ShapeFlexibility(uint64_t this)
{
  v1 = this;
  v2 = *(this + 60);
  if (v2 == 31)
  {
    v5 = *(this + 8);
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      if (*v6)
      {
        goto LABEL_12;
      }
    }

    else if (v6)
    {
      goto LABEL_12;
    }

    this = *(this + 40);
    if (this)
    {
      CoreML::Specification::ArrayFeatureType_ShapeRange::~ArrayFeatureType_ShapeRange(this);
      goto LABEL_11;
    }
  }

  else if (v2 == 21)
  {
    v3 = *(this + 8);
    v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
    if (v3)
    {
      if (*v4)
      {
        goto LABEL_12;
      }
    }

    else if (v4)
    {
      goto LABEL_12;
    }

    this = *(this + 40);
    if (this)
    {
      CoreML::Specification::ArrayFeatureType_EnumeratedShapes::~ArrayFeatureType_EnumeratedShapes(this);
LABEL_11:
      this = MEMORY[0x1C6908B60]();
    }
  }

LABEL_12:
  *(v1 + 60) = 0;
  return this;
}

uint64_t CoreML::Specification::ArrayFeatureType::ByteSizeLong(CoreML::Specification::ArrayFeatureType *this)
{
  v2 = *(this + 4);
  if (v2 < 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    v4 = *(this + 3);
    do
    {
      v5 = *v4++;
      v3 += (9 * (__clz(v5 | 1) ^ 0x3F) + 73) >> 6;
      --v2;
    }

    while (v2);
    if (v3)
    {
      v6 = ((9 * (__clz(v3 | 1) ^ 0x3F) + 73) >> 6) + 1;
      goto LABEL_8;
    }
  }

  v6 = 0;
LABEL_8:
  *(this + 8) = v3;
  v7 = v6 + v3;
  v8 = *(this + 9);
  if (v8)
  {
    v7 += ((9 * (__clz(v8 | 1) ^ 0x3F) + 73) >> 6) + 1;
  }

  v9 = *(this + 15);
  if (v9 == 31)
  {
    v10 = CoreML::Specification::ArrayFeatureType_ShapeRange::ByteSizeLong(*(this + 5));
  }

  else
  {
    if (v9 != 21)
    {
      goto LABEL_15;
    }

    v10 = CoreML::Specification::ArrayFeatureType_EnumeratedShapes::ByteSizeLong(*(this + 5));
  }

  v7 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_15:
  v11 = *(this + 16);
  switch(v11)
  {
    case '=':
      v7 += 10;
      break;
    case '3':
      v7 += 6;
      break;
    case ')':
      v7 += ((9 * (__clz(*(this + 12) | 1) ^ 0x3F) + 73) >> 6) + 2;
      break;
  }

  v12 = *(this + 1);
  if (v12)
  {
    v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v7 += v15;
  }

  *(this + 14) = v7;
  return v7;
}

std::string *CoreML::Specification::ArrayFeatureType::MergeFrom(std::string *this, const CoreML::Specification::ArrayFeatureType *a2)
{
  v3 = this;
  v4 = *(a2 + 4);
  if (v4)
  {
    v5 = &this->__r_.__value_.__r.__words[2];
    v6 = SLODWORD(this->__r_.__value_.__r.__words[2]);
    google::protobuf::RepeatedField<long long>::Reserve(&this->__r_.__value_.__r.__words[2], v6 + v4);
    v7 = *(v3 + 24);
    *v5 += *(a2 + 4);
    this = memcpy((v7 + 8 * v6), *(a2 + 3), 8 * *(a2 + 4));
  }

  v8 = *(a2 + 9);
  if (v8)
  {
    *(v3 + 36) = v8;
  }

  v9 = *(a2 + 15);
  if (v9 != 31)
  {
    if (v9 != 21)
    {
      goto LABEL_23;
    }

    if (*(v3 + 60) == 21)
    {
      v10 = *(v3 + 40);
    }

    else
    {
      CoreML::Specification::ArrayFeatureType::clear_ShapeFlexibility(v3);
      *(v3 + 60) = 21;
      v12 = *(v3 + 8);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v10 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ArrayFeatureType_EnumeratedShapes>(v13);
      *(v3 + 40) = v10;
      if (*(a2 + 15) != 21)
      {
        v14 = &CoreML::Specification::_ArrayFeatureType_EnumeratedShapes_default_instance_;
        goto LABEL_20;
      }
    }

    v14 = *(a2 + 5);
LABEL_20:
    this = CoreML::Specification::ArrayFeatureType_EnumeratedShapes::MergeFrom(v10, v14);
    goto LABEL_23;
  }

  if (*(v3 + 60) == 31)
  {
    v11 = *(v3 + 40);
  }

  else
  {
    CoreML::Specification::ArrayFeatureType::clear_ShapeFlexibility(v3);
    *(v3 + 60) = 31;
    v15 = *(v3 + 8);
    v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
    if (v15)
    {
      v16 = *v16;
    }

    v11 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ArrayFeatureType_ShapeRange>(v16);
    *(v3 + 40) = v11;
    if (*(a2 + 15) != 31)
    {
      v17 = &CoreML::Specification::_ArrayFeatureType_ShapeRange_default_instance_;
      goto LABEL_22;
    }
  }

  v17 = *(a2 + 5);
LABEL_22:
  this = CoreML::Specification::ArrayFeatureType_ShapeRange::MergeFrom(v11, v17);
LABEL_23:
  v18 = *(a2 + 16);
  switch(v18)
  {
    case '=':
      v21 = *(a2 + 6);
      if (*(v3 + 64) != 61)
      {
        *(v3 + 64) = 61;
      }

      *(v3 + 48) = v21;
      break;
    case '3':
      v20 = *(a2 + 12);
      if (*(v3 + 64) != 51)
      {
        *(v3 + 64) = 51;
      }

      *(v3 + 48) = v20;
      break;
    case ')':
      v19 = *(a2 + 12);
      if (*(v3 + 64) != 41)
      {
        *(v3 + 64) = 41;
      }

      *(v3 + 48) = v19;
      break;
  }

  v22 = *(a2 + 1);
  if (v22)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>((v3 + 8), (v22 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t CoreML::Specification::ArrayFeatureType::Clear(CoreML::Specification::ArrayFeatureType *this)
{
  *(this + 4) = 0;
  *(this + 9) = 0;
  result = CoreML::Specification::ArrayFeatureType::clear_ShapeFlexibility(this);
  v4 = *(this + 8);
  v3 = this + 8;
  *(v3 + 14) = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(v3);
  }

  return result;
}

double google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ArrayFeatureType>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *AlignedWithHook = off_1F415DCC0;
  *(AlignedWithHook + 8) = a1;
  result = 0.0;
  *(AlignedWithHook + 16) = 0;
  *(AlignedWithHook + 24) = a1;
  *(AlignedWithHook + 36) = 0;
  *(AlignedWithHook + 56) = 0;
  *(AlignedWithHook + 64) = 0;
  return result;
}

void CoreML::Specification::ArrayFeatureType::~ArrayFeatureType(CoreML::Specification::ArrayFeatureType *this)
{
  CoreML::Specification::ArrayFeatureType::~ArrayFeatureType(this);

  JUMPOUT(0x1C6908B60);
}

{
  v3 = (this + 8);
  v2 = *(this + 1);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4)
  {
    goto LABEL_9;
  }

  if (*(this + 15))
  {
    CoreML::Specification::ArrayFeatureType::clear_ShapeFlexibility(this);
  }

  if (*(this + 16))
  {
    *(this + 16) = 0;
  }

  if (*v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(*v3);
  }

LABEL_9:
  if (*(this + 5) >= 1)
  {
    v5 = *(this + 3);
    v7 = *(v5 - 8);
    v6 = (v5 - 8);
    if (!v7)
    {
      operator delete(v6);
    }
  }

  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}

unsigned __int8 *CoreML::Specification::DictionaryFeatureType::_InternalSerialize(CoreML::Specification::DictionaryFeatureType *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  v6 = *(this + 7);
  if (v6 == 1)
  {
    if (*a3 <= __dst)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
    }

    v7 = *(this + 2);
    *v4 = 10;
    v8 = *(v7 + 4);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      v4[2] = v8 >> 7;
      v9 = v4 + 3;
      if (v8 >= 0x4000)
      {
        v11 = v8 >> 7;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v10 = v11 >> 7;
          *v9++ = v11 >> 7;
          v12 = v11 >> 14;
          v11 >>= 7;
        }

        while (v12);
      }
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = CoreML::Specification::Int64FeatureType::_InternalSerialize(v7, v9, a3);
    v6 = *(this + 7);
  }

  if (v6 == 2)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 2);
    *v4 = 18;
    v14 = *(v13 + 4);
    v4[1] = v14;
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v16 = v14 >> 7;
      v4[2] = v14 >> 7;
      v15 = v4 + 3;
      if (v14 >= 0x4000)
      {
        v17 = v14 >> 7;
        do
        {
          *(v15 - 1) = v16 | 0x80;
          v16 = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v4 + 2;
    }

    v4 = CoreML::Specification::StringFeatureType::_InternalSerialize(v13, v15, a3);
  }

  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return v4;
  }

  v21 = v19 & 0xFFFFFFFFFFFFFFFCLL;
  v22 = *(v21 + 31);
  if (v22 < 0)
  {
    v23 = *(v21 + 8);
    v22 = *(v21 + 16);
  }

  else
  {
    v23 = (v21 + 8);
  }

  if (*a3 - v4 >= v22)
  {
    v24 = v22;
    memcpy(v4, v23, v22);
    v4 += v24;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v23, v22, v4);
}

google::protobuf::internal *CoreML::Specification::DictionaryFeatureType::_InternalParse(CoreML::Specification::DictionaryFeatureType *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v21 = a2;
  do
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v21, *(a3 + 23)))
    {
      return v21;
    }

    v5 = (v21 + 1);
    v6 = *v21;
    if (*v21 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v7 = 14;
        v8 = 2;
        while (1)
        {
          v6 += (*(v21 + v8) - 1) << v7;
          if ((*(v21 + v8) & 0x80000000) == 0)
          {
            break;
          }

          ++v8;
          v7 += 7;
          if (v8 == 5)
          {
            return 0;
          }
        }

        v5 = (v21 + v8 + 1);
      }

      else
      {
        v5 = (v21 + 2);
      }
    }

    if (v6 >> 3 != 2)
    {
      if (v6 >> 3 != 1 || v6 != 10)
      {
        goto LABEL_16;
      }

      if (*(this + 7) == 1)
      {
        goto LABEL_29;
      }

      CoreML::Specification::DictionaryFeatureType::clear_KeyType(this);
      *(this + 7) = 1;
      v18 = *(this + 1);
      v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
      if (v18)
      {
        v19 = *v19;
      }

      v16 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Int64FeatureType>(v19);
      goto LABEL_33;
    }

    if (v6 == 18)
    {
      if (*(this + 7) == 2)
      {
LABEL_29:
        v17 = *(this + 2);
LABEL_34:
        v13 = google::protobuf::internal::ParseContext::ParseMessage(a3, v17, v5);
        goto LABEL_35;
      }

      CoreML::Specification::DictionaryFeatureType::clear_KeyType(this);
      *(this + 7) = 2;
      v14 = *(this + 1);
      v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
      if (v14)
      {
        v15 = *v15;
      }

      v16 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::StringFeatureType>(v15);
LABEL_33:
      v17 = v16;
      *(this + 2) = v16;
      goto LABEL_34;
    }

LABEL_16:
    if (v6)
    {
      v10 = (v6 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      *(a3 + 20) = v6 - 1;
      return v5;
    }

    v11 = *(this + 1);
    if (v11)
    {
      v12 = ((v11 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    else
    {
      v12 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v22 = v12;
    v13 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v22, v5, a3);
LABEL_35:
    v21 = v13;
  }

  while (v13);
  return 0;
}

uint64_t CoreML::Specification::DictionaryFeatureType::clear_KeyType(uint64_t this)
{
  v1 = this;
  v2 = *(this + 28);
  if (v2 == 2)
  {
    v5 = *(this + 8);
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      if (*v6)
      {
        goto LABEL_11;
      }
    }

    else if (v6)
    {
      goto LABEL_11;
    }

    this = *(this + 16);
    if (this)
    {
LABEL_10:
      CoreML::Specification::Int64Range::~Int64Range(this);
      this = MEMORY[0x1C6908B60]();
    }
  }

  else if (v2 == 1)
  {
    v3 = *(this + 8);
    v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
    if (v3)
    {
      if (*v4)
      {
        goto LABEL_11;
      }
    }

    else if (v4)
    {
      goto LABEL_11;
    }

    this = *(this + 16);
    if (this)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  *(v1 + 28) = 0;
  return this;
}

uint64_t CoreML::Specification::DictionaryFeatureType::ByteSizeLong(CoreML::Specification::DictionaryFeatureType *this)
{
  v1 = *(this + 7);
  if (v1 == 2 || v1 == 1)
  {
    v2 = *(this + 2);
    v3 = *(v2 + 8);
    if (v3)
    {
      v10 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v4 = *((v3 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v4 < 0)
      {
        v4 = *(v10 + 16);
      }
    }

    else
    {
      v4 = 0;
    }

    *(v2 + 16) = v4;
    v5 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(this + 1);
  if (v6)
  {
    v8 = v6 & 0xFFFFFFFFFFFFFFFCLL;
    v9 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v9 < 0)
    {
      v9 = *(v8 + 16);
    }

    v5 += v9;
  }

  *(this + 6) = v5;
  return v5;
}

std::string *CoreML::Specification::DictionaryFeatureType::MergeFrom(std::string *this, const CoreML::Specification::DictionaryFeatureType *a2)
{
  v3 = this;
  v4 = *(a2 + 7);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      goto LABEL_13;
    }

    if (HIDWORD(this[1].__r_.__value_.__r.__words[0]) != 1)
    {
      CoreML::Specification::DictionaryFeatureType::clear_KeyType(this);
      HIDWORD(v3[1].__r_.__value_.__r.__words[0]) = 1;
      size = v3->__r_.__value_.__l.__size_;
      v6 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v6 = *v6;
      }

      this = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Int64FeatureType>(v6);
      v3->__r_.__value_.__r.__words[2] = this;
      if (*(a2 + 7) != 1)
      {
        v7 = &CoreML::Specification::_Int64FeatureType_default_instance_;
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (HIDWORD(this[1].__r_.__value_.__r.__words[0]) == 2)
  {
LABEL_9:
    this = this->__r_.__value_.__r.__words[2];
LABEL_10:
    v7 = *(a2 + 2);
    goto LABEL_11;
  }

  CoreML::Specification::DictionaryFeatureType::clear_KeyType(this);
  HIDWORD(v3[1].__r_.__value_.__r.__words[0]) = 2;
  v10 = v3->__r_.__value_.__l.__size_;
  v11 = (v10 & 0xFFFFFFFFFFFFFFFCLL);
  if (v10)
  {
    v11 = *v11;
  }

  this = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::StringFeatureType>(v11);
  v3->__r_.__value_.__r.__words[2] = this;
  if (*(a2 + 7) == 2)
  {
    goto LABEL_10;
  }

  v7 = &CoreML::Specification::_StringFeatureType_default_instance_;
LABEL_11:
  v8 = v7[1];
  if (v8)
  {
    this = google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(&this->__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

LABEL_13:
  v9 = *(a2 + 1);
  if (v9)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(&v3->__r_.__value_.__l.__size_, (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t CoreML::Specification::DictionaryFeatureType::Clear(CoreML::Specification::DictionaryFeatureType *this)
{
  result = CoreML::Specification::DictionaryFeatureType::clear_KeyType(this);
  v4 = *(this + 8);
  v3 = (this + 8);
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(v3);
  }

  return result;
}

void *google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::DictionaryFeatureType>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_1F415D900;
  result[3] = 0;
  return result;
}

void CoreML::Specification::DictionaryFeatureType::~DictionaryFeatureType(CoreML::Specification::DictionaryFeatureType *this)
{
  CoreML::Specification::DictionaryFeatureType::~DictionaryFeatureType(this);

  JUMPOUT(0x1C6908B60);
}

{
  v3 = (this + 8);
  v2 = *(this + 1);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  if (*(this + 7))
  {
    CoreML::Specification::DictionaryFeatureType::clear_KeyType(this);
    v2 = *(this + 1);
  }

  if (v2)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(v2);
  }

LABEL_7:
  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}

unsigned __int8 *CoreML::Specification::SequenceFeatureType::_InternalSerialize(void (***this)(CoreML::Specification::SequenceFeatureType *__hidden this), unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  v6 = *(this + 9);
  if (v6 == 1)
  {
    if (*a3 <= __dst)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
    }

    v7 = this[3];
    *v4 = 10;
    v8 = *(v7 + 4);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      v4[2] = v8 >> 7;
      v9 = v4 + 3;
      if (v8 >= 0x4000)
      {
        v11 = v8 >> 7;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v10 = v11 >> 7;
          *v9++ = v11 >> 7;
          v12 = v11 >> 14;
          v11 >>= 7;
        }

        while (v12);
      }
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = CoreML::Specification::Int64FeatureType::_InternalSerialize(v7, v9, a3);
    v6 = *(this + 9);
  }

  if (v6 == 3)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = this[3];
    *v4 = 26;
    v14 = *(v13 + 4);
    v4[1] = v14;
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v16 = v14 >> 7;
      v4[2] = v14 >> 7;
      v15 = v4 + 3;
      if (v14 >= 0x4000)
      {
        v17 = v14 >> 7;
        do
        {
          *(v15 - 1) = v16 | 0x80;
          v16 = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v4 + 2;
    }

    v4 = CoreML::Specification::StringFeatureType::_InternalSerialize(v13, v15, a3);
  }

  if (this != &CoreML::Specification::_SequenceFeatureType_default_instance_)
  {
    v19 = this[2];
    if (v19)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
        v19 = this[2];
      }

      *v4 = 1706;
      v20 = *(v19 + 8);
      v4[2] = v20;
      if (v20 > 0x7F)
      {
        v4[2] = v20 | 0x80;
        v22 = v20 >> 7;
        v4[3] = v20 >> 7;
        v21 = v4 + 4;
        if (v20 >= 0x4000)
        {
          v23 = v20 >> 7;
          do
          {
            *(v21 - 1) = v22 | 0x80;
            v22 = v23 >> 7;
            *v21++ = v23 >> 7;
            v24 = v23 >> 14;
            v23 >>= 7;
          }

          while (v24);
        }
      }

      else
      {
        v21 = v4 + 3;
      }

      v4 = CoreML::Specification::SizeRange::_InternalSerialize(v19, v21, a3);
    }
  }

  v25 = this[1];
  if ((v25 & 1) == 0)
  {
    return v4;
  }

  v27 = v25 & 0xFFFFFFFFFFFFFFFCLL;
  v28 = *(v27 + 31);
  if (v28 < 0)
  {
    v29 = *(v27 + 8);
    v28 = *(v27 + 16);
  }

  else
  {
    v29 = (v27 + 8);
  }

  if (*a3 - v4 >= v28)
  {
    v30 = v28;
    memcpy(v4, v29, v28);
    v4 += v30;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v29, v28, v4);
}

google::protobuf::internal *CoreML::Specification::SequenceFeatureType::_InternalParse(CoreML::Specification::SequenceFeatureType *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v24 = a2;
  do
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v24, *(a3 + 23)))
    {
      return v24;
    }

    v5 = (v24 + 1);
    v6 = *v24;
    if (*v24 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v7 = 14;
        v8 = 2;
        while (1)
        {
          v6 += (*(v24 + v8) - 1) << v7;
          if ((*(v24 + v8) & 0x80000000) == 0)
          {
            break;
          }

          ++v8;
          v7 += 7;
          if (v8 == 5)
          {
            return 0;
          }
        }

        v5 = (v24 + v8 + 1);
      }

      else
      {
        v5 = (v24 + 2);
      }
    }

    v9 = v6 >> 3;
    if (v6 >> 3 == 101)
    {
      if (v6 == 42)
      {
        v18 = *(this + 2);
        if (!v18)
        {
          v19 = *(this + 1);
          v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
          if (v19)
          {
            v20 = *v20;
          }

          v18 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::SizeRange>(v20);
          *(this + 2) = v18;
        }

        goto LABEL_40;
      }
    }

    else
    {
      if (v9 != 3)
      {
        if (v9 != 1 || v6 != 10)
        {
          goto LABEL_17;
        }

        if (*(this + 9) == 1)
        {
          goto LABEL_35;
        }

        CoreML::Specification::SequenceFeatureType::clear_Type(this);
        *(this + 9) = 1;
        v21 = *(this + 1);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v17 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Int64FeatureType>(v22);
        goto LABEL_39;
      }

      if (v6 == 26)
      {
        if (*(this + 9) == 3)
        {
LABEL_35:
          v18 = *(this + 3);
LABEL_40:
          v14 = google::protobuf::internal::ParseContext::ParseMessage(a3, v18, v5);
          goto LABEL_41;
        }

        CoreML::Specification::SequenceFeatureType::clear_Type(this);
        *(this + 9) = 3;
        v15 = *(this + 1);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v17 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::StringFeatureType>(v16);
LABEL_39:
        v18 = v17;
        *(this + 3) = v17;
        goto LABEL_40;
      }
    }

LABEL_17:
    if (v6)
    {
      v11 = (v6 & 7) == 4;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      *(a3 + 20) = v6 - 1;
      return v5;
    }

    v12 = *(this + 1);
    if (v12)
    {
      v13 = ((v12 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    else
    {
      v13 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v25 = v13;
    v14 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v25, v5, a3);
LABEL_41:
    v24 = v14;
  }

  while (v14);
  return 0;
}

uint64_t CoreML::Specification::SequenceFeatureType::clear_Type(uint64_t this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2 == 3)
  {
    v5 = *(this + 8);
    v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
    if (v5)
    {
      if (*v6)
      {
        goto LABEL_11;
      }
    }

    else if (v6)
    {
      goto LABEL_11;
    }

    this = *(this + 24);
    if (this)
    {
LABEL_10:
      CoreML::Specification::Int64Range::~Int64Range(this);
      this = MEMORY[0x1C6908B60]();
    }
  }

  else if (v2 == 1)
  {
    v3 = *(this + 8);
    v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
    if (v3)
    {
      if (*v4)
      {
        goto LABEL_11;
      }
    }

    else if (v4)
    {
      goto LABEL_11;
    }

    this = *(this + 24);
    if (this)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  *(v1 + 36) = 0;
  return this;
}

CoreML::Specification::SizeRange *CoreML::Specification::SequenceFeatureType::ByteSizeLong(void (***this)(CoreML::Specification::SequenceFeatureType *__hidden this))
{
  if (this == &CoreML::Specification::_SequenceFeatureType_default_instance_)
  {
    result = 0;
  }

  else
  {
    result = this[2];
    if (result)
    {
      v3 = CoreML::Specification::SizeRange::ByteSizeLong(result);
      result = (v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2);
    }
  }

  v4 = *(this + 9);
  if (v4 == 3 || v4 == 1)
  {
    v5 = this[3];
    v6 = v5[1];
    if (v6)
    {
      v11 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v7 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
      if (v7 < 0)
      {
        v7 = *(v11 + 16);
      }
    }

    else
    {
      v7 = 0;
    }

    *(v5 + 4) = v7;
    result = (result + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1);
  }

  v8 = this[1];
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    result = (result + v10);
  }

  *(this + 8) = result;
  return result;
}

std::string *CoreML::Specification::SequenceFeatureType::MergeFrom(std::string *this, void (***a2)(CoreML::Specification::SequenceFeatureType *__hidden this))
{
  v3 = this;
  v4 = a2[2];
  if (a2 != &CoreML::Specification::_SequenceFeatureType_default_instance_ && v4 != 0)
  {
    v6 = this->__r_.__value_.__r.__words[2];
    if (!v6)
    {
      v7 = *(v3 + 8);
      v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
      if (v7)
      {
        v8 = *v8;
      }

      v6 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::SizeRange>(v8);
      *(v3 + 16) = v6;
      v4 = a2[2];
    }

    if (v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = &CoreML::Specification::_SizeRange_default_instance_;
    }

    this = CoreML::Specification::Int64Range::MergeFrom(v6, v9);
  }

  v10 = *(a2 + 9);
  if (v10 != 3)
  {
    if (v10 != 1)
    {
      goto LABEL_25;
    }

    if (*(v3 + 36) != 1)
    {
      CoreML::Specification::SequenceFeatureType::clear_Type(v3);
      *(v3 + 36) = 1;
      v11 = *(v3 + 8);
      v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
      if (v11)
      {
        v12 = *v12;
      }

      this = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Int64FeatureType>(v12);
      *(v3 + 24) = this;
      if (*(a2 + 9) != 1)
      {
        v13 = &CoreML::Specification::_Int64FeatureType_default_instance_;
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (*(v3 + 36) == 3)
  {
LABEL_21:
    this = *(v3 + 24);
LABEL_22:
    v13 = a2[3];
    goto LABEL_23;
  }

  CoreML::Specification::SequenceFeatureType::clear_Type(v3);
  *(v3 + 36) = 3;
  v16 = *(v3 + 8);
  v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
  if (v16)
  {
    v17 = *v17;
  }

  this = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::StringFeatureType>(v17);
  *(v3 + 24) = this;
  if (*(a2 + 9) == 3)
  {
    goto LABEL_22;
  }

  v13 = &CoreML::Specification::_StringFeatureType_default_instance_;
LABEL_23:
  v14 = v13[1];
  if (v14)
  {
    this = google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(&this->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

LABEL_25:
  v15 = a2[1];
  if (v15)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>((v3 + 8), (v15 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t CoreML::Specification::SequenceFeatureType::Clear(CoreML::Specification::SequenceFeatureType *this)
{
  v3 = (this + 8);
  v2 = *(this + 1);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_5;
    }
  }

  else if (v4)
  {
    goto LABEL_5;
  }

  v5 = *(this + 2);
  if (v5)
  {
    CoreML::Specification::Int64Range::~Int64Range(v5);
    MEMORY[0x1C6908B60]();
  }

LABEL_5:
  *(this + 2) = 0;
  result = CoreML::Specification::SequenceFeatureType::clear_Type(this);
  if (*(this + 8))
  {

    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(v3);
  }

  return result;
}

void *google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::SequenceFeatureType>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_1F415D978;
  result[2] = 0;
  result[4] = 0;
  return result;
}

void CoreML::Specification::SequenceFeatureType::~SequenceFeatureType(void (***this)(CoreML::Specification::SequenceFeatureType *__hidden this))
{
  CoreML::Specification::SequenceFeatureType::~SequenceFeatureType(this);

  JUMPOUT(0x1C6908B60);
}

{
  v3 = (this + 1);
  v2 = this[1];
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_10;
  }

  if (this != &CoreML::Specification::_SequenceFeatureType_default_instance_)
  {
    v5 = this[2];
    if (v5)
    {
      CoreML::Specification::Int64Range::~Int64Range(v5);
      MEMORY[0x1C6908B60]();
    }
  }

  if (*(this + 9))
  {
    CoreML::Specification::SequenceFeatureType::clear_Type(this);
  }

  if (*v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(*v3);
  }

LABEL_10:
  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}

unsigned __int8 *CoreML::Specification::StateFeatureType::_InternalSerialize(CoreML::Specification::StateFeatureType *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  if (*(this + 7) == 1)
  {
    if (*a3 <= __dst)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
    }

    v6 = *(this + 2);
    *v4 = 10;
    v7 = *(v6 + 14);
    v4[1] = v7;
    if (v7 > 0x7F)
    {
      v4[1] = v7 | 0x80;
      v9 = v7 >> 7;
      v4[2] = v7 >> 7;
      v8 = v4 + 3;
      if (v7 >= 0x4000)
      {
        v10 = v7 >> 7;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v9 = v10 >> 7;
          *v8++ = v10 >> 7;
          v11 = v10 >> 14;
          v10 >>= 7;
        }

        while (v11);
      }
    }

    else
    {
      v8 = v4 + 2;
    }

    v4 = CoreML::Specification::ArrayFeatureType::_InternalSerialize(v6, v8, a3);
  }

  v12 = *(this + 1);
  if ((v12 & 1) == 0)
  {
    return v4;
  }

  v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *(v14 + 31);
  if (v15 < 0)
  {
    v16 = *(v14 + 8);
    v15 = *(v14 + 16);
  }

  else
  {
    v16 = (v14 + 8);
  }

  if (*a3 - v4 >= v15)
  {
    v17 = v15;
    memcpy(v4, v16, v15);
    v4 += v17;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v16, v15, v4);
}

google::protobuf::internal *CoreML::Specification::StateFeatureType::_InternalParse(CoreML::Specification::StateFeatureType *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v18 = a2;
  do
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v18, *(a3 + 23)))
    {
      return v18;
    }

    v5 = (v18 + 1);
    v6 = *v18;
    if (*v18 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v7 = 14;
        v8 = 2;
        while (1)
        {
          v6 += (*(v18 + v8) - 1) << v7;
          if ((*(v18 + v8) & 0x80000000) == 0)
          {
            break;
          }

          ++v8;
          v7 += 7;
          if (v8 == 5)
          {
            return 0;
          }
        }

        v5 = (v18 + v8 + 1);
      }

      else
      {
        v5 = (v18 + 2);
      }
    }

    if (v6 == 10)
    {
      if (*(this + 7) == 1)
      {
        v13 = *(this + 2);
      }

      else
      {
        CoreML::Specification::StateFeatureType::clear_Type(this);
        *(this + 7) = 1;
        v14 = *(this + 1);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ArrayFeatureType>(v15);
        v13 = v16;
        *(this + 2) = v16;
      }

      v12 = google::protobuf::internal::ParseContext::ParseMessage(a3, v13, v5);
    }

    else
    {
      if (v6)
      {
        v9 = (v6 & 7) == 4;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        *(a3 + 20) = v6 - 1;
        return v5;
      }

      v10 = *(this + 1);
      if (v10)
      {
        v11 = ((v10 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v11 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
      }

      v19 = v11;
      v12 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v19, v5, a3);
    }

    v18 = v12;
  }

  while (v12);
  return 0;
}

uint64_t CoreML::Specification::StateFeatureType::clear_Type(uint64_t this)
{
  v1 = this;
  if (*(this + 28) == 1)
  {
    v2 = *(this + 8);
    v3 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
    if (v2)
    {
      if (*v3)
      {
        goto LABEL_6;
      }
    }

    else if (v3)
    {
      goto LABEL_6;
    }

    this = *(this + 16);
    if (this)
    {
      CoreML::Specification::ArrayFeatureType::~ArrayFeatureType(this);
      this = MEMORY[0x1C6908B60]();
    }
  }

LABEL_6:
  *(v1 + 28) = 0;
  return this;
}

uint64_t CoreML::Specification::StateFeatureType::ByteSizeLong(CoreML::Specification::ArrayFeatureType **this)
{
  if (*(this + 7) == 1)
  {
    v2 = CoreML::Specification::ArrayFeatureType::ByteSizeLong(this[2]);
    result = v2 + ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  else
  {
    result = 0;
  }

  v4 = this[1];
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v6 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v6 < 0)
    {
      v6 = *(v5 + 16);
    }

    result += v6;
  }

  *(this + 6) = result;
  return result;
}

std::string *CoreML::Specification::StateFeatureType::MergeFrom(std::string *this, const CoreML::Specification::StateFeatureType *a2)
{
  v3 = this;
  if (*(a2 + 7) == 1)
  {
    if (HIDWORD(this[1].__r_.__value_.__r.__words[0]) == 1)
    {
      v4 = this->__r_.__value_.__r.__words[2];
    }

    else
    {
      CoreML::Specification::StateFeatureType::clear_Type(this);
      HIDWORD(v3[1].__r_.__value_.__r.__words[0]) = 1;
      size = v3->__r_.__value_.__l.__size_;
      v6 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v6 = *v6;
      }

      google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ArrayFeatureType>(v6);
      v3->__r_.__value_.__r.__words[2] = v4;
      if (*(a2 + 7) != 1)
      {
        v7 = &CoreML::Specification::_ArrayFeatureType_default_instance_;
        goto LABEL_9;
      }
    }

    v7 = *(a2 + 2);
LABEL_9:
    this = CoreML::Specification::ArrayFeatureType::MergeFrom(v4, v7);
  }

  v8 = *(a2 + 1);
  if (v8)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(&v3->__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t CoreML::Specification::StateFeatureType::Clear(CoreML::Specification::StateFeatureType *this)
{
  result = CoreML::Specification::StateFeatureType::clear_Type(this);
  v4 = *(this + 8);
  v3 = (this + 8);
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(v3);
  }

  return result;
}

void *google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::StateFeatureType>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = off_1F41603D0;
  result[3] = 0;
  return result;
}

void CoreML::Specification::StateFeatureType::~StateFeatureType(CoreML::Specification::StateFeatureType *this)
{
  CoreML::Specification::StateFeatureType::~StateFeatureType(this);

  JUMPOUT(0x1C6908B60);
}

{
  v3 = (this + 8);
  v2 = *(this + 1);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  if (*(this + 7))
  {
    CoreML::Specification::StateFeatureType::clear_Type(this);
    v2 = *(this + 1);
  }

  if (v2)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(v2);
  }

LABEL_7:
  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}

unsigned __int8 *CoreML::Specification::FeatureType::_InternalSerialize(CoreML::Specification::FeatureType *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  v6 = *(this + 9);
  if (v6 == 1)
  {
    if (*a3 <= __dst)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
    }

    v7 = *(this + 3);
    *v4 = 10;
    v8 = *(v7 + 4);
    v4[1] = v8;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v10 = v8 >> 7;
      v4[2] = v8 >> 7;
      v9 = v4 + 3;
      if (v8 >= 0x4000)
      {
        v11 = v8 >> 7;
        do
        {
          *(v9 - 1) = v10 | 0x80;
          v10 = v11 >> 7;
          *v9++ = v11 >> 7;
          v12 = v11 >> 14;
          v11 >>= 7;
        }

        while (v12);
      }
    }

    else
    {
      v9 = v4 + 2;
    }

    v4 = CoreML::Specification::Int64FeatureType::_InternalSerialize(v7, v9, a3);
    v6 = *(this + 9);
  }

  if (v6 == 2)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v13 = *(this + 3);
    *v4 = 18;
    v14 = *(v13 + 4);
    v4[1] = v14;
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v16 = v14 >> 7;
      v4[2] = v14 >> 7;
      v15 = v4 + 3;
      if (v14 >= 0x4000)
      {
        v17 = v14 >> 7;
        do
        {
          *(v15 - 1) = v16 | 0x80;
          v16 = v17 >> 7;
          *v15++ = v17 >> 7;
          v18 = v17 >> 14;
          v17 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v15 = v4 + 2;
    }

    v4 = CoreML::Specification::DoubleFeatureType::_InternalSerialize(v13, v15, a3);
    v6 = *(this + 9);
  }

  if (v6 == 3)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v19 = *(this + 3);
    *v4 = 26;
    v20 = *(v19 + 4);
    v4[1] = v20;
    if (v20 > 0x7F)
    {
      v4[1] = v20 | 0x80;
      v22 = v20 >> 7;
      v4[2] = v20 >> 7;
      v21 = v4 + 3;
      if (v20 >= 0x4000)
      {
        v23 = v20 >> 7;
        do
        {
          *(v21 - 1) = v22 | 0x80;
          v22 = v23 >> 7;
          *v21++ = v23 >> 7;
          v24 = v23 >> 14;
          v23 >>= 7;
        }

        while (v24);
      }
    }

    else
    {
      v21 = v4 + 2;
    }

    v4 = CoreML::Specification::StringFeatureType::_InternalSerialize(v19, v21, a3);
    v6 = *(this + 9);
  }

  if (v6 == 4)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(this + 3);
    *v4 = 34;
    v26 = *(v25 + 12);
    v4[1] = v26;
    if (v26 > 0x7F)
    {
      v4[1] = v26 | 0x80;
      v28 = v26 >> 7;
      v4[2] = v26 >> 7;
      v27 = v4 + 3;
      if (v26 >= 0x4000)
      {
        v29 = v26 >> 7;
        do
        {
          *(v27 - 1) = v28 | 0x80;
          v28 = v29 >> 7;
          *v27++ = v29 >> 7;
          v30 = v29 >> 14;
          v29 >>= 7;
        }

        while (v30);
      }
    }

    else
    {
      v27 = v4 + 2;
    }

    v4 = CoreML::Specification::ImageFeatureType::_InternalSerialize(v25, v27, a3);
    v6 = *(this + 9);
  }

  if (v6 == 5)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v31 = *(this + 3);
    *v4 = 42;
    v32 = *(v31 + 14);
    v4[1] = v32;
    if (v32 > 0x7F)
    {
      v4[1] = v32 | 0x80;
      v34 = v32 >> 7;
      v4[2] = v32 >> 7;
      v33 = v4 + 3;
      if (v32 >= 0x4000)
      {
        v35 = v32 >> 7;
        do
        {
          *(v33 - 1) = v34 | 0x80;
          v34 = v35 >> 7;
          *v33++ = v35 >> 7;
          v36 = v35 >> 14;
          v35 >>= 7;
        }

        while (v36);
      }
    }

    else
    {
      v33 = v4 + 2;
    }

    v4 = CoreML::Specification::ArrayFeatureType::_InternalSerialize(v31, v33, a3);
    v6 = *(this + 9);
  }

  if (v6 == 6)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v37 = *(this + 3);
    *v4 = 50;
    v38 = *(v37 + 6);
    v4[1] = v38;
    if (v38 > 0x7F)
    {
      v4[1] = v38 | 0x80;
      v40 = v38 >> 7;
      v4[2] = v38 >> 7;
      v39 = v4 + 3;
      if (v38 >= 0x4000)
      {
        v41 = v38 >> 7;
        do
        {
          *(v39 - 1) = v40 | 0x80;
          v40 = v41 >> 7;
          *v39++ = v41 >> 7;
          v42 = v41 >> 14;
          v41 >>= 7;
        }

        while (v42);
      }
    }

    else
    {
      v39 = v4 + 2;
    }

    v4 = CoreML::Specification::DictionaryFeatureType::_InternalSerialize(v37, v39, a3);
    v6 = *(this + 9);
  }

  if (v6 == 7)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v43 = *(this + 3);
    *v4 = 58;
    v44 = *(v43 + 32);
    v4[1] = v44;
    if (v44 > 0x7F)
    {
      v4[1] = v44 | 0x80;
      v46 = v44 >> 7;
      v4[2] = v44 >> 7;
      v45 = v4 + 3;
      if (v44 >= 0x4000)
      {
        v47 = v44 >> 7;
        do
        {
          *(v45 - 1) = v46 | 0x80;
          v46 = v47 >> 7;
          *v45++ = v47 >> 7;
          v48 = v47 >> 14;
          v47 >>= 7;
        }

        while (v48);
      }
    }

    else
    {
      v45 = v4 + 2;
    }

    v4 = CoreML::Specification::SequenceFeatureType::_InternalSerialize(v43, v45, a3);
    v6 = *(this + 9);
  }

  if (v6 == 8)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v49 = *(this + 3);
    *v4 = 66;
    v50 = *(v49 + 6);
    v4[1] = v50;
    if (v50 > 0x7F)
    {
      v4[1] = v50 | 0x80;
      v52 = v50 >> 7;
      v4[2] = v50 >> 7;
      v51 = v4 + 3;
      if (v50 >= 0x4000)
      {
        v53 = v50 >> 7;
        do
        {
          *(v51 - 1) = v52 | 0x80;
          v52 = v53 >> 7;
          *v51++ = v53 >> 7;
          v54 = v53 >> 14;
          v53 >>= 7;
        }

        while (v54);
      }
    }

    else
    {
      v51 = v4 + 2;
    }

    v4 = CoreML::Specification::StateFeatureType::_InternalSerialize(v49, v51, a3);
  }

  v55 = *(this + 16);
  if (v55 == 1)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      LOBYTE(v55) = *(this + 16);
    }

    *v4 = 16064;
    v4[2] = v55;
    v4 += 3;
  }

  v56 = *(this + 1);
  if ((v56 & 1) == 0)
  {
    return v4;
  }

  v58 = v56 & 0xFFFFFFFFFFFFFFFCLL;
  v59 = *(v58 + 31);
  if (v59 < 0)
  {
    v60 = *(v58 + 8);
    v59 = *(v58 + 16);
  }

  else
  {
    v60 = (v58 + 8);
  }

  if (*a3 - v4 >= v59)
  {
    v61 = v59;
    memcpy(v4, v60, v59);
    v4 += v61;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v60, v59, v4);
}

google::protobuf::internal *CoreML::Specification::FeatureType::_InternalParse(CoreML::Specification::FeatureType *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v39 = a2;
  do
  {
    while (1)
    {
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v39, *(a3 + 23)))
      {
        return v39;
      }

      v5 = (v39 + 1);
      v6 = *v39;
      if (*v39 < 0)
      {
        v6 = v6 + (*v5 << 7) - 128;
        if (*v5 < 0)
        {
          v7 = 14;
          v8 = 2;
          while (1)
          {
            v6 += (*(v39 + v8) - 1) << v7;
            if ((*(v39 + v8) & 0x80000000) == 0)
            {
              break;
            }

            ++v8;
            v7 += 7;
            if (v8 == 5)
            {
              return 0;
            }
          }

          v5 = (v39 + v8 + 1);
        }

        else
        {
          v5 = (v39 + 2);
        }
      }

      v9 = v6 >> 3;
      if (v6 >> 3 <= 4)
      {
        break;
      }

      if (v6 >> 3 <= 6)
      {
        if (v9 == 5)
        {
          if (v6 != 42)
          {
            goto LABEL_68;
          }

          if (*(this + 9) == 5)
          {
            goto LABEL_67;
          }

          CoreML::Specification::FeatureType::clear_Type(this);
          *(this + 9) = 5;
          v27 = *(this + 1);
          v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
          if (v27)
          {
            v28 = *v28;
          }

          google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ArrayFeatureType>(v28);
          goto LABEL_78;
        }

        if (v9 == 6 && v6 == 50)
        {
          if (*(this + 9) != 6)
          {
            CoreML::Specification::FeatureType::clear_Type(this);
            *(this + 9) = 6;
            v19 = *(this + 1);
            v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
            if (v19)
            {
              v20 = *v20;
            }

            v16 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::DictionaryFeatureType>(v20);
            goto LABEL_78;
          }

          goto LABEL_67;
        }

        goto LABEL_68;
      }

      if (v9 == 7)
      {
        if (v6 != 58)
        {
          goto LABEL_68;
        }

        if (*(this + 9) == 7)
        {
          goto LABEL_67;
        }

        CoreML::Specification::FeatureType::clear_Type(this);
        *(this + 9) = 7;
        v25 = *(this + 1);
        v26 = (v25 & 0xFFFFFFFFFFFFFFFCLL);
        if (v25)
        {
          v26 = *v26;
        }

        v16 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::SequenceFeatureType>(v26);
        goto LABEL_78;
      }

      if (v9 == 8)
      {
        if (v6 != 66)
        {
          goto LABEL_68;
        }

        if (*(this + 9) == 8)
        {
          goto LABEL_67;
        }

        CoreML::Specification::FeatureType::clear_Type(this);
        *(this + 9) = 8;
        v34 = *(this + 1);
        v35 = (v34 & 0xFFFFFFFFFFFFFFFCLL);
        if (v34)
        {
          v35 = *v35;
        }

        v16 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::StateFeatureType>(v35);
LABEL_78:
        v29 = v16;
        *(this + 3) = v16;
        goto LABEL_79;
      }

      if (v9 != 1000 || v6 != 64)
      {
        goto LABEL_68;
      }

      v11 = (v5 + 1);
      v10 = *v5;
      if ((v10 & 0x8000000000000000) != 0)
      {
        v12 = *v11;
        v10 = v10 & 0x7F | (v12 << 7);
        if (v12 < 0)
        {
          v36 = 14;
          v37 = 2;
          while (1)
          {
            v10 += (*(v5 + v37) - 1) << v36;
            if ((*(v5 + v37) & 0x80000000) == 0)
            {
              break;
            }

            ++v37;
            v36 += 7;
            if (v37 == 10)
            {
              v5 = 0;
              *(this + 16) = 0;
              return v5;
            }
          }

          v11 = (v5 + v37 + 1);
        }

        else
        {
          v11 = (v5 + 2);
        }
      }

      v39 = v11;
      *(this + 16) = v10 != 0;
    }

    if (v6 >> 3 <= 2)
    {
      if (v9 == 1)
      {
        if (v6 != 10)
        {
          goto LABEL_68;
        }

        if (*(this + 9) == 1)
        {
          goto LABEL_67;
        }

        CoreML::Specification::FeatureType::clear_Type(this);
        *(this + 9) = 1;
        v21 = *(this + 1);
        v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
        if (v21)
        {
          v22 = *v22;
        }

        v16 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Int64FeatureType>(v22);
        goto LABEL_78;
      }

      if (v9 != 2 || v6 != 18)
      {
        goto LABEL_68;
      }

      if (*(this + 9) != 2)
      {
        CoreML::Specification::FeatureType::clear_Type(this);
        *(this + 9) = 2;
        v14 = *(this + 1);
        v15 = (v14 & 0xFFFFFFFFFFFFFFFCLL);
        if (v14)
        {
          v15 = *v15;
        }

        v16 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::DoubleFeatureType>(v15);
        goto LABEL_78;
      }

LABEL_67:
      v29 = *(this + 3);
LABEL_79:
      v33 = google::protobuf::internal::ParseContext::ParseMessage(a3, v29, v5);
      goto LABEL_80;
    }

    if (v9 == 3)
    {
      if (v6 != 26)
      {
        goto LABEL_68;
      }

      if (*(this + 9) == 3)
      {
        goto LABEL_67;
      }

      CoreML::Specification::FeatureType::clear_Type(this);
      *(this + 9) = 3;
      v23 = *(this + 1);
      v24 = (v23 & 0xFFFFFFFFFFFFFFFCLL);
      if (v23)
      {
        v24 = *v24;
      }

      v16 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::StringFeatureType>(v24);
      goto LABEL_78;
    }

    if (v9 == 4 && v6 == 34)
    {
      if (*(this + 9) != 4)
      {
        CoreML::Specification::FeatureType::clear_Type(this);
        *(this + 9) = 4;
        v17 = *(this + 1);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v16 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ImageFeatureType>(v18);
        goto LABEL_78;
      }

      goto LABEL_67;
    }

LABEL_68:
    if (v6)
    {
      v30 = (v6 & 7) == 4;
    }

    else
    {
      v30 = 1;
    }

    if (v30)
    {
      *(a3 + 20) = v6 - 1;
      return v5;
    }

    v31 = *(this + 1);
    if (v31)
    {
      v32 = ((v31 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    else
    {
      v32 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v40 = v32;
    v33 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v40, v5, a3);
LABEL_80:
    v39 = v33;
  }

  while (v33);
  return 0;
}

uint64_t CoreML::Specification::FeatureType::clear_Type(uint64_t this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2 > 4)
  {
    if (v2 > 6)
    {
      if (v2 == 7)
      {
        v17 = *(this + 8);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          if (*v18)
          {
            goto LABEL_43;
          }
        }

        else if (v18)
        {
          goto LABEL_43;
        }

        this = *(this + 24);
        if (this)
        {
          CoreML::Specification::SequenceFeatureType::~SequenceFeatureType(this);
          goto LABEL_42;
        }

        goto LABEL_43;
      }

      if (v2 != 8)
      {
        goto LABEL_43;
      }

      v9 = *(this + 8);
      v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
      if (v9)
      {
        if (*v10)
        {
          goto LABEL_43;
        }
      }

      else if (v10)
      {
        goto LABEL_43;
      }

      this = *(this + 24);
      if (!this)
      {
        goto LABEL_43;
      }

      CoreML::Specification::StateFeatureType::~StateFeatureType(this);
    }

    else if (v2 == 5)
    {
      v13 = *(this + 8);
      v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
      if (v13)
      {
        if (*v14)
        {
          goto LABEL_43;
        }
      }

      else if (v14)
      {
        goto LABEL_43;
      }

      this = *(this + 24);
      if (!this)
      {
        goto LABEL_43;
      }

      CoreML::Specification::ArrayFeatureType::~ArrayFeatureType(this);
    }

    else
    {
      v5 = *(this + 8);
      v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
      if (v5)
      {
        if (*v6)
        {
          goto LABEL_43;
        }
      }

      else if (v6)
      {
        goto LABEL_43;
      }

      this = *(this + 24);
      if (!this)
      {
        goto LABEL_43;
      }

      CoreML::Specification::DictionaryFeatureType::~DictionaryFeatureType(this);
    }

    goto LABEL_42;
  }

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v15 = *(this + 8);
      v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
      if (v15)
      {
        if (*v16)
        {
          goto LABEL_43;
        }
      }

      else if (v16)
      {
        goto LABEL_43;
      }

      this = *(this + 24);
      if (this)
      {
LABEL_37:
        CoreML::Specification::Int64Range::~Int64Range(this);
        goto LABEL_42;
      }

      goto LABEL_43;
    }

    v7 = *(this + 8);
    v8 = (v7 & 0xFFFFFFFFFFFFFFFCLL);
    if (v7)
    {
      if (*v8)
      {
        goto LABEL_43;
      }
    }

    else if (v8)
    {
      goto LABEL_43;
    }

    this = *(this + 24);
    if (!this)
    {
      goto LABEL_43;
    }

    CoreML::Specification::ImageFeatureType::~ImageFeatureType(this);
LABEL_42:
    this = MEMORY[0x1C6908B60]();
    goto LABEL_43;
  }

  if (v2 == 1)
  {
    v11 = *(this + 8);
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      if (*v12)
      {
        goto LABEL_43;
      }
    }

    else if (v12)
    {
      goto LABEL_43;
    }

    this = *(this + 24);
    if (this)
    {
      goto LABEL_37;
    }
  }

  else if (v2 == 2)
  {
    v3 = *(this + 8);
    v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
    if (v3)
    {
      if (*v4)
      {
        goto LABEL_43;
      }
    }

    else if (v4)
    {
      goto LABEL_43;
    }

    this = *(this + 24);
    if (this)
    {
      goto LABEL_37;
    }
  }

LABEL_43:
  *(v1 + 36) = 0;
  return this;
}

uint64_t CoreML::Specification::FeatureType::ByteSizeLong(CoreML::Specification::FeatureType *this)
{
  if (*(this + 16))
  {
    v2 = 3;
  }

  else
  {
    v2 = 0;
  }

  v3 = *(this + 9);
  if (v3 > 4)
  {
    if (v3 > 6)
    {
      if (v3 == 7)
      {
        v4 = CoreML::Specification::SequenceFeatureType::ByteSizeLong(*(this + 3));
      }

      else
      {
        if (v3 != 8)
        {
          goto LABEL_24;
        }

        v4 = CoreML::Specification::StateFeatureType::ByteSizeLong(*(this + 3));
      }
    }

    else if (v3 == 5)
    {
      v4 = CoreML::Specification::ArrayFeatureType::ByteSizeLong(*(this + 3));
    }

    else
    {
      v4 = CoreML::Specification::DictionaryFeatureType::ByteSizeLong(*(this + 3));
    }

    goto LABEL_22;
  }

  if (v3 > 2)
  {
    if (v3 == 3)
    {
LABEL_14:
      v5 = *(this + 3);
      v6 = *(v5 + 8);
      if (v6)
      {
        v14 = v6 & 0xFFFFFFFFFFFFFFFCLL;
        v7 = *((v6 & 0xFFFFFFFFFFFFFFFCLL) + 31);
        if (v7 < 0)
        {
          v7 = *(v14 + 16);
        }
      }

      else
      {
        v7 = 0;
      }

      *(v5 + 16) = v7;
      v8 = (9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6;
      v9 = v2 + v7;
      goto LABEL_23;
    }

    v4 = CoreML::Specification::ImageFeatureType::ByteSizeLong(*(this + 3));
LABEL_22:
    v8 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v9 = v2 + v4;
LABEL_23:
    v2 = v9 + v8 + 1;
    goto LABEL_24;
  }

  if (v3 == 1 || v3 == 2)
  {
    goto LABEL_14;
  }

LABEL_24:
  v10 = *(this + 1);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v2 += v13;
  }

  *(this + 8) = v2;
  return v2;
}

std::string *CoreML::Specification::FeatureType::MergeFrom(std::string *this, const CoreML::Specification::FeatureType *a2)
{
  v3 = this;
  if (*(a2 + 16) == 1)
  {
    this->__r_.__value_.__s.__data_[16] = 1;
  }

  v4 = *(a2 + 9);
  if (v4 > 4)
  {
    if (v4 <= 6)
    {
      if (v4 != 5)
      {
        if (HIDWORD(this[1].__r_.__value_.__r.__words[1]) == 6)
        {
          data = this[1].__r_.__value_.__l.__data_;
        }

        else
        {
          CoreML::Specification::FeatureType::clear_Type(this);
          HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = 6;
          size = v3->__r_.__value_.__l.__size_;
          v25 = (size & 0xFFFFFFFFFFFFFFFCLL);
          if (size)
          {
            v25 = *v25;
          }

          data = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::DictionaryFeatureType>(v25);
          v3[1].__r_.__value_.__r.__words[0] = data;
          if (*(a2 + 9) != 6)
          {
            v26 = &CoreML::Specification::_DictionaryFeatureType_default_instance_;
            goto LABEL_66;
          }
        }

        v26 = *(a2 + 3);
LABEL_66:
        this = CoreML::Specification::DictionaryFeatureType::MergeFrom(data, v26);
        goto LABEL_71;
      }

      if (HIDWORD(this[1].__r_.__value_.__r.__words[1]) == 5)
      {
        v13 = this[1].__r_.__value_.__l.__data_;
      }

      else
      {
        CoreML::Specification::FeatureType::clear_Type(this);
        HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = 5;
        v16 = v3->__r_.__value_.__l.__size_;
        v17 = (v16 & 0xFFFFFFFFFFFFFFFCLL);
        if (v16)
        {
          v17 = *v17;
        }

        google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ArrayFeatureType>(v17);
        v3[1].__r_.__value_.__r.__words[0] = v13;
        if (*(a2 + 9) != 5)
        {
          v18 = &CoreML::Specification::_ArrayFeatureType_default_instance_;
          goto LABEL_62;
        }
      }

      v18 = *(a2 + 3);
LABEL_62:
      this = CoreML::Specification::ArrayFeatureType::MergeFrom(v13, v18);
      goto LABEL_71;
    }

    if (v4 != 7)
    {
      if (v4 != 8)
      {
        goto LABEL_71;
      }

      if (HIDWORD(this[1].__r_.__value_.__r.__words[1]) == 8)
      {
        v10 = this[1].__r_.__value_.__l.__data_;
      }

      else
      {
        CoreML::Specification::FeatureType::clear_Type(this);
        HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = 8;
        v30 = v3->__r_.__value_.__l.__size_;
        v31 = (v30 & 0xFFFFFFFFFFFFFFFCLL);
        if (v30)
        {
          v31 = *v31;
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::StateFeatureType>(v31);
        v3[1].__r_.__value_.__r.__words[0] = v10;
        if (*(a2 + 9) != 8)
        {
          v32 = &CoreML::Specification::_StateFeatureType_default_instance_;
          goto LABEL_70;
        }
      }

      v32 = *(a2 + 3);
LABEL_70:
      this = CoreML::Specification::StateFeatureType::MergeFrom(v10, v32);
      goto LABEL_71;
    }

    if (HIDWORD(this[1].__r_.__value_.__r.__words[1]) == 7)
    {
      v15 = this[1].__r_.__value_.__l.__data_;
    }

    else
    {
      CoreML::Specification::FeatureType::clear_Type(this);
      HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = 7;
      v21 = v3->__r_.__value_.__l.__size_;
      v22 = (v21 & 0xFFFFFFFFFFFFFFFCLL);
      if (v21)
      {
        v22 = *v22;
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::SequenceFeatureType>(v22);
      v3[1].__r_.__value_.__r.__words[0] = v15;
      if (*(a2 + 9) != 7)
      {
        v23 = &CoreML::Specification::_SequenceFeatureType_default_instance_;
        goto LABEL_64;
      }
    }

    v23 = *(a2 + 3);
LABEL_64:
    this = CoreML::Specification::SequenceFeatureType::MergeFrom(v15, v23);
    goto LABEL_71;
  }

  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      if (HIDWORD(this[1].__r_.__value_.__r.__words[1]) != 1)
      {
        CoreML::Specification::FeatureType::clear_Type(this);
        HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = 1;
        v11 = v3->__r_.__value_.__l.__size_;
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        this = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Int64FeatureType>(v12);
        v3[1].__r_.__value_.__r.__words[0] = this;
        if (*(a2 + 9) != 1)
        {
          v7 = &CoreML::Specification::_Int64FeatureType_default_instance_;
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    else
    {
      if (v4 != 2)
      {
        goto LABEL_71;
      }

      if (HIDWORD(this[1].__r_.__value_.__r.__words[1]) != 2)
      {
        CoreML::Specification::FeatureType::clear_Type(this);
        HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = 2;
        v5 = v3->__r_.__value_.__l.__size_;
        v6 = (v5 & 0xFFFFFFFFFFFFFFFCLL);
        if (v5)
        {
          v6 = *v6;
        }

        this = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::DoubleFeatureType>(v6);
        v3[1].__r_.__value_.__r.__words[0] = this;
        if (*(a2 + 9) != 2)
        {
          v7 = &CoreML::Specification::_DoubleFeatureType_default_instance_;
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    goto LABEL_31;
  }

  if (v4 != 3)
  {
    if (HIDWORD(this[1].__r_.__value_.__r.__words[1]) == 4)
    {
      v9 = this[1].__r_.__value_.__l.__data_;
    }

    else
    {
      CoreML::Specification::FeatureType::clear_Type(this);
      HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = 4;
      v27 = v3->__r_.__value_.__l.__size_;
      v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
      if (v27)
      {
        v28 = *v28;
      }

      v9 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ImageFeatureType>(v28);
      v3[1].__r_.__value_.__r.__words[0] = v9;
      if (*(a2 + 9) != 4)
      {
        v29 = &CoreML::Specification::_ImageFeatureType_default_instance_;
        goto LABEL_68;
      }
    }

    v29 = *(a2 + 3);
LABEL_68:
    this = CoreML::Specification::ImageFeatureType::MergeFrom(v9, v29);
    goto LABEL_71;
  }

  if (HIDWORD(this[1].__r_.__value_.__r.__words[1]) == 3)
  {
LABEL_31:
    this = this[1].__r_.__value_.__l.__data_;
LABEL_32:
    v7 = *(a2 + 3);
    goto LABEL_33;
  }

  CoreML::Specification::FeatureType::clear_Type(this);
  HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = 3;
  v19 = v3->__r_.__value_.__l.__size_;
  v20 = (v19 & 0xFFFFFFFFFFFFFFFCLL);
  if (v19)
  {
    v20 = *v20;
  }

  this = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::StringFeatureType>(v20);
  v3[1].__r_.__value_.__r.__words[0] = this;
  if (*(a2 + 9) == 3)
  {
    goto LABEL_32;
  }

  v7 = &CoreML::Specification::_StringFeatureType_default_instance_;
LABEL_33:
  v14 = v7[1];
  if (v14)
  {
    this = google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(&this->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

LABEL_71:
  v33 = *(a2 + 1);
  if (v33)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(&v3->__r_.__value_.__l.__size_, (v33 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t CoreML::Specification::FeatureType::Clear(CoreML::Specification::FeatureType *this)
{
  *(this + 16) = 0;
  result = CoreML::Specification::FeatureType::clear_Type(this);
  v4 = *(this + 8);
  v3 = (this + 8);
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(v3);
  }

  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::FeatureType>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_1F415E008;
  *(result + 32) = 0;
  *(result + 16) = 0;
  return result;
}

void CoreML::Specification::FeatureType::~FeatureType(CoreML::Specification::FeatureType *this)
{
  CoreML::Specification::FeatureType::~FeatureType(this);

  JUMPOUT(0x1C6908B60);
}

{
  v3 = (this + 8);
  v2 = *(this + 1);
  v4 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v4)
    {
      goto LABEL_7;
    }
  }

  else if (v4)
  {
    goto LABEL_7;
  }

  if (*(this + 9))
  {
    CoreML::Specification::FeatureType::clear_Type(this);
    v2 = *(this + 1);
  }

  if (v2)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(v2);
  }

LABEL_7:
  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}

uint64_t CoreML::Specification::ImageFeatureType_ImageSize::ImageFeatureType_ImageSize(uint64_t this, unint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *this = &unk_1F415D810;
  *(this + 8) = v3;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

std::string *CoreML::Specification::ImageFeatureType_ImageSize::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    v6 = this->__r_.__value_.__s.__data_[8];
    p_size = &this->__r_.__value_.__l.__size_;
    p_size[1] = 0;
    p_size[2] = 0;
    if (v6)
    {
      google::protobuf::internal::InternalMetadata::DoClear<std::string>(p_size);
    }

    return CoreML::Specification::Int64Range::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t CoreML::Specification::ImageFeatureType::ImageFeatureType(uint64_t this, unint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *this = off_1F415DC48;
  *(this + 8) = v3;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 48) = 0;
  return this;
}

std::string *CoreML::Specification::ImageFeatureType::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    CoreML::Specification::ImageFeatureType::Clear(this);

    return CoreML::Specification::ImageFeatureType::MergeFrom(v4, a2);
  }

  return this;
}

double CoreML::Specification::ArrayFeatureType::ArrayFeatureType(CoreML::Specification::ArrayFeatureType *this, unint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *this = off_1F415DCC0;
  *(this + 1) = v3;
  result = 0.0;
  *(this + 2) = 0;
  *(this + 3) = a2;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 16) = 0;
  return result;
}

std::string *CoreML::Specification::ArrayFeatureType::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    CoreML::Specification::ArrayFeatureType::Clear(this);

    return CoreML::Specification::ArrayFeatureType::MergeFrom(v4, a2);
  }

  return this;
}

void *CoreML::Specification::DictionaryFeatureType::DictionaryFeatureType(void *this, unint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *this = off_1F415D900;
  this[1] = v3;
  this[3] = 0;
  return this;
}

std::string *CoreML::Specification::DictionaryFeatureType::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    CoreML::Specification::DictionaryFeatureType::Clear(this);

    return CoreML::Specification::DictionaryFeatureType::MergeFrom(v4, a2);
  }

  return this;
}

void *CoreML::Specification::SequenceFeatureType::SequenceFeatureType(void *this, unint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *this = off_1F415D978;
  this[1] = v3;
  this[2] = 0;
  this[4] = 0;
  return this;
}

std::string *CoreML::Specification::SequenceFeatureType::CopyFrom(std::string *this, void (***a2)(CoreML::Specification::SequenceFeatureType *__hidden this))
{
  if (a2 != this)
  {
    v4 = this;
    CoreML::Specification::SequenceFeatureType::Clear(this);

    return CoreML::Specification::SequenceFeatureType::MergeFrom(v4, a2);
  }

  return this;
}

void *CoreML::Specification::StateFeatureType::StateFeatureType(void *this, unint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *this = off_1F41603D0;
  this[1] = v3;
  this[3] = 0;
  return this;
}

std::string *CoreML::Specification::StateFeatureType::CopyFrom(std::string *this, std::string *a2)
{
  if (a2 != this)
  {
    v4 = this;
    CoreML::Specification::StateFeatureType::Clear(this);

    return CoreML::Specification::StateFeatureType::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t nlohmann::detail::lexer<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>,nlohmann::detail::input_stream_adapter>::get(int64x2_t *this)
{
  this[2] = vaddq_s64(this[2], vdupq_n_s64(1uLL));
  if (this[1].i8[8] == 1)
  {
    this[1].i8[8] = 0;
    result = this[1].u32[1];
  }

  else
  {
    result = nlohmann::detail::input_stream_adapter::get_character(this);
    this[1].i32[1] = result;
  }

  if (result != -1)
  {
    v4 = result;
    std::vector<char>::push_back[abi:ne200100](&this[3].i64[1], &v4);
    result = this[1].u32[1];
    if (result == 10)
    {
      v3 = this[3].i64[0] + 1;
      this[2].i64[1] = 0;
      this[3].i64[0] = v3;
    }
  }

  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A08](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A18](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A20](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::logic_error *__cdecl std::logic_error::logic_error(std::logic_error *this, const char *a2)
{
  return MEMORY[0x1EEE63A90](this, a2);
}

{
  return MEMORY[0x1EEE63AA0](this, a2);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63F00]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}