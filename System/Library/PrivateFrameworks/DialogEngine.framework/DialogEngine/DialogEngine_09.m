void sub_1BFBEF6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const google::protobuf::UnknownFieldSet *SnippetUI::Button_Container_ButtonItem::InternalSerializeWithCachedSizesToArray(SnippetUI::Button_Container_ButtonItem *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 7);
  if (v6 == 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 2);
    *a2 = 10;
    v8 = *(v7 + 17);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v11 = (a2 + 2);
        do
        {
          v12 = v11;
          *v11++ = v10 | 0x80;
          v13 = v10 >> 7;
          v14 = v10 >> 14;
          v10 >>= 7;
        }

        while (v14);
        v9 = v12 + 2;
        *v11 = v13;
      }

      else
      {
        a2[2] = v10;
        v9 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v8;
      v9 = (a2 + 2);
    }

    a2 = SnippetUI::Button::InternalSerializeWithCachedSizesToArray(v7, v9, a3, a4);
    v6 = *(this + 7);
  }

  if (v6 == 2)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 2);
    *a2 = 18;
    v16 = *(v15 + 8);
    if (v16 > 0x7F)
    {
      a2[1] = v16 | 0x80;
      v18 = v16 >> 7;
      if (v16 >> 14)
      {
        v19 = (a2 + 2);
        do
        {
          v20 = v19;
          *v19++ = v18 | 0x80;
          v21 = v18 >> 7;
          v22 = v18 >> 14;
          v18 >>= 7;
        }

        while (v22);
        v17 = v20 + 2;
        *v19 = v21;
      }

      else
      {
        a2[2] = v18;
        v17 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v16;
      v17 = (a2 + 2);
    }

    a2 = SnippetUI::PlayerButton::InternalSerializeWithCachedSizesToArray(v15, v17, a3, a4);
    v6 = *(this + 7);
  }

  if (v6 == 3)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v23 = *(this + 2);
    *a2 = 26;
    v24 = *(v23 + 13);
    if (v24 > 0x7F)
    {
      a2[1] = v24 | 0x80;
      v26 = v24 >> 7;
      if (v24 >> 14)
      {
        v27 = (a2 + 2);
        do
        {
          v28 = v27;
          *v27++ = v26 | 0x80;
          v29 = v26 >> 7;
          v30 = v26 >> 14;
          v26 >>= 7;
        }

        while (v30);
        v25 = v28 + 2;
        *v27 = v29;
      }

      else
      {
        a2[2] = v26;
        v25 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v24;
      v25 = (a2 + 2);
    }

    a2 = SnippetUI::CustomCanvas::InternalSerializeWithCachedSizesToArray(v23, v25, a3, a4);
  }

  v31 = *(this + 1);
  if ((v31 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v31 & 0xFFFFFFFFFFFFFFFELL), a2, a3, a4);
}

void siri::dialogengine::DialogStatePatternFromNSDictionary(siri::dialogengine *this@<X0>, void *a2@<X8>)
{
  v4 = this;
  if (v4)
  {
    v11 = v4;
    v5 = [(siri::dialogengine *)v4 objectForKey:@"count"];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 unsignedIntValue];
    }

    else
    {
      v7 = 0;
    }

    v8 = [(siri::dialogengine *)v11 objectForKey:@"timestamp"];
    v9 = v8;
    if (v8)
    {
      [v8 doubleValue];
    }

    else
    {
      v10 = 0;
    }

    *a2 = v7;
    a2[1] = 1;
    a2[2] = v10;
    a2[3] = 1;

    v4 = v11;
  }

  else
  {
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }
}

uint64_t siri::dialogengine::PatternContext::GetSonicResponseStatus(siri::dialogengine::PatternContext *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "sonicStatusIndicator");
  RequiredBooleanSettingFromPatternContext = siri::dialogengine::GetRequiredBooleanSettingFromPatternContext(this, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return RequiredBooleanSettingFromPatternContext;
}

void sub_1BFBEFA88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t siri::dialogengine::GetRequiredBooleanSettingFromPatternContext(uint64_t a1, const void **a2)
{
  v3 = std::__tree<std::__value_type<std::string,std::set<std::string>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::set<std::string>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::set<std::string>>>>::find<std::string>(a1, a2);
  if (a1 + 8 == v3)
  {
    v6 = 0;
LABEL_9:
    std::operator+<char>();
    v10 = std::string::append(&v15, "'. It should always exist.");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v17 = v10->__r_.__value_.__r.__words[2];
    *__p = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    siri::dialogengine::Log::LogWithLevel(__p, 3u);
    goto LABEL_10;
  }

  v4 = v3;
  v5 = *(v3 + 56);
  v6 = *(v4 + 64);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = **v5;
  if (v8)
  {
    v9 = v8[66];
    if (!v6)
    {
      return v9 & 1;
    }

    goto LABEL_15;
  }

  std::operator+<char>();
  v13 = std::string::append(&v15, "' but it's not a BOOLean variable.");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v17 = v13->__r_.__value_.__r.__words[2];
  *__p = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  siri::dialogengine::Log::LogWithLevel(__p, 3u);
LABEL_10:
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  v9 = 0;
  if (v6)
  {
LABEL_15:
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v9 & 1;
}

void sub_1BFBEFC1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  _Unwind_Resume(exception_object);
}

const google::protobuf::UnknownFieldSet *SnippetUI::ImageElement_Source::InternalSerializeWithCachedSizesToArray(SnippetUI::ImageElement_Source *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 7);
  if (v6 == 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 2);
    *a2 = 10;
    v8 = *(v7 + 15);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v11 = (a2 + 2);
        do
        {
          v12 = v11;
          *v11++ = v10 | 0x80;
          v13 = v10 >> 7;
          v14 = v10 >> 14;
          v10 >>= 7;
        }

        while (v14);
        v9 = v12 + 2;
        *v11 = v13;
      }

      else
      {
        a2[2] = v10;
        v9 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v8;
      v9 = (a2 + 2);
    }

    a2 = SnippetUI::ImageElement_Data::InternalSerializeWithCachedSizesToArray(v7, v9, a3);
    v6 = *(this + 7);
  }

  if (v6 == 2)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 2);
    *a2 = 18;
    v16 = *(v15 + 19);
    if (v16 > 0x7F)
    {
      a2[1] = v16 | 0x80;
      v18 = v16 >> 7;
      if (v16 >> 14)
      {
        v19 = (a2 + 2);
        do
        {
          v20 = v19;
          *v19++ = v18 | 0x80;
          v21 = v18 >> 7;
          v22 = v18 >> 14;
          v18 >>= 7;
        }

        while (v22);
        v17 = v20 + 2;
        *v19 = v21;
      }

      else
      {
        a2[2] = v18;
        v17 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v16;
      v17 = (a2 + 2);
    }

    a2 = SnippetUI::ImageElement_Bundle::InternalSerializeWithCachedSizesToArray(v15, v17, a3, a4);
    v6 = *(this + 7);
  }

  if (v6 == 3)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v23 = *(this + 2);
    *a2 = 26;
    v24 = *(v23 + 20);
    if (v24 > 0x7F)
    {
      a2[1] = v24 | 0x80;
      v26 = v24 >> 7;
      if (v24 >> 14)
      {
        v27 = (a2 + 2);
        do
        {
          v28 = v27;
          *v27++ = v26 | 0x80;
          v29 = v26 >> 7;
          v30 = v26 >> 14;
          v26 >>= 7;
        }

        while (v30);
        v25 = v28 + 2;
        *v27 = v29;
      }

      else
      {
        a2[2] = v26;
        v25 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v24;
      v25 = (a2 + 2);
    }

    a2 = SnippetUI::ImageElement_Url::InternalSerializeWithCachedSizesToArray(v23, v25, a3, a4);
    v6 = *(this + 7);
  }

  if (v6 == 4)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v31 = *(this + 2);
    *a2 = 34;
    v32 = *(v31 + 14);
    if (v32 > 0x7F)
    {
      a2[1] = v32 | 0x80;
      v34 = v32 >> 7;
      if (v32 >> 14)
      {
        v35 = (a2 + 2);
        do
        {
          v36 = v35;
          *v35++ = v34 | 0x80;
          v37 = v34 >> 7;
          v38 = v34 >> 14;
          v34 >>= 7;
        }

        while (v38);
        v33 = v36 + 2;
        *v35 = v37;
      }

      else
      {
        a2[2] = v34;
        v33 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v32;
      v33 = (a2 + 2);
    }

    a2 = SnippetUI::ImageElement_Symbol::InternalSerializeWithCachedSizesToArray(v31, v33, a3, a4);
    v6 = *(this + 7);
  }

  if (v6 == 5)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v39 = *(this + 2);
    *a2 = 42;
    v40 = *(v39 + 7);
    if (v40 > 0x7F)
    {
      a2[1] = v40 | 0x80;
      v42 = v40 >> 7;
      if (v40 >> 14)
      {
        v43 = (a2 + 2);
        do
        {
          v44 = v43;
          *v43++ = v42 | 0x80;
          v45 = v42 >> 7;
          v46 = v42 >> 14;
          v42 >>= 7;
        }

        while (v46);
        v41 = v44 + 2;
        *v43 = v45;
      }

      else
      {
        a2[2] = v42;
        v41 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v40;
      v41 = (a2 + 2);
    }

    a2 = SnippetUI::ImageElement_AppIcon::InternalSerializeWithCachedSizesToArray(v39, v41, a3, a4);
    v6 = *(this + 7);
  }

  if (v6 == 6)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v47 = *(this + 2);
    *a2 = 50;
    v48 = *(v47 + 8);
    if (v48 > 0x7F)
    {
      a2[1] = v48 | 0x80;
      v50 = v48 >> 7;
      if (v48 >> 14)
      {
        v51 = (a2 + 2);
        do
        {
          v52 = v51;
          *v51++ = v50 | 0x80;
          v53 = v50 >> 7;
          v54 = v50 >> 14;
          v50 >>= 7;
        }

        while (v54);
        v49 = v52 + 2;
        *v51 = v53;
      }

      else
      {
        a2[2] = v50;
        v49 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v48;
      v49 = (a2 + 2);
    }

    a2 = SnippetUI::ImageElement_Contact::InternalSerializeWithCachedSizesToArray(v47, v49, a3, a4);
  }

  v55 = *(this + 1);
  if ((v55 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v55 & 0xFFFFFFFFFFFFFFFELL), a2, a3, a4);
}

const google::protobuf::UnknownFieldSet *SnippetUI::ImageElement::InternalSerializeWithCachedSizesToArray(SnippetUI::ImageElement *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 6);
  if (v7)
  {
    v8 = 0;
    while (a2 < *a3)
    {
      if (v8 < 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      if (*(this + 6) <= v8)
      {
        google::protobuf::internal::LogMessage::LogMessage(v36, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1539);
        v10 = google::protobuf::internal::LogMessage::operator<<(v36, "CHECK failed: (index) < (current_size_): ");
        google::protobuf::internal::LogFinisher::operator=(&v35, v10);
        google::protobuf::internal::LogMessage::~LogMessage(&v36[0].__r_.__value_.__l.__data_);
      }

      v11 = *(*(this + 4) + 8 * v8 + 8);
      *a2 = 10;
      v12 = *(v11 + 6);
      if (v12 > 0x7F)
      {
        *(a2 + 1) = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v15 = a2 + 2;
          do
          {
            v16 = v15;
            *v15++ = v14 | 0x80;
            v17 = v14 >> 7;
            v18 = v14 >> 14;
            v14 >>= 7;
          }

          while (v18);
          v13 = v16 + 2;
          *v15 = v17;
        }

        else
        {
          *(a2 + 2) = v14;
          v13 = a2 + 3;
        }
      }

      else
      {
        *(a2 + 1) = v12;
        v13 = a2 + 2;
      }

      a2 = SnippetUI::ImageElement_Source::InternalSerializeWithCachedSizesToArray(v11, v13, a3, a4);
      if (++v8 == v7)
      {
        goto LABEL_19;
      }
    }

    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    google::protobuf::internal::LogMessage::LogMessage(v36, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v9 = google::protobuf::internal::LogMessage::operator<<(v36, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v35, v9);
    google::protobuf::internal::LogMessage::~LogMessage(&v36[0].__r_.__value_.__l.__data_);
    goto LABEL_6;
  }

LABEL_19:
  v19 = *(this + 14);
  if (v19 > 0)
  {
    v20 = *a3;
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v20 = *a3;
    }

    if (v20 <= a2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v36, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/io/coded_stream.h", 856);
      v21 = google::protobuf::internal::LogMessage::operator<<(v36, "CHECK failed: ptr < end_: ");
      google::protobuf::internal::LogFinisher::operator=(&v35, v21);
      google::protobuf::internal::LogMessage::~LogMessage(&v36[0].__r_.__value_.__l.__data_);
    }

    *a2 = 18;
    v22 = a2 + 1;
    if (v19 >= 0x80)
    {
      do
      {
        *v22++ = v19 | 0x80;
        v34 = v19 >> 14;
        v19 >>= 7;
      }

      while (v34);
      a2 = (v22 - 1);
    }

    a2 = (a2 + 2);
    *v22 = v19;
    v23 = *(this + 6);
    v24 = &v23[*(this + 10)];
    do
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v26 = *v23++;
      v25 = v26;
      if (v26 > 0x7F)
      {
        *a2 = v25 | 0x80;
        v27 = v25 >> 7;
        if (v25 >> 14)
        {
          v28 = a2 + 1;
          do
          {
            v29 = v28;
            *v28++ = v27 | 0x80;
            v30 = v27 >> 7;
            v31 = v27 >> 14;
            v27 >>= 7;
          }

          while (v31);
          a2 = (v29 + 2);
          *v28 = v30;
        }

        else
        {
          *(a2 + 1) = v27;
          a2 = (a2 + 2);
        }
      }

      else
      {
        *a2 = v25;
        a2 = (a2 + 1);
      }
    }

    while (v23 < v24);
  }

  v32 = *(this + 1);
  if (v32)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v32 & 0xFFFFFFFFFFFFFFFELL), a2, a3, a4);
  }

  return a2;
}

void sub_1BFBF0388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::SerializeAsString@<W0>(google::protobuf::MessageLite *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = google::protobuf::MessageLite::AppendToString(this, a2);
  if (!result)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }
  }

  return result;
}

void sub_1BFBF0404(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void siri::dialogengine::FilterSnippetUISections(std::string::size_type a1@<X0>, const std::string *a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  std::vector<std::string>::clear[abi:ne200100]((a3 + 32));
  v8 = *(a1 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8)
  {
    SnippetUI::Response::Response(v25);
    siri::dialogengine::DecodeBase64(a1, &__p);
    v9 = google::protobuf::MessageLite::ParseFromString(v25, &__p);
    v11 = v9;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v11)
      {
        goto LABEL_6;
      }
    }

    else if (v9)
    {
LABEL_6:
      siri::dialogengine::SetVisualInfo(v25, a3);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = a2->__r_.__value_.__r.__words[0];
      }

      siri::dialogengine::Log::Info("Filtering Visual CAT for sections matching '%s'", v12, v13);
      if (v27 >= 1)
      {
        v14 = 0;
        while (1)
        {
          v15 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::Response_Section>::TypeHandler>(&v26, v14);
          siri::dialogengine::GetVisualElementId(&__p, v15);
          size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
          v18 = size;
          if ((size & 0x80u) != 0)
          {
            size = a2->__r_.__value_.__l.__size_;
          }

          if (!size)
          {
            goto LABEL_16;
          }

          if (siri::dialogengine::StringGlobMatch(&__p, a2))
          {
            break;
          }

          google::protobuf::RepeatedPtrField<SnippetUI::Response_Section>::DeleteSubrange(&v26, v14);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = a2;
          }

          else
          {
            v23 = a2->__r_.__value_.__r.__words[0];
          }

          siri::dialogengine::Log::Info("Visual CAT section '%s' does not match '%s'; Excluding it from result", v21, p_p, v23);
          --v14;
LABEL_30:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (++v14 >= v27)
          {
            goto LABEL_33;
          }
        }

        v18 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
LABEL_16:
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v19 = &__p;
        }

        else
        {
          v19 = __p.__r_.__value_.__r.__words[0];
        }

        if (v18 >= 0)
        {
          v20 = a2;
        }

        else
        {
          v20 = a2->__r_.__value_.__r.__words[0];
        }

        siri::dialogengine::Log::Info("Visual CAT section '%s' matches '%s'; Including it in result", v16, v19, v20);
        goto LABEL_30;
      }

LABEL_33:
      siri::dialogengine::SetVisualInfo(v25, a3);
      google::protobuf::MessageLite::SerializeAsString(v25, &__p);
      siri::dialogengine::EncodeBase64(&__p, a4);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_42;
    }

    siri::dialogengine::Log::Error("Could not decode response", v10);
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a4, *a1, *(a1 + 8));
    }

    else
    {
      *&a4->__r_.__value_.__l.__data_ = *a1;
      a4->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }

LABEL_42:
    SnippetUI::Response::~Response(v25);
    return;
  }

  std::string::basic_string[abi:ne200100]<0>(a4, "");
}

void sub_1BFBF06AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  SnippetUI::Response::~Response(&a18);
  _Unwind_Resume(a1);
}

void siri::dialogengine::ExtractUserSettings(siri::dialogengine *this@<X0>, NSDictionary *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v42 = *MEMORY[0x1E69E9840];
  v5 = this;
  v6 = v5;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v32 = a3 + 8;
  *a3 = a3 + 8;
  if (v3)
  {
    v7 = siri::dialogengine::DefaultUserSettings(v5);
    if (v7 != a3)
    {
      std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<std::string,std::string>,std::__tree_node<std::__value_type<std::string,std::string>,void *> *,long>>(a3, *v7, (v7 + 8));
    }
  }

  if (v6)
  {
    v8 = [(siri::dialogengine *)v6 objectForKey:@"userSettings"];
    v9 = v8;
    if (v8)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v10 = v8;
      v11 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v11)
      {
        v12 = *v37;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v37 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v36 + 1) + 8 * i);
            v15 = v14;
            v16 = std::string::basic_string[abi:ne200100]<0>(__p, [v14 UTF8String]);
            v17 = siri::dialogengine::DefaultUserSettings(v16);
            if (v17 + 8 == std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::find<std::string>(v17, __p))
            {
              if (v35 >= 0)
              {
                v28 = __p;
              }

              else
              {
                v28 = __p[0];
              }

              siri::dialogengine::Log::Warn("Ignoring unsupported user setting '%s'", v18, v28);
            }

            else
            {
              v19 = [v10 objectForKey:v14];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = v19;
                std::string::basic_string[abi:ne200100]<0>(&__str, [v19 UTF8String]);
                size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
                if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  size = __str.__r_.__value_.__l.__size_;
                }

                if (size)
                {
                  v40 = __p;
                  v24 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a3, __p);
                  std::string::operator=((v24 + 56), &__str);
                  if (v35 >= 0)
                  {
                    v26 = __p;
                  }

                  else
                  {
                    v26 = __p[0];
                  }

                  p_str = &__str;
                  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                  {
                    p_str = __str.__r_.__value_.__r.__words[0];
                  }

                  siri::dialogengine::Log::Debug("Parsed user setting '%s': '%s'", v25, v26, p_str, v32);
                }

                else
                {
                  if (v35 >= 0)
                  {
                    v30 = __p;
                  }

                  else
                  {
                    v30 = __p[0];
                  }

                  siri::dialogengine::Log::Info("Ignoring user setting '%s' with empty string value", v22, v30);
                }

                if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__str.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                if (v35 >= 0)
                {
                  v29 = __p;
                }

                else
                {
                  v29 = __p[0];
                }

                siri::dialogengine::Log::Warn("Value for user setting '%s' is not a string", v20, v29);
              }
            }

            if (v35 < 0)
            {
              operator delete(__p[0]);
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v11);
      }
    }
  }

  v31 = *MEMORY[0x1E69E9840];
}

void sub_1BFBF09E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a11);

  _Unwind_Resume(a1);
}

void AppendVisualResultToPatternExecutionResult(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (!v6)
  {
    goto LABEL_40;
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  if (*(a3 + 23) < 0)
  {
    v7 = *(a3 + 8);
    if (v7)
    {
      std::string::__init_copy_ctor_external(&v37, *a3, v7);
      goto LABEL_8;
    }

LABEL_7:
    std::string::basic_string[abi:ne200100]<0>(&v37, "*");
    goto LABEL_8;
  }

  if (!*(a3 + 23))
  {
    goto LABEL_7;
  }

  v37 = *a3;
LABEL_8:
  v8 = [v6 base64EncodedStringWithOptions:0];
  std::string::basic_string[abi:ne200100]<0>(v35, [v8 UTF8String]);
  siri::dialogengine::FilterSnippetUISections(v35, &v37, &v38, &__p);
  v9 = [v5 visual];

  if (v9)
  {
    v11 = [v5 visual];
    v12 = [v11 base64EncodedStringWithOptions:0];

    v13 = std::string::basic_string[abi:ne200100]<0>(&v42, [v12 UTF8String]);
    siri::dialogengine::MergeSnippetUIResults(v13, &__p, &v38, &v33);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v33;
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
    }
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size && v38 | v39)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_p];
    v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v16 options:0];
    [v5 setVisual:v17];

    v18 = [MEMORY[0x1E695DF70] array];
    v20 = *(&v40 + 1);
    v19 = v40;
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = ___ZL42AppendVisualResultToPatternExecutionResultP22PatternExecutionResultP6NSDataRKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE_block_invoke;
    v31 = &unk_1E80FC408;
    v21 = v18;
    v32 = v21;
    v22 = &v28;
    while (v19 != v20)
    {
      if (*(v19 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v42, *v19, *(v19 + 1));
      }

      else
      {
        v23 = *v19;
        v42.__r_.__value_.__r.__words[2] = *(v19 + 2);
        *&v42.__r_.__value_.__l.__data_ = v23;
      }

      v30(v22, &v42);
      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      v19 = (v19 + 24);
    }

    v24 = MEMORY[0x1C68D5590](v22);

    v25 = [v5 visualInfo];

    if (!v25)
    {
      v26 = objc_opt_new();
      [v5 setVisualInfo:v26];
    }

    v27 = [v5 visualInfo];
    [v27 setSectionIds:v21];
  }

  else
  {
    siri::dialogengine::Log::Info("Visual has no sections or ornaments. Setting result.visual to nil", v10);
    [v5 setVisual:0];
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v36 < 0)
  {
    operator delete(v35[0]);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  v42.__r_.__value_.__r.__words[0] = &v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v42);
