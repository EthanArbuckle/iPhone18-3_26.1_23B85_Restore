void sub_1BFC09980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::anonymous namespace::DescriptorPoolTypeResolver::ResolveEnumType(uint64_t a1@<X0>, std::string *a2@<X1>, uint64_t a3@<X2>, google::protobuf::util::Status *a4@<X8>)
{
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  if (v31)
  {
    google::protobuf::util::Status::Status(a4, &v31);
    goto LABEL_34;
  }

  EnumTypeByName = google::protobuf::DescriptorPool::FindEnumTypeByName(*(a1 + 32), v34);
  if (EnumTypeByName)
  {
    google::protobuf::Enum::Clear(a3);
    v8 = *(a3 + 8);
    if (v8)
    {
      v8 = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 24);
    }

    v9 = *(a3 + 64);
    if (v9 == &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstance((a3 + 64), v8, *(EnumTypeByName + 8));
    }

    else
    {
      std::string::operator=(v9, *(EnumTypeByName + 8));
    }

    v11 = *(a3 + 72);
    if (!v11)
    {
      v12 = *(a3 + 8);
      if (v12)
      {
        v12 = *((v12 & 0xFFFFFFFFFFFFFFFELL) + 24);
      }

      v11 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::SourceContext>(v12);
      *(a3 + 72) = v11;
    }

    v13 = **(EnumTypeByName + 16);
    v16 = *(v11 + 2);
    v14 = v11 + 16;
    v15 = v16;
    if (v16 == &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v14, v13);
    }

    std::string::operator=(v15, v13);
    if (*(EnumTypeByName + 44) >= 1)
    {
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v19 = *(EnumTypeByName + 48);
        v20 = *(a3 + 32);
        if (!v20)
        {
          break;
        }

        v21 = *(a3 + 24);
        v22 = *v20;
        if (v21 >= *v20)
        {
          if (v22 == *(a3 + 28))
          {
LABEL_25:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a3 + 16), v22 + 1);
            v20 = *(a3 + 32);
            v22 = *v20;
          }

          *v20 = v22 + 1;
          v23 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::EnumValue>(*(a3 + 16));
          v24 = *(a3 + 24);
          v25 = *(a3 + 32) + 8 * v24;
          *(a3 + 24) = v24 + 1;
          *(v25 + 8) = v23;
          goto LABEL_27;
        }

        *(a3 + 24) = v21 + 1;
        v23 = *&v20[2 * v21 + 2];
LABEL_27:
        v26 = *(v23 + 1);
        if (v26)
        {
          v26 = *((v26 & 0xFFFFFFFFFFFFFFFELL) + 24);
        }

        v27 = *(v23 + 5);
        if (v27 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstance(v23 + 5, v26, *(v19 + v17));
        }

        else
        {
          std::string::operator=(v27, *(v19 + v17));
        }

        *(v23 + 12) = *(v19 + v17 + 16);
        ++v18;
        v17 += 40;
        if (v18 >= *(EnumTypeByName + 44))
        {
          goto LABEL_33;
        }
      }

      v22 = *(a3 + 28);
      goto LABEL_25;
    }

LABEL_33:
    google::protobuf::util::Status::Status(a4);
  }

  else
  {
    std::operator+<char>();
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v30, &__p, v10);
    google::protobuf::util::Status::Status(a4, 5, v30[0], v30[1]);
    if (v29 < 0)
    {
      operator delete(__p);
    }
  }

LABEL_34:
  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }
}

void sub_1BFC09CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void google::protobuf::util::anonymous namespace::DescriptorPoolTypeResolver::ParseTypeUrl(std::string *__str@<X1>, uint64_t a2@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *(a2 + 31);
  if (v8 < 0)
  {
    v8 = *(a2 + 16);
  }

  std::string::basic_string(&v33, __str, 0, v8 + 1, &v30);
  if (*(a2 + 31) >= 0)
  {
    v9 = *(a2 + 31);
  }

  else
  {
    v9 = *(a2 + 16);
  }

  v10 = &v30;
  std::string::basic_string[abi:ne200100](&v30, v9 + 1);
  if ((v32 & 0x80u) != 0)
  {
    v10 = v30;
  }

  if (v9)
  {
    if (*(a2 + 31) >= 0)
    {
      v11 = (a2 + 8);
    }

    else
    {
      v11 = *(a2 + 8);
    }

    memmove(v10, v11, v9);
  }

  *&v10[v9] = 47;
  v12 = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v33.__r_.__value_.__l.__size_;
  }

  v14 = v32;
  v15 = v32;
  if ((v32 & 0x80u) != 0)
  {
    v14 = v31;
  }

  if (size != v14)
  {
    v18 = 1;
    if (v32 < 0)
    {
      goto LABEL_40;
    }

LABEL_28:
    if (v12 < 0)
    {
      goto LABEL_41;
    }

    goto LABEL_29;
  }

  if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v33;
  }

  else
  {
    v16 = v33.__r_.__value_.__r.__words[0];
  }

  if ((v32 & 0x80u) == 0)
  {
    v17 = &v30;
  }

  else
  {
    v17 = v30;
  }

  v18 = memcmp(v16, v17, size) != 0;
  if ((v15 & 0x80000000) == 0)
  {
    goto LABEL_28;
  }

LABEL_40:
  operator delete(v30);
  if ((*(&v33.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_41:
    operator delete(v33.__r_.__value_.__l.__data_);
    if (!v18)
    {
      goto LABEL_42;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v18)
  {
LABEL_42:
    v24 = *(a2 + 31);
    if (v24 < 0)
    {
      v24 = *(a2 + 16);
    }

    std::string::basic_string(&v33, __str, v24 + 1, 0xFFFFFFFFFFFFFFFFLL, &v30);
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = v33;
    google::protobuf::util::Status::Status(a4);
    goto LABEL_47;
  }

LABEL_30:
  v33.__r_.__value_.__r.__words[0] = "Invalid type URL, type URLs must be of the form '";
  v33.__r_.__value_.__l.__size_ = 49;
  v19 = *(a2 + 31);
  v20 = *(a2 + 8);
  if (v19 >= 0)
  {
    v20 = (a2 + 8);
  }

  if (v19 < 0)
  {
    v19 = *(a2 + 16);
  }

  v30 = v20;
  v31 = v19;
  v29[0] = "/<typename>', got: ";
  v29[1] = 19;
  v21 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  v22 = __str->__r_.__value_.__r.__words[0];
  if (v21 >= 0)
  {
    v22 = __str;
  }

  if (v21 < 0)
  {
    v21 = __str->__r_.__value_.__l.__size_;
  }

  v28[0] = v22;
  v28[1] = v21;
  google::protobuf::StrCat(&v33, &v30, v29, v28, &__p);
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v27, &__p, v23);
  google::protobuf::util::Status::Status(a4, 3, v27[0], v27[1]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_47:
  v25 = *MEMORY[0x1E69E9840];
}

void sub_1BFC09FB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *google::protobuf::Type::add_oneofs(uint64_t a1, std::string *__str)
{
  v4 = *(a1 + 56);
  if (!v4)
  {
    v6 = *(a1 + 52);
LABEL_6:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40), v6 + 1);
    v4 = *(a1 + 56);
    v6 = *v4;
    goto LABEL_7;
  }

  v5 = *(a1 + 48);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(a1 + 48) = v5 + 1;
    AlignedAndAddCleanup = *&v4[2 * v5 + 2];
    goto LABEL_12;
  }

  if (v6 == *(a1 + 52))
  {
    goto LABEL_6;
  }

LABEL_7:
  *v4 = v6 + 1;
  v8 = *(a1 + 40);
  if (!v8)
  {
    operator new();
  }

  if (v8[14])
  {
  }

  AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v8, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
  AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
  AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
  AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56) + 8 * v9;
  *(a1 + 48) = v9 + 1;
  *(v10 + 8) = AlignedAndAddCleanup;
LABEL_12:

  return std::string::operator=(AlignedAndAddCleanup, __str);
}

void google::protobuf::util::anonymous namespace::DescriptorPoolTypeResolver::ConvertOptionsInternal(const google::protobuf::Message *a1, uint64_t a2)
{
  (*(*a1 + 168))(a1);
  v5 = v4;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  google::protobuf::Reflection::ListFields(v4, a1, &v26);
  v9 = v26;
  v10 = v27;
  if (v26 == v27)
  {
    goto LABEL_24;
  }

  do
  {
    v11 = *v9;
    if (*(*v9 + 15) != 3)
    {
      v20 = *(a2 + 16);
      if (v20)
      {
        v21 = *(a2 + 8);
        v22 = *v20;
        if (v21 < *v20)
        {
          *(a2 + 8) = v21 + 1;
          v23 = *&v20[2 * v21 + 2];
LABEL_21:
          goto LABEL_22;
        }

        if (v22 != *(a2 + 12))
        {
LABEL_20:
          *v20 = v22 + 1;
          v23 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::Option>(*a2);
          v24 = *(a2 + 8);
          v25 = *(a2 + 16) + 8 * v24;
          *(a2 + 8) = v24 + 1;
          *(v25 + 8) = v23;
          goto LABEL_21;
        }
      }

      else
      {
        v22 = *(a2 + 12);
      }

      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2, v22 + 1);
      v20 = *(a2 + 16);
      v22 = *v20;
      goto LABEL_20;
    }

    v12 = google::protobuf::Reflection::FieldSize(v5, a1, *v9, v6, v7);
    if (v12 >= 1)
    {
      v13 = 0;
      while (1)
      {
        v14 = *(a2 + 16);
        if (!v14)
        {
          break;
        }

        v15 = *(a2 + 8);
        v16 = *v14;
        if (v15 >= *v14)
        {
          if (v16 == *(a2 + 12))
          {
LABEL_10:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a2, v16 + 1);
            v14 = *(a2 + 16);
            v16 = *v14;
          }

          *v14 = v16 + 1;
          v17 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::Option>(*a2);
          v18 = *(a2 + 8);
          v19 = *(a2 + 16) + 8 * v18;
          *(a2 + 8) = v18 + 1;
          *(v19 + 8) = v17;
          goto LABEL_12;
        }

        *(a2 + 8) = v15 + 1;
        v17 = *&v14[2 * v15 + 2];
LABEL_12:
        v13 = (v13 + 1);
        if (v12 == v13)
        {
          goto LABEL_22;
        }
      }

      v16 = *(a2 + 12);
      goto LABEL_10;
    }

LABEL_22:
    ++v9;
  }

  while (v9 != v10);
  v9 = v26;
LABEL_24:
  if (v9)
  {
    v27 = v9;
    operator delete(v9);
  }
}

void sub_1BFC0A334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::anonymous namespace::DescriptorPoolTypeResolver::ConvertOptionField(const std::string::value_type ***this, const google::protobuf::Reflection *a2, const google::protobuf::Message *a3, const google::protobuf::FieldDescriptor *a4, uint64_t a5, google::protobuf::Option *a6)
{
  v7 = a4;
  v11 = 8;
  if (!*(a3 + 66))
  {
    v11 = 0;
  }

  v12 = *(a3 + v11);
  v13 = *(a5 + 8);
  if (v13)
  {
    v13 = *((v13 & 0xFFFFFFFFFFFFFFFELL) + 24);
  }

  v14 = *(a5 + 16);
  if (v14 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstance((a5 + 16), v13, v12);
  }

  else
  {
    std::string::operator=(v14, v12);
  }

  v17 = *(a5 + 24);
  if (!v17)
  {
    v18 = *(a5 + 8);
    if (v18)
    {
      v18 = *((v18 & 0xFFFFFFFFFFFFFFFELL) + 24);
    }

    v17 = google::protobuf::Arena::CreateMaybeMessage<google::protobuf::Any>(v18);
    *(a5 + 24) = v17;
  }

  v19 = *(a3 + 6);
  if (v19)
  {
    v49 = a3;
    v50 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v19, memory_order_acquire) != -1)
    {
      v45 = &v50;
      v46 = &v49;
      v44.__r_.__value_.__r.__words[0] = &v45;
      std::__call_once(v19, &v44, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  v20 = google::protobuf::FieldDescriptor::kTypeToCppTypeMap[*(a3 + 14)];
  if (v20 <= 5)
  {
    if (v20 > 2)
    {
      if (v20 == 3)
      {
        if (*(a3 + 15) == 3)
        {
          RepeatedUInt32 = google::protobuf::Reflection::GetRepeatedUInt32(this, a2, a3, v7, v16);
        }

        else
        {
          RepeatedUInt32 = google::protobuf::Reflection::GetUInt32(this, a2, a3, v15, v16);
        }

        v34 = RepeatedUInt32;
        google::protobuf::UInt32Value::UInt32Value(&v45);
        LODWORD(v47[0]) = v34;
        google::protobuf::Any::PackFrom(v17, &v45);
        google::protobuf::UInt32Value::~UInt32Value(&v45);
      }

      else if (v20 == 4)
      {
        if (*(a3 + 15) == 3)
        {
          RepeatedUInt64 = google::protobuf::Reflection::GetRepeatedUInt64(this, a2, a3, v7, v16);
        }

        else
        {
          RepeatedUInt64 = google::protobuf::Reflection::GetUInt64(this, a2, a3, v15, v16);
        }

        v37 = RepeatedUInt64;
        google::protobuf::UInt64Value::UInt64Value(&v45);
        v47[0] = v37;
        google::protobuf::Any::PackFrom(v17, &v45);
        google::protobuf::UInt64Value::~UInt64Value(&v45);
      }

      else
      {
        if (*(a3 + 15) == 3)
        {
          RepeatedDouble = google::protobuf::Reflection::GetRepeatedDouble(this, a2, a3, v7, v16);
        }

        else
        {
          RepeatedDouble = google::protobuf::Reflection::GetDouble(this, a2, a3, v15, v16);
        }

        v36 = *&RepeatedDouble;
        google::protobuf::DoubleValue::DoubleValue(&v45);
        v47[0] = v36;
        google::protobuf::Any::PackFrom(v17, &v45);
        google::protobuf::DoubleValue::~DoubleValue(&v45);
      }

      return;
    }

    if (v20 != 1)
    {
      if (v20 == 2)
      {
        if (*(a3 + 15) == 3)
        {
          RepeatedInt64 = google::protobuf::Reflection::GetRepeatedInt64(this, a2, a3, v7, v16);
        }

        else
        {
          RepeatedInt64 = google::protobuf::Reflection::GetInt64(this, a2, a3, v15, v16);
        }

        v30 = RepeatedInt64;
        google::protobuf::Int64Value::Int64Value(&v45);
        v47[0] = v30;
        google::protobuf::Any::PackFrom(v17, &v45);
        google::protobuf::Int64Value::~Int64Value(&v45);
      }

      return;
    }

    if (*(a3 + 15) == 3)
    {
      RepeatedInt32 = google::protobuf::Reflection::GetRepeatedInt32(this, a2, a3, v7, v16);
    }

    else
    {
      RepeatedInt32 = google::protobuf::Reflection::GetInt32(this, a2, a3, v15, v16);
    }

    v32 = RepeatedInt32;
    google::protobuf::Int32Value::Int32Value(&v45);
    LODWORD(v47[0]) = v32;
    google::protobuf::Any::PackFrom(v17, &v45);
LABEL_58:
    google::protobuf::Int32Value::~Int32Value(&v45);
    return;
  }

  if (v20 <= 7)
  {
    if (v20 == 6)
    {
      if (*(a3 + 15) == 3)
      {
        RepeatedFloat = google::protobuf::Reflection::GetRepeatedFloat(this, a2, a3, v7, v16);
      }

      else
      {
        RepeatedFloat = google::protobuf::Reflection::GetFloat(this, a2, a3, v15, v16);
      }

      v33 = RepeatedFloat;
      google::protobuf::FloatValue::FloatValue(&v45);
      *v47 = v33;
      google::protobuf::Any::PackFrom(v17, &v45);
      google::protobuf::FloatValue::~FloatValue(&v45);
    }

    else
    {
      if (*(a3 + 15) == 3)
      {
        RepeatedBool = google::protobuf::Reflection::GetRepeatedBool(this, a2, a3, v7, v16);
      }

      else
      {
        RepeatedBool = google::protobuf::Reflection::GetBool(this, a2, a3, v15, v16);
      }

      v31 = RepeatedBool;
      google::protobuf::BoolValue::BoolValue(&v45);
      LOBYTE(v47[0]) = v31;
      google::protobuf::Any::PackFrom(v17, &v45);
      google::protobuf::BoolValue::~BoolValue(&v45);
    }

    return;
  }

  if (v20 == 8)
  {
    if (*(a3 + 15) == 3)
    {
      RepeatedEnum = google::protobuf::Reflection::GetRepeatedEnum(this, a2, a3, v7, v16);
    }

    else
    {
      RepeatedEnum = google::protobuf::Reflection::GetEnum(this, a2, a3, v15, v16);
    }

    v35 = *(RepeatedEnum + 16);
    google::protobuf::Int32Value::Int32Value(&v45);
    LODWORD(v47[0]) = v35;
    google::protobuf::Any::PackFrom(v17, &v45);
    goto LABEL_58;
  }

  if (v20 != 9)
  {
    if (v20 == 10)
    {
      if (*(a3 + 15) == 3)
      {
        RepeatedMessage = google::protobuf::Reflection::GetRepeatedMessage(this, a2, a3, v7, v16);
      }

      else
      {
        RepeatedMessage = google::protobuf::Reflection::GetMessage(this, a2, a3, 0, v16);
      }

      google::protobuf::Any::PackFrom(v17, RepeatedMessage);
    }

    return;
  }

  if (*(a3 + 15) == 3)
  {
    google::protobuf::Reflection::GetRepeatedString(this, a2, a3, v7, v16, &v44);
  }

  else
  {
    google::protobuf::Reflection::GetString(this, a2, a3, v16, &v44);
  }

  v38 = *(a3 + 6);
  if (v38)
  {
    v48 = a3;
    v49 = google::protobuf::FieldDescriptor::TypeOnceInit;
    if (atomic_load_explicit(v38, memory_order_acquire) != -1)
    {
      v45 = &v49;
      v46 = &v48;
      v50 = &v45;
      std::__call_once(v38, &v50, std::__call_once_proxy[abi:ne200100]<std::tuple<void (*&&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*&&>>);
    }
  }

  if (*(a3 + 14) == 9)
  {
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__str, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
    }

    else
    {
      __str = v44;
    }

    google::protobuf::StringValue::StringValue(&v45);
    v39 = v46;
    if (v46)
    {
      v39 = *((v46 & 0xFFFFFFFFFFFFFFFELL) + 24);
    }

    if (v47[0] == &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstance(v47, v39, &__str);
    }

    else
    {
      std::string::operator=(v47[0], &__str);
    }

    google::protobuf::Any::PackFrom(v17, &v45);
    google::protobuf::StringValue::~StringValue(&v45);
    if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_91;
    }

    v41 = __str.__r_.__value_.__r.__words[0];
  }

  else
  {
    if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v44;
    }

    google::protobuf::BytesValue::BytesValue(&v45);
    v40 = v46;
    if (v46)
    {
      v40 = *((v46 & 0xFFFFFFFFFFFFFFFELL) + 24);
    }

    if (v47[0] == &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstance(v47, v40, &__p);
    }

    else
    {
      std::string::operator=(v47[0], &__p);
    }

    google::protobuf::Any::PackFrom(v17, &v45);
    google::protobuf::BytesValue::~BytesValue(&v45);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_91;
    }

    v41 = __p.__r_.__value_.__r.__words[0];
  }

  operator delete(v41);
LABEL_91:
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }
}

void sub_1BFC0A970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::BinaryToJsonStream(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, google::protobuf::io::ZeroCopyOutputStream *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  v17[1] = 0;
  v17[2] = a3;
  v18[0] = 0;
  *(v18 + 6) = 0;
  v18[2] = 0x7FFFFFFFLL;
  v19 = 0x7FFFFFFF;
  v20 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v21 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
  v22 = 0;
  v23 = 0;
  google::protobuf::io::CodedInputStream::Refresh(v17);
  google::protobuf::Type::Type(v16);
  (*(*a1 + 16))(a1, a2, v16);
  if (!*a6)
  {
    if (*(a6 + 31) < 0)
    {
      operator delete(*(a6 + 8));
    }

    google::protobuf::util::converter::ProtoStreamObjectSource::ProtoStreamObjectSource(v14, v17, a1, v16);
    v15 = *(a5 + 2);
    google::protobuf::io::CodedOutputStream::CodedOutputStream(v25, a4, 1);
    if (*a5)
    {
      v11 = " ";
    }

    else
    {
      v11 = "";
    }

    google::protobuf::StringPiece::StringPiece(v24, v11);
    google::protobuf::util::converter::JsonObjectWriter::JsonObjectWriter(&v13, v24[0], v24[1]);
  }

  google::protobuf::Type::~Type(v16);
  google::protobuf::io::CodedInputStream::~CodedInputStream(v17);
  v12 = *MEMORY[0x1E69E9840];
}

void sub_1BFC0ACAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50)
{
  google::protobuf::util::converter::DefaultValueObjectWriter::~DefaultValueObjectWriter(&a50);
  google::protobuf::util::converter::JsonObjectWriter::~JsonObjectWriter(&a9);
  google::protobuf::io::CodedOutputStream::~CodedOutputStream((v50 - 136));
  google::protobuf::util::converter::ProtoStreamObjectSource::~ProtoStreamObjectSource(&a19);
  google::protobuf::Type::~Type(&a26);
  google::protobuf::io::CodedInputStream::~CodedInputStream(&a40);
  _Unwind_Resume(a1);
}

void google::protobuf::util::BinaryToJsonString(uint64_t a1@<X0>, uint64_t a2@<X1>, const void **a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 2);
  }

  google::protobuf::io::ArrayInputStream::ArrayInputStream(v15, v12, v13, -1);
  google::protobuf::io::StringOutputStream::StringOutputStream(v14, a4);
  google::protobuf::util::BinaryToJsonStream(a1, a2, v15, v14, a5, a6);
}

uint64_t google::protobuf::util::MessageToJsonString@<X0>(google::protobuf::util::_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = (*(*a1 + 168))(a1);
  v9 = *(*(v8 + 2) + 16);
  v10 = google::protobuf::DescriptorPool::generated_pool(v8);
  if (v9 != v10)
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "type.googleapis.com");
    google::protobuf::util::NewTypeResolverForDescriptorPool();
  }

  google::protobuf::MessageLite::SerializeAsString(a1, v15);
  google::protobuf::util::BinaryToJsonString(GeneratedTypeResolver, &__p, v15, a2, a3, a4);
  if (v16 < 0)
  {
    operator delete(v15[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = google::protobuf::DescriptorPool::generated_pool(v12);
  if (v9 != result && GeneratedTypeResolver != 0)
  {
    return (*(*GeneratedTypeResolver + 8))(GeneratedTypeResolver);
  }

  return result;
}

void sub_1BFC0AEFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::anonymous namespace::GetGeneratedTypeResolver(google::protobuf::util::_anonymous_namespace_ *this)
{
  {
    v5[1] = v1;
    v5[2] = v2;
    v4 = v5;
  }
}

void google::protobuf::util::anonymous namespace::GetTypeUrl(google::protobuf::util::_anonymous_namespace_ *this@<X0>, std::string *a2@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v13, "type.googleapis.com");
  v5 = std::string::append(&v13, "/");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = (*(*this + 168))(this);
  v8 = *(v7 + 8);
  v9 = *(v8 + 23);
  if (v9 >= 0)
  {
    v10 = *(v7 + 8);
  }

  else
  {
    v10 = *v8;
  }

  if (v9 >= 0)
  {
    v11 = *(v8 + 23);
  }

  else
  {
    v11 = *(v8 + 8);
  }

  v12 = std::string::append(&v14, v10, v11);
  *a2 = *v12;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_1BFC0B0A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::StringPiece *google::protobuf::StringPiece::StringPiece(google::protobuf::StringPiece *this, const char *__s)
{
  *this = __s;
  *(this + 1) = 0;
  if (__s)
  {
    v3 = strlen(__s);
    v5 = v3;
    if ((v3 & 0x8000000000000000) != 0)
    {
      google::protobuf::StringPiece::LogFatalSizeTooBig(v3, "size_t to int conversion", v4);
    }

    *(this + 1) = v5;
  }

  return this;
}

void google::protobuf::util::converter::JsonObjectWriter::JsonObjectWriter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a3;
  *(a1 + 8) = 1;
  *a1 = &unk_1F3F0FC88;
  operator new();
}

void sub_1BFC0B1F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v3)
  {
    google::protobuf::util::converter::JsonObjectWriter::JsonObjectWriter(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **google::protobuf::StringPiece::operator std::string@<X0>(const void **result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v4 = result[1];
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::basic_string<char32_t>::__throw_length_error[abi:ne200100]();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    *(a2 + 23) = v4;
    if (v4)
    {
      result = memmove(a2, v3, v4);
    }

    *(a2 + v4) = 0;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  return result;
}

void google::protobuf::util::converter::JsonObjectWriter::Element::~Element(google::protobuf::util::converter::JsonObjectWriter::Element *this)
{
  v2 = *(this + 1);
  *this = &unk_1F3F0FA38;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_1F3F0FA38;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1C68D4E80);
}

void google::protobuf::util::converter::StructuredObjectWriter::BaseElement::~BaseElement(google::protobuf::util::converter::StructuredObjectWriter::BaseElement *this)
{
  v2 = *(this + 1);
  *this = &unk_1F3F0FA38;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

{
  v2 = *(this + 1);
  *this = &unk_1F3F0FA38;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  JUMPOUT(0x1C68D4E80);
}

unsigned __int8 *google::protobuf::util::converter::JsonObjectWriter::ByteSinkWrapper::Append(google::protobuf::util::converter::JsonObjectWriter::ByteSinkWrapper *this, char *a2, int a3)
{
  v3 = *(this + 1);
  v4 = *(v3 + 64);
  if (*v3 - v4 < a3)
  {
    result = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(*(this + 1), a2, a3, *(v3 + 64));
  }

  else
  {
    v5 = a3;
    memcpy(*(v3 + 64), a2, a3);
    result = (v4 + v5);
  }

  *(v3 + 64) = result;
  return result;
}

void google::protobuf::util::anonymous namespace::InitGeneratedTypeResolver(google::protobuf::util::_anonymous_namespace_ *this)
{
  v1 = std::string::basic_string[abi:ne200100]<0>(&__p, "type.googleapis.com");
  google::protobuf::DescriptorPool::generated_pool(v1);
  google::protobuf::util::NewTypeResolverForDescriptorPool();
}

void sub_1BFC0B5A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::anonymous namespace::DeleteGeneratedTypeResolver(google::protobuf::util::_anonymous_namespace_ *this)
{
  {
  }

  return result;
}

uint64_t google::protobuf::util::converter::GetBoolOptionOrDefault(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  OptionOrNull = google::protobuf::util::converter::FindOptionOrNull(a1, a2);
  if (!OptionOrNull)
  {
    return a3;
  }

  if (*(OptionOrNull + 24))
  {
    v6 = *(OptionOrNull + 24);
  }

  else
  {
    v6 = &google::protobuf::_Any_default_instance_;
  }

  return google::protobuf::util::converter::GetBoolFromAny(v6, v5);
}

uint64_t google::protobuf::util::converter::FindOptionOrNull(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::Option>::TypeHandler>(a1, v4);
    v6 = *(v5 + 16);
    v7 = *(v6 + 23);
    if (v7 >= 0)
    {
      v8 = *(v6 + 23);
    }

    else
    {
      v8 = *(v6 + 8);
    }

    v9 = *(a2 + 23);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = a2[1];
    }

    if (v8 == v9)
    {
      v11 = v5;
      v12 = v7 >= 0 ? *(v5 + 16) : *v6;
      v13 = *a2;
      v14 = v10 >= 0 ? a2 : *a2;
      if (!memcmp(v12, v14, v8))
      {
        break;
      }
    }

    if (++v4 >= *(a1 + 8))
    {
      return 0;
    }
  }

  return v11;
}

