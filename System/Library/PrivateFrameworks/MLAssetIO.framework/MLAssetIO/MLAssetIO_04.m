unsigned __int8 *CoreML::Specification::Int64Vector::_InternalSerialize(CoreML::Specification::Int64Vector *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  v6 = *(this + 8);
  if (v6 >= 1)
  {
    if (*a3 <= __dst)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
    }

    *v4 = 10;
    v7 = v4 + 1;
    if (v6 >= 0x80)
    {
      do
      {
        *v7++ = v6 | 0x80;
        v20 = v6 >> 14;
        v6 >>= 7;
      }

      while (v20);
      v4 = v7 - 1;
    }

    v4 += 2;
    *v7 = v6;
    v8 = *(this + 3);
    v9 = &v8[*(this + 4)];
    do
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v11 = *v8++;
      v10 = v11;
      *v4 = v11;
      if (v11 > 0x7F)
      {
        *v4 = v10 | 0x80;
        v12 = v10 >> 7;
        v4[1] = v10 >> 7;
        v4 += 2;
        if (v10 >= 0x4000)
        {
          v13 = v10 >> 7;
          do
          {
            *(v4 - 1) = v13 | 0x80;
            v13 = v12 >> 7;
            *v4++ = v12 >> 7;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
        }
      }

      else
      {
        ++v4;
      }
    }

    while (v8 < v9);
  }

  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return v4;
  }

  v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
  v18 = *(v17 + 31);
  if (v18 < 0)
  {
    v19 = *(v17 + 8);
    v18 = *(v17 + 16);
  }

  else
  {
    v19 = (v17 + 8);
  }

  if (*a3 - v4 >= v18)
  {
    v21 = v18;
    memcpy(v4, v19, v18);
    v4 += v21;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v19, v18, v4);
}

google::protobuf::internal *CoreML::Specification::Int64Vector::_InternalParse(CoreML::Specification::Int64Vector *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v17 = a2;
  do
  {
    while (1)
    {
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v17, *(a3 + 23)))
      {
        return v17;
      }

      v7 = (v17 + 1);
      v8 = *v17;
      if (*v17 < 0)
      {
        v8 = v8 + (*v7 << 7) - 128;
        if (*v7 < 0)
        {
          v9 = 14;
          v10 = 2;
          while (1)
          {
            v8 += (*(v17 + v10) - 1) << v9;
            if ((*(v17 + v10) & 0x80000000) == 0)
            {
              break;
            }

            ++v10;
            v9 += 7;
            if (v10 == 5)
            {
              return 0;
            }
          }

          v7 = (v17 + v10 + 1);
        }

        else
        {
          v7 = (v17 + 2);
        }
      }

      v17 = v7;
      if ((v8 & 0xFFFFFFF8) != 8)
      {
        break;
      }

      if (v8 == 10)
      {
        v11 = google::protobuf::internal::PackedInt64Parser((this + 16), v7, a3, v6);
        goto LABEL_24;
      }

      if (v8 != 8)
      {
        break;
      }

      Varint64 = google::protobuf::internal::ReadVarint64(&v17, v5);
      google::protobuf::RepeatedField<long long>::Add(this + 4, Varint64);
      if (!v17)
      {
        return 0;
      }
    }

    if (v8)
    {
      v13 = (v8 & 7) == 4;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      *(a3 + 20) = v8 - 1;
      return v7;
    }

    v14 = *(this + 1);
    if (v14)
    {
      v15 = ((v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    else
    {
      v15 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v18 = v15;
    v11 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v8, &v18, v7, a3);
LABEL_24:
    v17 = v11;
  }

  while (v11);
  return 0;
}

uint64_t CoreML::Specification::Int64Vector::ByteSizeLong(CoreML::Specification::Int64Vector *this)
{
  v1 = *(this + 4);
  if (v1 < 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = *(this + 3);
    do
    {
      v4 = *v3++;
      v2 += (9 * (__clz(v4 | 1) ^ 0x3F) + 73) >> 6;
      --v1;
    }

    while (v1);
    if (v2)
    {
      v5 = ((9 * (__clz(v2 | 1) ^ 0x3F) + 73) >> 6) + 1;
      goto LABEL_8;
    }
  }

  v5 = 0;
LABEL_8:
  *(this + 8) = v2;
  v6 = v5 + v2;
  v7 = *(this + 1);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v6 += v10;
  }

  *(this + 9) = v6;
  return v6;
}

std::string *CoreML::Specification::Int64Vector::CheckTypeAndMergeFrom(std::string *this, const google::protobuf::MessageLite *a2)
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

  v8 = *(a2 + 1);
  if (v8)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>((v3 + 8), (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t CoreML::Specification::Int64Vector::Clear(CoreML::Specification::Int64Vector *this)
{
  v2 = *(this + 8);
  result = this + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(result);
  }

  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Int64Vector>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &unk_1F415DF90;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 36) = 0;
  return result;
}

void CoreML::Specification::Int64Vector::~Int64Vector(CoreML::Specification::Int64Vector *this)
{
  CoreML::Specification::Int64Vector::~Int64Vector(this);

  JUMPOUT(0x1C6908B60);
}

{
  v3 = (this + 8);
  v2 = *(this + 1);
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(v2);
  }

  if (*(this + 5) >= 1)
  {
    v4 = *(this + 3);
    v6 = *(v4 - 8);
    v5 = (v4 - 8);
    if (!v6)
    {
      operator delete(v5);
    }
  }

  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}

unsigned __int8 *CoreML::Specification::Int64Range::_InternalSerialize(CoreML::Specification::Int64Range *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  v6 = *(this + 2);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      v6 = *(this + 2);
    }

    *v4 = 8;
    v4[1] = v6;
    if (v6 > 0x7F)
    {
      v4[1] = v6 | 0x80;
      v7 = v6 >> 7;
      v4[2] = v6 >> 7;
      v4 += 3;
      if (v6 >= 0x4000)
      {
        v8 = v6 >> 7;
        do
        {
          *(v4 - 1) = v8 | 0x80;
          v8 = v7 >> 7;
          *v4++ = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }
    }

    else
    {
      v4 += 2;
    }
  }

  v10 = *(this + 3);
  if (v10)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      v10 = *(this + 3);
    }

    *v4 = 16;
    v4[1] = v10;
    if (v10 > 0x7F)
    {
      v4[1] = v10 | 0x80;
      v11 = v10 >> 7;
      v4[2] = v10 >> 7;
      v4 += 3;
      if (v10 >= 0x4000)
      {
        v12 = v10 >> 7;
        do
        {
          *(v4 - 1) = v12 | 0x80;
          v12 = v11 >> 7;
          *v4++ = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }
    }

    else
    {
      v4 += 2;
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return v4;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if (*a3 - v4 >= v17)
  {
    v19 = v17;
    memcpy(v4, v18, v17);
    v4 += v19;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v18, v17, v4);
}

const char *CoreML::Specification::Int64Range::_InternalParse(CoreML::Specification::Int64Range *this, const char *a2, google::protobuf::internal::ParseContext *a3)
{
  v24 = a2;
  do
  {
    while (1)
    {
      while (1)
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
              v6 += (v24[v8] - 1) << v7;
              if ((v24[v8] & 0x80000000) == 0)
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

            v5 = &v24[v8 + 1];
          }

          else
          {
            v5 = (v24 + 2);
          }
        }

        if (v6 >> 3 != 2)
        {
          break;
        }

        if (v6 != 16)
        {
          goto LABEL_16;
        }

        v14 = v5 + 1;
        v13 = *v5;
        if ((v13 & 0x8000000000000000) != 0)
        {
          v15 = *v14;
          v13 = v13 & 0x7F | (v15 << 7);
          if (v15 < 0)
          {
            v19 = 14;
            v20 = 2;
            while (1)
            {
              v13 += (v5[v20] - 1) << v19;
              if ((v5[v20] & 0x80000000) == 0)
              {
                break;
              }

              ++v20;
              v19 += 7;
              if (v20 == 10)
              {
                v5 = 0;
                *(this + 3) = 0;
                return v5;
              }
            }

            v14 = &v5[v20 + 1];
          }

          else
          {
            v14 = v5 + 2;
          }
        }

        v24 = v14;
        *(this + 3) = v13;
      }

      if (v6 >> 3 != 1 || v6 != 8)
      {
        break;
      }

      v17 = v5 + 1;
      v16 = *v5;
      if ((v16 & 0x8000000000000000) != 0)
      {
        v18 = *v17;
        v16 = v16 & 0x7F | (v18 << 7);
        if (v18 < 0)
        {
          v21 = 14;
          v22 = 2;
          while (1)
          {
            v16 += (v5[v22] - 1) << v21;
            if ((v5[v22] & 0x80000000) == 0)
            {
              break;
            }

            ++v22;
            v21 += 7;
            if (v22 == 10)
            {
              v5 = 0;
              *(this + 2) = 0;
              return v5;
            }
          }

          v17 = &v5[v22 + 1];
        }

        else
        {
          v17 = v5 + 2;
        }
      }

      v24 = v17;
      *(this + 2) = v16;
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

    v25 = v12;
    v24 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v25, v5, a3);
  }

  while (v24);
  return 0;
}

unint64_t CoreML::Specification::Int64Range::ByteSizeLong(CoreML::Specification::Int64Range *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  v3 = (9 * (__clz(v1 | 1) ^ 0x3F) + 137) >> 6;
  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 3);
  v6 = v5 == 0;
  v7 = v4 + ((9 * (__clz(v5 | 1) ^ 0x3F) + 137) >> 6);
  if (!v6)
  {
    v4 = v7;
  }

  if (v2)
  {
    v9 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v4 += v10;
  }

  *(this + 8) = v4;
  return v4;
}

std::string *CoreML::Specification::Int64Range::MergeFrom(std::string *this, const CoreML::Specification::Int64Range *a2)
{
  v2 = *(a2 + 2);
  if (v2)
  {
    this->__r_.__value_.__r.__words[2] = v2;
  }

  v3 = *(a2 + 3);
  if (v3)
  {
    this[1].__r_.__value_.__r.__words[0] = v3;
  }

  v4 = *(a2 + 1);
  if (v4)
  {
    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(&this->__r_.__value_.__l.__size_, (v4 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t *CoreML::Specification::Int64Range::Clear(CoreML::Specification::Int64Range *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  result[1] = 0;
  result[2] = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(result);
  }

  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Int64Range>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_1F415E0F8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void CoreML::Specification::Int64Range::~Int64Range(CoreML::Specification::Int64Range *this)
{
  CoreML::Specification::Int64Range::~Int64Range(this);

  JUMPOUT(0x1C6908B60);
}

{
  v3 = (this + 8);
  v2 = *(this + 1);
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(v2);
  }

  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}

unsigned __int8 *CoreML::Specification::Int64Set::_InternalSerialize(CoreML::Specification::Int64Set *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  v6 = *(this + 8);
  if (v6 >= 1)
  {
    if (*a3 <= __dst)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
    }

    *v4 = 10;
    v7 = v4 + 1;
    if (v6 >= 0x80)
    {
      do
      {
        *v7++ = v6 | 0x80;
        v20 = v6 >> 14;
        v6 >>= 7;
      }

      while (v20);
      v4 = v7 - 1;
    }

    v4 += 2;
    *v7 = v6;
    v8 = *(this + 3);
    v9 = &v8[*(this + 4)];
    do
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v11 = *v8++;
      v10 = v11;
      *v4 = v11;
      if (v11 > 0x7F)
      {
        *v4 = v10 | 0x80;
        v12 = v10 >> 7;
        v4[1] = v10 >> 7;
        v4 += 2;
        if (v10 >= 0x4000)
        {
          v13 = v10 >> 7;
          do
          {
            *(v4 - 1) = v13 | 0x80;
            v13 = v12 >> 7;
            *v4++ = v12 >> 7;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
        }
      }

      else
      {
        ++v4;
      }
    }

    while (v8 < v9);
  }

  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return v4;
  }

  v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
  v18 = *(v17 + 31);
  if (v18 < 0)
  {
    v19 = *(v17 + 8);
    v18 = *(v17 + 16);
  }

  else
  {
    v19 = (v17 + 8);
  }

  if (*a3 - v4 >= v18)
  {
    v21 = v18;
    memcpy(v4, v19, v18);
    v4 += v21;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v19, v18, v4);
}

google::protobuf::internal *CoreML::Specification::Int64Set::_InternalParse(CoreML::Specification::Int64Set *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v17 = a2;
  do
  {
    while (1)
    {
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v17, *(a3 + 23)))
      {
        return v17;
      }

      v7 = (v17 + 1);
      v8 = *v17;
      if (*v17 < 0)
      {
        v8 = v8 + (*v7 << 7) - 128;
        if (*v7 < 0)
        {
          v9 = 14;
          v10 = 2;
          while (1)
          {
            v8 += (*(v17 + v10) - 1) << v9;
            if ((*(v17 + v10) & 0x80000000) == 0)
            {
              break;
            }

            ++v10;
            v9 += 7;
            if (v10 == 5)
            {
              return 0;
            }
          }

          v7 = (v17 + v10 + 1);
        }

        else
        {
          v7 = (v17 + 2);
        }
      }

      v17 = v7;
      if ((v8 & 0xFFFFFFF8) != 8)
      {
        break;
      }

      if (v8 == 10)
      {
        v11 = google::protobuf::internal::PackedInt64Parser((this + 16), v7, a3, v6);
        goto LABEL_24;
      }

      if (v8 != 8)
      {
        break;
      }

      Varint64 = google::protobuf::internal::ReadVarint64(&v17, v5);
      google::protobuf::RepeatedField<long long>::Add(this + 4, Varint64);
      if (!v17)
      {
        return 0;
      }
    }

    if (v8)
    {
      v13 = (v8 & 7) == 4;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      *(a3 + 20) = v8 - 1;
      return v7;
    }

    v14 = *(this + 1);
    if (v14)
    {
      v15 = ((v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    else
    {
      v15 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v18 = v15;
    v11 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v8, &v18, v7, a3);
LABEL_24:
    v17 = v11;
  }

  while (v11);
  return 0;
}

uint64_t CoreML::Specification::Int64Set::ByteSizeLong(CoreML::Specification::Int64Set *this)
{
  v1 = *(this + 4);
  if (v1 < 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = *(this + 3);
    do
    {
      v4 = *v3++;
      v2 += (9 * (__clz(v4 | 1) ^ 0x3F) + 73) >> 6;
      --v1;
    }

    while (v1);
    if (v2)
    {
      v5 = ((9 * (__clz(v2 | 1) ^ 0x3F) + 73) >> 6) + 1;
      goto LABEL_8;
    }
  }

  v5 = 0;
LABEL_8:
  *(this + 8) = v2;
  v6 = v5 + v2;
  v7 = *(this + 1);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v6 += v10;
  }

  *(this + 9) = v6;
  return v6;
}

std::string *CoreML::Specification::Int64Set::MergeFrom(std::string *this, const CoreML::Specification::Int64Set *a2)
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

  v8 = *(a2 + 1);
  if (v8)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>((v3 + 8), (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t CoreML::Specification::Int64Set::Clear(CoreML::Specification::Int64Set *this)
{
  v2 = *(this + 8);
  result = this + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(result);
  }

  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Int64Set>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_1F415D5B8;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 36) = 0;
  return result;
}

void CoreML::Specification::Int64Set::~Int64Set(CoreML::Specification::Int64Set *this)
{
  CoreML::Specification::Int64Vector::~Int64Vector(this);

  JUMPOUT(0x1C6908B60);
}

unsigned __int8 *CoreML::Specification::DoubleRange::_InternalSerialize(CoreML::Specification::DoubleRange *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  if (*(this + 2))
  {
    if (*a3 <= __dst)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      v6 = *(this + 2);
    }

    else
    {
      v6 = *(this + 2);
    }

    *v4 = 9;
    *(v4 + 1) = v6;
    v4 += 9;
  }

  if (*(this + 3))
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 3);
    *v4 = 17;
    *(v4 + 1) = v7;
    v4 += 9;
  }

  v8 = *(this + 1);
  if ((v8 & 1) == 0)
  {
    return v4;
  }

  v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
  v11 = *(v10 + 31);
  if (v11 < 0)
  {
    v12 = *(v10 + 8);
    v11 = *(v10 + 16);
  }

  else
  {
    v12 = (v10 + 8);
  }

  if (*a3 - v4 >= v11)
  {
    v13 = v11;
    memcpy(v4, v12, v11);
    v4 += v13;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v12, v11, v4);
}

const char *CoreML::Specification::DoubleRange::_InternalParse(CoreML::Specification::DoubleRange *this, const char *a2, google::protobuf::internal::ParseContext *a3)
{
  v14 = a2;
  do
  {
    while (1)
    {
      while (1)
      {
        if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v14, *(a3 + 23)))
        {
          return v14;
        }

        v5 = (v14 + 1);
        v6 = *v14;
        if (*v14 < 0)
        {
          v6 = v6 + (*v5 << 7) - 128;
          if (*v5 < 0)
          {
            v7 = 14;
            v8 = 2;
            while (1)
            {
              v6 += (v14[v8] - 1) << v7;
              if ((v14[v8] & 0x80000000) == 0)
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

            v5 = &v14[v8 + 1];
          }

          else
          {
            v5 = (v14 + 2);
          }
        }

        if (v6 >> 3 != 2)
        {
          break;
        }

        if (v6 != 17)
        {
          goto LABEL_16;
        }

        *(this + 3) = *v5;
        v14 = v5 + 8;
      }

      if (v6 >> 3 != 1 || v6 != 9)
      {
        break;
      }

      *(this + 2) = *v5;
      v14 = v5 + 8;
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

    v15 = v12;
    v14 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v15, v5, a3);
  }

  while (v14);
  return 0;
}

uint64_t CoreML::Specification::DoubleRange::ByteSizeLong(CoreML::Specification::DoubleRange *this)
{
  v1 = *(this + 1);
  v2 = 9;
  if (!*(this + 2))
  {
    v2 = 0;
  }

  if (*(this + 3))
  {
    v2 += 9;
  }

  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    v2 += v5;
  }

  *(this + 8) = v2;
  return v2;
}