LABEL_40:
}

void sub_1BFBF0E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a29);

  _Unwind_Resume(a1);
}

void ___ZL42AppendVisualResultToPatternExecutionResultP22PatternExecutionResultP6NSDataRKNSt3__112basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEE_block_invoke(uint64_t a1, uint64_t *a2)
{
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [*(a1 + 32) addObject:?];
}

void SnippetUI::CustomCanvas::~CustomCanvas(SnippetUI::CustomCanvas *this)
{
  *this = &unk_1F3F16578;
  v2 = *(this + 2);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x1C68D4E80](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 3);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x1C68D4E80](v4, 0x1012C40EC159624);
  }

  v6 = *(this + 4);
  if (v6 != &google::protobuf::internal::fixed_address_empty_string && v6 != 0)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x1C68D4E80](v6, 0x1012C40EC159624);
  }

  v8 = *(this + 5);
  if (v8 != &google::protobuf::internal::fixed_address_empty_string && v8 != 0)
  {
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    MEMORY[0x1C68D4E80](v8, 0x1012C40EC159624);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<google::protobuf::UnknownFieldSet,google::protobuf::internal::InternalMetadataWithArena>::~InternalMetadataWithArenaBase(this + 1);
}

{
  SnippetUI::CustomCanvas::~CustomCanvas(this);

  JUMPOUT(0x1C68D4E80);
}

const google::protobuf::UnknownFieldSet *SnippetUI::ImageElement_Symbol::InternalSerializeWithCachedSizesToArray(SnippetUI::ImageElement_Symbol *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 2);
  v8 = *(v7 + 23);
  if ((v8 & 0x8000000000000000) == 0)
  {
    if (!*(v7 + 23))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = v7[1];
  if (v8)
  {
    v7 = *v7;
LABEL_6:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v7, v8, 1, "SnippetUI.ImageElement.Symbol.name");
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 2), a2);
  }

LABEL_7:
  if (this != &SnippetUI::_ImageElement_Symbol_default_instance_)
  {
    v9 = *(this + 4);
    if (v9)
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        v9 = *(this + 4);
      }

      *a2 = 18;
      v10 = *(v9 + 6);
      if (v10 > 0x7F)
      {
        *(a2 + 1) = v10 | 0x80;
        v12 = v10 >> 7;
        if (v10 >> 14)
        {
          v13 = a2 + 2;
          do
          {
            v14 = v13;
            *v13++ = v12 | 0x80;
            v15 = v12 >> 7;
            v16 = v12 >> 14;
            v12 >>= 7;
          }

          while (v16);
          v11 = v14 + 2;
          *v13 = v15;
        }

        else
        {
          *(a2 + 2) = v12;
          v11 = a2 + 3;
        }
      }

      else
      {
        *(a2 + 1) = v10;
        v11 = a2 + 2;
      }

      a2 = SnippetUI::Color::InternalSerializeWithCachedSizesToArray(v9, v11, a3, a4);
    }
  }

  v17 = *(this + 12);
  if (v17)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v17 = *(this + 12);
    }

    *a2 = 24;
    if (v17 > 0x7F)
    {
      *(a2 + 1) = v17 | 0x80;
      v18 = v17 >> 7;
      if (v17 >> 14)
      {
        v19 = a2 + 2;
        do
        {
          v20 = v19;
          *v19++ = v18 | 0x80;
          v21 = v18 >> 7;
          v22 = v18 >> 14;
          v18 >>= 7;
        }

        while (v22);
        a2 = (v20 + 2);
        *v19 = v21;
      }

      else
      {
        *(a2 + 2) = v18;
        a2 = (a2 + 3);
      }
    }

    else
    {
      *(a2 + 1) = v17;
      a2 = (a2 + 2);
    }
  }

  v23 = *(this + 13);
  if (v23)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v23 = *(this + 13);
    }

    *a2 = 32;
    if (v23 > 0x7F)
    {
      *(a2 + 1) = v23 | 0x80;
      v24 = v23 >> 7;
      if (v23 >> 14)
      {
        v25 = a2 + 2;
        do
        {
          v26 = v25;
          *v25++ = v24 | 0x80;
          v27 = v24 >> 7;
          v28 = v24 >> 14;
          v24 >>= 7;
        }

        while (v28);
        a2 = (v26 + 2);
        *v25 = v27;
      }

      else
      {
        *(a2 + 2) = v24;
        a2 = (a2 + 3);
      }
    }

    else
    {
      *(a2 + 1) = v23;
      a2 = (a2 + 2);
    }
  }

  v29 = *(this + 3);
  v30 = *(v29 + 23);
  if ((v30 & 0x8000000000000000) == 0)
  {
    if (!*(v29 + 23))
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v30 = v29[1];
  if (v30)
  {
    v29 = *v29;
LABEL_44:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v29, v30, 1, "SnippetUI.ImageElement.Symbol.dark_mode_name");
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 5, *(this + 3), a2);
  }

LABEL_45:
  if (this != &SnippetUI::_ImageElement_Symbol_default_instance_)
  {
    v31 = *(this + 5);
    if (v31)
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        v31 = *(this + 5);
      }

      *a2 = 50;
      v32 = *(v31 + 12);
      if (v32 > 0x7F)
      {
        *(a2 + 1) = v32 | 0x80;
        v34 = v32 >> 7;
        if (v32 >> 14)
        {
          v35 = a2 + 2;
          do
          {
            v36 = v35;
            *v35++ = v34 | 0x80;
            v37 = v34 >> 7;
            v38 = v34 >> 14;
            v34 >>= 7;
          }

          while (v38);
          v33 = v36 + 2;
          *v35 = v37;
        }

        else
        {
          *(a2 + 2) = v34;
          v33 = a2 + 3;
        }
      }

      else
      {
        *(a2 + 1) = v32;
        v33 = a2 + 2;
      }

      a2 = SnippetUI::ImageElement_Symbol_Background::InternalSerializeWithCachedSizesToArray(v31, v33, a3, a4);
    }
  }

  v39 = *(this + 1);
  if ((v39 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v39 & 0xFFFFFFFFFFFFFFFELL), a2, a3, a4);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(google::protobuf::io::EpsCopyOutputStream *a1, int a2, const void **a3, char *a4)
{
  v4 = *(a3 + 23);
  if ((v4 & 0x8000000000000000) == 0 || (v4 = a3[1], v4 <= 127))
  {
    v5 = *a1;
    v6 = 8 * a2;
    if ((8 * a2) >= 0x80)
    {
      v8 = 2;
      v9 = 3;
      v10 = 4;
      if (v6 >> 28)
      {
        v10 = 5;
      }

      if (v6 >= 0x200000)
      {
        v9 = v10;
      }

      if (v6 >= 0x4000)
      {
        v8 = v9;
      }

      if ((v5 + ~&a4[v8] + 16) >= v4)
      {
        *a4 = v6 | 0x82;
        v11 = v6 >> 7;
        if (v6 >> 14)
        {
          v7 = (a4 + 2);
          do
          {
            *(v7 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v7;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v7 - 1) = v12;
        }

        else
        {
          a4[1] = v11;
          v7 = (a4 + 2);
        }

LABEL_18:
        *v7 = v4;
        v14 = (v7 + 1);
        if (*(a3 + 23) >= 0)
        {
          v15 = a3;
        }

        else
        {
          v15 = *a3;
        }

        memcpy(v14, v15, v4);
        return &v14[v4];
      }
    }

    else if (v5 - a4 + 14 >= v4)
    {
      *a4 = v6 | 2;
      v7 = (a4 + 1);
      goto LABEL_18;
    }
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(a1, a2, a3, a4);
}

const google::protobuf::UnknownFieldSet *SnippetUI::VisualElement::InternalSerializeWithCachedSizesToArray(SnippetUI::VisualElement *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v6 = *(this + 7);
  if (v6 == 1)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v7 = *(this + 2);
    *a2 = 10;
    v8 = *(v7 + 15);
    if (v8 > 0x7F)
    {
      a2[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v11 = (a2 + 2);
        do
        {
          v12 = v11;
          *v11++ = v10 | 0x80;
          v13 = v10 >> 7;
          v14 = v10 >> 14;
          v10 >>= 7;
        }

        while (v14);
        v9 = v12 + 2;
        *v11 = v13;
      }

      else
      {
        a2[2] = v10;
        v9 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v8;
      v9 = (a2 + 2);
    }

    a2 = SnippetUI::ImageElement::InternalSerializeWithCachedSizesToArray(v7, v9, a3, a4);
    v6 = *(this + 7);
  }

  if (v6 == 2)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v15 = *(this + 2);
    *a2 = 18;
    v16 = *(v15 + 12);
    if (v16 > 0x7F)
    {
      a2[1] = v16 | 0x80;
      v18 = v16 >> 7;
      if (v16 >> 14)
      {
        v19 = (a2 + 2);
        do
        {
          v20 = v19;
          *v19++ = v18 | 0x80;
          v21 = v18 >> 7;
          v22 = v18 >> 14;
          v18 >>= 7;
        }

        while (v22);
        v17 = v20 + 2;
        *v19 = v21;
      }

      else
      {
        a2[2] = v18;
        v17 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v16;
      v17 = (a2 + 2);
    }

    a2 = SnippetUI::ColorElement::InternalSerializeWithCachedSizesToArray(v15, v17, a3, a4);
    v6 = *(this + 7);
  }

  if (v6 == 3)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v23 = *(this + 2);
    *a2 = 26;
    v24 = *(v23 + 12);
    if (v24 > 0x7F)
    {
      a2[1] = v24 | 0x80;
      v26 = v24 >> 7;
      if (v24 >> 14)
      {
        v27 = (a2 + 2);
        do
        {
          v28 = v27;
          *v27++ = v26 | 0x80;
          v29 = v26 >> 7;
          v30 = v26 >> 14;
          v26 >>= 7;
        }

        while (v30);
        v25 = v28 + 2;
        *v27 = v29;
      }

      else
      {
        a2[2] = v26;
        v25 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v24;
      v25 = (a2 + 2);
    }

    a2 = SnippetUI::CustomElement::InternalSerializeWithCachedSizesToArray(v23, v25, a3, a4);
    v6 = *(this + 7);
  }

  if (v6 == 4)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v31 = *(this + 2);
    *a2 = 34;
    v32 = *(v31 + 12);
    if (v32 > 0x7F)
    {
      a2[1] = v32 | 0x80;
      v34 = v32 >> 7;
      if (v32 >> 14)
      {
        v35 = (a2 + 2);
        do
        {
          v36 = v35;
          *v35++ = v34 | 0x80;
          v37 = v34 >> 7;
          v38 = v34 >> 14;
          v34 >>= 7;
        }

        while (v38);
        v33 = v36 + 2;
        *v35 = v37;
      }

      else
      {
        a2[2] = v34;
        v33 = (a2 + 3);
      }
    }

    else
    {
      a2[1] = v32;
      v33 = (a2 + 2);
    }

    a2 = SnippetUI::CoreChartElement::InternalSerializeWithCachedSizesToArray(v31, v33, a3, a4);
  }

  v39 = *(this + 1);
  if ((v39 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v39 & 0xFFFFFFFFFFFFFFFELL), a2, a3, a4);
}

const google::protobuf::UnknownFieldSet *SnippetUI::VisualProperty::InternalSerializeWithCachedSizesToArray(SnippetUI::VisualProperty *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 6);
  if (v7)
  {
    v8 = 0;
    while (a2 < *a3)
    {
      if (v8 < 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      if (*(this + 6) <= v8)
      {
        google::protobuf::internal::LogMessage::LogMessage(v41, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1539);
        v10 = google::protobuf::internal::LogMessage::operator<<(v41, "CHECK failed: (index) < (current_size_): ");
        google::protobuf::internal::LogFinisher::operator=(&v40, v10);
        google::protobuf::internal::LogMessage::~LogMessage(&v41[0].__r_.__value_.__l.__data_);
      }

      v11 = *(*(this + 4) + 8 * v8 + 8);
      *a2 = 10;
      v12 = *(v11 + 6);
      if (v12 > 0x7F)
      {
        *(a2 + 1) = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v15 = a2 + 2;
          do
          {
            v16 = v15;
            *v15++ = v14 | 0x80;
            v17 = v14 >> 7;
            v18 = v14 >> 14;
            v14 >>= 7;
          }

          while (v18);
          v13 = v16 + 2;
          *v15 = v17;
        }

        else
        {
          *(a2 + 2) = v14;
          v13 = a2 + 3;
        }
      }

      else
      {
        *(a2 + 1) = v12;
        v13 = a2 + 2;
      }

      a2 = SnippetUI::VisualElement::InternalSerializeWithCachedSizesToArray(v11, v13, a3, a4);
      if (++v8 == v7)
      {
        goto LABEL_19;
      }
    }

    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    google::protobuf::internal::LogMessage::LogMessage(v41, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v9 = google::protobuf::internal::LogMessage::operator<<(v41, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v40, v9);
    google::protobuf::internal::LogMessage::~LogMessage(&v41[0].__r_.__value_.__l.__data_);
    goto LABEL_6;
  }

LABEL_19:
  v19 = *(this + 56);
  if (v19)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v19 = *(this + 56);
    }

    *a2 = 16;
    *(a2 + 1) = v19;
    a2 = (a2 + 2);
  }

  if (this != &SnippetUI::_VisualProperty_default_instance_)
  {
    v20 = *(this + 5);
    if (!v20)
    {
      goto LABEL_36;
    }

    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v20 = *(this + 5);
    }

    *a2 = 26;
    v21 = *(v20 + 12);
    if (v21 > 0x7F)
    {
      *(a2 + 1) = v21 | 0x80;
      v23 = v21 >> 7;
      if (v21 >> 14)
      {
        v25 = a2 + 2;
        do
        {
          v26 = v25;
          *v25++ = v23 | 0x80;
          v27 = v23 >> 7;
          v28 = v23 >> 14;
          v23 >>= 7;
        }

        while (v28);
        v24 = (v26 + 2);
        *v25 = v27;
        goto LABEL_35;
      }

      *(a2 + 2) = v23;
      v22 = 3;
    }

    else
    {
      *(a2 + 1) = v21;
      v22 = 2;
    }

    v24 = (a2 + v22);
LABEL_35:
    a2 = SnippetUI::ActionProperty::InternalSerializeWithCachedSizesToArray(v20, v24, a3, a4);
LABEL_36:
    v29 = *(this + 6);
    if (v29)
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        v29 = *(this + 6);
      }

      *a2 = 34;
      v30 = *(v29 + 12);
      if (v30 > 0x7F)
      {
        *(a2 + 1) = v30 | 0x80;
        v32 = v30 >> 7;
        if (v30 >> 14)
        {
          v33 = a2 + 2;
          do
          {
            v34 = v33;
            *v33++ = v32 | 0x80;
            v35 = v32 >> 7;
            v36 = v32 >> 14;
            v32 >>= 7;
          }

          while (v36);
          v31 = (v34 + 2);
          *v33 = v35;
        }

        else
        {
          *(a2 + 2) = v32;
          v31 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v30;
        v31 = (a2 + 2);
      }

      a2 = SnippetUI::ActionProperty::InternalSerializeWithCachedSizesToArray(v29, v31, a3, a4);
    }
  }

  v37 = *(this + 57);
  if (v37 == 1)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      LOBYTE(v37) = *(this + 57);
    }

    *a2 = 40;
    *(a2 + 1) = v37;
    a2 = (a2 + 2);
  }

  v38 = *(this + 1);
  if ((v38 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v38 & 0xFFFFFFFFFFFFFFFELL), a2, a3, a4);
}

void sub_1BFBF1BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const google::protobuf::UnknownFieldSet *SnippetUI::Button::InternalSerializeWithCachedSizesToArray(SnippetUI::Button *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a2;
  if (this == &SnippetUI::_Button_default_instance_)
  {
    goto LABEL_37;
  }

  v7 = *(this + 4);
  if (v7)
  {
    if (*a3 <= a2)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v7 = *(this + 4);
    }

    *v5 = 10;
    v8 = *(v7 + 12);
    if (v8 > 0x7F)
    {
      v5[1] = v8 | 0x80;
      v10 = v8 >> 7;
      if (v8 >> 14)
      {
        v12 = v5 + 2;
        do
        {
          v13 = v12;
          *v12++ = v10 | 0x80;
          v14 = v10 >> 7;
          v15 = v10 >> 14;
          v10 >>= 7;
        }

        while (v15);
        v11 = (v13 + 2);
        *v12 = v14;
        goto LABEL_13;
      }

      v5[2] = v10;
      v9 = 3;
    }

    else
    {
      v5[1] = v8;
      v9 = 2;
    }

    v11 = &v5[v9];
LABEL_13:
    v5 = SnippetUI::ActionProperty::InternalSerializeWithCachedSizesToArray(v7, v11, a3, a4);
  }

  v16 = *(this + 5);
  if (!v16)
  {
    goto LABEL_26;
  }

  if (v5 >= *a3)
  {
    v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    v16 = *(this + 5);
  }

  *v5 = 18;
  v17 = *(v16 + 15);
  if (v17 > 0x7F)
  {
    v5[1] = v17 | 0x80;
    v19 = v17 >> 7;
    if (v17 >> 14)
    {
      v21 = v5 + 2;
      do
      {
        v22 = v21;
        *v21++ = v19 | 0x80;
        v23 = v19 >> 7;
        v24 = v19 >> 14;
        v19 >>= 7;
      }

      while (v24);
      v20 = (v22 + 2);
      *v21 = v23;
      goto LABEL_25;
    }

    v5[2] = v19;
    v18 = 3;
  }

  else
  {
    v5[1] = v17;
    v18 = 2;
  }

  v20 = &v5[v18];
LABEL_25:
  v5 = SnippetUI::TextProperty::InternalSerializeWithCachedSizesToArray(v16, v20, a3, a4);
LABEL_26:
  v25 = *(this + 6);
  if (v25)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      v25 = *(this + 6);
    }

    *v5 = 26;
    v26 = *(v25 + 15);
    if (v26 > 0x7F)
    {
      v5[1] = v26 | 0x80;
      v28 = v26 >> 7;
      if (v26 >> 14)
      {
        v29 = v5 + 2;
        do
        {
          v30 = v29;
          *v29++ = v28 | 0x80;
          v31 = v28 >> 7;
          v32 = v28 >> 14;
          v28 >>= 7;
        }

        while (v32);
        v27 = (v30 + 2);
        *v29 = v31;
      }

      else
      {
        v5[2] = v28;
        v27 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v26;
      v27 = (v5 + 2);
    }

    v5 = SnippetUI::VisualProperty::InternalSerializeWithCachedSizesToArray(v25, v27, a3, a4);
  }

LABEL_37:
  v33 = *(this + 14);
  if (v33)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      v33 = *(this + 14);
    }

    *v5 = 32;
    if (v33 > 0x7F)
    {
      v5[1] = v33 | 0x80;
      v34 = v33 >> 7;
      if (v33 >> 14)
      {
        v35 = v5 + 2;
        do
        {
          v36 = v35;
          *v35++ = v34 | 0x80;
          v37 = v34 >> 7;
          v38 = v34 >> 14;
          v34 >>= 7;
        }

        while (v38);
        v5 = v36 + 2;
        *v35 = v37;
      }

      else
      {
        v5[2] = v34;
        v5 += 3;
      }
    }

    else
    {
      v5[1] = v33;
      v5 += 2;
    }
  }

  v39 = *(this + 2);
  v40 = *(v39 + 23);
  if ((v40 & 0x8000000000000000) != 0)
  {
    v40 = *(v39 + 1);
    if (!v40)
    {
      goto LABEL_53;
    }

    v39 = *v39;
    goto LABEL_52;
  }

  if (*(v39 + 23))
  {
LABEL_52:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v39, v40, 1, "SnippetUI.Button.component_name");
    v5 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 5, *(this + 2), v5);
  }

LABEL_53:
  v41 = *(this + 3);
  v42 = *(v41 + 23);
  if ((v42 & 0x8000000000000000) != 0)
  {
    v42 = *(v41 + 1);
    if (!v42)
    {
      goto LABEL_59;
    }

    v41 = *v41;
    goto LABEL_58;
  }

  if (*(v41 + 23))
  {
LABEL_58:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v41, v42, 1, "SnippetUI.Button.link_identifier");
    v5 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 6, *(this + 3), v5);
  }