uint64_t google::protobuf::util::converter::GetBoolFromAny(google::protobuf::util::converter *this, const google::protobuf::Any *a2)
{
  google::protobuf::BoolValue::BoolValue(v5);
  google::protobuf::MessageLite::ParseFromString(v5, *(this + 3));
  v3 = v5[16];
  google::protobuf::BoolValue::~BoolValue(v5);
  return v3;
}

void sub_1BFC0B760(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  google::protobuf::BoolValue::~BoolValue(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::StringPiece::operator[](void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    google::protobuf::StringPiece::operator[]();
  }

  if (a1[1] <= a2)
  {
    google::protobuf::StringPiece::operator[]();
  }

  return *(*a1 + a2);
}

uint64_t google::protobuf::util::converter::FindFieldInTypeOrNull(uint64_t a1, void *a2, void *a3)
{
  if (!a1 || *(a1 + 24) < 1)
  {
    return 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::Field>::TypeHandler>(a1 + 16, v6);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(__s1, *(v7 + 40), v8);
    if (__s1[1] == a3)
    {
      v9 = __s1[0] == a2 || a3 <= 0;
      if (v9 || !memcmp(__s1[0], a2, a3))
      {
        break;
      }
    }

    if (++v6 >= *(a1 + 24))
    {
      return 0;
    }
  }

  return v7;
}

void google::protobuf::util::converter::EnumValueNameToLowerCamelCase(const void *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>)
{
  v10[0] = a1;
  v10[1] = a2;
  v4 = __p;
  google::protobuf::StringPiece::operator std::string(v10, __p);
  if ((v9 & 0x80u) == 0)
  {
    v6 = (__p + v9);
  }

  else
  {
    v6 = (__p[0] + __p[1]);
  }

  if ((v9 & 0x80u) != 0)
  {
    v4 = __p[0];
  }

  while (v4 != v6)
  {
    *v4 = __tolower(*v4);
    v4 = (v4 + 1);
  }

  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v7, __p, v5);
  google::protobuf::util::converter::ToCamelCase(v7[0], v7[1], a3);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1BFC0B900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::ToCamelCase(uint64_t a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a1;
  v20 = a2;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::string::reserve(a3, a2);
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = 1;
    v8 = 1;
    while (1)
    {
      v9 = google::protobuf::StringPiece::operator[](&v19, v5) - 65;
      if (google::protobuf::StringPiece::operator[](&v19, v5) == 95)
      {
        v10 = *(a3 + 23);
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(a3 + 8);
        }

        v7 &= v10 == 0;
        v6 = 1;
        goto LABEL_33;
      }

      if (v7)
      {
        v11 = *(a3 + 23);
        if ((v11 & 0x80u) != 0)
        {
          v11 = *(a3 + 8);
        }

        if (v11)
        {
          v12 = v9 > 0x19u;
        }

        else
        {
          v12 = 1;
        }

        if (v12 || v8 && (v5 + 1 >= v20 || google::protobuf::StringPiece::operator[](&v19, v5 + 1) - 97 > 0x19))
        {
          v13 = google::protobuf::StringPiece::operator[](&v19, v5);
          if ((v13 - 65) >= 0x1A)
          {
            v14 = v13;
          }

          else
          {
            v14 = v13 + 32;
          }

          std::string::push_back(a3, v14);
          v7 = 1;
          goto LABEL_33;
        }

        v18 = google::protobuf::StringPiece::operator[](&v19, v5);
        std::string::push_back(a3, v18);
        goto LABEL_32;
      }

      if ((v6 & 1) == 0)
      {
        break;
      }

      if (google::protobuf::StringPiece::operator[](&v19, v5) - 97 <= 0x19)
      {
        v15 = google::protobuf::StringPiece::operator[](&v19, v5);
        v16 = v15 - 97;
        v17 = v15 - 32;
        goto LABEL_27;
      }

      LOBYTE(v15) = google::protobuf::StringPiece::operator[](&v19, v5);
LABEL_31:
      std::string::push_back(a3, v15);
      v6 = 0;
LABEL_32:
      v7 = 0;
LABEL_33:
      ++v5;
      v8 = v9 < 0x1A;
      if (v5 >= v20)
      {
        return;
      }
    }

    v15 = google::protobuf::StringPiece::operator[](&v19, v5);
    v16 = v15 - 65;
    v17 = v15 + 32;
LABEL_27:
    if (v16 < 0x1A)
    {
      LOBYTE(v15) = v17;
    }

    goto LABEL_31;
  }
}

void sub_1BFC0BB04(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::IsMap(google::protobuf::util::converter *this, const google::protobuf::Field *a2, const google::protobuf::Type *a3)
{
  if (*(this + 19) != 3)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(v8, "map_entry");
  if (google::protobuf::util::converter::GetBoolOptionOrDefault(a2 + 64, v8, 0))
  {
    BoolOptionOrDefault = 1;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "google.protobuf.MessageOptions.map_entry");
    BoolOptionOrDefault = google::protobuf::util::converter::GetBoolOptionOrDefault(a2 + 64, __p, 0);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v9 < 0)
  {
    operator delete(v8[0]);
  }

  return BoolOptionOrDefault;
}

void sub_1BFC0BBD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *google::protobuf::util::converter::DoubleAsString@<X0>(double a1@<D0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == INFINITY)
  {
    v4 = "Infinity";
    return std::string::basic_string[abi:ne200100]<0>(a3, v4);
  }

  if (a1 == -INFINITY)
  {
    v4 = "-Infinity";
    return std::string::basic_string[abi:ne200100]<0>(a3, v4);
  }

  return google::protobuf::SimpleDtoa(a1, a2, a3);
}

_BYTE *google::protobuf::util::converter::FloatAsString@<X0>(float a1@<S0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    return google::protobuf::SimpleFtoa(a1, a2, a3);
  }

  else
  {
    return google::protobuf::util::converter::DoubleAsString(a1, a2, a3);
  }
}

uint64_t google::protobuf::util::converter::SafeStrToFloat(const void *a1, const void *a2, float *a3)
{
  v9 = 0.0;
  v12[0] = a1;
  v12[1] = a2;
  google::protobuf::StringPiece::operator std::string(v12, __p);
  if (v11 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = google::protobuf::safe_strtod(v5, &v9, v4);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  result = 0;
  if (v6 && (*&v9 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && fabs(v9) <= 3.40282347e38)
  {
    v8 = v9;
    *a3 = v8;
    return 1;
  }

  return result;
}

void sub_1BFC0BD2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::Field>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1BFC0BE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::EnumValue>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1BFC0BEE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::Option>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1BFC0BFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::util::converter::anonymous namespace::TypeInfoForTypeResolver::~TypeInfoForTypeResolver(google::protobuf::util::converter::_anonymous_namespace_::TypeInfoForTypeResolver *this)
{
  *this = &unk_1F3F0FAA8;
  v2 = this + 40;
  v3 = *(this + 5);
  v4 = this + 48;
  if (v3 != this + 48)
  {
    do
    {
      if (!*(v3 + 12))
      {
        v5 = *(v3 + 10);
        if (v5)
        {
          (*(*v5 + 8))(v5);
        }
      }

      v6 = *(v3 + 1);
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
          v7 = *(v3 + 2);
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  v9 = *(this + 8);
  if (v9 != (this + 72))
  {
    do
    {
      if (!*(v9 + 12))
      {
        v10 = *(v9 + 10);
        if (v10)
        {
          (*(*v10 + 8))(v10);
        }
      }

      v11 = *(v9 + 1);
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = *(v9 + 2);
          v8 = *v12 == v9;
          v9 = v12;
        }

        while (!v8);
      }

      v9 = v12;
    }

    while (v12 != (this + 72));
  }

  std::__tree<std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>,std::__map_value_compare<google::protobuf::Type const*,std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>,std::less<google::protobuf::Type const*>,true>,std::allocator<std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>>>::destroy(this + 88, *(this + 12));
  std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Enum const*>>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Enum const*>>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Enum const*>>>>::destroy(this + 64, *(this + 9));
  std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Enum const*>>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Enum const*>>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Enum const*>>>>::destroy(v2, *(this + 6));
  std::__tree<std::string>::destroy(this + 16, *(this + 3));
}

{

  JUMPOUT(0x1C68D4E80);
}

google::protobuf::util::Status *google::protobuf::util::converter::anonymous namespace::TypeInfoForTypeResolver::ResolveTypeUrl@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, const void *a3@<X2>, google::protobuf::util::Status *a4@<X8>)
{
  v11[0] = a2;
  v11[1] = a3;
  v6 = std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>>>::find<google::protobuf::StringPiece>(a1 + 40, v11);
  if (a1 + 48 == v6)
  {
    google::protobuf::StringPiece::operator std::string(v11, &__p);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(a1 + 16, &__p);
    if (v10 < 0)
    {
      operator delete(__p);
    }

    operator new();
  }

  v7 = v6;
  result = google::protobuf::util::Status::Status(a4, (v6 + 48));
  *(a4 + 4) = *(v7 + 80);
  return result;
}

void sub_1BFC0C3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::anonymous namespace::TypeInfoForTypeResolver::GetTypeByTypeUrl(uint64_t a1)
{
  (*(*a1 + 16))(v4);
  v1 = v4[0];
  v2 = v6;
  if (v5 < 0)
  {
    operator delete(v4[1]);
  }

  if (v1)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t google::protobuf::util::converter::anonymous namespace::TypeInfoForTypeResolver::GetEnumByTypeUrl(uint64_t a1, const void *a2, const void *a3)
{
  v9[0] = a2;
  v9[1] = a3;
  v4 = std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>>>::find<google::protobuf::StringPiece>(a1 + 64, v9);
  if (a1 + 72 == v4)
  {
    google::protobuf::StringPiece::operator std::string(v9, &__p);
    std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string>(a1 + 16, &__p);
    if (v8 < 0)
    {
      operator delete(__p);
    }

    operator new();
  }

  if (*(v4 + 48))
  {
    return 0;
  }

  else
  {
    return *(v4 + 80);
  }
}

void sub_1BFC0C690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, int a14, __int16 a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (v29)
  {
    (*(*v29 + 8))(v29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::anonymous namespace::TypeInfoForTypeResolver::FindField(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v37 = a3;
  v38 = a4;
  v36 = a2;
  v7 = *(a1 + 96);
  v5 = a1 + 96;
  v6 = v7;
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = v5;
  do
  {
    v9 = *(v6 + 32);
    v10 = v9 >= a2;
    v11 = v9 < a2;
    if (v10)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * v11);
  }

  while (v6);
  if (v8 != v5 && *(v8 + 32) <= a2)
  {
    v12 = (v8 + 40);
  }

  else
  {
LABEL_9:
    *&v40[0] = &v36;
    v12 = std::__tree<std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>,std::__map_value_compare<google::protobuf::Type const*,std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>,std::less<google::protobuf::Type const*>,true>,std::allocator<std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>>>::__emplace_unique_key_args<google::protobuf::Type const*,std::piecewise_construct_t const&,std::tuple<google::protobuf::Type const* const&>,std::tuple<>>(v5 - 8, &v36) + 5;
    if (*(a2 + 24) >= 1)
    {
      v13 = 0;
      do
      {
        v14 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::Field>::TypeHandler>(a2 + 16, v13);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(__s2, *(v14 + 40), v15);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v41, *(v14 + 56), v16);
        v40[0] = v41;
        v40[1] = *__s2;
        v17 = std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>>>::__emplace_unique_key_args<google::protobuf::StringPiece,std::pair<google::protobuf::StringPiece const,google::protobuf::StringPiece> const&>(v12, v40);
        if ((v18 & 1) == 0)
        {
          v19 = v17;
          v20 = *(v17 + 56);
          if (v20 != __s2[1] || ((v21 = *(v17 + 48), v20 >= 1) ? (v22 = v21 == __s2[0]) : (v22 = 1), !v22 && memcmp(v21, __s2[0], v20)))
          {
            google::protobuf::internal::LogMessage::LogMessage(v40, 1, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/util/internal/type_info.cc", 152);
            v23 = google::protobuf::internal::LogMessage::operator<<(v40, "Field '");
            v24 = google::protobuf::internal::LogMessage::operator<<(v23, __s2);
            v25 = google::protobuf::internal::LogMessage::operator<<(v24, "' and '");
            v26 = google::protobuf::internal::LogMessage::operator<<(v25, v19 + 48);
            v27 = google::protobuf::internal::LogMessage::operator<<(v26, "' map to the same camel case name '");
            v28 = google::protobuf::internal::LogMessage::operator<<(v27, &v41);
            v29 = google::protobuf::internal::LogMessage::operator<<(v28, "'.");
            google::protobuf::internal::LogFinisher::operator=(&v39, v29);
            google::protobuf::internal::LogMessage::~LogMessage(v40);
          }
        }

        ++v13;
      }

      while (v13 < *(a2 + 24));
    }
  }

  v30 = std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>>>::find<google::protobuf::StringPiece>(v12, &v37);
  if (v12 + 1 == v30)
  {
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v31 = *(v30 + 48);
    v32 = *(v30 + 56);
  }

  if (v32)
  {
    v33 = v32;
  }

  else
  {
    v33 = v38;
  }

  if (v32)
  {
    v34 = v31;
  }

  else
  {
    v34 = v37;
  }

  return google::protobuf::util::converter::FindFieldInTypeOrNull(v36, v34, v33);
}

void sub_1BFC0C944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>,std::__map_value_compare<google::protobuf::Type const*,std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>,std::less<google::protobuf::Type const*>,true>,std::allocator<std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>,std::__map_value_compare<google::protobuf::Type const*,std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>,std::less<google::protobuf::Type const*>,true>,std::allocator<std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>,std::__map_value_compare<google::protobuf::Type const*,std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>,std::less<google::protobuf::Type const*>,true>,std::allocator<std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Enum const*>>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Enum const*>>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Enum const*>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Enum const*>>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Enum const*>>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Enum const*>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Enum const*>>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Enum const*>>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Enum const*>>>>::destroy(a1, *(a2 + 1));
    if (a2[79] < 0)
    {
      operator delete(*(a2 + 7));
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>>>::find<google::protobuf::StringPiece>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v6 = a1 + 8;
  do
  {
    v7 = std::less<google::protobuf::StringPiece>::operator()[abi:ne200100](a1, v3 + 32, a2);
    if (v7)
    {
      v8 = 8;
    }

    else
    {
      v8 = 0;
    }

    if (!v7)
    {
      v6 = v3;
    }

    v3 = *(v3 + v8);
  }

  while (v3);
  if (v6 == v2 || std::less<google::protobuf::StringPiece>::operator()[abi:ne200100](a1, a2, v6 + 32))
  {
    return v2;
  }

  return v6;
}

BOOL std::less<google::protobuf::StringPiece>::operator()[abi:ne200100](uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *a3;
  v6 = *(a3 + 8);
  if (v4 >= v6)
  {
    v7 = *(a3 + 8);
  }

  else
  {
    v7 = v4;
  }

  v8 = memcmp(v3, v5, v7);
  if (v8 < 0)
  {
    return 1;
  }

  return v4 < v6 && v8 == 0;
}

uint64_t google::protobuf::util::StatusOr<google::protobuf::Type const*>::StatusOr(uint64_t a1, void *a2)
{
  google::protobuf::util::Status::Status(a1);
  if (*a2)
  {
    google::protobuf::util::Status::operator=(a1, &google::protobuf::util::Status::OK);
    *(a1 + 32) = *a2;
  }

  else
  {
    google::protobuf::util::Status::Status(&v5, 13, "nullptr is not a vaild argument.", 32);
    google::protobuf::util::Status::operator=(a1, &v5);
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1BFC0CB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::StatusOr<google::protobuf::Type const*>::StatusOr(uint64_t a1, _DWORD *a2)
{
  google::protobuf::util::Status::Status(a1);
  if (*a2)
  {
    google::protobuf::util::Status::operator=(a1, a2);
  }

  else
  {
    google::protobuf::util::Status::Status(&v5, 13, "Status::OK is not a valid argument.", 35);
    google::protobuf::util::Status::operator=(a1, &v5);
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1BFC0CC3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>>>::__emplace_unique_key_args<google::protobuf::StringPiece,std::piecewise_construct_t const&,std::tuple<google::protobuf::StringPiece&&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  result = *std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>>>::__find_equal<google::protobuf::StringPiece>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<google::protobuf::StringPiece&&>,std::tuple<>>();
  }

  return result;
}

void *std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>>>::__find_equal<google::protobuf::StringPiece>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!std::less<google::protobuf::StringPiece>::operator()[abi:ne200100](a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!std::less<google::protobuf::StringPiece>::operator()[abi:ne200100](a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

void sub_1BFC0CE30(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t google::protobuf::util::StatusOr<google::protobuf::Enum const*>::StatusOr(uint64_t a1, void *a2)
{
  google::protobuf::util::Status::Status(a1);
  if (*a2)
  {
    google::protobuf::util::Status::operator=(a1, &google::protobuf::util::Status::OK);
    *(a1 + 32) = *a2;
  }

  else
  {
    google::protobuf::util::Status::Status(&v5, 13, "nullptr is not a vaild argument.", 32);
    google::protobuf::util::Status::operator=(a1, &v5);
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1BFC0CF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::StatusOr<google::protobuf::Enum const*>::StatusOr(uint64_t a1, _DWORD *a2)
{
  google::protobuf::util::Status::Status(a1);
  if (*a2)
  {
    google::protobuf::util::Status::operator=(a1, a2);
  }

  else
  {
    google::protobuf::util::Status::Status(&v5, 13, "Status::OK is not a valid argument.", 35);
    google::protobuf::util::Status::operator=(a1, &v5);
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1BFC0CFF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::StringPiece>>>::__emplace_unique_key_args<google::protobuf::StringPiece,std::pair<google::protobuf::StringPiece const,google::protobuf::StringPiece> const&>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::__map_value_compare<google::protobuf::StringPiece,std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>,std::less<google::protobuf::StringPiece>,true>,std::allocator<std::__value_type<google::protobuf::StringPiece,google::protobuf::util::StatusOr<google::protobuf::Type const*>>>>::__find_equal<google::protobuf::StringPiece>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>,std::__map_value_compare<google::protobuf::Type const*,std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>,std::less<google::protobuf::Type const*>,true>,std::allocator<std::__value_type<google::protobuf::Type const*,std::map<google::protobuf::StringPiece,google::protobuf::StringPiece>>>>::__emplace_unique_key_args<google::protobuf::Type const*,std::piecewise_construct_t const&,std::tuple<google::protobuf::Type const* const&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1BFC0D25C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void std::vector<BOOL>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      v2 = ((a2 - 1) >> 6) + 1;
    }

    else
    {
      v2 = 0;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v2);
  }

  std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4)
  {
    if ((64 - v4) >= a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = (64 - v4);
    }

    *v5++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v4 - v6)) & (-1 << v4));
    v2 = a2 - v6;
    *a1 = v5;
  }

  v7 = v2 >> 6;
  if (v2 >= 0x40)
  {
    bzero(v5, 8 * v7);
  }

  if ((v2 & 0x3F) != 0)
  {
    v8 = &v5[v7];
    *a1 = v8;
    *v8 &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v2 & 0x3F));
  }
}

BOOL std::operator!=[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 1;
    }

    return memcmp(a1, __s, v4) != 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::basic_string<char32_t>::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) != 0;
  }

  return 1;
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::basic_string<char32_t>::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

uint64_t std::__function::__func<std::string (*)(google::protobuf::StringPiece),std::allocator<std::string (*)(google::protobuf::StringPiece)>,std::string ()(google::protobuf::StringPiece)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F3F0FB68;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::string (*)(google::protobuf::StringPiece),std::allocator<std::string (*)(google::protobuf::StringPiece)>,std::string ()(google::protobuf::StringPiece)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::__function::__value_func<std::string ()(google::protobuf::StringPiece)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E80FB7E0, MEMORY[0x1E69E5280]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B8] + 16);
  return result;
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void google::protobuf::util::converter::ProtoStreamObjectSource::ProtoStreamObjectSource(void *a1, uint64_t a2)
{
  *a1 = &unk_1F3F0FC18;
  a1[1] = a2;
  google::protobuf::util::converter::TypeInfo::NewTypeInfo();
}

void sub_1BFC0DB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::util::converter::ProtoStreamObjectSource::~ProtoStreamObjectSource(google::protobuf::util::converter::ProtoStreamObjectSource *this)
{
  *this = &unk_1F3F0FC18;
  if (*(this + 24) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      (*(*v1 + 8))(v1);
    }
  }
}

{
  *this = &unk_1F3F0FC18;
  if (*(this + 24) == 1)
  {
    v1 = *(this + 2);
    if (v1)
    {
      (*(*v1 + 8))(v1);
    }
  }

  JUMPOUT(0x1C68D4E80);
}