std::string *CoreML::Specification::DoubleRange::MergeFrom(std::string *this, const CoreML::Specification::DoubleRange *a2)
{
  if (*(a2 + 2))
  {
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
  }

  if (*(a2 + 3))
  {
    this[1].__r_.__value_.__r.__words[0] = *(a2 + 3);
  }

  v2 = *(a2 + 1);
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(&this->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t *CoreML::Specification::DoubleRange::Clear(CoreML::Specification::DoubleRange *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  result[1] = 0;
  result[2] = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(result);
  }

  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::DoubleRange>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_1F415E080;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void CoreML::Specification::DoubleRange::~DoubleRange(CoreML::Specification::DoubleRange *this)
{
  CoreML::Specification::Int64Range::~Int64Range(this);

  JUMPOUT(0x1C6908B60);
}

uint64_t CoreML::Specification::StringVector::StringVector(uint64_t this, unint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *this = &unk_1F415DF18;
  *(this + 8) = v3;
  *(this + 24) = 0;
  *(this + 32) = 0;
  *(this + 16) = a2;
  *(this + 40) = 0;
  return this;
}

uint64_t CoreML::Specification::Int64Vector::Int64Vector(uint64_t this, unint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *this = &unk_1F415DF90;
  *(this + 8) = v3;
  *(this + 16) = 0;
  *(this + 24) = a2;
  *(this + 36) = 0;
  return this;
}

unsigned __int8 *CoreML::Specification::Int64Parameter::_InternalSerialize(CoreML::Specification::Int64Parameter *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  v6 = *(this + 2);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      v6 = *(this + 2);
    }

    *v4 = 8;
    v4[1] = v6;
    if (v6 > 0x7F)
    {
      v4[1] = v6 | 0x80;
      v7 = v6 >> 7;
      v4[2] = v6 >> 7;
      v4 += 3;
      if (v6 >= 0x4000)
      {
        v8 = v6 >> 7;
        do
        {
          *(v4 - 1) = v8 | 0x80;
          v8 = v7 >> 7;
          *v4++ = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }
    }

    else
    {
      v4 += 2;
    }
  }

  v10 = *(this + 9);
  if (v10 == 10)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v11 = *(this + 3);
    *v4 = 82;
    v12 = *(v11 + 8);
    v4[1] = v12;
    if (v12 > 0x7F)
    {
      v4[1] = v12 | 0x80;
      v14 = v12 >> 7;
      v4[2] = v12 >> 7;
      v13 = v4 + 3;
      if (v12 >= 0x4000)
      {
        v15 = v12 >> 7;
        do
        {
          *(v13 - 1) = v14 | 0x80;
          v14 = v15 >> 7;
          *v13++ = v15 >> 7;
          v16 = v15 >> 14;
          v15 >>= 7;
        }

        while (v16);
      }
    }

    else
    {
      v13 = v4 + 2;
    }

    v4 = CoreML::Specification::Int64Range::_InternalSerialize(v11, v13, a3);
    v10 = *(this + 9);
  }

  if (v10 == 11)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v17 = *(this + 3);
    *v4 = 90;
    v18 = *(v17 + 9);
    v4[1] = v18;
    if (v18 > 0x7F)
    {
      v4[1] = v18 | 0x80;
      v20 = v18 >> 7;
      v4[2] = v18 >> 7;
      v19 = v4 + 3;
      if (v18 >= 0x4000)
      {
        v21 = v18 >> 7;
        do
        {
          *(v19 - 1) = v20 | 0x80;
          v20 = v21 >> 7;
          *v19++ = v21 >> 7;
          v22 = v21 >> 14;
          v21 >>= 7;
        }

        while (v22);
      }
    }

    else
    {
      v19 = v4 + 2;
    }

    v4 = CoreML::Specification::Int64Set::_InternalSerialize(v17, v19, a3);
  }

  v23 = *(this + 1);
  if ((v23 & 1) == 0)
  {
    return v4;
  }

  v25 = v23 & 0xFFFFFFFFFFFFFFFCLL;
  v26 = *(v25 + 31);
  if (v26 < 0)
  {
    v27 = *(v25 + 8);
    v26 = *(v25 + 16);
  }

  else
  {
    v27 = (v25 + 8);
  }

  if (*a3 - v4 >= v26)
  {
    v28 = v26;
    memcpy(v4, v27, v26);
    v4 += v28;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v27, v26, v4);
}

google::protobuf::internal *CoreML::Specification::Int64Parameter::_InternalParse(CoreML::Specification::Int64Parameter *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v27 = a2;
  do
  {
    while (1)
    {
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v27, *(a3 + 23)))
      {
        return v27;
      }

      v5 = (v27 + 1);
      v6 = *v27;
      if (*v27 < 0)
      {
        v6 = v6 + (*v5 << 7) - 128;
        if (*v5 < 0)
        {
          v7 = 14;
          v8 = 2;
          while (1)
          {
            v6 += (*(v27 + v8) - 1) << v7;
            if ((*(v27 + v8) & 0x80000000) == 0)
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

          v5 = (v27 + v8 + 1);
        }

        else
        {
          v5 = (v27 + 2);
        }
      }

      v9 = v6 >> 3;
      if (v6 >> 3 == 11)
      {
        break;
      }

      if (v9 == 10)
      {
        if (v6 == 82)
        {
          if (*(this + 9) != 10)
          {
            CoreML::Specification::Int64Parameter::clear_AllowedValues(this);
            *(this + 9) = 10;
            v15 = *(this + 1);
            v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
            if (v15)
            {
              v16 = *v16;
            }

            v17 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Int64Range>(v16);
LABEL_38:
            v18 = v17;
            *(this + 3) = v17;
            goto LABEL_39;
          }

          goto LABEL_31;
        }

        goto LABEL_17;
      }

      if (v9 != 1 || v6 != 8)
      {
        goto LABEL_17;
      }

      v20 = (v5 + 1);
      v19 = *v5;
      if ((v19 & 0x8000000000000000) != 0)
      {
        v21 = *v20;
        v19 = v19 & 0x7F | (v21 << 7);
        if (v21 < 0)
        {
          v24 = 14;
          v25 = 2;
          while (1)
          {
            v19 += (*(v5 + v25) - 1) << v24;
            if ((*(v5 + v25) & 0x80000000) == 0)
            {
              break;
            }

            ++v25;
            v24 += 7;
            if (v25 == 10)
            {
              v5 = 0;
              *(this + 2) = 0;
              return v5;
            }
          }

          v20 = (v5 + v25 + 1);
        }

        else
        {
          v20 = (v5 + 2);
        }
      }

      v27 = v20;
      *(this + 2) = v19;
    }

    if (v6 == 90)
    {
      if (*(this + 9) != 11)
      {
        CoreML::Specification::Int64Parameter::clear_AllowedValues(this);
        *(this + 9) = 11;
        v22 = *(this + 1);
        v23 = (v22 & 0xFFFFFFFFFFFFFFFCLL);
        if (v22)
        {
          v23 = *v23;
        }

        v17 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Int64Set>(v23);
        goto LABEL_38;
      }

LABEL_31:
      v18 = *(this + 3);
LABEL_39:
      v14 = google::protobuf::internal::ParseContext::ParseMessage(a3, v18, v5);
      goto LABEL_40;
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

    v28 = v13;
    v14 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v28, v5, a3);
LABEL_40:
    v27 = v14;
  }

  while (v14);
  return 0;
}

uint64_t CoreML::Specification::Int64Parameter::clear_AllowedValues(uint64_t this)
{
  v1 = this;
  v2 = *(this + 36);
  if (v2 == 11)
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

    this = *(this + 24);
    if (this)
    {
      CoreML::Specification::Int64Vector::~Int64Vector(this);
      goto LABEL_11;
    }
  }

  else if (v2 == 10)
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

    this = *(this + 24);
    if (this)
    {
      CoreML::Specification::Int64Range::~Int64Range(this);
LABEL_11:
      this = MEMORY[0x1C6908B60]();
    }
  }

LABEL_12:
  *(v1 + 36) = 0;
  return this;
}

unint64_t CoreML::Specification::Int64Parameter::ByteSizeLong(CoreML::Specification::Int64Parameter *this)
{
  v2 = *(this + 2);
  v3 = (9 * (__clz(v2 | 1) ^ 0x3F) + 137) >> 6;
  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 9);
  if (v5 == 11)
  {
    v6 = CoreML::Specification::Int64Set::ByteSizeLong(*(this + 3));
  }

  else
  {
    if (v5 != 10)
    {
      goto LABEL_9;
    }

    v6 = CoreML::Specification::Int64Range::ByteSizeLong(*(this + 3));
  }

  v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_9:
  v7 = *(this + 1);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v4 += v10;
  }

  *(this + 8) = v4;
  return v4;
}

std::string *CoreML::Specification::Int64Parameter::CheckTypeAndMergeFrom(std::string *this, const google::protobuf::MessageLite *a2)
{
  v3 = this;
  v4 = *(a2 + 2);
  if (v4)
  {
    this->__r_.__value_.__r.__words[2] = v4;
  }

  v5 = *(a2 + 9);
  if (v5 != 11)
  {
    if (v5 != 10)
    {
      goto LABEL_21;
    }

    if (HIDWORD(this[1].__r_.__value_.__r.__words[1]) == 10)
    {
      data = this[1].__r_.__value_.__l.__data_;
    }

    else
    {
      CoreML::Specification::Int64Parameter::clear_AllowedValues(this);
      HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = 10;
      size = v3->__r_.__value_.__l.__size_;
      v9 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v9 = *v9;
      }

      data = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Int64Range>(v9);
      v3[1].__r_.__value_.__r.__words[0] = data;
      if (*(a2 + 9) != 10)
      {
        v10 = &CoreML::Specification::_Int64Range_default_instance_;
        goto LABEL_18;
      }
    }

    v10 = *(a2 + 3);
LABEL_18:
    this = CoreML::Specification::Int64Range::MergeFrom(data, v10);
    goto LABEL_21;
  }

  if (HIDWORD(this[1].__r_.__value_.__r.__words[1]) == 11)
  {
    v7 = this[1].__r_.__value_.__l.__data_;
  }

  else
  {
    CoreML::Specification::Int64Parameter::clear_AllowedValues(this);
    HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = 11;
    v11 = v3->__r_.__value_.__l.__size_;
    v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
    if (v11)
    {
      v12 = *v12;
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Int64Set>(v12);
    v3[1].__r_.__value_.__r.__words[0] = v7;
    if (*(a2 + 9) != 11)
    {
      v13 = &CoreML::Specification::_Int64Set_default_instance_;
      goto LABEL_20;
    }
  }

  v13 = *(a2 + 3);
LABEL_20:
  this = CoreML::Specification::Int64Set::MergeFrom(v7, v13);
LABEL_21:
  v14 = *(a2 + 1);
  if (v14)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(&v3->__r_.__value_.__l.__size_, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t CoreML::Specification::Int64Parameter::Clear(CoreML::Specification::Int64Parameter *this)
{
  *(this + 2) = 0;
  result = CoreML::Specification::Int64Parameter::clear_AllowedValues(this);
  v4 = *(this + 8);
  v3 = (this + 8);
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(v3);
  }

  return result;
}

void *google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Int64Parameter>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &unk_1F415DE28;
  result[4] = 0;
  result[2] = 0;
  return result;
}

void CoreML::Specification::Int64Parameter::~Int64Parameter(CoreML::Specification::Int64Parameter *this)
{
  CoreML::Specification::Int64Parameter::~Int64Parameter(this);

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
    CoreML::Specification::Int64Parameter::clear_AllowedValues(this);
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

unsigned __int8 *CoreML::Specification::DoubleParameter::_InternalSerialize(CoreML::Specification::DoubleParameter *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  if (*(this + 2))
  {
    if (*a3 <= __dst)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      v6 = *(this + 2);
    }

    else
    {
      v6 = *(this + 2);
    }

    *v4 = 9;
    *(v4 + 1) = v6;
    v4 += 9;
  }

  if (*(this + 9) == 10)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v7 = *(this + 3);
    *v4 = 82;
    v8 = *(v7 + 8);
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

    v4 = CoreML::Specification::DoubleRange::_InternalSerialize(v7, v9, a3);
  }

  v13 = *(this + 1);
  if ((v13 & 1) == 0)
  {
    return v4;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFCLL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if (*a3 - v4 >= v16)
  {
    v18 = v16;
    memcpy(v4, v17, v16);
    v4 += v18;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v17, v16, v4);
}

google::protobuf::internal *CoreML::Specification::DoubleParameter::_InternalParse(CoreML::Specification::DoubleParameter *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v18 = a2;
  do
  {
    while (1)
    {
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v18, *(a3 + 23)))
      {
        return v18;
      }

      v5 = v18 + 1;
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

          v5 = v18 + v8 + 1;
        }

        else
        {
          v5 = v18 + 2;
        }
      }

      if (v6 >> 3 == 10)
      {
        break;
      }

      if (v6 >> 3 != 1 || v6 != 9)
      {
        goto LABEL_16;
      }

      *(this + 2) = *v5;
      v18 = (v5 + 8);
    }

    if (v6 == 82)
    {
      if (*(this + 9) == 10)
      {
        v14 = *(this + 3);
      }

      else
      {
        CoreML::Specification::DoubleParameter::clear_AllowedValues(this);
        *(this + 9) = 10;
        v15 = *(this + 1);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::DoubleRange>(v16);
        *(this + 3) = v14;
      }

      v13 = google::protobuf::internal::ParseContext::ParseMessage(a3, v14, v5);
      goto LABEL_31;
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

    v19 = v12;
    v13 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v19, v5, a3);
LABEL_31:
    v18 = v13;
  }

  while (v13);
  return 0;
}

uint64_t CoreML::Specification::DoubleParameter::clear_AllowedValues(uint64_t this)
{
  v1 = this;
  if (*(this + 36) == 10)
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

    this = *(this + 24);
    if (this)
    {
      CoreML::Specification::Int64Range::~Int64Range(this);
      this = MEMORY[0x1C6908B60]();
    }
  }

LABEL_6:
  *(v1 + 36) = 0;
  return this;
}

uint64_t CoreML::Specification::DoubleParameter::ByteSizeLong(CoreML::Specification::DoubleParameter *this)
{
  if (*(this + 2))
  {
    v2 = 9;
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 9) == 10)
  {
    v3 = CoreML::Specification::DoubleRange::ByteSizeLong(*(this + 3));
    v2 += v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v4 = *(this + 1);
  if (v4)
  {
    v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
    v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v7 < 0)
    {
      v7 = *(v6 + 16);
    }

    v2 += v7;
  }

  *(this + 8) = v2;
  return v2;
}

std::string *CoreML::Specification::DoubleParameter::CheckTypeAndMergeFrom(std::string *this, const google::protobuf::MessageLite *a2)
{
  v3 = this;
  if (*(a2 + 2))
  {
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
  }

  if (*(a2 + 9) == 10)
  {
    if (HIDWORD(this[1].__r_.__value_.__r.__words[1]) == 10)
    {
      data = this[1].__r_.__value_.__l.__data_;
    }

    else
    {
      CoreML::Specification::DoubleParameter::clear_AllowedValues(this);
      HIDWORD(v3[1].__r_.__value_.__r.__words[1]) = 10;
      size = v3->__r_.__value_.__l.__size_;
      v6 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v6 = *v6;
      }

      data = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::DoubleRange>(v6);
      v3[1].__r_.__value_.__r.__words[0] = data;
      if (*(a2 + 9) != 10)
      {
        v7 = &CoreML::Specification::_DoubleRange_default_instance_;
        goto LABEL_11;
      }
    }

    v7 = *(a2 + 3);
LABEL_11:
    this = CoreML::Specification::DoubleRange::MergeFrom(data, v7);
  }

  v8 = *(a2 + 1);
  if (v8)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(&v3->__r_.__value_.__l.__size_, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t CoreML::Specification::DoubleParameter::Clear(CoreML::Specification::DoubleParameter *this)
{
  *(this + 2) = 0;
  result = CoreML::Specification::DoubleParameter::clear_AllowedValues(this);
  v4 = *(this + 8);
  v3 = (this + 8);
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(v3);
  }

  return result;
}

void *google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::DoubleParameter>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  result[1] = a1;
  *result = &unk_1F415DDB0;
  result[2] = 0;
  result[4] = 0;
  return result;
}

void CoreML::Specification::DoubleParameter::~DoubleParameter(CoreML::Specification::DoubleParameter *this)
{
  CoreML::Specification::DoubleParameter::~DoubleParameter(this);

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
    CoreML::Specification::DoubleParameter::clear_AllowedValues(this);
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

unsigned __int8 *CoreML::Specification::StringParameter::_InternalSerialize(CoreML::Specification::StringParameter *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 2);
  v7 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  v8 = *((v6 & 0xFFFFFFFFFFFFFFFELL) + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = v7[1];
    if (!v8)
    {
      goto LABEL_9;
    }

    v9 = *v7;
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFFFELL) + 23))
    {
      goto LABEL_9;
    }

    v9 = (v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (!google::protobuf::internal::IsStructurallyValidUTF8(v9, v8))
  {
    google::protobuf::internal::PrintUTF8ErrorLog("CoreML.Specification.StringParameter.defaultValue", "serializing", v10);
    v7 = (*(this + 2) & 0xFFFFFFFFFFFFFFFELL);
  }

  __dst = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1u, v7, __dst);
LABEL_9:
  v11 = *(this + 1);
  if ((v11 & 1) == 0)
  {
    return __dst;
  }

  v13 = v11 & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *(v13 + 31);
  if (v14 < 0)
  {
    v15 = *(v13 + 8);
    v14 = *(v13 + 16);
  }

  else
  {
    v15 = (v13 + 8);
  }

  if (*a3 - __dst >= v14)
  {
    v16 = v14;
    memcpy(__dst, v15, v14);
    __dst += v16;
    return __dst;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v15, v14, __dst);
}

const char *CoreML::Specification::StringParameter::_InternalParse(CoreML::Specification::StringParameter *this, const char *a2, google::protobuf::internal::ParseContext *a3)
{
  v23 = a2;
  while (1)
  {
    while (1)
    {
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v23, *(a3 + 23)))
      {
        return v23;
      }

      v5 = (v23 + 1);
      v6 = *v23;
      if (*v23 < 0)
      {
        v6 = v6 + (*v5 << 7) - 128;
        if (*v5 < 0)
        {
          v7 = 14;
          v8 = 2;
          while (1)
          {
            v6 += (v23[v8] - 1) << v7;
            if ((v23[v8] & 0x80000000) == 0)
            {
              break;
            }

            v5 = 0;
            ++v8;
            v7 += 7;
            if (v8 == 5)
            {
              return v5;
            }
          }

          v5 = &v23[v8 + 1];
        }

        else
        {
          v5 = (v23 + 2);
        }
      }

      if (v6 != 10)
      {
        break;
      }

      v12 = *(this + 1);
      v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
      if (v12)
      {
        v13 = *v13;
      }

      v14 = google::protobuf::internal::ArenaStringPtr::Mutable(this + 2, v13);
      v17 = google::protobuf::internal::InlineGreedyStringParser(v14, v5, a3);
      v23 = v17;
      v18 = *(v14 + 23);
      v19 = *v14;
      if ((v18 & 0x80000000) == 0)
      {
        v20 = v14;
      }

      else
      {
        v20 = *v14;
      }

      if ((v18 & 0x8000000000000000) != 0)
      {
        v18 = v14[1];
        if ((v18 & 0x8000000000000000) != 0)
        {
          google::protobuf::stringpiece_internal::StringPiece::LogFatalSizeTooBig(v14[1], v15, v16);
        }
      }

      if (!google::protobuf::internal::VerifyUTF8(v20, v18) || v17 == 0)
      {
        return 0;
      }
    }

    if (!v6 || (v6 & 7) == 4)
    {
      break;
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

    v24 = v11;
    v23 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v24, v5, a3);
    if (!v23)
    {
      return 0;
    }
  }

  *(a3 + 20) = v6 - 1;
  return v5;
}