LABEL_59:
  v43 = *(this + 15);
  if (v43)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      v43 = *(this + 15);
    }

    *v5 = 56;
    if (v43 > 0x7F)
    {
      v5[1] = v43 | 0x80;
      v44 = v43 >> 7;
      if (v43 >> 14)
      {
        v45 = v5 + 2;
        do
        {
          v46 = v45;
          *v45++ = v44 | 0x80;
          v47 = v44 >> 7;
          v48 = v44 >> 14;
          v44 >>= 7;
        }

        while (v48);
        v5 = v46 + 2;
        *v45 = v47;
      }

      else
      {
        v5[2] = v44;
        v5 += 3;
      }
    }

    else
    {
      v5[1] = v43;
      v5 += 2;
    }
  }

  v49 = *(this + 16);
  if (v49)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      v49 = *(this + 16);
    }

    *v5 = 64;
    if (v49 > 0x7F)
    {
      v5[1] = v49 | 0x80;
      v50 = v49 >> 7;
      if (v49 >> 14)
      {
        v51 = v5 + 2;
        do
        {
          v52 = v51;
          *v51++ = v50 | 0x80;
          v53 = v50 >> 7;
          v54 = v50 >> 14;
          v50 >>= 7;
        }

        while (v54);
        v5 = v52 + 2;
        *v51 = v53;
      }

      else
      {
        v5[2] = v50;
        v5 += 3;
      }
    }

    else
    {
      v5[1] = v49;
      v5 += 2;
    }
  }

  v55 = *(this + 1);
  if ((v55 & 1) == 0)
  {
    return v5;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v55 & 0xFFFFFFFFFFFFFFFELL), v5, a3, a4);
}

const google::protobuf::UnknownFieldSet *SnippetUI::TextElement::InternalSerializeWithCachedSizesToArray(SnippetUI::TextElement *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 25);
  if (v7 == 1)
  {
    v8 = *(this + 11);
    v9 = v8[23];
    if ((v9 & 0x8000000000000000) != 0)
    {
      v8 = *v8;
      v9 = *(*(this + 11) + 8);
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v8, v9, 1, "SnippetUI.TextElement.plain");
    if (*(this + 25) == 1)
    {
      v10 = *(this + 11);
    }

    else
    {
      v10 = &google::protobuf::internal::fixed_address_empty_string;
    }

    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, v10, a2);
    v7 = *(this + 25);
  }

  if (v7 == 2)
  {
    v11 = *(this + 11);
    v12 = v11[23];
    if ((v12 & 0x8000000000000000) != 0)
    {
      v11 = *v11;
      v12 = *(*(this + 11) + 8);
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v11, v12, 1, "SnippetUI.TextElement.attributed");
    if (*(this + 25) == 2)
    {
      v13 = *(this + 11);
    }

    else
    {
      v13 = &google::protobuf::internal::fixed_address_empty_string;
    }

    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, v13, a2);
  }

  if (this != &SnippetUI::_TextElement_default_instance_)
  {
    v14 = *(this + 5);
    if (!v14)
    {
      goto LABEL_28;
    }

    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v14 = *(this + 5);
    }

    *a2 = 26;
    v15 = *(v14 + 6);
    if (v15 > 0x7F)
    {
      *(a2 + 1) = v15 | 0x80;
      v17 = v15 >> 7;
      if (v15 >> 14)
      {
        v19 = a2 + 2;
        do
        {
          v20 = v19;
          *v19++ = v17 | 0x80;
          v21 = v17 >> 7;
          v22 = v17 >> 14;
          v17 >>= 7;
        }

        while (v22);
        v18 = v20 + 2;
        *v19 = v21;
        goto LABEL_27;
      }

      *(a2 + 2) = v17;
      v16 = 3;
    }

    else
    {
      *(a2 + 1) = v15;
      v16 = 2;
    }

    v18 = a2 + v16;
LABEL_27:
    a2 = SnippetUI::TextElement_Font::InternalSerializeWithCachedSizesToArray(v14, v18, a3, a4);
LABEL_28:
    v23 = *(this + 6);
    if (!v23)
    {
      goto LABEL_40;
    }

    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v23 = *(this + 6);
    }

    *a2 = 34;
    v24 = *(v23 + 5);
    if (v24 > 0x7F)
    {
      *(a2 + 1) = v24 | 0x80;
      v26 = v24 >> 7;
      if (v24 >> 14)
      {
        v28 = a2 + 2;
        do
        {
          v29 = v28;
          *v28++ = v26 | 0x80;
          v30 = v26 >> 7;
          v31 = v26 >> 14;
          v26 >>= 7;
        }

        while (v31);
        v27 = v29 + 2;
        *v28 = v30;
        goto LABEL_39;
      }

      *(a2 + 2) = v26;
      v25 = 3;
    }

    else
    {
      *(a2 + 1) = v24;
      v25 = 2;
    }

    v27 = a2 + v25;
LABEL_39:
    a2 = SnippetUI::TextElement_FontWeight::InternalSerializeWithCachedSizesToArray(v23, v27, a3, a4);
LABEL_40:
    v32 = *(this + 7);
    if (!v32)
    {
      goto LABEL_52;
    }

    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v32 = *(this + 7);
    }

    *a2 = 42;
    v33 = *(v32 + 6);
    if (v33 > 0x7F)
    {
      *(a2 + 1) = v33 | 0x80;
      v35 = v33 >> 7;
      if (v33 >> 14)
      {
        v37 = a2 + 2;
        do
        {
          v38 = v37;
          *v37++ = v35 | 0x80;
          v39 = v35 >> 7;
          v40 = v35 >> 14;
          v35 >>= 7;
        }

        while (v40);
        v36 = v38 + 2;
        *v37 = v39;
        goto LABEL_51;
      }

      *(a2 + 2) = v35;
      v34 = 3;
    }

    else
    {
      *(a2 + 1) = v33;
      v34 = 2;
    }

    v36 = a2 + v34;
LABEL_51:
    a2 = SnippetUI::Color::InternalSerializeWithCachedSizesToArray(v32, v36, a3, a4);
LABEL_52:
    v41 = *(this + 8);
    if (!v41)
    {
      goto LABEL_64;
    }

    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v41 = *(this + 8);
    }

    *a2 = 50;
    v42 = *(v41 + 5);
    if (v42 > 0x7F)
    {
      *(a2 + 1) = v42 | 0x80;
      v44 = v42 >> 7;
      if (v42 >> 14)
      {
        v46 = a2 + 2;
        do
        {
          v47 = v46;
          *v46++ = v44 | 0x80;
          v48 = v44 >> 7;
          v49 = v44 >> 14;
          v44 >>= 7;
        }

        while (v49);
        v45 = v47 + 2;
        *v46 = v48;
        goto LABEL_63;
      }

      *(a2 + 2) = v44;
      v43 = 3;
    }

    else
    {
      *(a2 + 1) = v42;
      v43 = 2;
    }

    v45 = a2 + v43;
LABEL_63:
    a2 = SnippetUI::OptionalBool::InternalSerializeWithCachedSizesToArray(v41, v45, a3, a4);
LABEL_64:
    v50 = *(this + 9);
    if (v50)
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        v50 = *(this + 9);
      }

      *a2 = 58;
      v51 = *(v50 + 5);
      if (v51 > 0x7F)
      {
        *(a2 + 1) = v51 | 0x80;
        v53 = v51 >> 7;
        if (v51 >> 14)
        {
          v54 = a2 + 2;
          do
          {
            v55 = v54;
            *v54++ = v53 | 0x80;
            v56 = v53 >> 7;
            v57 = v53 >> 14;
            v53 >>= 7;
          }

          while (v57);
          v52 = v55 + 2;
          *v54 = v56;
        }

        else
        {
          *(a2 + 2) = v53;
          v52 = a2 + 3;
        }
      }

      else
      {
        *(a2 + 1) = v51;
        v52 = a2 + 2;
      }

      a2 = SnippetUI::OptionalBool::InternalSerializeWithCachedSizesToArray(v50, v52, a3, a4);
    }
  }

  v58 = *(this + 8);
  if (v58 >= 1)
  {
    v59 = *a3;
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v59 = *a3;
    }

    if (v59 <= a2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v81, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/io/coded_stream.h", 856);
      v60 = google::protobuf::internal::LogMessage::operator<<(v81, "CHECK failed: ptr < end_: ");
      google::protobuf::internal::LogFinisher::operator=(&v80, v60);
      google::protobuf::internal::LogMessage::~LogMessage(&v81[0].__r_.__value_.__l.__data_);
    }

    *a2 = 66;
    v61 = a2 + 1;
    if (v58 >= 0x80)
    {
      do
      {
        *v61++ = v58 | 0x80;
        v79 = v58 >> 14;
        v58 >>= 7;
      }

      while (v79);
      a2 = (v61 - 1);
    }

    a2 = (a2 + 2);
    *v61 = v58;
    v62 = *(this + 3);
    v63 = &v62[*(this + 4)];
    do
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v65 = *v62++;
      v64 = v65;
      if (v65 > 0x7F)
      {
        *a2 = v64 | 0x80;
        v66 = v64 >> 7;
        if (v64 >> 14)
        {
          v67 = a2 + 1;
          do
          {
            v68 = v67;
            *v67++ = v66 | 0x80;
            v69 = v66 >> 7;
            v70 = v66 >> 14;
            v66 >>= 7;
          }

          while (v70);
          a2 = (v68 + 2);
          *v67 = v69;
        }

        else
        {
          *(a2 + 1) = v66;
          a2 = (a2 + 2);
        }
      }

      else
      {
        *a2 = v64;
        a2 = (a2 + 1);
      }
    }

    while (v62 < v63);
  }

  v71 = *(this + 20);
  if (v71)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v71 = *(this + 20);
    }

    *a2 = 72;
    if (v71 > 0x7F)
    {
      *(a2 + 1) = v71 | 0x80;
      v72 = v71 >> 7;
      if (v71 >> 14)
      {
        v73 = a2 + 2;
        do
        {
          v74 = v73;
          *v73++ = v72 | 0x80;
          v75 = v72 >> 7;
          v76 = v72 >> 14;
          v72 >>= 7;
        }

        while (v76);
        a2 = (v74 + 2);
        *v73 = v75;
      }

      else
      {
        *(a2 + 2) = v72;
        a2 = (a2 + 3);
      }
    }

    else
    {
      *(a2 + 1) = v71;
      a2 = (a2 + 2);
    }
  }

  v77 = *(this + 1);
  if (v77)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v77 & 0xFFFFFFFFFFFFFFFELL), a2, a3, a4);
  }

  return a2;
}

void sub_1BFBF26E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const google::protobuf::UnknownFieldSet *SnippetUI::TextProperty::InternalSerializeWithCachedSizesToArray(SnippetUI::TextProperty *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 6);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::TextElement>::TypeHandler>(this + 16, i);
      *a2 = 10;
      v11 = *(v9 + 24);
      if (v11 > 0x7F)
      {
        *(a2 + 1) = v11 | 0x80;
        v13 = v11 >> 7;
        if (v11 >> 14)
        {
          v14 = a2 + 2;
          do
          {
            v15 = v14;
            *v14++ = v13 | 0x80;
            v16 = v13 >> 7;
            v17 = v13 >> 14;
            v13 >>= 7;
          }

          while (v17);
          v12 = (v15 + 2);
          *v14 = v16;
        }

        else
        {
          *(a2 + 2) = v13;
          v12 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v11;
        v12 = (a2 + 2);
      }

      a2 = SnippetUI::TextElement::InternalSerializeWithCachedSizesToArray(v9, v12, a3, v10);
    }
  }

  v18 = *(this + 56);
  if (v18)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v18 = *(this + 56);
    }

    *a2 = 16;
    *(a2 + 1) = v18;
    a2 = (a2 + 2);
  }

  if (this != &SnippetUI::_TextProperty_default_instance_)
  {
    v19 = *(this + 5);
    if (!v19)
    {
      goto LABEL_30;
    }

    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v19 = *(this + 5);
    }

    *a2 = 26;
    v20 = *(v19 + 12);
    if (v20 > 0x7F)
    {
      *(a2 + 1) = v20 | 0x80;
      v22 = v20 >> 7;
      if (v20 >> 14)
      {
        v24 = a2 + 2;
        do
        {
          v25 = v24;
          *v24++ = v22 | 0x80;
          v26 = v22 >> 7;
          v27 = v22 >> 14;
          v22 >>= 7;
        }

        while (v27);
        v23 = (v25 + 2);
        *v24 = v26;
        goto LABEL_29;
      }

      *(a2 + 2) = v22;
      v21 = 3;
    }

    else
    {
      *(a2 + 1) = v20;
      v21 = 2;
    }

    v23 = (a2 + v21);
LABEL_29:
    a2 = SnippetUI::ActionProperty::InternalSerializeWithCachedSizesToArray(v19, v23, a3, a4);
LABEL_30:
    v28 = *(this + 6);
    if (v28)
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
        v28 = *(this + 6);
      }

      *a2 = 34;
      v29 = *(v28 + 12);
      if (v29 > 0x7F)
      {
        *(a2 + 1) = v29 | 0x80;
        v31 = v29 >> 7;
        if (v29 >> 14)
        {
          v32 = a2 + 2;
          do
          {
            v33 = v32;
            *v32++ = v31 | 0x80;
            v34 = v31 >> 7;
            v35 = v31 >> 14;
            v31 >>= 7;
          }

          while (v35);
          v30 = (v33 + 2);
          *v32 = v34;
        }

        else
        {
          *(a2 + 2) = v31;
          v30 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v29;
        v30 = (a2 + 2);
      }

      a2 = SnippetUI::ActionProperty::InternalSerializeWithCachedSizesToArray(v28, v30, a3, a4);
    }
  }

  v36 = *(this + 57);
  if (v36 == 1)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      LOBYTE(v36) = *(this + 57);
    }

    *a2 = 40;
    *(a2 + 1) = v36;
    a2 = (a2 + 2);
  }

  v37 = *(this + 1);
  if ((v37 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v37 & 0xFFFFFFFFFFFFFFFELL), a2, a3, a4);
}

const google::protobuf::UnknownFieldSet *SnippetUI::Command::InternalSerializeWithCachedSizesToArray(SnippetUI::Command *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a2;
  v7 = *(this + 9);
  if (v7 == 1)
  {
    if (*a3 > a2 || (v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2), *(this + 9) == 1))
    {
      v8 = *(this + 24);
    }

    else
    {
      v8 = 0;
    }

    *v5 = 8;
    v5[1] = v8 & 1;
    v5 += 2;
    v7 = *(this + 9);
  }

  if (v7 == 2)
  {
    v5 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 3), v5);
    v7 = *(this + 9);
  }

  if (v7 == 3)
  {
    v5 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 3, *(this + 3), v5);
    v7 = *(this + 9);
  }

  if (v7 == 4)
  {
    v9 = *(this + 3);
    v10 = v9[23];
    if ((v10 & 0x8000000000000000) != 0)
    {
      v9 = *v9;
      v10 = *(*(this + 3) + 8);
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v9, v10, 1, "SnippetUI.Command.utterance");
    if (*(this + 9) == 4)
    {
      v11 = *(this + 3);
    }

    else
    {
      v11 = &google::protobuf::internal::fixed_address_empty_string;
    }

    v5 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 4, v11, v5);
    v7 = *(this + 9);
  }

  if (v7 == 5)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v12 = *(this + 3);
    *v5 = 42;
    v13 = *(v12 + 10);
    if (v13 > 0x7F)
    {
      v5[1] = v13 | 0x80;
      v15 = v13 >> 7;
      if (v13 >> 14)
      {
        v16 = v5 + 2;
        do
        {
          v17 = v16;
          *v16++ = v15 | 0x80;
          v18 = v15 >> 7;
          v19 = v15 >> 14;
          v15 >>= 7;
        }

        while (v19);
        v14 = (v17 + 2);
        *v16 = v18;
      }

      else
      {
        v5[2] = v15;
        v14 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v13;
      v14 = (v5 + 2);
    }

    v5 = SnippetUI::Command_ChangeBackground::InternalSerializeWithCachedSizesToArray(v12, v14, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 6)
  {
    v5 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 6, *(this + 3), v5);
    v7 = *(this + 9);
  }

  if (v7 == 7)
  {
    v5 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 7, *(this + 3), v5);
  }

  v20 = *(this + 16);
  if (v20 == 1)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      LOBYTE(v20) = *(this + 16);
    }

    *v5 = 64;
    v5[1] = v20;
    v5 += 2;
  }

  v21 = *(this + 9);
  if (v21 == 9)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v22 = *(this + 3);
    *v5 = 74;
    v23 = *(v22 + 6);
    if (v23 > 0x7F)
    {
      v5[1] = v23 | 0x80;
      v25 = v23 >> 7;
      if (v23 >> 14)
      {
        v26 = v5 + 2;
        do
        {
          v27 = v26;
          *v26++ = v25 | 0x80;
          v28 = v25 >> 7;
          v29 = v25 >> 14;
          v25 >>= 7;
        }

        while (v29);
        v24 = (v27 + 2);
        *v26 = v28;
      }

      else
      {
        v5[2] = v25;
        v24 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v23;
      v24 = (v5 + 2);
    }

    v5 = SnippetUI::Command_ResponseGroup::InternalSerializeWithCachedSizesToArray(v22, v24, a3, a4);
    v21 = *(this + 9);
  }

  if (v21 == 10)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v30 = *(this + 3);
    *v5 = 82;
    v31 = *(v30 + 10);
    if (v31 > 0x7F)
    {
      v5[1] = v31 | 0x80;
      v33 = v31 >> 7;
      if (v31 >> 14)
      {
        v34 = v5 + 2;
        do
        {
          v35 = v34;
          *v34++ = v33 | 0x80;
          v36 = v33 >> 7;
          v37 = v33 >> 14;
          v33 >>= 7;
        }

        while (v37);
        v32 = (v35 + 2);
        *v34 = v36;
      }

      else
      {
        v5[2] = v33;
        v32 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v31;
      v32 = (v5 + 2);
    }

    v5 = SnippetUI::Command_AppPunchout::InternalSerializeWithCachedSizesToArray(v30, v32, a3, a4);
    v21 = *(this + 9);
  }

  if (v21 == 11)
  {
    v5 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 11, *(this + 3), v5);
  }

  v38 = *(this + 1);
  if ((v38 & 1) == 0)
  {
    return v5;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v38 & 0xFFFFFFFFFFFFFFFELL), v5, a3, a4);
}

const google::protobuf::UnknownFieldSet *SnippetUI::ActionProperty::InternalSerializeWithCachedSizesToArray(SnippetUI::ActionProperty *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 6);
  if (v7)
  {
    v8 = 0;
    while (a2 < *a3)
    {
      if (v8 < 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      if (*(this + 6) <= v8)
      {
        google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1539);
        v10 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (index) < (current_size_): ");
        google::protobuf::internal::LogFinisher::operator=(&v23, v10);
        google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
      }

      v11 = *(*(this + 4) + 8 * v8 + 8);
      *a2 = 10;
      v12 = *(v11 + 18);
      if (v12 > 0x7F)
      {
        *(a2 + 1) = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v15 = a2 + 2;
          do
          {
            v16 = v15;
            *v15++ = v14 | 0x80;
            v17 = v14 >> 7;
            v18 = v14 >> 14;
            v14 >>= 7;
          }

          while (v18);
          v13 = (v16 + 2);
          *v15 = v17;
        }

        else
        {
          *(a2 + 2) = v14;
          v13 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v12;
        v13 = (a2 + 2);
      }

      a2 = SnippetUI::ActionElement::InternalSerializeWithCachedSizesToArray(v11, v13, a3, a4);
      if (++v8 == v7)
      {
        goto LABEL_19;
      }
    }

    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    google::protobuf::internal::LogMessage::LogMessage(v24, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v9 = google::protobuf::internal::LogMessage::operator<<(v24, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v23, v9);
    google::protobuf::internal::LogMessage::~LogMessage(&v24[0].__r_.__value_.__l.__data_);
    goto LABEL_6;
  }

LABEL_19:
  v19 = *(this + 5);
  v20 = *(v19 + 23);
  if ((v20 & 0x8000000000000000) != 0)
  {
    v20 = *(v19 + 1);
    if (!v20)
    {
      goto LABEL_25;
    }

    v19 = *v19;
    goto LABEL_24;
  }

  if (*(v19 + 23))
  {
LABEL_24:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v19, v20, 1, "SnippetUI.ActionProperty.action_name");
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 5), a2);
  }

LABEL_25:
  v21 = *(this + 1);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v21 & 0xFFFFFFFFFFFFFFFELL), a2, a3, a4);
}

