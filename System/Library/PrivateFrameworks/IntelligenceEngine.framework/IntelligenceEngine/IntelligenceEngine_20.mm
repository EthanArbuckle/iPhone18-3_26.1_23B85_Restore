void sub_254DAD904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (*(v48 - 185) < 0)
  {
    operator delete(*(v48 - 208));
  }

  *(v48 - 256) = v48 - 144;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v48 - 256));
  YAML::Node::~Node(&a15);
  a15 = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void sub_254DAEA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25)
{
  *(v26 - 72) = v25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v26 - 72));
  if (a21 < 0)
  {
    operator delete(__p);
  }

  YAML::Emitter::~Emitter(&a25);
  _Unwind_Resume(a1);
}

void siri::intelligence::WriteIntelligence(siri::intelligence *this, const protobuf::Intelligence *a2, YAML::Emitter *a3)
{
  if (**a2 == 1)
  {
    YAML::Emitter::EmitBeginMap(a2);
  }

  if (*(this + 16))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "formatVersion");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    YAML::Emitter::Write(a2, *(this + 66));
  }

  if (*(this + 8) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "meta");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v5 = *(this + 8);
    if (v5 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v5 = *(this + 8);
      }

      if (v5 < 1)
      {
        goto LABEL_29;
      }
    }

    for (i = 0; i < v9; ++i)
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Meta>::TypeHandler>(this + 24, i);
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginMap(a2);
      }

      v8 = *(v7 + 16);
      if (v8)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "name");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v7 + 24));
        v8 = *(v7 + 16);
      }

      if ((v8 & 2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "content");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v7 + 32));
      }

      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndMap(a2);
      }

      v9 = *(this + 8);
    }

    if (v9 != 1)
    {
LABEL_29:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 116) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "excludeIfBuildVariableSet");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v10 = *(this + 116);
    if (v10 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v10 = *(this + 116);
      }

      if (v10 < 1)
      {
        goto LABEL_41;
      }
    }

    for (j = 0; j < v13; ++j)
    {
      v12 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 456, j);
      YAML::Emitter::Write(a2, v12);
      v13 = *(this + 116);
    }

    if (v13 != 1)
    {
LABEL_41:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 122) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "excludeIfFeatureDisabled");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v14 = *(this + 122);
    if (v14 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v14 = *(this + 122);
      }

      if (v14 < 1)
      {
        goto LABEL_53;
      }
    }

    for (k = 0; k < v17; ++k)
    {
      v16 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(this + 480, k);
      YAML::Emitter::Write(a2, v16);
      v17 = *(this + 122);
    }

    if (v17 != 1)
    {
LABEL_53:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if ((*(this + 4) & 2) != 0)
  {
    if (!*(this + 67))
    {
      google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 22110);
      v18 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: !value || start_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v208, &v18->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "start");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    if (*(this + 67))
    {
      v19 = *(this + 67);
    }

    else
    {
      v19 = &protobuf::_Intelligence_Start_default_instance_;
    }

    if (**a2 == 1)
    {
      YAML::Emitter::EmitBeginMap(a2);
    }

    if (*(v19 + 8) >= 1)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "responseIds");
      YAML::Emitter::Write(a2, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      v20 = *(v19 + 8);
      if (v20 != 1)
      {
        if (**a2 == 1)
        {
          YAML::Emitter::EmitBeginSeq(a2);
          v20 = *(v19 + 8);
        }

        if (v20 < 1)
        {
          goto LABEL_75;
        }
      }

      for (m = 0; m < v23; ++m)
      {
        v22 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v19 + 24, m);
        YAML::Emitter::Write(a2, v22);
        v23 = *(v19 + 8);
      }

      if (v23 != 1)
      {
LABEL_75:
        if (**a2 == 1)
        {
          YAML::Emitter::EmitEndSeq(a2);
        }
      }
    }

    if (*(v19 + 16))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "activityId");
      YAML::Emitter::Write(a2, __p);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      YAML::Emitter::Write(a2, *(v19 + 6));
    }

    if (**a2 == 1)
    {
      YAML::Emitter::EmitEndMap(a2);
    }
  }

  if (*(this + 14) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "dialogResponses");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v24 = *(this + 14);
    if (v24 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v24 = *(this + 14);
      }

      if (v24 < 1)
      {
        goto LABEL_215;
      }
    }

    for (n = 0; n < v48; ++n)
    {
      v26 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::TypeHandler>(this + 48, n);
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginMap(a2);
      }

      if (*(v26 + 16))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "id");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v26 + 120));
      }

      if (*(v26 + 80) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "nextIds");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v27 = *(v26 + 80);
        if (v27 != 1)
        {
          if (**a2 == 1)
          {
            YAML::Emitter::EmitBeginSeq(a2);
            v27 = *(v26 + 80);
          }

          if (v27 < 1)
          {
            goto LABEL_107;
          }
        }

        for (ii = 0; ii < v30; ++ii)
        {
          v29 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v26 + 72, ii);
          YAML::Emitter::Write(a2, v29);
          v30 = *(v26 + 80);
        }

        if (v30 != 1)
        {
LABEL_107:
          if (**a2 == 1)
          {
            YAML::Emitter::EmitEndSeq(a2);
          }
        }
      }

      v31 = *(v26 + 16);
      if ((v31 & 0x40) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "selectionMode");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v26 + 168));
        v31 = *(v26 + 16);
      }

      if ((v31 & 0x800) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "conditionId");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v26 + 208));
        v31 = *(v26 + 16);
      }

      if ((v31 & 0x10) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "priority");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v26 + 152));
        v31 = *(v26 + 16);
      }

      if ((v31 & 0x8000) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "repeat");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v26 + 236));
        v31 = *(v26 + 16);
      }

      if ((v31 & 0x1000) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "inputGroupId");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v26 + 216));
        v31 = *(v26 + 16);
      }

      if ((v31 & 0x80) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "text");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (**a2 == 1)
        {
          YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(*a2, *a2 + 36, 6, 0);
        }

        YAML::Emitter::Write(a2, *(v26 + 176));
        v31 = *(v26 + 16);
      }

      if ((v31 & 0x10000) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "sensitiveData");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v26 + 237));
        v31 = *(v26 + 16);
      }

      if ((v31 & 0x2000) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "dialogPhase");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v26 + 224));
        v31 = *(v26 + 16);
      }

      if ((v31 & 0x4000) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "characterId");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::WriteIntegralType<int>(a2, *(v26 + 232));
        v31 = *(v26 + 16);
      }

      if ((v31 & 0x100) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "userData");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v26 + 184));
        v31 = *(v26 + 16);
      }

      if ((v31 & 0x200) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "catId");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v26 + 192));
      }

      if (*(v26 + 32) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "catParameters");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v32 = *(v26 + 32);
        if (v32 != 1)
        {
          if (**a2 == 1)
          {
            YAML::Emitter::EmitBeginSeq(a2);
            v32 = *(v26 + 32);
          }

          if (v32 < 1)
          {
            goto LABEL_165;
          }
        }

        for (jj = 0; jj < v36; ++jj)
        {
          v34 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v26 + 24, jj);
          siri::intelligence::WriteIntelligence_KeyValueParameter(v34, a2, v35);
          v36 = *(v26 + 32);
        }

        if (v36 != 1)
        {
LABEL_165:
          if (**a2 == 1)
          {
            YAML::Emitter::EmitEndSeq(a2);
          }
        }
      }

      if (*(v26 + 104) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "visualParameters");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v37 = *(v26 + 104);
        if (v37 != 1)
        {
          if (**a2 == 1)
          {
            YAML::Emitter::EmitBeginSeq(a2);
            v37 = *(v26 + 104);
          }

          if (v37 < 1)
          {
            goto LABEL_177;
          }
        }

        for (kk = 0; kk < v41; ++kk)
        {
          v39 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v26 + 96, kk);
          siri::intelligence::WriteIntelligence_KeyValueParameter(v39, a2, v40);
          v41 = *(v26 + 104);
        }

        if (v41 != 1)
        {
LABEL_177:
          if (**a2 == 1)
          {
            YAML::Emitter::EmitEndSeq(a2);
          }
        }
      }

      if ((*(v26 + 17) & 4) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "patternId");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v26 + 200));
      }

      if (*(v26 + 56) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "patternParameters");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v42 = *(v26 + 56);
        if (v42 != 1)
        {
          if (**a2 == 1)
          {
            YAML::Emitter::EmitBeginSeq(a2);
            v42 = *(v26 + 56);
          }

          if (v42 < 1)
          {
            goto LABEL_193;
          }
        }

        for (mm = 0; mm < v46; ++mm)
        {
          v44 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v26 + 48, mm);
          siri::intelligence::WriteIntelligence_KeyValueParameter(v44, a2, v45);
          v46 = *(v26 + 56);
        }

        if (v46 != 1)
        {
LABEL_193:
          if (**a2 == 1)
          {
            YAML::Emitter::EmitEndSeq(a2);
          }
        }
      }

      v47 = *(v26 + 16);
      if ((v47 & 2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "childIds");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v26 + 128));
        v47 = *(v26 + 16);
      }

      if ((v47 & 4) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "condition");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v26 + 136));
        v47 = *(v26 + 16);
      }

      if ((v47 & 8) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ruleset");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v26 + 144));
        v47 = *(v26 + 16);
      }

      if ((v47 & 0x20) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "inputGroup");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v26 + 160));
      }

      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndMap(a2);
      }

      v48 = *(this + 14);
    }

    if (v48 != 1)
    {
LABEL_215:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 20) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "behaviorResponses");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v49 = *(this + 20);
    if (v49 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v49 = *(this + 20);
      }

      if (v49 < 1)
      {
        goto LABEL_328;
      }
    }

    for (nn = 0; nn < v70; ++nn)
    {
      v51 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>(this + 72, nn);
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginMap(a2);
      }

      if (*(v51 + 16))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "id");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v51 + 72));
      }

      if (*(v51 + 56) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "nextIds");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v52 = *(v51 + 56);
        if (v52 != 1)
        {
          if (**a2 == 1)
          {
            YAML::Emitter::EmitBeginSeq(a2);
            v52 = *(v51 + 56);
          }

          if (v52 < 1)
          {
            goto LABEL_241;
          }
        }

        for (i1 = 0; i1 < v55; ++i1)
        {
          v54 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v51 + 48, i1);
          YAML::Emitter::Write(a2, v54);
          v55 = *(v51 + 56);
        }

        if (v55 != 1)
        {
LABEL_241:
          if (**a2 == 1)
          {
            YAML::Emitter::EmitEndSeq(a2);
          }
        }
      }

      v56 = *(v51 + 16);
      if ((v56 & 0x40) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "selectionMode");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v51 + 120));
        v56 = *(v51 + 16);
      }

      if ((v56 & 0x100) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "conditionId");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v51 + 136));
        v56 = *(v51 + 16);
      }

      if ((v56 & 0x10) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "priority");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v51 + 104));
        v56 = *(v51 + 16);
      }

      if ((v56 & 0x800) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "repeat");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v51 + 160));
        v56 = *(v51 + 16);
      }

      if ((v56 & 0x200) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "inputGroupId");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v51 + 144));
        v56 = *(v51 + 16);
      }

      if ((v56 & 0x80) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "name");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v51 + 128));
      }

      if (*(v51 + 32) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "parameters");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v57 = *(v51 + 32);
        if (v57 != 1)
        {
          if (**a2 == 1)
          {
            YAML::Emitter::EmitBeginSeq(a2);
            v57 = *(v51 + 32);
          }

          if (v57 < 1)
          {
            goto LABEL_277;
          }
        }

        for (i2 = 0; i2 < v61; ++i2)
        {
          v59 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v51 + 24, i2);
          siri::intelligence::WriteIntelligence_KeyValueParameter(v59, a2, v60);
          v61 = *(v51 + 32);
        }

        if (v61 != 1)
        {
LABEL_277:
          if (**a2 == 1)
          {
            YAML::Emitter::EmitEndSeq(a2);
          }
        }
      }

      v62 = *(v51 + 16);
      if ((v62 & 0x400) != 0)
      {
        if (!*(v51 + 152))
        {
          google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 12082);
          v63 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: !value || undo_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v208, &v63->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "undo");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (*(v51 + 152))
        {
          v64 = *(v51 + 152);
        }

        else
        {
          v64 = &protobuf::_Intelligence_Undo_default_instance_;
        }

        if (**a2 == 1)
        {
          YAML::Emitter::EmitBeginMap(a2);
        }

        if (*(v64 + 16))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "identifier");
          YAML::Emitter::Write(a2, __p);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          YAML::Emitter::Write(a2, *(v64 + 6));
        }

        if (*(v64 + 8) >= 1)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "userData");
          YAML::Emitter::Write(a2, __p);
          if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p[0].__r_.__value_.__l.__data_);
          }

          v65 = *(v64 + 8);
          if (v65 != 1)
          {
            if (**a2 == 1)
            {
              YAML::Emitter::EmitBeginSeq(a2);
              v65 = *(v64 + 8);
            }

            if (v65 < 1)
            {
              goto LABEL_303;
            }
          }

          for (i3 = 0; i3 < v69; ++i3)
          {
            v67 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v64 + 24, i3);
            siri::intelligence::WriteIntelligence_KeyValueParameter(v67, a2, v68);
            v69 = *(v64 + 8);
          }

          if (v69 != 1)
          {
LABEL_303:
            if (**a2 == 1)
            {
              YAML::Emitter::EmitEndSeq(a2);
            }
          }
        }

        if (**a2 == 1)
        {
          YAML::Emitter::EmitEndMap(a2);
        }

        v62 = *(v51 + 16);
      }

      if ((v62 & 2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "childIds");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v51 + 80));
        v62 = *(v51 + 16);
      }

      if ((v62 & 4) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "condition");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v51 + 88));
        v62 = *(v51 + 16);
      }

      if ((v62 & 8) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ruleset");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v51 + 96));
        v62 = *(v51 + 16);
      }

      if ((v62 & 0x20) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "inputGroup");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v51 + 112));
      }

      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndMap(a2);
      }

      v70 = *(this + 20);
    }

    if (v70 != 1)
    {
LABEL_328:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 26) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "referenceResponses");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v71 = *(this + 26);
    if (v71 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v71 = *(this + 26);
      }

      if (v71 < 1)
      {
        goto LABEL_404;
      }
    }

    for (i4 = 0; i4 < v79; ++i4)
    {
      v73 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::TypeHandler>(this + 96, i4);
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginMap(a2);
      }

      if (*(v73 + 16))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "id");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v73 + 48));
      }

      if (*(v73 + 32) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "nextIds");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v74 = *(v73 + 32);
        if (v74 != 1)
        {
          if (**a2 == 1)
          {
            YAML::Emitter::EmitBeginSeq(a2);
            v74 = *(v73 + 32);
          }

          if (v74 < 1)
          {
            goto LABEL_354;
          }
        }

        for (i5 = 0; i5 < v77; ++i5)
        {
          v76 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v73 + 24, i5);
          YAML::Emitter::Write(a2, v76);
          v77 = *(v73 + 32);
        }

        if (v77 != 1)
        {
LABEL_354:
          if (**a2 == 1)
          {
            YAML::Emitter::EmitEndSeq(a2);
          }
        }
      }

      v78 = *(v73 + 16);
      if ((v78 & 0x40) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "selectionMode");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v73 + 96));
        v78 = *(v73 + 16);
      }

      if ((v78 & 0x200) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "conditionId");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v73 + 120));
        v78 = *(v73 + 16);
      }

      if ((v78 & 0x10) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "priority");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v73 + 80));
        v78 = *(v73 + 16);
      }

      if ((v78 & 0x800) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "repeat");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v73 + 136));
        v78 = *(v73 + 16);
      }

      if ((v78 & 0x400) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "inputGroupId");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v73 + 128));
        v78 = *(v73 + 16);
      }

      if ((v78 & 0x80) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "refId");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v73 + 104));
        v78 = *(v73 + 16);
      }

      if ((v78 & 0x100) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "mode");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v73 + 112));
        v78 = *(v73 + 16);
      }

      if ((v78 & 2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "childIds");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v73 + 56));
        v78 = *(v73 + 16);
      }

      if ((v78 & 4) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "condition");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v73 + 64));
        v78 = *(v73 + 16);
      }

      if ((v78 & 8) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ruleset");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v73 + 72));
        v78 = *(v73 + 16);
      }

      if ((v78 & 0x20) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "inputGroup");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v73 + 88));
      }

      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndMap(a2);
      }

      v79 = *(this + 26);
    }

    if (v79 != 1)
    {
LABEL_404:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 104) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "responseGroups");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v80 = *(this + 104);
    if (v80 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v80 = *(this + 104);
      }

      if (v80 < 1)
      {
        goto LABEL_416;
      }
    }

    for (i6 = 0; i6 < v84; ++i6)
    {
      v82 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(this + 408, i6);
      siri::intelligence::WriteIntelligence_ResponseGroup(v82, a2, v83);
      v84 = *(this + 104);
    }

    if (v84 != 1)
    {
LABEL_416:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 110) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "inputGroups");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v85 = *(this + 110);
    if (v85 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v85 = *(this + 110);
      }

      if (v85 < 1)
      {
        goto LABEL_428;
      }
    }

    for (i7 = 0; i7 < v89; ++i7)
    {
      v87 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(this + 432, i7);
      siri::intelligence::WriteIntelligence_InputGroup(v87, a2, v88);
      v89 = *(this + 110);
    }

    if (v89 != 1)
    {
LABEL_428:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 44) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "activities");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v90 = *(this + 44);
    if (v90 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v90 = *(this + 44);
      }

      if (v90 < 1)
      {
        goto LABEL_476;
      }
    }

    for (i8 = 0; i8 < v99; ++i8)
    {
      v92 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::TypeHandler>(this + 168, i8);
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginMap(a2);
      }

      v93 = *(v92 + 16);
      if ((v93 & 2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "id");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v92 + 56));
        v93 = *(v92 + 16);
      }

      if (v93)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "name");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v92 + 48));
      }

      if (*(v92 + 32) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "responseIds");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v94 = *(v92 + 32);
        if (v94 != 1)
        {
          if (**a2 == 1)
          {
            YAML::Emitter::EmitBeginSeq(a2);
            v94 = *(v92 + 32);
          }

          if (v94 < 1)
          {
            goto LABEL_458;
          }
        }

        for (i9 = 0; i9 < v97; ++i9)
        {
          v96 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v92 + 24, i9);
          YAML::Emitter::Write(a2, v96);
          v97 = *(v92 + 32);
        }

        if (v97 != 1)
        {
LABEL_458:
          if (**a2 == 1)
          {
            YAML::Emitter::EmitEndSeq(a2);
          }
        }
      }

      v98 = *(v92 + 16);
      if ((v98 & 0x10) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "inputGroupId");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v92 + 80));
        v98 = *(v92 + 16);
      }

      if ((v98 & 4) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "params");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v92 + 64));
        v98 = *(v92 + 16);
      }

      if ((v98 & 8) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "inputGroup");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v92 + 72));
      }

      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndMap(a2);
      }

      v99 = *(this + 44);
    }

    if (v99 != 1)
    {
LABEL_476:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 50) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "utterances");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v100 = *(this + 50);
    if (v100 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v100 = *(this + 50);
      }

      if (v100 < 1)
      {
        goto LABEL_506;
      }
    }

    for (i10 = 0; i10 < v104; ++i10)
    {
      v102 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Utterance>::TypeHandler>(this + 192, i10);
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginMap(a2);
      }

      v103 = *(v102 + 16);
      if (v103)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "id");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v102 + 24));
        v103 = *(v102 + 16);
      }

      if ((v103 & 2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "text");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (**a2 == 1)
        {
          YAML::EmitterState::_Set<YAML::EMITTER_MANIP>(*a2, *a2 + 36, 6, 0);
        }

        YAML::Emitter::Write(a2, *(v102 + 32));
        v103 = *(v102 + 16);
      }

      if ((v103 & 4) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "characterId");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::WriteIntegralType<int>(a2, *(v102 + 40));
      }

      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndMap(a2);
      }

      v104 = *(this + 50);
    }

    if (v104 != 1)
    {
LABEL_506:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 56) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "characters");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v105 = *(this + 56);
    if (v105 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v105 = *(this + 56);
      }

      if (v105 < 1)
      {
        goto LABEL_534;
      }
    }

    for (i11 = 0; i11 < v109; ++i11)
    {
      v107 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Character>::TypeHandler>(this + 216, i11);
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginMap(a2);
      }

      v108 = *(v107 + 16);
      if (v108)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "id");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v107 + 24));
        v108 = *(v107 + 16);
      }

      if ((v108 & 2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "name");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v107 + 32));
        v108 = *(v107 + 16);
      }

      if ((v108 & 4) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "ttsVoiceName");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v107 + 40));
      }

      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndMap(a2);
      }

      v109 = *(this + 56);
    }

    if (v109 != 1)
    {
LABEL_534:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 128) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "events");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v110 = *(this + 128);
    if (v110 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v110 = *(this + 128);
      }

      if (v110 < 1)
      {
        goto LABEL_627;
      }
    }

    for (i12 = 0; i12 < v134; ++i12)
    {
      v112 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Event>::TypeHandler>(this + 504, i12);
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginMap(a2);
      }

      v113 = *(v112 + 16);
      if (v113)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "id");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v112 + 120));
        v113 = *(v112 + 16);
      }

      if ((v113 & 2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "name");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v112 + 128));
        v113 = *(v112 + 16);
      }

      if ((v113 & 0x10) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "catiEnsemble");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v112 + 152));
        v113 = *(v112 + 16);
      }

      if ((v113 & 4) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "catiName");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v112 + 136));
        v113 = *(v112 + 16);
      }

      if ((v113 & 8) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "catiGuid");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v112 + 144));
      }

      if (*(v112 + 56) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "userDialogActs");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v114 = *(v112 + 56);
        if (v114 != 1)
        {
          if (**a2 == 1)
          {
            YAML::Emitter::EmitBeginSeq(a2);
            v114 = *(v112 + 56);
          }

          if (v114 < 1)
          {
            goto LABEL_576;
          }
        }

        for (i13 = 0; i13 < v117; ++i13)
        {
          v116 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v112 + 48, i13);
          YAML::Emitter::Write(a2, v116);
          v117 = *(v112 + 56);
        }

        if (v117 != 1)
        {
LABEL_576:
          if (**a2 == 1)
          {
            YAML::Emitter::EmitEndSeq(a2);
          }
        }
      }

      if (*(v112 + 80) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "directInvocations");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v118 = *(v112 + 80);
        if (v118 != 1)
        {
          if (**a2 == 1)
          {
            YAML::Emitter::EmitBeginSeq(a2);
            v118 = *(v112 + 80);
          }

          if (v118 < 1)
          {
            goto LABEL_588;
          }
        }

        for (i14 = 0; i14 < v121; ++i14)
        {
          v120 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v112 + 72, i14);
          YAML::Emitter::Write(a2, v120);
          v121 = *(v112 + 80);
        }

        if (v121 != 1)
        {
LABEL_588:
          if (**a2 == 1)
          {
            YAML::Emitter::EmitEndSeq(a2);
          }
        }
      }

      if (*(v112 + 104) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "utterances");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v122 = *(v112 + 104);
        if (v122 != 1)
        {
          if (**a2 == 1)
          {
            YAML::Emitter::EmitBeginSeq(a2);
            v122 = *(v112 + 104);
          }

          if (v122 < 1)
          {
            goto LABEL_600;
          }
        }

        for (i15 = 0; i15 < v125; ++i15)
        {
          v124 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v112 + 96, i15);
          YAML::Emitter::Write(a2, v124);
          v125 = *(v112 + 104);
        }

        if (v125 != 1)
        {
LABEL_600:
          if (**a2 == 1)
          {
            YAML::Emitter::EmitEndSeq(a2);
          }
        }
      }

      if (*(v112 + 32) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "nlParsers");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v126 = *(v112 + 32);
        if (v126 != 1)
        {
          if (**a2 == 1)
          {
            YAML::Emitter::EmitBeginSeq(a2);
            v126 = *(v112 + 32);
          }

          if (v126 < 1)
          {
            goto LABEL_612;
          }
        }

        for (i16 = 0; i16 < v130; ++i16)
        {
          v128 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_NLParameters>::TypeHandler>(v112 + 24, i16);
          siri::intelligence::WriteIntelligence_NLParameters(v128, a2, v129);
          v130 = *(v112 + 32);
        }

        if (v130 != 1)
        {
LABEL_612:
          if (**a2 == 1)
          {
            YAML::Emitter::EmitEndSeq(a2);
          }
        }
      }

      if ((*(v112 + 16) & 0x20) != 0)
      {
        if (!*(v112 + 160))
        {
          google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 18904);
          v131 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: !value || nl_producer_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v208, &v131->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "nlProducer");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (*(v112 + 160))
        {
          v133 = *(v112 + 160);
        }

        else
        {
          v133 = &protobuf::_Intelligence_NLParameters_default_instance_;
        }

        siri::intelligence::WriteIntelligence_NLParameters(v133, a2, v132);
      }

      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndMap(a2);
      }

      v134 = *(this + 128);
    }

    if (v134 != 1)
    {
LABEL_627:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 68) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "conditions");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v135 = *(this + 68);
    if (v135 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v135 = *(this + 68);
      }

      if (v135 < 1)
      {
        goto LABEL_656;
      }
    }

    for (i17 = 0; i17 < v142; ++i17)
    {
      v137 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition>::TypeHandler>(this + 264, i17);
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginMap(a2);
      }

      v138 = *(v137 + 16);
      if (v138)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "id");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v137 + 24));
        v138 = *(v137 + 16);
      }

      if ((v138 & 2) != 0)
      {
        if (!*(v137 + 32))
        {
          google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21788);
          v139 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: !value || condition_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v208, &v139->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "condition");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (*(v137 + 32))
        {
          v141 = *(v137 + 32);
        }

        else
        {
          v141 = &protobuf::_Intelligence_Condition_ConditionEntry_default_instance_;
        }

        siri::intelligence::WriteIntelligence_Condition_ConditionEntry(v141, a2, v140);
      }

      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndMap(a2);
      }

      v142 = *(this + 68);
    }

    if (v142 != 1)
    {
LABEL_656:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 98) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "variables");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v143 = *(this + 98);
    if (v143 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v143 = *(this + 98);
      }

      if (v143 < 1)
      {
        goto LABEL_733;
      }
    }

    for (i18 = 0; i18 < v160; ++i18)
    {
      v145 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::TypeHandler>(this + 384, i18);
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginMap(a2);
      }

      v146 = *(v145 + 16);
      if (v146)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "name");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v145 + 72));
        v146 = *(v145 + 16);
      }

      if ((v146 & 2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "type");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v145 + 80));
        v146 = *(v145 + 16);
      }

      if ((v146 & 0x40) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "persistent");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v145 + 120));
        v146 = *(v145 + 16);
      }

      if ((v146 & 4) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "description");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v145 + 88));
        v146 = *(v145 + 16);
      }

      if ((v146 & 0x10) != 0)
      {
        if (!*(v145 + 104))
        {
          google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 17756);
          v147 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: !value || default_value_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v208, &v147->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "defaultValue");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (*(v145 + 104))
        {
          v149 = *(v145 + 104);
        }

        else
        {
          v149 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
        }

        siri::intelligence::WriteIntelligence_KeyValueParameter(v149, a2, v148);
        v146 = *(v145 + 16);
      }

      if ((v146 & 8) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "defaultString");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v145 + 96));
        v146 = *(v145 + 16);
      }

      if ((v146 & 0x20) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "defaultNumber");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::WriteStreamable<double>(a2, *(v145 + 112));
        v146 = *(v145 + 16);
      }

      if ((v146 & 0x80) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "defaultBoolean");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v145 + 121));
      }

      if (*(v145 + 32) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "defaultArray");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v150 = *(v145 + 32);
        if (v150 != 1)
        {
          if (**a2 == 1)
          {
            YAML::Emitter::EmitBeginSeq(a2);
            v150 = *(v145 + 32);
          }

          if (v150 < 1)
          {
            goto LABEL_715;
          }
        }

        for (i19 = 0; i19 < v154; ++i19)
        {
          v152 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v145 + 24, i19);
          siri::intelligence::WriteIntelligence_KeyValueParameter(v152, a2, v153);
          v154 = *(v145 + 32);
        }

        if (v154 != 1)
        {
LABEL_715:
          if (**a2 == 1)
          {
            YAML::Emitter::EmitEndSeq(a2);
          }
        }
      }

      if (*(v145 + 56) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "defaultDictionary");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v155 = *(v145 + 56);
        if (v155 != 1)
        {
          if (**a2 == 1)
          {
            YAML::Emitter::EmitBeginSeq(a2);
            v155 = *(v145 + 56);
          }

          if (v155 < 1)
          {
            goto LABEL_727;
          }
        }

        for (i20 = 0; i20 < v159; ++i20)
        {
          v157 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v145 + 48, i20);
          siri::intelligence::WriteIntelligence_KeyValueParameter(v157, a2, v158);
          v159 = *(v145 + 56);
        }

        if (v159 != 1)
        {
LABEL_727:
          if (**a2 == 1)
          {
            YAML::Emitter::EmitEndSeq(a2);
          }
        }
      }

      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndMap(a2);
      }

      v160 = *(this + 98);
    }

    if (v160 != 1)
    {
LABEL_733:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  v161 = *(this + 4);
  if ((v161 & 8) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "useTimerCounts");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    YAML::Emitter::Write(a2, *(this + 552));
    v161 = *(this + 4);
  }

  if ((v161 & 4) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "version");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    YAML::Emitter::WriteStreamable<double>(a2, *(this + 68));
  }

  if (*(this + 32) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "groupResponses");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v162 = *(this + 32);
    if (v162 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v162 = *(this + 32);
      }

      if (v162 < 1)
      {
        goto LABEL_753;
      }
    }

    for (i21 = 0; i21 < v166; ++i21)
    {
      v164 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(this + 120, i21);
      siri::intelligence::WriteIntelligence_ResponseGroup(v164, a2, v165);
      v166 = *(this + 32);
    }

    if (v166 != 1)
    {
LABEL_753:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 38) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "rulesets");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v167 = *(this + 38);
    if (v167 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v167 = *(this + 38);
      }

      if (v167 < 1)
      {
        goto LABEL_765;
      }
    }

    for (i22 = 0; i22 < v171; ++i22)
    {
      v169 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(this + 144, i22);
      siri::intelligence::WriteIntelligence_InputGroup(v169, a2, v170);
      v171 = *(this + 38);
    }

    if (v171 != 1)
    {
LABEL_765:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 62) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "intents");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v172 = *(this + 62);
    if (v172 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v172 = *(this + 62);
      }

      if (v172 < 1)
      {
        goto LABEL_810;
      }
    }

    for (i23 = 0; i23 < v184; ++i23)
    {
      v174 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Intent>::TypeHandler>(this + 240, i23);
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginMap(a2);
      }

      v175 = *(v174 + 16);
      if (v175)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "id");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v174 + 48));
        v175 = *(v174 + 16);
      }

      if ((v175 & 2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "name");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v174 + 56));
      }

      if (*(v174 + 32) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "nlParsers");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v176 = *(v174 + 32);
        if (v176 != 1)
        {
          if (**a2 == 1)
          {
            YAML::Emitter::EmitBeginSeq(a2);
            v176 = *(v174 + 32);
          }

          if (v176 < 1)
          {
            goto LABEL_795;
          }
        }

        for (i24 = 0; i24 < v180; ++i24)
        {
          v178 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_NLParameters>::TypeHandler>(v174 + 24, i24);
          siri::intelligence::WriteIntelligence_NLParameters(v178, a2, v179);
          v180 = *(v174 + 32);
        }

        if (v180 != 1)
        {
LABEL_795:
          if (**a2 == 1)
          {
            YAML::Emitter::EmitEndSeq(a2);
          }
        }
      }

      if ((*(v174 + 16) & 4) != 0)
      {
        if (!*(v174 + 64))
        {
          google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 19149);
          v181 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: !value || nl_producer_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v208, &v181->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "nlProducer");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        if (*(v174 + 64))
        {
          v183 = *(v174 + 64);
        }

        else
        {
          v183 = &protobuf::_Intelligence_NLParameters_default_instance_;
        }

        siri::intelligence::WriteIntelligence_NLParameters(v183, a2, v182);
      }

      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndMap(a2);
      }

      v184 = *(this + 62);
    }

    if (v184 != 1)
    {
LABEL_810:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 74) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "counters");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v185 = *(this + 74);
    if (v185 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v185 = *(this + 74);
      }

      if (v185 < 1)
      {
        goto LABEL_834;
      }
    }

    for (i25 = 0; i25 < v189; ++i25)
    {
      v187 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Counter>::TypeHandler>(this + 288, i25);
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginMap(a2);
      }

      v188 = *(v187 + 16);
      if (v188)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "name");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v187 + 24));
        v188 = *(v187 + 16);
      }

      if ((v188 & 2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "defaultValue");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::WriteStreamable<double>(a2, *(v187 + 32));
      }

      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndMap(a2);
      }

      v189 = *(this + 74);
    }

    if (v189 != 1)
    {
LABEL_834:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 80) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "flags");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v190 = *(this + 80);
    if (v190 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v190 = *(this + 80);
      }

      if (v190 < 1)
      {
        goto LABEL_858;
      }
    }

    for (i26 = 0; i26 < v194; ++i26)
    {
      v192 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Flag>::TypeHandler>(this + 312, i26);
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginMap(a2);
      }

      v193 = *(v192 + 16);
      if (v193)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "name");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v192 + 24));
        v193 = *(v192 + 16);
      }

      if ((v193 & 2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "defaultValue");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v192 + 32));
      }

      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndMap(a2);
      }

      v194 = *(this + 80);
    }

    if (v194 != 1)
    {
LABEL_858:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 86) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "labels");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v195 = *(this + 86);
    if (v195 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v195 = *(this + 86);
      }

      if (v195 < 1)
      {
        goto LABEL_882;
      }
    }

    for (i27 = 0; i27 < v199; ++i27)
    {
      v197 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Label>::TypeHandler>(this + 336, i27);
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginMap(a2);
      }

      v198 = *(v197 + 16);
      if (v198)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "name");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v197 + 24));
        v198 = *(v197 + 16);
      }

      if ((v198 & 2) != 0)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "defaultValue");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v197 + 32));
      }

      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndMap(a2);
      }

      v199 = *(this + 86);
    }

    if (v199 != 1)
    {
LABEL_882:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (*(this + 92) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "lists");
    YAML::Emitter::Write(a2, __p);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v200 = *(this + 92);
    if (v200 != 1)
    {
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginSeq(a2);
        v200 = *(this + 92);
      }

      if (v200 < 1)
      {
        goto LABEL_914;
      }
    }

    for (i28 = 0; i28 < v207; ++i28)
    {
      v202 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_List>::TypeHandler>(this + 360, i28);
      if (**a2 == 1)
      {
        YAML::Emitter::EmitBeginMap(a2);
      }

      if (*(v202 + 16))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "name");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        YAML::Emitter::Write(a2, *(v202 + 48));
      }

      if (*(v202 + 32) >= 1)
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "defaultValue");
        YAML::Emitter::Write(a2, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        v203 = *(v202 + 32);
        if (v203 != 1)
        {
          if (**a2 == 1)
          {
            YAML::Emitter::EmitBeginSeq(a2);
            v203 = *(v202 + 32);
          }

          if (v203 < 1)
          {
            goto LABEL_908;
          }
        }

        for (i29 = 0; i29 < v206; ++i29)
        {
          v205 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v202 + 24, i29);
          YAML::Emitter::Write(a2, v205);
          v206 = *(v202 + 32);
        }

        if (v206 != 1)
        {
LABEL_908:
          if (**a2 == 1)
          {
            YAML::Emitter::EmitEndSeq(a2);
          }
        }
      }

      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndMap(a2);
      }

      v207 = *(this + 92);
    }

    if (v207 != 1)
    {
LABEL_914:
      if (**a2 == 1)
      {
        YAML::Emitter::EmitEndSeq(a2);
      }
    }
  }

  if (**a2 == 1)
  {
    YAML::Emitter::EmitEndMap(a2);
  }
}