uint64_t google::protobuf::util::converter::ProtoStreamObjectSource::FindAndVerifyField(google::protobuf::util::converter::ProtoStreamObjectSource *this, const google::protobuf::Type *a2, unsigned int a3)
{
  v3 = a3;
  if (result)
  {
    v5 = *(result + 72);
    if ((v3 & 7) != google::protobuf::internal::WireFormatLite::kWireTypeForFieldType[v5] && ((v5 - 13) >= 0xFFFFFFFC || (v3 & 7) != 2 || *(result + 76) != 3))
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::util::converter::anonymous namespace::FindFieldByNumber(google::protobuf::util::converter::_anonymous_namespace_ *this, const google::protobuf::Type *a2)
{
  if (*(this + 6) < 1)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  while (*(google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::Field>::TypeHandler>(this + 16, v4) + 80) != v2)
  {
    if (++v4 >= *(this + 6))
    {
      return 0;
    }
  }

  return google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::Field>::TypeHandler>(this + 16, v4);
}

void google::protobuf::util::converter::ProtoStreamObjectSource::WriteMessage(_BYTE *a1@<X0>, const google::protobuf::Type *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  TypeRenderer = google::protobuf::util::converter::ProtoStreamObjectSource::FindTypeRenderer(*(a2 + 11));
  if (TypeRenderer)
  {
    v19 = *TypeRenderer;

    v19(a1, a2, a3, a4, a7);
    return;
  }

  memset(&v47, 0, sizeof(v47));
  v20 = *(a1 + 1);
  v21 = *v20;
  if (*v20 >= v20[1])
  {
    LODWORD(v22) = 0;
    goto LABEL_9;
  }

  v22 = *v21;
  if (*v21 < 0)
  {
LABEL_9:
    TypeRenderer = google::protobuf::io::CodedInputStream::ReadTagFallback(*(a1 + 1), v22);
    v22 = TypeRenderer;
    goto LABEL_10;
  }

  *v20 = v21 + 1;
LABEL_10:
  *(v20 + 8) = v22;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  if (v22 != a5 || a1[55] != 1)
  {
    if (a6)
    {
      TypeRenderer = (*(*a7 + 16))(a7, a3, a4);
    }

    if (v22 != a5)
    {
      v23 = 0;
      v24 = v22 + 1;
      do
      {
        if (v22 == v24)
        {
          if (!v23)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v25 = google::protobuf::util::converter::ProtoStreamObjectSource::FindAndVerifyField(TypeRenderer, a2, v22);
          v23 = v25;
          v24 = v22;
          if (!v25)
          {
LABEL_32:
            if (a1[52])
            {
              v30 = &v44;
            }

            else
            {
              v30 = 0;
            }

            TypeRenderer = google::protobuf::internal::WireFormat::SkipField(*(a1 + 1), v22, v30, v18);
            v31 = *(a1 + 1);
            v32 = *v31;
            if (*v31 >= v31[1])
            {
              LODWORD(v22) = 0;
            }

            else
            {
              v22 = *v32;
              if ((*v32 & 0x80000000) == 0)
              {
                *v31 = v32 + 1;
LABEL_54:
                v23 = 0;
                goto LABEL_57;
              }
            }

            TypeRenderer = google::protobuf::io::CodedInputStream::ReadTagFallback(*(a1 + 1), v22);
            v22 = TypeRenderer;
            goto LABEL_54;
          }

          v26 = 56;
          if (a1[42])
          {
            v26 = 40;
          }

          std::string::operator=(&v47, *(v25 + v26));
          v24 = v22;
        }

        if (*(v23 + 76) != 3)
        {
          google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v42, &v47, v17);
          TypeRenderer = (*(*a1 + 48))(a1, v23, v42, v43, a7);
          if (*a8)
          {
            goto LABEL_62;
          }

          if (*(a8 + 31) < 0)
          {
            operator delete(*(a8 + 8));
          }

          v31 = *(a1 + 1);
          v33 = *v31;
          if (*v31 >= v31[1])
          {
            LODWORD(v22) = 0;
          }

          else
          {
            v22 = *v33;
            if ((*v33 & 0x80000000) == 0)
            {
              *v31 = v33 + 1;
LABEL_57:
              *(v31 + 8) = v22;
              continue;
            }
          }

          TypeRenderer = google::protobuf::io::CodedInputStream::ReadTagFallback(*(a1 + 1), v22);
          v22 = TypeRenderer;
          goto LABEL_57;
        }

        if (google::protobuf::util::converter::ProtoStreamObjectSource::IsMap(a1, v23, v17))
        {
          google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v42, &v47, v27);
          (*(*a7 + 16))(a7, v42, v43);
          google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v42, &v47, v28);
          google::protobuf::util::converter::ProtoStreamObjectSource::RenderMap(a1, v23, v29, v22, a7, &v38);
          if (v38)
          {
            v22 = v22;
          }

          else
          {
            v22 = v41;
          }

          google::protobuf::util::Status::Status(a8, &v38);
          if (v40 < 0)
          {
            operator delete(__p);
          }

          if (*a8)
          {
            goto LABEL_62;
          }

          TypeRenderer = (*(*a7 + 24))(a7);
        }

        else
        {
          google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v42, &v47, v27);
          (*(*a1 + 40))(v35, a1, v23, v42, v43, v22, a7);
          if (LODWORD(v35[0]))
          {
            v22 = v22;
          }

          else
          {
            v22 = v37;
          }

          TypeRenderer = google::protobuf::util::Status::Status(a8, v35);
          if (v36 < 0)
          {
            operator delete(v35[1]);
          }

          if (*a8)
          {
            goto LABEL_62;
          }
        }

        if (*(a8 + 31) < 0)
        {
          operator delete(*(a8 + 8));
        }
      }

      while (v22 != a5);
    }

    if (a6)
    {
      (*(*a7 + 24))(a7);
    }
  }

  google::protobuf::util::Status::Status(a8);
LABEL_62:
  v34 = v44;
  if (v44 != v45)
  {
    google::protobuf::UnknownFieldSet::ClearFallback(&v44);
    v34 = v44;
  }

  if (v34)
  {
    v45 = v34;
    operator delete(v34);
  }

  if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v47.__r_.__value_.__l.__data_);
  }
}

void sub_1BFC0E1F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  if (*(v27 - 81) < 0)
  {
    operator delete(*(v27 - 104));
  }

  _Unwind_Resume(exception_object);
}

const void **google::protobuf::util::converter::ProtoStreamObjectSource::FindTypeRenderer(const void **a1)
{
  if (atomic_load_explicit(&google::protobuf::util::converter::source_renderers_init_, memory_order_acquire) != -1)
  {
    v4 = &v5;
    v5 = google::protobuf::util::converter::ProtoStreamObjectSource::InitRendererMap;
    std::__call_once(&google::protobuf::util::converter::source_renderers_init_, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<void (&)(void)>>);
  }

  v2 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string> const>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string> const>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string> const>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string> const>>>::find<std::string>(google::protobuf::util::converter::ProtoStreamObjectSource::renderers_, a1);
  if (v2)
  {
    return v2 + 5;
  }

  else
  {
    return 0;
  }
}

uint64_t google::protobuf::util::converter::ProtoStreamObjectSource::IsMap(google::protobuf::util::converter::ProtoStreamObjectSource *this, uint64_t **a2, const char *a3)
{
  v4 = *(this + 2);
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v8, a2[6], a3);
  v5 = (*(*v4 + 24))(v4, v8[0], v8[1]);
  if (*(a2 + 18) == 11)
  {
    return google::protobuf::util::converter::IsMap(a2, v5, v6);
  }

  else
  {
    return 0;
  }
}

void google::protobuf::util::converter::ProtoStreamObjectSource::RenderMap(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 16);
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__str, *(a2 + 48), a3);
  v10 = (*(*v9 + 24))(v9, __str.__r_.__value_.__r.__words[0], __str.__r_.__value_.__l.__size_);
  while (1)
  {
    v11 = *(a1 + 8);
    v12 = *v11;
    if (*v11 >= *(v11 + 1))
    {
      Varint32Fallback = 0;
LABEL_6:
      Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v11, Varint32Fallback);
      v11 = *(a1 + 8);
      goto LABEL_7;
    }

    Varint32Fallback = *v12;
    if (*v12 < 0)
    {
      goto LABEL_6;
    }

    *v11 = v12 + 1;
LABEL_7:
    TagFallback = google::protobuf::io::CodedInputStream::PushLimit(v11, Varint32Fallback);
    v15 = TagFallback;
    memset(&v43, 0, sizeof(v43));
    v16 = *(a1 + 8);
    v17 = *v16;
    if (*v16 >= v16[1])
    {
      LODWORD(v18) = 0;
LABEL_42:
      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(*(a1 + 8), v18);
      v18 = TagFallback;
      goto LABEL_12;
    }

    v18 = *v17;
    if (*v17 < 0)
    {
      goto LABEL_42;
    }

    while (1)
    {
      *v16 = v17 + 1;
LABEL_12:
      *(v16 + 8) = v18;
      if (!v18)
      {
        google::protobuf::io::CodedInputStream::PopLimit(*(a1 + 8), v15);
        v29 = 1;
        goto LABEL_44;
      }

      v19 = google::protobuf::util::converter::ProtoStreamObjectSource::FindAndVerifyField(TagFallback, v10, v18);
      v22 = v19;
      if (!v19)
      {
        TagFallback = google::protobuf::internal::WireFormat::SkipField(*(a1 + 8), v18, 0, v21);
        goto LABEL_40;
      }

      v23 = *(v19 + 20);
      if (v23 == 2)
      {
        break;
      }

      if (v23 != 1)
      {
        goto LABEL_57;
      }

      google::protobuf::util::converter::ProtoStreamObjectSource::ReadFieldValueAsString(a1, v19, v20, &__str);
      TagFallback = std::string::operator=(&v43, &__str);
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        v24 = __str.__r_.__value_.__r.__words[0];
LABEL_39:
        operator delete(v24);
      }

LABEL_40:
      v16 = *(a1 + 8);
      v17 = *v16;
      if (*v16 >= v16[1])
      {
        LODWORD(v18) = 0;
        goto LABEL_42;
      }

      v18 = *v17;
      if (*v17 < 0)
      {
        goto LABEL_42;
      }
    }

    size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v43.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      goto LABEL_36;
    }

    if (!FieldByNumber)
    {
LABEL_57:
      google::protobuf::util::Status::Status(&__str, 13, "Invalid map entry.", 18);
      google::protobuf::util::StatusOr<unsigned int>::StatusOr(a6, &__str);
      goto LABEL_58;
    }

    v27 = *(FieldByNumber + 72);
    if (v27 <= 0x12)
    {
      if (((1 << v27) & 0x7A0F8) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(&__str, "0");
        google::protobuf::util::Status::Status(v36);
        memset(&__p, 0, sizeof(__p));
        google::protobuf::util::Status::operator=(v36, &google::protobuf::util::Status::OK);
        std::string::operator=(&__p, &__str);
LABEL_26:
        if ((SHIBYTE(__str.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_29;
        }

        v28 = __str.__r_.__value_.__r.__words[0];
        goto LABEL_28;
      }

      if (v27 == 8)
      {
        std::string::basic_string[abi:ne200100]<0>(&__str, "false");
        google::protobuf::util::Status::Status(v36);
        memset(&__p, 0, sizeof(__p));
        google::protobuf::util::Status::operator=(v36, &google::protobuf::util::Status::OK);
        std::string::operator=(&__p, &__str);
        goto LABEL_26;
      }

      if (v27 == 9)
      {
        memset(&__str, 0, sizeof(__str));
        google::protobuf::util::Status::Status(v36);
        memset(&__p, 0, sizeof(__p));
        google::protobuf::util::Status::operator=(v36, &google::protobuf::util::Status::OK);
        std::string::operator=(&__p, &__str);
        goto LABEL_26;
      }
    }

    google::protobuf::util::Status::Status(&__str, 13, "Invalid map key type.", 21);
    google::protobuf::util::StatusOr<std::string>::StatusOr(v36, &__str);
    if (v45 < 0)
    {
      v28 = __str.__r_.__value_.__l.__size_;
LABEL_28:
      operator delete(v28);
    }

LABEL_29:
    google::protobuf::util::DoAssignOrReturn<std::string>(v36, &v43, &v40);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v38 < 0)
    {
      operator delete(v37);
    }

    if (!v40)
    {
      if (v42 < 0)
      {
        operator delete(v41);
      }

LABEL_36:
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v40, &v43, v20);
      TagFallback = (*(*a1 + 48))(&__str, a1, v22, v40, v41, a5);
      if (!LODWORD(__str.__r_.__value_.__l.__data_))
      {
        if ((v45 & 0x80000000) == 0)
        {
          goto LABEL_40;
        }

        v24 = __str.__r_.__value_.__l.__size_;
        goto LABEL_39;
      }

      google::protobuf::util::StatusOr<unsigned int>::StatusOr(a6, &__str);
LABEL_58:
      if (v45 < 0)
      {
        v33 = __str.__r_.__value_.__l.__size_;
        goto LABEL_60;
      }

      goto LABEL_61;
    }

    google::protobuf::util::StatusOr<unsigned int>::StatusOr(a6, &v40);
    if (v42 < 0)
    {
      v33 = v41;
LABEL_60:
      operator delete(v33);
    }

LABEL_61:
    v29 = 0;
LABEL_44:
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    if (!v29)
    {
      break;
    }

    v30 = *(a1 + 8);
    v31 = *v30;
    if (*v30 >= v30[1])
    {
      v32 = 0;
    }

    else
    {
      v32 = *v31;
      if ((*v31 & 0x80000000) == 0)
      {
        *v30 = v31 + 1;
        goto LABEL_68;
      }
    }

    v32 = google::protobuf::io::CodedInputStream::ReadTagFallback(*(a1 + 8), v32);
LABEL_68:
    *(v30 + 8) = v32;
    if (v32 != a4)
    {
      v34 = google::protobuf::util::Status::Status(a6);
      google::protobuf::util::Status::operator=(v34, &google::protobuf::util::Status::OK);
      *(a6 + 32) = v32;
      return;
    }
  }
}

void sub_1BFC0E850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, int a42, __int16 a43, char a44, char a45)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::ProtoStreamObjectSource::RenderList(google::protobuf::io::CodedInputStream **a1@<X0>, const google::protobuf::Field *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, google::protobuf::util::converter::ObjectWriter *a6@<X5>, uint64_t a7@<X8>)
{
  (*(*a6 + 32))(a6, a3, a4);
  v12 = *(a2 + 19) != 3 || (*(a2 + 18) - 13) > 0xFFFFFFFB;
  if (v12 || ((8 * *(a2 + 20)) | 2) != a5)
  {
    while (1)
    {
      (*(*a1 + 6))(&v19, a1, a2, "", 0, a6);
      if (v19)
      {
        google::protobuf::util::StatusOr<unsigned int>::StatusOr(a7, &v19);
        if (v21 < 0)
        {
          operator delete(__p);
        }

        return;
      }

      if (v21 < 0)
      {
        operator delete(__p);
      }

      v16 = a1[1];
      v17 = *v16;
      if (*v16 >= *(v16 + 1))
      {
        break;
      }

      TagFallback = *v17;
      if (*v17 < 0)
      {
        goto LABEL_19;
      }

      *v16 = v17 + 1;
LABEL_20:
      *(v16 + 8) = TagFallback;
      if (TagFallback != a5)
      {
        goto LABEL_28;
      }
    }

    TagFallback = 0;
LABEL_19:
    TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a1[1], TagFallback);
    goto LABEL_20;
  }

  google::protobuf::util::converter::ProtoStreamObjectSource::RenderPacked(a1, a2, a6, &v19);
  if (v19)
  {
    google::protobuf::util::StatusOr<unsigned int>::StatusOr(a7, &v19);
    google::protobuf::util::converter::ProtoStreamObjectSource::RenderList(&v19);
    return;
  }

  if (v21 < 0)
  {
    operator delete(__p);
  }

  v13 = a1[1];
  v14 = *v13;
  if (*v13 >= *(v13 + 1))
  {
    TagFallback = 0;
  }

  else
  {
    TagFallback = *v14;
    if ((*v14 & 0x80000000) == 0)
    {
      *v13 = v14 + 1;
      goto LABEL_27;
    }
  }

  TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(v13, TagFallback);
LABEL_27:
  *(v13 + 8) = TagFallback;
LABEL_28:
  (*(*a6 + 40))(a6);
  v18 = google::protobuf::util::Status::Status(a7);
  google::protobuf::util::Status::operator=(v18, &google::protobuf::util::Status::OK);
  *(a7 + 32) = TagFallback;
}

void sub_1BFC0EB74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::ProtoStreamObjectSource::RenderPacked@<X0>(google::protobuf::util::converter::ProtoStreamObjectSource *this@<X0>, const google::protobuf::Field *a2@<X1>, google::protobuf::util::converter::ObjectWriter *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(this + 1);
  v9 = *v8;
  if (*v8 >= *(v8 + 1))
  {
    Varint32Fallback = 0;
  }

  else
  {
    Varint32Fallback = *v9;
    if ((*v9 & 0x80000000) == 0)
    {
      *v8 = v9 + 1;
      goto LABEL_6;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v8, Varint32Fallback);
  v8 = *(this + 1);
LABEL_6:
  v11 = google::protobuf::io::CodedInputStream::PushLimit(v8, Varint32Fallback);
  if (google::protobuf::io::CodedInputStream::BytesUntilLimit(*(this + 1)) < 1)
  {
LABEL_11:
    google::protobuf::io::CodedInputStream::PopLimit(*(this + 1), v11);

    return google::protobuf::util::Status::Status(a4);
  }

  else
  {
    while (1)
    {
      result = (*(*this + 48))(this, a2, 0, 0, a3);
      if (*a4)
      {
        break;
      }

      if (*(a4 + 31) < 0)
      {
        operator delete(*(a4 + 8));
      }

      if (google::protobuf::io::CodedInputStream::BytesUntilLimit(*(this + 1)) <= 0)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

void google::protobuf::util::converter::ProtoStreamObjectSource::ReadFieldValueAsString(google::protobuf::util::converter::ProtoStreamObjectSource *this@<X0>, const google::protobuf::Field *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v68[4] = *MEMORY[0x1E69E9840];
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  switch(*(a2 + 18))
  {
    case 1:
      *&__dst = 0;
      v6 = *(this + 1);
      v7 = *v6;
      if ((*(v6 + 8) - *v6) < 8)
      {
        google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(v6, &__dst);
        v9 = *&__dst;
      }

      else
      {
        *&__dst = *v7;
        v8 = *&__dst;
        *v6 = v7 + 1;
        v9 = v8;
      }

      google::protobuf::SimpleDtoa(v9, a2, __src);
      goto LABEL_32;
    case 2:
      LODWORD(__dst) = 0;
      v32 = *(this + 1);
      v33 = *v32;
      if ((*(v32 + 8) - *v32) < 4)
      {
        google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(v32, &__dst);
        v35 = *&__dst;
      }

      else
      {
        LODWORD(__dst) = *v33;
        v34 = *&__dst;
        *v32 = v33 + 1;
        v35 = v34;
      }

      google::protobuf::SimpleFtoa(v35, a2, __src);
LABEL_32:
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = *__src;
      v36 = v68[0];
      goto LABEL_110;
    case 3:
      v22 = *(this + 1);
      v23 = *v22;
      if (*v22 >= v22[1] || (Varint64Fallback = *v23, (Varint64Fallback & 0x8000000000000000) != 0))
      {
        Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(*(this + 1));
      }

      else
      {
        *v22 = v23 + 1;
      }

      __src[0] = v68;
      v13 = google::protobuf::FastInt64ToBufferLeft(Varint64Fallback, v68, a3);
      v14 = v13 - v68;
      __src[1] = (v13 - v68);
      if ((v13 - v68) > 0x7FFFFFFFFFFFFFF7)
      {
        std::basic_string<char32_t>::__throw_length_error[abi:ne200100]();
      }

      v15 = __src[0];
      if (v14 >= 0x17)
      {
        operator new();
      }

      goto LABEL_103;
    case 4:
      v49 = *(this + 1);
      v50 = *v49;
      if (*v49 >= v49[1] || (v51 = *v50, (v51 & 0x8000000000000000) != 0))
      {
        v51 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(*(this + 1));
      }

      else
      {
        *v49 = v50 + 1;
      }

      __src[0] = v68;
      v13 = google::protobuf::FastUInt64ToBufferLeft(v51, v68, a3);
      v14 = v13 - v68;
      __src[1] = (v13 - v68);
      if ((v13 - v68) > 0x7FFFFFFFFFFFFFF7)
      {
        std::basic_string<char32_t>::__throw_length_error[abi:ne200100]();
      }

      v15 = __src[0];
      if (v14 >= 0x17)
      {
        operator new();
      }

      goto LABEL_103;
    case 5:
      v52 = *(this + 1);
      v53 = *v52;
      if (*v52 >= *(v52 + 1))
      {
        LODWORD(Varint32Fallback) = 0;
      }

      else
      {
        Varint32Fallback = *v53;
        if ((*v53 & 0x80000000) == 0)
        {
          *v52 = v53 + 1;
          goto LABEL_101;
        }
      }

      Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v52, Varint32Fallback);
LABEL_101:
      __src[0] = v68;
      v13 = google::protobuf::FastInt32ToBufferLeft(Varint32Fallback, v68, a3);
      v14 = v13 - v68;
      __src[1] = (v13 - v68);
      if ((v13 - v68) > 0x7FFFFFFFFFFFFFF7)
      {
        std::basic_string<char32_t>::__throw_length_error[abi:ne200100]();
      }

      v15 = __src[0];
      if (v14 >= 0x17)
      {
        operator new();
      }

      goto LABEL_103;
    case 6:
      *v64 = 0;
      v25 = *(this + 1);
      v26 = *v25;
      if ((*(v25 + 8) - *v25) < 8)
      {
        google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(v25, v64);
        v27 = *v64;
      }

      else
      {
        v27 = *v26;
        *v64 = *v26;
        *v25 = v26 + 1;
      }

      __src[0] = v68;
      v13 = google::protobuf::FastUInt64ToBufferLeft(v27, v68, a3);
      v14 = v13 - v68;
      __src[1] = (v13 - v68);
      if ((v13 - v68) > 0x7FFFFFFFFFFFFFF7)
      {
        std::basic_string<char32_t>::__throw_length_error[abi:ne200100]();
      }

      v15 = __src[0];
      if (v14 >= 0x17)
      {
        operator new();
      }

      goto LABEL_103;
    case 7:
      v64[0] = 0;
      v37 = *(this + 1);
      v38 = *v37;
      if ((*(v37 + 8) - *v37) < 4)
      {
        google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(v37, v64);
        v39 = v64[0];
      }

      else
      {
        v39 = *v38;
        v64[0] = *v38;
        *v37 = v38 + 1;
      }

      __src[0] = v68;
      v13 = google::protobuf::FastUInt32ToBufferLeft(v39, v68, a3);
      v14 = v13 - v68;
      __src[1] = (v13 - v68);
      if ((v13 - v68) > 0x7FFFFFFFFFFFFFF7)
      {
        std::basic_string<char32_t>::__throw_length_error[abi:ne200100]();
      }

      v15 = __src[0];
      if (v14 >= 0x17)
      {
        operator new();
      }

      goto LABEL_103;
    case 8:
      v40 = *(this + 1);
      v41 = *v40;
      if (*v40 >= v40[1] || (v42 = *v41, (v42 & 0x8000000000000000) != 0))
      {
        v42 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(*(this + 1));
      }

      else
      {
        *v40 = v41 + 1;
      }

      if (v42)
      {
        v59 = "true";
      }

      else
      {
        v59 = "false";
      }

      MEMORY[0x1C68D49D0](a4, v59);
      goto LABEL_111;
    case 9:
      v55 = *(this + 1);
      v58 = *v55;
      if (*v55 >= *(v55 + 1))
      {
        LODWORD(v57) = 0;
        goto LABEL_113;
      }

      v57 = *v58;
      if (*v58 < 0)
      {
        goto LABEL_113;
      }

      *v55 = v58 + 1;
      goto LABEL_114;
    case 0xC:
      v55 = *(this + 1);
      v56 = *v55;
      if (*v55 >= *(v55 + 1))
      {
        LODWORD(v57) = 0;
      }

      else
      {
        v57 = *v56;
        if ((*v56 & 0x80000000) == 0)
        {
          *v55 = v56 + 1;
          goto LABEL_114;
        }
      }

LABEL_113:
      v57 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v55, v57);
      v55 = *(this + 1);
LABEL_114:
      google::protobuf::io::CodedInputStream::ReadString(v55, a4, v57);
      goto LABEL_111;
    case 0xD:
      v16 = *(this + 1);
      v17 = *v16;
      if (*v16 >= *(v16 + 1))
      {
        LODWORD(v18) = 0;
      }

      else
      {
        v18 = *v17;
        if ((*v17 & 0x80000000) == 0)
        {
          *v16 = v17 + 1;
          goto LABEL_81;
        }
      }

      v18 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v16, v18);
LABEL_81:
      __src[0] = v68;
      v13 = google::protobuf::FastUInt32ToBufferLeft(v18, v68, a3);
      v14 = v13 - v68;
      __src[1] = (v13 - v68);
      if ((v13 - v68) > 0x7FFFFFFFFFFFFFF7)
      {
        std::basic_string<char32_t>::__throw_length_error[abi:ne200100]();
      }

      v15 = __src[0];
      if (v14 >= 0x17)
      {
        operator new();
      }

      goto LABEL_103;
    case 0xE:
      v29 = *(this + 1);
      v30 = *v29;
      if (*v29 >= *(v29 + 1))
      {
        LODWORD(v31) = 0;
      }

      else
      {
        v31 = *v30;
        if ((*v30 & 0x80000000) == 0)
        {
          *v29 = v30 + 1;
          goto LABEL_88;
        }
      }

      v31 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v29, v31);
LABEL_88:
      v60 = *(this + 2);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(__src, *(a2 + 6), a3);
      v61 = (*(*v60 + 32))(v60, __src[0], __src[1]);
      if (v61)
      {
        if (EnumValueByNumber)
        {
          std::string::operator=(a4, *(EnumValueByNumber + 40));
        }
      }

      goto LABEL_111;
    case 0xF:
      v64[0] = 0;
      v19 = *(this + 1);
      v20 = *v19;
      if ((*(v19 + 8) - *v19) < 4)
      {
        google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(v19, v64);
        v21 = v64[0];
      }

      else
      {
        v21 = *v20;
        v64[0] = *v20;
        *v19 = v20 + 1;
      }

      __src[0] = v68;
      v13 = google::protobuf::FastInt32ToBufferLeft(v21, v68, a3);
      v14 = v13 - v68;
      __src[1] = (v13 - v68);
      if ((v13 - v68) > 0x7FFFFFFFFFFFFFF7)
      {
        std::basic_string<char32_t>::__throw_length_error[abi:ne200100]();
      }

      v15 = __src[0];
      if (v14 >= 0x17)
      {
        operator new();
      }

      goto LABEL_103;
    case 0x10:
      *v64 = 0;
      v10 = *(this + 1);
      v11 = *v10;
      if ((*(v10 + 8) - *v10) < 8)
      {
        google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(v10, v64);
        v12 = *v64;
      }

      else
      {
        v12 = *v11;
        *v64 = *v11;
        *v10 = v11 + 1;
      }

      __src[0] = v68;
      v13 = google::protobuf::FastInt64ToBufferLeft(v12, v68, a3);
      v14 = v13 - v68;
      __src[1] = (v13 - v68);
      if ((v13 - v68) > 0x7FFFFFFFFFFFFFF7)
      {
        std::basic_string<char32_t>::__throw_length_error[abi:ne200100]();
      }

      v15 = __src[0];
      if (v14 >= 0x17)
      {
        operator new();
      }

      goto LABEL_103;
    case 0x11:
      v43 = *(this + 1);
      v44 = *v43;
      if (*v43 >= *(v43 + 1))
      {
        v45 = 0;
      }

      else
      {
        v45 = *v44;
        if ((*v44 & 0x80000000) == 0)
        {
          *v43 = v44 + 1;
          goto LABEL_96;
        }
      }

      v45 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v43, v45);
LABEL_96:
      __src[0] = v68;
      v13 = google::protobuf::FastInt32ToBufferLeft((-(v45 & 1) ^ (v45 >> 1)), v68, a3);
      v14 = v13 - v68;
      __src[1] = (v13 - v68);
      if ((v13 - v68) > 0x7FFFFFFFFFFFFFF7)
      {
        std::basic_string<char32_t>::__throw_length_error[abi:ne200100]();
      }

      v15 = __src[0];
      if (v14 >= 0x17)
      {
        operator new();
      }

LABEL_103:
      HIBYTE(v66) = v14;
      if (v13 != v68)
      {
        memmove(&__dst, v15, v14);
      }

      *(&__dst + v14) = 0;
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      *a4 = __dst;
      v36 = v66;
LABEL_110:
      *(a4 + 16) = v36;
LABEL_111:
      v63 = *MEMORY[0x1E69E9840];
      return;
    case 0x12:
      v46 = *(this + 1);
      v47 = *v46;
      if (*v46 >= v46[1] || (v48 = *v47, (v48 & 0x8000000000000000) != 0))
      {
        v48 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(*(this + 1));
      }

      else
      {
        *v46 = v47 + 1;
      }

      __src[0] = v68;
      v13 = google::protobuf::FastInt64ToBufferLeft(-(v48 & 1) ^ (v48 >> 1), v68, a3);
      v14 = v13 - v68;
      __src[1] = (v13 - v68);
      if ((v13 - v68) > 0x7FFFFFFFFFFFFFF7)
      {
        std::basic_string<char32_t>::__throw_length_error[abi:ne200100]();
      }

      v15 = __src[0];
      if (v14 >= 0x17)
      {
        operator new();
      }

      goto LABEL_103;
    default:
      goto LABEL_111;
  }
}