uint64_t CoreML::Specification::StringParameter::ByteSizeLong(CoreML::Specification::StringParameter *this)
{
  v1 = *(this + 2) & 0xFFFFFFFFFFFFFFFELL;
  v2 = *(v1 + 23);
  if (v2 < 0)
  {
    if (*(v1 + 8))
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (!*(v1 + 23))
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = *(v1 + 8);
  if (v2 >= 0)
  {
    v3 = v2;
  }

  v4 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
LABEL_8:
  v5 = *(this + 1);
  if (v5)
  {
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL;
    v8 = *((v5 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v8 < 0)
    {
      v8 = *(v7 + 16);
    }

    v4 += v8;
  }

  *(this + 6) = v4;
  return v4;
}

void CoreML::Specification::StringParameter::CheckTypeAndMergeFrom(CoreML::Specification::StringParameter *this, const google::protobuf::MessageLite *a2)
{
  v4 = *(a2 + 2) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  if (v5 < 0)
  {
    v5 = *(v4 + 8);
  }

  if (v5)
  {
    v6 = *(this + 1);
    v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
    if (v6)
    {
      v7 = *v7;
    }

    google::protobuf::internal::ArenaStringPtr::Set(this + 2, v4, v7);
  }

  v8 = *(a2 + 1);
  if (v8)
  {

    google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(this + 1, (v8 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }
}

uint64_t *CoreML::Specification::StringParameter::Clear(CoreML::Specification::StringParameter *this)
{
  v1 = *(this + 2);
  if (v1 != &google::protobuf::internal::fixed_address_empty_string)
  {
    v2 = v1 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v2 + 23) < 0)
    {
      **v2 = 0;
      *(v2 + 8) = 0;
    }

    else
    {
      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  v4 = *(this + 8);
  result = (this + 8);
  if (v4)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(result);
  }

  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::StringParameter>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &unk_1F415DD38;
  *(result + 24) = 0;
  *(result + 16) = &google::protobuf::internal::fixed_address_empty_string;
  return result;
}

void CoreML::Specification::StringParameter::~StringParameter(CoreML::Specification::StringParameter *this)
{
  CoreML::Specification::StringParameter::~StringParameter(this);

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

  if (*(this + 2) != &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::DestroyNoArenaSlowPath(*(this + 2));
    v2 = *v3;
  }

  if (v2)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(v2);
  }

LABEL_7:
  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}

unsigned __int8 *CoreML::Specification::BoolParameter::_InternalSerialize(CoreML::Specification::BoolParameter *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  v6 = *(this + 16);
  if (v6 == 1)
  {
    if (*a3 <= __dst)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      LOBYTE(v6) = *(this + 16);
    }

    *v4 = 8;
    v4[1] = v6;
    v4 += 2;
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if (*a3 - v4 >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v11, v10, v4);
}

const char *CoreML::Specification::BoolParameter::_InternalParse(CoreML::Specification::BoolParameter *this, const char *a2, google::protobuf::internal::ParseContext *a3)
{
  v18 = a2;
  do
  {
    while (1)
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
            v6 += (v18[v8] - 1) << v7;
            if ((v18[v8] & 0x80000000) == 0)
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

          v5 = &v18[v8 + 1];
        }

        else
        {
          v5 = (v18 + 2);
        }
      }

      if (v6 != 8)
      {
        break;
      }

      v13 = v5 + 1;
      v12 = *v5;
      if ((v12 & 0x8000000000000000) != 0)
      {
        v14 = *v13;
        v12 = v12 & 0x7F | (v14 << 7);
        if (v14 < 0)
        {
          v15 = 14;
          v16 = 2;
          while (1)
          {
            v12 += (v5[v16] - 1) << v15;
            if ((v5[v16] & 0x80000000) == 0)
            {
              break;
            }

            ++v16;
            v15 += 7;
            if (v16 == 10)
            {
              v5 = 0;
              *(this + 16) = 0;
              return v5;
            }
          }

          v13 = &v5[v16 + 1];
        }

        else
        {
          v13 = v5 + 2;
        }
      }

      v18 = v13;
      *(this + 16) = v12 != 0;
    }

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
    v18 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v19, v5, a3);
  }

  while (v18);
  return 0;
}

uint64_t CoreML::Specification::BoolParameter::ByteSizeLong(CoreML::Specification::BoolParameter *this)
{
  v1 = 2;
  if (!*(this + 16))
  {
    v1 = 0;
  }

  v2 = *(this + 1);
  if (v2)
  {
    v4 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    v5 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v5 < 0)
    {
      v5 = *(v4 + 16);
    }

    v1 += v5;
  }

  *(this + 5) = v1;
  return v1;
}

std::string *CoreML::Specification::BoolParameter::CheckTypeAndMergeFrom(std::string *this, const google::protobuf::MessageLite *a2)
{
  if (*(a2 + 16) == 1)
  {
    this->__r_.__value_.__s.__data_[16] = 1;
  }

  v2 = *(a2 + 1);
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(&this->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t CoreML::Specification::BoolParameter::Clear(CoreML::Specification::BoolParameter *this)
{
  v2 = *(this + 8);
  result = this + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(result);
  }

  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::BoolParameter>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &unk_1F415DEA0;
  *(result + 20) = 0;
  *(result + 16) = 0;
  return result;
}

void CoreML::Specification::BoolParameter::~BoolParameter(CoreML::Specification::BoolParameter *this)
{
  CoreML::Specification::Int64Range::~Int64Range(this);

  JUMPOUT(0x1C6908B60);
}

void *CoreML::Specification::Int64Parameter::Int64Parameter(void *this, unint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *this = &unk_1F415DE28;
  this[1] = v3;
  this[4] = 0;
  this[2] = 0;
  return this;
}

void *CoreML::Specification::DoubleParameter::DoubleParameter(void *this, unint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *this = &unk_1F415DDB0;
  this[1] = v3;
  this[2] = 0;
  this[4] = 0;
  return this;
}

uint64_t CoreML::Specification::StringParameter::StringParameter(uint64_t this, unint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *this = &unk_1F415DD38;
  *(this + 8) = v3;
  *(this + 24) = 0;
  *(this + 16) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

uint64_t CoreML::Specification::BoolParameter::BoolParameter(uint64_t this, unint64_t a2, int a3)
{
  v3 = a2 | 2;
  if (!a3)
  {
    v3 = a2;
  }

  *this = &unk_1F415DEA0;
  *(this + 8) = v3;
  *(this + 20) = 0;
  *(this + 16) = 0;
  return this;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__shared_ptr_emplace<CoreML::Specification::FeatureType>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F4160380;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C6908B60);
}

void sub_1C1C20D28(_Unwind_Exception *a1)
{
  v1[1].__vftable = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v2);
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a4);
    }

    std::vector<MIOFunctionInfo>::__throw_length_error[abi:ne200100]();
  }
}

void sub_1C1C20DE0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreML::FeatureType::toString@<X0>(CoreML::FeatureType *this@<X0>, std::string *a2@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v46);
  v4 = *(*this + 36);
  std::string::basic_string[abi:ne200100]<0>(&__p, off_1E814DAA8[v4]);
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

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v4 <= 5)
  {
    if (v4 == 4)
    {
      if (*(*this + 36) == 4)
      {
        v11 = *(*this + 24);
      }

      else
      {
        v11 = &CoreML::Specification::_ImageFeatureType_default_instance_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, " (", 2);
      CoreML::colorSpaceToString(&__p, v11[8]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &__p;
      }

      else
      {
        v22 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, v22, v23);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      CoreML::defaultSizeOf(&__p, v11);
      v24 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, " ", 1);
        CoreML::dimensionsToString(&v42, &__p, 0);
        v25 = (v44 & 0x80u) == 0 ? &v42 : v42;
        v26 = (v44 & 0x80u) == 0 ? v44 : v43;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, v25, v26);
        if (v44 < 0)
        {
          operator delete(v42);
        }
      }
    }

    else
    {
      if (v4 != 5)
      {
        goto LABEL_124;
      }

      if (*(*this + 36) == 5)
      {
        v8 = *(*this + 24);
      }

      else
      {
        v8 = &CoreML::Specification::_ArrayFeatureType_default_instance_;
      }

      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, " (", 2);
      CoreML::dataTypeToString(&__p, v8[9]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = &__p;
      }

      else
      {
        v34 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v35 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v35 = __p.__r_.__value_.__l.__size_;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v34, v35);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      CoreML::defaultShapeOf(&__p, v8);
      v24 = __p.__r_.__value_.__r.__words[0];
      if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, " ", 1);
        CoreML::dimensionsToString(&v42, &__p, 0);
        v36 = (v44 & 0x80u) == 0 ? &v42 : v42;
        v37 = (v44 & 0x80u) == 0 ? v44 : v43;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, v36, v37);
        if (v44 < 0)
        {
          operator delete(v42);
        }
      }
    }

    goto LABEL_122;
  }

  if (v4 == 6)
  {
    if (*(*this + 36) == 6)
    {
      v9 = *(*this + 24);
    }

    else
    {
      v9 = &CoreML::Specification::_DictionaryFeatureType_default_instance_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, " (", 2);
    std::string::basic_string[abi:ne200100]<0>(&__p, off_1E814DAF0[*(v9 + 7)]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v13 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, v12, v13);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, " → ", 5);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Double");
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &__p;
    }

    else
    {
      v14 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v15 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, v14, v15);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_42;
  }

  if (v4 == 7)
  {
    if (*(*this + 36) == 7)
    {
      v10 = *(*this + 24);
    }

    else
    {
      v10 = &CoreML::Specification::_SequenceFeatureType_default_instance_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, " (", 2);
    std::string::basic_string[abi:ne200100]<0>(&__p, off_1E814DB08[*(v10 + 9)]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &__p;
    }

    else
    {
      v16 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v17 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, v16, v17);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, " ", 1);
    v19 = v10[2];
    if (!v19)
    {
      v19 = &CoreML::Specification::_SizeRange_default_instance_;
    }

    CoreML::rangeToString(&__p, v19[2], v19[3], 0);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = &__p;
    }

    else
    {
      v20 = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v21 = __p.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

LABEL_42:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, ")", 1);
    goto LABEL_124;
  }

  if (v4 != 8)
  {
    goto LABEL_124;
  }

  if (*(*this + 36) == 8)
  {
    v7 = *(*this + 24);
  }

  else
  {
    v7 = &CoreML::Specification::_StateFeatureType_default_instance_;
  }

  if (*(v7 + 7) == 1)
  {
    v27 = v7[2];
  }

  else
  {
    v27 = &CoreML::Specification::_ArrayFeatureType_default_instance_;
  }

  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, " (", 2);
  CoreML::dataTypeToString(&__p, v27[9]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &__p;
  }

  else
  {
    v29 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = __p.__r_.__value_.__l.__size_;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, v30);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  CoreML::defaultShapeOf(&__p, v27);
  v24 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__l.__size_ != __p.__r_.__value_.__r.__words[0])
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, " ", 1);
    CoreML::dimensionsToString(&v42, &__p, 0);
    v31 = (v44 & 0x80u) == 0 ? &v42 : v42;
    v32 = (v44 & 0x80u) == 0 ? v44 : v43;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, v31, v32);
    if (v44 < 0)
    {
      operator delete(v42);
    }
  }

LABEL_122:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v47, ")", 1);
  if (v24)
  {
    operator delete(v24);
  }

LABEL_124:
  std::stringbuf::str();
  if (*(*this + 16))
  {
    v38 = "?";
  }

  else
  {
    v38 = &unk_1C1C34B7C;
  }

  v39 = std::string::append(&__p, v38);
  *a2 = *v39;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v46[0] = *MEMORY[0x1E69E54D8];
  v40 = *(MEMORY[0x1E69E54D8] + 72);
  *(v46 + *(v46[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v47 = v40;
  v48 = MEMORY[0x1E69E5548] + 16;
  if (v50 < 0)
  {
    operator delete(v49[7].__locale_);
  }

  v48 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v49);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C6908AC0](&v51);
}

void sub_1C1C21570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    operator delete(v22);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a22);
  _Unwind_Resume(a1);
}

_BYTE *CoreML::dataTypeToString(_BYTE *a1, int a2)
{
  if (a2 <= 65599)
  {
    if (a2 > 65551)
    {
      v2 = a2 == 65552;
      v3 = "Float16";
      v4 = "Float32";
      goto LABEL_6;
    }

LABEL_12:
    v5 = "Invalid";
    return std::string::basic_string[abi:ne200100]<0>(a1, v5);
  }

  if (a2 > 131103)
  {
    if (a2 == 131104)
    {
      v5 = "Int32";
      return std::string::basic_string[abi:ne200100]<0>(a1, v5);
    }

    goto LABEL_12;
  }

  v2 = a2 == 65600;
  v3 = "Double";
  v4 = "Int8";
LABEL_6:
  if (v2)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, v5);
}

void CoreML::defaultShapeOf(CoreML *this, const CoreML::Specification::ArrayFeatureType *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (*(a2 + 4) < 1)
  {
    v5 = *(a2 + 15);
    if (v5 == 21)
    {
      for (i = 0; ; ++i)
      {
        v9 = v5 == 21 ? *(*(a2 + 5) + 32) : off_1EEACC0E0;
        v10 = v9[1];
        if (i >= *(v10 + 16))
        {
          break;
        }

        v11 = *(*(v10 + 24) + 8 * i);
        std::vector<long long>::push_back[abi:ne200100](this, &v11);
        v5 = *(a2 + 15);
      }
    }

    else if (v5 == 31)
    {
      for (j = 0; ; ++j)
      {
        if (v5 == 31)
        {
          v7 = *(a2 + 5);
          if (j >= *(v7 + 6))
          {
            return;
          }
        }

        else
        {
          if (j >= dword_1EEACC130)
          {
            return;
          }

          v7 = &CoreML::Specification::_ArrayFeatureType_ShapeRange_default_instance_;
        }

        v11 = *(v7[4][j + 1] + 2);
        std::vector<long long>::push_back[abi:ne200100](this, &v11);
        v5 = *(a2 + 15);
      }
    }
  }

  else
  {
    v4 = 0;
    do
    {
      v11 = *(*(a2 + 3) + 8 * v4);
      std::vector<long long>::push_back[abi:ne200100](this, &v11);
      ++v4;
    }

    while (v4 < *(a2 + 4));
  }
}

void sub_1C1C21828(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreML::dimensionsToString(uint64_t a1, uint64_t *a2, int a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  if (a3)
  {
    v5 = ", ";
  }

  else
  {
    v5 = " × ";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v5);
  if (a3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "[", 1);
  }

  v6 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    do
    {
      MEMORY[0x1C6908980](&v16, *(v6 + 8 * v7));
      v6 = *a2;
      v8 = (a2[1] - *a2) >> 3;
      if (v7 < v8 - 1)
      {
        if ((v14 & 0x80u) == 0)
        {
          v9 = __p;
        }

        else
        {
          v9 = __p[0];
        }

        if ((v14 & 0x80u) == 0)
        {
          v10 = v14;
        }

        else
        {
          v10 = __p[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, v9, v10);
        v6 = *a2;
        v8 = (a2[1] - *a2) >> 3;
      }

      ++v7;
    }

    while (v7 < v8);
  }

  if (a3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "]", 1);
  }

  std::stringbuf::str();
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v15[0] = *MEMORY[0x1E69E54D8];
  v11 = *(MEMORY[0x1E69E54D8] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v16 = v11;
  v17 = MEMORY[0x1E69E5548] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C6908AC0](&v20);
}

_BYTE *CoreML::colorSpaceToString(_BYTE *a1, int a2)
{
  if (a2 <= 19)
  {
    if (a2 != 0x80000000 && a2)
    {
      v2 = "Grayscale";
      return std::string::basic_string[abi:ne200100]<0>(a1, v2);
    }

LABEL_12:
    v2 = "Invalid";
    return std::string::basic_string[abi:ne200100]<0>(a1, v2);
  }

  if (a2 > 39)
  {
    if (a2 == 40)
    {
      v2 = "Grayscale16Half";
      return std::string::basic_string[abi:ne200100]<0>(a1, v2);
    }

    goto LABEL_12;
  }

  if (a2 == 20)
  {
    v2 = "RGB";
  }

  else
  {
    v2 = "BGR";
  }

  return std::string::basic_string[abi:ne200100]<0>(a1, v2);
}

void CoreML::defaultSizeOf(CoreML *this, const CoreML::Specification::ImageFeatureType *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (*(a2 + 2) < 1 || *(a2 + 3) < 1)
  {
    v4 = *(a2 + 13);
    if (v4 == 31)
    {
      v6 = *(*(a2 + 5) + 16);
      if (!v6)
      {
        v6 = &CoreML::Specification::_SizeRange_default_instance_;
      }

      v9 = v6[2];
      std::vector<long long>::push_back[abi:ne200100](this, &v9);
      if (*(a2 + 13) == 31)
      {
        v7 = *(a2 + 5);
      }

      else
      {
        v7 = &CoreML::Specification::_ImageFeatureType_ImageSizeRange_default_instance_;
      }

      v8 = v7[3];
      if (!v8)
      {
        v8 = &CoreML::Specification::_SizeRange_default_instance_;
      }

      v9 = v8[2];
      std::vector<long long>::push_back[abi:ne200100](this, &v9);
    }

    else if (v4 == 21)
    {
      v9 = *(*(*(*(a2 + 5) + 32) + 8) + 16);
      std::vector<long long>::push_back[abi:ne200100](this, &v9);
      if (*(a2 + 13) == 21)
      {
        v5 = *(a2 + 5);
      }

      else
      {
        v5 = &CoreML::Specification::_ImageFeatureType_EnumeratedImageSizes_default_instance_;
      }

      v9 = *(v5[4][1] + 3);
      std::vector<long long>::push_back[abi:ne200100](this, &v9);
    }
  }

  else
  {
    v9 = *(a2 + 2);
    std::vector<long long>::push_back[abi:ne200100](this, &v9);
    v9 = *(a2 + 3);
    std::vector<long long>::push_back[abi:ne200100](this, &v9);
  }
}

void sub_1C1C21C98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CoreML::rangeToString(CoreML *this, uint64_t a2, uint64_t a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  if (a4)
  {
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "[", 1);
    v8 = MEMORY[0x1C6908980](v7, a2);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ", 2);
    v10 = MEMORY[0x1C6908980](v9, a3);
    v11 = "]";
    v12 = 1;
LABEL_3:
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v11, v12);
    goto LABEL_9;
  }

  if (a2 == a3)
  {
    v13 = &v18;
  }

  else
  {
    if (a3 < 0)
    {
      v10 = MEMORY[0x1C6908980](&v18, a2);
      v11 = "...";
      v12 = 3;
      goto LABEL_3;
    }

    v14 = MEMORY[0x1C6908980](&v18, a2);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "...", 3);
    a2 = a3;
  }

  MEMORY[0x1C6908980](v13, a2);
LABEL_9:
  std::stringbuf::str();
  v17[0] = *MEMORY[0x1E69E54D8];
  v15 = *(MEMORY[0x1E69E54D8] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v18 = v15;
  v19 = MEMORY[0x1E69E5548] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C6908AC0](&v22);
}