void siri::intelligence::YamlIO::Validate(siri::intelligence::ValidationResults *a1, uint64_t *a2)
{
  if (siri::intelligence::FileExists(a2))
  {
    siri::intelligence::ReadFileToLines(a2, __p);
    v4 = __p[0];
    v5 = __p[1];
    if (__p[0] == __p[1])
    {
LABEL_37:
      __s1.__r_.__value_.__r.__words[0] = __p;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__s1);
      YAML::LoadFile(a2);
    }

    v6 = 1;
    while (1)
    {
      siri::intelligence::StringTrimLeft(" \t\n\r", v4, &__s1);
      v7 = HIBYTE(__s1.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
      {
        size = __s1.__r_.__value_.__l.__size_;
        if (__s1.__r_.__value_.__l.__size_)
        {
          p_s1 = __s1.__r_.__value_.__r.__words[0];
LABEL_9:
          v10 = SHIBYTE(v4->__r_.__value_.__r.__words[2]);
          if (v10 >= 0)
          {
            v11 = HIBYTE(v4->__r_.__value_.__r.__words[2]);
          }

          else
          {
            v11 = v4->__r_.__value_.__l.__size_;
          }

          if (v10 >= 0)
          {
            v12 = v4;
          }

          else
          {
            v12 = v4->__r_.__value_.__r.__words[0];
          }

          if (v11 >= size)
          {
            v13 = size;
          }

          else
          {
            v13 = v11;
          }

          if (!memcmp(p_s1, v12, v13) && v11 == size)
          {
            v15 = 1;
            if ((v7 & 0x80) == 0)
            {
              goto LABEL_28;
            }
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&v20, "Unexpected whitespace at beginning of line");
            siri::intelligence::ValidationResults::AddError(a1, siri::intelligence::CODE_YAML_PARSE, &v20, v6);
            if (v21 < 0)
            {
              operator delete(v20);
            }

            v15 = 1;
            if ((*(&__s1.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              goto LABEL_28;
            }
          }

LABEL_27:
          operator delete(__s1.__r_.__value_.__l.__data_);
          goto LABEL_28;
        }
      }

      else if (*(&__s1.__r_.__value_.__s + 23))
      {
        p_s1 = &__s1;
        size = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
        goto LABEL_9;
      }

      v15 = 0;
      ++v6;
      if ((*(&__s1.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_27;
      }

LABEL_28:
      if (++v4 == v5)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      if (v16)
      {
        goto LABEL_37;
      }
    }
  }

  std::operator+<char>();
  siri::intelligence::ValidationResults::AddError(a1, siri::intelligence::CODE_FILE_NOT_FOUND, __p, 0);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_254DB2604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 __p, int a21, __int16 a22, char a23, char a24)
{
  YAML::Node::~Node(&a10);
  protobuf::Intelligence::~Intelligence(&__p);
  if (a2 == 1)
  {
    v27 = __cxa_begin_catch(a1);
    std::operator+<char>();
    siri::intelligence::ValidationResults::AddError(v24, siri::intelligence::CODE_YAML_PARSE, &__p, v27[5] + 1);
    if (a24 < 0)
    {
      operator delete(__p);
    }

    __cxa_end_catch();
    JUMPOUT(0x254DB25E4);
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::ValidateIntelligence(siri::intelligence *this, const YAML::Node *a2, siri::intelligence::ValidationResults *a3)
{
  v424 = *MEMORY[0x277D85DE8];
  if ((atomic_load_explicit(&_MergedGlobals_23, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_23))
  {
    std::string::basic_string[abi:ne200100]<0>(v402, "formatVersion");
    std::string::basic_string[abi:ne200100]<0>(&v402[24], "meta");
    std::string::basic_string[abi:ne200100]<0>(&v404, "excludeIfBuildVariableSet");
    std::string::basic_string[abi:ne200100]<0>(&v406.__r_.__value_.__s.__data_[8], "excludeIfFeatureDisabled");
    std::string::basic_string[abi:ne200100]<0>(v407, "start");
    std::string::basic_string[abi:ne200100]<0>(&v409, "dialogResponses");
    std::string::basic_string[abi:ne200100]<0>(v410, "behaviorResponses");
    std::string::basic_string[abi:ne200100]<0>(v413, "referenceResponses");
    std::string::basic_string[abi:ne200100]<0>(v414, "responseGroups");
    std::string::basic_string[abi:ne200100]<0>(v415, "inputGroups");
    std::string::basic_string[abi:ne200100]<0>(v416, "activities");
    std::string::basic_string[abi:ne200100]<0>(v417, "utterances");
    std::string::basic_string[abi:ne200100]<0>(v418, "characters");
    std::string::basic_string[abi:ne200100]<0>(v419, "events");
    std::string::basic_string[abi:ne200100]<0>(v420, "conditions");
    std::string::basic_string[abi:ne200100]<0>(v421, "variables");
    std::string::basic_string[abi:ne200100]<0>(v422, "useTimerCounts");
    std::string::basic_string[abi:ne200100]<0>(v423, "intents");
    std::set<std::string>::set[abi:ne200100](&qword_280AF4AE0, v402, 18);
    v346 = 432;
    do
    {
      if (v402[v346 - 1] < 0)
      {
        operator delete(*(&__p.__r_.__value_.__l.__data_ + v346));
      }

      v346 -= 24;
    }

    while (v346);
    __cxa_atexit(std::set<std::string>::~set[abi:ne200100], &qword_280AF4AE0, &dword_254C81000);
    __cxa_guard_release(&_MergedGlobals_23);
  }

  if ((atomic_load_explicit(&qword_280AF4998, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4998))
  {
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[8],char const(&)[14],0>(v402, "version", "formatVersion");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[15],char const(&)[15],0>(&v404);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[12],0>(v407, "rulesets", "inputGroups");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[9],char const(&)[10],0>(v410);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[10],0>(v414, "flags");
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[7],char const(&)[10],0>(v416);
    std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[6],char const(&)[10],0>(v418, "lists");
    std::map<std::string,std::string>::map[abi:ne200100](&qword_280AF4AF8, v402, 7);
    for (i = 288; i != -48; i -= 48)
    {
      siri::intelligence::TestParseError::~TestParseError(&v402[i]);
    }

    __cxa_atexit(std::map<std::string,std::string>::~map[abi:ne200100], &qword_280AF4AF8, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4998);
  }

  if ((*this & 1) != 0 && (v3 = *(this + 6)) != 0)
  {
    YAML::detail::node_data::begin(**v3, v402);
    v5 = *(this + 4);
    v4 = *(this + 5);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      *v392 = *v402;
      *&v392[16] = *&v402[16];
      *&v392[32] = v5;
      v393 = v4;
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      *v392 = *v402;
      *&v392[16] = *&v402[16];
      *&v392[32] = v5;
      v393 = 0;
    }
  }

  else
  {
    *v392 = 0;
    memset(&v392[8], 0, 32);
    v393 = 0;
  }

  if (*this == 1 && (v6 = *(this + 6)) != 0)
  {
    YAML::detail::node_data::end(**v6, v402);
    v7 = *(this + 5);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v402;
      v9 = *&v402[8];
      v386 = v7;
      v388 = *&v402[16];
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v8 = *v402;
      v9 = *&v402[8];
      v386 = 0;
      v388 = *&v402[16];
    }
  }

  else
  {
    v386 = 0;
    v388 = 0;
    v8 = 0;
    v9 = 0;
  }

  while (1)
  {
    if (*v392 == v8)
    {
      v10 = v9;
      v11 = &v392[8];
      if (v8 != 1)
      {
        if (v8 != 2)
        {
          break;
        }

        v10 = v388;
        v11 = &v392[16];
      }

      if (*v11 == v10)
      {
        break;
      }
    }

    YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v392, v402);
    if ((v405 & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v399, v406.__r_.__value_.__l.__data_, v406.__r_.__value_.__l.__size_);
      }

      else
      {
        *v399 = v406;
      }

      YAML::InvalidNode::InvalidNode(exception, v399);
    }

    *v399 = &v405;
    YAML::as_if<std::string,void>::operator()(v399, &__p);
    v12 = std::__tree<std::string>::find<std::string>(&qword_280AF4AE0, &__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v12 == &unk_280AF4AE8)
    {
      if ((v405 & 1) == 0)
      {
        v338 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v399, v406.__r_.__value_.__l.__data_, v406.__r_.__value_.__l.__size_);
        }

        else
        {
          *v399 = v406;
        }

        YAML::InvalidNode::InvalidNode(v338, v399);
      }

      *v399 = &v405;
      YAML::as_if<std::string,void>::operator()(v399, &__p);
      v13 = std::__tree<std::string>::find<std::string>(&qword_280AF4AF8, &__p.__r_.__value_.__l.__data_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v13 == &unk_280AF4B00)
      {
        if ((v405 & 1) == 0)
        {
          v340 = __cxa_allocate_exception(0x38uLL);
          if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v399, v406.__r_.__value_.__l.__data_, v406.__r_.__value_.__l.__size_);
          }

          else
          {
            *v399 = v406;
          }

          YAML::InvalidNode::InvalidNode(v340, v399);
        }

        *v399 = &v405;
        YAML::as_if<std::string,void>::operator()(v399, &v398);
        v14 = std::string::insert(&v398, 0, "Unsupported field for Intelligence found in flow file: ");
        __p = *v14;
        v14->__r_.__value_.__l.__size_ = 0;
        v14->__r_.__value_.__r.__words[2] = 0;
        v14->__r_.__value_.__r.__words[0] = 0;
        if ((v408 & 1) == 0)
        {
          v342 = __cxa_allocate_exception(0x38uLL);
          if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v399, v409.__r_.__value_.__l.__data_, v409.__r_.__value_.__l.__size_);
          }

          else
          {
            *v399 = v409;
          }

          YAML::InvalidNode::InvalidNode(v342, v399);
        }

        if (v412)
        {
          v15 = *(**v412 + 8);
        }

        else
        {
          v15 = -1;
        }

        siri::intelligence::ValidationResults::AddError(a2, siri::intelligence::CODE_YAML_PARSE, &__p, v15);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v398.__r_.__value_.__r.__words[2]) < 0)
        {
          v25 = v398.__r_.__value_.__r.__words[0];
LABEL_65:
          operator delete(v25);
        }
      }

      else
      {
        if (*(v13 + 79) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(v13 + 56), *(v13 + 64));
        }

        else
        {
          __p = *(v13 + 56);
        }

        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          std::operator+<char>();
          v17 = std::string::append(v399, " instead");
          v18 = *&v17->__r_.__value_.__l.__data_;
          v398.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
          *&v398.__r_.__value_.__l.__data_ = v18;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          if ((v399[23] & 0x80000000) != 0)
          {
            operator delete(*v399);
          }
        }

        else
        {
          std::string::basic_string[abi:ne200100]<0>(&v398, "");
        }

        if ((v405 & 1) == 0)
        {
          v343 = __cxa_allocate_exception(0x38uLL);
          if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v399, v406.__r_.__value_.__l.__data_, v406.__r_.__value_.__l.__size_);
          }

          else
          {
            *v399 = v406;
          }

          YAML::InvalidNode::InvalidNode(v343, v399);
        }

        *v399 = &v405;
        YAML::as_if<std::string,void>::operator()(v399, &v395);
        v19 = std::string::insert(&v395, 0, "Deprecated field for Intelligence found in flow file: ");
        v20 = *&v19->__r_.__value_.__l.__data_;
        v396.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&v396.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        if ((v398.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v398;
        }

        else
        {
          v21 = v398.__r_.__value_.__r.__words[0];
        }

        if ((v398.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v22 = HIBYTE(v398.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v22 = v398.__r_.__value_.__l.__size_;
        }

        v23 = std::string::append(&v396, v21, v22);
        v397 = *v23;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        if ((v408 & 1) == 0)
        {
          v341 = __cxa_allocate_exception(0x38uLL);
          if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v399, v409.__r_.__value_.__l.__data_, v409.__r_.__value_.__l.__size_);
          }

          else
          {
            *v399 = v409;
          }

          YAML::InvalidNode::InvalidNode(v341, v399);
        }

        if (v412)
        {
          v24 = *(**v412 + 8);
        }

        else
        {
          v24 = -1;
        }

        siri::intelligence::ValidationResults::AddWarning(a2, siri::intelligence::CODE_DEPRECATED, &v397, v24);
        if (SHIBYTE(v397.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v397.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v396.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v396.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v395.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v395.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v398.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v398.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          v25 = __p.__r_.__value_.__r.__words[0];
          goto LABEL_65;
        }
      }
    }

    if (v411)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v411);
    }

    if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v409.__r_.__value_.__l.__data_);
    }

    if (v407[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
    }

    if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v406.__r_.__value_.__l.__data_);
    }

    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
    }

    YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v392);
  }

  if (v386)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v386);
  }

  if (v393)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v393);
  }

  YAML::Node::operator[]<char [14]>(this, "formatVersion", v402);
  v26 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v26)
    {
      goto LABEL_94;
    }
  }

  else
  {
    if (v26)
    {
      goto LABEL_117;
    }

LABEL_94:
    YAML::Node::operator[]<char [14]>(this, "formatVersion", v402);
    if ((v402[0] & 1) == 0)
    {
      v348 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v348, v392);
    }

    v28 = v404 && (v27 = **v404, *v27 == 1) && *(v27 + 16) == 2;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v28)
      {
        goto LABEL_105;
      }
    }

    else
    {
      if (v28)
      {
        goto LABEL_117;
      }

LABEL_105:
      std::string::basic_string[abi:ne200100]<0>(v399, "Invalid string value found for 'formatVersion' on Intelligence");
      YAML::Node::operator[]<char [14]>(this, "formatVersion", v402);
      if ((v402[0] & 1) == 0)
      {
        v374 = __cxa_allocate_exception(0x38uLL);
        if ((v402[31] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
        }

        else
        {
          *v392 = *&v402[8];
          *&v392[16] = *&v402[24];
        }

        YAML::InvalidNode::InvalidNode(v374, v392);
      }

      if (v404)
      {
        v29 = *(**v404 + 8) + 1;
      }

      else
      {
        v29 = 0;
      }

      siri::intelligence::ValidationResults::AddError(a2, siri::intelligence::CODE_YAML_PARSE, v399, v29);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        operator delete(*&v402[8]);
      }

      if ((v399[23] & 0x80000000) != 0)
      {
        operator delete(*v399);
      }
    }
  }