void sub_1BFBF3020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const google::protobuf::UnknownFieldSet *SnippetUI::Button_Container::InternalSerializeWithCachedSizesToArray(SnippetUI::Button_Container *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 6);
  if (v7)
  {
    v8 = 0;
    while (a2 < *a3)
    {
      if (v8 < 0)
      {
        goto LABEL_5;
      }

LABEL_6:
      if (*(this + 6) <= v8)
      {
        google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1539);
        v10 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (index) < (current_size_): ");
        google::protobuf::internal::LogFinisher::operator=(&v21, v10);
        google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
      }

      v11 = *(*(this + 4) + 8 * v8 + 8);
      *a2 = 10;
      v12 = *(v11 + 6);
      if (v12 > 0x7F)
      {
        *(a2 + 1) = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v15 = a2 + 2;
          do
          {
            v16 = v15;
            *v15++ = v14 | 0x80;
            v17 = v14 >> 7;
            v18 = v14 >> 14;
            v14 >>= 7;
          }

          while (v18);
          v13 = v16 + 2;
          *v15 = v17;
        }

        else
        {
          *(a2 + 2) = v14;
          v13 = a2 + 3;
        }
      }

      else
      {
        *(a2 + 1) = v12;
        v13 = a2 + 2;
      }

      a2 = SnippetUI::Button_Container_ButtonItem::InternalSerializeWithCachedSizesToArray(v11, v13, a3, a4);
      if (++v8 == v7)
      {
        goto LABEL_19;
      }
    }

    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    google::protobuf::internal::LogMessage::LogMessage(v22, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v9 = google::protobuf::internal::LogMessage::operator<<(v22, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v21, v9);
    google::protobuf::internal::LogMessage::~LogMessage(&v22[0].__r_.__value_.__l.__data_);
    goto LABEL_6;
  }

LABEL_19:
  v19 = *(this + 1);
  if ((v19 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v19 & 0xFFFFFFFFFFFFFFFELL), a2, a3, a4);
}

void sub_1BFBF3228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const google::protobuf::UnknownFieldSet *SnippetUI::Response_Group::InternalSerializeWithCachedSizesToArray(SnippetUI::Response_Group *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 5);
  v8 = *(v7 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v7 + 1);
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *v7;
    goto LABEL_6;
  }

  if (*(v7 + 23))
  {
LABEL_6:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v7, v8, 1, "SnippetUI.Response.Group.id");
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 5), a2);
  }

LABEL_7:
  v9 = *(this + 6);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v11 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::Response_Component>::TypeHandler>(this + 16, i);
      *a2 = 18;
      v13 = *(v11 + 8);
      if (v13 > 0x7F)
      {
        *(a2 + 1) = v13 | 0x80;
        v15 = v13 >> 7;
        if (v13 >> 14)
        {
          v16 = a2 + 2;
          do
          {
            v17 = v16;
            *v16++ = v15 | 0x80;
            v18 = v15 >> 7;
            v19 = v15 >> 14;
            v15 >>= 7;
          }

          while (v19);
          v14 = (v17 + 2);
          *v16 = v18;
        }

        else
        {
          *(a2 + 2) = v15;
          v14 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v13;
        v14 = (a2 + 2);
      }

      a2 = SnippetUI::Response_Component::InternalSerializeWithCachedSizesToArray(v11, v14, a3, v12);
    }
  }

  v20 = *(this + 1);
  if ((v20 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v20 & 0xFFFFFFFFFFFFFFFELL), a2, a3, a4);
}

const google::protobuf::UnknownFieldSet *SnippetUI::CustomCanvas::InternalSerializeWithCachedSizesToArray(SnippetUI::CustomCanvas *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 2);
  v8 = *(v7 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v7 + 1);
    if (!v8)
    {
      goto LABEL_7;
    }

    v7 = *v7;
    goto LABEL_6;
  }

  if (*(v7 + 23))
  {
LABEL_6:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v7, v8, 1, "SnippetUI.CustomCanvas.bundle_name");
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 2), a2);
  }

LABEL_7:
  v9 = *(this + 3);
  v10 = *(v9 + 23);
  if ((v10 & 0x8000000000000000) != 0)
  {
    v10 = *(v9 + 1);
    if (!v10)
    {
      goto LABEL_13;
    }

    v9 = *v9;
    goto LABEL_12;
  }

  if (*(v9 + 23))
  {
LABEL_12:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v9, v10, 1, "SnippetUI.CustomCanvas.view_id");
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 3, *(this + 3), a2);
  }

LABEL_13:
  v11 = *(this + 4);
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v12 = *(v11 + 8);
  }

  if (v12)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 4, v11, a2);
  }

  v13 = *(this + 5);
  v14 = *(v13 + 23);
  if ((v14 & 0x8000000000000000) != 0)
  {
    v14 = *(v13 + 1);
    if (!v14)
    {
      goto LABEL_23;
    }

    v13 = *v13;
    goto LABEL_22;
  }

  if (*(v13 + 23))
  {
LABEL_22:
    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v13, v14, 1, "SnippetUI.CustomCanvas.component_name");
    a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 5, *(this + 5), a2);
  }

LABEL_23:
  v15 = *(this + 48);
  if (v15 == 1)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      LOBYTE(v15) = *(this + 48);
    }

    *a2 = 48;
    a2[1] = v15;
    a2 += 2;
  }

  v16 = *(this + 49);
  if (v16 == 1)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      LOBYTE(v16) = *(this + 49);
    }

    *a2 = 56;
    a2[1] = v16;
    a2 += 2;
  }

  v17 = *(this + 50);
  if (v17 == 1)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      LOBYTE(v17) = *(this + 50);
    }

    *a2 = 64;
    a2[1] = v17;
    a2 += 2;
  }

  v18 = *(this + 1);
  if ((v18 & 1) == 0)
  {
    return a2;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v18 & 0xFFFFFFFFFFFFFFFELL), a2, a3, a4);
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteRawMaybeAliased(google::protobuf::io::EpsCopyOutputStream *this, void *a2, uint64_t a3, char *a4)
{
  if (*(this + 57) == 1)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteAliasedRaw(this, a2, a3, a4);
  }

  else if (*this - a4 < a3)
  {

    return google::protobuf::io::EpsCopyOutputStream::WriteRawFallback(this, a2, a3, a4);
  }

  else
  {
    v6 = a3;
    memcpy(a4, a2, a3);
    return &a4[v6];
  }
}

unsigned __int8 *google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliasedOutline(google::protobuf::io::EpsCopyOutputStream *this, int a2, void **a3, char *a4)
{
  v4 = a4;
  v8 = *this;
  if (*this <= a4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a4);
    v8 = *this;
  }

  if (*(a3 + 23) >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  if (v8 <= v4)
  {
    google::protobuf::internal::LogMessage::LogMessage(v23, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/io/coded_stream.h", 856);
    v10 = google::protobuf::internal::LogMessage::operator<<(v23, "CHECK failed: ptr < end_: ");
    google::protobuf::internal::LogFinisher::operator=(&v22, v10);
    google::protobuf::internal::LogMessage::~LogMessage(&v23[0].__r_.__value_.__l.__data_);
  }

  v11 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *v4 = v11 | 0x82;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v4 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v4[1] = v13;
      v12 = v4 + 2;
    }
  }

  else
  {
    *v4 = v11 | 2;
    v12 = v4 + 1;
  }

  if (v9 >= 0x80)
  {
    v20 = v9;
    do
    {
      *v12++ = v20 | 0x80;
      v16 = v20 >> 7;
      v21 = v20 >> 14;
      v20 >>= 7;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v16) = v9;
  }

  *v12 = v16;
  v17 = v12 + 1;
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  return google::protobuf::io::EpsCopyOutputStream::WriteRawMaybeAliased(this, v18, v9, v17);
}

void sub_1BFBF37E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