void sub_1C1C21EFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void std::vector<long long>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<MIOFunctionInfo>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void CoreML::FeatureType::toDictionary(CoreML::FeatureType *this@<X0>, void *a2@<X8>)
{
  v4 = *(*this + 36);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a2 + 1;
  std::string::basic_string[abi:ne200100]<0>(&v84, off_1E814DAA8[v4]);
  std::string::basic_string[abi:ne200100]<0>(__p, "type");
  v80[0] = __p;
  v5 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p);
  v6 = v5;
  if (*(v5 + 79) < 0)
  {
    operator delete(v5[7]);
  }

  *(v6 + 7) = v84;
  *(&v84.__r_.__value_.__s + 23) = 0;
  v84.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v83) < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }
  }

  if (*(*this + 16))
  {
    v7 = "1";
  }

  else
  {
    v7 = "0";
  }

  std::string::basic_string[abi:ne200100]<0>(&v84, "isOptional");
  __p[0] = &v84;
  v8 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v84.__r_.__value_.__l.__data_);
  MEMORY[0x1C6908830](v8 + 7, v7);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  if (v4 > 5)
  {
    switch(v4)
    {
      case 6:
        if (*(*this + 36) == 6)
        {
          v11 = *(*this + 24);
        }

        else
        {
          v11 = &CoreML::Specification::_DictionaryFeatureType_default_instance_;
        }

        std::string::basic_string[abi:ne200100]<0>(&v84, off_1E814DAF0[*(v11 + 7)]);
        std::string::basic_string[abi:ne200100]<0>(__p, "keyType");
        v80[0] = __p;
        v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p);
        break;
      case 7:
        if (*(*this + 36) == 7)
        {
          v12 = *(*this + 24);
        }

        else
        {
          v12 = &CoreML::Specification::_SequenceFeatureType_default_instance_;
        }

        std::string::basic_string[abi:ne200100]<0>(&v84, off_1E814DB08[*(v12 + 9)]);
        std::string::basic_string[abi:ne200100]<0>(__p, "valueType");
        v80[0] = __p;
        v15 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p);
        v16 = v15;
        if (*(v15 + 79) < 0)
        {
          operator delete(v15[7]);
        }

        *(v16 + 7) = v84;
        *(&v84.__r_.__value_.__s + 23) = 0;
        v84.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v83) < 0)
        {
          operator delete(__p[0]);
          if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v84.__r_.__value_.__l.__data_);
          }
        }

        v17 = v12[2];
        if (!v17)
        {
          v17 = &CoreML::Specification::_SizeRange_default_instance_;
        }

        CoreML::rangeToString(&v84, v17[2], v17[3], 1);
        std::string::basic_string[abi:ne200100]<0>(__p, "sizeRange");
        v80[0] = __p;
        v14 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p);
        break;
      case 8:
        if (*(*this + 36) == 8)
        {
          v9 = *(*this + 24);
        }

        else
        {
          v9 = &CoreML::Specification::_StateFeatureType_default_instance_;
        }

        if (*(v9 + 7) == 1)
        {
          v41 = v9[2];
        }

        else
        {
          v41 = &CoreML::Specification::_ArrayFeatureType_default_instance_;
        }

        CoreML::dataTypeToString(&v84, v41[9]);
        std::string::basic_string[abi:ne200100]<0>(__p, "dataType");
        v80[0] = __p;
        v42 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p);
        v43 = v42;
        if (*(v42 + 79) < 0)
        {
          operator delete(v42[7]);
        }

        *(v43 + 7) = v84;
        *(&v84.__r_.__value_.__s + 23) = 0;
        v84.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v83) < 0)
        {
          operator delete(__p[0]);
          if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v84.__r_.__value_.__l.__data_);
          }
        }

        CoreML::defaultShapeOf(__p, v41);
        CoreML::dimensionsToString(&v84, __p, 1);
        std::string::basic_string[abi:ne200100]<0>(v80, "shape");
        v78[0] = v80;
        v44 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v80);
        v45 = v44;
        if (*(v44 + 79) < 0)
        {
          operator delete(v44[7]);
        }

        *(v45 + 7) = v84;
        *(&v84.__r_.__value_.__s + 23) = 0;
        v84.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v81) < 0)
        {
          operator delete(v80[0]);
          if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v84.__r_.__value_.__l.__data_);
          }
        }

        v19 = __p[0];
        if (!__p[0])
        {
          return;
        }

        goto LABEL_196;
      default:
        return;
    }

    v18 = v14;
    if (*(v14 + 79) < 0)
    {
      operator delete(v14[7]);
    }

    *(v18 + 7) = v84;
    *(&v84.__r_.__value_.__s + 23) = 0;
    v84.__r_.__value_.__s.__data_[0] = 0;
    if ((SHIBYTE(v83) & 0x80000000) == 0)
    {
      return;
    }

    operator delete(__p[0]);
    if ((SHIBYTE(v84.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    v19 = v84.__r_.__value_.__r.__words[0];
LABEL_196:
    operator delete(v19);
    return;
  }

  if (v4 == 4)
  {
    if (*(*this + 36) == 4)
    {
      v13 = *(*this + 24);
    }

    else
    {
      v13 = &CoreML::Specification::_ImageFeatureType_default_instance_;
    }

    CoreML::defaultSizeOf(__p, v13);
    v20 = __p[0];
    std::to_string(&v84, *__p[0]);
    std::string::basic_string[abi:ne200100]<0>(v80, "width");
    v78[0] = v80;
    v21 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v80);
    v22 = v21;
    if (*(v21 + 79) < 0)
    {
      operator delete(v21[7]);
    }

    *(v22 + 7) = v84;
    *(&v84.__r_.__value_.__s + 23) = 0;
    v84.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v81) < 0)
    {
      operator delete(v80[0]);
      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }
    }

    std::to_string(&v84, v20[1]);
    std::string::basic_string[abi:ne200100]<0>(v80, "height");
    v78[0] = v80;
    v23 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v80);
    v24 = v23;
    if (*(v23 + 79) < 0)
    {
      operator delete(v23[7]);
    }

    *(v24 + 7) = v84;
    *(&v84.__r_.__value_.__s + 23) = 0;
    v84.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v81) < 0)
    {
      operator delete(v80[0]);
      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }
    }

    CoreML::colorSpaceToString(&v84, *(v13 + 8));
    std::string::basic_string[abi:ne200100]<0>(v80, "colorspace");
    v78[0] = v80;
    v25 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v80);
    v26 = v25;
    if (*(v25 + 79) < 0)
    {
      operator delete(v25[7]);
    }

    *(v26 + 7) = v84;
    *(&v84.__r_.__value_.__s + 23) = 0;
    v84.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v81) < 0)
    {
      operator delete(v80[0]);
      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }
    }

    v27 = *(v13 + 8);
    if (v27 == 40 || v27 == 10)
    {
      v29 = "0";
    }

    else
    {
      v29 = "1";
    }

    std::string::basic_string[abi:ne200100]<0>(&v84, "isColor");
    v80[0] = &v84;
    v30 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v84.__r_.__value_.__l.__data_);
    MEMORY[0x1C6908830](v30 + 7, v29);
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    if (*(v13 + 13))
    {
      v31 = "1";
    }

    else
    {
      v31 = "0";
    }

    std::string::basic_string[abi:ne200100]<0>(&v84, "hasSizeFlexibility");
    v80[0] = &v84;
    v32 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v84.__r_.__value_.__l.__data_);
    MEMORY[0x1C6908830](v32 + 7, v31);
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }

    v33 = *(v13 + 13);
    if (v33 != 21)
    {
      if (v33 == 31)
      {
        memset(&v84, 0, sizeof(v84));
        v34 = v13[5][2];
        if (!v34)
        {
          v34 = &CoreML::Specification::_SizeRange_default_instance_;
        }

        *v80 = *(v34 + 1);
        std::vector<std::pair<long long,long long>>::push_back[abi:ne200100](&v84, v80);
        if (*(v13 + 13) == 31)
        {
          v35 = v13[5];
        }

        else
        {
          v35 = &CoreML::Specification::_ImageFeatureType_ImageSizeRange_default_instance_;
        }

        v36 = v35[3];
        if (!v36)
        {
          v36 = &CoreML::Specification::_SizeRange_default_instance_;
        }

        *v80 = *(v36 + 1);
        std::vector<std::pair<long long,long long>>::push_back[abi:ne200100](&v84, v80);
        CoreML::dimensionRangesToString(v80, &v84, 1);
        std::string::basic_string[abi:ne200100]<0>(v78, "sizeRange");
        v85 = v78;
        v37 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v78);
        v38 = v37;
        if (*(v37 + 79) < 0)
        {
          operator delete(v37[7]);
        }

        *(v38 + 7) = *v80;
        v38[9] = v81;
        HIBYTE(v81) = 0;
        LOBYTE(v80[0]) = 0;
        if (v79 < 0)
        {
          operator delete(v78[0]);
          if (SHIBYTE(v81) < 0)
          {
            operator delete(v80[0]);
          }
        }

        CoreML::dimensionRangesToString(v80, &v84, 0);
        std::string::basic_string[abi:ne200100]<0>(v78, "sizeFlexibility");
        v85 = v78;
        v39 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v78);
        v40 = v39;
        if (*(v39 + 79) < 0)
        {
          operator delete(v39[7]);
        }

        *(v40 + 7) = *v80;
        v40[9] = v81;
        HIBYTE(v81) = 0;
        LOBYTE(v80[0]) = 0;
        if (v79 < 0)
        {
          operator delete(v78[0]);
          if (SHIBYTE(v81) < 0)
          {
            operator delete(v80[0]);
          }
        }

        if (v84.__r_.__value_.__r.__words[0])
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }
      }

LABEL_195:
      v19 = v20;
      goto LABEL_196;
    }

    v80[0] = 0;
    v80[1] = 0;
    v66 = 1;
    v81 = 0;
    while (1)
    {
      v67 = v66 - 1;
      if (v33 == 21)
      {
        v68 = v13[5];
        if (v67 >= *(v68 + 6))
        {
          goto LABEL_184;
        }

        *&v84.__r_.__value_.__l.__data_ = 0uLL;
      }

      else
      {
        if (v67 >= dword_1EEACC0A8)
        {
LABEL_184:
          CoreML::enumeratedShapesToString(&v84, v80, 1);
          std::string::basic_string[abi:ne200100]<0>(v78, "enumeratedSizes");
          v85 = v78;
          v74 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v78);
          v75 = v74;
          if (*(v74 + 79) < 0)
          {
            operator delete(v74[7]);
          }

          *(v75 + 7) = v84;
          *(&v84.__r_.__value_.__s + 23) = 0;
          v84.__r_.__value_.__s.__data_[0] = 0;
          if (v79 < 0)
          {
            operator delete(v78[0]);
            if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v84.__r_.__value_.__l.__data_);
            }
          }

          CoreML::enumeratedShapesToString(&v84, v80, 0);
          std::string::basic_string[abi:ne200100]<0>(v78, "sizeFlexibility");
          v85 = v78;
          v76 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v78);
          v77 = v76;
          if (*(v76 + 79) < 0)
          {
            operator delete(v76[7]);
          }

          *(v77 + 7) = v84;
          *(&v84.__r_.__value_.__s + 23) = 0;
          v84.__r_.__value_.__s.__data_[0] = 0;
          if (v79 < 0)
          {
            operator delete(v78[0]);
            if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v84.__r_.__value_.__l.__data_);
            }
          }

          v84.__r_.__value_.__r.__words[0] = v80;
          std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&v84);
          goto LABEL_195;
        }

        *&v84.__r_.__value_.__l.__data_ = 0uLL;
        v68 = &CoreML::Specification::_ImageFeatureType_EnumeratedImageSizes_default_instance_;
      }

      v84.__r_.__value_.__r.__words[2] = 0;
      v78[0] = *(v68[4][v66] + 2);
      std::vector<long long>::push_back[abi:ne200100](&v84, v78);
      if (*(v13 + 13) == 21)
      {
        v69 = v13[5];
      }

      else
      {
        v69 = &CoreML::Specification::_ImageFeatureType_EnumeratedImageSizes_default_instance_;
      }

      v78[0] = *(v69[4][v66] + 3);
      std::vector<long long>::push_back[abi:ne200100](&v84, v78);
      std::vector<std::vector<long long>>::push_back[abi:ne200100](v80, &v84);
      if (v84.__r_.__value_.__r.__words[0])
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      v33 = *(v13 + 13);
      ++v66;
    }
  }

  if (v4 != 5)
  {
    return;
  }

  if (*(*this + 36) == 5)
  {
    v10 = *(*this + 24);
  }

  else
  {
    v10 = &CoreML::Specification::_ArrayFeatureType_default_instance_;
  }

  CoreML::dataTypeToString(&v84, *(v10 + 9));
  std::string::basic_string[abi:ne200100]<0>(__p, "dataType");
  v80[0] = __p;
  v46 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, __p);
  v47 = v46;
  if (*(v46 + 79) < 0)
  {
    operator delete(v46[7]);
  }

  *(v47 + 7) = v84;
  *(&v84.__r_.__value_.__s + 23) = 0;
  v84.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v83) < 0)
  {
    operator delete(__p[0]);
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }
  }

  CoreML::defaultShapeOf(__p, v10);
  CoreML::dimensionsToString(&v84, __p, 1);
  std::string::basic_string[abi:ne200100]<0>(v80, "shape");
  v78[0] = v80;
  v48 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v80);
  v49 = v48;
  if (*(v48 + 79) < 0)
  {
    operator delete(v48[7]);
  }

  *(v49 + 7) = v84;
  *(&v84.__r_.__value_.__s + 23) = 0;
  v84.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80[0]);
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  if (*(v10 + 15))
  {
    v50 = "1";
  }

  else
  {
    v50 = "0";
  }

  std::string::basic_string[abi:ne200100]<0>(&v84, "hasShapeFlexibility");
  __p[0] = &v84;
  v51 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, &v84.__r_.__value_.__l.__data_);
  MEMORY[0x1C6908830](v51 + 7, v50);
  if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v84.__r_.__value_.__l.__data_);
  }

  v52 = *(v10 + 15);
  if (v52 != 21)
  {
    if (v52 != 31)
    {
      return;
    }

    v53 = 0;
    memset(&v84, 0, sizeof(v84));
    while (1)
    {
      if (v52 == 31)
      {
        v54 = v10[5];
        if (v53 >= *(v54 + 6))
        {
          goto LABEL_172;
        }

        v55 = (v54 + 4);
      }

      else
      {
        if (v53 >= dword_1EEACC130)
        {
LABEL_172:
          CoreML::dimensionRangesToString(__p, &v84, 1);
          std::string::basic_string[abi:ne200100]<0>(v80, "shapeRange");
          v78[0] = v80;
          v70 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v80);
          v71 = v70;
          if (*(v70 + 79) < 0)
          {
            operator delete(v70[7]);
          }

          *(v71 + 7) = *__p;
          v71[9] = v83;
          HIBYTE(v83) = 0;
          LOBYTE(__p[0]) = 0;
          if (SHIBYTE(v81) < 0)
          {
            operator delete(v80[0]);
            if (SHIBYTE(v83) < 0)
            {
              operator delete(__p[0]);
            }
          }

          CoreML::dimensionRangesToString(__p, &v84, 0);
          std::string::basic_string[abi:ne200100]<0>(v80, "shapeFlexibility");
          v78[0] = v80;
          v72 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v80);
          v73 = v72;
          if (*(v72 + 79) < 0)
          {
            operator delete(v72[7]);
          }

          *(v73 + 7) = *__p;
          v73[9] = v83;
          HIBYTE(v83) = 0;
          LOBYTE(__p[0]) = 0;
          if (SHIBYTE(v81) < 0)
          {
            operator delete(v80[0]);
            if (SHIBYTE(v83) < 0)
            {
              operator delete(__p[0]);
            }
          }

          v19 = v84.__r_.__value_.__r.__words[0];
          if (!v84.__r_.__value_.__r.__words[0])
          {
            return;
          }

          goto LABEL_196;
        }

        v55 = &qword_1EEACC138;
      }

      *__p = *(*(*v55 + 8 * v53 + 8) + 16);
      std::vector<std::pair<long long,long long>>::push_back[abi:ne200100](&v84, __p);
      ++v53;
      v52 = *(v10 + 15);
    }
  }

  __p[0] = 0;
  __p[1] = 0;
  v83 = 0;
  if (*(v10[5] + 6) >= 1)
  {
    v56 = 0;
    v57 = 21;
    do
    {
      v58 = 0;
      memset(&v84, 0, sizeof(v84));
      while (1)
      {
        v59 = v57 == 21 ? v10[5][4] : off_1EEACC0E0;
        v60 = *(v59 + v56 + 1);
        if (v58 >= *(v60 + 16))
        {
          break;
        }

        v80[0] = *(*(v60 + 24) + 8 * v58);
        std::vector<long long>::push_back[abi:ne200100](&v84, v80);
        ++v58;
        v57 = *(v10 + 15);
      }

      std::vector<std::vector<long long>>::push_back[abi:ne200100](__p, &v84);
      if (v84.__r_.__value_.__r.__words[0])
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      ++v56;
      v57 = *(v10 + 15);
      v61 = v10[5];
      if (v57 != 21)
      {
        v61 = &CoreML::Specification::_ArrayFeatureType_EnumeratedShapes_default_instance_;
      }
    }

    while (v56 < *(v61 + 6));
  }

  CoreML::enumeratedShapesToString(&v84, __p, 1);
  std::string::basic_string[abi:ne200100]<0>(v80, "enumeratedShapes");
  v78[0] = v80;
  v62 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v80);
  v63 = v62;
  if (*(v62 + 79) < 0)
  {
    operator delete(v62[7]);
  }

  *(v63 + 7) = v84;
  *(&v84.__r_.__value_.__s + 23) = 0;
  v84.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80[0]);
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }
  }

  CoreML::enumeratedShapesToString(&v84, __p, 0);
  std::string::basic_string[abi:ne200100]<0>(v80, "shapeFlexibility");
  v78[0] = v80;
  v64 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a2, v80);
  v65 = v64;
  if (*(v64 + 79) < 0)
  {
    operator delete(v64[7]);
  }

  *(v65 + 7) = v84;
  *(&v84.__r_.__value_.__s + 23) = 0;
  v84.__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80[0]);
    if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v84.__r_.__value_.__l.__data_);
    }
  }

  v84.__r_.__value_.__r.__words[0] = __p;
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&v84);
}

void sub_1C1C22F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void **a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  a30 = &a23;
  std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](&a30);
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v35, *(v35 + 8));
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_26:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    v4 = a2[1];
  }

  if (v3 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      if (v10 >= 0)
      {
        v11 = *(v7 + 23);
      }

      else
      {
        v11 = v7[1];
      }

      if (v10 >= 0)
      {
        v12 = v7;
      }

      else
      {
        v12 = v8;
      }

      if (v11 >= v4)
      {
        v13 = v4;
      }

      else
      {
        v13 = v11;
      }

      v14 = memcmp(v5, v12, v13);
      v15 = v4 < v11;
      if (v14)
      {
        v15 = v14 < 0;
      }

      if (!v15)
      {
        break;
      }

      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_26;
      }
    }

    v16 = memcmp(v12, v5, v13);
    v17 = v11 < v4;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      return v6;
    }

    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_26;
    }
  }
}