void sub_1BFC0F64C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::util::Status *google::protobuf::util::DoAssignOrReturn<std::string>@<X0>(google::protobuf::util::Status *a1@<X1>, std::string *a2@<X0>, google::protobuf::util::Status *a3@<X8>)
{
  if (!*a1)
  {
    std::string::operator=(a2, (a1 + 32));
  }

  return google::protobuf::util::Status::Status(a3, a1);
}

void google::protobuf::util::converter::ProtoStreamObjectSource::RenderTimestamp(uint64_t a1@<X0>, const google::protobuf::Type *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  SecondsAndNanos = google::protobuf::util::converter::ProtoStreamObjectSource::ReadSecondsAndNanos(a1, a2);
  if (SecondsAndNanos - 0x3AFFF44180 <= 0xFFFFFFB68879C77FLL)
  {
    v21 = "Timestamp seconds exceeds limit for field: ";
    v22 = 43;
    v19 = a3;
    v20 = a4;
    google::protobuf::StrCat(&v21, &v19, &__p);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v17, &__p, v12);
    google::protobuf::util::Status::Status(a6, 13, v17, v18);
    goto LABEL_5;
  }

  if (v11 >= 0x3B9ACA00)
  {
    v21 = "Timestamp nanos exceeds limit for field: ";
    v22 = 41;
    v19 = a3;
    v20 = a4;
    google::protobuf::StrCat(&v21, &v19, &__p);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v17, &__p, v13);
    google::protobuf::util::Status::Status(a6, 13, v17, v18);
LABEL_5:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    goto LABEL_10;
  }

  google::protobuf::internal::FormatTime(SecondsAndNanos, v11, &v21);
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v19, &v21, v14);
  (*(*a5 + 104))(a5, a3, a4, v19, v20);
  if (v23 < 0)
  {
    operator delete(v21);
  }

  google::protobuf::util::Status::Status(a6);
LABEL_10:
  v15 = *MEMORY[0x1E69E9840];
}

void sub_1BFC0F8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::ProtoStreamObjectSource::ReadSecondsAndNanos(uint64_t this, const google::protobuf::Type *a2)
{
  v3 = this;
  v4 = *(this + 8);
  v5 = *v4;
  if (*v4 >= v4[1])
  {
    LODWORD(v6) = 0;
  }

  else
  {
    v6 = *v5;
    if ((*v5 & 0x80000000) == 0)
    {
      *v4 = v5 + 1;
      goto LABEL_6;
    }
  }

  this = google::protobuf::io::CodedInputStream::ReadTagFallback(*(this + 8), v6);
  v6 = this;
LABEL_6:
  *(v4 + 8) = v6;
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      this = google::protobuf::util::converter::ProtoStreamObjectSource::FindAndVerifyField(this, a2, v6);
      if (!this)
      {
        this = google::protobuf::internal::WireFormat::SkipField(*(v3 + 8), v6, 0, v8);
        goto LABEL_20;
      }

      v9 = *(this + 80);
      if (v9 != 2)
      {
        break;
      }

      this = *(v3 + 8);
      v10 = *this;
      if (*this >= *(this + 8))
      {
        v11 = 0;
      }

      else
      {
        v11 = *v10;
        if ((*v10 & 0x80000000) == 0)
        {
          goto LABEL_17;
        }
      }

      this = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, v11);
LABEL_20:
      v12 = *(v3 + 8);
      v13 = *v12;
      if (*v12 >= v12[1])
      {
        LODWORD(v6) = 0;
LABEL_24:
        this = google::protobuf::io::CodedInputStream::ReadTagFallback(*(v3 + 8), v6);
        v6 = this;
        goto LABEL_25;
      }

      v6 = *v13;
      if (*v13 < 0)
      {
        goto LABEL_24;
      }

      *v12 = v13 + 1;
LABEL_25:
      *(v12 + 8) = v6;
      if (!v6)
      {
        return v7;
      }
    }

    if (v9 != 1)
    {
      goto LABEL_20;
    }

    this = *(v3 + 8);
    v10 = *this;
    if (*this >= *(this + 8) || (v7 = *v10, v7 < 0))
    {
      this = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(this);
      v7 = this;
      goto LABEL_20;
    }

LABEL_17:
    *this = v10 + 1;
    goto LABEL_20;
  }

  return 0;
}

void google::protobuf::util::converter::ProtoStreamObjectSource::RenderDuration(uint64_t a1@<X0>, const google::protobuf::Type *a2@<X1>, std::string::size_type a3@<X2>, std::string::size_type a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = *MEMORY[0x1E69E9840];
  SecondsAndNanos = google::protobuf::util::converter::ProtoStreamObjectSource::ReadSecondsAndNanos(a1, a2);
  if ((SecondsAndNanos - 0x4979CB9E01) <= 0xFFFFFF6D0C68C3FELL)
  {
    __str.__r_.__value_.__r.__words[0] = "Duration seconds exceeds limit for field: ";
    __str.__r_.__value_.__l.__size_ = 42;
    __p[0].__r_.__value_.__r.__words[0] = a3;
    __p[0].__r_.__value_.__l.__size_ = a4;
    google::protobuf::StrCat(&__str, __p, &v30);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v28, &v30, v13);
    google::protobuf::util::Status::Status(a6, 13, v28.__r_.__value_.__r.__words[0], v28.__r_.__value_.__l.__size_);
    goto LABEL_38;
  }

  v14 = v12;
  if ((v12 - 1000000000) <= 0x88CA6C00)
  {
    __str.__r_.__value_.__r.__words[0] = "Duration nanos exceeds limit for field: ";
    __str.__r_.__value_.__l.__size_ = 40;
    __p[0].__r_.__value_.__r.__words[0] = a3;
    __p[0].__r_.__value_.__l.__size_ = a4;
    google::protobuf::StrCat(&__str, __p, &v30);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v28, &v30, v15);
    google::protobuf::util::Status::Status(a6, 13, v28.__r_.__value_.__r.__words[0], v28.__r_.__value_.__l.__size_);
    goto LABEL_38;
  }

  v16 = SecondsAndNanos;
  std::string::basic_string[abi:ne200100]<0>(&v30, "");
  if (v16 < 0)
  {
    if (v14 >= 1)
    {
      __str.__r_.__value_.__r.__words[0] = "Duration nanos is non-negative, but seconds is negative for field: ";
      __str.__r_.__value_.__l.__size_ = 67;
      __p[0].__r_.__value_.__r.__words[0] = a3;
      __p[0].__r_.__value_.__l.__size_ = a4;
      google::protobuf::StrCat(&__str, __p, &v28);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v29, &v28, v18);
      google::protobuf::util::Status::Status(a6, 13, v29[0], v29[1]);
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      v19 = v28.__r_.__value_.__r.__words[0];
      goto LABEL_37;
    }

    MEMORY[0x1C68D49D0](&v30, "-");
    v16 = -v16;
    v14 = -v14;
  }

  else if (!v16 && v14 < 0)
  {
    MEMORY[0x1C68D49D0](&v30, "-");
    v16 = 0;
    v14 = -v14;
    if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v30;
    }

    else
    {
      v17 = v30.__r_.__value_.__r.__words[0];
    }

    goto LABEL_19;
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = &v30;
  }

  else
  {
    v17 = v30.__r_.__value_.__r.__words[0];
  }

  if (!v14)
  {
    if (*(a1 + 54))
    {
      v24 = ".000";
    }

    else
    {
      v24 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(&v28, v24);
    goto LABEL_31;
  }

LABEL_19:
  HIDWORD(v21) = 652835029 * v14;
  LODWORD(v21) = 652835029 * v14;
  v20 = v21 >> 3;
  HIDWORD(v21) = 1757569337 * v14;
  LODWORD(v21) = 1757569337 * v14;
  if ((v21 >> 6) >= 0x10C7)
  {
    v22 = "%.6f";
  }

  else
  {
    v22 = "%.3f";
  }

  if (v20 <= 0x418937)
  {
    v23 = v22;
  }

  else
  {
    v23 = "%.9f";
  }

  google::protobuf::StringPrintf(v23, &__str, v14 / 1000000000.0);
  std::string::basic_string(&v28, &__str, 1uLL, 0xFFFFFFFFFFFFFFFFLL, v29);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

LABEL_31:
  v25 = &v28;
  if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v25 = v28.__r_.__value_.__r.__words[0];
  }

  google::protobuf::StringPrintf("%s%lld%ss", __p, v17, v16, v25);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__str, __p, v26);
  (*(*a5 + 104))(a5, a3, a4, __str.__r_.__value_.__r.__words[0], __str.__r_.__value_.__l.__size_);
  google::protobuf::util::Status::Status(a6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    v19 = __p[0].__r_.__value_.__r.__words[0];
LABEL_37:
    operator delete(v19);
  }

LABEL_38:
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void sub_1BFC0FDF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::ProtoStreamObjectSource::RenderDouble@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  v11 = *(a1 + 8);
  v12 = *v11;
  if (*v11 >= v11[1])
  {
    TagFallback = 0;
  }

  else
  {
    TagFallback = *v12;
    if ((*v12 & 0x80000000) == 0)
    {
      *v11 = v12 + 1;
      goto LABEL_6;
    }
  }

  TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(*(a1 + 8), TagFallback);
LABEL_6:
  *(v11 + 8) = TagFallback;
  v21 = 0;
  if (TagFallback)
  {
    v14 = *(a1 + 8);
    v15 = *v14;
    v16 = v14[1];
    if ((v16 - *v14) < 8)
    {
      google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(*(a1 + 8), &v21);
      v14 = *(a1 + 8);
      v17 = *v14;
      v16 = v14[1];
    }

    else
    {
      v18 = *v15;
      v17 = (v15 + 1);
      v21 = v18;
      *v14 = v17;
    }

    if (v17 >= v16)
    {
      v19 = 0;
    }

    else
    {
      v19 = *v17;
      if ((*v17 & 0x80000000) == 0)
      {
        *v14 = (v17 + 1);
LABEL_16:
        *(v14 + 8) = v19;
        a6.n128_u64[0] = v21;
        goto LABEL_17;
      }
    }

    v19 = google::protobuf::io::CodedInputStream::ReadTagFallback(v14, v19);
    goto LABEL_16;
  }

  a6.n128_u64[0] = 0;
LABEL_17:
  (*(*a4 + 88))(a4, a2, a3, a6);
  return google::protobuf::util::Status::Status(a5);
}

uint64_t google::protobuf::util::converter::ProtoStreamObjectSource::RenderFloat@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  v11 = *(a1 + 8);
  v12 = *v11;
  if (*v11 >= v11[1])
  {
    TagFallback = 0;
  }

  else
  {
    TagFallback = *v12;
    if ((*v12 & 0x80000000) == 0)
    {
      *v11 = v12 + 1;
      goto LABEL_6;
    }
  }

  TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(*(a1 + 8), TagFallback);
LABEL_6:
  *(v11 + 8) = TagFallback;
  v21 = 0;
  if (TagFallback)
  {
    v14 = *(a1 + 8);
    v15 = *v14;
    v16 = v14[1];
    if ((v16 - *v14) < 4)
    {
      google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(*(a1 + 8), &v21);
      v14 = *(a1 + 8);
      v17 = *v14;
      v16 = v14[1];
    }

    else
    {
      v18 = *v15;
      v17 = (v15 + 1);
      v21 = v18;
      *v14 = v17;
    }

    if (v17 >= v16)
    {
      v19 = 0;
    }

    else
    {
      v19 = *v17;
      if ((*v17 & 0x80000000) == 0)
      {
        *v14 = (v17 + 1);
LABEL_16:
        *(v14 + 8) = v19;
        a6.n128_u32[0] = v21;
        goto LABEL_17;
      }
    }

    v19 = google::protobuf::io::CodedInputStream::ReadTagFallback(v14, v19);
    goto LABEL_16;
  }

  a6.n128_u64[0] = 0;
LABEL_17:
  (*(*a4 + 96))(a4, a2, a3, a6);
  return google::protobuf::util::Status::Status(a5);
}

uint64_t google::protobuf::util::converter::ProtoStreamObjectSource::RenderInt64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 8);
  v11 = *v10;
  if (*v10 >= v10[1])
  {
    TagFallback = 0;
  }

  else
  {
    TagFallback = *v11;
    if ((*v11 & 0x80000000) == 0)
    {
      *v10 = v11 + 1;
      goto LABEL_6;
    }
  }

  TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(*(a1 + 8), TagFallback);
LABEL_6:
  *(v10 + 8) = TagFallback;
  if (!TagFallback)
  {
    Varint64Fallback = 0;
    goto LABEL_18;
  }

  v13 = *(a1 + 8);
  v15 = *v13;
  v14 = v13[1];
  if (*v13 >= v14 || (Varint64Fallback = *v15, (Varint64Fallback & 0x8000000000000000) != 0))
  {
    Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(*(a1 + 8));
    v13 = *(a1 + 8);
    v17 = *v13;
    v14 = v13[1];
  }

  else
  {
    v17 = v15 + 1;
    *v13 = v17;
  }

  if (v17 >= v14)
  {
    v18 = 0;
    goto LABEL_16;
  }

  v18 = *v17;
  if (*v17 < 0)
  {
LABEL_16:
    v18 = google::protobuf::io::CodedInputStream::ReadTagFallback(v13, v18);
    goto LABEL_17;
  }

  *v13 = v17 + 1;
LABEL_17:
  *(v13 + 8) = v18;
LABEL_18:
  (*(*a4 + 72))(a4, a2, a3, Varint64Fallback);

  return google::protobuf::util::Status::Status(a5);
}

uint64_t google::protobuf::util::converter::ProtoStreamObjectSource::RenderUInt64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 8);
  v11 = *v10;
  if (*v10 >= v10[1])
  {
    TagFallback = 0;
  }

  else
  {
    TagFallback = *v11;
    if ((*v11 & 0x80000000) == 0)
    {
      *v10 = v11 + 1;
      goto LABEL_6;
    }
  }

  TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(*(a1 + 8), TagFallback);
LABEL_6:
  *(v10 + 8) = TagFallback;
  if (!TagFallback)
  {
    Varint64Fallback = 0;
    goto LABEL_18;
  }

  v13 = *(a1 + 8);
  v15 = *v13;
  v14 = v13[1];
  if (*v13 >= v14 || (Varint64Fallback = *v15, (Varint64Fallback & 0x8000000000000000) != 0))
  {
    Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(*(a1 + 8));
    v13 = *(a1 + 8);
    v17 = *v13;
    v14 = v13[1];
  }

  else
  {
    v17 = v15 + 1;
    *v13 = v17;
  }

  if (v17 >= v14)
  {
    v18 = 0;
    goto LABEL_16;
  }

  v18 = *v17;
  if (*v17 < 0)
  {
LABEL_16:
    v18 = google::protobuf::io::CodedInputStream::ReadTagFallback(v13, v18);
    goto LABEL_17;
  }

  *v13 = v17 + 1;
LABEL_17:
  *(v13 + 8) = v18;
LABEL_18:
  (*(*a4 + 80))(a4, a2, a3, Varint64Fallback);

  return google::protobuf::util::Status::Status(a5);
}

uint64_t google::protobuf::util::converter::ProtoStreamObjectSource::RenderInt32@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 8);
  v11 = *v10;
  if (*v10 >= v10[1])
  {
    TagFallback = 0;
  }

  else
  {
    TagFallback = *v11;
    if ((*v11 & 0x80000000) == 0)
    {
      *v10 = v11 + 1;
      goto LABEL_6;
    }
  }

  TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(*(a1 + 8), TagFallback);
LABEL_6:
  *(v10 + 8) = TagFallback;
  if (!TagFallback)
  {
    Varint32Fallback = 0;
    goto LABEL_19;
  }

  v13 = *(a1 + 8);
  v15 = *v13;
  v14 = v13[1];
  if (*v13 >= v14)
  {
    LODWORD(Varint32Fallback) = 0;
  }

  else
  {
    Varint32Fallback = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      v17 = v15 + 1;
      *v13 = v17;
      goto LABEL_13;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(*(a1 + 8), Varint32Fallback);
  v13 = *(a1 + 8);
  v17 = *v13;
  v14 = v13[1];
LABEL_13:
  if (v17 >= v14)
  {
    v18 = 0;
    goto LABEL_17;
  }

  v18 = *v17;
  if (*v17 < 0)
  {
LABEL_17:
    v18 = google::protobuf::io::CodedInputStream::ReadTagFallback(v13, v18);
    goto LABEL_18;
  }

  *v13 = v17 + 1;
LABEL_18:
  *(v13 + 8) = v18;
LABEL_19:
  (*(*a4 + 56))(a4, a2, a3, Varint32Fallback);

  return google::protobuf::util::Status::Status(a5);
}

uint64_t google::protobuf::util::converter::ProtoStreamObjectSource::RenderUInt32@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 8);
  v11 = *v10;
  if (*v10 >= v10[1])
  {
    TagFallback = 0;
  }

  else
  {
    TagFallback = *v11;
    if ((*v11 & 0x80000000) == 0)
    {
      *v10 = v11 + 1;
      goto LABEL_6;
    }
  }

  TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(*(a1 + 8), TagFallback);
LABEL_6:
  *(v10 + 8) = TagFallback;
  if (!TagFallback)
  {
    Varint32Fallback = 0;
    goto LABEL_19;
  }

  v13 = *(a1 + 8);
  v15 = *v13;
  v14 = v13[1];
  if (*v13 >= v14)
  {
    LODWORD(Varint32Fallback) = 0;
  }

  else
  {
    Varint32Fallback = *v15;
    if ((*v15 & 0x80000000) == 0)
    {
      v17 = v15 + 1;
      *v13 = v17;
      goto LABEL_13;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(*(a1 + 8), Varint32Fallback);
  v13 = *(a1 + 8);
  v17 = *v13;
  v14 = v13[1];
LABEL_13:
  if (v17 >= v14)
  {
    v18 = 0;
    goto LABEL_17;
  }

  v18 = *v17;
  if (*v17 < 0)
  {
LABEL_17:
    v18 = google::protobuf::io::CodedInputStream::ReadTagFallback(v13, v18);
    goto LABEL_18;
  }

  *v13 = v17 + 1;
LABEL_18:
  *(v13 + 8) = v18;
LABEL_19:
  (*(*a4 + 64))(a4, a2, a3, Varint32Fallback);

  return google::protobuf::util::Status::Status(a5);
}

uint64_t google::protobuf::util::converter::ProtoStreamObjectSource::RenderBool@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 8);
  v11 = *v10;
  if (*v10 >= v10[1])
  {
    TagFallback = 0;
  }

  else
  {
    TagFallback = *v11;
    if ((*v11 & 0x80000000) == 0)
    {
      *v10 = v11 + 1;
      goto LABEL_6;
    }
  }

  TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(*(a1 + 8), TagFallback);
LABEL_6:
  *(v10 + 8) = TagFallback;
  if (!TagFallback)
  {
    v18 = 0;
    goto LABEL_18;
  }

  v13 = *(a1 + 8);
  v15 = *v13;
  v14 = v13[1];
  if (*v13 >= v14 || (Varint64Fallback = *v15, (Varint64Fallback & 0x8000000000000000) != 0))
  {
    Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(*(a1 + 8));
    v13 = *(a1 + 8);
    v17 = *v13;
    v14 = v13[1];
  }

  else
  {
    v17 = v15 + 1;
    *v13 = v17;
  }

  if (v17 >= v14)
  {
    v19 = 0;
    goto LABEL_16;
  }

  v19 = *v17;
  if (*v17 < 0)
  {
LABEL_16:
    v19 = google::protobuf::io::CodedInputStream::ReadTagFallback(v13, v19);
    goto LABEL_17;
  }

  *v13 = v17 + 1;
LABEL_17:
  *(v13 + 8) = v19;
  v18 = Varint64Fallback != 0;
LABEL_18:
  (*(*a4 + 48))(a4, a2, a3, v18);

  return google::protobuf::util::Status::Status(a5);
}

void google::protobuf::util::converter::ProtoStreamObjectSource::RenderString(uint64_t a1@<X0>, const char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 8);
  v11 = *v10;
  if (*v10 >= v10[1])
  {
    TagFallback = 0;
  }

  else
  {
    TagFallback = *v11;
    if ((*v11 & 0x80000000) == 0)
    {
      *v10 = v11 + 1;
      goto LABEL_6;
    }
  }

  TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(*(a1 + 8), TagFallback);