LABEL_117:
  YAML::Node::operator[]<char [5]>(this, "meta", v402);
  v30 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v30)
    {
      goto LABEL_128;
    }
  }

  else
  {
    if (v30)
    {
      goto LABEL_179;
    }

LABEL_128:
    YAML::Node::operator[]<char [5]>(this, "meta", v402);
    if ((v402[0] & 1) == 0)
    {
      v349 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v349, v392);
    }

    v32 = v404 && (v31 = **v404, *v31 == 1) && *(v31 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v32)
      {
        goto LABEL_142;
      }

LABEL_137:
      YAML::Node::operator[]<char [5]>(this, "meta", v392);
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v34 = *&v392[32];
        v33 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v34;
          v400 = v33;
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v37 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v38 = *v402;
          v39 = *&v402[8];
          v40 = *&v402[16];
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        else
        {
          v38 = *v402;
          v39 = *&v402[8];
          v40 = *&v402[16];
        }
      }

      else
      {
        v39 = 0;
        v40 = 0;
        v37 = 0;
        v38 = 0;
      }

      while (1)
      {
        if (*v399 == v38)
        {
          v41 = v39;
          v42 = &v399[8];
          if (v38 != 1)
          {
            if (v38 != 2)
            {
              break;
            }

            v41 = v40;
            v42 = &v399[16];
          }

          if (*v42 == v41)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_Meta(v402, a2, v43);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v36 = *&v392[8];
LABEL_178:
        operator delete(v36);
      }
    }

    else
    {
      if (v32)
      {
        goto LABEL_137;
      }

LABEL_142:
      YAML::Node::operator[]<char [5]>(this, "meta", v402);
      siri::intelligence::ValidateIntelligence_Meta(v402, a2, v35);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v36 = *&v402[8];
        goto LABEL_178;
      }
    }
  }