void std::vector<std::vector<long long>>::push_back[abi:ne200100](const void **a1, uint64_t *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<MIOFunctionInfo>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v8;
    }

    v19 = a1;
    if (v9)
    {
      if (v9 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v10 = 24 * v6;
    v15 = 0;
    v16 = v10;
    v17 = 24 * v6;
    v18 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(24 * v6, *a2, a2[1], (a2[1] - *a2) >> 3);
    v5 = (v17 + 24);
    v11 = a1[1] - *a1;
    v12 = &v16[-v11];
    memcpy(&v16[-v11], *a1, v11);
    v13 = *a1;
    *a1 = v12;
    a1[1] = v5;
    v14 = a1[2];
    a1[2] = v18;
    v17 = v13;
    v18 = v14;
    v15 = v13;
    v16 = v13;
    std::__split_buffer<std::vector<long long>>::~__split_buffer(&v15);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(v4, *a2, a2[1], (a2[1] - *a2) >> 3);
    v5 = v4 + 24;
    a1[1] = v5;
  }

  a1[1] = v5;
}

void sub_1C1C234E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::vector<long long>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::vector<std::vector<long long>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 3);
        v6 -= 24;
        v7 = v8;
        if (v8)
        {
          *(v4 - 2) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t CoreML::enumeratedShapesToString(uint64_t a1, uint64_t *a2, int a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  if (a3)
  {
    v5 = ", ";
  }

  else
  {
    v5 = " | ";
  }

  std::string::basic_string[abi:ne200100]<0>(v18, v5);
  if (a3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "[", 1);
  }

  v6 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      CoreML::dimensionsToString(__p, (v6 + v7), a3);
      if ((v17 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v17 & 0x80u) == 0)
      {
        v10 = v17;
      }

      else
      {
        v10 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v9, v10);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = *a2;
      v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      if (v8 < v11 - 1)
      {
        if ((v19 & 0x80u) == 0)
        {
          v12 = v18;
        }

        else
        {
          v12 = v18[0];
        }

        if ((v19 & 0x80u) == 0)
        {
          v13 = v19;
        }

        else
        {
          v13 = v18[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v12, v13);
        v6 = *a2;
        v11 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
      }

      ++v8;
      v7 += 24;
    }

    while (v8 < v11);
  }

  if (a3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "]", 1);
  }

  std::stringbuf::str();
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  v20[0] = *MEMORY[0x1E69E54D8];
  v14 = *(MEMORY[0x1E69E54D8] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v21 = v14;
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C6908AC0](&v25);
}

void std::vector<std::pair<long long,long long>>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      std::vector<MIOFunctionInfo>::__throw_length_error[abi:ne200100]();
    }

    v10 = v3 - v6;
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
      if (!(v11 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (16 * v8);
    *v12 = *a2;
    v5 = 16 * v8 + 16;
    v13 = &v12[-(v7 >> 4)];
    memcpy(v13, v6, v7);
    *a1 = v13;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

uint64_t CoreML::dimensionRangesToString(uint64_t a1, uint64_t *a2, int a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v20);
  if (a3)
  {
    v5 = ", ";
  }

  else
  {
    v5 = " × ";
  }

  std::string::basic_string[abi:ne200100]<0>(v18, v5);
  if (a3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "[", 1);
  }

  v6 = *a2;
  if (a2[1] != *a2)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      CoreML::rangeToString(__p, *(v6 + v7), *(v6 + v7 + 8), a3);
      if ((v17 & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      if ((v17 & 0x80u) == 0)
      {
        v10 = v17;
      }

      else
      {
        v10 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v9, v10);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = *a2;
      v11 = (a2[1] - *a2) >> 4;
      if (v8 < v11 - 1)
      {
        if ((v19 & 0x80u) == 0)
        {
          v12 = v18;
        }

        else
        {
          v12 = v18[0];
        }

        if ((v19 & 0x80u) == 0)
        {
          v13 = v19;
        }

        else
        {
          v13 = v18[1];
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, v12, v13);
        v6 = *a2;
        v11 = (a2[1] - *a2) >> 4;
      }

      ++v8;
      v7 += 16;
    }

    while (v8 < v11);
  }

  if (a3)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v21, "]", 1);
  }

  std::stringbuf::str();
  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  v20[0] = *MEMORY[0x1E69E54D8];
  v14 = *(MEMORY[0x1E69E54D8] + 72);
  *(v20 + *(v20[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v21 = v14;
  v22 = MEMORY[0x1E69E5548] + 16;
  if (v24 < 0)
  {
    operator delete(v23[7].__locale_);
  }

  v22 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v23);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C6908AC0](&v25);
}

uint64_t std::__split_buffer<std::vector<long long>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unsigned __int8 *CoreML::Specification::Int64FeatureType::_InternalSerialize(CoreML::Specification::Int64FeatureType *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = *(this + 1);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v8, v7, __dst);
}

const char *CoreML::Specification::Int64FeatureType::_InternalParse(CoreML::Specification::Int64FeatureType *this, const char *a2, google::protobuf::internal::ParseContext *a3)
{
  v13 = a2;
  do
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v13, *(a3 + 23)))
    {
      return v13;
    }

    v5 = (v13 + 1);
    v6 = *v13;
    if (*v13 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v7 = 14;
        v8 = 2;
        while (1)
        {
          v6 += (v13[v8] - 1) << v7;
          if ((v13[v8] & 0x80000000) == 0)
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

        v5 = &v13[v8 + 1];
      }

      else
      {
        v5 = (v13 + 2);
      }
    }

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

    v14 = v11;
    v13 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v14, v5, a3);
  }

  while (v13);
  return 0;
}

uint64_t CoreML::Specification::Int64FeatureType::ByteSizeLong(CoreML::Specification::Int64FeatureType *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(this + 4) = v2;
  return v2;
}

std::string *CoreML::Specification::Int64FeatureType::CheckTypeAndMergeFrom(std::string *this, const google::protobuf::MessageLite *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(&this->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t *CoreML::Specification::Int64FeatureType::Clear(CoreML::Specification::Int64FeatureType *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(result);
  }

  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::Int64FeatureType>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_1F415DBD0;
  *(result + 16) = 0;
  return result;
}

void CoreML::Specification::Int64FeatureType::~Int64FeatureType(CoreML::Specification::Int64FeatureType *this)
{
  CoreML::Specification::Int64Range::~Int64Range(this);

  JUMPOUT(0x1C6908B60);
}

unsigned __int8 *CoreML::Specification::DoubleFeatureType::_InternalSerialize(CoreML::Specification::DoubleFeatureType *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = *(this + 1);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v8, v7, __dst);
}

const char *CoreML::Specification::DoubleFeatureType::_InternalParse(CoreML::Specification::DoubleFeatureType *this, const char *a2, google::protobuf::internal::ParseContext *a3)
{
  v13 = a2;
  do
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v13, *(a3 + 23)))
    {
      return v13;
    }

    v5 = (v13 + 1);
    v6 = *v13;
    if (*v13 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v7 = 14;
        v8 = 2;
        while (1)
        {
          v6 += (v13[v8] - 1) << v7;
          if ((v13[v8] & 0x80000000) == 0)
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

        v5 = &v13[v8 + 1];
      }

      else
      {
        v5 = (v13 + 2);
      }
    }

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

    v14 = v11;
    v13 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v14, v5, a3);
  }

  while (v13);
  return 0;
}

uint64_t CoreML::Specification::DoubleFeatureType::ByteSizeLong(CoreML::Specification::DoubleFeatureType *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(this + 4) = v2;
  return v2;
}

std::string *CoreML::Specification::DoubleFeatureType::CheckTypeAndMergeFrom(std::string *this, const google::protobuf::MessageLite *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(&this->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t *CoreML::Specification::DoubleFeatureType::Clear(CoreML::Specification::DoubleFeatureType *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(result);
  }

  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::DoubleFeatureType>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_1F415DAE0;
  *(result + 16) = 0;
  return result;
}

void CoreML::Specification::DoubleFeatureType::~DoubleFeatureType(CoreML::Specification::DoubleFeatureType *this)
{
  CoreML::Specification::Int64Range::~Int64Range(this);

  JUMPOUT(0x1C6908B60);
}

unsigned __int8 *CoreML::Specification::StringFeatureType::_InternalSerialize(CoreML::Specification::StringFeatureType *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = *(this + 1);
  if ((v4 & 1) == 0)
  {
    return __dst;
  }

  v6 = v4 & 0xFFFFFFFFFFFFFFFCLL;
  v7 = *((v4 & 0xFFFFFFFFFFFFFFFCLL) + 31);
  if (v7 < 0)
  {
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
  }

  else
  {
    v8 = (v6 + 8);
  }

  if (*a3 - __dst >= v7)
  {
    v9 = v7;
    memcpy(__dst, v8, v7);
    __dst += v9;
    return __dst;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v8, v7, __dst);
}

const char *CoreML::Specification::StringFeatureType::_InternalParse(CoreML::Specification::StringFeatureType *this, const char *a2, google::protobuf::internal::ParseContext *a3)
{
  v13 = a2;
  do
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v13, *(a3 + 23)))
    {
      return v13;
    }

    v5 = (v13 + 1);
    v6 = *v13;
    if (*v13 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v7 = 14;
        v8 = 2;
        while (1)
        {
          v6 += (v13[v8] - 1) << v7;
          if ((v13[v8] & 0x80000000) == 0)
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

        v5 = &v13[v8 + 1];
      }

      else
      {
        v5 = (v13 + 2);
      }
    }

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

    v14 = v11;
    v13 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v14, v5, a3);
  }

  while (v13);
  return 0;
}

uint64_t CoreML::Specification::StringFeatureType::ByteSizeLong(CoreML::Specification::StringFeatureType *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v4 = v1 & 0xFFFFFFFFFFFFFFFCLL;
    v2 = *((v1 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v2 < 0)
    {
      v2 = *(v4 + 16);
    }
  }

  else
  {
    v2 = 0;
  }

  *(this + 4) = v2;
  return v2;
}

std::string *CoreML::Specification::StringFeatureType::CheckTypeAndMergeFrom(std::string *this, const google::protobuf::MessageLite *a2)
{
  v2 = *(a2 + 1);
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(&this->__r_.__value_.__l.__size_, (v2 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t *CoreML::Specification::StringFeatureType::Clear(CoreML::Specification::StringFeatureType *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(result);
  }

  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::StringFeatureType>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_1F415DA68;
  *(result + 16) = 0;
  return result;
}

void CoreML::Specification::StringFeatureType::~StringFeatureType(CoreML::Specification::StringFeatureType *this)
{
  CoreML::Specification::Int64Range::~Int64Range(this);

  JUMPOUT(0x1C6908B60);
}

unsigned __int8 *CoreML::Specification::SizeRange::_InternalSerialize(CoreML::Specification::SizeRange *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  v6 = *(this + 2);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      v6 = *(this + 2);
    }

    *v4 = 8;
    v4[1] = v6;
    if (v6 > 0x7F)
    {
      v4[1] = v6 | 0x80;
      v7 = v6 >> 7;
      v4[2] = v6 >> 7;
      v4 += 3;
      if (v6 >= 0x4000)
      {
        v8 = v6 >> 7;
        do
        {
          *(v4 - 1) = v8 | 0x80;
          v8 = v7 >> 7;
          *v4++ = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }
    }

    else
    {
      v4 += 2;
    }
  }

  v10 = *(this + 3);
  if (v10)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      v10 = *(this + 3);
    }

    *v4 = 16;
    v4[1] = v10;
    if (v10 > 0x7F)
    {
      v4[1] = v10 | 0x80;
      v11 = v10 >> 7;
      v4[2] = v10 >> 7;
      v4 += 3;
      if (v10 >= 0x4000)
      {
        v12 = v10 >> 7;
        do
        {
          *(v4 - 1) = v12 | 0x80;
          v12 = v11 >> 7;
          *v4++ = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }
    }

    else
    {
      v4 += 2;
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return v4;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if (*a3 - v4 >= v17)
  {
    v19 = v17;
    memcpy(v4, v18, v17);
    v4 += v19;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v18, v17, v4);
}

const char *CoreML::Specification::SizeRange::_InternalParse(CoreML::Specification::SizeRange *this, const char *a2, google::protobuf::internal::ParseContext *a3)
{
  v24 = a2;
  do
  {
    while (1)
    {
      while (1)
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
              v6 += (v24[v8] - 1) << v7;
              if ((v24[v8] & 0x80000000) == 0)
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

            v5 = &v24[v8 + 1];
          }

          else
          {
            v5 = (v24 + 2);
          }
        }

        if (v6 >> 3 != 2)
        {
          break;
        }

        if (v6 != 16)
        {
          goto LABEL_16;
        }

        v14 = v5 + 1;
        v13 = *v5;
        if ((v13 & 0x8000000000000000) != 0)
        {
          v15 = *v14;
          v13 = v13 & 0x7F | (v15 << 7);
          if (v15 < 0)
          {
            v19 = 14;
            v20 = 2;
            while (1)
            {
              v13 += (v5[v20] - 1) << v19;
              if ((v5[v20] & 0x80000000) == 0)
              {
                break;
              }

              ++v20;
              v19 += 7;
              if (v20 == 10)
              {
                v5 = 0;
                *(this + 3) = 0;
                return v5;
              }
            }

            v14 = &v5[v20 + 1];
          }

          else
          {
            v14 = v5 + 2;
          }
        }

        v24 = v14;
        *(this + 3) = v13;
      }

      if (v6 >> 3 != 1 || v6 != 8)
      {
        break;
      }

      v17 = v5 + 1;
      v16 = *v5;
      if ((v16 & 0x8000000000000000) != 0)
      {
        v18 = *v17;
        v16 = v16 & 0x7F | (v18 << 7);
        if (v18 < 0)
        {
          v21 = 14;
          v22 = 2;
          while (1)
          {
            v16 += (v5[v22] - 1) << v21;
            if ((v5[v22] & 0x80000000) == 0)
            {
              break;
            }

            ++v22;
            v21 += 7;
            if (v22 == 10)
            {
              v5 = 0;
              *(this + 2) = 0;
              return v5;
            }
          }

          v17 = &v5[v22 + 1];
        }

        else
        {
          v17 = v5 + 2;
        }
      }

      v24 = v17;
      *(this + 2) = v16;
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

    v25 = v12;
    v24 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v25, v5, a3);
  }

  while (v24);
  return 0;
}

unint64_t CoreML::Specification::SizeRange::ByteSizeLong(CoreML::Specification::SizeRange *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  v3 = (9 * (__clz(v1 | 1) ^ 0x3F) + 137) >> 6;
  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 3);
  v6 = v5 == 0;
  v7 = v4 + ((9 * (__clz(v5 | 1) ^ 0x3F) + 137) >> 6);
  if (!v6)
  {
    v4 = v7;
  }

  if (v2)
  {
    v9 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v4 += v10;
  }

  *(this + 8) = v4;
  return v4;
}

uint64_t *CoreML::Specification::SizeRange::Clear(CoreML::Specification::SizeRange *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  result[1] = 0;
  result[2] = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(result);
  }

  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::SizeRange>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_1F415D4C8;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void CoreML::Specification::SizeRange::~SizeRange(CoreML::Specification::SizeRange *this)
{
  CoreML::Specification::Int64Range::~Int64Range(this);

  JUMPOUT(0x1C6908B60);
}

unsigned __int8 *CoreML::Specification::ImageFeatureType_ImageSize::_InternalSerialize(CoreML::Specification::ImageFeatureType_ImageSize *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  v6 = *(this + 2);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      v6 = *(this + 2);
    }

    *v4 = 8;
    v4[1] = v6;
    if (v6 > 0x7F)
    {
      v4[1] = v6 | 0x80;
      v7 = v6 >> 7;
      v4[2] = v6 >> 7;
      v4 += 3;
      if (v6 >= 0x4000)
      {
        v8 = v6 >> 7;
        do
        {
          *(v4 - 1) = v8 | 0x80;
          v8 = v7 >> 7;
          *v4++ = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }
    }

    else
    {
      v4 += 2;
    }
  }

  v10 = *(this + 3);
  if (v10)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      v10 = *(this + 3);
    }

    *v4 = 16;
    v4[1] = v10;
    if (v10 > 0x7F)
    {
      v4[1] = v10 | 0x80;
      v11 = v10 >> 7;
      v4[2] = v10 >> 7;
      v4 += 3;
      if (v10 >= 0x4000)
      {
        v12 = v10 >> 7;
        do
        {
          *(v4 - 1) = v12 | 0x80;
          v12 = v11 >> 7;
          *v4++ = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }
    }

    else
    {
      v4 += 2;
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return v4;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if (*a3 - v4 >= v17)
  {
    v19 = v17;
    memcpy(v4, v18, v17);
    v4 += v19;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v18, v17, v4);
}

const char *CoreML::Specification::ImageFeatureType_ImageSize::_InternalParse(CoreML::Specification::ImageFeatureType_ImageSize *this, const char *a2, google::protobuf::internal::ParseContext *a3)
{
  v24 = a2;
  do
  {
    while (1)
    {
      while (1)
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
              v6 += (v24[v8] - 1) << v7;
              if ((v24[v8] & 0x80000000) == 0)
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

            v5 = &v24[v8 + 1];
          }

          else
          {
            v5 = (v24 + 2);
          }
        }

        if (v6 >> 3 != 2)
        {
          break;
        }

        if (v6 != 16)
        {
          goto LABEL_16;
        }

        v14 = v5 + 1;
        v13 = *v5;
        if ((v13 & 0x8000000000000000) != 0)
        {
          v15 = *v14;
          v13 = v13 & 0x7F | (v15 << 7);
          if (v15 < 0)
          {
            v19 = 14;
            v20 = 2;
            while (1)
            {
              v13 += (v5[v20] - 1) << v19;
              if ((v5[v20] & 0x80000000) == 0)
              {
                break;
              }

              ++v20;
              v19 += 7;
              if (v20 == 10)
              {
                v5 = 0;
                *(this + 3) = 0;
                return v5;
              }
            }

            v14 = &v5[v20 + 1];
          }

          else
          {
            v14 = v5 + 2;
          }
        }

        v24 = v14;
        *(this + 3) = v13;
      }

      if (v6 >> 3 != 1 || v6 != 8)
      {
        break;
      }

      v17 = v5 + 1;
      v16 = *v5;
      if ((v16 & 0x8000000000000000) != 0)
      {
        v18 = *v17;
        v16 = v16 & 0x7F | (v18 << 7);
        if (v18 < 0)
        {
          v21 = 14;
          v22 = 2;
          while (1)
          {
            v16 += (v5[v22] - 1) << v21;
            if ((v5[v22] & 0x80000000) == 0)
            {
              break;
            }

            ++v22;
            v21 += 7;
            if (v22 == 10)
            {
              v5 = 0;
              *(this + 2) = 0;
              return v5;
            }
          }

          v17 = &v5[v22 + 1];
        }

        else
        {
          v17 = v5 + 2;
        }
      }

      v24 = v17;
      *(this + 2) = v16;
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

    v25 = v12;
    v24 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v25, v5, a3);
  }

  while (v24);
  return 0;
}