LABEL_6:
  *(v10 + 8) = TagFallback;
  memset(&__p, 0, sizeof(__p));
  if (!TagFallback)
  {
    goto LABEL_18;
  }

  v13 = *(a1 + 8);
  v14 = *v13;
  if (*v13 >= *(v13 + 1))
  {
    LODWORD(Varint32Fallback) = 0;
  }

  else
  {
    Varint32Fallback = *v14;
    if ((*v14 & 0x80000000) == 0)
    {
      *v13 = v14 + 1;
      goto LABEL_12;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v13, Varint32Fallback);
  v13 = *(a1 + 8);
LABEL_12:
  google::protobuf::io::CodedInputStream::ReadString(v13, &__p, Varint32Fallback);
  v16 = *(a1 + 8);
  v17 = *v16;
  if (*v16 >= v16[1])
  {
    v18 = 0;
    goto LABEL_16;
  }

  v18 = *v17;
  if (*v17 < 0)
  {
LABEL_16:
    v18 = google::protobuf::io::CodedInputStream::ReadTagFallback(v16, v18);
    goto LABEL_17;
  }

  *v16 = v17 + 1;
LABEL_17:
  *(v16 + 8) = v18;
LABEL_18:
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v19, &__p, a2);
  (*(*a4 + 104))(a4, a2, a3, v19[0], v19[1]);
  google::protobuf::util::Status::Status(a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1BFC108BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::ProtoStreamObjectSource::RenderBytes(uint64_t a1@<X0>, const char *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a1 + 8);
  v11 = *v10;
  if (*v10 >= v10[1])
  {
    TagFallback = 0;
  }

  else
  {
    TagFallback = *v11;
    if ((*v11 & 0x80000000) == 0)
    {
      *v10 = v11 + 1;
      goto LABEL_6;
    }
  }

  TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(*(a1 + 8), TagFallback);
LABEL_6:
  *(v10 + 8) = TagFallback;
  memset(&__p, 0, sizeof(__p));
  if (!TagFallback)
  {
    goto LABEL_18;
  }

  v13 = *(a1 + 8);
  v14 = *v13;
  if (*v13 >= *(v13 + 1))
  {
    LODWORD(Varint32Fallback) = 0;
  }

  else
  {
    Varint32Fallback = *v14;
    if ((*v14 & 0x80000000) == 0)
    {
      *v13 = v14 + 1;
      goto LABEL_12;
    }
  }

  Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v13, Varint32Fallback);
  v13 = *(a1 + 8);
LABEL_12:
  google::protobuf::io::CodedInputStream::ReadString(v13, &__p, Varint32Fallback);
  v16 = *(a1 + 8);
  v17 = *v16;
  if (*v16 >= v16[1])
  {
    v18 = 0;
    goto LABEL_16;
  }

  v18 = *v17;
  if (*v17 < 0)
  {
LABEL_16:
    v18 = google::protobuf::io::CodedInputStream::ReadTagFallback(v16, v18);
    goto LABEL_17;
  }

  *v16 = v17 + 1;
LABEL_17:
  *(v16 + 8) = v18;
LABEL_18:
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v19, &__p, a2);
  (*(*a4 + 112))(a4, a2, a3, v19[0], v19[1]);
  google::protobuf::util::Status::Status(a5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1BFC10A40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::ProtoStreamObjectSource::RenderStruct(google::protobuf::io::CodedInputStream **a1@<X0>, const google::protobuf::Type *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = a1[1];
  v13 = *v12;
  if (*v12 >= *(v12 + 1))
  {
    TagFallback = 0;
  }

  else
  {
    TagFallback = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
      *v12 = v13 + 1;
      goto LABEL_6;
    }
  }

  TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(a1[1], TagFallback);
LABEL_6:
  *(v12 + 8) = TagFallback;
  IsMap = (*(*a5 + 16))(a5, a3, a4);
  if (TagFallback)
  {
    while (1)
    {
      v16 = google::protobuf::util::converter::ProtoStreamObjectSource::FindAndVerifyField(IsMap, a2, TagFallback);
      IsMap = google::protobuf::util::converter::ProtoStreamObjectSource::IsMap(a1, v16, v17);
      if (!IsMap)
      {
        goto LABEL_14;
      }

      google::protobuf::util::converter::ProtoStreamObjectSource::RenderMap(a1, v16, v18, TagFallback, a5, &v19);
      if (!v19)
      {
        TagFallback = v22;
      }

      IsMap = google::protobuf::util::Status::Status(a6, &v19);
      if (v21 < 0)
      {
        operator delete(__p);
      }

      if (*a6)
      {
        return;
      }

      if (*(a6 + 31) < 0)
      {
        operator delete(*(a6 + 8));
        if (!TagFallback)
        {
          break;
        }
      }

      else
      {
LABEL_14:
        if (!TagFallback)
        {
          break;
        }
      }
    }
  }

  (*(*a5 + 24))(a5);
  google::protobuf::util::Status::Status(a6);
}

void sub_1BFC10BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::ProtoStreamObjectSource::RenderStructValue@<X0>(uint64_t result@<X0>, const google::protobuf::Type *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = result;
  for (i = *(result + 8); ; i = v10[1])
  {
    v13 = *i;
    if (*i >= i[1])
    {
      LODWORD(v14) = 0;
    }

    else
    {
      v14 = *v13;
      if ((*v13 & 0x80000000) == 0)
      {
        *i = (v13 + 1);
        goto LABEL_7;
      }
    }

    result = google::protobuf::io::CodedInputStream::ReadTagFallback(i, v14);
    v14 = result;
LABEL_7:
    *(i + 8) = v14;
    if (!v14)
    {
      break;
    }

    v15 = google::protobuf::util::converter::ProtoStreamObjectSource::FindAndVerifyField(result, a2, v14);
    if (v15)
    {
      result = ((*v10)[6])(v10, v15, a3, a4, a5);
      if (*a6)
      {
        return result;
      }

      if (*(a6 + 31) < 0)
      {
        operator delete(*(a6 + 8));
      }
    }

    else
    {
      result = google::protobuf::internal::WireFormat::SkipField(v10[1], v14, 0, v16);
    }
  }

  return google::protobuf::util::Status::Status(a6);
}

void google::protobuf::util::converter::ProtoStreamObjectSource::RenderStructListValue(unint64_t TagFallback@<X0>, const google::protobuf::Type *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = TagFallback;
  v12 = *(TagFallback + 8);
  v13 = *v12;
  if (*v12 >= v12[1])
  {
    LODWORD(v14) = 0;
  }

  else
  {
    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
      *v12 = v13 + 1;
      goto LABEL_6;
    }
  }

  TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(*(TagFallback + 8), v14);
  v14 = TagFallback;
LABEL_6:
  *(v12 + 8) = v14;
  if (v14)
  {
    while (1)
    {
      while (1)
      {
        v15 = google::protobuf::util::converter::ProtoStreamObjectSource::FindAndVerifyField(TagFallback, a2, v14);
        if (!v15)
        {
          break;
        }

        ((*v10)[5])(v19, v10, v15, a3, a4, v14, a5);
        if (LODWORD(v19[0]))
        {
          v14 = v14;
        }

        else
        {
          v14 = v21;
        }

        TagFallback = google::protobuf::util::Status::Status(a6, v19);
        if (v20 < 0)
        {
          operator delete(v19[1]);
        }

        if (*a6)
        {
          return;
        }

        if (*(a6 + 31) < 0)
        {
          operator delete(*(a6 + 8));
        }

        if (!v14)
        {
LABEL_24:
          google::protobuf::util::Status::Status(a6);
          return;
        }
      }

      TagFallback = google::protobuf::internal::WireFormat::SkipField(v10[1], v14, 0, v16);
      v17 = v10[1];
      v18 = *v17;
      if (*v17 >= v17[1])
      {
        break;
      }

      v14 = *v18;
      if (*v18 < 0)
      {
        goto LABEL_22;
      }

      *v17 = (v18 + 1);
LABEL_23:
      *(v17 + 8) = v14;
      if (!v14)
      {
        goto LABEL_24;
      }
    }

    LODWORD(v14) = 0;
LABEL_22:
    TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(v10[1], v14);
    v14 = TagFallback;
    goto LABEL_23;
  }

  (*(*a5 + 32))(a5, a3, a4);
  (*(*a5 + 40))(a5);

  google::protobuf::util::Status::Status(a6);
}

void sub_1BFC10F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::ProtoStreamObjectSource::RenderAny(uint64_t TagFallback@<X0>, const google::protobuf::Type *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = TagFallback;
  memset(&v58, 0, sizeof(v58));
  memset(&v57, 0, sizeof(v57));
  v12 = *(TagFallback + 8);
  v13 = *v12;
  if (*v12 >= v12[1])
  {
    LODWORD(v14) = 0;
  }

  else
  {
    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(*(TagFallback + 8), v14);
LABEL_5:
  v14 = TagFallback;
  while (1)
  {
    *(v12 + 8) = v14;
    if (!v14)
    {
      break;
    }

    TagFallback = google::protobuf::util::converter::ProtoStreamObjectSource::FindAndVerifyField(TagFallback, a2, v14);
    if (!TagFallback)
    {
      TagFallback = google::protobuf::internal::WireFormat::SkipField(*(v10 + 8), v14, 0, v15);
      goto LABEL_55;
    }

    v16 = *(TagFallback + 80);
    if (v16 != 2)
    {
      if (v16 != 1)
      {
        goto LABEL_55;
      }

      v17 = *(v10 + 8);
      v18 = *v17;
      if (*v17 >= *(v17 + 1))
      {
        LODWORD(Varint32Fallback) = 0;
      }

      else
      {
        Varint32Fallback = *v18;
        if ((*v18 & 0x80000000) == 0)
        {
          *v17 = v18 + 1;
LABEL_51:
          TagFallback = google::protobuf::io::CodedInputStream::ReadString(v17, &v58, Varint32Fallback);
          goto LABEL_55;
        }
      }

      Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v17, Varint32Fallback);
      v17 = *(v10 + 8);
      goto LABEL_51;
    }

    v20 = *(v10 + 8);
    v21 = *v20;
    if (*v20 >= *(v20 + 1))
    {
      LODWORD(v22) = 0;
LABEL_53:
      v22 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v20, v22);
      v20 = *(v10 + 8);
      goto LABEL_54;
    }

    v22 = *v21;
    if (*v21 < 0)
    {
      goto LABEL_53;
    }

    *v20 = v21 + 1;
LABEL_54:
    TagFallback = google::protobuf::io::CodedInputStream::ReadString(v20, &v57, v22);
LABEL_55:
    v12 = *(v10 + 8);
    v13 = *v12;
    if (*v12 >= v12[1])
    {
      LODWORD(v14) = 0;
LABEL_57:
      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(*(v10 + 8), v14);
      goto LABEL_5;
    }

    v14 = *v13;
    if (*v13 < 0)
    {
      goto LABEL_57;
    }

LABEL_6:
    *v12 = v13 + 1;
  }

  size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
  if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v57.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v24 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v24 = v58.__r_.__value_.__l.__size_;
    }

    if (v24)
    {
      v25 = *(v10 + 16);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v43, &v58, a3);
      (*(*v25 + 16))(&v53, v25, v43, v44);
      if (v53)
      {
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v43, &v54, v26);
        google::protobuf::util::Status::Status(a6, 13, v43, v44);
      }

      else
      {
        v29 = v56;
        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v30 = &v57;
        }

        else
        {
          v30 = v57.__r_.__value_.__r.__words[0];
        }

        if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v31 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v31 = v57.__r_.__value_.__r.__words[1];
        }

        google::protobuf::io::ArrayInputStream::ArrayInputStream(v52, v30, v31, -1);
        v43 = 0;
        v44 = 0;
        v45 = v52;
        v46[0] = 0;
        *(v46 + 6) = 0;
        v46[2] = 0x7FFFFFFFLL;
        v47 = 0x7FFFFFFF;
        v48 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
        v49 = google::protobuf::io::CodedInputStream::default_recursion_limit_;
        v50 = 0;
        v51 = 0;
        google::protobuf::io::CodedInputStream::Refresh(&v43);
        v32 = *(v10 + 16);
        v35[0] = &unk_1F3F0FC18;
        v35[1] = &v43;
        v36 = v32;
        v37 = 0;
        v38 = v29;
        v41 = 0x4000000000;
        v42 = 256;
        v39 = *(v10 + 40);
        v40 = *(v10 + 41);
        (*(*a5 + 16))(a5, a3, a4);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v34, &v58, v33);
        (*(*a5 + 104))(a5, "@type", 5, v34[0], v34[1]);
        google::protobuf::util::converter::ProtoStreamObjectSource::WriteMessage(v35, v38, "value", 5, 0, 0, a5, a6);
        (*(*a5 + 24))(a5);
        v35[0] = &unk_1F3F0FC18;
        if (v37 == 1 && v36)
        {
          (*(*v36 + 8))(v36);
        }

        google::protobuf::io::CodedInputStream::~CodedInputStream(&v43);
      }

      if (v55 < 0)
      {
        operator delete(v54);
      }
    }

    else
    {
      google::protobuf::util::Status::Status(a6, 13, "Invalid Any, the type_url is missing.", 37);
    }
  }

  else
  {
    (*(*a5 + 16))(a5, a3, a4);
    v28 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
    if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v28 = v58.__r_.__value_.__l.__size_;
    }

    if (v28)
    {
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v43, &v58, v27);
      (*(*a5 + 104))(a5, "@type", 5, v43, v44);
    }

    (*(*a5 + 24))(a5);
    google::protobuf::util::Status::Status(a6);
  }

  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v58.__r_.__value_.__l.__data_);
  }
}

void sub_1BFC11490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  if (*(v10 + 31) < 0)
  {
    operator delete(*(v10 + 8));
  }

  if (a7 == 1 && a6)
  {
    (*(*a6 + 8))(a6);
  }

  google::protobuf::io::CodedInputStream::~CodedInputStream(va);
  if (*(v11 - 137) < 0)
  {
    operator delete(*(v11 - 160));
  }

  if (*(v11 - 105) < 0)
  {
    operator delete(*(v11 - 128));
  }

  if (*(v11 - 81) < 0)
  {
    operator delete(*(v11 - 104));
  }

  _Unwind_Resume(a1);
}

void google::protobuf::util::converter::ProtoStreamObjectSource::RenderFieldMask(google::protobuf::io::CodedInputStream **TagFallback@<X0>, const google::protobuf::Type *a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = TagFallback;
  v37[4] = *MEMORY[0x1E69E9840];
  memset(&v36, 0, sizeof(v36));
  v10 = TagFallback[1];
  v11 = *v10;
  if (*v10 >= *(v10 + 1))
  {
    v12 = 0;
    goto LABEL_5;
  }

  v12 = *v11;
  if (*v11 < 0)
  {
LABEL_5:
    TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(TagFallback[1], v12);
    v12 = TagFallback;
    goto LABEL_6;
  }

  *v10 = v11 + 1;
LABEL_6:
  *(v10 + 8) = v12;
  if (!v12)
  {
LABEL_47:
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v35, &v36, a3);
    (*(*a5 + 104))(a5, a3, a4, v35.__r_.__value_.__r.__words[0], v35.__r_.__value_.__l.__size_);
    google::protobuf::util::Status::Status(a6);
    goto LABEL_49;
  }

  v13 = 0;
  while (!v13)
  {
    v17 = google::protobuf::util::converter::ProtoStreamObjectSource::FindAndVerifyField(TagFallback, a2, v12);
    if (!v17 || *(v17 + 80) != 1)
    {
      break;
    }

    v18 = *(v17 + 40);
    v19 = *(v18 + 23);
    if (v19 < 0)
    {
      if (*(v18 + 1) != 5)
      {
        break;
      }

      v18 = *v18;
    }

    else if (v19 != 5)
    {
      break;
    }

    v20 = bswap64(*v18 | (*(v18 + 4) << 32));
    v21 = v20 >= 0x7061746873000000;
    v22 = v20 > 0x7061746873000000;
    v23 = !v21;
    if (v22 != v23)
    {
      break;
    }

    v13 = v12;
LABEL_10:
    memset(&v35, 0, sizeof(v35));
    v14 = v8[1];
    v15 = *v14;
    if (*v14 >= *(v14 + 1))
    {
      LODWORD(Varint32Fallback) = 0;
    }

    else
    {
      Varint32Fallback = *v15;
      if ((*v15 & 0x80000000) == 0)
      {
        *v14 = v15 + 1;
        goto LABEL_27;
      }
    }

    Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v14, Varint32Fallback);
    v14 = v8[1];
LABEL_27:
    google::protobuf::io::CodedInputStream::ReadString(v14, &v35, Varint32Fallback);
    size = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v36.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      std::string::append(&v36, ",");
    }

    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v33, &v35, v24);
    v37[0] = &unk_1F3F0FB68;
    v37[1] = google::protobuf::util::converter::ToCamelCase;
    v37[3] = v37;
    google::protobuf::util::converter::ConvertFieldMaskPath(v33[0], v33[1], v37, &__p);
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
      v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v27 = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(&v36, p_p, v27);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    TagFallback = std::__function::__value_func<std::string ()(google::protobuf::StringPiece)>::~__value_func[abi:ne200100](v37);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    v28 = v8[1];
    v29 = *v28;
    if (*v28 >= v28[1])
    {
      v12 = 0;
LABEL_45:
      TagFallback = google::protobuf::io::CodedInputStream::ReadTagFallback(v8[1], v12);
      v12 = TagFallback;
      goto LABEL_46;
    }

    v12 = *v29;
    if (*v29 < 0)
    {
      goto LABEL_45;
    }

    *v28 = v29 + 1;
LABEL_46:
    *(v28 + 8) = v12;
    if (!v12)
    {
      goto LABEL_47;
    }
  }

  if (v13 == v12)
  {
    goto LABEL_10;
  }

  google::protobuf::util::Status::Status(a6, 13, "Invalid FieldMask, unexpected field.", 36);
LABEL_49:
  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void sub_1BFC11878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1BFC11ED4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::ProtoStreamObjectSource::DeleteRendererMap(google::protobuf::util::converter::ProtoStreamObjectSource *this)
{
  result = google::protobuf::util::converter::ProtoStreamObjectSource::renderers_;
  if (google::protobuf::util::converter::ProtoStreamObjectSource::renderers_)
  {
    v2 = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(google::protobuf::util::converter::ProtoStreamObjectSource::renderers_);
    result = MEMORY[0x1C68D4E80](v2, 0x10A0C408EF24B1CLL);
  }

  google::protobuf::util::converter::ProtoStreamObjectSource::renderers_ = 0;
  return result;
}

void google::protobuf::util::converter::ProtoStreamObjectSource::RenderField(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>, __n128 a7@<Q0>)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a2 + 72) == 11)
  {
    v13 = *(a1 + 8);
    v14 = *v13;
    if (*v13 >= *(v13 + 1))
    {
      Varint32Fallback = 0;
    }

    else
    {
      Varint32Fallback = *v14;
      if ((*v14 & 0x80000000) == 0)
      {
        *v13 = v14 + 1;
LABEL_10:
        v17 = google::protobuf::io::CodedInputStream::PushLimit(v13, Varint32Fallback);
        v18 = *(a1 + 16);
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v33, *(a2 + 48), v19);
        v20 = (*(*v18 + 24))(v18, v33, v34);
        v21 = v20;
        if (v20)
        {
          TypeRenderer = google::protobuf::util::converter::ProtoStreamObjectSource::FindTypeRenderer(*(v20 + 88));
          google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v33, *(v21 + 88), v23);
          google::protobuf::util::converter::ProtoStreamObjectSource::IncrementRecursionDepth(a1, v33, v34, a3, a4, a6);
          if (!*a6)
          {
            if (*(a6 + 31) < 0)
            {
              operator delete(*(a6 + 8));
            }

            if (TypeRenderer)
            {
              (*TypeRenderer)(a1, v21, a3, a4, a5);
            }

            else
            {
              (*(*a1 + 32))(a1, v21, a3, a4, 0, 1, a5);
            }

            if (!*a6)
            {
              if (*(a6 + 31) < 0)
              {
                operator delete(*(a6 + 8));
              }

              --*(a1 + 44);
              v28 = *(a1 + 8);
              if (*(v28 + 36))
              {
                google::protobuf::io::CodedInputStream::PopLimit(v28, v17);
                google::protobuf::util::Status::Status(a6);
              }

              else
              {
                google::protobuf::util::Status::Status(a6, 3, "Nested protocol message not parsed in its entirety.", 51);
              }
            }
          }
        }

        else
        {
          v33 = "Invalid configuration. Could not find the type: ";
          v34 = 48;
          v24 = *(a2 + 48);
          v25 = *(v24 + 23);
          v26 = v24[1];
          if (v25 < 0)
          {
            v24 = *v24;
          }

          if (v25 < 0)
          {
            v25 = v26;
          }

          v32[0] = v24;
          v32[1] = v25;
          google::protobuf::StrCat(&v33, v32, &__p);
          google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v31, &__p, v27);
          google::protobuf::util::Status::Status(a6, 13, v31[0], v31[1]);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v29 = *MEMORY[0x1E69E9840];
        return;
      }
    }

    Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v13, Varint32Fallback);
    v13 = *(a1 + 8);
    goto LABEL_10;
  }

  v16 = *MEMORY[0x1E69E9840];

  google::protobuf::util::converter::ProtoStreamObjectSource::RenderNonMessageField(a1, a2, a3, a4, a5, a6, a7);
}

void sub_1BFC1226C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::ProtoStreamObjectSource::IncrementRecursionDepth(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v18[6] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 44);
  v8 = *(a1 + 48);
  *(a1 + 44) = v7 + 1;
  if (v7 >= v8)
  {
    v18[0] = "Message too deep. Max recursion depth reached for type '";
    v18[1] = 56;
    v17[0] = a2;
    v17[1] = a3;
    v16[0] = "', field '";
    v16[1] = 10;
    v15[0] = a4;
    v15[1] = a5;
    v14[0] = "'";
    v14[1] = 1;
    google::protobuf::StrCat(v18, v17, v16, v15, v14, &__p);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v13, &__p, v10);
    google::protobuf::util::Status::Status(a6, 3, v13[0], v13[1]);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v9 = *MEMORY[0x1E69E9840];

    google::protobuf::util::Status::Status(a6);
  }
}

void google::protobuf::util::converter::ProtoStreamObjectSource::RenderNonMessageField(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>, __n128 a7@<Q0>)
{
  Varint32Fallback = 0;
  v75 = 0;
  memset(&v74, 0, sizeof(v74));
  switch(*(a2 + 72))
  {
    case 1:
      v12 = *(a1 + 8);
      v13 = *v12;
      if ((*(v12 + 8) - *v12) < 8)
      {
        google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(v12, &v75);
      }

      else
      {
        v75 = *v13;
        *v12 = v13 + 1;
      }

      (*(*a5 + 88))(a5, a3, a4, *&v75);
      goto LABEL_92;
    case 2:
      v33 = *(a1 + 8);
      v34 = *v33;
      if ((*(v33 + 8) - *v33) < 4)
      {
        google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(v33, &Varint32Fallback);
        a7.n128_u32[0] = Varint32Fallback;
      }

      else
      {
        Varint32Fallback = *v34;
        v35 = Varint32Fallback;
        *v33 = v34 + 1;
        a7.n128_u32[0] = v35;
      }

      (*(*a5 + 96))(a5, a3, a4, a7);
      goto LABEL_92;
    case 3:
      v25 = *(a1 + 8);
      v26 = *v25;
      if (*v25 >= *(v25 + 8) || (Varint64Fallback = *v26, (Varint64Fallback & 0x8000000000000000) != 0))
      {
        Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(v25);
        v75 = Varint64Fallback;
      }

      else
      {
        v75 = *v26;
        *v25 = v26 + 1;
      }

      goto LABEL_53;
    case 4:
      v48 = *(a1 + 8);
      v49 = *v48;
      if (*v48 >= *(v48 + 8) || (Varint64Fallback = *v49, (Varint64Fallback & 0x8000000000000000) != 0))
      {
        Varint64Fallback = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(v48);
        v75 = Varint64Fallback;
      }

      else
      {
        v75 = *v49;
        *v48 = v49 + 1;
      }

      goto LABEL_60;
    case 5:
      v21 = *(a1 + 8);
      v50 = *v21;
      if (*v21 >= *(v21 + 1))
      {
        v51 = 0;
      }

      else
      {
        v51 = *v50;
        if ((*v50 & 0x80000000) == 0)
        {
          Varint32Fallback = *v50;
          v23 = (v50 + 1);
          goto LABEL_44;
        }
      }

      Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v21, v51);
      goto LABEL_45;
    case 6:
      v27 = *(a1 + 8);
      v28 = *v27;
      if ((*(v27 + 8) - *v27) < 8)
      {
        google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(v27, &v75);
      }

      else
      {
        v75 = *v28;
        *v27 = v28 + 1;
      }

      Varint64Fallback = v75;
LABEL_60:
      v60 = (*a5 + 80);
      goto LABEL_61;
    case 7:
      v17 = *(a1 + 8);
      v36 = *v17;
      if ((*(v17 + 8) - *v17) >= 4)
      {
        v37 = *v36;
        v20 = v36 + 1;
        Varint32Fallback = v37;
        goto LABEL_27;
      }

      google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(v17, &Varint32Fallback);
      goto LABEL_28;
    case 8:
      v39 = *(a1 + 8);
      v40 = *v39;
      if (*v39 >= v39[1] || (v41 = *v40, (v41 & 0x8000000000000000) != 0))
      {
        v41 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(*(a1 + 8));
        v75 = v41;
      }

      else
      {
        v75 = *v40;
        *v39 = v40 + 1;
      }

      (*(*a5 + 48))(a5, a3, a4, v41 != 0);
      goto LABEL_92;
    case 9:
      v56 = *(a1 + 8);
      v57 = *v56;
      if (*v56 >= *(v56 + 1))
      {
        LODWORD(v58) = 0;
      }

      else
      {
        v58 = *v57;
        if ((*v57 & 0x80000000) == 0)
        {
          Varint32Fallback = *v57;
          *v56 = v57 + 1;
          goto LABEL_102;
        }
      }

      v58 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v56, v58);
      Varint32Fallback = v58;
      v56 = *(a1 + 8);