LABEL_179:
  YAML::Node::operator[]<char [26]>(v402, this);
  v44 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v44)
    {
      goto LABEL_190;
    }
  }

  else
  {
    if (v44)
    {
      goto LABEL_211;
    }

LABEL_190:
    YAML::Node::operator[]<char [26]>(v402, this);
    if ((v402[0] & 1) == 0)
    {
      v350 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v350, v392);
    }

    v46 = v404 && (v45 = **v404, *v45 == 1) && *(v45 + 16) == 4;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (v46)
      {
        goto LABEL_201;
      }
    }

    else
    {
      if (!v46)
      {
        goto LABEL_211;
      }

LABEL_201:
      std::string::basic_string[abi:ne200100]<0>(v399, "Found a map instead of an array value for 'excludeIfBuildVariableSet' on Intelligence");
      YAML::Node::operator[]<char [26]>(v402, this);
      if ((v402[0] & 1) == 0)
      {
        v375 = __cxa_allocate_exception(0x38uLL);
        if ((v402[31] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
        }

        else
        {
          *v392 = *&v402[8];
          *&v392[16] = *&v402[24];
        }

        YAML::InvalidNode::InvalidNode(v375, v392);
      }

      if (v404)
      {
        v47 = *(**v404 + 8) + 1;
      }

      else
      {
        v47 = 0;
      }

      siri::intelligence::ValidationResults::AddError(a2, siri::intelligence::CODE_YAML_PARSE, v399, v47);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        operator delete(*&v402[8]);
      }

      if ((v399[23] & 0x80000000) != 0)
      {
        operator delete(*v399);
      }
    }
  }

LABEL_211:
  YAML::Node::operator[]<char [25]>(v402, this);
  v48 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v48)
    {
      goto LABEL_222;
    }
  }

  else
  {
    if (v48)
    {
      goto LABEL_243;
    }

LABEL_222:
    YAML::Node::operator[]<char [25]>(v402, this);
    if ((v402[0] & 1) == 0)
    {
      v351 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v351, v392);
    }

    v50 = v404 && (v49 = **v404, *v49 == 1) && *(v49 + 16) == 4;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (v50)
      {
        goto LABEL_233;
      }
    }

    else
    {
      if (!v50)
      {
        goto LABEL_243;
      }

LABEL_233:
      std::string::basic_string[abi:ne200100]<0>(v399, "Found a map instead of an array value for 'excludeIfFeatureDisabled' on Intelligence");
      YAML::Node::operator[]<char [25]>(v402, this);
      if ((v402[0] & 1) == 0)
      {
        v376 = __cxa_allocate_exception(0x38uLL);
        if ((v402[31] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
        }

        else
        {
          *v392 = *&v402[8];
          *&v392[16] = *&v402[24];
        }

        YAML::InvalidNode::InvalidNode(v376, v392);
      }

      if (v404)
      {
        v51 = *(**v404 + 8) + 1;
      }

      else
      {
        v51 = 0;
      }

      siri::intelligence::ValidationResults::AddError(a2, siri::intelligence::CODE_YAML_PARSE, v399, v51);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        operator delete(*&v402[8]);
      }

      if ((v399[23] & 0x80000000) != 0)
      {
        operator delete(*v399);
      }
    }
  }

LABEL_243:
  YAML::Node::operator[]<char [6]>(this, "start", v402);
  v52 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v52)
    {
      goto LABEL_254;
    }

    goto LABEL_391;
  }

  if (v52)
  {
    goto LABEL_391;
  }

LABEL_254:
  YAML::Node::operator[]<char [6]>(this, "start", v402);
  if ((v402[0] & 1) == 0)
  {
    v352 = __cxa_allocate_exception(0x38uLL);
    if ((v402[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
    }

    else
    {
      *v392 = *&v402[8];
      *&v392[16] = *&v402[24];
    }

    YAML::InvalidNode::InvalidNode(v352, v392);
  }

  v54 = v404 && (v53 = **v404, *v53 == 1) && *(v53 + 16) == 3;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v54)
    {
      goto LABEL_275;
    }

LABEL_265:
    std::string::basic_string[abi:ne200100]<0>(v399, "Invalid array value found for 'start' on Intelligence");
    YAML::Node::operator[]<char [6]>(this, "start", v402);
    if ((v402[0] & 1) == 0)
    {
      v377 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v377, v392);
    }

    if (v404)
    {
      v55 = *(**v404 + 8) + 1;
    }

    else
    {
      v55 = 0;
    }

    siri::intelligence::ValidationResults::AddError(a2, siri::intelligence::CODE_YAML_PARSE, v399, v55);
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
    }

    if ((v399[23] & 0x80000000) != 0)
    {
      operator delete(*v399);
    }

    goto LABEL_275;
  }

  if (v54)
  {
    goto LABEL_265;
  }