const google::protobuf::UnknownFieldSet *SnippetUI::Response_Component::InternalSerializeWithCachedSizesToArray(SnippetUI::Response_Component *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a2;
  v7 = *(this + 9);
  if (v7 == 1)
  {
    if (*a3 <= a2)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v8 = *(this + 3);
    *v5 = 10;
    v9 = *(v8 + 13);
    if (v9 > 0x7F)
    {
      v5[1] = v9 | 0x80;
      v11 = v9 >> 7;
      if (v9 >> 14)
      {
        v12 = v5 + 2;
        do
        {
          v13 = v12;
          *v12++ = v11 | 0x80;
          v14 = v11 >> 7;
          v15 = v11 >> 14;
          v11 >>= 7;
        }

        while (v15);
        v10 = v13 + 2;
        *v12 = v14;
      }

      else
      {
        v5[2] = v11;
        v10 = v5 + 3;
      }
    }

    else
    {
      v5[1] = v9;
      v10 = v5 + 2;
    }

    v5 = SnippetUI::CustomCanvas::InternalSerializeWithCachedSizesToArray(v8, v10, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 2)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v16 = *(this + 3);
    *v5 = 18;
    v17 = *(v16 + 22);
    if (v17 > 0x7F)
    {
      v5[1] = v17 | 0x80;
      v19 = v17 >> 7;
      if (v17 >> 14)
      {
        v20 = v5 + 2;
        do
        {
          v21 = v20;
          *v20++ = v19 | 0x80;
          v22 = v19 >> 7;
          v23 = v19 >> 14;
          v19 >>= 7;
        }

        while (v23);
        v18 = (v21 + 2);
        *v20 = v22;
      }

      else
      {
        v5[2] = v19;
        v18 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v17;
      v18 = (v5 + 2);
    }

    v5 = SnippetUI::FactItem_Standard::InternalSerializeWithCachedSizesToArray(v16, v18, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 3)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v24 = *(this + 3);
    *v5 = 26;
    v25 = *(v24 + 24);
    if (v25 > 0x7F)
    {
      v5[1] = v25 | 0x80;
      v27 = v25 >> 7;
      if (v25 >> 14)
      {
        v28 = v5 + 2;
        do
        {
          v29 = v28;
          *v28++ = v27 | 0x80;
          v30 = v27 >> 7;
          v31 = v27 >> 14;
          v27 >>= 7;
        }

        while (v31);
        v26 = (v29 + 2);
        *v28 = v30;
      }

      else
      {
        v5[2] = v27;
        v26 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v25;
      v26 = (v5 + 2);
    }

    v5 = SnippetUI::FactItem_ShortNumber::InternalSerializeWithCachedSizesToArray(v24, v26, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 4)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v32 = *(this + 3);
    *v5 = 34;
    v33 = *(v32 + 22);
    if (v33 > 0x7F)
    {
      v5[1] = v33 | 0x80;
      v35 = v33 >> 7;
      if (v33 >> 14)
      {
        v36 = v5 + 2;
        do
        {
          v37 = v36;
          *v36++ = v35 | 0x80;
          v38 = v35 >> 7;
          v39 = v35 >> 14;
          v35 >>= 7;
        }

        while (v39);
        v34 = (v37 + 2);
        *v36 = v38;
      }

      else
      {
        v5[2] = v35;
        v34 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v33;
      v34 = (v5 + 2);
    }

    v5 = SnippetUI::FactItem_HeroNumber::InternalSerializeWithCachedSizesToArray(v32, v34, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 5)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v40 = *(this + 3);
    *v5 = 42;
    v41 = *(v40 + 20);
    if (v41 > 0x7F)
    {
      v5[1] = v41 | 0x80;
      v43 = v41 >> 7;
      if (v41 >> 14)
      {
        v44 = v5 + 2;
        do
        {
          v45 = v44;
          *v44++ = v43 | 0x80;
          v46 = v43 >> 7;
          v47 = v43 >> 14;
          v43 >>= 7;
        }

        while (v47);
        v42 = (v45 + 2);
        *v44 = v46;
      }

      else
      {
        v5[2] = v43;
        v42 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v41;
      v42 = (v5 + 2);
    }

    v5 = SnippetUI::SummaryItem_Standard::InternalSerializeWithCachedSizesToArray(v40, v42, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 6)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v48 = *(this + 3);
    *v5 = 50;
    v49 = *(v48 + 26);
    if (v49 > 0x7F)
    {
      v5[1] = v49 | 0x80;
      v51 = v49 >> 7;
      if (v49 >> 14)
      {
        v52 = v5 + 2;
        do
        {
          v53 = v52;
          *v52++ = v51 | 0x80;
          v54 = v51 >> 7;
          v55 = v51 >> 14;
          v51 >>= 7;
        }

        while (v55);
        v50 = (v53 + 2);
        *v52 = v54;
      }

      else
      {
        v5[2] = v51;
        v50 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v49;
      v50 = (v5 + 2);
    }

    v5 = SnippetUI::SummaryItem_ShortNumber::InternalSerializeWithCachedSizesToArray(v48, v50, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 7)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v56 = *(this + 3);
    *v5 = 58;
    v57 = *(v56 + 20);
    if (v57 > 0x7F)
    {
      v5[1] = v57 | 0x80;
      v59 = v57 >> 7;
      if (v57 >> 14)
      {
        v60 = v5 + 2;
        do
        {
          v61 = v60;
          *v60++ = v59 | 0x80;
          v62 = v59 >> 7;
          v63 = v59 >> 14;
          v59 >>= 7;
        }

        while (v63);
        v58 = (v61 + 2);
        *v60 = v62;
      }

      else
      {
        v5[2] = v59;
        v58 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v57;
      v58 = (v5 + 2);
    }

    v5 = SnippetUI::SummaryItem_Text::InternalSerializeWithCachedSizesToArray(v56, v58, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 8)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v64 = *(this + 3);
    *v5 = 66;
    v65 = *(v64 + 16);
    if (v65 > 0x7F)
    {
      v5[1] = v65 | 0x80;
      v67 = v65 >> 7;
      if (v65 >> 14)
      {
        v68 = v5 + 2;
        do
        {
          v69 = v68;
          *v68++ = v67 | 0x80;
          v70 = v67 >> 7;
          v71 = v67 >> 14;
          v67 >>= 7;
        }

        while (v71);
        v66 = (v69 + 2);
        *v68 = v70;
      }

      else
      {
        v5[2] = v67;
        v66 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v65;
      v66 = (v5 + 2);
    }

    v5 = SnippetUI::SummaryItem_LargeText::InternalSerializeWithCachedSizesToArray(v64, v66, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 9)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v72 = *(this + 3);
    *v5 = 74;
    v73 = *(v72 + 24);
    if (v73 > 0x7F)
    {
      v5[1] = v73 | 0x80;
      v75 = v73 >> 7;
      if (v73 >> 14)
      {
        v76 = v5 + 2;
        do
        {
          v77 = v76;
          *v76++ = v75 | 0x80;
          v78 = v75 >> 7;
          v79 = v75 >> 14;
          v75 >>= 7;
        }

        while (v79);
        v74 = (v77 + 2);
        *v76 = v78;
      }

      else
      {
        v5[2] = v75;
        v74 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v73;
      v74 = (v5 + 2);
    }

    v5 = SnippetUI::SummaryItem_DetailedText::InternalSerializeWithCachedSizesToArray(v72, v74, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 10)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v80 = *(this + 3);
    *v5 = 82;
    v81 = *(v80 + 22);
    if (v81 > 0x7F)
    {
      v5[1] = v81 | 0x80;
      v83 = v81 >> 7;
      if (v81 >> 14)
      {
        v84 = v5 + 2;
        do
        {
          v85 = v84;
          *v84++ = v83 | 0x80;
          v86 = v83 >> 7;
          v87 = v83 >> 14;
          v83 >>= 7;
        }

        while (v87);
        v82 = (v85 + 2);
        *v84 = v86;
      }

      else
      {
        v5[2] = v83;
        v82 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v81;
      v82 = (v5 + 2);
    }

    v5 = SnippetUI::SimpleItem_Standard::InternalSerializeWithCachedSizesToArray(v80, v82, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 11)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v88 = *(this + 3);
    *v5 = 90;
    v89 = *(v88 + 28);
    if (v89 > 0x7F)
    {
      v5[1] = v89 | 0x80;
      v91 = v89 >> 7;
      if (v89 >> 14)
      {
        v92 = v5 + 2;
        do
        {
          v93 = v92;
          *v92++ = v91 | 0x80;
          v94 = v91 >> 7;
          v95 = v91 >> 14;
          v91 >>= 7;
        }

        while (v95);
        v90 = (v93 + 2);
        *v92 = v94;
      }

      else
      {
        v5[2] = v91;
        v90 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v89;
      v90 = (v5 + 2);
    }

    v5 = SnippetUI::SimpleItem_Rich::InternalSerializeWithCachedSizesToArray(v88, v90, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 12)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v96 = *(this + 3);
    *v5 = 98;
    v97 = *(v96 + 18);
    if (v97 > 0x7F)
    {
      v5[1] = v97 | 0x80;
      v99 = v97 >> 7;
      if (v97 >> 14)
      {
        v100 = v5 + 2;
        do
        {
          v101 = v100;
          *v100++ = v99 | 0x80;
          v102 = v99 >> 7;
          v103 = v99 >> 14;
          v99 >>= 7;
        }

        while (v103);
        v98 = (v101 + 2);
        *v100 = v102;
      }

      else
      {
        v5[2] = v99;
        v98 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v97;
      v98 = (v5 + 2);
    }

    v5 = SnippetUI::SimpleItem_Visual::InternalSerializeWithCachedSizesToArray(v96, v98, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 13)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v104 = *(this + 3);
    *v5 = 106;
    v105 = *(v104 + 14);
    if (v105 > 0x7F)
    {
      v5[1] = v105 | 0x80;
      v107 = v105 >> 7;
      if (v105 >> 14)
      {
        v108 = v5 + 2;
        do
        {
          v109 = v108;
          *v108++ = v107 | 0x80;
          v110 = v107 >> 7;
          v111 = v107 >> 14;
          v107 >>= 7;
        }

        while (v111);
        v106 = (v109 + 2);
        *v108 = v110;
      }

      else
      {
        v5[2] = v107;
        v106 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v105;
      v106 = (v5 + 2);
    }

    v5 = SnippetUI::PrimaryHeader_Standard::InternalSerializeWithCachedSizesToArray(v104, v106, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 14)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v112 = *(this + 3);
    *v5 = 114;
    v113 = *(v112 + 14);
    if (v113 > 0x7F)
    {
      v5[1] = v113 | 0x80;
      v115 = v113 >> 7;
      if (v113 >> 14)
      {
        v116 = v5 + 2;
        do
        {
          v117 = v116;
          *v116++ = v115 | 0x80;
          v118 = v115 >> 7;
          v119 = v115 >> 14;
          v115 >>= 7;
        }

        while (v119);
        v114 = (v117 + 2);
        *v116 = v118;
      }

      else
      {
        v5[2] = v115;
        v114 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v113;
      v114 = (v5 + 2);
    }

    v5 = SnippetUI::PrimaryHeader_Marquee::InternalSerializeWithCachedSizesToArray(v112, v114, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 15)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v120 = *(this + 3);
    *v5 = 122;
    v121 = *(v120 + 18);
    if (v121 > 0x7F)
    {
      v5[1] = v121 | 0x80;
      v123 = v121 >> 7;
      if (v121 >> 14)
      {
        v124 = v5 + 2;
        do
        {
          v125 = v124;
          *v124++ = v123 | 0x80;
          v126 = v123 >> 7;
          v127 = v123 >> 14;
          v123 >>= 7;
        }

        while (v127);
        v122 = (v125 + 2);
        *v124 = v126;
      }

      else
      {
        v5[2] = v123;
        v122 = (v5 + 3);
      }
    }

    else
    {
      v5[1] = v121;
      v122 = (v5 + 2);
    }

    v5 = SnippetUI::PrimaryHeader_Rich::InternalSerializeWithCachedSizesToArray(v120, v122, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 16)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v128 = *(this + 3);
    *v5 = 386;
    v129 = *(v128 + 10);
    if (v129 > 0x7F)
    {
      v5[2] = v129 | 0x80;
      v131 = v129 >> 7;
      if (v129 >> 14)
      {
        v132 = v5 + 3;
        do
        {
          v133 = v132;
          *v132++ = v131 | 0x80;
          v134 = v131 >> 7;
          v135 = v131 >> 14;
          v131 >>= 7;
        }

        while (v135);
        v130 = (v133 + 2);
        *v132 = v134;
      }

      else
      {
        v5[3] = v131;
        v130 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v129;
      v130 = (v5 + 3);
    }

    v5 = SnippetUI::SecondaryHeader_Standard::InternalSerializeWithCachedSizesToArray(v128, v130, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 17)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v136 = *(this + 3);
    *v5 = 394;
    v137 = *(v136 + 17);
    if (v137 > 0x7F)
    {
      v5[2] = v137 | 0x80;
      v139 = v137 >> 7;
      if (v137 >> 14)
      {
        v140 = v5 + 3;
        do
        {
          v141 = v140;
          *v140++ = v139 | 0x80;
          v142 = v139 >> 7;
          v143 = v139 >> 14;
          v139 >>= 7;
        }

        while (v143);
        v138 = (v141 + 2);
        *v140 = v142;
      }

      else
      {
        v5[3] = v139;
        v138 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v137;
      v138 = (v5 + 3);
    }

    v5 = SnippetUI::Button::InternalSerializeWithCachedSizesToArray(v136, v138, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 18)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v144 = *(this + 3);
    *v5 = 402;
    v145 = *(v144 + 12);
    if (v145 > 0x7F)
    {
      v5[2] = v145 | 0x80;
      v147 = v145 >> 7;
      if (v145 >> 14)
      {
        v148 = v5 + 3;
        do
        {
          v149 = v148;
          *v148++ = v147 | 0x80;
          v150 = v147 >> 7;
          v151 = v147 >> 14;
          v147 >>= 7;
        }

        while (v151);
        v146 = (v149 + 2);
        *v148 = v150;
      }

      else
      {
        v5[3] = v147;
        v146 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v145;
      v146 = (v5 + 3);
    }

    v5 = SnippetUI::BinaryButton::InternalSerializeWithCachedSizesToArray(v144, v146, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 19)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v152 = *(this + 3);
    *v5 = 410;
    v153 = *(v152 + 12);
    if (v153 > 0x7F)
    {
      v5[2] = v153 | 0x80;
      v155 = v153 >> 7;
      if (v153 >> 14)
      {
        v156 = v5 + 3;
        do
        {
          v157 = v156;
          *v156++ = v155 | 0x80;
          v158 = v155 >> 7;
          v159 = v155 >> 14;
          v155 >>= 7;
        }

        while (v159);
        v154 = (v157 + 2);
        *v156 = v158;
      }

      else
      {
        v5[3] = v155;
        v154 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v153;
      v154 = (v5 + 3);
    }

    v5 = SnippetUI::StatusIndicator_Success::InternalSerializeWithCachedSizesToArray(v152, v154, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 20)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v160 = *(this + 3);
    *v5 = 418;
    v161 = *(v160 + 12);
    if (v161 > 0x7F)
    {
      v5[2] = v161 | 0x80;
      v163 = v161 >> 7;
      if (v161 >> 14)
      {
        v164 = v5 + 3;
        do
        {
          v165 = v164;
          *v164++ = v163 | 0x80;
          v166 = v163 >> 7;
          v167 = v163 >> 14;
          v163 >>= 7;
        }

        while (v167);
        v162 = (v165 + 2);
        *v164 = v166;
      }

      else
      {
        v5[3] = v163;
        v162 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v161;
      v162 = (v5 + 3);
    }

    v5 = SnippetUI::StatusIndicator_Error::InternalSerializeWithCachedSizesToArray(v160, v162, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 21)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v168 = *(this + 3);
    *v5 = 426;
    v169 = *(v168 + 12);
    if (v169 > 0x7F)
    {
      v5[2] = v169 | 0x80;
      v171 = v169 >> 7;
      if (v169 >> 14)
      {
        v172 = v5 + 3;
        do
        {
          v173 = v172;
          *v172++ = v171 | 0x80;
          v174 = v171 >> 7;
          v175 = v171 >> 14;
          v171 >>= 7;
        }

        while (v175);
        v170 = (v173 + 2);
        *v172 = v174;
      }

      else
      {
        v5[3] = v171;
        v170 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v169;
      v170 = (v5 + 3);
    }

    v5 = SnippetUI::StatusIndicator_InProgress::InternalSerializeWithCachedSizesToArray(v168, v170, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 22)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v176 = *(this + 3);
    *v5 = 434;
    v177 = *(v176 + 12);
    if (v177 > 0x7F)
    {
      v5[2] = v177 | 0x80;
      v179 = v177 >> 7;
      if (v177 >> 14)
      {
        v180 = v5 + 3;
        do
        {
          v181 = v180;
          *v180++ = v179 | 0x80;
          v182 = v179 >> 7;
          v183 = v179 >> 14;
          v179 >>= 7;
        }

        while (v183);
        v178 = (v181 + 2);
        *v180 = v182;
      }

      else
      {
        v5[3] = v179;
        v178 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v177;
      v178 = (v5 + 3);
    }

    v5 = SnippetUI::StatusIndicator_Cancelled::InternalSerializeWithCachedSizesToArray(v176, v178, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 23)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v184 = *(this + 3);
    *v5 = 442;
    v185 = *(v184 + 18);
    if (v185 > 0x7F)
    {
      v5[2] = v185 | 0x80;
      v187 = v185 >> 7;
      if (v185 >> 14)
      {
        v188 = v5 + 3;
        do
        {
          v189 = v188;
          *v188++ = v187 | 0x80;
          v190 = v187 >> 7;
          v191 = v187 >> 14;
          v187 >>= 7;
        }

        while (v191);
        v186 = v189 + 2;
        *v188 = v190;
      }

      else
      {
        v5[3] = v187;
        v186 = v5 + 4;
      }
    }

    else
    {
      v5[2] = v185;
      v186 = v5 + 3;
    }

    v5 = SnippetUI::TextInput::InternalSerializeWithCachedSizesToArray(v184, v186, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 24)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v192 = *(this + 3);
    *v5 = 450;
    v193 = *(v192 + 16);
    if (v193 > 0x7F)
    {
      v5[2] = v193 | 0x80;
      v195 = v193 >> 7;
      if (v193 >> 14)
      {
        v196 = v5 + 3;
        do
        {
          v197 = v196;
          *v196++ = v195 | 0x80;
          v198 = v195 >> 7;
          v199 = v195 >> 14;
          v195 >>= 7;
        }

        while (v199);
        v194 = (v197 + 2);
        *v196 = v198;
      }

      else
      {
        v5[3] = v195;
        v194 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v193;
      v194 = (v5 + 3);
    }

    v5 = SnippetUI::Control_Switch::InternalSerializeWithCachedSizesToArray(v192, v194, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 25)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v200 = *(this + 3);
    *v5 = 458;
    v201 = *(v200 + 12);
    if (v201 > 0x7F)
    {
      v5[2] = v201 | 0x80;
      v203 = v201 >> 7;
      if (v201 >> 14)
      {
        v204 = v5 + 3;
        do
        {
          v205 = v204;
          *v204++ = v203 | 0x80;
          v206 = v203 >> 7;
          v207 = v203 >> 14;
          v203 >>= 7;
        }

        while (v207);
        v202 = (v205 + 2);
        *v204 = v206;
      }

      else
      {
        v5[3] = v203;
        v202 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v201;
      v202 = (v5 + 3);
    }

    v5 = SnippetUI::Control_Slider::InternalSerializeWithCachedSizesToArray(v200, v202, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 26)
  {
    v208 = *(this + 3);
    v209 = v208[23];
    if ((v209 & 0x8000000000000000) != 0)
    {
      v208 = *v208;
      v209 = *(*(this + 3) + 8);
    }

    google::protobuf::internal::WireFormatLite::VerifyUtf8String(v208, v209, 1, "SnippetUI.Response.Component.group_id");
    if (*(this + 9) == 26)
    {
      v210 = *(this + 3);
    }

    else
    {
      v210 = &google::protobuf::internal::fixed_address_empty_string;
    }

    v5 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 26, v210, v5);
    v7 = *(this + 9);
  }

  if (v7 == 27)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v211 = *(this + 3);
    *v5 = 474;
    v212 = *(v211 + 10);
    if (v212 > 0x7F)
    {
      v5[2] = v212 | 0x80;
      v214 = v212 >> 7;
      if (v212 >> 14)
      {
        v215 = v5 + 3;
        do
        {
          v216 = v215;
          *v215++ = v214 | 0x80;
          v217 = v214 >> 7;
          v218 = v214 >> 14;
          v214 >>= 7;
        }

        while (v218);
        v213 = (v216 + 2);
        *v215 = v217;
      }

      else
      {
        v5[3] = v214;
        v213 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v212;
      v213 = (v5 + 3);
    }

    v5 = SnippetUI::Reference_Standard::InternalSerializeWithCachedSizesToArray(v211, v213, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 28)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v219 = *(this + 3);
    *v5 = 482;
    v220 = *(v219 + 10);
    if (v220 > 0x7F)
    {
      v5[2] = v220 | 0x80;
      v222 = v220 >> 7;
      if (v220 >> 14)
      {
        v223 = v5 + 3;
        do
        {
          v224 = v223;
          *v223++ = v222 | 0x80;
          v225 = v222 >> 7;
          v226 = v222 >> 14;
          v222 >>= 7;
        }

        while (v226);
        v221 = (v224 + 2);
        *v223 = v225;
      }

      else
      {
        v5[3] = v222;
        v221 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v220;
      v221 = (v5 + 3);
    }

    v5 = SnippetUI::Reference_Logo::InternalSerializeWithCachedSizesToArray(v219, v221, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 29)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v227 = *(this + 3);
    *v5 = 490;
    v228 = *(v227 + 14);
    if (v228 > 0x7F)
    {
      v5[2] = v228 | 0x80;
      v230 = v228 >> 7;
      if (v228 >> 14)
      {
        v231 = v5 + 3;
        do
        {
          v232 = v231;
          *v231++ = v230 | 0x80;
          v233 = v230 >> 7;
          v234 = v230 >> 14;
          v230 >>= 7;
        }

        while (v234);
        v229 = (v232 + 2);
        *v231 = v233;
      }

      else
      {
        v5[3] = v230;
        v229 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v228;
      v229 = (v5 + 3);
    }

    v5 = SnippetUI::Reference_Rich::InternalSerializeWithCachedSizesToArray(v227, v229, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 30)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v235 = *(this + 3);
    *v5 = 498;
    v236 = *(v235 + 11);
    if (v236 > 0x7F)
    {
      v5[2] = v236 | 0x80;
      v238 = v236 >> 7;
      if (v236 >> 14)
      {
        v239 = v5 + 3;
        do
        {
          v240 = v239;
          *v239++ = v238 | 0x80;
          v241 = v238 >> 7;
          v242 = v238 >> 14;
          v238 >>= 7;
        }

        while (v242);
        v237 = (v240 + 2);
        *v239 = v241;
      }

      else
      {
        v5[3] = v238;
        v237 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v236;
      v237 = (v5 + 3);
    }

    v5 = SnippetUI::Reference_Button::InternalSerializeWithCachedSizesToArray(v235, v237, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 31)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v243 = *(this + 3);
    *v5 = 506;
    v244 = *(v243 + 34);
    if (v244 > 0x7F)
    {
      v5[2] = v244 | 0x80;
      v246 = v244 >> 7;
      if (v244 >> 14)
      {
        v247 = v5 + 3;
        do
        {
          v248 = v247;
          *v247++ = v246 | 0x80;
          v249 = v246 >> 7;
          v250 = v246 >> 14;
          v246 >>= 7;
        }

        while (v250);
        v245 = (v248 + 2);
        *v247 = v249;
      }

      else
      {
        v5[3] = v246;
        v245 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v244;
      v245 = (v5 + 3);
    }

    v5 = SnippetUI::SummaryItem_Pair::InternalSerializeWithCachedSizesToArray(v243, v245, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 32)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v251 = *(this + 3);
    *v5 = 642;
    v252 = *(v251 + 36);
    if (v252 > 0x7F)
    {
      v5[2] = v252 | 0x80;
      v254 = v252 >> 7;
      if (v252 >> 14)
      {
        v255 = v5 + 3;
        do
        {
          v256 = v255;
          *v255++ = v254 | 0x80;
          v257 = v254 >> 7;
          v258 = v254 >> 14;
          v254 >>= 7;
        }

        while (v258);
        v253 = (v256 + 2);
        *v255 = v257;
      }

      else
      {
        v5[3] = v254;
        v253 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v252;
      v253 = (v5 + 3);
    }

    v5 = SnippetUI::SummaryItem_PairNumber::InternalSerializeWithCachedSizesToArray(v251, v253, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 33)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v259 = *(this + 3);
    *v5 = 650;
    v260 = *(v259 + 26);
    if (v260 > 0x7F)
    {
      v5[2] = v260 | 0x80;
      v262 = v260 >> 7;
      if (v260 >> 14)
      {
        v263 = v5 + 3;
        do
        {
          v264 = v263;
          *v263++ = v262 | 0x80;
          v265 = v262 >> 7;
          v266 = v262 >> 14;
          v262 >>= 7;
        }

        while (v266);
        v261 = (v264 + 2);
        *v263 = v265;
      }

      else
      {
        v5[3] = v262;
        v261 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v260;
      v261 = (v5 + 3);
    }

    v5 = SnippetUI::SummaryItem_Button::InternalSerializeWithCachedSizesToArray(v259, v261, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 34)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v267 = *(this + 3);
    *v5 = 658;
    v268 = *(v267 + 28);
    if (v268 > 0x7F)
    {
      v5[2] = v268 | 0x80;
      v270 = v268 >> 7;
      if (v268 >> 14)
      {
        v271 = v5 + 3;
        do
        {
          v272 = v271;
          *v271++ = v270 | 0x80;
          v273 = v270 >> 7;
          v274 = v270 >> 14;
          v270 >>= 7;
        }

        while (v274);
        v269 = (v272 + 2);
        *v271 = v273;
      }

      else
      {
        v5[3] = v270;
        v269 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v268;
      v269 = (v5 + 3);
    }

    v5 = SnippetUI::FactItem_Button::InternalSerializeWithCachedSizesToArray(v267, v269, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 35)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v275 = *(this + 3);
    *v5 = 666;
    v276 = *(v275 + 19);
    if (v276 > 0x7F)
    {
      v5[2] = v276 | 0x80;
      v278 = v276 >> 7;
      if (v276 >> 14)
      {
        v279 = v5 + 3;
        do
        {
          v280 = v279;
          *v279++ = v278 | 0x80;
          v281 = v278 >> 7;
          v282 = v278 >> 14;
          v278 >>= 7;
        }

        while (v282);
        v277 = (v280 + 2);
        *v279 = v281;
      }

      else
      {
        v5[3] = v278;
        v277 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v276;
      v277 = (v5 + 3);
    }

    v5 = SnippetUI::Table::InternalSerializeWithCachedSizesToArray(v275, v277, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 36)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v283 = *(this + 3);
    *v5 = 674;
    v284 = *(v283 + 16);
    if (v284 > 0x7F)
    {
      v5[2] = v284 | 0x80;
      v286 = v284 >> 7;
      if (v284 >> 14)
      {
        v287 = v5 + 3;
        do
        {
          v288 = v287;
          *v287++ = v286 | 0x80;
          v289 = v286 >> 7;
          v290 = v286 >> 14;
          v286 >>= 7;
        }

        while (v290);
        v285 = (v288 + 2);
        *v287 = v289;
      }

      else
      {
        v5[3] = v286;
        v285 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v284;
      v285 = (v5 + 3);
    }

    v5 = SnippetUI::Reference_Footnote::InternalSerializeWithCachedSizesToArray(v283, v285, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 37)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v291 = *(this + 3);
    *v5 = 682;
    v292 = *(v291 + 10);
    if (v292 > 0x7F)
    {
      v5[2] = v292 | 0x80;
      v294 = v292 >> 7;
      if (v292 >> 14)
      {
        v295 = v5 + 3;
        do
        {
          v296 = v295;
          *v295++ = v294 | 0x80;
          v297 = v294 >> 7;
          v298 = v294 >> 14;
          v294 >>= 7;
        }

        while (v298);
        v293 = (v296 + 2);
        *v295 = v297;
      }

      else
      {
        v5[3] = v294;
        v293 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v292;
      v293 = (v5 + 3);
    }

    v5 = SnippetUI::LongItem_Text::InternalSerializeWithCachedSizesToArray(v291, v293, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 38)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v299 = *(this + 3);
    *v5 = 690;
    v300 = *(v299 + 16);
    if (v300 > 0x7F)
    {
      v5[2] = v300 | 0x80;
      v302 = v300 >> 7;
      if (v300 >> 14)
      {
        v303 = v5 + 3;
        do
        {
          v304 = v303;
          *v303++ = v302 | 0x80;
          v305 = v302 >> 7;
          v306 = v302 >> 14;
          v302 >>= 7;
        }

        while (v306);
        v301 = (v304 + 2);
        *v303 = v305;
      }

      else
      {
        v5[3] = v302;
        v301 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v300;
      v301 = (v5 + 3);
    }

    v5 = SnippetUI::Visualization_Chart::InternalSerializeWithCachedSizesToArray(v299, v301, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 39)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v307 = *(this + 3);
    *v5 = 698;
    v308 = *(v307 + 26);
    if (v308 > 0x7F)
    {
      v5[2] = v308 | 0x80;
      v310 = v308 >> 7;
      if (v308 >> 14)
      {
        v311 = v5 + 3;
        do
        {
          v312 = v311;
          *v311++ = v310 | 0x80;
          v313 = v310 >> 7;
          v314 = v310 >> 14;
          v310 >>= 7;
        }

        while (v314);
        v309 = (v312 + 2);
        *v311 = v313;
      }

      else
      {
        v5[3] = v310;
        v309 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v308;
      v309 = (v5 + 3);
    }

    v5 = SnippetUI::SummaryItem_Player::InternalSerializeWithCachedSizesToArray(v307, v309, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 40)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v315 = *(this + 3);
    *v5 = 706;
    v316 = *(v315 + 24);
    if (v316 > 0x7F)
    {
      v5[2] = v316 | 0x80;
      v318 = v316 >> 7;
      if (v316 >> 14)
      {
        v319 = v5 + 3;
        do
        {
          v320 = v319;
          *v319++ = v318 | 0x80;
          v321 = v318 >> 7;
          v322 = v318 >> 14;
          v318 >>= 7;
        }

        while (v322);
        v317 = (v320 + 2);
        *v319 = v321;
      }

      else
      {
        v5[3] = v318;
        v317 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v316;
      v317 = (v5 + 3);
    }

    v5 = SnippetUI::SimpleItem_Player::InternalSerializeWithCachedSizesToArray(v315, v317, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 41)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v323 = *(this + 3);
    *v5 = 714;
    v324 = *(v323 + 20);
    if (v324 > 0x7F)
    {
      v5[2] = v324 | 0x80;
      v326 = v324 >> 7;
      if (v324 >> 14)
      {
        v327 = v5 + 3;
        do
        {
          v328 = v327;
          *v327++ = v326 | 0x80;
          v329 = v326 >> 7;
          v330 = v326 >> 14;
          v326 >>= 7;
        }

        while (v330);
        v325 = (v328 + 2);
        *v327 = v329;
      }

      else
      {
        v5[3] = v326;
        v325 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v324;
      v325 = (v5 + 3);
    }

    v5 = SnippetUI::SimpleItem_ReverseRich::InternalSerializeWithCachedSizesToArray(v323, v325, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 42)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v331 = *(this + 3);
    *v5 = 722;
    v332 = *(v331 + 10);
    if (v332 > 0x7F)
    {
      v5[2] = v332 | 0x80;
      v334 = v332 >> 7;
      if (v332 >> 14)
      {
        v335 = v5 + 3;
        do
        {
          v336 = v335;
          *v335++ = v334 | 0x80;
          v337 = v334 >> 7;
          v338 = v334 >> 14;
          v334 >>= 7;
        }

        while (v338);
        v333 = (v336 + 2);
        *v335 = v337;
      }

      else
      {
        v5[3] = v334;
        v333 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v332;
      v333 = (v5 + 3);
    }

    v5 = SnippetUI::SecondaryHeader_Emphasized::InternalSerializeWithCachedSizesToArray(v331, v333, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 43)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v339 = *(this + 3);
    *v5 = 730;
    v340 = *(v339 + 22);
    if (v340 > 0x7F)
    {
      v5[2] = v340 | 0x80;
      v342 = v340 >> 7;
      if (v340 >> 14)
      {
        v343 = v5 + 3;
        do
        {
          v344 = v343;
          *v343++ = v342 | 0x80;
          v345 = v342 >> 7;
          v346 = v342 >> 14;
          v342 >>= 7;
        }

        while (v346);
        v341 = (v344 + 2);
        *v343 = v345;
      }

      else
      {
        v5[3] = v342;
        v341 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v340;
      v341 = (v5 + 3);
    }

    v5 = SnippetUI::SummaryItem_Switch::InternalSerializeWithCachedSizesToArray(v339, v341, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 44)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v347 = *(this + 3);
    *v5 = 738;
    v348 = *(v347 + 10);
    if (v348 > 0x7F)
    {
      v5[2] = v348 | 0x80;
      v350 = v348 >> 7;
      if (v348 >> 14)
      {
        v351 = v5 + 3;
        do
        {
          v352 = v351;
          *v351++ = v350 | 0x80;
          v353 = v350 >> 7;
          v354 = v350 >> 14;
          v350 >>= 7;
        }

        while (v354);
        v349 = (v352 + 2);
        *v351 = v353;
      }

      else
      {
        v5[3] = v350;
        v349 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v348;
      v349 = (v5 + 3);
    }

    v5 = SnippetUI::SystemText_ClarificationTitle::InternalSerializeWithCachedSizesToArray(v347, v349, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 45)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v355 = *(this + 3);
    *v5 = 746;
    v356 = *(v355 + 16);
    if (v356 > 0x7F)
    {
      v5[2] = v356 | 0x80;
      v358 = v356 >> 7;
      if (v356 >> 14)
      {
        v359 = v5 + 3;
        do
        {
          v360 = v359;
          *v359++ = v358 | 0x80;
          v361 = v358 >> 7;
          v362 = v358 >> 14;
          v358 >>= 7;
        }

        while (v362);
        v357 = (v360 + 2);
        *v359 = v361;
      }

      else
      {
        v5[3] = v358;
        v357 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v356;
      v357 = (v5 + 3);
    }

    v5 = SnippetUI::Visualization_Image::InternalSerializeWithCachedSizesToArray(v355, v357, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 46)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v363 = *(this + 3);
    *v5 = 754;
    v364 = *(v363 + 16);
    if (v364 > 0x7F)
    {
      v5[2] = v364 | 0x80;
      v366 = v364 >> 7;
      if (v364 >> 14)
      {
        v367 = v5 + 3;
        do
        {
          v368 = v367;
          *v367++ = v366 | 0x80;
          v369 = v366 >> 7;
          v370 = v366 >> 14;
          v366 >>= 7;
        }

        while (v370);
        v365 = (v368 + 2);
        *v367 = v369;
      }

      else
      {
        v5[3] = v366;
        v365 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v364;
      v365 = (v5 + 3);
    }

    v5 = SnippetUI::Visualization_Map::InternalSerializeWithCachedSizesToArray(v363, v365, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 47)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v371 = *(this + 3);
    *v5 = 762;
    v372 = *(v371 + 10);
    if (v372 > 0x7F)
    {
      v5[2] = v372 | 0x80;
      v374 = v372 >> 7;
      if (v372 >> 14)
      {
        v375 = v5 + 3;
        do
        {
          v376 = v375;
          *v375++ = v374 | 0x80;
          v377 = v374 >> 7;
          v378 = v374 >> 14;
          v374 >>= 7;
        }

        while (v378);
        v373 = (v376 + 2);
        *v375 = v377;
      }

      else
      {
        v5[3] = v374;
        v373 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v372;
      v373 = (v5 + 3);
    }

    v5 = SnippetUI::Button_Container::InternalSerializeWithCachedSizesToArray(v371, v373, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 48)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v379 = *(this + 3);
    *v5 = 898;
    v380 = *(v379 + 17);
    if (v380 > 0x7F)
    {
      v5[2] = v380 | 0x80;
      v382 = v380 >> 7;
      if (v380 >> 14)
      {
        v383 = v5 + 3;
        do
        {
          v384 = v383;
          *v383++ = v382 | 0x80;
          v385 = v382 >> 7;
          v386 = v382 >> 14;
          v382 >>= 7;
        }

        while (v386);
        v381 = v384 + 2;
        *v383 = v385;
      }

      else
      {
        v5[3] = v382;
        v381 = v5 + 4;
      }
    }

    else
    {
      v5[2] = v380;
      v381 = v5 + 3;
    }

    v5 = SnippetUI::IntentsUI_Standard::InternalSerializeWithCachedSizesToArray(v379, v381, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 49)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v387 = *(this + 3);
    *v5 = 906;
    v388 = *(v387 + 17);
    if (v388 > 0x7F)
    {
      v5[2] = v388 | 0x80;
      v390 = v388 >> 7;
      if (v388 >> 14)
      {
        v391 = v5 + 3;
        do
        {
          v392 = v391;
          *v391++ = v390 | 0x80;
          v393 = v390 >> 7;
          v394 = v390 >> 14;
          v390 >>= 7;
        }

        while (v394);
        v389 = (v392 + 2);
        *v391 = v393;
      }

      else
      {
        v5[3] = v390;
        v389 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v388;
      v389 = (v5 + 3);
    }

    v5 = SnippetUI::Sash_Standard::InternalSerializeWithCachedSizesToArray(v387, v389, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 50)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v395 = *(this + 3);
    *v5 = 914;
    v396 = *(v395 + 14);
    if (v396 > 0x7F)
    {
      v5[2] = v396 | 0x80;
      v398 = v396 >> 7;
      if (v396 >> 14)
      {
        v399 = v5 + 3;
        do
        {
          v400 = v399;
          *v399++ = v398 | 0x80;
          v401 = v398 >> 7;
          v402 = v398 >> 14;
          v398 >>= 7;
        }

        while (v402);
        v397 = (v400 + 2);
        *v399 = v401;
      }

      else
      {
        v5[3] = v398;
        v397 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v396;
      v397 = (v5 + 3);
    }

    v5 = SnippetUI::HeroHeader::InternalSerializeWithCachedSizesToArray(v395, v397, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 51)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v403 = *(this + 3);
    *v5 = 922;
    v404 = *(v403 + 14);
    if (v404 > 0x7F)
    {
      v5[2] = v404 | 0x80;
      v406 = v404 >> 7;
      if (v404 >> 14)
      {
        v407 = v5 + 3;
        do
        {
          v408 = v407;
          *v407++ = v406 | 0x80;
          v409 = v406 >> 7;
          v410 = v406 >> 14;
          v406 >>= 7;
        }

        while (v410);
        v405 = (v408 + 2);
        *v407 = v409;
      }

      else
      {
        v5[3] = v406;
        v405 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v404;
      v405 = (v5 + 3);
    }

    v5 = SnippetUI::HorizontalList_Standard::InternalSerializeWithCachedSizesToArray(v403, v405, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 52)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v411 = *(this + 3);
    *v5 = 930;
    v412 = *(v411 + 10);
    if (v412 > 0x7F)
    {
      v5[2] = v412 | 0x80;
      v414 = v412 >> 7;
      if (v412 >> 14)
      {
        v415 = v5 + 3;
        do
        {
          v416 = v415;
          *v415++ = v414 | 0x80;
          v417 = v414 >> 7;
          v418 = v414 >> 14;
          v414 >>= 7;
        }

        while (v418);
        v413 = (v416 + 2);
        *v415 = v417;
      }

      else
      {
        v5[3] = v414;
        v413 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v412;
      v413 = (v5 + 3);
    }

    v5 = SnippetUI::SectionHeader_Standard::InternalSerializeWithCachedSizesToArray(v411, v413, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 53)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v419 = *(this + 3);
    *v5 = 938;
    v420 = *(v419 + 12);
    if (v420 > 0x7F)
    {
      v5[2] = v420 | 0x80;
      v422 = v420 >> 7;
      if (v420 >> 14)
      {
        v423 = v5 + 3;
        do
        {
          v424 = v423;
          *v423++ = v422 | 0x80;
          v425 = v422 >> 7;
          v426 = v422 >> 14;
          v422 >>= 7;
        }

        while (v426);
        v421 = (v424 + 2);
        *v423 = v425;
      }

      else
      {
        v5[3] = v422;
        v421 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v420;
      v421 = (v5 + 3);
    }

    v5 = SnippetUI::SectionHeader_Rich::InternalSerializeWithCachedSizesToArray(v419, v421, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 54)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v427 = *(this + 3);
    *v5 = 946;
    v428 = *(v427 + 12);
    if (v428 > 0x7F)
    {
      v5[2] = v428 | 0x80;
      v430 = v428 >> 7;
      if (v428 >> 14)
      {
        v431 = v5 + 3;
        do
        {
          v432 = v431;
          *v431++ = v430 | 0x80;
          v433 = v430 >> 7;
          v434 = v430 >> 14;
          v430 >>= 7;
        }

        while (v434);
        v429 = (v432 + 2);
        *v431 = v433;
      }

      else
      {
        v5[3] = v430;
        v429 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v428;
      v429 = (v5 + 3);
    }

    v5 = SnippetUI::KeyValue_Standard::InternalSerializeWithCachedSizesToArray(v427, v429, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 55)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v435 = *(this + 3);
    *v5 = 954;
    v436 = *(v435 + 10);
    if (v436 > 0x7F)
    {
      v5[2] = v436 | 0x80;
      v438 = v436 >> 7;
      if (v436 >> 14)
      {
        v439 = v5 + 3;
        do
        {
          v440 = v439;
          *v439++ = v438 | 0x80;
          v441 = v438 >> 7;
          v442 = v438 >> 14;
          v438 >>= 7;
        }

        while (v442);
        v437 = (v440 + 2);
        *v439 = v441;
      }

      else
      {
        v5[3] = v438;
        v437 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v436;
      v437 = (v5 + 3);
    }

    v5 = SnippetUI::TertiaryHeader_Standard::InternalSerializeWithCachedSizesToArray(v435, v437, a3, a4);
    v7 = *(this + 9);
  }

  if (v7 == 56)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v443 = *(this + 3);
    *v5 = 962;
    v444 = *(v443 + 28);
    if (v444 > 0x7F)
    {
      v5[2] = v444 | 0x80;
      v446 = v444 >> 7;
      if (v444 >> 14)
      {
        v447 = v5 + 3;
        do
        {
          v448 = v447;
          *v447++ = v446 | 0x80;
          v449 = v446 >> 7;
          v450 = v446 >> 14;
          v446 >>= 7;
        }

        while (v450);
        v445 = (v448 + 2);
        *v447 = v449;
      }

      else
      {
        v5[3] = v446;
        v445 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v444;
      v445 = (v5 + 3);
    }

    v5 = SnippetUI::SimpleItem_RichSearchResult::InternalSerializeWithCachedSizesToArray(v443, v445, a3, a4);
  }

  if (this != &SnippetUI::_Response_Component_default_instance_)
  {
    v451 = *(this + 2);
    if (v451)
    {
      if (v5 >= *a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
        v451 = *(this + 2);
      }

      *v5 = 970;
      v452 = *(v451 + 6);
      if (v452 > 0x7F)
      {
        v5[2] = v452 | 0x80;
        v454 = v452 >> 7;
        if (v452 >> 14)
        {
          v455 = v5 + 3;
          do
          {
            v456 = v455;
            *v455++ = v454 | 0x80;
            v457 = v454 >> 7;
            v458 = v454 >> 14;
            v454 >>= 7;
          }

          while (v458);
          v453 = v456 + 2;
          *v455 = v457;
        }

        else
        {
          v5[3] = v454;
          v453 = v5 + 4;
        }
      }

      else
      {
        v5[2] = v452;
        v453 = v5 + 3;
      }

      v5 = SnippetUI::Separators::InternalSerializeWithCachedSizesToArray(v451, v453, a3, a4);
    }
  }

  v459 = *(this + 9);
  if (v459 == 58)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v460 = *(this + 3);
    *v5 = 978;
    v461 = *(v460 + 28);
    if (v461 > 0x7F)
    {
      v5[2] = v461 | 0x80;
      v463 = v461 >> 7;
      if (v461 >> 14)
      {
        v464 = v5 + 3;
        do
        {
          v465 = v464;
          *v464++ = v463 | 0x80;
          v466 = v463 >> 7;
          v467 = v463 >> 14;
          v463 >>= 7;
        }

        while (v467);
        v462 = (v465 + 2);
        *v464 = v466;
      }

      else
      {
        v5[3] = v463;
        v462 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v461;
      v462 = (v5 + 3);
    }

    v5 = SnippetUI::SummaryItem_PairNumberV2::InternalSerializeWithCachedSizesToArray(v460, v462, a3, a4);
    v459 = *(this + 9);
  }

  if (v459 == 59)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v468 = *(this + 3);
    *v5 = 986;
    v469 = *(v468 + 20);
    if (v469 > 0x7F)
    {
      v5[2] = v469 | 0x80;
      v471 = v469 >> 7;
      if (v469 >> 14)
      {
        v472 = v5 + 3;
        do
        {
          v473 = v472;
          *v472++ = v471 | 0x80;
          v474 = v471 >> 7;
          v475 = v471 >> 14;
          v471 >>= 7;
        }

        while (v475);
        v470 = (v473 + 2);
        *v472 = v474;
      }

      else
      {
        v5[3] = v471;
        v470 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v469;
      v470 = (v5 + 3);
    }

    v5 = SnippetUI::SummaryItem_PairV2::InternalSerializeWithCachedSizesToArray(v468, v470, a3, a4);
    v459 = *(this + 9);
  }

  if (v459 == 60)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v476 = *(this + 3);
    *v5 = 994;
    v477 = *(v476 + 18);
    if (v477 > 0x7F)
    {
      v5[2] = v477 | 0x80;
      v479 = v477 >> 7;
      if (v477 >> 14)
      {
        v480 = v5 + 3;
        do
        {
          v481 = v480;
          *v480++ = v479 | 0x80;
          v482 = v479 >> 7;
          v483 = v479 >> 14;
          v479 >>= 7;
        }

        while (v483);
        v478 = (v481 + 2);
        *v480 = v482;
      }

      else
      {
        v5[3] = v479;
        v478 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v477;
      v478 = (v5 + 3);
    }

    v5 = SnippetUI::Control_PlayerButton::InternalSerializeWithCachedSizesToArray(v476, v478, a3, a4);
    v459 = *(this + 9);
  }

  if (v459 == 61)
  {
    if (v5 >= *a3)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
    }

    v484 = *(this + 3);
    *v5 = 1002;
    v485 = *(v484 + 22);
    if (v485 > 0x7F)
    {
      v5[2] = v485 | 0x80;
      v487 = v485 >> 7;
      if (v485 >> 14)
      {
        v488 = v5 + 3;
        do
        {
          v489 = v488;
          *v488++ = v487 | 0x80;
          v490 = v487 >> 7;
          v491 = v487 >> 14;
          v487 >>= 7;
        }

        while (v491);
        v486 = (v489 + 2);
        *v488 = v490;
      }

      else
      {
        v5[3] = v487;
        v486 = (v5 + 4);
      }
    }

    else
    {
      v5[2] = v485;
      v486 = (v5 + 3);
    }

    v5 = SnippetUI::SummaryItem_SwitchV2::InternalSerializeWithCachedSizesToArray(v484, v486, a3, a4);
  }

  v492 = *(this + 1);
  if ((v492 & 1) == 0)
  {
    return v5;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v492 & 0xFFFFFFFFFFFFFFFELL), v5, a3, a4);
}

const google::protobuf::UnknownFieldSet *SnippetUI::Response::InternalSerializeWithCachedSizesToArray(SnippetUI::Response *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = a2;
  v7 = *(this + 136);
  if (v7 == 1)
  {
    if (*a3 <= a2)
    {
      v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      LOBYTE(v7) = *(this + 136);
    }

    *v5 = 24;
    v5[1] = v7;
    v5 += 2;
  }

  v8 = *(this + 6);
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      if (v5 >= *a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      }

      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::Response_Section>::TypeHandler>(this + 16, i);
      *v5 = 34;
      v12 = *(v10 + 22);
      if (v12 > 0x7F)
      {
        v5[1] = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v15 = v5 + 2;
          do
          {
            v16 = v15;
            *v15++ = v14 | 0x80;
            v17 = v14 >> 7;
            v18 = v14 >> 14;
            v14 >>= 7;
          }

          while (v18);
          v13 = (v16 + 2);
          *v15 = v17;
        }

        else
        {
          v5[2] = v14;
          v13 = (v5 + 3);
        }
      }

      else
      {
        v5[1] = v12;
        v13 = (v5 + 2);
      }

      v5 = SnippetUI::Response_Section::InternalSerializeWithCachedSizesToArray(v10, v13, a3, v11);
    }
  }

  v19 = *(this + 12);
  if (v19)
  {
    for (j = 0; j != v19; ++j)
    {
      if (v5 >= *a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      }

      v21 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::BackgroundElement>::TypeHandler>(this + 40, j);
      *v5 = 42;
      v23 = *(v21 + 13);
      if (v23 > 0x7F)
      {
        v5[1] = v23 | 0x80;
        v25 = v23 >> 7;
        if (v23 >> 14)
        {
          v26 = v5 + 2;
          do
          {
            v27 = v26;
            *v26++ = v25 | 0x80;
            v28 = v25 >> 7;
            v29 = v25 >> 14;
            v25 >>= 7;
          }

          while (v29);
          v24 = (v27 + 2);
          *v26 = v28;
        }

        else
        {
          v5[2] = v25;
          v24 = (v5 + 3);
        }
      }

      else
      {
        v5[1] = v23;
        v24 = (v5 + 2);
      }

      v5 = SnippetUI::BackgroundElement::InternalSerializeWithCachedSizesToArray(v21, v24, a3, v22);
    }
  }

  v30 = *(this + 18);
  if (v30)
  {
    for (k = 0; k != v30; ++k)
    {
      if (v5 >= *a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      }

      v32 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::OrnamentElement>::TypeHandler>(this + 64, k);
      *v5 = 50;
      v34 = *(v32 + 13);
      if (v34 > 0x7F)
      {
        v5[1] = v34 | 0x80;
        v36 = v34 >> 7;
        if (v34 >> 14)
        {
          v37 = v5 + 2;
          do
          {
            v38 = v37;
            *v37++ = v36 | 0x80;
            v39 = v36 >> 7;
            v40 = v36 >> 14;
            v36 >>= 7;
          }

          while (v40);
          v35 = (v38 + 2);
          *v37 = v39;
        }

        else
        {
          v5[2] = v36;
          v35 = (v5 + 3);
        }
      }

      else
      {
        v5[1] = v34;
        v35 = (v5 + 2);
      }

      v5 = SnippetUI::OrnamentElement::InternalSerializeWithCachedSizesToArray(v32, v35, a3, v33);
    }
  }

  v41 = *(this + 24);
  if (v41)
  {
    for (m = 0; m != v41; ++m)
    {
      if (v5 >= *a3)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v5);
      }

      v43 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::Response_Group>::TypeHandler>(this + 88, m);
      *v5 = 58;
      v45 = *(v43 + 12);
      if (v45 > 0x7F)
      {
        v5[1] = v45 | 0x80;
        v47 = v45 >> 7;
        if (v45 >> 14)
        {
          v48 = v5 + 2;
          do
          {
            v49 = v48;
            *v48++ = v47 | 0x80;
            v50 = v47 >> 7;
            v51 = v47 >> 14;
            v47 >>= 7;
          }

          while (v51);
          v46 = (v49 + 2);
          *v48 = v50;
        }

        else
        {
          v5[2] = v47;
          v46 = (v5 + 3);
        }
      }

      else
      {
        v5[1] = v45;
        v46 = (v5 + 2);
      }

      v5 = SnippetUI::Response_Group::InternalSerializeWithCachedSizesToArray(v43, v46, a3, v44);
    }
  }

  v52 = *(this + 30);
  if (v52 >= 1)
  {
    for (n = 0; n != v52; ++n)
    {
      v54 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 112, n);
      v55 = *(v54 + 23);
      if (v55 < 0 && (v55 = *(v54 + 8), v55 > 127) || *a3 - v5 + 14 < v55)
      {
        v5 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, 8, v54, v5);
      }

      else
      {
        *v5 = 66;
        v5[1] = v55;
        if (*(v54 + 23) >= 0)
        {
          v56 = v54;
        }

        else
        {
          v56 = *v54;
        }

        memcpy(v5 + 2, v56, v55);
        v5 += v55 + 2;
      }
    }
  }

  v57 = *(this + 1);
  if ((v57 & 1) == 0)
  {
    return v5;
  }

  return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v57 & 0xFFFFFFFFFFFFFFFELL), v5, a3, a4);
}

const google::protobuf::UnknownFieldSet *google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(google::protobuf::internal::WireFormat *this, const google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v5 = *this;
  if (((*(this + 1) - *this) >> 4) >= 1)
  {
    for (i = 0; i < ((*(this + 1) - *this) >> 4); ++i)
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v9 = v5 + 16 * i;
      v10 = *(v9 + 4);
      if (v10 <= 1)
      {
        if (v10)
        {
          if (v10 == 1)
          {
            v13 = *(v9 + 8);
            v14 = 8 * *v9;
            if (v14 > 0x7F)
            {
              *a2 = v14 | 0x85;
              v31 = v14 >> 7;
              if (v14 >> 14)
              {
                v15 = a2 + 2;
                do
                {
                  *(v15 - 1) = v31 | 0x80;
                  v45 = v31 >> 7;
                  ++v15;
                  v46 = v31 >> 14;
                  v31 >>= 7;
                }

                while (v46);
                *(v15 - 1) = v45;
              }

              else
              {
                *(a2 + 1) = v31;
                v15 = a2 + 2;
              }
            }

            else
            {
              *a2 = v14 | 5;
              v15 = a2 + 1;
            }

            *v15 = v13;
            a2 = (v15 + 4);
          }

          goto LABEL_80;
        }

        v25 = *(v9 + 8);
        v26 = 8 * *v9;
        if (v26 > 0x7F)
        {
          *a2 = v26 | 0x80;
          v29 = v26 >> 7;
          if (v26 >> 14)
          {
            v27 = a2 + 2;
            do
            {
              *(v27 - 1) = v29 | 0x80;
              v36 = v29 >> 7;
              ++v27;
              v37 = v29 >> 14;
              v29 >>= 7;
            }

            while (v37);
            *(v27 - 1) = v36;
          }

          else
          {
            *(a2 + 1) = v29;
            v27 = a2 + 2;
          }
        }

        else
        {
          *a2 = v26;
          v27 = a2 + 1;
        }

        if (v25 > 0x7F)
        {
          *v27 = v25 | 0x80;
          v38 = v25 >> 7;
          if (v25 >> 14)
          {
            a2 = (v27 + 2);
            do
            {
              *(a2 - 1) = v38 | 0x80;
              v39 = v38 >> 7;
              a2 = (a2 + 1);
              v40 = v38 >> 14;
              v38 >>= 7;
            }

            while (v40);
            *(a2 - 1) = v39;
            goto LABEL_80;
          }

          v27[1] = v38;
LABEL_66:
          a2 = (v27 + 2);
          goto LABEL_80;
        }

        *v27 = v25;
        a2 = (v27 + 1);
      }

      else
      {
        switch(v10)
        {
          case 2:
            v16 = *(v9 + 8);
            v17 = 8 * *v9;
            if (v17 > 0x7F)
            {
              *a2 = v17 | 0x81;
              v28 = v17 >> 7;
              if (v17 >> 14)
              {
                v18 = a2 + 2;
                do
                {
                  *(v18 - 1) = v28 | 0x80;
                  v34 = v28 >> 7;
                  ++v18;
                  v35 = v28 >> 14;
                  v28 >>= 7;
                }

                while (v35);
                *(v18 - 1) = v34;
              }

              else
              {
                *(a2 + 1) = v28;
                v18 = a2 + 2;
              }
            }

            else
            {
              *a2 = v17 | 1;
              v18 = a2 + 1;
            }

            *v18 = v16;
            a2 = (v18 + 8);
            break;
          case 3:
            v19 = *v9;
            v20 = *(v9 + 8);
            v21 = *(v20 + 23);
            if ((v21 & 0x8000000000000000) == 0 || (v21 = v20[1], v21 <= 127))
            {
              v22 = *a3;
              v23 = 8 * v19;
              if ((8 * v19) >= 0x80)
              {
                if (v23 >> 28)
                {
                  v32 = 5;
                }

                else
                {
                  v32 = 4;
                }

                if (v23 < 0x200000)
                {
                  v32 = 3;
                }

                if (v23 < 0x4000)
                {
                  v32 = 2;
                }

                if ((v22 + ~(a2 + v32) + 16) >= v21)
                {
                  *a2 = v23 | 0x82;
                  v33 = v23 >> 7;
                  if (v23 >> 14)
                  {
                    v24 = a2 + 2;
                    do
                    {
                      *(v24 - 1) = v33 | 0x80;
                      v49 = v33 >> 7;
                      ++v24;
                      v50 = v33 >> 14;
                      v33 >>= 7;
                    }

                    while (v50);
                    *(v24 - 1) = v49;
                  }

                  else
                  {
                    *(a2 + 1) = v33;
                    v24 = a2 + 2;
                  }

                  goto LABEL_77;
                }
              }

              else if (v22 - a2 + 14 >= v21)
              {
                *a2 = v23 | 2;
                v24 = a2 + 1;
LABEL_77:
                *v24 = v21;
                v51 = v24 + 1;
                if (*(v20 + 23) < 0)
                {
                  v20 = *v20;
                }

                memcpy(v51, v20, v21);
                a2 = &v51[v21];
                break;
              }
            }

            a2 = google::protobuf::io::EpsCopyOutputStream::WriteStringOutline(a3, v19, v20, a2);
            break;
          case 4:
            v11 = 8 * *v9;
            if (v11 > 0x7F)
            {
              *a2 = v11 | 0x83;
              v30 = v11 >> 7;
              if (v11 >> 14)
              {
                v12 = (a2 + 2);
                do
                {
                  *(v12 - 1) = v30 | 0x80;
                  v41 = v30 >> 7;
                  v12 = (v12 + 1);
                  v42 = v30 >> 14;
                  v30 >>= 7;
                }

                while (v42);
                *(v12 - 1) = v41;
              }

              else
              {
                *(a2 + 1) = v30;
                v12 = (a2 + 2);
              }
            }

            else
            {
              *a2 = v11 | 3;
              v12 = (a2 + 1);
            }

            if (*(v9 + 4) != 4)
            {
              google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray();
            }

            v27 = google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray(*(v9 + 8), v12, a3, a4);
            if (v27 >= *a3)
            {
              v27 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v27);
            }

            v43 = 8 * *v9;
            if (v43 > 0x7F)
            {
              *v27 = v43 | 0x84;
              v44 = v43 >> 7;
              if (v43 >> 14)
              {
                a2 = (v27 + 2);
                do
                {
                  *(a2 - 1) = v44 | 0x80;
                  v47 = v44 >> 7;
                  a2 = (a2 + 1);
                  v48 = v44 >> 14;
                  v44 >>= 7;
                }

                while (v48);
                *(a2 - 1) = v47;
                break;
              }

              v27[1] = v44;
              goto LABEL_66;
            }

            *v27 = v43 | 4;
            a2 = (v27 + 1);
            break;
        }
      }

LABEL_80:
      v5 = *this;
    }
  }

  return a2;
}

const google::protobuf::UnknownFieldSet *SnippetUI::Response_Section::InternalSerializeWithCachedSizesToArray(SnippetUI::Response_Section *this, google::protobuf::UnknownFieldSet *a2, google::protobuf::io::EpsCopyOutputStream *a3, google::protobuf::io::EpsCopyOutputStream *a4)
{
  v7 = *(this + 6);
  if (v7)
  {
    for (i = 0; i != v7; ++i)
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::Response_Component>::TypeHandler>(this + 16, i);
      *a2 = 10;
      v11 = *(v9 + 8);
      if (v11 > 0x7F)
      {
        *(a2 + 1) = v11 | 0x80;
        v13 = v11 >> 7;
        if (v11 >> 14)
        {
          v14 = a2 + 2;
          do
          {
            v15 = v14;
            *v14++ = v13 | 0x80;
            v16 = v13 >> 7;
            v17 = v13 >> 14;
            v13 >>= 7;
          }

          while (v17);
          v12 = (v15 + 2);
          *v14 = v16;
        }

        else
        {
          *(a2 + 2) = v13;
          v12 = (a2 + 3);
        }
      }

      else
      {
        *(a2 + 1) = v11;
        v12 = (a2 + 2);
      }

      a2 = SnippetUI::Response_Component::InternalSerializeWithCachedSizesToArray(v9, v12, a3, v10);
    }
  }

  v18 = *(this + 14);
  if (v18 > 0)
  {
    v19 = *a3;
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v19 = *a3;
    }

    if (v19 <= a2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v50, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/io/coded_stream.h", 856);
      v20 = google::protobuf::internal::LogMessage::operator<<(v50, "CHECK failed: ptr < end_: ");
      google::protobuf::internal::LogFinisher::operator=(&v49, v20);
      google::protobuf::internal::LogMessage::~LogMessage(&v50[0].__r_.__value_.__l.__data_);
    }

    *a2 = 18;
    v21 = a2 + 1;
    if (v18 >= 0x80)
    {
      do
      {
        *v21++ = v18 | 0x80;
        v47 = v18 >> 14;
        v18 >>= 7;
      }

      while (v47);
      a2 = (v21 - 1);
    }

    a2 = (a2 + 2);
    *v21 = v18;
    v22 = *(this + 6);
    v23 = &v22[*(this + 10)];
    do
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v25 = *v22++;
      v24 = v25;
      if (v25 > 0x7F)
      {
        *a2 = v24 | 0x80;
        v26 = v24 >> 7;
        if (v24 >> 14)
        {
          v27 = a2 + 1;
          do
          {
            v28 = v27;
            *v27++ = v26 | 0x80;
            v29 = v26 >> 7;
            v30 = v26 >> 14;
            v26 >>= 7;
          }

          while (v30);
          a2 = (v28 + 2);
          *v27 = v29;
        }

        else
        {
          *(a2 + 1) = v26;
          a2 = (a2 + 2);
        }
      }

      else
      {
        *a2 = v24;
        a2 = (a2 + 1);
      }
    }

    while (v22 < v23);
  }

  v31 = *(this + 20);
  if (v31 >= 1)
  {
    v32 = *a3;
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      v32 = *a3;
    }

    if (v32 <= a2)
    {
      google::protobuf::internal::LogMessage::LogMessage(v50, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/io/coded_stream.h", 856);
      v33 = google::protobuf::internal::LogMessage::operator<<(v50, "CHECK failed: ptr < end_: ");
      google::protobuf::internal::LogFinisher::operator=(&v49, v33);
      google::protobuf::internal::LogMessage::~LogMessage(&v50[0].__r_.__value_.__l.__data_);
    }

    *a2 = 26;
    v34 = a2 + 1;
    if (v31 >= 0x80)
    {
      do
      {
        *v34++ = v31 | 0x80;
        v48 = v31 >> 14;
        v31 >>= 7;
      }

      while (v48);
      a2 = (v34 - 1);
    }

    a2 = (a2 + 2);
    *v34 = v31;
    v35 = *(this + 9);
    v36 = &v35[*(this + 16)];
    do
    {
      if (a2 >= *a3)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v38 = *v35++;
      v37 = v38;
      if (v38 > 0x7F)
      {
        *a2 = v37 | 0x80;
        v39 = v37 >> 7;
        if (v37 >> 14)
        {
          v40 = a2 + 1;
          do
          {
            v41 = v40;
            *v40++ = v39 | 0x80;
            v42 = v39 >> 7;
            v43 = v39 >> 14;
            v39 >>= 7;
          }

          while (v43);
          a2 = (v41 + 2);
          *v40 = v42;
        }

        else
        {
          *(a2 + 1) = v39;
          a2 = (a2 + 2);
        }
      }

      else
      {
        *a2 = v37;
        a2 = (a2 + 1);
      }
    }

    while (v35 < v36);
  }

  v44 = *(this + 84);
  if (v44 == 1)
  {
    if (a2 >= *a3)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      LOBYTE(v44) = *(this + 84);
    }

    *a2 = 32;
    *(a2 + 1) = v44;
    a2 = (a2 + 2);
  }

  v45 = *(this + 1);
  if (v45)
  {
    return google::protobuf::internal::WireFormat::InternalSerializeUnknownFieldsToArray((v45 & 0xFFFFFFFFFFFFFFFELL), a2, a3, a4);
  }

  return a2;
}

void sub_1BFBF6BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::AppendPartialToString(uint64_t a1, std::string *a2)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = (*(*a1 + 88))(a1);
  v6 = v5;
  v7 = v5 >> 31;
  if (v5 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v17, 2, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/message_lite.cc", 425);
    (*(*a1 + 16))(__p, a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v17, __p);
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, " exceeded maximum protobuf size of 2GB: ");
    v12 = google::protobuf::internal::LogMessage::operator<<(v11, v6);
    google::protobuf::internal::LogFinisher::operator=(&v15, v12);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v9 = v17;
    goto LABEL_11;
  }

  std::string::resize(v2, v5 + size, 0);
  if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = v2->__r_.__value_.__r.__words[0];
  }

  *&v17[0].__r_.__value_.__l.__data_ = v2 + size + v6;
  v18 = 0;
  v19 = 0;
  v20 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
  if (v17[0].__r_.__value_.__r.__words[0] != (*(*a1 + 112))(a1))
  {
    google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/message_lite.cc", 328);
    v8 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: target + size == res: ");
    google::protobuf::internal::LogFinisher::operator=(&v15, v8);
    v9 = __p;
LABEL_11:
    google::protobuf::internal::LogMessage::~LogMessage(&v9->__r_.__value_.__l.__data_);
  }

  result = v7 == 0;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

char *SnippetUI::ImageElement_Symbol::ByteSizeLong(SnippetUI::ImageElement_Symbol *this)
{
  v2 = *(this + 2);
  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    if (*(v2 + 8))
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if (!*(v2 + 23))
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = *(v2 + 8);
  if (v3 >= 0)
  {
    v4 = v3;
  }

  v5 = (v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_8:
  v6 = *(this + 3);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (!*(v6 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (!*(v6 + 23))
  {
    goto LABEL_13;
  }

  v8 = *(v6 + 8);
  if (v7 >= 0)
  {
    v8 = v7;
  }

  v5 = (v5 + v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_13:
  if (this != &SnippetUI::_ImageElement_Symbol_default_instance_)
  {
    v9 = *(this + 4);
    if (v9)
    {
      v10 = SnippetUI::Color::ByteSizeLong(v9);
      v5 = &v10[v5 + 1 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6)];
    }

    v11 = *(this + 5);
    if (v11)
    {
      v12 = SnippetUI::ImageElement_Symbol_Background::ByteSizeLong(v11);
      v5 = &v12[v5 + 1 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6)];
    }
  }

  v13 = *(this + 12);
  if (v13)
  {
    if (v13 < 0)
    {
      v14 = 11;
    }

    else
    {
      v14 = ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 = (v5 + v14);
  }

  v15 = *(this + 13);
  if (v15)
  {
    if (v15 < 0)
    {
      v16 = 11;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 = (v5 + v16);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 14);
  }

  else
  {
    *(this + 14) = v5;
    return v5;
  }
}

char *SnippetUI::ImageElement::ByteSizeLong(SnippetUI::ImageElement *this)
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
      v7 = SnippetUI::ImageElement_Source::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 10);
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = *google::protobuf::RepeatedField<int>::Get(this + 10, v9);
      if (v11 < 0)
      {
        v12 = 10;
      }

      else
      {
        v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
      }

      v10 += v12;
      ++v9;
    }

    while (v8 != v9);
    if (v10)
    {
      if ((v10 & 0x80000000) != 0)
      {
        v13 = 11;
      }

      else
      {
        v13 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      v2 += v13;
      v14 = v10;
      goto LABEL_22;
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = 0;
LABEL_22:
  *(this + 14) = v14;
  v15 = (v2 + v10);
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v15, this + 15);
  }

  else
  {
    *(this + 15) = v15;
    return (v2 + v10);
  }
}

char *SnippetUI::VisualElement::ByteSizeLong(SnippetUI::VisualElement *this)
{
  v2 = 0;
  v3 = *(this + 7);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v4 = SnippetUI::CustomElement::ByteSizeLong(*(this + 2));
    }

    else
    {
      if (v3 != 4)
      {
        goto LABEL_11;
      }

      v4 = SnippetUI::CoreChartElement::ByteSizeLong(*(this + 2));
    }
  }

  else if (v3 == 1)
  {
    v4 = SnippetUI::ImageElement::ByteSizeLong(*(this + 2));
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v4 = SnippetUI::ColorElement::ByteSizeLong(*(this + 2));
  }

  v2 = &v4[((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1];
LABEL_11:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 6);
  }

  else
  {
    *(this + 6) = v2;
    return v2;
  }
}

char *SnippetUI::VisualProperty::ByteSizeLong(SnippetUI::VisualProperty *this)
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
      v7 = SnippetUI::VisualElement::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (this != &SnippetUI::_VisualProperty_default_instance_)
  {
    v8 = *(this + 5);
    if (v8)
    {
      v9 = SnippetUI::ActionProperty::ByteSizeLong(v8);
      v2 += &v9[((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1];
    }

    v10 = *(this + 6);
    if (v10)
    {
      v11 = SnippetUI::ActionProperty::ByteSizeLong(v10);
      v2 += &v11[((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1];
    }
  }

  if (*(this + 56))
  {
    v12 = v2 + 2;
  }

  else
  {
    v12 = v2;
  }

  if (*(this + 57))
  {
    v13 = (v12 + 2);
  }

  else
  {
    v13 = v12;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v13, this + 15);
  }

  else
  {
    *(this + 15) = v13;
    return v13;
  }
}

char *SnippetUI::Button::ByteSizeLong(SnippetUI::Button *this)
{
  v2 = *(this + 2);
  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    if (*(v2 + 8))
    {
      goto LABEL_3;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  if (!*(v2 + 23))
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = *(v2 + 8);
  if (v3 >= 0)
  {
    v4 = v3;
  }

  v5 = (v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_8:
  v6 = *(this + 3);
  v7 = *(v6 + 23);
  if (v7 < 0)
  {
    if (!*(v6 + 8))
    {
      goto LABEL_13;
    }
  }

  else if (!*(v6 + 23))
  {
    goto LABEL_13;
  }

  v8 = *(v6 + 8);
  if (v7 >= 0)
  {
    v8 = v7;
  }

  v5 = (v5 + v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_13:
  if (this != &SnippetUI::_Button_default_instance_)
  {
    v9 = *(this + 4);
    if (v9)
    {
      v10 = SnippetUI::ActionProperty::ByteSizeLong(v9);
      v5 = &v10[v5 + 1 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6)];
    }

    v11 = *(this + 5);
    if (v11)
    {
      v12 = SnippetUI::TextProperty::ByteSizeLong(v11);
      v5 = &v12[v5 + 1 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6)];
    }

    v13 = *(this + 6);
    if (v13)
    {
      v14 = SnippetUI::VisualProperty::ByteSizeLong(v13);
      v5 = &v14[v5 + 1 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6)];
    }
  }

  v15 = *(this + 14);
  if (v15)
  {
    if (v15 < 0)
    {
      v16 = 11;
    }

    else
    {
      v16 = ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 = (v5 + v16);
  }

  v17 = *(this + 15);
  if (v17)
  {
    if (v17 < 0)
    {
      v18 = 11;
    }

    else
    {
      v18 = ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 = (v5 + v18);
  }

  v19 = *(this + 16);
  if (v19)
  {
    if (v19 < 0)
    {
      v20 = 11;
    }

    else
    {
      v20 = ((9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v5 = (v5 + v20);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v5, this + 17);
  }

  else
  {
    *(this + 17) = v5;
    return v5;
  }
}

char *SnippetUI::TextProperty::ByteSizeLong(SnippetUI::TextProperty *this)
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
      v7 = SnippetUI::TextElement::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (this != &SnippetUI::_TextProperty_default_instance_)
  {
    v8 = *(this + 5);
    if (v8)
    {
      v9 = SnippetUI::ActionProperty::ByteSizeLong(v8);
      v2 += &v9[((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1];
    }

    v10 = *(this + 6);
    if (v10)
    {
      v11 = SnippetUI::ActionProperty::ByteSizeLong(v10);
      v2 += &v11[((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1];
    }
  }

  if (*(this + 56))
  {
    v12 = v2 + 2;
  }

  else
  {
    v12 = v2;
  }

  if (*(this + 57))
  {
    v13 = (v12 + 2);
  }

  else
  {
    v13 = v12;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v13, this + 15);
  }

  else
  {
    *(this + 15) = v13;
    return v13;
  }
}

char *SnippetUI::ActionElement::ByteSizeLong(SnippetUI::ActionElement *this)
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
      v7 = SnippetUI::TextElement::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 10);
  if (!v8)
  {
    v10 = 0;
LABEL_19:
    v14 = 0;
    goto LABEL_22;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = *google::protobuf::RepeatedField<int>::Get(this + 10, v9);
    if (v11 < 0)
    {
      v12 = 10;
    }

    else
    {
      v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
    }

    v10 += v12;
    ++v9;
  }

  while (v8 != v9);
  if (!v10)
  {
    goto LABEL_19;
  }

  if ((v10 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else
  {
    v13 = ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v13;
  v14 = v10;
LABEL_22:
  *(this + 14) = v14;
  v15 = (v2 + v10);
  if (this != &SnippetUI::_ActionElement_default_instance_)
  {
    v16 = *(this + 8);
    if (v16)
    {
      v17 = SnippetUI::Command::ByteSizeLong(v16);
      v15 = &v17[v15 + 1 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6)];
    }
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v15, this + 18);
  }

  else
  {
    *(this + 18) = v15;
    return v15;
  }
}

char *SnippetUI::ActionProperty::ByteSizeLong(SnippetUI::ActionProperty *this)
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
      v7 = SnippetUI::ActionElement::ByteSizeLong(v6);
      v2 = (v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 5);
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    if (!*(v8 + 8))
    {
      goto LABEL_14;
    }
  }

  else if (!*(v8 + 23))
  {
    goto LABEL_14;
  }

  v10 = *(v8 + 8);
  if (v9 >= 0)
  {
    v10 = v9;
  }

  v2 = (v2 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_14:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 12);
  }

  else
  {
    *(this + 12) = v2;
    return v2;
  }
}

char *SnippetUI::Button_Container_ButtonItem::ByteSizeLong(SnippetUI::Button_Container_ButtonItem *this)
{
  v2 = *(this + 7);
  switch(v2)
  {
    case 3:
      v3 = SnippetUI::CustomCanvas::ByteSizeLong(*(this + 2));
      goto LABEL_7;
    case 2:
      v3 = SnippetUI::PlayerButton::ByteSizeLong(*(this + 2));
      goto LABEL_7;
    case 1:
      v3 = SnippetUI::Button::ByteSizeLong(*(this + 2));
LABEL_7:
      v4 = &v3[((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1];
      goto LABEL_9;
  }

  v4 = 0;
LABEL_9:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 6);
  }

  else
  {
    *(this + 6) = v4;
    return v4;
  }
}

char *SnippetUI::Button_Container::ByteSizeLong(SnippetUI::Button_Container *this)
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
      v7 = SnippetUI::Button_Container_ButtonItem::ByteSizeLong(v6);
      v2 = (v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 10);
  }

  else
  {
    *(this + 10) = v2;
    return v2;
  }
}

char *SnippetUI::Response_Component::ByteSizeLong(SnippetUI::Response_Component *this)
{
  if (this == &SnippetUI::_Response_Component_default_instance_ || (v2 = *(this + 2)) == 0)
  {
    v4 = 0;
  }

  else
  {
    v3 = SnippetUI::Separators::ByteSizeLong(v2);
    v4 = &v3[((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 2];
  }

  switch(*(this + 9))
  {
    case 1:
      v5 = SnippetUI::CustomCanvas::ByteSizeLong(*(this + 3));
      goto LABEL_53;
    case 2:
      v5 = SnippetUI::FactItem_Standard::ByteSizeLong(*(this + 3));
      goto LABEL_53;
    case 3:
      v5 = SnippetUI::FactItem_ShortNumber::ByteSizeLong(*(this + 3));
      goto LABEL_53;
    case 4:
      v5 = SnippetUI::FactItem_HeroNumber::ByteSizeLong(*(this + 3));
      goto LABEL_53;
    case 5:
      v5 = SnippetUI::SummaryItem_Standard::ByteSizeLong(*(this + 3));
      goto LABEL_53;
    case 6:
      v5 = SnippetUI::SummaryItem_ShortNumber::ByteSizeLong(*(this + 3));
      goto LABEL_53;
    case 7:
      v5 = SnippetUI::SummaryItem_Text::ByteSizeLong(*(this + 3));
      goto LABEL_53;
    case 8:
      v5 = SnippetUI::SummaryItem_LargeText::ByteSizeLong(*(this + 3));
      goto LABEL_53;
    case 9:
      v5 = SnippetUI::SummaryItem_DetailedText::ByteSizeLong(*(this + 3));
      goto LABEL_53;
    case 0xA:
      v5 = SnippetUI::SimpleItem_Standard::ByteSizeLong(*(this + 3));
      goto LABEL_53;
    case 0xB:
      v5 = SnippetUI::SimpleItem_Rich::ByteSizeLong(*(this + 3));
      goto LABEL_53;
    case 0xC:
      v5 = SnippetUI::SimpleItem_Visual::ByteSizeLong(*(this + 3));
      goto LABEL_53;
    case 0xD:
      v5 = SnippetUI::PrimaryHeader_Standard::ByteSizeLong(*(this + 3));
      goto LABEL_53;
    case 0xE:
      v5 = SnippetUI::PrimaryHeader_Marquee::ByteSizeLong(*(this + 3));
      goto LABEL_53;
    case 0xF:
      v5 = SnippetUI::PrimaryHeader_Rich::ByteSizeLong(*(this + 3));
LABEL_53:
      v4 = &v5[v4 + 1 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6)];
      break;
    case 0x10:
      v6 = SnippetUI::SecondaryHeader_Standard::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x11:
      v6 = SnippetUI::Button::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x12:
      v6 = SnippetUI::BinaryButton::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x13:
      v6 = SnippetUI::StatusIndicator_Success::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x14:
      v6 = SnippetUI::StatusIndicator_Error::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x15:
      v6 = SnippetUI::StatusIndicator_InProgress::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x16:
      v6 = SnippetUI::StatusIndicator_Cancelled::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x17:
      v6 = SnippetUI::TextInput::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x18:
      v6 = SnippetUI::Control_Switch::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x19:
      v6 = SnippetUI::Control_Slider::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x1A:
      v7 = *(this + 3);
      v8 = *(v7 + 23);
      v9 = *(v7 + 8);
      if ((v8 & 0x80u) == 0)
      {
        v9 = v8;
      }

      v10 = v4 + v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      goto LABEL_70;
    case 0x1B:
      v6 = SnippetUI::Reference_Standard::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x1C:
      v6 = SnippetUI::Reference_Logo::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x1D:
      v6 = SnippetUI::Reference_Rich::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x1E:
      v6 = SnippetUI::Reference_Button::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x1F:
      v6 = SnippetUI::SummaryItem_Pair::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x20:
      v6 = SnippetUI::SummaryItem_PairNumber::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x21:
      v6 = SnippetUI::SummaryItem_Button::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x22:
      v6 = SnippetUI::FactItem_Button::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x23:
      v6 = SnippetUI::Table::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x24:
      v6 = SnippetUI::Reference_Footnote::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x25:
      v6 = SnippetUI::LongItem_Text::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x26:
      v6 = SnippetUI::Visualization_Chart::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x27:
      v6 = SnippetUI::SummaryItem_Player::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x28:
      v6 = SnippetUI::SimpleItem_Player::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x29:
      v6 = SnippetUI::SimpleItem_ReverseRich::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x2A:
      v6 = SnippetUI::SecondaryHeader_Emphasized::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x2B:
      v6 = SnippetUI::SummaryItem_Switch::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x2C:
      v6 = SnippetUI::SystemText_ClarificationTitle::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x2D:
      v6 = SnippetUI::Visualization_Image::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x2E:
      v6 = SnippetUI::Visualization_Map::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x2F:
      v6 = SnippetUI::Button_Container::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x30:
      v6 = SnippetUI::IntentsUI_Standard::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x31:
      v6 = SnippetUI::Sash_Standard::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x32:
      v6 = SnippetUI::HeroHeader::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x33:
      v6 = SnippetUI::HorizontalList_Standard::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x34:
      v6 = SnippetUI::SectionHeader_Standard::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x35:
      v6 = SnippetUI::SectionHeader_Rich::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x36:
      v6 = SnippetUI::KeyValue_Standard::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x37:
      v6 = SnippetUI::TertiaryHeader_Standard::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x38:
      v6 = SnippetUI::SimpleItem_RichSearchResult::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x3A:
      v6 = SnippetUI::SummaryItem_PairNumberV2::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x3B:
      v6 = SnippetUI::SummaryItem_PairV2::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x3C:
      v6 = SnippetUI::Control_PlayerButton::ByteSizeLong(*(this + 3));
      goto LABEL_69;
    case 0x3D:
      v6 = SnippetUI::SummaryItem_SwitchV2::ByteSizeLong(*(this + 3));
LABEL_69:
      v10 = &v6[v4 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6)];
LABEL_70:
      v4 = (v10 + 2);
      break;
    default:
      break;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v4, this + 8);
  }

  else
  {
    *(this + 8) = v4;
    return v4;
  }
}

char *SnippetUI::Response_Group::ByteSizeLong(SnippetUI::Response_Group *this)
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
      v7 = SnippetUI::Response_Component::ByteSizeLong(v6);
      v2 = (v2 + v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6));
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 5);
  v9 = *(v8 + 23);
  if (v9 < 0)
  {
    if (!*(v8 + 8))
    {
      goto LABEL_14;
    }
  }

  else if (!*(v8 + 23))
  {
    goto LABEL_14;
  }

  v10 = *(v8 + 8);
  if (v9 >= 0)
  {
    v10 = v9;
  }

  v2 = (v2 + v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 1);
LABEL_14:
  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v2, this + 12);
  }

  else
  {
    *(this + 12) = v2;
    return v2;
  }
}

char *SnippetUI::Response::ByteSizeLong(SnippetUI::Response *this)
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
      v7 = SnippetUI::Response_Section::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 12);
  v9 = v2 + v8;
  v10 = *(this + 7);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = SnippetUI::BackgroundElement::ByteSizeLong(v13);
      v9 += &v14[(9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6];
      v12 -= 8;
    }

    while (v12);
  }

  v15 = *(this + 18);
  v16 = v9 + v15;
  v17 = *(this + 10);
  if (v17)
  {
    v18 = (v17 + 8);
  }

  else
  {
    v18 = 0;
  }

  if (v15)
  {
    v19 = 8 * v15;
    do
    {
      v20 = *v18++;
      v21 = SnippetUI::OrnamentElement::ByteSizeLong(v20);
      v16 += &v21[(9 * (__clz(v21 | 1) ^ 0x1F) + 73) >> 6];
      v19 -= 8;
    }

    while (v19);
  }

  v22 = *(this + 24);
  v23 = v16 + v22;
  v24 = *(this + 13);
  if (v24)
  {
    v25 = (v24 + 8);
  }

  else
  {
    v25 = 0;
  }

  if (v22)
  {
    v26 = 8 * v22;
    do
    {
      v27 = *v25++;
      v28 = SnippetUI::Response_Group::ByteSizeLong(v27);
      v23 += &v28[(9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6];
      v26 -= 8;
    }

    while (v26);
  }

  v29 = *(this + 30);
  v30 = v23 + v29;
  if (v29 >= 1)
  {
    v31 = 0;
    do
    {
      v32 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 112, v31);
      v33 = *(v32 + 23);
      if ((v33 & 0x80u) != 0)
      {
        v33 = *(v32 + 8);
      }

      v30 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6);
      ++v31;
    }

    while (v29 != v31);
  }

  if (*(this + 136))
  {
    v34 = (v30 + 2);
  }

  else
  {
    v34 = v30;
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v34, this + 35);
  }

  else
  {
    *(this + 35) = v34;
    return v34;
  }
}

char *google::protobuf::internal::ComputeUnknownFieldsSize(google::protobuf::UnknownFieldSet *a1, const google::protobuf::UnknownFieldSet *a2, _DWORD *a3)
{
  if (*a1)
  {
    v5 = (*a1 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = google::protobuf::UnknownFieldSet::default_instance(a1);
  }

  result = a2 + google::protobuf::internal::WireFormat::ComputeUnknownFieldsSize(v5, a2);
  *a3 = result;
  return result;
}

char *SnippetUI::Response_Section::ByteSizeLong(SnippetUI::Response_Section *this)
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
      v7 = SnippetUI::Response_Component::ByteSizeLong(v6);
      v2 += &v7[(9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6];
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(this + 10);
  if (!v8)
  {
    v9 = 0;
LABEL_19:
    v14 = 0;
    goto LABEL_22;
  }

  v9 = 0;
  for (i = 0; i != v8; ++i)
  {
    v11 = *google::protobuf::RepeatedField<int>::Get(this + 10, i);
    if (v11 < 0)
    {
      v12 = 10;
    }

    else
    {
      v12 = (9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6;
    }

    v9 += v12;
  }

  if (!v9)
  {
    goto LABEL_19;
  }

  if ((v9 & 0x80000000) != 0)
  {
    v13 = 11;
  }

  else
  {
    v13 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v2 += v13;
  v14 = v9;
LABEL_22:
  *(this + 14) = v14;
  v15 = v2 + v9;
  v16 = *(this + 16);
  if (!v16)
  {
    v18 = 0;
LABEL_32:
    v22 = 0;
    goto LABEL_35;
  }

  v17 = 0;
  v18 = 0;
  do
  {
    v19 = *google::protobuf::RepeatedField<int>::Get(this + 16, v17);
    if (v19 < 0)
    {
      v20 = 10;
    }

    else
    {
      v20 = (9 * (__clz(v19 | 1) ^ 0x1F) + 73) >> 6;
    }

    v18 += v20;
    ++v17;
  }

  while (v16 != v17);
  if (!v18)
  {
    goto LABEL_32;
  }

  if ((v18 & 0x80000000) != 0)
  {
    v21 = 11;
  }

  else
  {
    v21 = ((9 * (__clz(v18 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v15 += v21;
  v22 = v18;
LABEL_35:
  *(this + 20) = v22;
  if (*(this + 84))
  {
    v23 = (v15 + v18 + 2);
  }

  else
  {
    v23 = (v15 + v18);
  }

  if (*(this + 8))
  {

    return google::protobuf::internal::ComputeUnknownFieldsSize((this + 8), v23, this + 22);
  }

  else
  {
    *(this + 22) = v23;
    return v23;
  }
}

uint64_t google::protobuf::RepeatedField<int>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1176);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v4);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/repeated_field.h", 1177);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<int>::elements(a1) + 4 * a2;
}

void sub_1BFBF864C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::AppendToString(const char *a1, std::string *a2)
{
  if (((*(*a1 + 64))(a1) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/DialogEngine/protobuf/src/google/protobuf/message_lite.cc", 417);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: IsInitialized(): ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v7, v5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::MessageLite::AppendPartialToString(a1, a2);
}

void sub_1BFBF8744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

void siri::dialogengine::SetVisualInfo(int *a1, uint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  *a2 = a1[6];
  *(a2 + 8) = a1[24];
  *(a2 + 16) = a1[18];
  *(a2 + 24) = a1[12];
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<SnippetUI::Response_Section>::TypeHandler>(&v36, (a1 + 4));
  if (v37 >= 1)
  {
    v2 = 0;
    do
    {
      v3 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<SnippetUI::Response_Section>::TypeHandler>(&v36, v2);
      siri::dialogengine::GetVisualElementId(&__p, v3);
      siri::dialogengine::GetStoredItems(&v45, v3);
      v4 = v45.__r_.__value_.__r.__words[0];
      if (v45.__r_.__value_.__l.__data_ == &v45.__r_.__value_.__r.__words[1])
      {
LABEL_11:
        std::string::basic_string[abi:ne200100]<0>(&v34, "");
      }

      else
      {
        while (1)
        {
          LODWORD(v42.__first_) = *(v4 + 32);
          siri::dialogengine::CatBinary::vcat_item::vcat_item(&v42.__begin_, (v4 + 40));
          if (v44 == 6)
          {
            break;
          }

          siri::dialogengine::CatBinary::vcat_item::~vcat_item(&v42.__begin_);
          v5 = *(v4 + 8);
          if (v5)
          {
            do
            {
              v6 = v5;
              v5 = v5->__r_.__value_.__r.__words[0];
            }

            while (v5);
          }

          else
          {
            do
            {
              v6 = *(v4 + 16);
              v7 = v6->__r_.__value_.__r.__words[0] == v4;
              v4 = v6;
            }

            while (!v7);
          }

          v4 = v6;
          if (v6 == &v45.__r_.__value_.__r.__words[1])
          {
            goto LABEL_11;
          }
        }

        if (*(v43 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v34, *v43, *(v43 + 1));
        }

        else
        {
          v8 = *v43;
          v34.__r_.__value_.__r.__words[2] = *(v43 + 2);
          *&v34.__r_.__value_.__l.__data_ = v8;
        }

        siri::dialogengine::CatBinary::vcat_item::~vcat_item(&v42.__begin_);
      }

      std::__tree<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::__map_value_compare<int,std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>,std::less<int>,true>,std::allocator<std::__value_type<int,siri::dialogengine::CatBinary::vcat_item>>>::destroy(v45.__r_.__value_.__l.__size_);
      if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v34.__r_.__value_.__l.__size_;
      }

      std::string::basic_string[abi:ne200100](&v45, size + 1);
      if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v45;
      }

      else
      {
        v10 = v45.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v34;
        }

        else
        {
          v11 = v34.__r_.__value_.__r.__words[0];
        }

        memmove(v10, v11, size);
      }

      *(&v10->__r_.__value_.__l.__data_ + size) = 35;
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
        v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v13 = __p.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&v45, p_p, v13);
      v15 = v14->__r_.__value_.__r.__words[0];
      v46.__r_.__value_.__r.__words[0] = v14->__r_.__value_.__l.__size_;
      *(v46.__r_.__value_.__r.__words + 7) = *(&v14->__r_.__value_.__r.__words[1] + 7);
      v16 = HIBYTE(v14->__r_.__value_.__r.__words[2]);
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v17 = v40;
      if (v40 >= v41)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3);
        v20 = v19 + 1;
        if (v19 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::vector<std::string>>::__throw_length_error[abi:ne200100]();
        }

        if (0x5555555555555556 * ((v41 - v39) >> 3) > v20)
        {
          v20 = 0x5555555555555556 * ((v41 - v39) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v41 - v39) >> 3) >= 0x555555555555555)
        {
          v21 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v21 = v20;
        }

        v42.__end_cap_.__value_ = &v39;
        if (v21)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v39, v21);
        }

        v22 = 8 * ((v40 - v39) >> 3);
        *v22 = v15;
        *(v22 + 8) = v46.__r_.__value_.__r.__words[0];
        *(v22 + 15) = *(v46.__r_.__value_.__r.__words + 7);
        *(v22 + 23) = v16;
        v18 = (24 * v19 + 24);
        v23 = (v22 - (v40 - v39));
        memcpy(v23, v39, v40 - v39);
        v24 = v39;
        v25 = v41;
        v39 = v23;
        v40 = v18;
        v41 = 0;
        v42.__first_ = v24;
        v42.__end_ = v24;
        v42.__end_cap_.__value_ = v25;
        v42.__begin_ = v24;
        std::__split_buffer<std::string>::~__split_buffer(&v42);
      }

      else
      {
        v40->__r_.__value_.__r.__words[0] = v15;
        v17->__r_.__value_.__l.__size_ = v46.__r_.__value_.__r.__words[0];
        *(&v17->__r_.__value_.__r.__words[1] + 7) = *(v46.__r_.__value_.__r.__words + 7);
        *(&v17->__r_.__value_.__s + 23) = v16;
        v18 = v17 + 1;
      }

      v40 = v18;
      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      std::operator+<char>();
      v26 = std::string::append(&v46, ", Visual Element (Section) ID: ");
      v27 = *&v26->__r_.__value_.__l.__data_;
      v45.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
      *&v45.__r_.__value_.__l.__data_ = v27;
      v26->__r_.__value_.__l.__size_ = 0;
      v26->__r_.__value_.__r.__words[2] = 0;
      v26->__r_.__value_.__r.__words[0] = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &__p;
      }

      else
      {
        v28 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v29 = __p.__r_.__value_.__l.__size_;
      }

      v30 = std::string::append(&v45, v28, v29);
      v31 = *&v30->__r_.__value_.__l.__data_;
      v42.__end_ = v30->__r_.__value_.__r.__words[2];
      *&v42.__first_ = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      siri::dialogengine::Log::LogWithLevel(&v42, 0);
      if (SHIBYTE(v42.__end_) < 0)
      {
        operator delete(v42.__first_);
      }

      if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v45.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v34.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      ++v2;
    }

    while (v2 < v37);
  }

  if ((a2 + 32) != &v39)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((a2 + 32), v39, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3));
  }

  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField(&v36);
  v42.__first_ = &v39;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v42);
  v32 = *MEMORY[0x1E69E9840];
}

void sub_1BFBF8C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char *a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  google::protobuf::RepeatedPtrField<siri::dialogengine::SchemaBinary::Input>::~RepeatedPtrField(&a23);
  a23 = &a26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

BOOL siri::dialogengine::StringGlobMatch(uint64_t a1, const std::string *__s)
{
  v2 = HIBYTE(__s->__r_.__value_.__r.__words[2]);
  size = __s->__r_.__value_.__l.__size_;
  if ((v2 & 0x80u) == 0)
  {
    v4 = HIBYTE(__s->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v4 = __s->__r_.__value_.__l.__size_;
  }

  if (!v4)
  {
    return 0;
  }

  if ((v2 & 0x80) != 0)
  {
    v7 = __s->__r_.__value_.__r.__words[0];
    if (size != 1)
    {
      v8 = __s->__r_.__value_.__l.__size_;
      goto LABEL_13;
    }

    if (v7->__r_.__value_.__s.__data_[0] != 42)
    {
      v10 = (&v7->__r_.__value_.__l.__data_ + 1);
      v8 = 1;
LABEL_16:
      v11 = v7;
      while (1)
      {
        v12 = memchr(v11, 42, v8);
        if (!v12)
        {
          goto LABEL_24;
        }

        if (v12->__r_.__value_.__s.__data_[0] == 42)
        {
          break;
        }

        v11 = (&v12->__r_.__value_.__l.__data_ + 1);
        v8 = v10 - v11;
        if (v10 - v11 < 1)
        {
          goto LABEL_24;
        }
      }

      if (v12 == v10)
      {
        goto LABEL_24;
      }

      v13 = v12 - v7;
      if (v12 == v7)
      {
        std::string::basic_string(&v30, __s, 1uLL, 0xFFFFFFFFFFFFFFFFLL, &v29);
        v20 = siri::dialogengine::StringEndsWith(a1, &v30.__r_.__value_.__l.__data_);
        goto LABEL_41;
      }

      if (v13 == -1)
      {
        goto LABEL_24;
      }

      if ((v2 & 0x80) != 0)
      {
        v21 = size - 1;
      }

      else
      {
        v21 = v2 - 1;
      }

      if (v13 == v21)
      {
        std::string::basic_string(&v30, __s, 0, v13, &v29);
        v20 = siri::dialogengine::StringStartsWith(a1, &v30.__r_.__value_.__l.__data_);
LABEL_41:
        v9 = v20;
        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        return v9;
      }

      std::operator+<char>();
      v22 = std::string::append(&v29, "'");
      v23 = *&v22->__r_.__value_.__l.__data_;
      v30.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v30.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      siri::dialogengine::Log::LogWithLevel(&v30, 3u);
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      v24 = *(a1 + 23);
      if (v24 >= 0)
      {
        v19 = *(a1 + 23);
      }

      else
      {
        v19 = *(a1 + 8);
      }

      v25 = HIBYTE(__s->__r_.__value_.__r.__words[2]);
      v26 = v25;
      if ((v25 & 0x80u) != 0)
      {
        v25 = __s->__r_.__value_.__l.__size_;
      }

      if (v19 == v25)
      {
        if (v24 >= 0)
        {
          v16 = a1;
        }

        else
        {
          v16 = *a1;
        }

        v27 = __s->__r_.__value_.__r.__words[0];
        if (v26 >= 0)
        {
          v18 = __s;
        }

        else
        {
          v18 = __s->__r_.__value_.__r.__words[0];
        }

        return memcmp(v16, v18, v19) == 0;
      }

      return 0;
    }

    return 1;
  }

  v7 = __s;
  v8 = HIBYTE(__s->__r_.__value_.__r.__words[2]);
  if (v2 == 1)
  {
    v7 = __s;
    v8 = HIBYTE(__s->__r_.__value_.__r.__words[2]);
    if (__s->__r_.__value_.__s.__data_[0] == 42)
    {
      return 1;
    }
  }

LABEL_13:
  if (v8 >= 1)
  {
    v10 = (v7 + v8);
    goto LABEL_16;
  }

LABEL_24:
  v14 = *(a1 + 23);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = *(a1 + 8);
  }

  if (v14 != v4)
  {
    return 0;
  }

  if (v15 >= 0)
  {
    v16 = a1;
  }

  else
  {
    v16 = *a1;
  }

  v17 = __s->__r_.__value_.__r.__words[0];
  if ((v2 & 0x80u) == 0)
  {
    v18 = __s;
  }

  else
  {
    v18 = __s->__r_.__value_.__r.__words[0];
  }

  v19 = v4;
  return memcmp(v16, v18, v19) == 0;
}

void sub_1BFBF8FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}