LABEL_102:
      google::protobuf::io::CodedInputStream::ReadString(v56, &v74, v58);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__p, &v74, v68);
      (*(*a5 + 104))(a5, a3, a4, __p, v70);
      goto LABEL_92;
    case 0xC:
      v53 = *(a1 + 8);
      v54 = *v53;
      if (*v53 >= *(v53 + 1))
      {
        LODWORD(v55) = 0;
      }

      else
      {
        v55 = *v54;
        if ((*v54 & 0x80000000) == 0)
        {
          Varint32Fallback = *v54;
          *v53 = v54 + 1;
          goto LABEL_99;
        }
      }

      v55 = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v53, v55);
      Varint32Fallback = v55;
      v53 = *(a1 + 8);
LABEL_99:
      google::protobuf::io::CodedInputStream::ReadString(v53, &v74, v55);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__p, &v74, v67);
      (*(*a5 + 112))(a5, a3, a4, __p, v70);
      goto LABEL_92;
    case 0xD:
      v17 = *(a1 + 8);
      v18 = *v17;
      if (*v17 >= *(v17 + 8))
      {
        v19 = 0;
        goto LABEL_64;
      }

      v19 = *v18;
      if (*v18 < 0)
      {
LABEL_64:
        Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v17, v19);
        goto LABEL_28;
      }

      Varint32Fallback = *v18;
      v20 = (v18 + 1);
LABEL_27:
      *v17 = v20;
LABEL_28:
      v38 = (*a5 + 64);
LABEL_91:
      (*v38)(a5, a3, a4);
LABEL_92:
      google::protobuf::util::Status::Status(a6);
      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v74.__r_.__value_.__l.__data_);
      }

      return;
    case 0xE:
      v30 = *(a1 + 8);
      v31 = *v30;
      if (*v30 >= *(v30 + 1))
      {
        v32 = 0;
      }

      else
      {
        v32 = *v31;
        if ((*v31 & 0x80000000) == 0)
        {
          Varint32Fallback = *v31;
          *v30 = v31 + 1;
          goto LABEL_69;
        }
      }

      Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v30, v32);
LABEL_69:
      v61 = *(a2 + 48);
      if (*(v61 + 23) < 0 && *(v61 + 8) == 45 && !memcmp(*v61, "type.googleapis.com/google.protobuf.NullValue", 0x2DuLL))
      {
        (*(*a5 + 120))(a5, a3, a4);
        goto LABEL_92;
      }

      v62 = *(a1 + 16);
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__p, v61, a3);
      v63 = (*(*v62 + 32))(v62, __p, v70);
      if (v63)
      {
        if (EnumValueByNumber)
        {
          if ((*(a1 + 41) & 1) == 0)
          {
            if (*(a1 + 40) == 1)
            {
              google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v72, *(EnumValueByNumber + 40), v65);
              google::protobuf::util::converter::EnumValueNameToLowerCamelCase(v72, v73, &__p);
              google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v72, &__p, v66);
              (*(*a5 + 104))(a5, a3, a4, v72, v73);
              if (v71 < 0)
              {
                operator delete(__p);
              }
            }

            else
            {
              google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&__p, *(EnumValueByNumber + 40), v65);
              (*(*a5 + 104))(a5, a3, a4, __p, v70);
            }

            goto LABEL_92;
          }
        }

        else if (*(a1 + 53) != 1)
        {
          goto LABEL_92;
        }
      }

      else if (*(a1 + 53) != 1)
      {
        goto LABEL_92;
      }

      (*(*a5 + 56))(a5, a3, a4, Varint32Fallback);
      goto LABEL_92;
    case 0xF:
      v21 = *(a1 + 8);
      v22 = *v21;
      if ((*(v21 + 2) - *v21) < 4)
      {
        google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(v21, &Varint32Fallback);
      }

      else
      {
        v24 = *v22;
        v23 = (v22 + 1);
        Varint32Fallback = v24;
LABEL_44:
        *v21 = v23;
      }

LABEL_45:
      v52 = *a5;
      goto LABEL_90;
    case 0x10:
      v14 = *(a1 + 8);
      v15 = *v14;
      if ((*(v14 + 8) - *v14) < 8)
      {
        google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(v14, &v75);
      }

      else
      {
        v75 = *v15;
        *v14 = v15 + 1;
      }

      Varint64Fallback = v75;
LABEL_53:
      v59 = *a5;
      goto LABEL_58;
    case 0x11:
      v42 = *(a1 + 8);
      v43 = *v42;
      if (*v42 >= *(v42 + 1))
      {
        v44 = 0;
      }

      else
      {
        v44 = *v43;
        if ((*v43 & 0x80000000) == 0)
        {
          Varint32Fallback = *v43;
          *v42 = v43 + 1;
          goto LABEL_89;
        }
      }

      Varint32Fallback = google::protobuf::io::CodedInputStream::ReadVarint32Fallback(v42, v44);
LABEL_89:
      v52 = *a5;
LABEL_90:
      v38 = (v52 + 56);
      goto LABEL_91;
    case 0x12:
      v45 = *(a1 + 8);
      v46 = *v45;
      if (*v45 >= v45[1] || (v47 = *v46, (v47 & 0x8000000000000000) != 0))
      {
        v47 = google::protobuf::io::CodedInputStream::ReadVarint64Fallback(*(a1 + 8));
        v75 = v47;
      }

      else
      {
        v75 = *v46;
        *v45 = v46 + 1;
      }

      Varint64Fallback = -(v47 & 1) ^ (v47 >> 1);
      v59 = *a5;
LABEL_58:
      v60 = (v59 + 72);
LABEL_61:
      (*v60)(a5, a3, a4, Varint64Fallback);
      goto LABEL_92;
    default:
      goto LABEL_92;
  }
}

void sub_1BFC12C6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::anonymous namespace::FindEnumValueByNumber(google::protobuf::util::converter::_anonymous_namespace_ *this, const google::protobuf::Enum *a2)
{
  if (*(this + 6) < 1)
  {
    return 0;
  }

  v2 = a2;
  v4 = 0;
  while (1)
  {
    result = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::EnumValue>::TypeHandler>(this + 16, v4);
    if (*(result + 48) == v2)
    {
      break;
    }

    if (++v4 >= *(this + 6))
    {
      return 0;
    }
  }

  return result;
}

void google::protobuf::UnknownFieldSet::~UnknownFieldSet(google::protobuf::UnknownFieldSet *this)
{
  v2 = *this;
  if (v2 != *(this + 1))
  {
    google::protobuf::UnknownFieldSet::ClearFallback(this);
    v2 = *this;
  }

  if (v2)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

uint64_t google::protobuf::util::StatusOr<std::string>::StatusOr(uint64_t a1, _DWORD *a2)
{
  v4 = google::protobuf::util::Status::Status(a1);
  v4[4] = 0;
  v4[5] = 0;
  v4[6] = 0;
  if (*a2)
  {
    google::protobuf::util::Status::operator=(a1, a2);
  }

  else
  {
    google::protobuf::util::Status::Status(&v6, 13, "Status::OK is not a valid argument.", 35);
    google::protobuf::util::Status::operator=(a1, &v6);
    if (v8 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1BFC12E38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 55) < 0)
  {
    operator delete(*v16);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::StatusOr<unsigned int>::StatusOr(uint64_t a1, _DWORD *a2)
{
  google::protobuf::util::Status::Status(a1);
  if (*a2)
  {
    google::protobuf::util::Status::operator=(a1, a2);
  }

  else
  {
    google::protobuf::util::Status::Status(&v5, 13, "Status::OK is not a valid argument.", 35);
    google::protobuf::util::Status::operator=(a1, &v5);
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  return a1;
}

void sub_1BFC12F00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*(v15 + 8));
  }

  _Unwind_Resume(exception_object);
}

const void **std::__hash_table<std::__hash_value_type<std::string,google::protobuf::util::Status (*)(google::protobuf::util::converter::ProtoStreamObjectSource const*,google::protobuf::Type const&,google::protobuf::StringPiece,google::protobuf::util::converter::ObjectWriter *)>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,google::protobuf::util::Status (*)(google::protobuf::util::converter::ProtoStreamObjectSource const*,google::protobuf::Type const&,google::protobuf::StringPiece,google::protobuf::util::converter::ObjectWriter *)>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,google::protobuf::util::Status (*)(google::protobuf::util::converter::ProtoStreamObjectSource const*,google::protobuf::Type const&,google::protobuf::StringPiece,google::protobuf::util::converter::ObjectWriter *)>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,google::protobuf::util::Status (*)(google::protobuf::util::converter::ProtoStreamObjectSource const*,google::protobuf::Type const&,google::protobuf::StringPiece,google::protobuf::util::converter::ObjectWriter *)>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(void *a1, const void **a2)
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
    operator new();
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

void google::protobuf::util::converter::ObjectWriter::RenderDataPieceTo(google::protobuf::util::converter::DataPiece *a1, char *a2, char *a3, uint64_t a4)
{
  v7 = *(a1 + 2);
  if (v7 <= 5)
  {
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        google::protobuf::util::converter::DataPiece::ToInt32(a1, a2, a3, &v21);
        if (v21)
        {
          google::protobuf::util::internal::StatusOrHelper::Crash(&v21, v13);
        }

        (*(*a4 + 56))(a4, a2, a3, LODWORD(__p[0]));
      }

      else
      {
        if (v7 != 2)
        {
          return;
        }

        google::protobuf::util::converter::DataPiece::ToInt64(a1, a2, a3, &v21);
        if (v21)
        {
          google::protobuf::util::internal::StatusOrHelper::Crash(&v21, v11);
        }

        (*(*a4 + 72))(a4, a2, a3, __p[0]);
      }
    }

    else if (v7 == 3)
    {
      google::protobuf::util::converter::DataPiece::ToUint32(a1, a2, a3, &v21);
      if (v21)
      {
        google::protobuf::util::internal::StatusOrHelper::Crash(&v21, v15);
      }

      (*(*a4 + 64))(a4, a2, a3, LODWORD(__p[0]));
    }

    else if (v7 == 4)
    {
      google::protobuf::util::converter::DataPiece::ToUint64(a1, a2, a3, &v21);
      if (v21)
      {
        google::protobuf::util::internal::StatusOrHelper::Crash(&v21, v18);
      }

      (*(*a4 + 80))(a4, a2, a3, __p[0]);
    }

    else
    {
      google::protobuf::util::converter::DataPiece::ToDouble(a1, a2, a3, &v21);
      if (v21)
      {
        google::protobuf::util::internal::StatusOrHelper::Crash(&v21, v8);
      }

      (*(*a4 + 88))(a4, a2, a3, *__p);
    }

    goto LABEL_45;
  }

  if (v7 <= 8)
  {
    if (v7 == 6)
    {
      google::protobuf::util::converter::DataPiece::ToFloat(a1, a2, a3, &v21);
      if (v21)
      {
        google::protobuf::util::internal::StatusOrHelper::Crash(&v21, v14);
      }

      (*(*a4 + 96))(a4, a2, a3, *__p);
    }

    else
    {
      if (v7 != 7)
      {
        return;
      }

      google::protobuf::util::converter::DataPiece::ToBool(a1, &v21);
      if (v21)
      {
        google::protobuf::util::internal::StatusOrHelper::Crash(&v21, v12);
      }

      (*(*a4 + 48))(a4, a2, a3, LOBYTE(__p[0]));
    }

    goto LABEL_45;
  }

  switch(v7)
  {
    case 9:
      google::protobuf::util::converter::DataPiece::ToString(a1, &v21);
      if (v21)
      {
        google::protobuf::util::internal::StatusOrHelper::Crash(&v21, v16);
      }

      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v26, __p, v17);
      (*(*a4 + 104))(a4, a2, a3, v26, v27);
      goto LABEL_43;
    case 10:
      google::protobuf::util::converter::DataPiece::ToBytes(a1, &v21);
      if (v21)
      {
        google::protobuf::util::internal::StatusOrHelper::Crash(&v21, v19);
      }

      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v26, __p, v20);
      (*(*a4 + 112))(a4, a2, a3, v26, v27);
LABEL_43:
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

LABEL_45:
      if (v23 < 0)
      {
        operator delete(v22);
      }

      return;
    case 11:
      v9 = *(*a4 + 120);
      v10 = *a4 + 120;

      v9(a4);
      break;
  }
}

void sub_1BFC135B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::util::converter::JsonObjectWriter::~JsonObjectWriter(google::protobuf::util::converter::JsonObjectWriter *this)
{
  *this = &unk_1F3F0FC88;
  v2 = *(this + 2);
  if (v2 && *(v2 + 8))
  {
    google::protobuf::internal::LogMessage::LogMessage(v6, 1, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/util/internal/json_objectwriter.cc", 53);
    v3 = google::protobuf::internal::LogMessage::operator<<(v6, "JsonObjectWriter was not fully closed.");
    google::protobuf::internal::LogFinisher::operator=(&v5, v3);
    google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
  }

  if (*(this + 71) < 0)
  {
    operator delete(*(this + 6));
  }

  v4 = *(this + 2);
  *(this + 2) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }
}

{
  google::protobuf::util::converter::JsonObjectWriter::~JsonObjectWriter(this);

  JUMPOUT(0x1C68D4E80);
}

void google::protobuf::util::converter::JsonObjectWriter::StartObject(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  google::protobuf::util::converter::JsonObjectWriter::WritePrefix(a1, a2, a3);
  google::protobuf::util::converter::JsonObjectWriter::WriteChar(a1, 123);
  google::protobuf::util::converter::JsonObjectWriter::PushObject(a1);
}

void google::protobuf::util::converter::JsonObjectWriter::WritePrefix(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 136))(a1);
  if ((*(v6 + 20) & 1) == 0)
  {
    google::protobuf::util::converter::JsonObjectWriter::WriteChar(a1, 44);
LABEL_6:
    google::protobuf::util::converter::JsonObjectWriter::NewLine(a1);
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  *(v6 + 20) = 0;
  if (*((*(*a1 + 136))(a1) + 8))
  {
    goto LABEL_6;
  }

  if (a3)
  {
LABEL_4:
    google::protobuf::util::converter::JsonObjectWriter::WriteChar(a1, 34);
    __p = &unk_1F3F13278;
    v16 = a2;
    v17 = a3;
    google::protobuf::util::converter::JsonEscaping::Escape(&__p, (a1 + 32), v7);
    goto LABEL_9;
  }

LABEL_7:
  if (*((*(*a1 + 136))(a1) + 21) != 1)
  {
    return;
  }

  google::protobuf::util::converter::JsonObjectWriter::WriteChar(a1, 34);
LABEL_9:
  v8 = *(a1 + 24);
  std::string::basic_string[abi:ne200100]<0>(&__p, ":");
  if (v17 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v17 >= 0)
  {
    v10 = HIBYTE(v17);
  }

  else
  {
    v10 = v16;
  }

  v11 = v8[8];
  if (*v8 - v11 < v10)
  {
    v13 = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(v8, p_p, v10, v8[8]);
  }

  else
  {
    v12 = v10;
    memcpy(v8[8], p_p, v10);
    v13 = &v11[v12];
  }

  v8[8] = v13;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p);
  }

  v14 = *(a1 + 71);
  if (v14 < 0)
  {
    v14 = *(a1 + 56);
  }

  if (v14)
  {
    google::protobuf::util::converter::JsonObjectWriter::WriteChar(a1, 32);
  }
}

void sub_1BFC1391C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *google::protobuf::util::converter::JsonObjectWriter::WriteChar(unsigned __int8 *this, char a2)
{
  v5 = a2;
  v2 = *(this + 3);
  v3 = v2[8];
  if ((*v2 - v3) <= 0)
  {
    this = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(*(this + 3), &v5, 1, v3);
    v4 = this;
  }

  else
  {
    *v3 = a2;
    v4 = v3 + 1;
  }

  v2[8] = v4;
  return this;
}

google::protobuf::util::converter::JsonObjectWriter *google::protobuf::util::converter::JsonObjectWriter::EndObject(google::protobuf::util::converter::JsonObjectWriter *this)
{
  google::protobuf::util::converter::JsonObjectWriter::Pop(this);
  google::protobuf::util::converter::JsonObjectWriter::WriteChar(this, 125);
  if ((*(*this + 136))(this) && !*((*(*this + 136))(this) + 8))
  {
    google::protobuf::util::converter::JsonObjectWriter::NewLine(this);
  }

  return this;
}

uint64_t google::protobuf::util::converter::JsonObjectWriter::Pop(google::protobuf::util::converter::JsonObjectWriter *this)
{
  v2 = *(this + 2);
  v3 = *(v2 + 20);
  if (v3 == 1)
  {
    *(v2 + 20) = 0;
  }

  v4 = *(v2 + 8);
  *(v2 + 8) = 0;
  if (v4)
  {
    v5 = **v4;
    {
      google::protobuf::util::converter::JsonObjectWriter::Pop();
    }
  }

  *(this + 2) = v4;
  result = (*(*v2 + 8))(v2);
  if ((v3 & 1) == 0)
  {

    return google::protobuf::util::converter::JsonObjectWriter::NewLine(this);
  }

  return result;
}

uint64_t google::protobuf::util::converter::JsonObjectWriter::NewLine(uint64_t this)
{
  v1 = this;
  v2 = *(this + 71);
  if (v2 < 0)
  {
    v2 = *(this + 56);
  }

  if (v2)
  {
    google::protobuf::util::converter::JsonObjectWriter::WriteChar(this, 10);
    this = (*(*v1 + 136))(v1);
    if (*(this + 16) >= 1)
    {
      v3 = 0;
      do
      {
        v4 = *(v1 + 24);
        v5 = *(v1 + 71);
        if (v5 >= 0)
        {
          v6 = (v1 + 48);
        }

        else
        {
          v6 = *(v1 + 48);
        }

        if (v5 >= 0)
        {
          LODWORD(v7) = *(v1 + 71);
        }

        else
        {
          v7 = *(v1 + 56);
        }

        v8 = *(v4 + 64);
        if (*v4 - v8 < v7)
        {
          v10 = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(*(v1 + 24), v6, v7, *(v4 + 64));
        }

        else
        {
          v9 = v7;
          memcpy(*(v4 + 64), v6, v7);
          v10 = (v8 + v9);
        }

        *(v4 + 64) = v10;
        ++v3;
        this = (*(*v1 + 136))(v1);
      }

      while (v3 < *(this + 16));
    }
  }

  return this;
}

void google::protobuf::util::converter::JsonObjectWriter::StartList(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  google::protobuf::util::converter::JsonObjectWriter::WritePrefix(a1, a2, a3);
  google::protobuf::util::converter::JsonObjectWriter::WriteChar(a1, 91);
  google::protobuf::util::converter::JsonObjectWriter::PushArray(a1);
}

google::protobuf::util::converter::JsonObjectWriter *google::protobuf::util::converter::JsonObjectWriter::EndList(google::protobuf::util::converter::JsonObjectWriter *this)
{
  google::protobuf::util::converter::JsonObjectWriter::Pop(this);
  google::protobuf::util::converter::JsonObjectWriter::WriteChar(this, 93);
  if (!*((*(*this + 136))(this) + 8))
  {
    google::protobuf::util::converter::JsonObjectWriter::NewLine(this);
  }

  return this;
}

uint64_t google::protobuf::util::converter::JsonObjectWriter::RenderBool(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v7 = "true";
  }

  else
  {
    v7 = "false";
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v7);
  v8 = google::protobuf::util::converter::JsonObjectWriter::RenderSimple(a1, a2, a3, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  return v8;
}

void sub_1BFC13E50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::JsonObjectWriter::RenderSimple(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  google::protobuf::util::converter::JsonObjectWriter::WritePrefix(a1, a2, a3);
  v6 = *(a1 + 24);
  v7 = *(a4 + 23);
  if (v7 >= 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = *a4;
  }

  if (v7 >= 0)
  {
    LODWORD(v9) = *(a4 + 23);
  }

  else
  {
    v9 = *(a4 + 8);
  }

  v10 = *(v6 + 64);
  if (*v6 - v10 < v9)
  {
    v12 = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(*(a1 + 24), v8, v9, *(v6 + 64));
  }

  else
  {
    v11 = v9;
    memcpy(*(v6 + 64), v8, v9);
    v12 = (v10 + v11);
  }

  *(v6 + 64) = v12;
  return a1;
}