LABEL_275:
  YAML::Node::operator[]<char [6]>(this, "start", v392);
  if ((atomic_load_explicit(&qword_280AF49A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF49A8))
  {
    std::string::basic_string[abi:ne200100]<0>(v402, "responseIds");
    std::string::basic_string[abi:ne200100]<0>(&v402[24], "activityId");
    std::set<std::string>::set[abi:ne200100](&qword_280AF4B28, v402, 2);
    for (j = 0; j != -6; j -= 3)
    {
      if (SHIBYTE((&v403)[j]) < 0)
      {
        operator delete(*&v402[j * 8 + 24]);
      }
    }

    __cxa_atexit(std::set<std::string>::~set[abi:ne200100], &qword_280AF4B28, &dword_254C81000);
    __cxa_guard_release(&qword_280AF49A8);
  }

  if ((v392[0] & 1) != 0 && v394)
  {
    YAML::detail::node_data::begin(**v394, v402);
    v57 = *&v392[32];
    v56 = v393;
    if (v393)
    {
      atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
      *v399 = *v402;
      *&v399[16] = *&v402[16];
      *&v399[32] = v57;
      v400 = v56;
      atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v56);
    }

    else
    {
      *v399 = *v402;
      *&v399[16] = *&v402[16];
      *&v399[32] = *&v392[32];
      v400 = 0;
    }
  }

  else
  {
    *v399 = 0;
    memset(&v399[8], 0, 32);
    v400 = 0;
  }

  if (v392[0] == 1 && v394)
  {
    YAML::detail::node_data::end(**v394, v402);
    v58 = v393;
    if (v393)
    {
      atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
      v59 = *v402;
      v60 = *&v402[8];
      v387 = v58;
      v389 = *&v402[16];
      atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v58);
    }

    else
    {
      v59 = *v402;
      v60 = *&v402[8];
      v387 = 0;
      v389 = *&v402[16];
    }
  }

  else
  {
    v387 = 0;
    v389 = 0;
    v59 = 0;
    v60 = 0;
  }

  while (1)
  {
    if (*v399 == v59)
    {
      v61 = v60;
      v62 = &v399[8];
      if (v59 != 1)
      {
        if (v59 != 2)
        {
          break;
        }

        v61 = v389;
        v62 = &v399[16];
      }

      if (*v62 == v61)
      {
        break;
      }
    }

    YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
    if ((v405 & 1) == 0)
    {
      v339 = __cxa_allocate_exception(0x38uLL);
      if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, v406.__r_.__value_.__l.__data_, v406.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v406;
      }

      YAML::InvalidNode::InvalidNode(v339, &__p);
    }

    __p.__r_.__value_.__r.__words[0] = &v405;
    YAML::as_if<std::string,void>::operator()(&__p, &v398);
    v63 = std::__tree<std::string>::find<std::string>(&qword_280AF4B28, &v398.__r_.__value_.__l.__data_);
    if (SHIBYTE(v398.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v398.__r_.__value_.__l.__data_);
    }

    if (v63 == &unk_280AF4B30)
    {
      if ((v405 & 1) == 0)
      {
        v345 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v406.__r_.__value_.__l.__data_, v406.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v406;
        }

        YAML::InvalidNode::InvalidNode(v345, &__p);
      }

      __p.__r_.__value_.__r.__words[0] = &v405;
      YAML::as_if<std::string,void>::operator()(&__p, &v397);
      v64 = std::string::insert(&v397, 0, "Unsupported field for Start found in flow file: ");
      v398 = *v64;
      v64->__r_.__value_.__l.__size_ = 0;
      v64->__r_.__value_.__r.__words[2] = 0;
      v64->__r_.__value_.__r.__words[0] = 0;
      if ((v408 & 1) == 0)
      {
        v344 = __cxa_allocate_exception(0x38uLL);
        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, v409.__r_.__value_.__l.__data_, v409.__r_.__value_.__l.__size_);
        }

        else
        {
          __p = v409;
        }

        YAML::InvalidNode::InvalidNode(v344, &__p);
      }

      if (v412)
      {
        v65 = *(**v412 + 8);
      }

      else
      {
        v65 = -1;
      }

      siri::intelligence::ValidationResults::AddError(a2, siri::intelligence::CODE_YAML_PARSE, &v398, v65);
      if (SHIBYTE(v398.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v398.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v397.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v397.__r_.__value_.__l.__data_);
      }
    }

    if (v411)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v411);
    }

    if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v409.__r_.__value_.__l.__data_);
    }

    if (v407[0])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
    }

    if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v406.__r_.__value_.__l.__data_);
    }

    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
    }

    YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
  }

  if (v387)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v387);
  }

  if (v400)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v400);
  }

  YAML::Node::operator[]<char [12]>(v392, "responseIds", v402);
  v66 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v66)
    {
      goto LABEL_332;
    }
  }

  else
  {
    if (v66)
    {
      goto LABEL_355;
    }

LABEL_332:
    YAML::Node::operator[]<char [12]>(v392, "responseIds", v402);
    if ((v402[0] & 1) == 0)
    {
      v378 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v399, *&v402[8], *&v402[16]);
      }

      else
      {
        *v399 = *&v402[8];
        *&v399[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v378, v399);
    }

    v68 = v404 && (v67 = **v404, *v67 == 1) && *(v67 + 16) == 4;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (v68)
      {
        goto LABEL_343;
      }
    }

    else
    {
      if (!v68)
      {
        goto LABEL_355;
      }

LABEL_343:
      std::string::basic_string[abi:ne200100]<0>(&__p, "Found a map instead of an array value for 'responseIds' on Start");
      YAML::Node::operator[]<char [12]>(v392, "responseIds", v402);
      if ((v402[0] & 1) == 0)
      {
        v382 = __cxa_allocate_exception(0x38uLL);
        if ((v402[31] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v399, *&v402[8], *&v402[16]);
        }

        else
        {
          *v399 = *&v402[8];
          *&v399[16] = *&v402[24];
        }

        YAML::InvalidNode::InvalidNode(v382, v399);
      }

      if (v404)
      {
        v69 = *(**v404 + 8) + 1;
      }

      else
      {
        v69 = 0;
      }

      siri::intelligence::ValidationResults::AddError(a2, siri::intelligence::CODE_YAML_PARSE, &__p, v69);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        operator delete(*&v402[8]);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_355:
  YAML::Node::operator[]<char [11]>(v392, "activityId", v402);
  v70 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (v70)
    {
      goto LABEL_387;
    }
  }

  else if (v70)
  {
    goto LABEL_387;
  }

  YAML::Node::operator[]<char [11]>(v392, "activityId", v402);
  if ((v402[0] & 1) == 0)
  {
    v379 = __cxa_allocate_exception(0x38uLL);
    if ((v402[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v399, *&v402[8], *&v402[16]);
    }

    else
    {
      *v399 = *&v402[8];
      *&v399[16] = *&v402[24];
    }

    YAML::InvalidNode::InvalidNode(v379, v399);
  }

  v72 = v404 && (v71 = **v404, *v71 == 1) && *(v71 + 16) == 2;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (v72)
    {
      goto LABEL_387;
    }
  }

  else if (v72)
  {
    goto LABEL_387;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "Invalid string value found for 'activityId' on Start");
  YAML::Node::operator[]<char [11]>(v392, "activityId", v402);
  if ((v402[0] & 1) == 0)
  {
    v383 = __cxa_allocate_exception(0x38uLL);
    if ((v402[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(v399, *&v402[8], *&v402[16]);
    }

    else
    {
      *v399 = *&v402[8];
      *&v399[16] = *&v402[24];
    }

    YAML::InvalidNode::InvalidNode(v383, v399);
  }

  if (v404)
  {
    v73 = *(**v404 + 8) + 1;
  }

  else
  {
    v73 = 0;
  }

  siri::intelligence::ValidationResults::AddError(a2, siri::intelligence::CODE_YAML_PARSE, &__p, v73);
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_387:
  if (v393)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v393);
  }

  if ((v392[31] & 0x80000000) != 0)
  {
    operator delete(*&v392[8]);
  }

LABEL_391:
  YAML::Node::operator[]<char [16]>(this, "dialogResponses", v402);
  v74 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v74)
    {
      goto LABEL_402;
    }
  }

  else
  {
    if (v74)
    {
      goto LABEL_453;
    }

LABEL_402:
    YAML::Node::operator[]<char [16]>(this, "dialogResponses", v402);
    if ((v402[0] & 1) == 0)
    {
      v354 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v354, v392);
    }

    v76 = v404 && (v75 = **v404, *v75 == 1) && *(v75 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v76)
      {
        goto LABEL_416;
      }

LABEL_411:
      YAML::Node::operator[]<char [16]>(this, "dialogResponses", v392);
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v78 = *&v392[32];
        v77 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v78;
          v400 = v77;
          atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v77);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v81 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v82 = *v402;
          v83 = *&v402[8];
          v84 = *&v402[16];
          atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v81);
        }

        else
        {
          v82 = *v402;
          v83 = *&v402[8];
          v84 = *&v402[16];
        }
      }

      else
      {
        v83 = 0;
        v84 = 0;
        v81 = 0;
        v82 = 0;
      }

      while (1)
      {
        if (*v399 == v82)
        {
          v85 = v83;
          v86 = &v399[8];
          if (v82 != 1)
          {
            if (v82 != 2)
            {
              break;
            }

            v85 = v84;
            v86 = &v399[16];
          }

          if (*v86 == v85)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_DialogResponse(v402, a2, v87);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v81)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v81);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v80 = *&v392[8];
LABEL_452:
        operator delete(v80);
      }
    }

    else
    {
      if (v76)
      {
        goto LABEL_411;
      }

LABEL_416:
      YAML::Node::operator[]<char [16]>(this, "dialogResponses", v402);
      siri::intelligence::ValidateIntelligence_DialogResponse(v402, a2, v79);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v80 = *&v402[8];
        goto LABEL_452;
      }
    }
  }

LABEL_453:
  YAML::Node::operator[]<char [18]>(v402, this, "behaviorResponses");
  v88 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v88)
    {
      goto LABEL_464;
    }
  }

  else
  {
    if (v88)
    {
      goto LABEL_515;
    }

LABEL_464:
    YAML::Node::operator[]<char [18]>(v402, this, "behaviorResponses");
    if ((v402[0] & 1) == 0)
    {
      v355 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v355, v392);
    }

    v90 = v404 && (v89 = **v404, *v89 == 1) && *(v89 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v90)
      {
        goto LABEL_478;
      }

LABEL_473:
      YAML::Node::operator[]<char [18]>(v392, this, "behaviorResponses");
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v92 = *&v392[32];
        v91 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v92;
          v400 = v91;
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v91);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v95 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v96 = *v402;
          v97 = *&v402[8];
          v98 = *&v402[16];
          atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v95);
        }

        else
        {
          v96 = *v402;
          v97 = *&v402[8];
          v98 = *&v402[16];
        }
      }

      else
      {
        v97 = 0;
        v98 = 0;
        v95 = 0;
        v96 = 0;
      }

      while (1)
      {
        if (*v399 == v96)
        {
          v99 = v97;
          v100 = &v399[8];
          if (v96 != 1)
          {
            if (v96 != 2)
            {
              break;
            }

            v99 = v98;
            v100 = &v399[16];
          }

          if (*v100 == v99)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_BehaviorResponse(v402, a2, v101);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v95)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v95);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v94 = *&v392[8];
LABEL_514:
        operator delete(v94);
      }
    }

    else
    {
      if (v90)
      {
        goto LABEL_473;
      }

LABEL_478:
      YAML::Node::operator[]<char [18]>(v402, this, "behaviorResponses");
      siri::intelligence::ValidateIntelligence_BehaviorResponse(v402, a2, v93);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v94 = *&v402[8];
        goto LABEL_514;
      }
    }
  }

LABEL_515:
  YAML::Node::operator[]<char [19]>(v402, this);
  v102 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v102)
    {
      goto LABEL_526;
    }
  }

  else
  {
    if (v102)
    {
      goto LABEL_577;
    }

LABEL_526:
    YAML::Node::operator[]<char [19]>(v402, this);
    if ((v402[0] & 1) == 0)
    {
      v356 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v356, v392);
    }

    v104 = v404 && (v103 = **v404, *v103 == 1) && *(v103 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v104)
      {
        goto LABEL_540;
      }

LABEL_535:
      YAML::Node::operator[]<char [19]>(v392, this);
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v106 = *&v392[32];
        v105 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v106;
          v400 = v105;
          atomic_fetch_add_explicit(&v105->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v105);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v109 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v110 = *v402;
          v111 = *&v402[8];
          v112 = *&v402[16];
          atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v109);
        }

        else
        {
          v110 = *v402;
          v111 = *&v402[8];
          v112 = *&v402[16];
        }
      }

      else
      {
        v111 = 0;
        v112 = 0;
        v109 = 0;
        v110 = 0;
      }

      while (1)
      {
        if (*v399 == v110)
        {
          v113 = v111;
          v114 = &v399[8];
          if (v110 != 1)
          {
            if (v110 != 2)
            {
              break;
            }

            v113 = v112;
            v114 = &v399[16];
          }

          if (*v114 == v113)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_ReferenceResponse(v402, a2, v115);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v109)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v109);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v108 = *&v392[8];
LABEL_576:
        operator delete(v108);
      }
    }

    else
    {
      if (v104)
      {
        goto LABEL_535;
      }

LABEL_540:
      YAML::Node::operator[]<char [19]>(v402, this);
      siri::intelligence::ValidateIntelligence_ReferenceResponse(v402, a2, v107);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v108 = *&v402[8];
        goto LABEL_576;
      }
    }
  }

LABEL_577:
  YAML::Node::operator[]<char [15]>(this, "responseGroups", v402);
  v116 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v116)
    {
      goto LABEL_588;
    }
  }

  else
  {
    if (v116)
    {
      goto LABEL_639;
    }

LABEL_588:
    YAML::Node::operator[]<char [15]>(this, "responseGroups", v402);
    if ((v402[0] & 1) == 0)
    {
      v357 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v357, v392);
    }

    v118 = v404 && (v117 = **v404, *v117 == 1) && *(v117 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v118)
      {
        goto LABEL_602;
      }

LABEL_597:
      YAML::Node::operator[]<char [15]>(this, "responseGroups", v392);
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v120 = *&v392[32];
        v119 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v120;
          v400 = v119;
          atomic_fetch_add_explicit(&v119->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v119);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v123 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v124 = *v402;
          v125 = *&v402[8];
          v126 = *&v402[16];
          atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v123);
        }

        else
        {
          v124 = *v402;
          v125 = *&v402[8];
          v126 = *&v402[16];
        }
      }

      else
      {
        v125 = 0;
        v126 = 0;
        v123 = 0;
        v124 = 0;
      }

      while (1)
      {
        if (*v399 == v124)
        {
          v127 = v125;
          v128 = &v399[8];
          if (v124 != 1)
          {
            if (v124 != 2)
            {
              break;
            }

            v127 = v126;
            v128 = &v399[16];
          }

          if (*v128 == v127)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_ResponseGroup(v402, a2, v129);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v123)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v123);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v122 = *&v392[8];