unint64_t CoreML::Specification::ImageFeatureType_ImageSize::ByteSizeLong(CoreML::Specification::ImageFeatureType_ImageSize *this)
{
  v2 = *(this + 1);
  v1 = *(this + 2);
  v3 = (9 * (__clz(v1 | 1) ^ 0x3F) + 137) >> 6;
  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(this + 3);
  v6 = v5 == 0;
  v7 = v4 + ((9 * (__clz(v5 | 1) ^ 0x3F) + 137) >> 6);
  if (!v6)
  {
    v4 = v7;
  }

  if (v2)
  {
    v9 = v2 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v2 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v4 += v10;
  }

  *(this + 8) = v4;
  return v4;
}

uint64_t *CoreML::Specification::ImageFeatureType_ImageSize::Clear(CoreML::Specification::ImageFeatureType_ImageSize *this)
{
  v2 = *(this + 8);
  result = (this + 8);
  result[1] = 0;
  result[2] = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(result);
  }

  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ImageFeatureType_ImageSize>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = &unk_1F415D810;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void CoreML::Specification::ImageFeatureType_ImageSize::~ImageFeatureType_ImageSize(CoreML::Specification::ImageFeatureType_ImageSize *this)
{
  CoreML::Specification::Int64Range::~Int64Range(this);

  JUMPOUT(0x1C6908B60);
}

unsigned __int8 *CoreML::Specification::ImageFeatureType_EnumeratedImageSizes::_InternalSerialize(CoreML::Specification::ImageFeatureType_EnumeratedImageSizes *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 8);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        __dst[1] = v9 | 0x80;
        v11 = v9 >> 7;
        __dst[2] = v9 >> 7;
        v10 = __dst + 3;
        if (v9 >= 0x4000)
        {
          v12 = v9 >> 7;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v11 = v12 >> 7;
            *v10++ = v12 >> 7;
            v13 = v12 >> 14;
            v12 >>= 7;
          }

          while (v13);
        }
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = CoreML::Specification::ImageFeatureType_ImageSize::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return __dst;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if (*a3 - __dst >= v17)
  {
    v19 = v17;
    memcpy(__dst, v18, v17);
    __dst += v19;
    return __dst;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v18, v17, __dst);
}

const char *CoreML::Specification::ImageFeatureType_EnumeratedImageSizes::_InternalParse(CoreML::Specification::ImageFeatureType_EnumeratedImageSizes *this, const char *a2, google::protobuf::internal::ParseContext *a3)
{
  v17 = a2;
  while (1)
  {
LABEL_2:
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v17, *(a3 + 23)))
    {
      return v17;
    }

    v5 = (v17 + 1);
    v6 = *v17;
    if (*v17 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v7 = 14;
        v8 = 2;
        while (1)
        {
          v6 += (v17[v8] - 1) << v7;
          if ((v17[v8] & 0x80000000) == 0)
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

        v5 = &v17[v8 + 1];
      }

      else
      {
        v5 = (v17 + 2);
      }
    }

    if (v6 == 10)
    {
      break;
    }

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

    v18 = v11;
    v17 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v18, v5, a3);
    if (!v17)
    {
      return 0;
    }
  }

  --v5;
  while (1)
  {
    v12 = *(this + 4);
    if (v12 && (v13 = *(this + 6), v13 < *v12))
    {
      *(this + 6) = v13 + 1;
      v14 = *&v12[2 * v13 + 2];
    }

    else
    {
      v14 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ImageFeatureType_ImageSize>(*(this + 2));
      google::protobuf::internal::RepeatedPtrFieldBase::AddOutOfLineHelper((this + 16), v14);
    }

    v15 = google::protobuf::internal::ParseContext::ParseMessage(a3, v14, (v5 + 1));
    v5 = v15;
    if (!v15)
    {
      return v5;
    }

    if (*a3 <= v15 || *v15 != 10)
    {
      v17 = v15;
      goto LABEL_2;
    }
  }
}

uint64_t CoreML::Specification::ImageFeatureType_EnumeratedImageSizes::ByteSizeLong(CoreML::Specification::ImageFeatureType_EnumeratedImageSizes *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = CoreML::Specification::ImageFeatureType_ImageSize::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 1);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(this + 10) = v2;
  return v2;
}

atomic_ullong **CoreML::Specification::ImageFeatureType_EnumeratedImageSizes::MergeFrom(atomic_ullong **this, const CoreML::Specification::ImageFeatureType_EnumeratedImageSizes *a2)
{
  v3 = this;
  v4 = *(a2 + 6);
  if (v4)
  {
    v5 = *(a2 + 4);
    v6 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 2), *(a2 + 6));
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::ImageFeatureType_ImageSize>::TypeHandler>((v3 + 16), v6, (v5 + 8), v4, **(v3 + 32) - *(v3 + 24));
    v7 = *(v3 + 24) + v4;
    *(v3 + 24) = v7;
    v8 = *(v3 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 1);
  if (v9)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>((v3 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

atomic_ullong **google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::ImageFeatureType_ImageSize>::TypeHandler>(atomic_ullong **result, std::string **a2, CoreML::Specification::Int64Range **a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ImageFeatureType_ImageSize>(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::ImageFeatureType_ImageSize>::Merge(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

char *CoreML::Specification::ImageFeatureType_EnumeratedImageSizes::Clear(char *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      this = (*v3 + 8);
      v4 = *this;
      *(this + 1) = 0;
      *(this + 2) = 0;
      if (v4)
      {
        this = google::protobuf::internal::InternalMetadata::DoClear<std::string>(this);
      }

      ++v3;
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(v5);
  }

  return this;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ImageFeatureType_EnumeratedImageSizes>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_1F415D630;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void CoreML::Specification::ImageFeatureType_EnumeratedImageSizes::~ImageFeatureType_EnumeratedImageSizes(CoreML::Specification::ImageFeatureType_EnumeratedImageSizes *this)
{
  CoreML::Specification::ImageFeatureType_EnumeratedImageSizes::~ImageFeatureType_EnumeratedImageSizes(this);

  JUMPOUT(0x1C6908B60);
}

{
  v3 = (this + 8);
  v2 = *(this + 1);
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(v2);
  }

  if (*(this + 4) && !*(this + 2))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 16));
  }

  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}

unsigned __int8 *CoreML::Specification::ImageFeatureType_ImageSizeRange::_InternalSerialize(void (***this)(CoreML::Specification::ImageFeatureType_ImageSizeRange *__hidden this), unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  if (this != &CoreML::Specification::_ImageFeatureType_ImageSizeRange_default_instance_)
  {
    v6 = this[2];
    if (v6)
    {
      if (*a3 <= __dst)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
        v6 = this[2];
      }

      *v4 = 10;
      v7 = *(v6 + 8);
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

      v4 = CoreML::Specification::SizeRange::_InternalSerialize(v6, v8, a3);
    }

    v12 = this[3];
    if (v12)
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
        v12 = this[3];
      }

      *v4 = 18;
      v13 = *(v12 + 8);
      v4[1] = v13;
      if (v13 > 0x7F)
      {
        v4[1] = v13 | 0x80;
        v15 = v13 >> 7;
        v4[2] = v13 >> 7;
        v14 = v4 + 3;
        if (v13 >= 0x4000)
        {
          v16 = v13 >> 7;
          do
          {
            *(v14 - 1) = v15 | 0x80;
            v15 = v16 >> 7;
            *v14++ = v16 >> 7;
            v17 = v16 >> 14;
            v16 >>= 7;
          }

          while (v17);
        }
      }

      else
      {
        v14 = v4 + 2;
      }

      v4 = CoreML::Specification::SizeRange::_InternalSerialize(v12, v14, a3);
    }
  }

  v18 = this[1];
  if ((v18 & 1) == 0)
  {
    return v4;
  }

  v20 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  v21 = *(v20 + 31);
  if (v21 < 0)
  {
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
  }

  else
  {
    v22 = (v20 + 8);
  }

  if (*a3 - v4 >= v21)
  {
    v23 = v21;
    memcpy(v4, v22, v21);
    v4 += v23;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v22, v21, v4);
}

google::protobuf::internal *CoreML::Specification::ImageFeatureType_ImageSizeRange::_InternalParse(CoreML::Specification::ImageFeatureType_ImageSizeRange *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v20 = a2;
  do
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v20, *(a3 + 23)))
    {
      return v20;
    }

    v5 = (v20 + 1);
    v6 = *v20;
    if (*v20 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v7 = 14;
        v8 = 2;
        while (1)
        {
          v6 += (*(v20 + v8) - 1) << v7;
          if ((*(v20 + v8) & 0x80000000) == 0)
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

        v5 = (v20 + v8 + 1);
      }

      else
      {
        v5 = (v20 + 2);
      }
    }

    if (v6 >> 3 != 2)
    {
      if (v6 >> 3 != 1 || v6 != 10)
      {
        goto LABEL_16;
      }

      v14 = *(this + 2);
      if (!v14)
      {
        v17 = *(this + 1);
        v18 = (v17 & 0xFFFFFFFFFFFFFFFCLL);
        if (v17)
        {
          v18 = *v18;
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::SizeRange>(v18);
        *(this + 2) = v14;
      }

LABEL_32:
      v13 = google::protobuf::internal::ParseContext::ParseMessage(a3, v14, v5);
      goto LABEL_33;
    }

    if (v6 == 18)
    {
      v14 = *(this + 3);
      if (!v14)
      {
        v15 = *(this + 1);
        v16 = (v15 & 0xFFFFFFFFFFFFFFFCLL);
        if (v15)
        {
          v16 = *v16;
        }

        v14 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::SizeRange>(v16);
        *(this + 3) = v14;
      }

      goto LABEL_32;
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

    v21 = v12;
    v13 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v21, v5, a3);
LABEL_33:
    v20 = v13;
  }

  while (v13);
  return 0;
}

uint64_t CoreML::Specification::ImageFeatureType_ImageSizeRange::ByteSizeLong(void (***this)(CoreML::Specification::ImageFeatureType_ImageSizeRange *__hidden this))
{
  if (this == &CoreML::Specification::_ImageFeatureType_ImageSizeRange_default_instance_)
  {
    v4 = 0;
  }

  else
  {
    v2 = this[2];
    if (v2)
    {
      v3 = CoreML::Specification::SizeRange::ByteSizeLong(v2);
      v4 = v3 + ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v4 = 0;
    }

    v5 = this[3];
    if (v5)
    {
      v6 = CoreML::Specification::SizeRange::ByteSizeLong(v5);
      v4 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  v7 = this[1];
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v4 += v10;
  }

  *(this + 8) = v4;
  return v4;
}

std::string *CoreML::Specification::ImageFeatureType_ImageSizeRange::MergeFrom(std::string *this, void (***a2)(CoreML::Specification::ImageFeatureType_ImageSizeRange *__hidden this))
{
  v3 = this;
  if (a2 != &CoreML::Specification::_ImageFeatureType_ImageSizeRange_default_instance_)
  {
    v4 = a2[2];
    if (v4)
    {
      v5 = this->__r_.__value_.__r.__words[2];
      if (!v5)
      {
        v6 = v3[1];
        v7 = (v6 & 0xFFFFFFFFFFFFFFFCLL);
        if (v6)
        {
          v7 = *v7;
        }

        v5 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::SizeRange>(v7);
        v3[2] = v5;
        v4 = a2[2];
      }

      if (v4)
      {
        v8 = v4;
      }

      else
      {
        v8 = &CoreML::Specification::_SizeRange_default_instance_;
      }

      this = CoreML::Specification::Int64Range::MergeFrom(v5, v8);
    }

    v9 = a2[3];
    if (v9)
    {
      v10 = v3[3];
      if (!v10)
      {
        v11 = v3[1];
        v12 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        if (v11)
        {
          v12 = *v12;
        }

        v10 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::SizeRange>(v12);
        v3[3] = v10;
        v9 = a2[3];
      }

      if (v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = &CoreML::Specification::_SizeRange_default_instance_;
      }

      this = CoreML::Specification::Int64Range::MergeFrom(v10, v13);
    }
  }

  v14 = a2[1];
  if (v14)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(v3 + 1, (v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

void *CoreML::Specification::ImageFeatureType_ImageSizeRange::Clear(void *this)
{
  v1 = this;
  v3 = this + 1;
  v2 = this[1];
  v4 = v2 & 1;
  v5 = (v2 & 0xFFFFFFFFFFFFFFFCLL);
  if (v2)
  {
    if (*v5)
    {
      goto LABEL_5;
    }
  }

  else if ((v2 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    goto LABEL_5;
  }

  this = this[2];
  if (this)
  {
    CoreML::Specification::Int64Range::~Int64Range(this);
    this = MEMORY[0x1C6908B60]();
    v4 = *v3 & 1;
    v5 = (*v3 & 0xFFFFFFFFFFFFFFFCLL);
  }

LABEL_5:
  v1[2] = 0;
  if (v4)
  {
    if (*v5)
    {
      goto LABEL_9;
    }
  }

  else if (v5)
  {
    goto LABEL_9;
  }

  this = v1[3];
  if (this)
  {
    CoreML::Specification::Int64Range::~Int64Range(this);
    this = MEMORY[0x1C6908B60]();
    v4 = *v3 & 1;
  }

LABEL_9:
  v1[3] = 0;
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(v3);
  }

  return this;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ImageFeatureType_ImageSizeRange>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_1F415D720;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  return result;
}

void CoreML::Specification::ImageFeatureType_ImageSizeRange::~ImageFeatureType_ImageSizeRange(void (***this)(CoreML::Specification::ImageFeatureType_ImageSizeRange *__hidden this))
{
  CoreML::Specification::ImageFeatureType_ImageSizeRange::~ImageFeatureType_ImageSizeRange(this);

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

  if (this != &CoreML::Specification::_ImageFeatureType_ImageSizeRange_default_instance_)
  {
    v5 = this[2];
    if (v5)
    {
      CoreML::Specification::Int64Range::~Int64Range(v5);
      MEMORY[0x1C6908B60]();
    }

    v6 = this[3];
    if (v6)
    {
      CoreML::Specification::Int64Range::~Int64Range(v6);
      MEMORY[0x1C6908B60]();
    }
  }

  if (*v3)
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(*v3);
  }

LABEL_10:
  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}

unsigned __int8 *CoreML::Specification::ImageFeatureType::_InternalSerialize(CoreML::Specification::ImageFeatureType *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  v6 = *(this + 2);
  if (v6)
  {
    if (*a3 <= __dst)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      v6 = *(this + 2);
    }

    *v4 = 8;
    v4[1] = v6;
    if (v6 > 0x7F)
    {
      v4[1] = v6 | 0x80;
      v7 = v6 >> 7;
      v4[2] = v6 >> 7;
      v4 += 3;
      if (v6 >= 0x4000)
      {
        v8 = v6 >> 7;
        do
        {
          *(v4 - 1) = v8 | 0x80;
          v8 = v7 >> 7;
          *v4++ = v7 >> 7;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
      }
    }

    else
    {
      v4 += 2;
    }
  }

  v10 = *(this + 3);
  if (v10)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      v10 = *(this + 3);
    }

    *v4 = 16;
    v4[1] = v10;
    if (v10 > 0x7F)
    {
      v4[1] = v10 | 0x80;
      v11 = v10 >> 7;
      v4[2] = v10 >> 7;
      v4 += 3;
      if (v10 >= 0x4000)
      {
        v12 = v10 >> 7;
        do
        {
          *(v4 - 1) = v12 | 0x80;
          v12 = v11 >> 7;
          *v4++ = v11 >> 7;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
      }
    }

    else
    {
      v4 += 2;
    }
  }

  v14 = *(this + 8);
  if (v14)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      v14 = *(this + 8);
    }

    *v4 = 24;
    v4[1] = v14;
    if (v14 > 0x7F)
    {
      v4[1] = v14 | 0x80;
      v15 = v14 >> 7;
      v4[2] = v15;
      v4 += 3;
      if (v14 >= 0x4000)
      {
        v16 = v14 >> 7;
        do
        {
          *(v4 - 1) = v16 | 0x80;
          v16 = v15 >> 7;
          *v4++ = v15 >> 7;
          v17 = v15 >> 14;
          v15 >>= 7;
        }

        while (v17);
      }
    }

    else
    {
      v4 += 2;
    }
  }

  v18 = *(this + 13);
  if (v18 == 21)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v19 = *(this + 5);
    *v4 = 426;
    v20 = *(v19 + 10);
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

    v4 = CoreML::Specification::ImageFeatureType_EnumeratedImageSizes::_InternalSerialize(v19, v21, a3);
    v18 = *(this + 13);
  }

  if (v18 == 31)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v25 = *(this + 5);
    *v4 = 506;
    v26 = *(v25 + 32);
    v4[2] = v26;
    if (v26 > 0x7F)
    {
      v4[2] = v26 | 0x80;
      v28 = v26 >> 7;
      v4[3] = v26 >> 7;
      v27 = v4 + 4;
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
      v27 = v4 + 3;
    }

    v4 = CoreML::Specification::ImageFeatureType_ImageSizeRange::_InternalSerialize(v25, v27, a3);
  }

  v31 = *(this + 1);
  if ((v31 & 1) == 0)
  {
    return v4;
  }

  v33 = v31 & 0xFFFFFFFFFFFFFFFCLL;
  v34 = *(v33 + 31);
  if (v34 < 0)
  {
    v35 = *(v33 + 8);
    v34 = *(v33 + 16);
  }

  else
  {
    v35 = (v33 + 8);
  }

  if (*a3 - v4 >= v34)
  {
    v36 = v34;
    memcpy(v4, v35, v34);
    v4 += v36;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v35, v34, v4);
}