uint64_t google::protobuf::util::converter::JsonObjectWriter::RenderInt32(uint64_t a1, uint64_t a2, char *a3, google::protobuf *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  __src = v14;
  v13 = google::protobuf::FastInt32ToBufferLeft(a4, v14, a3) - v14;
  std::string::basic_string[abi:ne200100](__p, v14, v13);
  v7 = google::protobuf::util::converter::JsonObjectWriter::RenderSimple(a1, a2, a3, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1BFC13FBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::JsonObjectWriter::RenderUint32(uint64_t a1, uint64_t a2, char *a3, google::protobuf *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  __src = v14;
  v13 = google::protobuf::FastUInt32ToBufferLeft(a4, v14, a3) - v14;
  std::string::basic_string[abi:ne200100](__p, v14, v13);
  v7 = google::protobuf::util::converter::JsonObjectWriter::RenderSimple(a1, a2, a3, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1BFC140A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::JsonObjectWriter::RenderInt64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  google::protobuf::util::converter::JsonObjectWriter::WritePrefix(a1, a2, a3);
  google::protobuf::util::converter::JsonObjectWriter::WriteChar(a1, 34);
  v6 = *(a1 + 24);
  __src = v20;
  v19 = google::protobuf::FastInt64ToBufferLeft(a4, v20, v7) - v20;
  std::string::basic_string[abi:ne200100](&__p, v20, v19);
  if ((v17 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v17 & 0x80u) == 0)
  {
    v9 = v17;
  }

  else
  {
    v9 = v16;
  }

  v10 = v6[8];
  if (*v6 - v10 < v9)
  {
    v12 = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(v6, p_p, v9, v6[8]);
  }

  else
  {
    v11 = v9;
    memcpy(v6[8], p_p, v9);
    v12 = &v10[v11];
  }

  v6[8] = v12;
  if (v17 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::util::converter::JsonObjectWriter::WriteChar(a1, 34);
  v13 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1BFC141E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::JsonObjectWriter::RenderUint64(uint64_t a1, uint64_t a2, uint64_t a3, google::protobuf *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  google::protobuf::util::converter::JsonObjectWriter::WritePrefix(a1, a2, a3);
  google::protobuf::util::converter::JsonObjectWriter::WriteChar(a1, 34);
  v6 = *(a1 + 24);
  __src = v20;
  v19 = google::protobuf::FastUInt64ToBufferLeft(a4, v20, v7) - v20;
  std::string::basic_string[abi:ne200100](&__p, v20, v19);
  if ((v17 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v17 & 0x80u) == 0)
  {
    v9 = v17;
  }

  else
  {
    v9 = v16;
  }

  v10 = v6[8];
  if (*v6 - v10 < v9)
  {
    v12 = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(v6, p_p, v9, v6[8]);
  }

  else
  {
    v11 = v9;
    memcpy(v6[8], p_p, v9);
    v12 = &v10[v11];
  }

  v6[8] = v12;
  if (v17 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::util::converter::JsonObjectWriter::WriteChar(a1, 34);
  v13 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1BFC1432C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::JsonObjectWriter::RenderDouble(uint64_t a1, char *a2, uint64_t a3, double a4)
{
  if ((*&a4 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    google::protobuf::SimpleDtoa(a4, a2, __p);
    v8 = google::protobuf::util::converter::JsonObjectWriter::RenderSimple(a1, a2, a3, __p);
  }

  else
  {
    google::protobuf::util::converter::DoubleAsString(a4, a2, __p);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v11, __p, v7);
    v8 = (*(*a1 + 104))(a1, a2, a3, v11[0], v11[1]);
  }

  v9 = v8;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}

void sub_1BFC1441C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::JsonObjectWriter::RenderFloat(uint64_t a1, char *a2, uint64_t a3, float a4)
{
  if ((LODWORD(a4) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    google::protobuf::SimpleFtoa(a4, a2, __p);
    v8 = google::protobuf::util::converter::JsonObjectWriter::RenderSimple(a1, a2, a3, __p);
  }

  else
  {
    google::protobuf::util::converter::FloatAsString(a4, a2, __p);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v11, __p, v7);
    v8 = (*(*a1 + 104))(a1, a2, a3, v11[0], v11[1]);
  }

  v9 = v8;
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  return v9;
}

void sub_1BFC14508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *google::protobuf::util::converter::JsonObjectWriter::RenderString(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  google::protobuf::util::converter::JsonObjectWriter::WritePrefix(a1, a2, a3);
  google::protobuf::util::converter::JsonObjectWriter::WriteChar(a1, 34);
  v10[0] = &unk_1F3F13278;
  v10[1] = a4;
  v10[2] = a5;
  google::protobuf::util::converter::JsonEscaping::Escape(v10, (a1 + 32), v8);
  google::protobuf::util::converter::JsonObjectWriter::WriteChar(a1, 34);
  return a1;
}

uint64_t google::protobuf::util::converter::JsonObjectWriter::RenderBytes(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, google::protobuf *a5)
{
  google::protobuf::util::converter::JsonObjectWriter::WritePrefix(a1, a2, a3);
  v19 = 0;
  v20 = 0;
  v21 = 0;
  if (*(a1 + 72) == 1)
  {
    if (a4)
    {
      std::string::basic_string[abi:ne200100](__p, a4, a5);
    }

    else
    {
      __p[0] = 0;
      __p[1] = 0;
      v17 = 0;
    }

    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v18, __p, v8);
    google::protobuf::WebSafeBase64EscapeWithPadding(v18[0], v18[1], &v19);
    if (SHIBYTE(v17) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    google::protobuf::Base64Escape(a4, a5, &v19);
  }

  google::protobuf::util::converter::JsonObjectWriter::WriteChar(a1, 34);
  v9 = *(a1 + 24);
  if (v21 >= 0)
  {
    v10 = &v19;
  }

  else
  {
    v10 = v19;
  }

  if (v21 >= 0)
  {
    v11 = HIBYTE(v21);
  }

  else
  {
    v11 = v20;
  }

  v12 = *(v9 + 64);
  if (*v9 - v12 < v11)
  {
    v14 = google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(*(a1 + 24), v10, v11, *(v9 + 64));
  }

  else
  {
    v13 = v11;
    memcpy(*(v9 + 64), v10, v11);
    v14 = (v12 + v13);
  }

  *(v9 + 64) = v14;
  google::protobuf::util::converter::JsonObjectWriter::WriteChar(a1, 34);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v19);
  }

  return a1;
}

void sub_1BFC146E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::JsonObjectWriter::RenderNull(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "null");
  v6 = google::protobuf::util::converter::JsonObjectWriter::RenderSimple(a1, a2, a3, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_1BFC14790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::JsonObjectWriter::RenderNullAsEmpty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  v6 = google::protobuf::util::converter::JsonObjectWriter::RenderSimple(a1, a2, a3, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_1BFC14820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::JsonEscaping::Escape(google::protobuf::util::converter::JsonEscaping *this, google::protobuf::strings::ByteSource *a2, google::protobuf::strings::ByteSink *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  strcpy(v35, "\\udead\\ubee");
  result = (*(*this + 16))(this, a2, a3);
  if (!result)
  {
    goto LABEL_77;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  do
  {
    v8 = (*(*this + 24))(this);
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v30 = v9;
    v31 = v8;
    while (1)
    {
      v33 = v8;
      v34 = v10;
      if (!v7)
      {
        break;
      }

      v32 = v11;
      v13 = 0;
      v14 = v12;
LABEL_6:
      v15 = v7;
      v16 = v14;
      v7 = v7 & (v7 >> 31);
      v17 = v15 + v13 - v7;
      while (v7 != v15)
      {
        v18 = v34 <= v16;
        if (v34 <= v16)
        {
          goto LABEL_60;
        }

        v19 = v16 + 1;
        v20 = google::protobuf::StringPiece::operator[](&v33, v16);
        v15 = (v15 - 1);
        ++v13;
        v16 = v19;
        v21 = v20 < -64;
        v22 = v20 & 0x3Fu | (v5 << 6);
        v5 = v22;
        if (!v21)
        {
          goto LABEL_61;
        }
      }

      if (WORD1(v5) > 0x10u || (v10 = v30, v8 = v31, (v5 & 0xFFFFF800) == 0xD800))
      {
        v18 = 0;
        v26 = 0;
        goto LABEL_62;
      }

LABEL_15:
      if (v5 > 0x9F)
      {
        if (v5 > 65278)
        {
          if ((v5 - 65529) < 3 || v5 == 65279)
          {
LABEL_51:
            goto LABEL_52;
          }
        }

        else if (v5 > 6067)
        {
          if ((v5 - 6068) < 2)
          {
            goto LABEL_51;
          }
        }

        else if (v5 == 173 || v5 == 1757 || v5 == 1807)
        {
          goto LABEL_51;
        }

        if ((v5 & 0xFFFFFFFC) == 0x600 || (v5 - 8203) <= 0x23 && ((1 << (v5 - 11)) & 0xFE000001FLL) != 0 || (v5 - 8288) <= 0xF && ((1 << (v5 - 96)) & 0xFC1F) != 0)
        {
LABEL_52:
          v35[2] = v27;
          v32 = v35;
          v18 = 1;
          v26 = 6;
          goto LABEL_62;
        }

        if ((v5 - 917536) < 0x60 || (v5 - 119155) < 8 || v5 == 917505)
        {
          v35[8] = 100;
          v32 = v35;
          v18 = 1;
          v26 = 12;
          goto LABEL_62;
        }

        if (v6 >= 1)
        {
          v35[5] = v5 & 0x3F | 0x80;
          if (v5 > 0x7FF)
          {
            v35[4] = (v5 >> 6) & 0x3F | 0x80;
            if (WORD1(v5))
            {
              v35[3] = (v5 >> 12) & 0x3F | 0x80;
              v35[2] = (v5 >> 18) | 0xF0;
              v18 = 1;
              v32 = &v35[2];
              v26 = 4;
            }

            else
            {
              v35[3] = (v5 >> 12) | 0xE0;
              v18 = 1;
              v32 = &v35[3];
              v26 = 3;
            }

            goto LABEL_62;
          }

LABEL_57:
          v35[4] = (v5 >> 6) | 0xC0;
          v18 = 1;
          v32 = &v35[4];
          v26 = 2;
          goto LABEL_62;
        }

        v11 = 0;
      }

      else
      {
        v24 = strlen(v11);
        v26 = v24;
        if ((v24 & 0x8000000000000000) != 0)
        {
          google::protobuf::StringPiece::LogFatalSizeTooBig(v24, "size_t to int conversion", v25);
          goto LABEL_58;
        }

        if (v6 >= 1 && !v24)
        {
          v35[5] = v5 & 0x3F | 0x80;
          goto LABEL_57;
        }

        if (v24)
        {
LABEL_58:
          v18 = 1;
          goto LABEL_62;
        }
      }

      v12 += v17;
      if (v10 <= v12)
      {
        v32 = v11;
        v26 = 0;
        v17 = 0;
        goto LABEL_58;
      }
    }

    v23 = google::protobuf::StringPiece::operator[](&v33, v12);
    v5 = v23;
    if ((v23 & 0x80000000) == 0)
    {
      v7 = 0;
      v17 = 1;
      goto LABEL_15;
    }

    v32 = v11;
    if (v23 < 0xC0u)
    {
      goto LABEL_59;
    }

    v14 = v12 + 1;
    if (v23 <= 0xDFu)
    {
      v5 = v23 & 0x1F;
      v7 = 1;
      v13 = 1;
      goto LABEL_6;
    }

    if (v23 <= 0xEFu)
    {
      v5 = v23 & 0xF;
      v13 = 1;
      v7 = 2;
      goto LABEL_6;
    }

    if (v23 <= 0xF7u)
    {
      v5 = v23 & 7;
      v13 = 1;
      v7 = 3;
      goto LABEL_6;
    }

LABEL_59:
    v15 = 0;
    v18 = 0;
    v13 = 1;
LABEL_60:
    v22 = v5;
LABEL_61:
    v26 = 0;
    v5 = v22;
    v7 = v15;
    v17 = v13;
LABEL_62:
    if (v12 >= 1)
    {
      (*(*this + 40))(this, a2, v12);
    }

    if (v17 >= 1)
    {
      (*(*this + 32))(this, v17);
    }

    if (v18)
    {
      if (!v7)
      {
        if (v26)
        {
          (*(*a2 + 16))(a2, v32, v26);
        }

        goto LABEL_70;
      }
    }

    else
    {
LABEL_70:
      v7 = 0;
    }

    result = (*(*this + 16))(this);
    v6 = v7;
  }

  while (result);
LABEL_77:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void google::protobuf::util::converter::ConvertFieldMaskPath(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  v5 = a2;
  v19 = a1;
  v20 = a2;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  a4->__r_.__value_.__r.__words[0] = 0;
  std::string::reserve(a4, 2 * a2);
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    if (v10)
    {
      if (v7 == v5)
      {
        return;
      }

      v11 = google::protobuf::StringPiece::operator[](&v19, v7);
      std::string::push_back(a4, v11);
      if (v9)
      {
LABEL_5:
        v9 = 0;
        v10 = 1;
        goto LABEL_29;
      }

      if (google::protobuf::StringPiece::operator[](&v19, v7) == 92)
      {
        v10 = 1;
        v9 = 1;
      }

      else
      {
        if (google::protobuf::StringPiece::operator[](&v19, v7) != 34)
        {
          goto LABEL_5;
        }

        v10 = 0;
        v9 = 0;
        v8 = v7 + 1;
      }
    }

    else
    {
      if (v7 == v5 || google::protobuf::StringPiece::operator[](&v19, v7) == 46 || google::protobuf::StringPiece::operator[](&v19, v7) == 40 || google::protobuf::StringPiece::operator[](&v19, v7) == 41 || google::protobuf::StringPiece::operator[](&v19, v7) == 34)
      {
        v12 = google::protobuf::StringPiece::substr(&v19, v8, v7 - v8);
        std::function<std::string ()(google::protobuf::StringPiece)>::operator()(a3, v12, v13);
        if ((v18 & 0x80u) == 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        if ((v18 & 0x80u) == 0)
        {
          v15 = v18;
        }

        else
        {
          v15 = __p[1];
        }

        std::string::append(a4, v14, v15);
        if (v18 < 0)
        {
          operator delete(__p[0]);
        }

        if (v7 < v20)
        {
          v16 = google::protobuf::StringPiece::operator[](&v19, v7);
          std::string::push_back(a4, v16);
        }

        v8 = v7 + 1;
      }

      v10 = v7 < v20 && google::protobuf::StringPiece::operator[](&v19, v7) == 34;
    }

LABEL_29:
    ++v7;
    v5 = v20;
  }

  while (v7 <= v20);
}

void sub_1BFC150A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<std::string ()(google::protobuf::StringPiece)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, v5);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E5558] + 16;
  __cxa_throw(exception, MEMORY[0x1E69E53C0], MEMORY[0x1E69E52E8]);
}

void google::protobuf::util::converter::DefaultValueObjectWriter::DefaultValueObjectWriter(uint64_t a1)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F3F0FD48;
  google::protobuf::util::converter::TypeInfo::NewTypeInfo();
}

void google::protobuf::util::converter::DefaultValueObjectWriter::~DefaultValueObjectWriter(google::protobuf::util::converter::DefaultValueObjectWriter *this)
{
  *this = &unk_1F3F0FD48;
  if (*(this + 24) == 1)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::~__value_func[abi:ne200100](this + 136);
  std::deque<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::~deque[abi:ne200100](this + 10);
  v3 = *(this + 9);
  *(this + 9) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = (this + 40);
  std::vector<std::unique_ptr<std::string>>::__destroy_vector::operator()[abi:ne200100](&v4);
}

{
  google::protobuf::util::converter::DefaultValueObjectWriter::~DefaultValueObjectWriter(this);

  JUMPOUT(0x1C68D4E80);
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::RenderBool(uint64_t a1, char *a2, const void *a3, char a4)
{
  if (*(a1 + 64))
  {
    v6 = &unk_1F3F0FB38;
    v7 = 7;
    v8 = a4;
    v9 = 0;
    google::protobuf::util::converter::DefaultValueObjectWriter::RenderDataPiece(a1, a2, a3, &v6);
  }

  else
  {
    (*(**(a1 + 168) + 48))(*(a1 + 168));
  }

  return a1;
}

void google::protobuf::util::converter::DefaultValueObjectWriter::RenderDataPiece(uint64_t a1, char *a2, const void *a3, google::protobuf::util::converter::DataPiece *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v45[0] = a2;
  v45[1] = a3;
  google::protobuf::util::converter::DefaultValueObjectWriter::MaybePopulateChildrenOfAny(a1, *(a1 + 64));
  v8 = *(a1 + 64);
  v9 = *(v8 + 32);
  if (v9)
  {
    v10 = *(v9 + 88);
    v11 = *(v10 + 23);
    if (v11 < 0)
    {
      if (v10[1] != 19)
      {
        goto LABEL_20;
      }

      v10 = *v10;
    }

    else if (v11 != 19)
    {
      goto LABEL_20;
    }

    v12 = *v10;
    v13 = v10[1];
    v14 = *(v10 + 11);
    if (v12 == 0x702E656C676F6F67 && v13 == 0x2E6675626F746F72 && v14 == 0x796E412E6675626FLL && a3 == 5)
    {
      if (a2 == "@type" || (*a2 == 1887007808 ? (v27 = a2[4] == 101) : (v27 = 0), v27))
      {
        google::protobuf::util::converter::DataPiece::ToString(a4, __p);
        if (!LODWORD(__p[0]))
        {
          v29 = *(a1 + 16);
          google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v36, v43, v28);
          (*(*v29 + 16))(v37, v29, v36[0].__r_.__value_.__r.__words[0], v36[0].__r_.__value_.__l.__size_);
          if (LODWORD(v37[0]))
          {
            google::protobuf::internal::LogMessage::LogMessage(v36, 1, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/util/internal/default_value_objectwriter.cc", 598);
            v30 = google::protobuf::internal::LogMessage::operator<<(v36, "Failed to resolve type '");
            v31 = google::protobuf::internal::LogMessage::operator<<(v30, v43);
            v32 = google::protobuf::internal::LogMessage::operator<<(v31, "'.");
            google::protobuf::internal::LogFinisher::operator=(&v35, v32);
            google::protobuf::internal::LogMessage::~LogMessage(&v36[0].__r_.__value_.__l.__data_);
            v33 = *(a1 + 64);
          }

          else
          {
            v33 = *(a1 + 64);
            *(v33 + 32) = v39;
          }

          *(v33 + 44) = 1;
          if (((*(v33 + 96) - *(v33 + 88)) >> 3) >= 2 && *(v33 + 32))
          {
            (*(*v33 + 16))(v33, *(a1 + 16));
          }

          if (v38 < 0)
          {
            operator delete(v37[1]);
          }
        }

        if (v44 < 0)
        {
          operator delete(v43[0]);
        }

        if (v42 < 0)
        {
          operator delete(__p[1]);
        }

        v8 = *(a1 + 64);
      }
    }
  }

LABEL_20:
  Child = google::protobuf::util::converter::DefaultValueObjectWriter::Node::FindChild(v8, a2, a3);
  v20 = Child;
  if (Child)
  {
    if (!Child[2].n128_u32[2])
    {
      google::protobuf::util::converter::DataPiece::InternalCopy(Child + 3, a4);
      v20[7].n128_u8[0] = 0;
      goto LABEL_28;
    }

    google::protobuf::StringPiece::operator std::string(v45, __p);
  }

  else
  {
    google::protobuf::StringPiece::operator std::string(v45, __p);
    v20 = *(a1 + 64);
  }

  v21 = *(a1 + 128);
  v22 = *(a1 + 129);
  v23 = *(a1 + 130);
  std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::__value_func[abi:ne200100](v46, a1 + 136);
  HIBYTE(v34) = v23;
  LOBYTE(v34) = v22;
  v24 = (*(*a1 + 136))(a1, __p, 0, 0, a4, 0, &v20[7].n128_i64[1], v21, v34, v46);
  std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::~__value_func[abi:ne200100](v46);
  if (v41 < 0)
  {
    operator delete(__p[0]);
  }

  v25 = *(a1 + 64);
  __p[0] = v24;
  std::vector<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::push_back[abi:ne200100](v25 + 88, __p);
LABEL_28:
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1BFC15728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  std::pair<siri::dialogengine::NumberOperation,siri::dialogengine::SemanticFeatureConstraint>::~pair(&a26);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::RenderInt32(uint64_t a1, char *a2, const void *a3, int a4)
{
  if (*(a1 + 64))
  {
    v6 = &unk_1F3F0FB38;
    v7 = 1;
    v8 = a4;
    v9 = 0;
    google::protobuf::util::converter::DefaultValueObjectWriter::RenderDataPiece(a1, a2, a3, &v6);
  }

  else
  {
    (*(**(a1 + 168) + 56))(*(a1 + 168));
  }

  return a1;
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::RenderUint32(uint64_t a1, char *a2, const void *a3, int a4)
{
  if (*(a1 + 64))
  {
    v6 = &unk_1F3F0FB38;
    v7 = 3;
    v8 = a4;
    v9 = 0;
    google::protobuf::util::converter::DefaultValueObjectWriter::RenderDataPiece(a1, a2, a3, &v6);
  }

  else
  {
    (*(**(a1 + 168) + 64))(*(a1 + 168));
  }

  return a1;
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::RenderInt64(uint64_t a1, char *a2, const void *a3, uint64_t a4)
{
  if (*(a1 + 64))
  {
    v6 = &unk_1F3F0FB38;
    v7 = 2;
    v8 = a4;
    v9 = 0;
    google::protobuf::util::converter::DefaultValueObjectWriter::RenderDataPiece(a1, a2, a3, &v6);
  }

  else
  {
    (*(**(a1 + 168) + 72))(*(a1 + 168));
  }

  return a1;
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::RenderUint64(uint64_t a1, char *a2, const void *a3, uint64_t a4)
{
  if (*(a1 + 64))
  {
    v6 = &unk_1F3F0FB38;
    v7 = 4;
    v8 = a4;
    v9 = 0;
    google::protobuf::util::converter::DefaultValueObjectWriter::RenderDataPiece(a1, a2, a3, &v6);
  }

  else
  {
    (*(**(a1 + 168) + 80))(*(a1 + 168));
  }

  return a1;
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::RenderDouble(uint64_t a1, char *a2, const void *a3, double a4)
{
  if (*(a1 + 64))
  {
    v6 = &unk_1F3F0FB38;
    v7 = 5;
    v8 = a4;
    v9 = 0;
    google::protobuf::util::converter::DefaultValueObjectWriter::RenderDataPiece(a1, a2, a3, &v6);
  }

  else
  {
    (*(**(a1 + 168) + 88))(*(a1 + 168));
  }

  return a1;
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::RenderFloat(uint64_t a1, char *a2, const void *a3, float a4)
{
  if (*(a1 + 64))
  {
    v6 = &unk_1F3F0FB38;
    v7 = 6;
    v8 = a4;
    v9 = 0;
    google::protobuf::util::converter::DefaultValueObjectWriter::RenderDataPiece(a1, a2, a3, &v6);
  }

  else
  {
    (*(**(a1 + 168) + 48))(*(a1 + 168), a2, a3, a4 != 0.0);
  }

  return a1;
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::RenderString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  v8 = a5;
  if (*(a1 + 64))
  {
    operator new();
  }

  (*(**(a1 + 168) + 104))(*(a1 + 168), a2, a3);
  return a1;
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::RenderBytes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  v8 = a5;
  if (*(a1 + 64))
  {
    operator new();
  }

  (*(**(a1 + 168) + 112))(*(a1 + 168), a2, a3);
  return a1;
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::RenderNull(uint64_t a1, char *a2, const void *a3)
{
  if (*(a1 + 64))
  {
    v5 = &unk_1F3F0FB38;
    v6 = 11;
    v7 = 0;
    v8 = 0;
    google::protobuf::util::converter::DefaultValueObjectWriter::RenderDataPiece(a1, a2, a3, &v5);
  }

  else
  {
    (*(**(a1 + 168) + 120))(*(a1 + 168));
  }

  return a1;
}

void sub_1BFC160B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::~__value_func[abi:ne200100](va);
  MEMORY[0x1C68D4E80](v4, 0x10F3C40E6EBD5D3);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::Node::Node(uint64_t a1, __int128 *a2, uint64_t a3, int a4, __n128 *a5, char a6, uint64_t *a7, char a8, char a9, char a10, uint64_t a11)
{
  *a1 = &unk_1F3F0FDE8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v18 = *a2;
    *(a1 + 24) = *(a2 + 2);
    *(a1 + 8) = v18;
  }

  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 44) = 0;
  *(a1 + 48) = &unk_1F3F0FB38;
  *(a1 + 56) = a5->n128_u32[2];
  google::protobuf::util::converter::DataPiece::InternalCopy((a1 + 48), a5);
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = a6;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1 + 120, *a7, a7[1], 0xAAAAAAAAAAAAAAABLL * ((a7[1] - *a7) >> 3));
  *(a1 + 144) = a8;
  *(a1 + 145) = a9;
  *(a1 + 146) = a10;
  std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::__value_func[abi:ne200100](a1 + 152, a11);
  return a1;
}

void sub_1BFC16210(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 96) = v5;
    operator delete(v5);
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::Node::FindChild(uint64_t a1, void *a2, const char *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (*(a1 + 40) != 1)
  {
    return 0;
  }

  v4 = *(a1 + 88);
  if (*(a1 + 96) == v4)
  {
    return 0;
  }

  v7 = 0;
  while (1)
  {
    v8 = *(v4 + 8 * v7);
    google::protobuf::StringPiece::StringPiece<std::allocator<char>>(__s1, (v8 + 8), a3);
    if (__s1[1] == a3)
    {
      v9 = __s1[0] == a2 || a3 <= 0;
      if (v9 || !memcmp(__s1[0], a2, a3))
      {
        break;
      }
    }

    ++v7;
    v4 = *(a1 + 88);
    if (v7 >= (*(a1 + 96) - v4) >> 3)
    {
      return 0;
    }
  }

  return v8;
}

void google::protobuf::util::converter::DefaultValueObjectWriter::Node::WriteTo(google::protobuf::util::converter::DefaultValueObjectWriter::Node *this, google::protobuf::util::converter::ObjectWriter *a2, const char *a3)
{
  v5 = *(this + 10);
  switch(v5)
  {
    case 3:
LABEL_9:
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v6, this + 1, a3);
      (*(*a2 + 16))(a2, v6, v7);
      google::protobuf::util::converter::DefaultValueObjectWriter::Node::WriteChildren(this, a2);
      (*(*a2 + 24))(a2);
      return;
    case 2:
      if (*(this + 144) != 1 || (*(this + 112) & 1) == 0)
      {
        google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v6, this + 1, a3);
        (*(*a2 + 32))(a2, v6, v7);
        google::protobuf::util::converter::DefaultValueObjectWriter::Node::WriteChildren(this, a2);
        (*(*a2 + 40))(a2);
      }

      break;
    case 0:
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v6, this + 1, a3);
      google::protobuf::util::converter::ObjectWriter::RenderDataPieceTo((this + 48), v6, v7, a2);
      return;
    default:
      if ((*(this + 112) & 1) == 0)
      {
        goto LABEL_9;
      }

      break;
  }
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::Node::WriteChildren(uint64_t this, google::protobuf::util::converter::ObjectWriter *a2)
{
  v2 = *(this + 88);
  if (*(this + 96) != v2)
  {
    v4 = this;
    v5 = 0;
    do
    {
      this = (*(**(v2 + 8 * v5) + 24))(*(v2 + 8 * v5), a2);
      ++v5;
      v2 = *(v4 + 88);
    }

    while (v5 < (*(v4 + 96) - v2) >> 3);
  }

  return this;
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::Node::GetMapValueType(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 24) < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::Field>::TypeHandler>(a2 + 16, v5);
    if (*(v6 + 80) == 2)
    {
      break;
    }

    if (++v5 >= *(a2 + 24))
    {
      return 0;
    }
  }

  v8 = v6;
  if (*(v6 + 72) != 11)
  {
    return 0;
  }

  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v15, *(v6 + 48), v7);
  (*(*a3 + 16))(v16, a3, v15[0].__r_.__value_.__r.__words[0], v15[0].__r_.__value_.__l.__size_);
  if (LODWORD(v16[0]))
  {
    google::protobuf::internal::LogMessage::LogMessage(v15, 1, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/util/internal/default_value_objectwriter.cc", 291);
    v9 = google::protobuf::internal::LogMessage::operator<<(v15, "Cannot resolve type '");
    v10 = google::protobuf::internal::LogMessage::operator<<(v9, *(v8 + 48));
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, "'.");
    google::protobuf::internal::LogFinisher::operator=(&v14, v11);
    google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
    v12 = 0;
  }

  else
  {
    v12 = v18;
  }

  if (v17 < 0)
  {
    operator delete(v16[1]);
  }

  return v12;
}

void sub_1BFC16614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  google::protobuf::internal::LogMessage::~LogMessage(&a10);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void google::protobuf::util::converter::DefaultValueObjectWriter::Node::PopulateChildren(uint64_t a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!v2)
  {
    goto LABEL_95;
  }

  v4 = *(v2 + 88);
  if (*(v4 + 23) < 0)
  {
    if (v4[1] == 19)
    {
      v11 = **v4 == 0x702E656C676F6F67 && *(*v4 + 8) == 0x2E6675626F746F72;
      if (v11 && *(*v4 + 11) == 0x796E412E6675626FLL)
      {
        goto LABEL_95;
      }
    }

    if (v4[1] == 22)
    {
      v13 = **v4 == 0x702E656C676F6F67 && *(*v4 + 8) == 0x2E6675626F746F72;
      if (v13 && *(*v4 + 14) == 0x7463757274532E66)
      {
        goto LABEL_95;
      }
    }

    v15 = v4[1];
    if (v15 != 21)
    {
      if (v15 != 24)
      {
        if (v15 == 25)
        {
          v16 = *v4;
          v17 = *v16;
          v18 = v16[1];
          v19 = v16[2];
          v20 = *(v16 + 24);
          v21 = v17 == 0x702E656C676F6F67 && v18 == 0x2E6675626F746F72;
          v22 = v21 && v19 == 0x6D617473656D6954;
          if (v22 && v20 == 112)
          {
            goto LABEL_95;
          }
        }

        goto LABEL_58;
      }

      v26 = *v4;
      v27 = *v26;
      v28 = v26[1];
      v8 = v26[2];
      v9 = v27 == 0x702E656C676F6F67 && v28 == 0x2E6675626F746F72;
      v10 = 0x6E6F697461727544;
      goto LABEL_54;
    }

    v4 = *v4;
    goto LABEL_50;
  }

  v5 = *(v4 + 23);
  switch(v5)
  {
    case 19:
      v24 = *v4;
      v25 = v4[1];
      v8 = *(v4 + 11);
      v9 = v24 == 0x702E656C676F6F67 && v25 == 0x2E6675626F746F72;
      v10 = 0x796E412E6675626FLL;
LABEL_54:
      if (v9 && v8 == v10)
      {
        goto LABEL_95;
      }

      break;
    case 21:
LABEL_50:
      v29 = *v4;
      v30 = v4[1];
      v8 = *(v4 + 13);
      v9 = v29 == 0x702E656C676F6F67 && v30 == 0x2E6675626F746F72;
      v10 = 0x65756C61562E6675;
      goto LABEL_54;
    case 22:
      v6 = *v4;
      v7 = v4[1];
      v8 = *(v4 + 14);
      v9 = v6 == 0x702E656C676F6F67 && v7 == 0x2E6675626F746F72;
      v10 = 0x7463757274532E66;
      goto LABEL_54;
  }

LABEL_58:
  v64 = 0uLL;
  v65 = 0;
  memset(v62, 0, sizeof(v62));
  v63 = 1065353216;
  LODWORD(v57.__r_.__value_.__l.__data_) = 0;
  v32 = *(a1 + 88);
  v33 = *(a1 + 96);
  if (v33 != v32)
  {
    v34 = 0;
    do
    {
      google::protobuf::InsertIfNotPresent<std::unordered_map<std::string,int>>(v62, *(v32 + 8 * v34) + 8, &v57);
      v34 = SLODWORD(v57.__r_.__value_.__l.__data_) + 1;
      ++LODWORD(v57.__r_.__value_.__l.__data_);
      v32 = *(a1 + 88);
      v33 = *(a1 + 96);
    }

    while (v34 < (v33 - v32) >> 3);
    v2 = *(a1 + 32);
  }

  if (*(v2 + 24) >= 1)
  {
    v35 = 0;
    while (1)
    {
      v36 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::Field>::TypeHandler>(v2 + 16, v35);
      memset(&v61, 0, sizeof(v61));
      v37 = *(a1 + 120);
      v38 = *(a1 + 128);
      v39 = *(a1 + 120);
      if (v39 != v38)
      {
        std::vector<std::string>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::string*>,std::__wrap_iter<std::string*>>(&v61, 0, v39, v38, 0xAAAAAAAAAAAAAAABLL * ((v38 - v39) >> 3));
      }

      std::vector<std::string>::push_back[abi:ne200100](&v61, *(v36 + 40));
      if (!*(a1 + 176) || (std::function<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::operator()(a1 + 152, &v61, v36) & 1) == 0)
      {
        v40 = std::__hash_table<std::__hash_value_type<std::string,std::unordered_set<std::string> const>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string> const>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unordered_set<std::string> const>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unordered_set<std::string> const>>>::find<std::string>(v62, *(v36 + 40));
        v42 = v40;
        if (!v40)
        {
          if (*(v36 + 72) == 11)
          {
            google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v57, *(v36 + 48), v41);
            (*(*a2 + 16))(v58);
            if (LODWORD(v58[0]))
            {
              google::protobuf::internal::LogMessage::LogMessage(&v57, 1, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/util/internal/default_value_objectwriter.cc", 355);
              v44 = google::protobuf::internal::LogMessage::operator<<(&v57, "Cannot resolve type '");
              v45 = google::protobuf::internal::LogMessage::operator<<(v44, *(v36 + 48));
              v46 = google::protobuf::internal::LogMessage::operator<<(v45, "'.");
              google::protobuf::internal::LogFinisher::operator=(&v56, v46);
              google::protobuf::internal::LogMessage::~LogMessage(&v57.__r_.__value_.__l.__data_);
              goto LABEL_76;
            }

            v48 = v60;
            IsMap = google::protobuf::util::converter::IsMap(v36, v60, v43);
            if (IsMap)
            {
              google::protobuf::util::converter::DefaultValueObjectWriter::Node::GetMapValueType(IsMap, v48, a2);
              v47 = 3;
              v50 = 1;
            }

            else
            {
LABEL_76:
              v50 = 0;
              v47 = 1;
            }

            if (v59 < 0)
            {
              operator delete(v58[1]);
              if (v50)
              {
                goto LABEL_85;
              }
            }

            else if (v50)
            {
              goto LABEL_85;
            }
          }

          else
          {
            v47 = 0;
          }

          if (*(v36 + 76) == 3)
          {
            v47 = 2;
          }

          if (!*(v36 + 84) || v47)
          {
LABEL_85:
            operator new();
          }

          goto LABEL_86;
        }

        std::vector<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::push_back[abi:ne200100](&v64, (*(a1 + 88) + 8 * *(v40 + 10)));
        *(*(a1 + 88) + 8 * *(v42 + 10)) = 0;
      }

LABEL_86:
      v57.__r_.__value_.__r.__words[0] = &v61;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v57);
      ++v35;
      v2 = *(a1 + 32);
      if (v35 >= *(v2 + 24))
      {
        v32 = *(a1 + 88);
        v33 = *(a1 + 96);
        break;
      }
    }
  }

  if (v33 != v32)
  {
    v51 = 0;
    v52 = 0;
    do
    {
      if (*(v32 + v51))
      {
        std::vector<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::insert(&v64, v64, (v32 + v51));
        *(*(a1 + 88) + v51) = 0;
        v32 = *(a1 + 88);
        v33 = *(a1 + 96);
      }

      ++v52;
      v51 += 8;
    }

    while (v52 < (v33 - v32) >> 3);
  }

  *(a1 + 88) = v64;
  *&v64 = v32;
  *(&v64 + 1) = v33;
  v53 = *(a1 + 104);
  *(a1 + 104) = v65;
  v65 = v53;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v62);
  if (v64)
  {
    *(&v64 + 1) = v64;
    operator delete(v64);
  }

LABEL_95:
  v54 = *MEMORY[0x1E69E9840];
}

void sub_1BFC16D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  a19 = &a27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a19);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a30);
  v32 = *(v30 + 48);
  if (v32)
  {
    *(v30 + 56) = v32;
    operator delete(v32);
  }

  _Unwind_Resume(a1);
}