LABEL_638:
        operator delete(v122);
      }
    }

    else
    {
      if (v118)
      {
        goto LABEL_597;
      }

LABEL_602:
      YAML::Node::operator[]<char [15]>(this, "responseGroups", v402);
      siri::intelligence::ValidateIntelligence_ResponseGroup(v402, a2, v121);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v122 = *&v402[8];
        goto LABEL_638;
      }
    }
  }

LABEL_639:
  YAML::Node::operator[]<char [12]>(this, "inputGroups", v402);
  v130 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v130)
    {
      goto LABEL_650;
    }
  }

  else
  {
    if (v130)
    {
      goto LABEL_701;
    }

LABEL_650:
    YAML::Node::operator[]<char [12]>(this, "inputGroups", v402);
    if ((v402[0] & 1) == 0)
    {
      v358 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v358, v392);
    }

    v132 = v404 && (v131 = **v404, *v131 == 1) && *(v131 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v132)
      {
        goto LABEL_664;
      }

LABEL_659:
      YAML::Node::operator[]<char [12]>(this, "inputGroups", v392);
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v134 = *&v392[32];
        v133 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v134;
          v400 = v133;
          atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v133);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v137 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v138 = *v402;
          v139 = *&v402[8];
          v140 = *&v402[16];
          atomic_fetch_add_explicit(&v137->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v137);
        }

        else
        {
          v138 = *v402;
          v139 = *&v402[8];
          v140 = *&v402[16];
        }
      }

      else
      {
        v139 = 0;
        v140 = 0;
        v137 = 0;
        v138 = 0;
      }

      while (1)
      {
        if (*v399 == v138)
        {
          v141 = v139;
          v142 = &v399[8];
          if (v138 != 1)
          {
            if (v138 != 2)
            {
              break;
            }

            v141 = v140;
            v142 = &v399[16];
          }

          if (*v142 == v141)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_InputGroup(v402, a2, v143);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v137)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v137);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v136 = *&v392[8];
LABEL_700:
        operator delete(v136);
      }
    }

    else
    {
      if (v132)
      {
        goto LABEL_659;
      }

LABEL_664:
      YAML::Node::operator[]<char [12]>(this, "inputGroups", v402);
      siri::intelligence::ValidateIntelligence_InputGroup(v402, a2, v135);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v136 = *&v402[8];
        goto LABEL_700;
      }
    }
  }

LABEL_701:
  YAML::Node::operator[]<char [11]>(this, "activities", v402);
  v144 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v144)
    {
      goto LABEL_712;
    }
  }

  else
  {
    if (v144)
    {
      goto LABEL_763;
    }

LABEL_712:
    YAML::Node::operator[]<char [11]>(this, "activities", v402);
    if ((v402[0] & 1) == 0)
    {
      v359 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v359, v392);
    }

    v146 = v404 && (v145 = **v404, *v145 == 1) && *(v145 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v146)
      {
        goto LABEL_726;
      }

LABEL_721:
      YAML::Node::operator[]<char [11]>(this, "activities", v392);
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v148 = *&v392[32];
        v147 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v148;
          v400 = v147;
          atomic_fetch_add_explicit(&v147->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v147);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v151 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v152 = *v402;
          v153 = *&v402[8];
          v154 = *&v402[16];
          atomic_fetch_add_explicit(&v151->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v151);
        }

        else
        {
          v152 = *v402;
          v153 = *&v402[8];
          v154 = *&v402[16];
        }
      }

      else
      {
        v153 = 0;
        v154 = 0;
        v151 = 0;
        v152 = 0;
      }

      while (1)
      {
        if (*v399 == v152)
        {
          v155 = v153;
          v156 = &v399[8];
          if (v152 != 1)
          {
            if (v152 != 2)
            {
              break;
            }

            v155 = v154;
            v156 = &v399[16];
          }

          if (*v156 == v155)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_Activity(v402, a2, v157);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v151)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v151);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v150 = *&v392[8];
LABEL_762:
        operator delete(v150);
      }
    }

    else
    {
      if (v146)
      {
        goto LABEL_721;
      }

LABEL_726:
      YAML::Node::operator[]<char [11]>(this, "activities", v402);
      siri::intelligence::ValidateIntelligence_Activity(v402, a2, v149);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v150 = *&v402[8];
        goto LABEL_762;
      }
    }
  }

LABEL_763:
  YAML::Node::operator[]<char [11]>(this, "utterances", v402);
  v158 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v158)
    {
      goto LABEL_774;
    }
  }

  else
  {
    if (v158)
    {
      goto LABEL_825;
    }

LABEL_774:
    YAML::Node::operator[]<char [11]>(this, "utterances", v402);
    if ((v402[0] & 1) == 0)
    {
      v360 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v360, v392);
    }

    v160 = v404 && (v159 = **v404, *v159 == 1) && *(v159 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v160)
      {
        goto LABEL_788;
      }

LABEL_783:
      YAML::Node::operator[]<char [11]>(this, "utterances", v392);
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v162 = *&v392[32];
        v161 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v162;
          v400 = v161;
          atomic_fetch_add_explicit(&v161->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v161);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v165 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v166 = *v402;
          v167 = *&v402[8];
          v168 = *&v402[16];
          atomic_fetch_add_explicit(&v165->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v165);
        }

        else
        {
          v166 = *v402;
          v167 = *&v402[8];
          v168 = *&v402[16];
        }
      }

      else
      {
        v167 = 0;
        v168 = 0;
        v165 = 0;
        v166 = 0;
      }

      while (1)
      {
        if (*v399 == v166)
        {
          v169 = v167;
          v170 = &v399[8];
          if (v166 != 1)
          {
            if (v166 != 2)
            {
              break;
            }

            v169 = v168;
            v170 = &v399[16];
          }

          if (*v170 == v169)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_Utterance(v402, a2, v171);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v165)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v165);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v164 = *&v392[8];
LABEL_824:
        operator delete(v164);
      }
    }

    else
    {
      if (v160)
      {
        goto LABEL_783;
      }

LABEL_788:
      YAML::Node::operator[]<char [11]>(this, "utterances", v402);
      siri::intelligence::ValidateIntelligence_Utterance(v402, a2, v163);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v164 = *&v402[8];
        goto LABEL_824;
      }
    }
  }

LABEL_825:
  YAML::Node::operator[]<char [11]>(this, "characters", v402);
  v172 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v172)
    {
      goto LABEL_836;
    }
  }

  else
  {
    if (v172)
    {
      goto LABEL_887;
    }

LABEL_836:
    YAML::Node::operator[]<char [11]>(this, "characters", v402);
    if ((v402[0] & 1) == 0)
    {
      v361 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v361, v392);
    }

    v174 = v404 && (v173 = **v404, *v173 == 1) && *(v173 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v174)
      {
        goto LABEL_850;
      }

LABEL_845:
      YAML::Node::operator[]<char [11]>(this, "characters", v392);
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v176 = *&v392[32];
        v175 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v176;
          v400 = v175;
          atomic_fetch_add_explicit(&v175->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v175);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v179 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v180 = *v402;
          v181 = *&v402[8];
          v182 = *&v402[16];
          atomic_fetch_add_explicit(&v179->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v179);
        }

        else
        {
          v180 = *v402;
          v181 = *&v402[8];
          v182 = *&v402[16];
        }
      }

      else
      {
        v181 = 0;
        v182 = 0;
        v179 = 0;
        v180 = 0;
      }

      while (1)
      {
        if (*v399 == v180)
        {
          v183 = v181;
          v184 = &v399[8];
          if (v180 != 1)
          {
            if (v180 != 2)
            {
              break;
            }

            v183 = v182;
            v184 = &v399[16];
          }

          if (*v184 == v183)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_Character(v402, a2, v185);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v179)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v179);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v178 = *&v392[8];
LABEL_886:
        operator delete(v178);
      }
    }

    else
    {
      if (v174)
      {
        goto LABEL_845;
      }

LABEL_850:
      YAML::Node::operator[]<char [11]>(this, "characters", v402);
      siri::intelligence::ValidateIntelligence_Character(v402, a2, v177);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v178 = *&v402[8];
        goto LABEL_886;
      }
    }
  }

LABEL_887:
  YAML::Node::operator[]<char [7]>(this, "events", v402);
  v186 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v186)
    {
      goto LABEL_898;
    }
  }

  else
  {
    if (v186)
    {
      goto LABEL_949;
    }

LABEL_898:
    YAML::Node::operator[]<char [7]>(this, "events", v402);
    if ((v402[0] & 1) == 0)
    {
      v362 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v362, v392);
    }

    v188 = v404 && (v187 = **v404, *v187 == 1) && *(v187 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v188)
      {
        goto LABEL_912;
      }

LABEL_907:
      YAML::Node::operator[]<char [7]>(this, "events", v392);
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v190 = *&v392[32];
        v189 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v190;
          v400 = v189;
          atomic_fetch_add_explicit(&v189->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v189);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v193 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v194 = *v402;
          v195 = *&v402[8];
          v196 = *&v402[16];
          atomic_fetch_add_explicit(&v193->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v193);
        }

        else
        {
          v194 = *v402;
          v195 = *&v402[8];
          v196 = *&v402[16];
        }
      }

      else
      {
        v195 = 0;
        v196 = 0;
        v193 = 0;
        v194 = 0;
      }

      while (1)
      {
        if (*v399 == v194)
        {
          v197 = v195;
          v198 = &v399[8];
          if (v194 != 1)
          {
            if (v194 != 2)
            {
              break;
            }

            v197 = v196;
            v198 = &v399[16];
          }

          if (*v198 == v197)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_Event(v402, a2, v199);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v193)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v193);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v192 = *&v392[8];
LABEL_948:
        operator delete(v192);
      }
    }

    else
    {
      if (v188)
      {
        goto LABEL_907;
      }

LABEL_912:
      YAML::Node::operator[]<char [7]>(this, "events", v402);
      siri::intelligence::ValidateIntelligence_Event(v402, a2, v191);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v192 = *&v402[8];
        goto LABEL_948;
      }
    }
  }

LABEL_949:
  YAML::Node::operator[]<char [11]>(this, "conditions", v402);
  v200 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v200)
    {
      goto LABEL_960;
    }
  }

  else
  {
    if (v200)
    {
      goto LABEL_1011;
    }

LABEL_960:
    YAML::Node::operator[]<char [11]>(this, "conditions", v402);
    if ((v402[0] & 1) == 0)
    {
      v363 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v363, v392);
    }

    v202 = v404 && (v201 = **v404, *v201 == 1) && *(v201 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v202)
      {
        goto LABEL_974;
      }

LABEL_969:
      YAML::Node::operator[]<char [11]>(this, "conditions", v392);
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v204 = *&v392[32];
        v203 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v204;
          v400 = v203;
          atomic_fetch_add_explicit(&v203->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v203);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v207 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v208 = *v402;
          v209 = *&v402[8];
          v210 = *&v402[16];
          atomic_fetch_add_explicit(&v207->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v207);
        }

        else
        {
          v208 = *v402;
          v209 = *&v402[8];
          v210 = *&v402[16];
        }
      }

      else
      {
        v209 = 0;
        v210 = 0;
        v207 = 0;
        v208 = 0;
      }

      while (1)
      {
        if (*v399 == v208)
        {
          v211 = v209;
          v212 = &v399[8];
          if (v208 != 1)
          {
            if (v208 != 2)
            {
              break;
            }

            v211 = v210;
            v212 = &v399[16];
          }

          if (*v212 == v211)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_Condition(v402, a2, v213);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v207)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v207);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v206 = *&v392[8];
LABEL_1010:
        operator delete(v206);
      }
    }

    else
    {
      if (v202)
      {
        goto LABEL_969;
      }

LABEL_974:
      YAML::Node::operator[]<char [11]>(this, "conditions", v402);
      siri::intelligence::ValidateIntelligence_Condition(v402, a2, v205);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v206 = *&v402[8];
        goto LABEL_1010;
      }
    }
  }

LABEL_1011:
  YAML::Node::operator[]<char [10]>(this, "variables", v402);
  v214 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v214)
    {
      goto LABEL_1022;
    }
  }

  else
  {
    if (v214)
    {
      goto LABEL_1073;
    }

LABEL_1022:
    YAML::Node::operator[]<char [10]>(this, "variables", v402);
    if ((v402[0] & 1) == 0)
    {
      v364 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v364, v392);
    }

    v216 = v404 && (v215 = **v404, *v215 == 1) && *(v215 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v216)
      {
        goto LABEL_1036;
      }

LABEL_1031:
      YAML::Node::operator[]<char [10]>(this, "variables", v392);
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v218 = *&v392[32];
        v217 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v218;
          v400 = v217;
          atomic_fetch_add_explicit(&v217->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v217);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v221 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v222 = *v402;
          v223 = *&v402[8];
          v224 = *&v402[16];
          atomic_fetch_add_explicit(&v221->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v221);
        }

        else
        {
          v222 = *v402;
          v223 = *&v402[8];
          v224 = *&v402[16];
        }
      }

      else
      {
        v223 = 0;
        v224 = 0;
        v221 = 0;
        v222 = 0;
      }

      while (1)
      {
        if (*v399 == v222)
        {
          v225 = v223;
          v226 = &v399[8];
          if (v222 != 1)
          {
            if (v222 != 2)
            {
              break;
            }

            v225 = v224;
            v226 = &v399[16];
          }

          if (*v226 == v225)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_Variable(v402, a2, v227);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v221)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v221);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v220 = *&v392[8];
LABEL_1072:
        operator delete(v220);
      }
    }

    else
    {
      if (v216)
      {
        goto LABEL_1031;
      }

LABEL_1036:
      YAML::Node::operator[]<char [10]>(this, "variables", v402);
      siri::intelligence::ValidateIntelligence_Variable(v402, a2, v219);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v220 = *&v402[8];
        goto LABEL_1072;
      }
    }
  }