google::protobuf::internal *CoreML::Specification::ImageFeatureType::_InternalParse(CoreML::Specification::ImageFeatureType *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v37 = a2;
  while (1)
  {
    v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v37, *(a3 + 23));
    result = v37;
    if (v5)
    {
      return result;
    }

    v7 = (v37 + 1);
    v8 = *v37;
    if (*v37 < 0)
    {
      v8 = v8 + (*v7 << 7) - 128;
      if (*v7 < 0)
      {
        v9 = 14;
        v10 = 2;
        while (1)
        {
          v8 += (*(v37 + v10) - 1) << v9;
          if ((*(v37 + v10) & 0x80000000) == 0)
          {
            break;
          }

          ++v10;
          v9 += 7;
          if (v10 == 5)
          {
            return 0;
          }
        }

        v7 = (v37 + v10 + 1);
      }

      else
      {
        v7 = (v37 + 2);
      }
    }

    v11 = v8 >> 3;
    if (v8 >> 3 <= 2)
    {
      if (v11 == 1)
      {
        if (v8 != 8)
        {
          goto LABEL_40;
        }

        v24 = (v7 + 1);
        v23 = *v7;
        if ((v23 & 0x8000000000000000) != 0)
        {
          v25 = *v24;
          v23 = v23 & 0x7F | (v25 << 7);
          if (v25 < 0)
          {
            v33 = 14;
            v34 = 2;
            while (1)
            {
              v23 += (*(v7 + v34) - 1) << v33;
              if ((*(v7 + v34) & 0x80000000) == 0)
              {
                break;
              }

              ++v34;
              v33 += 7;
              if (v34 == 10)
              {
                result = 0;
                *(this + 2) = 0;
                return result;
              }
            }

            v24 = (v7 + v34 + 1);
          }

          else
          {
            v24 = (v7 + 2);
          }
        }

        v37 = v24;
        *(this + 2) = v23;
      }

      else
      {
        if (v11 != 2 || v8 != 16)
        {
          goto LABEL_40;
        }

        v17 = (v7 + 1);
        v16 = *v7;
        if ((v16 & 0x8000000000000000) != 0)
        {
          v18 = *v17;
          v16 = v16 & 0x7F | (v18 << 7);
          if (v18 < 0)
          {
            v35 = 14;
            v36 = 2;
            while (1)
            {
              v16 += (*(v7 + v36) - 1) << v35;
              if ((*(v7 + v36) & 0x80000000) == 0)
              {
                break;
              }

              ++v36;
              v35 += 7;
              if (v36 == 10)
              {
                result = 0;
                *(this + 3) = 0;
                return result;
              }
            }

            v17 = (v7 + v36 + 1);
          }

          else
          {
            v17 = (v7 + 2);
          }
        }

        v37 = v17;
        *(this + 3) = v16;
      }
    }

    else if (v11 == 3)
    {
      if (v8 != 24)
      {
        goto LABEL_40;
      }

      v20 = (v7 + 1);
      v19 = *v7;
      if ((v19 & 0x8000000000000000) != 0)
      {
        v21 = *v20;
        v19 = v19 & 0x7F | (v21 << 7);
        if (v21 < 0)
        {
          v31 = 14;
          v32 = 2;
          while (1)
          {
            v19 += (*(v7 + v32) - 1) << v31;
            if ((*(v7 + v32) & 0x80000000) == 0)
            {
              break;
            }

            result = 0;
            ++v32;
            v31 += 7;
            if (v32 == 10)
            {
              return result;
            }
          }

          v20 = (v7 + v32 + 1);
        }

        else
        {
          v20 = (v7 + 2);
        }
      }

      v37 = v20;
      *(this + 8) = v19;
    }

    else
    {
      if (v11 == 21)
      {
        if (v8 == 170)
        {
          if (*(this + 13) == 21)
          {
            goto LABEL_35;
          }

          CoreML::Specification::ImageFeatureType::clear_SizeFlexibility(this);
          *(this + 13) = 21;
          v29 = *(this + 1);
          v30 = (v29 & 0xFFFFFFFFFFFFFFFCLL);
          if (v29)
          {
            v30 = *v30;
          }

          v14 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ImageFeatureType_EnumeratedImageSizes>(v30);
LABEL_50:
          v22 = v14;
          *(this + 5) = v14;
LABEL_51:
          result = google::protobuf::internal::ParseContext::ParseMessage(a3, v22, v7);
          goto LABEL_52;
        }
      }

      else if (v11 == 31 && v8 == 250)
      {
        if (*(this + 13) != 31)
        {
          CoreML::Specification::ImageFeatureType::clear_SizeFlexibility(this);
          *(this + 13) = 31;
          v12 = *(this + 1);
          v13 = (v12 & 0xFFFFFFFFFFFFFFFCLL);
          if (v12)
          {
            v13 = *v13;
          }

          v14 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ImageFeatureType_ImageSizeRange>(v13);
          goto LABEL_50;
        }

LABEL_35:
        v22 = *(this + 5);
        goto LABEL_51;
      }

LABEL_40:
      if (v8)
      {
        v26 = (v8 & 7) == 4;
      }

      else
      {
        v26 = 1;
      }

      if (v26)
      {
        *(a3 + 20) = v8 - 1;
        return v7;
      }

      v27 = *(this + 1);
      if (v27)
      {
        v28 = ((v27 & 0xFFFFFFFFFFFFFFFCLL) + 8);
      }

      else
      {
        v28 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
      }

      v38 = v28;
      result = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v8, &v38, v7, a3);
LABEL_52:
      v37 = result;
      if (!result)
      {
        return result;
      }
    }
  }
}

uint64_t CoreML::Specification::ImageFeatureType::clear_SizeFlexibility(uint64_t this)
{
  v1 = this;
  v2 = *(this + 52);
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
      CoreML::Specification::ImageFeatureType_ImageSizeRange::~ImageFeatureType_ImageSizeRange(this);
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
      CoreML::Specification::ImageFeatureType_EnumeratedImageSizes::~ImageFeatureType_EnumeratedImageSizes(this);
LABEL_11:
      this = MEMORY[0x1C6908B60]();
    }
  }

LABEL_12:
  *(v1 + 52) = 0;
  return this;
}

unint64_t CoreML::Specification::ImageFeatureType::ByteSizeLong(CoreML::Specification::ImageFeatureType *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = (9 * (__clz(v2 | 1) ^ 0x3F) + 137) >> 6;
  if (v2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 + ((9 * (__clz(v3 | 1) ^ 0x3F) + 137) >> 6);
  if (v3)
  {
    v5 = v6;
  }

  v7 = *(this + 8);
  v8 = v5 + ((9 * (__clz(v7 | 1) ^ 0x3F) + 73) >> 6);
  if (v7)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v5;
  }

  v10 = *(this + 13);
  if (v10 == 31)
  {
    v11 = CoreML::Specification::ImageFeatureType_ImageSizeRange::ByteSizeLong(*(this + 5));
  }

  else
  {
    if (v10 != 21)
    {
      goto LABEL_14;
    }

    v11 = CoreML::Specification::ImageFeatureType_EnumeratedImageSizes::ByteSizeLong(*(this + 5));
  }

  v9 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_14:
  v12 = *(this + 1);
  if (v12)
  {
    v14 = v12 & 0xFFFFFFFFFFFFFFFCLL;
    v15 = *((v12 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v15 < 0)
    {
      v15 = *(v14 + 16);
    }

    v9 += v15;
  }

  *(this + 12) = v9;
  return v9;
}

std::string *CoreML::Specification::ImageFeatureType::MergeFrom(std::string *this, const CoreML::Specification::ImageFeatureType *a2)
{
  v3 = this;
  v4 = *(a2 + 2);
  if (v4)
  {
    this->__r_.__value_.__r.__words[2] = v4;
  }

  v5 = *(a2 + 3);
  if (v5)
  {
    this[1].__r_.__value_.__r.__words[0] = v5;
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    LODWORD(this[1].__r_.__value_.__r.__words[1]) = v6;
  }

  v7 = *(a2 + 13);
  if (v7 != 31)
  {
    if (v7 != 21)
    {
      goto LABEL_25;
    }

    if (HIDWORD(this[2].__r_.__value_.__r.__words[0]) == 21)
    {
      v8 = this[1].__r_.__value_.__r.__words[2];
    }

    else
    {
      CoreML::Specification::ImageFeatureType::clear_SizeFlexibility(this);
      HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = 21;
      size = v3->__r_.__value_.__l.__size_;
      v11 = (size & 0xFFFFFFFFFFFFFFFCLL);
      if (size)
      {
        v11 = *v11;
      }

      v8 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ImageFeatureType_EnumeratedImageSizes>(v11);
      v3[1].__r_.__value_.__r.__words[2] = v8;
      if (*(a2 + 13) != 21)
      {
        v12 = &CoreML::Specification::_ImageFeatureType_EnumeratedImageSizes_default_instance_;
        goto LABEL_22;
      }
    }

    v12 = *(a2 + 5);
LABEL_22:
    this = CoreML::Specification::ImageFeatureType_EnumeratedImageSizes::MergeFrom(v8, v12);
    goto LABEL_25;
  }

  if (HIDWORD(this[2].__r_.__value_.__r.__words[0]) == 31)
  {
    v9 = this[1].__r_.__value_.__r.__words[2];
  }

  else
  {
    CoreML::Specification::ImageFeatureType::clear_SizeFlexibility(this);
    HIDWORD(v3[2].__r_.__value_.__r.__words[0]) = 31;
    v13 = v3->__r_.__value_.__l.__size_;
    v14 = (v13 & 0xFFFFFFFFFFFFFFFCLL);
    if (v13)
    {
      v14 = *v14;
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ImageFeatureType_ImageSizeRange>(v14);
    v3[1].__r_.__value_.__r.__words[2] = v9;
    if (*(a2 + 13) != 31)
    {
      v15 = &CoreML::Specification::_ImageFeatureType_ImageSizeRange_default_instance_;
      goto LABEL_24;
    }
  }

  v15 = *(a2 + 5);
LABEL_24:
  this = CoreML::Specification::ImageFeatureType_ImageSizeRange::MergeFrom(v9, v15);
LABEL_25:
  v16 = *(a2 + 1);
  if (v16)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>(&v3->__r_.__value_.__l.__size_, (v16 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

uint64_t CoreML::Specification::ImageFeatureType::Clear(CoreML::Specification::ImageFeatureType *this)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  result = CoreML::Specification::ImageFeatureType::clear_SizeFlexibility(this);
  v4 = *(this + 8);
  v3 = (this + 8);
  if (v4)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(v3);
  }

  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ImageFeatureType>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *(result + 8) = a1;
  *result = off_1F415DC48;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 48) = 0;
  return result;
}

void CoreML::Specification::ImageFeatureType::~ImageFeatureType(CoreML::Specification::ImageFeatureType *this)
{
  CoreML::Specification::ImageFeatureType::~ImageFeatureType(this);

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

  if (*(this + 13))
  {
    CoreML::Specification::ImageFeatureType::clear_SizeFlexibility(this);
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

unsigned __int8 *CoreML::Specification::ArrayFeatureType_Shape::_InternalSerialize(CoreML::Specification::ArrayFeatureType_Shape *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  v6 = *(this + 8);
  if (v6 >= 1)
  {
    if (*a3 <= __dst)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
    }

    *v4 = 10;
    v7 = v4 + 1;
    if (v6 >= 0x80)
    {
      do
      {
        *v7++ = v6 | 0x80;
        v20 = v6 >> 14;
        v6 >>= 7;
      }

      while (v20);
      v4 = v7 - 1;
    }

    v4 += 2;
    *v7 = v6;
    v8 = *(this + 3);
    v9 = &v8[*(this + 4)];
    do
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v11 = *v8++;
      v10 = v11;
      *v4 = v11;
      if (v11 > 0x7F)
      {
        *v4 = v10 | 0x80;
        v12 = v10 >> 7;
        v4[1] = v10 >> 7;
        v4 += 2;
        if (v10 >= 0x4000)
        {
          v13 = v10 >> 7;
          do
          {
            *(v4 - 1) = v13 | 0x80;
            v13 = v12 >> 7;
            *v4++ = v12 >> 7;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
        }
      }

      else
      {
        ++v4;
      }
    }

    while (v8 < v9);
  }

  v15 = *(this + 1);
  if ((v15 & 1) == 0)
  {
    return v4;
  }

  v17 = v15 & 0xFFFFFFFFFFFFFFFCLL;
  v18 = *(v17 + 31);
  if (v18 < 0)
  {
    v19 = *(v17 + 8);
    v18 = *(v17 + 16);
  }

  else
  {
    v19 = (v17 + 8);
  }

  if (*a3 - v4 >= v18)
  {
    v21 = v18;
    memcpy(v4, v19, v18);
    v4 += v21;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v19, v18, v4);
}

google::protobuf::internal *CoreML::Specification::ArrayFeatureType_Shape::_InternalParse(CoreML::Specification::ArrayFeatureType_Shape *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v17 = a2;
  do
  {
    while (1)
    {
      if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v17, *(a3 + 23)))
      {
        return v17;
      }

      v7 = (v17 + 1);
      v8 = *v17;
      if (*v17 < 0)
      {
        v8 = v8 + (*v7 << 7) - 128;
        if (*v7 < 0)
        {
          v9 = 14;
          v10 = 2;
          while (1)
          {
            v8 += (*(v17 + v10) - 1) << v9;
            if ((*(v17 + v10) & 0x80000000) == 0)
            {
              break;
            }

            ++v10;
            v9 += 7;
            if (v10 == 5)
            {
              return 0;
            }
          }

          v7 = (v17 + v10 + 1);
        }

        else
        {
          v7 = (v17 + 2);
        }
      }

      v17 = v7;
      if ((v8 & 0xFFFFFFF8) != 8)
      {
        break;
      }

      if (v8 == 10)
      {
        v11 = google::protobuf::internal::PackedInt64Parser((this + 16), v7, a3, v6);
        goto LABEL_24;
      }

      if (v8 != 8)
      {
        break;
      }

      Varint64 = google::protobuf::internal::ReadVarint64(&v17, v5);
      google::protobuf::RepeatedField<long long>::Add(this + 4, Varint64);
      if (!v17)
      {
        return 0;
      }
    }

    if (v8)
    {
      v13 = (v8 & 7) == 4;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      *(a3 + 20) = v8 - 1;
      return v7;
    }

    v14 = *(this + 1);
    if (v14)
    {
      v15 = ((v14 & 0xFFFFFFFFFFFFFFFCLL) + 8);
    }

    else
    {
      v15 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
    }

    v18 = v15;
    v11 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v8, &v18, v7, a3);
LABEL_24:
    v17 = v11;
  }

  while (v11);
  return 0;
}

uint64_t CoreML::Specification::ArrayFeatureType_Shape::ByteSizeLong(CoreML::Specification::ArrayFeatureType_Shape *this)
{
  v1 = *(this + 4);
  if (v1 < 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = 0;
    v3 = *(this + 3);
    do
    {
      v4 = *v3++;
      v2 += (9 * (__clz(v4 | 1) ^ 0x3F) + 73) >> 6;
      --v1;
    }

    while (v1);
    if (v2)
    {
      v5 = ((9 * (__clz(v2 | 1) ^ 0x3F) + 73) >> 6) + 1;
      goto LABEL_8;
    }
  }

  v5 = 0;
LABEL_8:
  *(this + 8) = v2;
  v6 = v5 + v2;
  v7 = *(this + 1);
  if (v7)
  {
    v9 = v7 & 0xFFFFFFFFFFFFFFFCLL;
    v10 = *((v7 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v10 < 0)
    {
      v10 = *(v9 + 16);
    }

    v6 += v10;
  }

  *(this + 9) = v6;
  return v6;
}

uint64_t CoreML::Specification::ArrayFeatureType_Shape::Clear(CoreML::Specification::ArrayFeatureType_Shape *this)
{
  v2 = *(this + 8);
  result = this + 8;
  *(result + 8) = 0;
  if (v2)
  {
    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(result);
  }

  return result;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ArrayFeatureType_Shape>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = &unk_1F415D888;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = a1;
  *(result + 36) = 0;
  return result;
}

void CoreML::Specification::ArrayFeatureType_Shape::~ArrayFeatureType_Shape(CoreML::Specification::ArrayFeatureType_Shape *this)
{
  CoreML::Specification::Int64Vector::~Int64Vector(this);

  JUMPOUT(0x1C6908B60);
}

unsigned __int8 *CoreML::Specification::ArrayFeatureType_EnumeratedShapes::_InternalSerialize(CoreML::Specification::ArrayFeatureType_EnumeratedShapes *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 9);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        __dst[1] = v9 | 0x80;
        v11 = v9 >> 7;
        __dst[2] = v9 >> 7;
        v10 = __dst + 3;
        if (v9 >= 0x4000)
        {
          v12 = v9 >> 7;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v11 = v12 >> 7;
            *v10++ = v12 >> 7;
            v13 = v12 >> 14;
            v12 >>= 7;
          }

          while (v13);
        }
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = CoreML::Specification::ArrayFeatureType_Shape::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return __dst;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if (*a3 - __dst >= v17)
  {
    v19 = v17;
    memcpy(__dst, v18, v17);
    __dst += v19;
    return __dst;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v18, v17, __dst);
}

const char *CoreML::Specification::ArrayFeatureType_EnumeratedShapes::_InternalParse(CoreML::Specification::ArrayFeatureType_EnumeratedShapes *this, const char *a2, google::protobuf::internal::ParseContext *a3)
{
  v17 = a2;
  while (1)
  {
LABEL_2:
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v17, *(a3 + 23)))
    {
      return v17;
    }

    v5 = (v17 + 1);
    v6 = *v17;
    if (*v17 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v7 = 14;
        v8 = 2;
        while (1)
        {
          v6 += (v17[v8] - 1) << v7;
          if ((v17[v8] & 0x80000000) == 0)
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

        v5 = &v17[v8 + 1];
      }

      else
      {
        v5 = (v17 + 2);
      }
    }

    if (v6 == 10)
    {
      break;
    }

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

    v18 = v11;
    v17 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v18, v5, a3);
    if (!v17)
    {
      return 0;
    }
  }

  --v5;
  while (1)
  {
    v12 = *(this + 4);
    if (v12 && (v13 = *(this + 6), v13 < *v12))
    {
      *(this + 6) = v13 + 1;
      v14 = *&v12[2 * v13 + 2];
    }

    else
    {
      v14 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ArrayFeatureType_Shape>(*(this + 2));
      google::protobuf::internal::RepeatedPtrFieldBase::AddOutOfLineHelper((this + 16), v14);
    }

    v15 = google::protobuf::internal::ParseContext::ParseMessage(a3, v14, (v5 + 1));
    v5 = v15;
    if (!v15)
    {
      return v5;
    }

    if (*a3 <= v15 || *v15 != 10)
    {
      v17 = v15;
      goto LABEL_2;
    }
  }
}

uint64_t CoreML::Specification::ArrayFeatureType_EnumeratedShapes::ByteSizeLong(CoreML::Specification::ArrayFeatureType_EnumeratedShapes *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = CoreML::Specification::ArrayFeatureType_Shape::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 1);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(this + 10) = v2;
  return v2;
}

atomic_ullong **CoreML::Specification::ArrayFeatureType_EnumeratedShapes::MergeFrom(atomic_ullong **this, const CoreML::Specification::ArrayFeatureType_EnumeratedShapes *a2)
{
  v3 = this;
  v4 = *(a2 + 6);
  if (v4)
  {
    v5 = *(a2 + 4);
    v6 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 2), *(a2 + 6));
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::ArrayFeatureType_Shape>::TypeHandler>((v3 + 16), v6, (v5 + 8), v4, **(v3 + 32) - *(v3 + 24));
    v7 = *(v3 + 24) + v4;
    *(v3 + 24) = v7;
    v8 = *(v3 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 1);
  if (v9)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>((v3 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

atomic_ullong **google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::ArrayFeatureType_Shape>::TypeHandler>(atomic_ullong **result, std::string **a2, CoreML::Specification::Int64Set **a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ArrayFeatureType_Shape>(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::ArrayFeatureType_Shape>::Merge(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

char *CoreML::Specification::ArrayFeatureType_EnumeratedShapes::Clear(char *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = *(this + 4) + 8;
    do
    {
      this = (*v3 + 8);
      v4 = *this;
      *(*v3 + 16) = 0;
      if (v4)
      {
        this = google::protobuf::internal::InternalMetadata::DoClear<std::string>(this);
      }

      v3 += 8;
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(v5);
  }

  return this;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ArrayFeatureType_EnumeratedShapes>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_1F415D6A8;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void CoreML::Specification::ArrayFeatureType_EnumeratedShapes::~ArrayFeatureType_EnumeratedShapes(CoreML::Specification::ArrayFeatureType_EnumeratedShapes *this)
{
  CoreML::Specification::ArrayFeatureType_EnumeratedShapes::~ArrayFeatureType_EnumeratedShapes(this);

  JUMPOUT(0x1C6908B60);
}

{
  v3 = (this + 8);
  v2 = *(this + 1);
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(v2);
  }

  if (*(this + 4) && !*(this + 2))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 16));
  }

  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}

unsigned __int8 *CoreML::Specification::ArrayFeatureType_ShapeRange::_InternalSerialize(CoreML::Specification::ArrayFeatureType_ShapeRange *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v6 = *(this + 6);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
      }

      v8 = *(*(this + 4) + 8 * i + 8);
      *__dst = 10;
      v9 = *(v8 + 8);
      __dst[1] = v9;
      if (v9 > 0x7F)
      {
        __dst[1] = v9 | 0x80;
        v11 = v9 >> 7;
        __dst[2] = v9 >> 7;
        v10 = __dst + 3;
        if (v9 >= 0x4000)
        {
          v12 = v9 >> 7;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v11 = v12 >> 7;
            *v10++ = v12 >> 7;
            v13 = v12 >> 14;
            v12 >>= 7;
          }

          while (v13);
        }
      }

      else
      {
        v10 = __dst + 2;
      }

      __dst = CoreML::Specification::SizeRange::_InternalSerialize(v8, v10, a3);
    }
  }

  v14 = *(this + 1);
  if ((v14 & 1) == 0)
  {
    return __dst;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFCLL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if (*a3 - __dst >= v17)
  {
    v19 = v17;
    memcpy(__dst, v18, v17);
    __dst += v19;
    return __dst;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v18, v17, __dst);
}