uint64_t google::protobuf::InsertIfNotPresent<std::unordered_map<std::string,int>>(void *a1, uint64_t a2, int *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v9 = *a3;
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::pair<std::string const,int> const&>(a1, &__p.__r_.__value_.__l.__data_);
  v6 = v5;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v6 & 1;
}

void sub_1BFC16EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

void std::vector<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void google::protobuf::util::converter::DefaultValueObjectWriter::CreateDefaultDataPieceForField(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  switch(*(a1 + 72))
  {
    case 1:
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v25, *(a1 + 64), a3);
      if (v26)
      {
        v27 = &unk_1F3F0FB38;
        v28 = 9;
        v29 = v25;
        v30 = v26;
        v31 = 1;
        google::protobuf::util::converter::DataPiece::ToDouble(&v27, v19, v20, __p);
        if (LODWORD(__p[0]))
        {
          v21 = 0.0;
        }

        else
        {
          v21 = v34;
        }

        if (v33 < 0)
        {
          operator delete(__p[1]);
        }
      }

      else
      {
        v21 = 0.0;
      }

      *a4 = &unk_1F3F0FB38;
      *(a4 + 8) = 5;
      *(a4 + 16) = v21;
      goto LABEL_58;
    case 2:
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v25, *(a1 + 64), a3);
      if (v26)
      {
        v27 = &unk_1F3F0FB38;
        v28 = 9;
        v29 = v25;
        v30 = v26;
        v31 = 1;
        google::protobuf::util::converter::DataPiece::ToFloat(&v27, v22, v23, __p);
        if (LODWORD(__p[0]))
        {
          v24 = 0.0;
        }

        else
        {
          v24 = *&v34;
        }

        if (v33 < 0)
        {
          operator delete(__p[1]);
        }
      }

      else
      {
        v24 = 0.0;
      }

      *a4 = &unk_1F3F0FB38;
      *(a4 + 8) = 6;
      *(a4 + 16) = v24;
      goto LABEL_58;
    case 3:
    case 0x10:
    case 0x12:
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v25, *(a1 + 64), a3);
      if (v26)
      {
        v27 = &unk_1F3F0FB38;
        v28 = 9;
        v29 = v25;
        v30 = v26;
        v31 = 1;
        google::protobuf::util::converter::DataPiece::ToInt64(&v27, v5, v6, __p);
        if (LODWORD(__p[0]))
        {
          v7 = 0.0;
        }

        else
        {
          v7 = v34;
        }

        if (v33 < 0)
        {
          operator delete(__p[1]);
        }
      }

      else
      {
        v7 = 0.0;
      }

      *a4 = &unk_1F3F0FB38;
      v16 = 2;
      goto LABEL_57;
    case 4:
    case 6:
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v25, *(a1 + 64), a3);
      if (v26)
      {
        v27 = &unk_1F3F0FB38;
        v28 = 9;
        v29 = v25;
        v30 = v26;
        v31 = 1;
        google::protobuf::util::converter::DataPiece::ToUint64(&v27, v13, v14, __p);
        if (LODWORD(__p[0]))
        {
          v7 = 0.0;
        }

        else
        {
          v7 = v34;
        }

        if (v33 < 0)
        {
          operator delete(__p[1]);
        }
      }

      else
      {
        v7 = 0.0;
      }

      *a4 = &unk_1F3F0FB38;
      v16 = 4;
LABEL_57:
      *(a4 + 8) = v16;
      *(a4 + 16) = v7;
      goto LABEL_58;
    case 5:
    case 0xF:
    case 0x11:
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v25, *(a1 + 64), a3);
      if (v26)
      {
        v27 = &unk_1F3F0FB38;
        v28 = 9;
        v29 = v25;
        v30 = v26;
        v31 = 1;
        google::protobuf::util::converter::DataPiece::ToInt32(&v27, v8, v9, __p);
        if (LODWORD(__p[0]))
        {
          v10 = 0;
        }

        else
        {
          v10 = LODWORD(v34);
        }

        if (v33 < 0)
        {
          operator delete(__p[1]);
        }
      }

      else
      {
        v10 = 0;
      }

      *a4 = &unk_1F3F0FB38;
      v15 = 1;
      goto LABEL_54;
    case 7:
    case 0xD:
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v25, *(a1 + 64), a3);
      if (v26)
      {
        v27 = &unk_1F3F0FB38;
        v28 = 9;
        v29 = v25;
        v30 = v26;
        v31 = 1;
        google::protobuf::util::converter::DataPiece::ToUint32(&v27, v11, v12, __p);
        if (LODWORD(__p[0]))
        {
          v10 = 0;
        }

        else
        {
          v10 = LODWORD(v34);
        }

        if (v33 < 0)
        {
          operator delete(__p[1]);
        }
      }

      else
      {
        v10 = 0;
      }

      *a4 = &unk_1F3F0FB38;
      v15 = 3;
LABEL_54:
      *(a4 + 8) = v15;
      *(a4 + 16) = v10;
      goto LABEL_58;
    case 8:
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(&v25, *(a1 + 64), a3);
      if (v26)
      {
        v27 = &unk_1F3F0FB38;
        v28 = 9;
        v29 = v25;
        v30 = v26;
        v31 = 1;
        google::protobuf::util::converter::DataPiece::ToBool(&v27, __p);
        v18 = (LODWORD(__p[0]) == 0) & LOBYTE(v34);
        if (v33 < 0)
        {
          operator delete(__p[1]);
        }
      }

      else
      {
        v18 = 0;
      }

      *a4 = &unk_1F3F0FB38;
      *(a4 + 8) = 7;
      *(a4 + 16) = v18;
      goto LABEL_58;
    case 9:
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(__p, *(a1 + 64), a3);
      *a4 = &unk_1F3F0FB38;
      v17 = 9;
      goto LABEL_47;
    case 0xC:
      google::protobuf::StringPiece::StringPiece<std::allocator<char>>(__p, *(a1 + 64), a3);
      *a4 = &unk_1F3F0FB38;
      v17 = 10;
LABEL_47:
      *(a4 + 8) = v17;
      *(a4 + 16) = *__p;
      *(a4 + 32) = 1;
      break;
    case 0xE:

      google::protobuf::util::converter::DefaultValueObjectWriter::FindEnumDefault(a1, a2, a3, a4);
      break;
    default:
      *a4 = &unk_1F3F0FB38;
      *(a4 + 8) = 11;
      *(a4 + 16) = 0;
LABEL_58:
      *(a4 + 32) = 0;
      break;
  }
}

char *std::vector<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::emplace_back<google::protobuf::util::converter::DefaultValueObjectWriter::Node * const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_1BFC1775C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::MaybePopulateChildrenOfAny(uint64_t this, google::protobuf::util::converter::DefaultValueObjectWriter::Node *a2)
{
  if (a2)
  {
    if (*(a2 + 44) == 1)
    {
      v2 = *(a2 + 4);
      if (v2)
      {
        v3 = *(v2 + 88);
        v4 = *(v3 + 23);
        if (v4 < 0)
        {
          if (v3[1] != 19)
          {
            goto LABEL_16;
          }

          v3 = *v3;
        }

        else if (v4 != 19)
        {
LABEL_16:
          if (((*(a2 + 12) - *(a2 + 11)) & 0x7FFFFFFF8) == 8)
          {
            return (*(*a2 + 16))(a2, *(this + 16));
          }

          return this;
        }

        v5 = *v3;
        v6 = v3[1];
        v7 = *(v3 + 11);
        if (v5 != 0x702E656C676F6F67 || v6 != 0x2E6675626F746F72 || v7 != 0x796E412E6675626FLL)
        {
          goto LABEL_16;
        }
      }
    }
  }

  return this;
}

double google::protobuf::util::converter::DefaultValueObjectWriter::FindEnumDefault@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v8 = *(a1 + 64);
  if ((*(v8 + 23) & 0x8000000000000000) != 0)
  {
    if (*(v8 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(v8 + 23))
  {
    goto LABEL_13;
  }

  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v16, *(a1 + 48), a3);
  v9 = (*(*a2 + 32))(a2, v16[0].__r_.__value_.__r.__words[0], v16[0].__r_.__value_.__l.__size_);
  if (!v9)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 1, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/util/internal/default_value_objectwriter.cc", 423);
    v12 = google::protobuf::internal::LogMessage::operator<<(v16, "Could not find enum with type '");
    v13 = google::protobuf::internal::LogMessage::operator<<(v12, *(a1 + 48));
    v14 = google::protobuf::internal::LogMessage::operator<<(v13, "'");
    google::protobuf::internal::LogFinisher::operator=(&v15, v14);
    google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    goto LABEL_10;
  }

  if (*(v9 + 24) < 1)
  {
LABEL_10:
    *a4 = &unk_1F3F0FB38;
    *(a4 + 8) = 11;
    *(a4 + 16) = 0;
    goto LABEL_11;
  }

  if (v4)
  {
    v11 = *(*(*(v9 + 32) + 8) + 48);
    *a4 = &unk_1F3F0FB38;
    *(a4 + 8) = 1;
    *(a4 + 16) = v11;
LABEL_11:
    *(a4 + 32) = 0;
    return result;
  }

  v8 = *(*(*(v9 + 32) + 8) + 40);
LABEL_13:
  google::protobuf::StringPiece::StringPiece<std::allocator<char>>(v16, v8, a3);
  *a4 = &unk_1F3F0FB38;
  *(a4 + 8) = 9;
  result = *&v16[0].__r_.__value_.__l.__data_;
  *(a4 + 16) = *&v16[0].__r_.__value_.__l.__data_;
  *(a4 + 32) = 1;
  return result;
}

void sub_1BFC17A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::StartObject(uint64_t a1, void *a2, const void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v38[0] = a2;
  v38[1] = a3;
  v6 = (a1 + 64);
  v5 = *(a1 + 64);
  if (v5)
  {
    google::protobuf::util::converter::DefaultValueObjectWriter::MaybePopulateChildrenOfAny(a1, v5);
    Child = google::protobuf::util::converter::DefaultValueObjectWriter::Node::FindChild(*(a1 + 64), a2, a3);
    v9 = Child;
    v10 = *(*(a1 + 64) + 40);
    if (v10 == 2 || v10 == 3 || Child == 0)
    {
      google::protobuf::StringPiece::operator std::string(v38, v36);
      v13 = *v6;
      if ((*(*v6 + 40) & 0xFFFFFFFE) == 2)
      {
        v14 = *(v13 + 32);
      }

      else
      {
        v14 = 0;
      }

      v30 = &unk_1F3F0FB38;
      v31 = 11;
      v32 = 0;
      v33 = 0;
      v21 = *(a1 + 128);
      v22 = *(a1 + 129);
      v23 = *(a1 + 130);
      std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::__value_func[abi:ne200100](v39, a1 + 136);
      if (v9)
      {
        v24 = v9;
      }

      else
      {
        v24 = v13;
      }

      HIBYTE(v29) = v23;
      LOBYTE(v29) = v22;
      v9 = (*(*a1 + 136))(a1, v36, v14, 1, &v30, 0, v24 + 120, v21, v29, v39);
      std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::~__value_func[abi:ne200100](v39);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(v36[0]);
      }

      v25 = *v6;
      v30 = v9;
      std::vector<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::push_back[abi:ne200100](v25 + 88, &v30);
    }

    *(v9 + 112) = 0;
    if (*(v9 + 40) == 1 && ((*(v9 + 96) - *(v9 + 88)) & 0x7FFFFFFF8) == 0)
    {
      (*(*v9 + 16))(v9, *(a1 + 16));
    }

    std::deque<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::push_back((a1 + 80), v6);
    *(a1 + 64) = v9;
  }

  else
  {
    v36[0] = 0;
    v36[1] = 0;
    v37 = 0;
    google::protobuf::StringPiece::operator std::string(v38, __p);
    v15 = *(a1 + 32);
    v30 = &unk_1F3F0FB38;
    v31 = 11;
    v32 = 0;
    v33 = 0;
    v16 = *(a1 + 128);
    v17 = *(a1 + 129);
    v18 = *(a1 + 130);
    std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::__value_func[abi:ne200100](v40, a1 + 136);
    HIBYTE(v28) = v18;
    LOBYTE(v28) = v17;
    v19 = (*(*a1 + 136))(a1, __p, v15, 1, &v30, 0, v36, v16, v28, v40);
    v20 = *(a1 + 72);
    *(a1 + 72) = v19;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::~__value_func[abi:ne200100](v40);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }

    (*(**(a1 + 72) + 16))(*(a1 + 72), *(a1 + 16));
    *(a1 + 64) = *(a1 + 72);
    v30 = v36;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v30);
  }

  v26 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1BFC17D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  a11 = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

google::protobuf::util::converter::DefaultValueObjectWriter *google::protobuf::util::converter::DefaultValueObjectWriter::EndObject(google::protobuf::util::converter::DefaultValueObjectWriter *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    v3 = v2 - 1;
    *(this + 8) = *(*(*(this + 11) + (((*(this + 14) + v3) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 14) + v3) & 0x1FF));
    *(this + 15) = v3;
    std::deque<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::__maybe_remove_back_spare[abi:ne200100](this + 10, 1);
  }

  else
  {
    google::protobuf::util::converter::DefaultValueObjectWriter::WriteRoot(this);
  }

  return this;
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::WriteRoot(google::protobuf::util::converter::DefaultValueObjectWriter *this)
{
  (*(**(this + 9) + 24))(*(this + 9), *(this + 21));
  result = *(this + 9);
  *(this + 9) = 0;
  if (result)
  {
    result = (*(*result + 8))(result);
  }

  *(this + 8) = 0;
  return result;
}

uint64_t google::protobuf::util::converter::DefaultValueObjectWriter::StartList(uint64_t a1, void *a2, const void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v33[0] = a2;
  v33[1] = a3;
  v6 = (a1 + 64);
  v5 = *(a1 + 64);
  if (v5)
  {
    google::protobuf::util::converter::DefaultValueObjectWriter::MaybePopulateChildrenOfAny(a1, v5);
    Child = google::protobuf::util::converter::DefaultValueObjectWriter::Node::FindChild(*(a1 + 64), a2, a3);
    v9 = Child;
    if (!Child || *(Child + 40) != 2)
    {
      v10 = Child == 0;
      google::protobuf::StringPiece::operator std::string(v33, __p);
      v25 = &unk_1F3F0FB38;
      v26 = 11;
      v27 = 0;
      v28 = 0;
      if (v10)
      {
        v9 = *v6;
      }

      v11 = *(a1 + 128);
      v12 = *(a1 + 129);
      v13 = *(a1 + 130);
      std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::__value_func[abi:ne200100](v34, a1 + 136);
      HIBYTE(v23) = v13;
      LOBYTE(v23) = v12;
      v9 = (*(*a1 + 136))(a1, __p, 0, 2, &v25, 0, v9 + 120, v11, v23, v34);
      std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::~__value_func[abi:ne200100](v34);
      if (SHIBYTE(v32) < 0)
      {
        operator delete(__p[0]);
      }

      v14 = *v6;
      v25 = v9;
      std::vector<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::push_back[abi:ne200100](v14 + 88, &v25);
    }

    *(v9 + 112) = 0;
    std::deque<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::push_back((a1 + 80), v6);
    *(a1 + 64) = v9;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v32 = 0;
    google::protobuf::StringPiece::operator std::string(v33, v29);
    v15 = *(a1 + 32);
    v25 = &unk_1F3F0FB38;
    v26 = 11;
    v27 = 0;
    v28 = 0;
    v16 = *(a1 + 128);
    v17 = *(a1 + 129);
    v18 = *(a1 + 130);
    std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::__value_func[abi:ne200100](v35, a1 + 136);
    HIBYTE(v24) = v18;
    LOBYTE(v24) = v17;
    v19 = (*(*a1 + 136))(a1, v29, v15, 2, &v25, 0, __p, v16, v24, v35);
    v20 = *(a1 + 72);
    *(a1 + 72) = v19;
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::~__value_func[abi:ne200100](v35);
    if (v30 < 0)
    {
      operator delete(v29[0]);
    }

    *(a1 + 64) = *(a1 + 72);
    v25 = __p;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
  }

  v21 = *MEMORY[0x1E69E9840];
  return a1;
}

void sub_1BFC181BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, char a30)
{
  std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::~__value_func[abi:ne200100](v30 - 104);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  a11 = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

google::protobuf::util::converter::DefaultValueObjectWriter *google::protobuf::util::converter::DefaultValueObjectWriter::EndList(google::protobuf::util::converter::DefaultValueObjectWriter *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    v3 = v2 - 1;
    *(this + 8) = *(*(*(this + 11) + (((*(this + 14) + v3) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(this + 14) + v3) & 0x1FF));
    *(this + 15) = v3;
    std::deque<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::__maybe_remove_back_spare[abi:ne200100](this + 10, 1);
  }

  else
  {
    google::protobuf::util::converter::DefaultValueObjectWriter::WriteRoot(this);
  }

  return this;
}

void google::protobuf::util::converter::DefaultValueObjectWriter::Node::~Node(google::protobuf::util::converter::DefaultValueObjectWriter::Node *this)
{
  google::protobuf::util::converter::DefaultValueObjectWriter::Node::~Node(this);

  JUMPOUT(0x1C68D4E80);
}

{
  *this = &unk_1F3F0FDE8;
  v3 = *(this + 11);
  v2 = *(this + 12);
  if (v2 != v3)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 8 * v4);
      if (v5)
      {
        (*(*v5 + 8))(v5);
        v3 = *(this + 11);
        v2 = *(this + 12);
      }

      ++v4;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::~__value_func[abi:ne200100](this + 152);
  v7 = (this + 120);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  v6 = *(this + 11);
  if (v6)
  {
    *(this + 12) = v6;
    operator delete(v6);
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

uint64_t std::deque<google::protobuf::util::converter::DefaultValueObjectWriter::Node *>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<google::protobuf::util::converter::DefaultValueObjectWriter::Node **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<google::protobuf::util::converter::DefaultValueObjectWriter::Node **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(std::vector<std::string> const&,google::protobuf::Field const*)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}