LABEL_1073:
  YAML::Node::operator[]<char [15]>(this, "useTimerCounts", v402);
  v228 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v228)
    {
      goto LABEL_1084;
    }
  }

  else
  {
    if (v228)
    {
      goto LABEL_1112;
    }

LABEL_1084:
    YAML::Node::operator[]<char [15]>(this, "useTimerCounts", v402);
    if ((v402[0] & 1) == 0)
    {
      v365 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v365, v392);
    }

    if (v404 && (v229 = **v404, (*v229 & 1) != 0) && *(v229 + 16) == 2)
    {
      YAML::Node::operator[]<char [15]>(this, "useTimerCounts", v392);
      if ((v392[0] & 1) == 0)
      {
        v384 = __cxa_allocate_exception(0x38uLL);
        if ((v392[31] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v399, *&v392[8], *&v392[16]);
        }

        else
        {
          *v399 = *&v392[8];
          *&v399[16] = *&v392[24];
        }

        YAML::InvalidNode::InvalidNode(v384, v399);
      }

      *v399 = v392;
      YAML::as_if<std::string,void>::operator()(v399, &__p);
      IsBool = siri::intelligence::StringIsBool(&__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      v231 = !IsBool;
      if ((v392[31] & 0x80000000) != 0)
      {
        operator delete(*&v392[8]);
      }
    }

    else
    {
      v231 = 1;
    }

    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (v231)
      {
        goto LABEL_1102;
      }
    }

    else
    {
      if (!v231)
      {
        goto LABEL_1112;
      }

LABEL_1102:
      std::string::basic_string[abi:ne200100]<0>(v399, "Invalid BOOL value found for 'useTimerCounts' on Intelligence");
      YAML::Node::operator[]<char [15]>(this, "useTimerCounts", v402);
      if ((v402[0] & 1) == 0)
      {
        v380 = __cxa_allocate_exception(0x38uLL);
        if ((v402[31] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
        }

        else
        {
          *v392 = *&v402[8];
          *&v392[16] = *&v402[24];
        }

        YAML::InvalidNode::InvalidNode(v380, v392);
      }

      if (v404)
      {
        v232 = *(**v404 + 8) + 1;
      }

      else
      {
        v232 = 0;
      }

      siri::intelligence::ValidationResults::AddError(a2, siri::intelligence::CODE_YAML_PARSE, v399, v232);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        operator delete(*&v402[8]);
      }

      if ((v399[23] & 0x80000000) != 0)
      {
        operator delete(*v399);
      }
    }
  }

LABEL_1112:
  YAML::Node::operator[]<char [8]>(this, "version", v402);
  v233 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v233)
    {
      goto LABEL_1123;
    }
  }

  else
  {
    if (v233)
    {
      goto LABEL_1151;
    }

LABEL_1123:
    YAML::Node::operator[]<char [8]>(this, "version", v402);
    if ((v402[0] & 1) == 0)
    {
      v366 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v366, v392);
    }

    if (v404 && (v234 = **v404, (*v234 & 1) != 0) && *(v234 + 16) == 2)
    {
      YAML::Node::operator[]<char [8]>(this, "version", v392);
      if ((v392[0] & 1) == 0)
      {
        v385 = __cxa_allocate_exception(0x38uLL);
        if ((v392[31] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v399, *&v392[8], *&v392[16]);
        }

        else
        {
          *v399 = *&v392[8];
          *&v399[16] = *&v392[24];
        }

        YAML::InvalidNode::InvalidNode(v385, v399);
      }

      *v399 = v392;
      YAML::as_if<std::string,void>::operator()(v399, &__p);
      IsANumber = siri::intelligence::StringIsANumber(&__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      v236 = IsANumber ^ 1;
      if ((v392[31] & 0x80000000) != 0)
      {
        operator delete(*&v392[8]);
      }
    }

    else
    {
      v236 = 1;
    }

    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (v236)
      {
        goto LABEL_1141;
      }
    }

    else
    {
      if (!v236)
      {
        goto LABEL_1151;
      }

LABEL_1141:
      std::string::basic_string[abi:ne200100]<0>(v399, "Invalid double value found for 'version' on Intelligence");
      YAML::Node::operator[]<char [8]>(this, "version", v402);
      if ((v402[0] & 1) == 0)
      {
        v381 = __cxa_allocate_exception(0x38uLL);
        if ((v402[31] & 0x80000000) != 0)
        {
          std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
        }

        else
        {
          *v392 = *&v402[8];
          *&v392[16] = *&v402[24];
        }

        YAML::InvalidNode::InvalidNode(v381, v392);
      }

      if (v404)
      {
        v237 = *(**v404 + 8) + 1;
      }

      else
      {
        v237 = 0;
      }

      siri::intelligence::ValidationResults::AddError(a2, siri::intelligence::CODE_YAML_PARSE, v399, v237);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        operator delete(*&v402[8]);
      }

      if ((v399[23] & 0x80000000) != 0)
      {
        operator delete(*v399);
      }
    }
  }

LABEL_1151:
  YAML::Node::operator[]<char [15]>(this, "groupResponses", v402);
  v238 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v238)
    {
      goto LABEL_1162;
    }
  }

  else
  {
    if (v238)
    {
      goto LABEL_1213;
    }

LABEL_1162:
    YAML::Node::operator[]<char [15]>(this, "groupResponses", v402);
    if ((v402[0] & 1) == 0)
    {
      v367 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v367, v392);
    }

    v240 = v404 && (v239 = **v404, *v239 == 1) && *(v239 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v240)
      {
        goto LABEL_1176;
      }

LABEL_1171:
      YAML::Node::operator[]<char [15]>(this, "groupResponses", v392);
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v242 = *&v392[32];
        v241 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v242;
          v400 = v241;
          atomic_fetch_add_explicit(&v241->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v241);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v245 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v246 = *v402;
          v247 = *&v402[8];
          v248 = *&v402[16];
          atomic_fetch_add_explicit(&v245->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v245);
        }

        else
        {
          v246 = *v402;
          v247 = *&v402[8];
          v248 = *&v402[16];
        }
      }

      else
      {
        v247 = 0;
        v248 = 0;
        v245 = 0;
        v246 = 0;
      }

      while (1)
      {
        if (*v399 == v246)
        {
          v249 = v247;
          v250 = &v399[8];
          if (v246 != 1)
          {
            if (v246 != 2)
            {
              break;
            }

            v249 = v248;
            v250 = &v399[16];
          }

          if (*v250 == v249)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_ResponseGroup(v402, a2, v251);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v245)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v245);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v244 = *&v392[8];
LABEL_1212:
        operator delete(v244);
      }
    }

    else
    {
      if (v240)
      {
        goto LABEL_1171;
      }

LABEL_1176:
      YAML::Node::operator[]<char [15]>(this, "groupResponses", v402);
      siri::intelligence::ValidateIntelligence_ResponseGroup(v402, a2, v243);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v244 = *&v402[8];
        goto LABEL_1212;
      }
    }
  }

LABEL_1213:
  YAML::Node::operator[]<char [9]>(v402, this, "rulesets");
  v252 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v252)
    {
      goto LABEL_1224;
    }
  }

  else
  {
    if (v252)
    {
      goto LABEL_1275;
    }

LABEL_1224:
    YAML::Node::operator[]<char [9]>(v402, this, "rulesets");
    if ((v402[0] & 1) == 0)
    {
      v368 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v368, v392);
    }

    v254 = v404 && (v253 = **v404, *v253 == 1) && *(v253 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v254)
      {
        goto LABEL_1238;
      }

LABEL_1233:
      YAML::Node::operator[]<char [9]>(v392, this, "rulesets");
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v256 = *&v392[32];
        v255 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v256;
          v400 = v255;
          atomic_fetch_add_explicit(&v255->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v255);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v259 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v260 = *v402;
          v261 = *&v402[8];
          v262 = *&v402[16];
          atomic_fetch_add_explicit(&v259->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v259);
        }

        else
        {
          v260 = *v402;
          v261 = *&v402[8];
          v262 = *&v402[16];
        }
      }

      else
      {
        v261 = 0;
        v262 = 0;
        v259 = 0;
        v260 = 0;
      }

      while (1)
      {
        if (*v399 == v260)
        {
          v263 = v261;
          v264 = &v399[8];
          if (v260 != 1)
          {
            if (v260 != 2)
            {
              break;
            }

            v263 = v262;
            v264 = &v399[16];
          }

          if (*v264 == v263)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_InputGroup(v402, a2, v265);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v259)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v259);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v258 = *&v392[8];
LABEL_1274:
        operator delete(v258);
      }
    }

    else
    {
      if (v254)
      {
        goto LABEL_1233;
      }

LABEL_1238:
      YAML::Node::operator[]<char [9]>(v402, this, "rulesets");
      siri::intelligence::ValidateIntelligence_InputGroup(v402, a2, v257);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v258 = *&v402[8];
        goto LABEL_1274;
      }
    }
  }

LABEL_1275:
  YAML::Node::operator[]<char [8]>(this, "intents", v402);
  v266 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v266)
    {
      goto LABEL_1286;
    }
  }

  else
  {
    if (v266)
    {
      goto LABEL_1337;
    }

LABEL_1286:
    YAML::Node::operator[]<char [8]>(this, "intents", v402);
    if ((v402[0] & 1) == 0)
    {
      v369 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v369, v392);
    }

    v268 = v404 && (v267 = **v404, *v267 == 1) && *(v267 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v268)
      {
        goto LABEL_1300;
      }

LABEL_1295:
      YAML::Node::operator[]<char [8]>(this, "intents", v392);
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v270 = *&v392[32];
        v269 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v270;
          v400 = v269;
          atomic_fetch_add_explicit(&v269->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v269);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v273 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v274 = *v402;
          v275 = *&v402[8];
          v276 = *&v402[16];
          atomic_fetch_add_explicit(&v273->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v273);
        }

        else
        {
          v274 = *v402;
          v275 = *&v402[8];
          v276 = *&v402[16];
        }
      }

      else
      {
        v275 = 0;
        v276 = 0;
        v273 = 0;
        v274 = 0;
      }

      while (1)
      {
        if (*v399 == v274)
        {
          v277 = v275;
          v278 = &v399[8];
          if (v274 != 1)
          {
            if (v274 != 2)
            {
              break;
            }

            v277 = v276;
            v278 = &v399[16];
          }

          if (*v278 == v277)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_Intent(v402, a2, v279);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v273)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v273);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v272 = *&v392[8];
LABEL_1336:
        operator delete(v272);
      }
    }

    else
    {
      if (v268)
      {
        goto LABEL_1295;
      }

LABEL_1300:
      YAML::Node::operator[]<char [8]>(this, "intents", v402);
      siri::intelligence::ValidateIntelligence_Intent(v402, a2, v271);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v272 = *&v402[8];
        goto LABEL_1336;
      }
    }
  }

LABEL_1337:
  YAML::Node::operator[]<char [9]>(v402, this, "counters");
  v280 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v280)
    {
      goto LABEL_1348;
    }
  }

  else
  {
    if (v280)
    {
      goto LABEL_1399;
    }

LABEL_1348:
    YAML::Node::operator[]<char [9]>(v402, this, "counters");
    if ((v402[0] & 1) == 0)
    {
      v370 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v370, v392);
    }

    v282 = v404 && (v281 = **v404, *v281 == 1) && *(v281 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v282)
      {
        goto LABEL_1362;
      }

LABEL_1357:
      YAML::Node::operator[]<char [9]>(v392, this, "counters");
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v284 = *&v392[32];
        v283 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v284;
          v400 = v283;
          atomic_fetch_add_explicit(&v283->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v283);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v287 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v288 = *v402;
          v289 = *&v402[8];
          v290 = *&v402[16];
          atomic_fetch_add_explicit(&v287->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v287);
        }

        else
        {
          v288 = *v402;
          v289 = *&v402[8];
          v290 = *&v402[16];
        }
      }

      else
      {
        v289 = 0;
        v290 = 0;
        v287 = 0;
        v288 = 0;
      }

      while (1)
      {
        if (*v399 == v288)
        {
          v291 = v289;
          v292 = &v399[8];
          if (v288 != 1)
          {
            if (v288 != 2)
            {
              break;
            }

            v291 = v290;
            v292 = &v399[16];
          }

          if (*v292 == v291)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_Counter(v402, a2, v293);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v287)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v287);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v286 = *&v392[8];
LABEL_1398:
        operator delete(v286);
      }
    }

    else
    {
      if (v282)
      {
        goto LABEL_1357;
      }

LABEL_1362:
      YAML::Node::operator[]<char [9]>(v402, this, "counters");
      siri::intelligence::ValidateIntelligence_Counter(v402, a2, v285);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v286 = *&v402[8];
        goto LABEL_1398;
      }
    }
  }

LABEL_1399:
  YAML::Node::operator[]<char [6]>(this, "flags", v402);
  v294 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v294)
    {
      goto LABEL_1410;
    }
  }

  else
  {
    if (v294)
    {
      goto LABEL_1461;
    }

LABEL_1410:
    YAML::Node::operator[]<char [6]>(this, "flags", v402);
    if ((v402[0] & 1) == 0)
    {
      v371 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v371, v392);
    }

    v296 = v404 && (v295 = **v404, *v295 == 1) && *(v295 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v296)
      {
        goto LABEL_1424;
      }

LABEL_1419:
      YAML::Node::operator[]<char [6]>(this, "flags", v392);
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v298 = *&v392[32];
        v297 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v298;
          v400 = v297;
          atomic_fetch_add_explicit(&v297->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v297);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v301 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v302 = *v402;
          v303 = *&v402[8];
          v304 = *&v402[16];
          atomic_fetch_add_explicit(&v301->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v301);
        }

        else
        {
          v302 = *v402;
          v303 = *&v402[8];
          v304 = *&v402[16];
        }
      }

      else
      {
        v303 = 0;
        v304 = 0;
        v301 = 0;
        v302 = 0;
      }

      while (1)
      {
        if (*v399 == v302)
        {
          v305 = v303;
          v306 = &v399[8];
          if (v302 != 1)
          {
            if (v302 != 2)
            {
              break;
            }

            v305 = v304;
            v306 = &v399[16];
          }

          if (*v306 == v305)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_Flag(v402, a2, v307);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v301)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v301);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v300 = *&v392[8];
LABEL_1460:
        operator delete(v300);
      }
    }

    else
    {
      if (v296)
      {
        goto LABEL_1419;
      }

LABEL_1424:
      YAML::Node::operator[]<char [6]>(this, "flags", v402);
      siri::intelligence::ValidateIntelligence_Flag(v402, a2, v299);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v300 = *&v402[8];
        goto LABEL_1460;
      }
    }
  }