const char *CoreML::Specification::ArrayFeatureType_ShapeRange::_InternalParse(CoreML::Specification::ArrayFeatureType_ShapeRange *this, const char *a2, google::protobuf::internal::ParseContext *a3)
{
  v17 = a2;
  while (1)
  {
LABEL_2:
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v17, *(a3 + 23)))
    {
      return v17;
    }

    v5 = (v17 + 1);
    v6 = *v17;
    if (*v17 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v7 = 14;
        v8 = 2;
        while (1)
        {
          v6 += (v17[v8] - 1) << v7;
          if ((v17[v8] & 0x80000000) == 0)
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

        v5 = &v17[v8 + 1];
      }

      else
      {
        v5 = (v17 + 2);
      }
    }

    if (v6 == 10)
    {
      break;
    }

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

    v18 = v11;
    v17 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, &v18, v5, a3);
    if (!v17)
    {
      return 0;
    }
  }

  --v5;
  while (1)
  {
    v12 = *(this + 4);
    if (v12 && (v13 = *(this + 6), v13 < *v12))
    {
      *(this + 6) = v13 + 1;
      v14 = *&v12[2 * v13 + 2];
    }

    else
    {
      v14 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::SizeRange>(*(this + 2));
      google::protobuf::internal::RepeatedPtrFieldBase::AddOutOfLineHelper((this + 16), v14);
    }

    v15 = google::protobuf::internal::ParseContext::ParseMessage(a3, v14, (v5 + 1));
    v5 = v15;
    if (!v15)
    {
      return v5;
    }

    if (*a3 <= v15 || *v15 != 10)
    {
      v17 = v15;
      goto LABEL_2;
    }
  }
}

uint64_t CoreML::Specification::ArrayFeatureType_ShapeRange::ByteSizeLong(CoreML::Specification::ArrayFeatureType_ShapeRange *this)
{
  v2 = *(this + 6);
  v3 = *(this + 4);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = CoreML::Specification::SizeRange::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 1);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFCLL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFCLL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(this + 10) = v2;
  return v2;
}

atomic_ullong **CoreML::Specification::ArrayFeatureType_ShapeRange::MergeFrom(atomic_ullong **this, const CoreML::Specification::ArrayFeatureType_ShapeRange *a2)
{
  v3 = this;
  v4 = *(a2 + 6);
  if (v4)
  {
    v5 = *(a2 + 4);
    v6 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((this + 2), *(a2 + 6));
    this = google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::SizeRange>::TypeHandler>((v3 + 16), v6, (v5 + 8), v4, **(v3 + 32) - *(v3 + 24));
    v7 = *(v3 + 24) + v4;
    *(v3 + 24) = v7;
    v8 = *(v3 + 32);
    if (*v8 < v7)
    {
      *v8 = v7;
    }
  }

  v9 = *(a2 + 1);
  if (v9)
  {

    return google::protobuf::internal::InternalMetadata::DoMergeFrom<std::string>((v3 + 8), (v9 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  return this;
}

atomic_ullong **google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<CoreML::Specification::SizeRange>::TypeHandler>(atomic_ullong **result, std::string **a2, CoreML::Specification::Int64Range **a3, int a4, int a5)
{
  LODWORD(v5) = a4;
  v7 = a2;
  v8 = a4 - a5;
  if (a4 > a5)
  {
    v9 = *result;
    v10 = &a2[a5];
    do
    {
      result = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::SizeRange>(v9);
      *v10++ = result;
      --v8;
    }

    while (v8);
  }

  if (v5 >= 1)
  {
    v5 = v5;
    do
    {
      v12 = *a3++;
      v11 = v12;
      v13 = *v7++;
      result = google::protobuf::internal::GenericTypeHandler<CoreML::Specification::ImageFeatureType_ImageSize>::Merge(v11, v13);
      --v5;
    }

    while (v5);
  }

  return result;
}

char *CoreML::Specification::ArrayFeatureType_ShapeRange::Clear(char *this)
{
  v1 = this;
  v2 = *(this + 6);
  if (v2 >= 1)
  {
    v3 = (*(this + 4) + 8);
    do
    {
      this = (*v3 + 8);
      v4 = *this;
      *(this + 1) = 0;
      *(this + 2) = 0;
      if (v4)
      {
        this = google::protobuf::internal::InternalMetadata::DoClear<std::string>(this);
      }

      ++v3;
      --v2;
    }

    while (v2);
    *(v1 + 24) = 0;
  }

  v6 = *(v1 + 8);
  v5 = (v1 + 8);
  if (v6)
  {

    return google::protobuf::internal::InternalMetadata::DoClear<std::string>(v5);
  }

  return this;
}

uint64_t google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ArrayFeatureType_ShapeRange>(atomic_ullong *a1)
{
  if (!a1)
  {
    operator new();
  }

  *result = off_1F415D798;
  *(result + 8) = a1;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 24) = 0;
  *(result + 40) = 0;
  return result;
}

void CoreML::Specification::ArrayFeatureType_ShapeRange::~ArrayFeatureType_ShapeRange(CoreML::Specification::ArrayFeatureType_ShapeRange *this)
{
  CoreML::Specification::ArrayFeatureType_ShapeRange::~ArrayFeatureType_ShapeRange(this);

  JUMPOUT(0x1C6908B60);
}

{
  v3 = (this + 8);
  v2 = *(this + 1);
  if ((v2 & 1) != 0 && !*(v2 & 0xFFFFFFFFFFFFFFFCLL))
  {
    google::protobuf::internal::InternalMetadata::DeleteOutOfLineHelper<std::string>(v2);
  }

  if (*(this + 4) && !*(this + 2))
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos((this + 16));
  }

  *this = &unk_1F4160460;
  google::protobuf::internal::InternalMetadata::~InternalMetadata(v3);
}

unsigned __int8 *CoreML::Specification::ArrayFeatureType::_InternalSerialize(CoreML::Specification::ArrayFeatureType *this, unsigned __int8 *__dst, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = __dst;
  v6 = *(this + 8);
  if (v6 >= 1)
  {
    if (*a3 <= __dst)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, __dst);
    }

    *v4 = 10;
    v7 = v4 + 1;
    if (v6 >= 0x80)
    {
      do
      {
        *v7++ = v6 | 0x80;
        v44 = v6 >> 14;
        v6 >>= 7;
      }

      while (v44);
      v4 = v7 - 1;
    }

    v4 += 2;
    *v7 = v6;
    v8 = *(this + 3);
    v9 = &v8[*(this + 4)];
    do
    {
      if (*a3 <= v4)
      {
        v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      }

      v11 = *v8++;
      v10 = v11;
      *v4 = v11;
      if (v11 > 0x7F)
      {
        *v4 = v10 | 0x80;
        v12 = v10 >> 7;
        v4[1] = v10 >> 7;
        v4 += 2;
        if (v10 >= 0x4000)
        {
          v13 = v10 >> 7;
          do
          {
            *(v4 - 1) = v13 | 0x80;
            v13 = v12 >> 7;
            *v4++ = v12 >> 7;
            v14 = v12 >> 14;
            v12 >>= 7;
          }

          while (v14);
        }
      }

      else
      {
        ++v4;
      }
    }

    while (v8 < v9);
  }

  v15 = *(this + 9);
  if (v15)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
      v15 = *(this + 9);
    }

    *v4 = 16;
    v4[1] = v15;
    if (v15 > 0x7F)
    {
      v4[1] = v15 | 0x80;
      v16 = v15 >> 7;
      v4[2] = v16;
      v4 += 3;
      if (v15 >= 0x4000)
      {
        v17 = v15 >> 7;
        do
        {
          *(v4 - 1) = v17 | 0x80;
          v17 = v16 >> 7;
          *v4++ = v16 >> 7;
          v18 = v16 >> 14;
          v16 >>= 7;
        }

        while (v18);
      }
    }

    else
    {
      v4 += 2;
    }
  }

  v19 = *(this + 15);
  if (v19 == 21)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v20 = *(this + 5);
    *v4 = 426;
    v21 = *(v20 + 10);
    v4[2] = v21;
    if (v21 > 0x7F)
    {
      v4[2] = v21 | 0x80;
      v23 = v21 >> 7;
      v4[3] = v21 >> 7;
      v22 = v4 + 4;
      if (v21 >= 0x4000)
      {
        v24 = v21 >> 7;
        do
        {
          *(v22 - 1) = v23 | 0x80;
          v23 = v24 >> 7;
          *v22++ = v24 >> 7;
          v25 = v24 >> 14;
          v24 >>= 7;
        }

        while (v25);
      }
    }

    else
    {
      v22 = v4 + 3;
    }

    v4 = CoreML::Specification::ArrayFeatureType_EnumeratedShapes::_InternalSerialize(v20, v22, a3);
    v19 = *(this + 15);
  }

  if (v19 == 31)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v26 = *(this + 5);
    *v4 = 506;
    v27 = *(v26 + 10);
    v4[2] = v27;
    if (v27 > 0x7F)
    {
      v4[2] = v27 | 0x80;
      v29 = v27 >> 7;
      v4[3] = v27 >> 7;
      v28 = v4 + 4;
      if (v27 >= 0x4000)
      {
        v30 = v27 >> 7;
        do
        {
          *(v28 - 1) = v29 | 0x80;
          v29 = v30 >> 7;
          *v28++ = v30 >> 7;
          v31 = v30 >> 14;
          v30 >>= 7;
        }

        while (v31);
      }
    }

    else
    {
      v28 = v4 + 3;
    }

    v4 = CoreML::Specification::ArrayFeatureType_ShapeRange::_InternalSerialize(v26, v28, a3);
  }

  v32 = *(this + 16);
  if (v32 == 41)
  {
    if (*a3 > v4 || (v45 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4), v4 = v45, *(this + 16) == 41))
    {
      v33 = *(this + 12);
      *v4 = 712;
      v4[2] = v33;
      if (v33 > 0x7F)
      {
        v4[2] = v33 | 0x80;
        v34 = v33 >> 7;
        v4[3] = v33 >> 7;
        v4 += 4;
        if (v33 >= 0x4000)
        {
          v35 = v33 >> 7;
          do
          {
            *(v4 - 1) = v35 | 0x80;
            v35 = v34 >> 7;
            *v4++ = v34 >> 7;
            v36 = v34 >> 14;
            v34 >>= 7;
          }

          while (v36);
        }

        goto LABEL_47;
      }
    }

    else
    {
      *v45 = 712;
      *(v45 + 2) = 0;
    }

    v4 += 3;
LABEL_47:
    v32 = *(this + 16);
  }

  if (v32 == 51)
  {
    if (*a3 > v4 || (v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4), *(this + 16) == 51))
    {
      v37 = *(this + 12);
    }

    else
    {
      v37 = 0;
    }

    *v4 = 925;
    *(v4 + 2) = v37;
    v4 += 6;
    v32 = *(this + 16);
  }

  if (v32 == 61)
  {
    if (*a3 > v4 || (v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4), *(this + 16) == 61))
    {
      v38 = *(this + 6);
    }

    else
    {
      v38 = 0;
    }

    *v4 = 1001;
    *(v4 + 2) = v38;
    v4 += 10;
  }

  v39 = *(this + 1);
  if ((v39 & 1) == 0)
  {
    return v4;
  }

  v41 = v39 & 0xFFFFFFFFFFFFFFFCLL;
  v42 = *(v41 + 31);
  if (v42 < 0)
  {
    v43 = *(v41 + 8);
    v42 = *(v41 + 16);
  }

  else
  {
    v43 = (v41 + 8);
  }

  if (*a3 - v4 >= v42)
  {
    v46 = v42;
    memcpy(v4, v43, v42);
    v4 += v46;
    return v4;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(a3, v43, v42, v4);
}

google::protobuf::internal *CoreML::Specification::ArrayFeatureType::_InternalParse(CoreML::Specification::ArrayFeatureType *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v39 = a2;
  while (1)
  {
    v7 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v39, *(a3 + 23));
    result = v39;
    if (v7)
    {
      return result;
    }

    v9 = v39 + 1;
    v10 = *v39;
    if (*v39 < 0)
    {
      v10 = v10 + (*v9 << 7) - 128;
      if (*v9 < 0)
      {
        v11 = 14;
        v12 = 2;
        while (1)
        {
          v10 += (*(v39 + v12) - 1) << v11;
          if ((*(v39 + v12) & 0x80000000) == 0)
          {
            break;
          }

          ++v12;
          v11 += 7;
          if (v12 == 5)
          {
            return 0;
          }
        }

        v9 = v39 + v12 + 1;
      }

      else
      {
        v9 = v39 + 2;
      }
    }

    v39 = v9;
    v13 = v10 >> 3;
    if (v10 >> 3 <= 0x1E)
    {
      if (v13 == 1)
      {
        if (v10 == 10)
        {
          result = google::protobuf::internal::PackedInt64Parser((this + 16), v9, a3, v6);
          goto LABEL_81;
        }

        if (v10 != 8)
        {
          goto LABEL_74;
        }

        Varint64 = google::protobuf::internal::ReadVarint64(&v39, v5);
        google::protobuf::RepeatedField<long long>::Add(this + 4, Varint64);
        if (!v39)
        {
          return 0;
        }
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 21 && v10 == 170)
          {
            if (*(this + 15) != 21)
            {
              CoreML::Specification::ArrayFeatureType::clear_ShapeFlexibility(this);
              *(this + 15) = 21;
              v18 = *(this + 1);
              v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL);
              if (v18)
              {
                v19 = *v19;
              }

              v20 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ArrayFeatureType_EnumeratedShapes>(v19);
LABEL_49:
              v22 = v20;
              *(this + 5) = v20;
LABEL_50:
              result = google::protobuf::internal::ParseContext::ParseMessage(a3, v22, v9);
              goto LABEL_81;
            }

LABEL_37:
            v22 = *(this + 5);
            goto LABEL_50;
          }

          goto LABEL_74;
        }

        if (v10 != 16)
        {
          goto LABEL_74;
        }

        v25 = (v9 + 1);
        v24 = *v9;
        if ((v24 & 0x8000000000000000) != 0)
        {
          v26 = *v25;
          v24 = v24 & 0x7F | (v26 << 7);
          if (v26 < 0)
          {
            v32 = 14;
            v33 = 2;
            while (1)
            {
              v24 += (v9[v33] - 1) << v32;
              if ((v9[v33] & 0x80000000) == 0)
              {
                break;
              }

              result = 0;
              ++v33;
              v32 += 7;
              if (v33 == 10)
              {
                return result;
              }
            }

            v25 = &v9[v33 + 1];
          }

          else
          {
            v25 = (v9 + 2);
          }
        }

        v39 = v25;
        *(this + 9) = v24;
      }
    }

    else if (v10 >> 3 > 0x32)
    {
      if (v13 == 51)
      {
        if (v10 != 157)
        {
          goto LABEL_74;
        }

        v23 = *v9;
        if (*(this + 16) != 51)
        {
          *(this + 16) = 51;
        }

        *(this + 12) = v23;
        v39 = (v9 + 4);
      }

      else
      {
        if (v13 != 61 || v10 != 233)
        {
          goto LABEL_74;
        }

        v21 = *v9;
        if (*(this + 16) != 61)
        {
          *(this + 16) = 61;
        }

        *(this + 6) = v21;
        v39 = (v9 + 8);
      }
    }

    else
    {
      if (v13 == 31)
      {
        if (v10 == 250)
        {
          if (*(this + 15) != 31)
          {
            CoreML::Specification::ArrayFeatureType::clear_ShapeFlexibility(this);
            *(this + 15) = 31;
            v27 = *(this + 1);
            v28 = (v27 & 0xFFFFFFFFFFFFFFFCLL);
            if (v27)
            {
              v28 = *v28;
            }

            v20 = google::protobuf::Arena::CreateMaybeMessage<CoreML::Specification::ArrayFeatureType_ShapeRange>(v28);
            goto LABEL_49;
          }

          goto LABEL_37;
        }

        goto LABEL_74;
      }

      if (v13 == 41 && v10 == 72)
      {
        v14 = (v9 + 1);
        v15 = *v9;
        if (*v9 < 0)
        {
          v16 = *v14;
          v17 = v15 + (v16 << 7) - 128;
          if (v16 < 0)
          {
            v29 = 14;
            for (i = 2; i != 5; ++i)
            {
              v17 += (v9[i] - 1) << v29;
              if ((v9[i] & 0x80000000) == 0)
              {
                v34 = &v9[i];
                goto LABEL_63;
              }

              v29 += 7;
            }

            v31 = 5;
            while (v9[v31] < 0)
            {
              v15 = 0;
              v14 = 0;
              if (++v31 == 10)
              {
                goto LABEL_65;
              }
            }

            v34 = &v9[v31];
LABEL_63:
            v14 = (v34 + 1);
          }

          else
          {
            v14 = (v9 + 2);
          }

          v15 = v17;
        }

LABEL_65:
        v39 = v14;
        if (*(this + 16) != 41)
        {
          *(this + 16) = 41;
        }

        *(this + 12) = v15;
        if (!v14)
        {
          return 0;
        }
      }

      else
      {
LABEL_74:
        if (v10)
        {
          v36 = (v10 & 7) == 4;
        }

        else
        {
          v36 = 1;
        }

        if (v36)
        {
          *(a3 + 20) = v10 - 1;
          return v9;
        }

        v37 = *(this + 1);
        if (v37)
        {
          v38 = ((v37 & 0xFFFFFFFFFFFFFFFCLL) + 8);
        }

        else
        {
          v38 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
        }

        v40 = v38;
        result = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v10, &v40, v9, a3);
LABEL_81:
        v39 = result;
        if (!result)
        {
          return result;
        }
      }
    }
  }
}