LABEL_1461:
  YAML::Node::operator[]<char [7]>(this, "labels", v402);
  v308 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v308)
    {
      goto LABEL_1472;
    }
  }

  else
  {
    if (v308)
    {
      goto LABEL_1523;
    }

LABEL_1472:
    YAML::Node::operator[]<char [7]>(this, "labels", v402);
    if ((v402[0] & 1) == 0)
    {
      v372 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v372, v392);
    }

    v310 = v404 && (v309 = **v404, *v309 == 1) && *(v309 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v310)
      {
        goto LABEL_1486;
      }

LABEL_1481:
      YAML::Node::operator[]<char [7]>(this, "labels", v392);
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v312 = *&v392[32];
        v311 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v312;
          v400 = v311;
          atomic_fetch_add_explicit(&v311->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v311);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v315 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v316 = *v402;
          v317 = *&v402[8];
          v318 = *&v402[16];
          atomic_fetch_add_explicit(&v315->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v315);
        }

        else
        {
          v316 = *v402;
          v317 = *&v402[8];
          v318 = *&v402[16];
        }
      }

      else
      {
        v317 = 0;
        v318 = 0;
        v315 = 0;
        v316 = 0;
      }

      while (1)
      {
        if (*v399 == v316)
        {
          v319 = v317;
          v320 = &v399[8];
          if (v316 != 1)
          {
            if (v316 != 2)
            {
              break;
            }

            v319 = v318;
            v320 = &v399[16];
          }

          if (*v320 == v319)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_Label(v402, a2, v321);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v315)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v315);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v314 = *&v392[8];
LABEL_1522:
        operator delete(v314);
      }
    }

    else
    {
      if (v310)
      {
        goto LABEL_1481;
      }

LABEL_1486:
      YAML::Node::operator[]<char [7]>(this, "labels", v402);
      siri::intelligence::ValidateIntelligence_Label(v402, a2, v313);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v314 = *&v402[8];
        goto LABEL_1522;
      }
    }
  }

LABEL_1523:
  YAML::Node::operator[]<char [6]>(this, "lists", v402);
  v322 = v402[0] != 1 || v404 && (***v404 & 1) == 0;
  if (v403)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v403);
  }

  if ((v402[31] & 0x80000000) != 0)
  {
    operator delete(*&v402[8]);
    if (!v322)
    {
      goto LABEL_1534;
    }
  }

  else
  {
    if (v322)
    {
      goto LABEL_1585;
    }

LABEL_1534:
    YAML::Node::operator[]<char [6]>(this, "lists", v402);
    if ((v402[0] & 1) == 0)
    {
      v373 = __cxa_allocate_exception(0x38uLL);
      if ((v402[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(v392, *&v402[8], *&v402[16]);
      }

      else
      {
        *v392 = *&v402[8];
        *&v392[16] = *&v402[24];
      }

      YAML::InvalidNode::InvalidNode(v373, v392);
    }

    v324 = v404 && (v323 = **v404, *v323 == 1) && *(v323 + 16) == 3;
    if (v403)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v403);
    }

    if ((v402[31] & 0x80000000) != 0)
    {
      operator delete(*&v402[8]);
      if (!v324)
      {
        goto LABEL_1548;
      }

LABEL_1543:
      YAML::Node::operator[]<char [6]>(this, "lists", v392);
      if ((v392[0] & 1) != 0 && v394)
      {
        YAML::detail::node_data::begin(**v394, v402);
        v326 = *&v392[32];
        v325 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = v326;
          v400 = v325;
          atomic_fetch_add_explicit(&v325->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v325);
        }

        else
        {
          *v399 = *v402;
          *&v399[16] = *&v402[16];
          *&v399[32] = *&v392[32];
          v400 = 0;
        }
      }

      else
      {
        *v399 = 0;
        memset(&v399[8], 0, 32);
        v400 = 0;
      }

      if (v392[0] == 1 && v394)
      {
        YAML::detail::node_data::end(**v394, v402);
        v329 = v393;
        if (v393)
        {
          atomic_fetch_add_explicit(&v393->__shared_owners_, 1uLL, memory_order_relaxed);
          v330 = *v402;
          v331 = *&v402[8];
          v332 = *&v402[16];
          atomic_fetch_add_explicit(&v329->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v329);
        }

        else
        {
          v330 = *v402;
          v331 = *&v402[8];
          v332 = *&v402[16];
        }
      }

      else
      {
        v331 = 0;
        v332 = 0;
        v329 = 0;
        v330 = 0;
      }

      while (1)
      {
        if (*v399 == v330)
        {
          v333 = v331;
          v334 = &v399[8];
          if (v330 != 1)
          {
            if (v330 != 2)
            {
              break;
            }

            v333 = v332;
            v334 = &v399[16];
          }

          if (*v334 == v333)
          {
            break;
          }
        }

        YAML::detail::iterator_base<YAML::detail::iterator_value const>::operator*(v399, v402);
        siri::intelligence::ValidateIntelligence_List(v402, a2, v335);
        if (v411)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v411);
        }

        if (SHIBYTE(v409.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v409.__r_.__value_.__l.__data_);
        }

        if (v407[0])
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v407[0]);
        }

        if (SHIBYTE(v406.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v406.__r_.__value_.__l.__data_);
        }

        if (v403)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v403);
        }

        if ((v402[31] & 0x80000000) != 0)
        {
          operator delete(*&v402[8]);
        }

        YAML::detail::node_iterator_base<YAML::detail::node>::operator++(v399);
      }

      if (v329)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v329);
      }

      if (v400)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v400);
      }

      if (v393)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v393);
      }

      if ((v392[31] & 0x80000000) != 0)
      {
        v328 = *&v392[8];
LABEL_1584:
        operator delete(v328);
      }
    }

    else
    {
      if (v324)
      {
        goto LABEL_1543;
      }

LABEL_1548:
      YAML::Node::operator[]<char [6]>(this, "lists", v402);
      siri::intelligence::ValidateIntelligence_List(v402, a2, v327);
      if (v403)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v403);
      }

      if ((v402[31] & 0x80000000) != 0)
      {
        v328 = *&v402[8];
        goto LABEL_1584;
      }
    }
  }

LABEL_1585:
  v336 = *MEMORY[0x277D85DE8];
}

void sub_254DB8BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  v9 = (v7 + 47);
  v10 = -48;
  v11 = (v7 + 47);
  while (1)
  {
    v12 = *v11;
    v11 -= 24;
    if (v12 < 0)
    {
      operator delete(*(v9 - 23));
    }

    v9 = v11;
    v10 += 24;
    if (!v10)
    {
      __cxa_guard_abort(&qword_280AF49A8);
      YAML::Node::~Node(va);
      _Unwind_Resume(a1);
    }
  }
}

void siri::intelligence::ParseIntelligence_Meta(siri::intelligence *this, protobuf::Intelligence_Meta *a2, const YAML::Node *a3)
{
  v3 = a3;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  if (a3)
  {
    v6 = YAML::Node::Mark(a2);
    std::to_string(&v35, HIDWORD(v6) + 1);
    v7 = std::string::insert(&v35, 0, "<msg>=");
    v8 = *&v7->__r_.__value_.__l.__data_;
    *&__p[16] = *(&v7->__r_.__value_.__l + 2);
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v32, __p);
    if ((__p[23] & 0x80000000) != 0)
    {
      operator delete(*__p);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

  YAML::Node::operator[]<char [5]>(a2, "name", __p);
  v9 = __p[0] != 1 || v31 && (***v31 & 1) == 0;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

  if (!v9)
  {
    YAML::Node::operator[]<char [5]>(a2, "name", __p);
    if ((__p[0] & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v35, *&__p[8], *&__p[16]);
      }

      else
      {
        v35 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(exception, &v35);
    }

    v35.__r_.__value_.__r.__words[0] = __p;
    YAML::as_if<std::string,void>::operator()(&v35, &v28);
    *(this + 4) |= 1u;
    google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 3, &google::protobuf::internal::fixed_address_empty_string, &v28);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
      if (!v3)
      {
        goto LABEL_37;
      }
    }

    else if (!v3)
    {
      goto LABEL_37;
    }

    YAML::Node::operator[]<char [5]>(a2, "name", __p);
    if ((__p[0] & 1) == 0)
    {
      v25 = __cxa_allocate_exception(0x38uLL);
      if ((__p[31] & 0x80000000) != 0)
      {
        std::string::__init_copy_ctor_external(&v35, *&__p[8], *&__p[16]);
      }

      else
      {
        v35 = *&__p[8];
      }

      YAML::InvalidNode::InvalidNode(v25, &v35);
    }

    if (v31)
    {
      v10 = *(**v31 + 8) + 1;
    }

    else
    {
      v10 = 0;
    }

    std::to_string(&v27, v10);
    v11 = std::string::insert(&v27, 0, "name=");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::vector<std::string>::push_back[abi:ne200100](&v32, &v28);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    if ((__p[31] & 0x80000000) != 0)
    {
      operator delete(*&__p[8]);
    }
  }

LABEL_37:
  YAML::Node::operator[]<char [8]>(a2, "content", __p);
  v13 = __p[0] != 1 || v31 && (***v31 & 1) == 0;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (v13)
    {
      goto LABEL_69;
    }
  }

  else if (v13)
  {
    goto LABEL_69;
  }

  YAML::Node::operator[]<char [8]>(a2, "content", __p);
  if ((__p[0] & 1) == 0)
  {
    v24 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v35, *&__p[8], *&__p[16]);
    }

    else
    {
      v35 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v24, &v35);
  }

  v35.__r_.__value_.__r.__words[0] = __p;
  YAML::as_if<std::string,void>::operator()(&v35, &v28);
  *(this + 4) |= 2u;
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 4, &google::protobuf::internal::fixed_address_empty_string, &v28);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
    if (!v3)
    {
      goto LABEL_69;
    }
  }

  else if (!v3)
  {
    goto LABEL_69;
  }

  YAML::Node::operator[]<char [8]>(a2, "content", __p);
  if ((__p[0] & 1) == 0)
  {
    v26 = __cxa_allocate_exception(0x38uLL);
    if ((__p[31] & 0x80000000) != 0)
    {
      std::string::__init_copy_ctor_external(&v35, *&__p[8], *&__p[16]);
    }

    else
    {
      v35 = *&__p[8];
    }

    YAML::InvalidNode::InvalidNode(v26, &v35);
  }

  if (v31)
  {
    v14 = *(**v31 + 8) + 1;
  }

  else
  {
    v14 = 0;
  }

  std::to_string(&v27, v14);
  v15 = std::string::insert(&v27, 0, "content=");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  std::vector<std::string>::push_back[abi:ne200100](&v32, &v28);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  if ((__p[31] & 0x80000000) != 0)
  {
    operator delete(*&__p[8]);
  }

LABEL_69:
  if (v32 != v33)
  {
    std::string::basic_string[abi:ne200100]<0>(&v35, ";");
    siri::intelligence::StringJoin(&v32, &v35, __p);
    v19 = *(this + 1);
    v18 = (this + 8);
    v17 = v19;
    if (v19)
    {
      v20 = v17 & 0xFFFFFFFFFFFFFFFELL;
    }

    else
    {
      google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::mutable_unknown_fields_slow(v18);
      v20 = v22;
    }

    if (*(v20 + 23) < 0)
    {
      operator delete(*v20);
    }

    v21 = *__p;
    *(v20 + 16) = *&__p[16];
    *v20 = v21;
    __p[23] = 0;
    __p[0] = 0;
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }
  }

  *__p = &v32;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_254DB9AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 57) < 0)
  {
    operator delete(*(v28 - 80));
  }

  __p = (v28 - 104);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void YAML::Node::operator[]<char [26]>(uint64_t a1, YAML::Node *this)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *(this + 1), *(this + 2));
    }

    else
    {
      v16 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v16);
  }

  YAML::Node::EnsureNodeExists(this);
  v4 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, "excludeIfBuildVariableSet");
  v5 = *(this + 5);
  v14 = *(this + 4);
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = YAML::detail::node::get<std::string>(v4, __p, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
LABEL_8:
      v8 = *(this + 4);
      v7 = *(this + 5);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        *a1 = 1;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = v8;
        *(a1 + 40) = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a1 + 48) = v6;
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      else
      {
        *a1 = 1;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = v8;
        *(a1 + 40) = 0;
        *(a1 + 48) = v6;
      }

      return;
    }
  }

  else if (v6)
  {
    goto LABEL_8;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "excludeIfBuildVariableSet", 25);
  std::stringbuf::str();
  __p[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82818] + 64);
  v18 = v9;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  MEMORY[0x259C29CE0](&v22);
  *a1 = 0;
  v10 = (a1 + 8);
  if (SHIBYTE(v13) < 0)
  {
    std::string::__init_copy_ctor_external(v10, v12[0], v12[1]);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    operator delete(v12[0]);
  }

  else
  {
    *&v10->__r_.__value_.__l.__data_ = *v12;
    *(a1 + 24) = v13;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
  }
}

void sub_254DB9EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void YAML::Node::operator[]<char [25]>(uint64_t a1, YAML::Node *this)
{
  if ((*this & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    if (*(this + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v16, *(this + 1), *(this + 2));
    }

    else
    {
      v16 = *(this + 8);
    }

    YAML::InvalidNode::InvalidNode(exception, &v16);
  }

  YAML::Node::EnsureNodeExists(this);
  v4 = *(this + 6);
  std::string::basic_string[abi:ne200100]<0>(__p, "excludeIfFeatureDisabled");
  v5 = *(this + 5);
  v14 = *(this + 4);
  v15 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = YAML::detail::node::get<std::string>(v4, __p, &v14);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if (v6)
    {
LABEL_8:
      v8 = *(this + 4);
      v7 = *(this + 5);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        *a1 = 1;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = v8;
        *(a1 + 40) = v7;
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        *(a1 + 48) = v6;
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      else
      {
        *a1 = 1;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
        *(a1 + 32) = v8;
        *(a1 + 40) = 0;
        *(a1 + 48) = v6;
      }

      return;
    }
  }

  else if (v6)
  {
    goto LABEL_8;
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "excludeIfFeatureDisabled", 24);
  std::stringbuf::str();
  __p[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(__p + *(__p[0] - 3)) = *(MEMORY[0x277D82818] + 64);
  v18 = v9;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  MEMORY[0x259C29CE0](&v22);
  *a1 = 0;
  v10 = (a1 + 8);
  if (SHIBYTE(v13) < 0)
  {
    std::string::__init_copy_ctor_external(v10, v12[0], v12[1]);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
    operator delete(v12[0]);
  }

  else
  {
    *&v10->__r_.__value_.__l.__data_ = *v12;
    *(a1 + 24) = v13;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    *(a1 + 32) = 0;
  }
}