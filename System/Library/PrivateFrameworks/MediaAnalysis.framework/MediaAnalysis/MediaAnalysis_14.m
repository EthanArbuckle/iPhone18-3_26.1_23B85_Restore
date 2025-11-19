void sub_1C9F2D49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::ByteSize(google::protobuf::internal::ExtensionSet *this)
{
  v7 = 0;
  v1 = *(this + 2);
  if (*(this + 4) >= 0x101u)
  {
    google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::ByteSize(void)::$_0>(*v1, v1 + 1, &v7);
    return v7;
  }

  else if (*(this + 5))
  {
    v2 = 0;
    v3 = &v1[8 * *(this + 5)];
    v4 = *(this + 2);
    do
    {
      v5 = *v4;
      v4 += 8;
      v2 += google::protobuf::internal::ExtensionSet::Extension::ByteSize(v1 + 1, v5);
      v1 = v4;
    }

    while (v4 != v3);
  }

  else
  {
    return 0;
  }

  return v2;
}

unint64_t google::protobuf::internal::ExtensionSet::Extension::ByteSize(int **this, int a2)
{
  if (*(this + 9) == 1)
  {
    v4 = *(this + 8);
    v5 = v4 - 19;
    if (*(this + 11) == 1)
    {
      if (v5 <= 0xFFFFFFED)
      {
        google::protobuf::internal::LogMessage::LogMessage(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v6 = google::protobuf::internal::LogMessage::operator<<(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v102, &v6->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v103[0].__r_.__value_.__l.__data_);
      }

      switch(v4)
      {
        case 1:
        case 6:
        case 16:
          v22 = 8 * **this;
          goto LABEL_71;
        case 2:
        case 7:
        case 15:
          v22 = 4 * **this;
          goto LABEL_71;
        case 3:
          v45 = *this;
          if (**this < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v46 = 0;
          do
          {
            v22 += (9 * (__clz(*google::protobuf::RepeatedField<long long>::Get(v45, v46++) | 1) ^ 0x3F) + 73) >> 6;
            v45 = *this;
          }

          while (v46 < **this);
          goto LABEL_71;
        case 4:
          v47 = *this;
          if (**this < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v48 = 0;
          do
          {
            v22 += (9 * (__clz(*google::protobuf::RepeatedField<unsigned long long>::Get(v47, v48++) | 1) ^ 0x3F) + 73) >> 6;
            v47 = *this;
          }

          while (v48 < **this);
          goto LABEL_71;
        case 5:
          v37 = *this;
          if (**this < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v38 = 0;
          do
          {
            v39 = google::protobuf::RepeatedField<int>::Get(v37, v38);
            v40 = (9 * (__clz(*v39 | 1) ^ 0x1F) + 73) >> 6;
            if (*v39 >= 0)
            {
              v41 = v40;
            }

            else
            {
              v41 = 10;
            }

            v22 += v41;
            ++v38;
            v37 = *this;
          }

          while (v38 < **this);
          goto LABEL_71;
        case 8:
          v22 = **this;
          goto LABEL_71;
        case 9:
        case 10:
        case 11:
        case 12:
          google::protobuf::internal::LogMessage::LogMessage(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1599);
          v7 = google::protobuf::internal::LogMessage::operator<<(v103, "Non-primitive types can't be packed.");
          google::protobuf::internal::LogFinisher::operator=(&v102, &v7->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v103[0].__r_.__value_.__l.__data_);
          goto LABEL_7;
        case 13:
          v30 = *this;
          if (**this < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v31 = 0;
          do
          {
            v22 += (9 * (__clz(*google::protobuf::RepeatedField<unsigned int>::Get(v30, v31++) | 1) ^ 0x1F) + 73) >> 6;
            v30 = *this;
          }

          while (v31 < **this);
          goto LABEL_71;
        case 14:
          v32 = *this;
          if (**this < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v33 = 0;
          do
          {
            v34 = google::protobuf::RepeatedField<int>::Get(v32, v33);
            v35 = (9 * (__clz(*v34 | 1) ^ 0x1F) + 73) >> 6;
            if (*v34 >= 0)
            {
              v36 = v35;
            }

            else
            {
              v36 = 10;
            }

            v22 += v36;
            ++v33;
            v32 = *this;
          }

          while (v33 < **this);
          goto LABEL_71;
        case 17:
          v27 = *this;
          if (**this < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v28 = 0;
          do
          {
            v29 = google::protobuf::RepeatedField<int>::Get(v27, v28);
            v22 += (9 * (__clz((2 * *v29) ^ (*v29 >> 31) | 1) ^ 0x1F) + 73) >> 6;
            ++v28;
            v27 = *this;
          }

          while (v28 < **this);
          goto LABEL_71;
        case 18:
          v42 = *this;
          if (**this < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v43 = 0;
          do
          {
            v44 = google::protobuf::RepeatedField<long long>::Get(v42, v43);
            v22 += (9 * (__clz((2 * *v44) ^ (*v44 >> 63) | 1) ^ 0x3F) + 73) >> 6;
            ++v43;
            v42 = *this;
          }

          while (v43 < **this);
LABEL_71:
          *(this + 3) = v22;
          v49 = v22 + ((9 * (__clz((8 * a2) | 3) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
          if (v22)
          {
            v8 = v49;
          }

          else
          {
            v8 = 0;
          }

          break;
        default:
LABEL_7:
          v8 = 0;
          *(this + 3) = 0;
          break;
      }
    }

    else
    {
      if (v5 > 0xFFFFFFED)
      {
        v11 = 0;
        v10 = *(this + 8);
      }

      else
      {
        google::protobuf::internal::LogMessage::LogMessage(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v9 = google::protobuf::internal::LogMessage::operator<<(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v102, &v9->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v103[0].__r_.__value_.__l.__data_);
        v10 = *(this + 8);
        v11 = (v10 - 19) < 0xFFFFFFEE;
      }

      v16 = v4 == 10;
      if (v11)
      {
        google::protobuf::internal::LogMessage::LogMessage(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v17 = google::protobuf::internal::LogMessage::operator<<(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        google::protobuf::internal::LogFinisher::operator=(&v102, &v17->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v103[0].__r_.__value_.__l.__data_);
      }

      v18 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << v16;
      switch(v10)
      {
        case 1:
        case 6:
        case 16:
          v19 = v18 + 8;
          goto LABEL_27;
        case 2:
        case 7:
        case 15:
          v19 = v18 + 4;
LABEL_27:
          v8 = v19 * **this;
          break;
        case 3:
          v85 = *this;
          v86 = **this;
          v8 = v18 * v86;
          if (v86 >= 1)
          {
            v87 = 0;
            do
            {
              v8 += (9 * (__clz(*google::protobuf::RepeatedField<long long>::Get(v85, v87++) | 1) ^ 0x3F) + 73) >> 6;
              v85 = *this;
            }

            while (v87 < **this);
          }

          break;
        case 4:
          v88 = *this;
          v89 = **this;
          v8 = v18 * v89;
          if (v89 >= 1)
          {
            v90 = 0;
            do
            {
              v8 += (9 * (__clz(*google::protobuf::RepeatedField<unsigned long long>::Get(v88, v90++) | 1) ^ 0x3F) + 73) >> 6;
              v88 = *this;
            }

            while (v90 < **this);
          }

          break;
        case 5:
          v75 = *this;
          v76 = **this;
          v8 = v18 * v76;
          if (v76 >= 1)
          {
            v77 = 0;
            do
            {
              v78 = google::protobuf::RepeatedField<int>::Get(v75, v77);
              v79 = (9 * (__clz(*v78 | 1) ^ 0x1F) + 73) >> 6;
              if (*v78 >= 0)
              {
                v80 = v79;
              }

              else
              {
                v80 = 10;
              }

              v8 += v80;
              ++v77;
              v75 = *this;
            }

            while (v77 < **this);
          }

          break;
        case 8:
          v8 = **this + **this * v18;
          break;
        case 9:
          v96 = *this;
          v97 = (*this)[2];
          v8 = v18 * v97;
          if (v97 >= 1)
          {
            v98 = 0;
            do
            {
              v99 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v96, v98);
              v100 = *(v99 + 23);
              if ((v100 & 0x80u) != 0)
              {
                v100 = *(v99 + 8);
              }

              v8 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6);
              ++v98;
              v96 = *this;
            }

            while (v98 < (*this)[2]);
          }

          break;
        case 10:
          v58 = *this;
          v59 = (*this)[2];
          v8 = v18 * v59;
          if (v59 >= 1)
          {
            v60 = 0;
            do
            {
              v61 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(v58, v60);
              v8 += (*(*v61 + 72))(v61);
              ++v60;
              v58 = *this;
            }

            while (v60 < (*this)[2]);
          }

          break;
        case 11:
          v64 = *this;
          v65 = (*this)[2];
          v8 = v18 * v65;
          if (v65 >= 1)
          {
            v66 = 0;
            do
            {
              v67 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(v64, v66);
              v68 = (*(*v67 + 72))(v67);
              v8 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6);
              ++v66;
              v64 = *this;
            }

            while (v66 < (*this)[2]);
          }

          break;
        case 12:
          v91 = *this;
          v92 = (*this)[2];
          v8 = v18 * v92;
          if (v92 >= 1)
          {
            v93 = 0;
            do
            {
              v94 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v91, v93);
              v95 = *(v94 + 23);
              if ((v95 & 0x80u) != 0)
              {
                v95 = *(v94 + 8);
              }

              v8 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6);
              ++v93;
              v91 = *this;
            }

            while (v93 < (*this)[2]);
          }

          break;
        case 13:
          v55 = *this;
          v56 = **this;
          v8 = v18 * v56;
          if (v56 >= 1)
          {
            v57 = 0;
            do
            {
              v8 += (9 * (__clz(*google::protobuf::RepeatedField<unsigned int>::Get(v55, v57++) | 1) ^ 0x1F) + 73) >> 6;
              v55 = *this;
            }

            while (v57 < **this);
          }

          break;
        case 14:
          v69 = *this;
          v70 = **this;
          v8 = v18 * v70;
          if (v70 >= 1)
          {
            v71 = 0;
            do
            {
              v72 = google::protobuf::RepeatedField<int>::Get(v69, v71);
              v73 = (9 * (__clz(*v72 | 1) ^ 0x1F) + 73) >> 6;
              if (*v72 >= 0)
              {
                v74 = v73;
              }

              else
              {
                v74 = 10;
              }

              v8 += v74;
              ++v71;
              v69 = *this;
            }

            while (v71 < **this);
          }

          break;
        case 17:
          v50 = *this;
          v51 = **this;
          v8 = v18 * v51;
          if (v51 >= 1)
          {
            v52 = 0;
            do
            {
              v53 = google::protobuf::RepeatedField<int>::Get(v50, v52);
              v8 += (9 * (__clz((2 * *v53) ^ (*v53 >> 31) | 1) ^ 0x1F) + 73) >> 6;
              ++v52;
              v50 = *this;
            }

            while (v52 < **this);
          }

          break;
        case 18:
          v81 = *this;
          v82 = **this;
          v8 = v18 * v82;
          if (v82 >= 1)
          {
            v83 = 0;
            do
            {
              v84 = google::protobuf::RepeatedField<long long>::Get(v81, v83);
              v8 += (9 * (__clz((2 * *v84) ^ (*v84 >> 63) | 1) ^ 0x3F) + 73) >> 6;
              ++v83;
              v81 = *this;
            }

            while (v83 < **this);
          }

          break;
        default:
          return 0;
      }
    }
  }

  else if (*(this + 10))
  {
    return 0;
  }

  else
  {
    v12 = *(this + 8);
    if ((v12 - 19) > 0xFFFFFFED)
    {
      v15 = 0;
      v14 = *(this + 8);
    }

    else
    {
      google::protobuf::internal::LogMessage::LogMessage(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v13 = google::protobuf::internal::LogMessage::operator<<(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v102, &v13->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v103[0].__r_.__value_.__l.__data_);
      v14 = *(this + 8);
      v15 = (v14 - 19) < 0xFFFFFFEE;
    }

    v20 = v12 == 10;
    if (v15)
    {
      google::protobuf::internal::LogMessage::LogMessage(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v21 = google::protobuf::internal::LogMessage::operator<<(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v102, &v21->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v103[0].__r_.__value_.__l.__data_);
    }

    v8 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << v20;
    switch(v14)
    {
      case 1:
      case 6:
      case 16:
        v8 += 8;
        return v8;
      case 2:
      case 7:
      case 15:
        v8 += 4;
        return v8;
      case 3:
      case 4:
        v23 = *this;
        goto LABEL_116;
      case 5:
      case 14:
        v24 = (9 * (__clz(*this | 1) ^ 0x1F) + 73) >> 6;
        if (*this >= 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = 10;
        }

        v8 += v25;
        return v8;
      case 8:
        return ++v8;
      case 9:
      case 12:
        v26 = *(*this + 1);
        if (*(*this + 23) >= 0)
        {
          v26 = *(*this + 23);
        }

        v8 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
        return v8;
      case 10:
        v8 += (*(**this + 72))();
        return v8;
      case 11:
        v62 = **this;
        if ((*(this + 10) & 0x10) != 0)
        {
          v63 = (*(v62 + 88))();
        }

        else
        {
          v63 = (*(v62 + 72))();
        }

        v8 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6);
        return v8;
      case 13:
        v54 = *this;
        goto LABEL_103;
      case 17:
        v54 = (2 * *this) ^ (*this >> 31);
LABEL_103:
        v8 += (9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6;
        break;
      case 18:
        v23 = (2 * *this) ^ (*this >> 63);
LABEL_116:
        v8 += (9 * (__clz(v23 | 1) ^ 0x3F) + 73) >> 6;
        break;
      default:
        return v8;
    }
  }

  return v8;
}

void sub_1C9F2E160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::Extension::Free(google::protobuf::internal::ExtensionSet::Extension *this)
{
  v2 = *(this + 8);
  v3 = v2 - 19;
  if (*(this + 9) != 1)
  {
    if (v3 <= 0xFFFFFFED)
    {
      google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v7 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      google::protobuf::internal::LogFinisher::operator=(&v13, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v2];
    if (v8 == 10)
    {
      v12 = *this;
      if ((*(this + 10) & 0x10) != 0)
      {
        if (!v12)
        {
          return;
        }
      }

      else if (!v12)
      {
        return;
      }

      (*(*v12 + 8))(v12);
      return;
    }

    if (v8 == 9)
    {
      v9 = *this;
      if (v9)
      {
        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        v10 = 0x1012C40EC159624;
        v6 = v9;
        goto LABEL_45;
      }
    }

    return;
  }

  if (v3 <= 0xFFFFFFED)
  {
    google::protobuf::internal::LogMessage::LogMessage(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v4 = google::protobuf::internal::LogMessage::operator<<(v14, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    google::protobuf::internal::LogFinisher::operator=(&v13, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v14[0].__r_.__value_.__l.__data_);
  }

  v5 = google::protobuf::internal::WireFormatLite::kFieldTypeToCppTypeMap[v2];
  if (v5 > 5)
  {
    if (v5 <= 7)
    {
      if (v5 == 6)
      {
        if (!*this)
        {
          return;
        }

        v6 = google::protobuf::RepeatedField<float>::~RepeatedField();
      }

      else
      {
        if (!*this)
        {
          return;
        }

        v6 = google::protobuf::RepeatedField<BOOL>::~RepeatedField();
      }

      goto LABEL_44;
    }

    if (v5 != 8)
    {
      if (v5 == 9)
      {
        if (!*this)
        {
          return;
        }

        v6 = google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField();
      }

      else
      {
        if (v5 != 10)
        {
          return;
        }

        v11 = *this;
        if (!v11)
        {
          return;
        }

        google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(v11);
        google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(v11);
      }

      v10 = 0x1020C4014030ADELL;
      goto LABEL_45;
    }

LABEL_34:
    if (!*this)
    {
      return;
    }

    v6 = google::protobuf::RepeatedField<int>::~RepeatedField();
    goto LABEL_44;
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      if (!*this)
      {
        return;
      }

      v6 = google::protobuf::RepeatedField<unsigned int>::~RepeatedField();
    }

    else if (v5 == 4)
    {
      if (!*this)
      {
        return;
      }

      v6 = google::protobuf::RepeatedField<unsigned long long>::~RepeatedField();
    }

    else
    {
      if (!*this)
      {
        return;
      }

      v6 = google::protobuf::RepeatedField<double>::~RepeatedField();
    }

    goto LABEL_44;
  }

  if (v5 == 1)
  {
    goto LABEL_34;
  }

  if (v5 == 2 && *this)
  {
    v6 = google::protobuf::RepeatedField<long long>::~RepeatedField();
LABEL_44:
    v10 = 0x1080C4057E67DB5;
LABEL_45:
    MEMORY[0x1CCA95C50](v6, v10);
  }
}

void sub_1C9F2E444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::~()::$_0>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      google::protobuf::internal::ExtensionSet::Extension::Free((v3 + 5));
      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }
}

void google::protobuf::internal::arena_destruct_object<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>>(ma::QualityAnalysis **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1C9F2E600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::AddAllocatedInternal<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(unsigned int *result, uint64_t a2)
{
  v2 = *(result + 2);
  if (!v2)
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(result, a2);
  }

  v3 = *v2;
  if (v3 >= result[3])
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(result, a2);
  }

  v4 = v2 + 2;
  v5 = result[2];
  if (v5 < v3)
  {
    *&v4[2 * v3] = *&v4[2 * v5];
  }

  *&v4[2 * v5] = a2;
  result[2] = v5 + 1;
  ++**(result + 2);
  return result;
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::UnsafeArenaAddAllocated<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(unsigned int *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 2);
  if (!v4)
  {
    v5 = result[3];
    goto LABEL_11;
  }

  v5 = result[2];
  v6 = result[3];
  if (v5 == v6)
  {
LABEL_11:
    result = google::protobuf::internal::RepeatedPtrFieldBase::Reserve(result, v5 + 1);
    goto LABEL_12;
  }

  v7 = *v4;
  if (v7 != v6)
  {
    if (v5 >= v7)
    {
      v9 = v7 + 1;
      goto LABEL_13;
    }

    *&v4[2 * v7 + 2] = *&v4[2 * v5 + 2];
LABEL_12:
    v4 = *(v3 + 2);
    v9 = *v4 + 1;
LABEL_13:
    *v4 = v9;
    goto LABEL_14;
  }

  result = *&v4[2 * v5 + 2];
  if (result)
  {
    v8 = *v3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    result = (*(*result + 8))(result);
    v4 = *(v3 + 2);
  }

LABEL_14:
  v10 = v3[2];
  v3[2] = v10 + 1;
  *&v4[2 * v10 + 2] = a2;
  return result;
}

void google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::Clear(void)::$_0>(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    do
    {
      google::protobuf::internal::ExtensionSet::Extension::Clear((v3 + 5));
      v4 = v3[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v3[2];
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }
}

google::protobuf::internal::ExtensionSet *google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::MergeFrom(google::protobuf::internal::ExtensionSet const&)::$_0>(void *a1, void *a2, google::protobuf::internal::ExtensionSet *this)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(this, *(v5 + 8), (v5 + 5));
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return this;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadString(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 8) - a2 + 16 >= a3)
  {
    v6 = a3;
    MEMORY[0x1CCA95920](a4, a2, a3);
    return (a2 + v6);
  }

  else
  {

    return google::protobuf::internal::EpsCopyInputStream::ReadStringFallback();
  }
}

google::protobuf::internal *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, __int128 *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v5 = v7;
  }

  else
  {
    result = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v8 - result;
  if (v5 <= v8 - result)
  {
LABEL_15:
    v15 = result + v5;
    v16 = a3[1];
    v18 = *a3;
    v19 = v16;
    v20 = *(a3 + 4);
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(result, v15, &v18);
    if (v15 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      v10 = a3[1];
      v18 = *a3;
      v19 = v10;
      v20 = *(a3 + 4);
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(result, v8, &v18);
      if (!result)
      {
        break;
      }

      v11 = result - *(a1 + 8);
      if (v11 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v18, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v21, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v18);
      }

      v13 = v5 - v9;
      if (v5 - v9 <= 16)
      {
        v23 = 0;
        v22 = 0;
        v21 = **(a1 + 8);
        v17 = a3[1];
        v18 = *a3;
        v19 = v17;
        v20 = *(a3 + 4);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>((&v21 + v11), &v21 + v13, &v18) != (&v21 + v13))
        {
          return 0;
        }

        return (*(a1 + 8) + v13);
      }

      v5 = v5 - v9 - v11;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v14 = google::protobuf::internal::LogMessage::operator<<(&v18, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v21, &v14->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v18);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      result = (result + v11);
      v8 = *(a1 + 8);
      v9 = v8 - result;
      if (v5 <= v8 - result)
      {
        goto LABEL_15;
      }
    }
  }

  return result;
}

unsigned __int8 *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::PackedEnumParserArg<std::string>(void *,char const*,google::protobuf::internal::ParseContext *,BOOL (*)(void const*,int),void const*,google::protobuf::internal::InternalMetadata *,int)::{lambda(unsigned long long)#1}>(google::protobuf::internal *this, unint64_t a2, unsigned int **a3)
{
  v3 = this;
  if (this < a2)
  {
    do
    {
      v6 = *v3;
      if ((v6 & 0x8000000000000000) != 0)
      {
        v7 = (v3[1] << 7) + v6;
        v6 = (v7 - 128);
        if (v3[1] < 0)
        {
          v3 = google::protobuf::internal::VarintParseSlow64(v3, (v7 - 128));
          if (!v3)
          {
            return v3;
          }

          v6 = v8;
        }

        else
        {
          v3 += 2;
        }
      }

      else
      {
        ++v3;
      }

      if ((a3[1])(a3[2], v6))
      {
        v9 = *a3;
        v10 = **a3;
        if (v10 == (*a3)[1])
        {
          v11 = v10 + 1;
          google::protobuf::RepeatedField<int>::Reserve(*a3, v10 + 1);
          *(google::protobuf::RepeatedField<int>::elements(v9) + 4 * v10) = v6;
        }

        else
        {
          *(google::protobuf::RepeatedField<int>::elements(*a3) + 4 * v10) = v6;
          v11 = v10 + 1;
        }

        *v9 = v11;
      }

      else
      {
        v12 = *(a3 + 8);
        v13 = a3[3];
        if (*v13)
        {
          v14 = ((*v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
        }

        else
        {
          v14 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(v13);
        }

        google::protobuf::internal::WriteVarint(v12, v6, v14);
      }
    }

    while (v3 < a2);
  }

  return v3;
}

char *google::protobuf::internal::EpsCopyInputStream::InitFrom(uint64_t a1, char *__src, int64_t __n)
{
  *(a1 + 84) = 0;
  if (__n >= 17)
  {
    *(a1 + 28) = 16;
    v6 = &__src[__n - 16];
    *a1 = v6;
    *(a1 + 8) = v6;
    *(a1 + 16) = a1 + 40;
    if (*(a1 + 72) != 1)
    {
      return __src;
    }

    v7 = 2;
    v8 = __src;
    goto LABEL_6;
  }

  v8 = (a1 + 40);
  memcpy((a1 + 40), __src, __n);
  *(a1 + 28) = 0;
  *a1 = &v8[__n];
  *(a1 + 8) = &v8[__n];
  *(a1 + 16) = 0;
  if (*(a1 + 72) == 1)
  {
    v7 = __src - v8;
LABEL_6:
    *(a1 + 72) = v7;
  }

  return v8;
}

void *google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::ByteSize(void)::$_0>(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += google::protobuf::internal::ExtensionSet::Extension::ByteSize(v5 + 5, *(v5 + 8));
      v6 = v5[1];
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
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: (n) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  else if (v1)
  {
    v3 = (*(a1 + 16) + 8);
    do
    {
      v4 = *v3++;
      (*(*v4 + 40))(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_1C9F2EE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<google::protobuf::MessageLite>::TypeHandler>(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          (*(**v3 + 8))(*v3);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_unique_key_args<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(uint64_t a1, int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__emplace_hint_unique_key_args<int,std::pair<int const,google::protobuf::internal::ExtensionSet::Extension>>(void *a1, uint64_t *a2, int *a3)
{
  v3 = *std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__find_equal<int>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__map_value_compare<int,std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::less<int>,true>,std::allocator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>>>::__find_equal<int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t google::protobuf::internal::ExtensionSet::~ExtensionSet(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    std::__tree<unsigned long>::destroy(a2, *(a2 + 8));

    JUMPOUT(0x1CCA95C50);
  }

  return result;
}

uint64_t google::protobuf::internal::ExtensionSet::MutableRawRepeatedField(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_4(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_4(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_4(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_4(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_4(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_4(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_4(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_4(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_4(a1);
}

uint64_t google::protobuf::internal::ExtensionSet::GrowCapacity(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_1_4(a1);
}

{
  v1 = OUTLINED_FUNCTION_1_4(a1);
}

void google::protobuf::internal::DestroyString(void **this, const void *a2)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void google::protobuf::internal::InitProtobufDefaultsSlow(google::protobuf::internal *this)
{
  {
    google::protobuf::internal::fixed_address_empty_string = 0;
    unk_1EC432030 = 0;
    qword_1EC432038 = 0;
    google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyString, &google::protobuf::internal::fixed_address_empty_string, v1);
    atomic_store(1u, &google::protobuf::internal::init_protobuf_defaults_state);
  }
}

uint64_t google::protobuf::internal::GenericSwap(google::protobuf::internal *this, google::protobuf::MessageLite *a2, google::protobuf::MessageLite *a3)
{
  v5 = (*(*this + 24))(this, a2, a3);
  (*(*v5 + 64))(v5, this);
  (*(*this + 40))(this);
  (*(*this + 64))(this, a2);
  (*(*a2 + 40))(a2);
  (*(*a2 + 64))(a2, v5);
  v6 = *(*v5 + 8);

  return v6(v5);
}

void google::protobuf::internal::InitSCCImpl(_DWORD *a1)
{
  {
    google::protobuf::internal::InitSCCImpl();
  }

  v2 = pthread_self();
  v3 = v2;
  if (google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::runner == v2)
  {
    if (*a1 != 1)
    {
      google::protobuf::internal::LogMessage::LogMessage(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 785);
      v4 = google::protobuf::internal::LogMessage::operator<<(v6, "CHECK failed: (scc->visit_status.load(std::memory_order_relaxed)) == (SCCInfoBase::kRunning): ");
      google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v6[0].__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((atomic_load_explicit(&google::protobuf::internal::init_protobuf_defaults_state, memory_order_acquire) & 1) == 0)
    {
      google::protobuf::internal::InitProtobufDefaultsSlow(v2);
    }

    std::mutex::lock(&google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::mu);
    google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::runner = v3;
    google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::runner = 0;

    std::mutex::unlock(&google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::mu);
  }
}

void sub_1C9F2FA48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

_DWORD *google::protobuf::internal::anonymous namespace::InitSCC_DFS(_DWORD *result)
{
  if (*result == -1)
  {
    v1 = result;
    *result = 1;
    v2 = result + 6;
    v3 = result[1];
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        if (*&v2[2 * i])
        {
          v3 = *(v1 + 1);
        }
      }
    }

    v5 = v3;
    v6 = *(v1 + 2);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = &v2[2 * v5];
      do
      {
        if (**&v8[2 * v7])
        {
          v6 = *(v1 + 2);
        }

        ++v7;
      }

      while (v7 < v6);
    }

    result = v1[2]();
    atomic_store(0, v1);
  }

  return result;
}

void google::protobuf::internal::InitSCCImpl()
{
  {
    __cxa_atexit(google::protobuf::internal::WrappedMutex::~WrappedMutex, &google::protobuf::internal::InitSCCImpl(google::protobuf::internal::SCCInfoBase *)::mu, &dword_1C9B70000);
  }
}

void google::protobuf::MessageLite::LogInitializationErrorMessage(google::protobuf::MessageLite *this)
{
  google::protobuf::internal::LogMessage::LogMessage(v5, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 133);
  v2 = google::protobuf::internal::LogMessage::operator<<(v5, &__p);
  google::protobuf::internal::LogFinisher::operator=(&v3, &v2->__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
}

void sub_1C9F2FC74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

void google::protobuf::anonymous namespace::InitializationErrorMessage(const std::string::value_type *this@<X0>, const char *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a3, "Can't ");
  std::string::append(a3, this);
  std::string::append(a3, " message of type ");
  (*(*a2 + 16))(&__p, a2);
  if ((v13 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v8 = v13;
  }

  else
  {
    v8 = v12;
  }

  std::string::append(a3, p_p, v8);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  std::string::append(a3, " because it is missing required fields: ");
  (*(*a2 + 56))(&__p, a2);
  if ((v13 & 0x80u) == 0)
  {
    v9 = &__p;
  }

  else
  {
    v9 = __p;
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = v12;
  }

  std::string::append(a3, v9, v10);
  if (v13 < 0)
  {
    operator delete(__p);
  }
}

void sub_1C9F2FDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::MessageLite::ParseFromArray(google::protobuf::MessageLite *this, const void *a2, int a3)
{
  if (a3 < 0)
  {
    google::protobuf::MessageLite::ParseFromArray();
  }

  google::protobuf::MessageLite::ParseFromArray();
  return v4;
}

BOOL google::protobuf::MessageLite::AppendToString(const char *a1, std::string *a2)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 449);
    v4 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: IsInitialized(): ");
    v5 = google::protobuf::internal::LogMessage::operator<<(v4, &__p);
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::MessageLite::AppendPartialToString(a1, a2);
}

void sub_1C9F2FF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  google::protobuf::internal::LogMessage::~LogMessage(&a16);
  _Unwind_Resume(a1);
}

BOOL google::protobuf::MessageLite::AppendPartialToString(uint64_t a1, std::string *a2)
{
  v2 = a2;
  v20 = *MEMORY[0x1E69E9840];
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = (*(*a1 + 72))(a1);
  v6 = v5;
  v7 = v5 >> 31;
  if (v5 >> 31)
  {
    google::protobuf::internal::LogMessage::LogMessage(v16, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 457);
    (*(*a1 + 16))(__p, a1);
    v10 = google::protobuf::internal::LogMessage::operator<<(v16, __p);
    v11 = google::protobuf::internal::LogMessage::operator<<(v10, " exceeded maximum protobuf size of 2GB: ");
    v12 = google::protobuf::internal::LogMessage::operator<<(v11, v6);
    google::protobuf::internal::LogFinisher::operator=(&v14, &v12->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v9 = v16;
    goto LABEL_11;
  }

  std::string::resize(v2, v5 + size, 0);
  if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = v2->__r_.__value_.__r.__words[0];
  }

  *&v16[0].__r_.__value_.__l.__data_ = v2 + size + v6;
  v17 = 0;
  v18 = 0;
  v19 = google::protobuf::io::CodedOutputStream::default_serialization_deterministic_ & 1;
  if (v16[0].__r_.__value_.__r.__words[0] != (*(*a1 + 96))(a1))
  {
    google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 360);
    v8 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: target + size == res: ");
    google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
    v9 = __p;
LABEL_11:
    google::protobuf::internal::LogMessage::~LogMessage(&v9->__r_.__value_.__l.__data_);
  }

  return v7 == 0;
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

void sub_1C9F301F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::internal::OnShutdownRun(google::protobuf::internal *this, void (*a2)(const void *), const void *a3)
{
  v5 = google::protobuf::internal::ShutdownData::get(this);
  std::mutex::lock((v5 + 24));
  v7 = *(v5 + 8);
  v6 = *(v5 + 16);
  if (v7 >= v6)
  {
    v9 = (v7 - *v5) >> 4;
    v10 = v9 + 1;
    if ((v9 + 1) >> 60)
    {
      std::vector<std::unique_ptr<VCPProtoKeypoint>>::__throw_length_error[abi:ne200100]();
    }

    v11 = v6 - *v5;
    if (v11 >> 3 > v10)
    {
      v10 = v11 >> 3;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF0)
    {
      v12 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<void (*)(void const*),void const*>>>(v5, v12);
    }

    v13 = (16 * v9);
    *v13 = this;
    v13[1] = a2;
    v8 = 16 * v9 + 16;
    v14 = *(v5 + 8) - *v5;
    v15 = (16 * v9 - v14);
    memcpy(v15, *v5, v14);
    v16 = *v5;
    *v5 = v15;
    *(v5 + 8) = v8;
    *(v5 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v7 = this;
    v7[1] = a2;
    v8 = (v7 + 2);
  }

  *(v5 + 8) = v8;

  std::mutex::unlock((v5 + 24));
}

uint64_t google::protobuf::internal::ShutdownData::get(google::protobuf::internal::ShutdownData *this)
{
  {
    operator new();
  }

  return google::protobuf::internal::ShutdownData::get(void)::data;
}

google::protobuf::internal::ShutdownData *google::protobuf::ShutdownProtobufLibrary(google::protobuf::internal::ShutdownData *this)
{
  if ((google::protobuf::ShutdownProtobufLibrary(void)::is_shutdown & 1) == 0)
  {
    this = google::protobuf::internal::ShutdownData::get(this);
    if (this)
    {
      google::protobuf::internal::ShutdownData::~ShutdownData(this);
      this = MEMORY[0x1CCA95C50]();
    }

    google::protobuf::ShutdownProtobufLibrary(void)::is_shutdown = 1;
  }

  return this;
}

void google::protobuf::internal::ShutdownData::~ShutdownData(google::protobuf::internal::ShutdownData *this)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = v3 - 2;
  if (*this != v3 && v4 > v2)
  {
    do
    {
      v6 = *v2;
      *v2 = *v4;
      *v4 = v6;
      v7 = v2[1];
      v2[1] = v4[1];
      v4[1] = v7;
      v2 += 2;
      v4 -= 2;
    }

    while (v2 < v4);
    v2 = *this;
    v3 = *(this + 1);
  }

  while (v2 != v3)
  {
    (*v2)(v2[1]);
    v2 += 2;
  }

  std::mutex::~mutex((this + 24));
  v8 = *this;
  if (*this)
  {
    *(this + 1) = v8;
    operator delete(v8);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<void (*)(void const*),void const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t google::protobuf::MessageLite::ParseFromArray()
{
  OUTLINED_FUNCTION_9_0();
  (*(v1 + 40))(v2);
  result = google::protobuf::internal::MergeFromImpl<false>();
  *v0 = result;
  return result;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::Next(google::protobuf::internal::EpsCopyInputStream *this)
{
  if (*(this + 7) <= 16)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 158);
    v2 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: limit_ > kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&v6, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v7[0].__r_.__value_.__l.__data_);
  }

  result = google::protobuf::internal::EpsCopyInputStream::NextBuffer(this, 0, -1);
  v4 = *(this + 1);
  if (result)
  {
    v5 = *(this + 7) + result - v4;
    *(this + 7) = v5;
    v4 += v5 & (v5 >> 31);
  }

  else
  {
    *(this + 20) = 1;
  }

  *this = v4;
  return result;
}

void sub_1C9F306B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::NextBuffer(google::protobuf::internal::EpsCopyInputStream *this, unsigned int a2, int a3)
{
  v3 = *(this + 2);
  if (!v3)
  {
    return 0;
  }

  v5 = (this + 40);
  if (v3 != (this + 40))
  {
    v6 = *(this + 6);
    if (v6 <= 16)
    {
      google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 105);
      v7 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: size_ > kSlopBytes: ");
      google::protobuf::internal::LogFinisher::operator=(&__src, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
      v3 = *(this + 2);
      v6 = *(this + 6);
    }

    *(this + 1) = v3 + v6 - 16;
    *(this + 2) = v5;
    if (*(this + 9) == 1)
    {
      *(this + 9) = 2;
    }

    return v3;
  }

  *v5 = **(this + 1);
  if (*(this + 21) < 1)
  {
    goto LABEL_23;
  }

  v8 = a3;
  if (a3 < 0)
  {
    goto LABEL_16;
  }

  if ((a2 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 53);
    v11 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: overrun >= 0: ");
    google::protobuf::internal::LogFinisher::operator=(&__src, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
LABEL_27:
    v16 = this + 56;
    v17 = v5 + a2;
    v18 = v17;
    while (1)
    {
      v19 = *v18++;
      v20 = v19;
      if (v19 < 0)
      {
        v20 = v20 + (*v18 << 7) - 128;
        if (*v18 < 0)
        {
          v18 = v17 + 3;
          v25 = -21;
          while (1)
          {
            v20 += (*(v18 - 1) - 1) << (v25 + 35);
            if ((*(v18 - 1) & 0x80000000) == 0)
            {
              break;
            }

            ++v18;
            v25 += 7;
            if (!v25)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v18 = v17 + 2;
        }
      }

      if (v18 > v16)
      {
        goto LABEL_16;
      }

      if (!v20)
      {
        goto LABEL_23;
      }

      v21 = v20 & 7;
      if (v21 > 2)
      {
        switch(v21)
        {
          case 3:
            ++v8;
            break;
          case 4:
            v24 = __OFSUB__(v8--, 1);
            if (v8 < 0 != v24)
            {
              goto LABEL_23;
            }

            break;
          case 5:
            v18 += 4;
            break;
          default:
            goto LABEL_16;
        }
      }

      else if (v21)
      {
        if (v21 == 1)
        {
          v18 += 8;
        }

        else
        {
          v22 = *v18;
          if (*v18 < 0)
          {
            SizeFallback = google::protobuf::internal::ReadSizeFallback(v18, v22);
            if (!SizeFallback)
            {
              goto LABEL_16;
            }
          }

          else
          {
            SizeFallback = v18 + 1;
          }

          if (v16 - SizeFallback < v22)
          {
            goto LABEL_16;
          }

          v18 = &SizeFallback[v22];
        }
      }

      else
      {
        v34[0].__r_.__value_.__r.__words[0] = 0;
        v18 = google::protobuf::internal::VarintParse<unsigned long long>(v18, v34);
        if (!v18)
        {
          goto LABEL_16;
        }
      }

      v17 = v18;
      if (v18 >= v16)
      {
        goto LABEL_16;
      }
    }
  }

  if (a2 >= 0x11)
  {
    google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 54);
    v10 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: overrun <= kSlopBytes: ");
    google::protobuf::internal::LogFinisher::operator=(&__src, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
    goto LABEL_16;
  }

  if (a2 != 16)
  {
    goto LABEL_27;
  }

LABEL_16:
  __src = 0;
  if (!(*(**(this + 4) + 16))(*(this + 4), &__src, this + 24))
  {
LABEL_22:
    *(this + 21) = 0;
LABEL_23:
    if (*(this + 9) == 2)
    {
      *(this + 9) = *(this + 1) - v3;
    }

    *(this + 1) = this + 56;
    *(this + 2) = 0;
    *(this + 6) = 0;
    return v5;
  }

  while (1)
  {
    v12 = *(this + 6);
    *(this + 21) -= v12;
    if (v12 >= 17)
    {
      v28 = *(this + 9);
      v27 = (this + 72);
      v26 = v28;
      v29 = (v27 - 2);
      v30 = __src;
      *(v27 - 1) = *__src;
      *(v27 - 7) = v30;
      goto LABEL_59;
    }

    if (v12 >= 1)
    {
      break;
    }

    if (v12)
    {
      google::protobuf::internal::LogMessage::LogMessage(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 137);
      v13 = google::protobuf::internal::LogMessage::operator<<(v34, "CHECK failed: size_ == 0: ");
      v14 = google::protobuf::internal::LogMessage::operator<<(v13, *(this + 6));
      google::protobuf::internal::LogFinisher::operator=(&v32, &v14->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v34[0].__r_.__value_.__l.__data_);
    }

    if (((*(**(this + 4) + 16))(*(this + 4), &__src, this + 24) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  memcpy(this + 56, __src, v12);
  v31 = *(this + 9);
  v27 = (this + 72);
  v26 = v31;
  v29 = v5 + v12;
  *(v27 - 7) = v5;
LABEL_59:
  *(v27 - 8) = v29;
  if (v26 > 1)
  {
    *v27 = 1;
  }

  return v5;
}

void sub_1C9F30ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::EpsCopyInputStream::DoneFallback(google::protobuf::internal::EpsCopyInputStream *this, signed int a2, int a3)
{
  v3 = *(this + 7);
  if (v3 < a2)
  {
    return 0;
  }

  v5 = a2;
  if (v3 == a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 175);
    v7 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: overrun != limit_: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v7->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    v3 = *(this + 7);
  }

  if (v3 <= v5)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 176);
    v8 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: overrun < limit_: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    v3 = *(this + 7);
  }

  if (*this != *(this + 1) + (v3 & (v3 >> 31)))
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 181);
    v9 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: limit_end_ == buffer_end_ + (std::min)(0, limit_): ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v9->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    v3 = *(this + 7);
  }

  if (v3 <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 183);
    v10 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: limit_ > 0: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v10->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  if (*this != *(this + 1))
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 184);
    v11 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: limit_end_ == buffer_end_: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v11->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  while (1)
  {
    if (v5 < 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 188);
      v12 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: overrun >= 0: ");
      google::protobuf::internal::LogFinisher::operator=(&v18, &v12->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
    }

    Buffer = google::protobuf::internal::EpsCopyInputStream::NextBuffer(this, v5, a3);
    if (!Buffer)
    {
      break;
    }

    v14 = *(this + 1);
    v15 = *(this + 7) + Buffer - v14;
    *(this + 7) = v15;
    result = Buffer + v5;
    v5 = result - v14;
    if (result - v14 < 0)
    {
      *this = v14 + (v15 & (v15 >> 31));
      return result;
    }
  }

  if (v5)
  {
    return 0;
  }

  if (*(this + 7) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 193);
    v17 = google::protobuf::internal::LogMessage::operator<<(v19, "CHECK failed: limit_ > 0: ");
    google::protobuf::internal::LogFinisher::operator=(&v18, &v17->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v19[0].__r_.__value_.__l.__data_);
  }

  result = *(this + 1);
  *this = result;
  *(this + 20) = 1;
  return result;
}

void sub_1C9F30DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::SkipFallback(google::protobuf::internal::EpsCopyInputStream *this, const char *a2, int a3)
{
  v5 = *(this + 2) - a2 + 16;
  while (1)
  {
    v6 = __OFSUB__(a3, v5);
    a3 -= v5;
    if ((a3 < 0) ^ v6 | (a3 == 0))
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 323);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: size > chunk_size: ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    if (!*(this + 2) || *(this + 7) < 17)
    {
      break;
    }

    result = google::protobuf::internal::EpsCopyInputStream::Next(this);
    if (!result)
    {
      return result;
    }

    v5 = *(this + 2) - result;
    if (a3 <= v5)
    {
      return (result + a3 + 16);
    }
  }

  return 0;
}

void sub_1C9F30EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::WriteVarint(int a1, unint64_t a2, std::string *this)
{
  v5 = (8 * a1);
  if (v5 < 0x80)
  {
    LOBYTE(v6) = 8 * a1;
  }

  else
  {
    do
    {
      std::string::push_back(this, v5 | 0x80);
      v6 = v5 >> 7;
      v7 = v5 >> 14;
      v5 >>= 7;
    }

    while (v7);
  }

  std::string::push_back(this, v6);
  if (a2 < 0x80)
  {
    LOBYTE(v8) = a2;
  }

  else
  {
    do
    {
      std::string::push_back(this, a2 | 0x80);
      v8 = a2 >> 7;
      v9 = a2 >> 14;
      a2 >>= 7;
    }

    while (v9);
  }

  std::string::push_back(this, v8);
}

char *google::protobuf::internal::VarintParseSlow32(google::protobuf::internal *this, const char *a2)
{
  result = this + 3;
  v4 = -21;
  while (1)
  {
    LODWORD(a2) = ((*(result - 1) - 1) << (v4 + 35)) + a2;
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = this + 6;
      v6 = 5;
      result = 0;
      while (*(v5 - 1) < 0)
      {
        ++v5;
        if (!--v6)
        {
          return result;
        }
      }

      return v5;
    }
  }

  return result;
}

uint64_t google::protobuf::internal::VarintParseSlow64(google::protobuf::internal *this, unint64_t a2)
{
  a2 = a2;
  result = this + 3;
  v4 = this + 2;
  v5 = 14;
  while (1)
  {
    v6 = *v4++;
    a2 += (v6 - 1) << v5;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (v5 == 70)
    {
      return 0;
    }
  }

  return result;
}

uint64_t google::protobuf::internal::ReadTagFallback(google::protobuf::internal *this, const char *a2)
{
  result = this + 3;
  v4 = this + 2;
  v5 = -21;
  while (1)
  {
    v6 = *v4++;
    LODWORD(a2) = ((v6 - 1) << (v5 + 35)) + a2;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

char *google::protobuf::internal::InlineGreedyStringParser(uint64_t a1, google::protobuf::internal *this, uint64_t a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadString(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<unsigned int>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned int>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<int>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<int>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<unsigned long long>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned long long>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<long long>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<long long>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<float>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<float>(a3, v6, v5, a1);
}

char *google::protobuf::internal::FixedParser<double>(int *a1, google::protobuf::internal *this, google::protobuf::internal::EpsCopyInputStream *a3)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = this + 1;
  }

  return google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<double>(a3, v6, v5, a1);
}

char *google::protobuf::internal::WireFormatParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(google::protobuf::internal::UnknownFieldLiteParserHelper *a1, char *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v10 = a2;
  while (1)
  {
    if (google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v10, *(this + 23)))
    {
      return v10;
    }

    v5 = v10 + 1;
    v6 = *v10;
    if (*v10 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v5 = v10 + 3;
        v8 = -21;
        while (1)
        {
          v6 += (*(v5 - 1) - 1) << (v8 + 35);
          if ((*(v5 - 1) & 0x80000000) == 0)
          {
            break;
          }

          ++v5;
          v8 += 7;
          if (!v8)
          {
            return 0;
          }
        }
      }

      else
      {
        v5 = v10 + 2;
      }
    }

    v10 = v5;
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v10 = google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(v6, a1, v5);
    if (!v10)
    {
      return 0;
    }
  }

  *(this + 20) = v6 - 1;
  return v5;
}

google::protobuf::internal *google::protobuf::internal::FieldParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(unint64_t a1, std::string *this, google::protobuf::internal *a3, int32x2_t *a4)
{
  v4 = a1 >> 3;
  if (!(a1 >> 3))
  {
    return 0;
  }

  v5 = a3;
  v7 = a1;
  result = 0;
  v9 = v7 & 7;
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        google::protobuf::internal::LogMessage::LogMessage(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 758);
        v10 = google::protobuf::internal::LogMessage::operator<<(v12, "Can't happen");
        google::protobuf::internal::LogFinisher::operator=(&v11, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v12[0].__r_.__value_.__l.__data_);
      }

      else
      {
        if (v9 != 5)
        {
          return result;
        }

        v5 = (a3 + 4);
        google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed32(this, v4, *a3);
      }

      return v5;
    }

    result = google::protobuf::internal::UnknownFieldLiteParserHelper::ParseGroup(this, v4, a3, a4);
    if (!result)
    {
      return result;
    }

    return result;
  }

  if (!v9)
  {
    v12[0].__r_.__value_.__r.__words[0] = 0;
    result = google::protobuf::internal::VarintParse<unsigned long long>(a3, v12);
    if (!result)
    {
      return result;
    }

    v5 = result;
    google::protobuf::internal::UnknownFieldLiteParserHelper::AddVarint(this, v4, v12[0].__r_.__value_.__r.__words[0]);
    return v5;
  }

  if (v9 == 1)
  {
    v5 = (a3 + 8);
    google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed64(this, v4, *a3);
    return v5;
  }

  result = google::protobuf::internal::UnknownFieldLiteParserHelper::ParseLengthDelimited(this, v4, a3, a4);
  if (result)
  {
    return result;
  }

  return result;
}

void sub_1C9F316B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::VarintParse<unsigned long long>(char *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = v2 & 0x7F | (a1[1] << 7);
    if (a1[1] < 0)
    {
      result = a1 + 3;
      v5 = 14;
      while (1)
      {
        v4 += (*(result - 1) - 1) << v5;
        if ((*(result - 1) & 0x80000000) == 0)
        {
          break;
        }

        ++result;
        v5 += 7;
        if (v5 == 70)
        {
          result = 0;
          v4 = 0;
          break;
        }
      }

      *a2 = v4;
    }

    else
    {
      *a2 = v4;
      return a1 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a1 + 1;
  }

  return result;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v5 = v14;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v15, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v16.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v16, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v15, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v16.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

void sub_1C9F31938(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<int>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<int>::elements(a3) + 4 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<int>::elements(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v5 = v14;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v15, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v16.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v16, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v15, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v16.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

void sub_1C9F31C08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned int,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<unsigned int>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<unsigned int>::elements(a3) + 4 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<unsigned int>::elements(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v5 = v14;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v15, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v16.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v16, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v15, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v16.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

void sub_1C9F31ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<long long>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<long long>::elements(a3) + 8 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<long long>::elements(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v5 = v14;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v15, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v16.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v16, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v15, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v16.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

void sub_1C9F321A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<unsigned long long,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<unsigned long long>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<unsigned long long>::elements(a3) + 8 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<unsigned long long>::elements(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v5 = v14;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v15, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v16.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v16, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v15, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v16.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

void sub_1C9F32478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<int,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<int>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<int>::elements(a3) + 4 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<int>::elements(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v5 = v14;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v15, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v16.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v16, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v15, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v16.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

void sub_1C9F32754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<long long,true>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<long long>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<long long>::elements(a3) + 8 * v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<long long>::elements(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *google::protobuf::internal::EpsCopyInputStream::ReadPackedVarint<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(uint64_t a1, google::protobuf::internal *this, int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, *this);
    if (!result)
    {
      return result;
    }

    v5 = v14;
  }

  else
  {
    result = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = google::protobuf::internal::LogMessage::operator<<(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        google::protobuf::internal::LogFinisher::operator=(&v15, &v10->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v16.__r_.__value_.__l.__data_);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        google::protobuf::internal::LogMessage::LogMessage(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = google::protobuf::internal::LogMessage::operator<<(&v16, "CHECK failed: (size) > (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v15, &v12->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v16.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

void sub_1C9F32A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ReadPackedVarintArray<char const* google::protobuf::internal::VarintParser<BOOL,false>(void *,char const*,google::protobuf::internal::ParseContext *)::{lambda(unsigned long long)#1}>(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = google::protobuf::internal::VarintParse<unsigned long long>(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10 != 0;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      google::protobuf::RepeatedField<BOOL>::Reserve(a3, v7 + 1);
      *(google::protobuf::RepeatedField<BOOL>::elements(a3) + v7) = v6;
    }

    else
    {
      *(google::protobuf::RepeatedField<BOOL>::elements(a3) + v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned int>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<unsigned int>::Reserve(a4, *a4 + (v5 >> 2));
    v11 = google::protobuf::RepeatedField<unsigned int>::AddNAlreadyReserved(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<unsigned int>::Reserve(a4, *a4 + (v7 >> 2));
      v9 = google::protobuf::RepeatedField<unsigned int>::AddNAlreadyReserved(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = result - (v7 & 3) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<int>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<int>::Reserve(a4, *a4 + (v5 >> 2));
    v11 = google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<int>::Reserve(a4, *a4 + (v7 >> 2));
      v9 = google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = result - (v7 & 3) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<unsigned long long>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<unsigned long long>::Reserve(a4, *a4 + (v5 >> 3));
    v11 = google::protobuf::RepeatedField<unsigned long long>::AddNAlreadyReserved(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<unsigned long long>::Reserve(a4, *a4 + (v7 >> 3));
      v9 = google::protobuf::RepeatedField<unsigned long long>::AddNAlreadyReserved(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = result - (v7 & 7) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<long long>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<long long>::Reserve(a4, *a4 + (v5 >> 3));
    v11 = google::protobuf::RepeatedField<long long>::AddNAlreadyReserved(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<long long>::Reserve(a4, *a4 + (v7 >> 3));
      v9 = google::protobuf::RepeatedField<long long>::AddNAlreadyReserved(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = result - (v7 & 7) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<float>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<float>::Reserve(a4, *a4 + (v5 >> 2));
    v11 = google::protobuf::RepeatedField<float>::AddNAlreadyReserved(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<float>::Reserve(a4, *a4 + (v7 >> 2));
      v9 = google::protobuf::RepeatedField<float>::AddNAlreadyReserved(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = result - (v7 & 3) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadPackedFixed<double>(google::protobuf::internal::EpsCopyInputStream *a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 2) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    google::protobuf::RepeatedField<double>::Reserve(a4, *a4 + (v5 >> 3));
    v11 = google::protobuf::RepeatedField<double>::AddNAlreadyReserved(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      google::protobuf::RepeatedField<double>::Reserve(a4, *a4 + (v7 >> 3));
      v9 = google::protobuf::RepeatedField<double>::AddNAlreadyReserved(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 7) < 17)
      {
        return 0;
      }

      result = google::protobuf::internal::EpsCopyInputStream::Next(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = result - (v7 & 7) + 16;
      v7 = *(a1 + 2) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

void google::protobuf::internal::UnknownFieldLiteParserHelper::AddVarint(std::string **this, int a2, unint64_t a3)
{
  v3 = *this;
  if (*this)
  {
    v6 = (8 * a2);
    if (v6 < 0x80)
    {
      LOBYTE(v7) = 8 * a2;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    v9 = *this;
    if (a3 < 0x80)
    {
      LOBYTE(v10) = a3;
    }

    else
    {
      do
      {
        std::string::push_back(v9, a3 | 0x80);
        v10 = a3 >> 7;
        v11 = a3 >> 14;
        a3 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v9, v10);
  }
}

std::string *google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed64(std::string *this, int a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = this->__r_.__value_.__r.__words[0];
  if (this->__r_.__value_.__r.__words[0])
  {
    v5 = this;
    v6 = (8 * a2) | 1u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 1;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    v9[0] = a3;
    return std::string::append(*v5, v9, 8uLL);
  }

  return this;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::UnknownFieldLiteParserHelper::ParseLengthDelimited(std::string **this, int a2, std::string::value_type *a3, google::protobuf::internal::ParseContext *a4)
{
  v7 = *a3;
  if (*a3 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, *a3);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v19;
  }

  else
  {
    v8 = a3 + 1;
  }

  v9 = *this;
  if (*this)
  {
    v10 = (8 * a2) | 2u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v11) = (8 * a2) | 2;
    }

    else
    {
      do
      {
        std::string::push_back(v9, v10 | 0x80);
        v11 = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }

    std::string::push_back(v9, v11);
    v14 = v7;
    v15 = *this;
    if (v7 < 0x80)
    {
      LOBYTE(v16) = v7;
    }

    else
    {
      do
      {
        std::string::push_back(v15, v14 | 0x80);
        v16 = v14 >> 7;
        v17 = v14 >> 14;
        v14 >>= 7;
      }

      while (v17);
    }

    std::string::push_back(v15, v16);
    v18 = *this;

    return google::protobuf::internal::EpsCopyInputStream::AppendString(a4, v8, v7, v18);
  }

  else if (*(a4 + 1) - v8 + 16 >= v7)
  {
    return &v8[v7];
  }

  else
  {

    return google::protobuf::internal::EpsCopyInputStream::SkipFallback(a4, v8, v7);
  }
}

char *google::protobuf::internal::UnknownFieldLiteParserHelper::ParseGroup(std::string **this, int a2, char *a3, int32x2_t *a4)
{
  v7 = *this;
  v8 = 8 * a2;
  if (*this)
  {
    v9 = v8 | 3;
    if (v8 < 0x80)
    {
      LOBYTE(v10) = v8 | 3;
    }

    else
    {
      do
      {
        std::string::push_back(v7, v9 | 0x80);
        v10 = v9 >> 7;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v7, v10);
  }

  v12 = a4[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a4[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  ++a4[11].i32[1];
  v14 = google::protobuf::internal::WireFormatParser<google::protobuf::internal::UnknownFieldLiteParserHelper>(this, a3, a4);
  a4[11] = vadd_s32(a4[11], 0xFFFFFFFF00000001);
  v15 = a4[10].i32[0];
  a4[10].i32[0] = 0;
  if (v15 != (v8 | 3) || v14 == 0)
  {
    return 0;
  }

  v17 = v14;
  v18 = *this;
  if (v18)
  {
    v19 = v8 | 4;
    if (v8 < 0x80)
    {
      LOBYTE(v20) = v8 | 4;
    }

    else
    {
      do
      {
        std::string::push_back(v18, v19 | 0x80);
        v20 = v19 >> 7;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
    }

    std::string::push_back(v18, v20);
  }

  return v17;
}

std::string *google::protobuf::internal::UnknownFieldLiteParserHelper::AddFixed32(std::string *this, int a2, int a3)
{
  v3 = this->__r_.__value_.__r.__words[0];
  if (this->__r_.__value_.__r.__words[0])
  {
    v5 = this;
    v6 = (8 * a2) | 5u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 5;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    *__s = a3;
    return std::string::append(*v5, __s, 4uLL);
  }

  return this;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::AppendString(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  if (*(a1 + 8) - __s + 16 < a3)
  {

    return google::protobuf::internal::EpsCopyInputStream::AppendStringFallback();
  }

  else
  {
    v5 = a3;
    std::string::append(this, __s, a3);
    return &__s[v5];
  }
}

void OUTLINED_FUNCTION_0_6(uint64_t a1@<X8>)
{
  if (v1 >= 50000000)
  {
    v4 = 50000000;
  }

  else
  {
    v4 = v1;
  }

  std::string::reserve(v2, a1 + v4);
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return google::protobuf::internal::LogMessage::LogMessage(va, 3, v2, 323);
}

std::string *OUTLINED_FUNCTION_4_1(uint64_t a1, uint64_t a2, std::string::size_type a3)
{

  return std::string::append(v3, v4, a3);
}

void google::protobuf::RepeatedField<BOOL>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<BOOL>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v13, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v12, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v13[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<BOOL>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  if (v6)
  {
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, (v3 + 15) & 0xFFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v3 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<BOOL>::elements(a1);
  if (*a1 >= 1)
  {
    v11 = google::protobuf::RepeatedField<BOOL>::elements(a1);
    memcpy(v11, v5 + 1, *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1C9F33888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1C9F33948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<BOOL>::elements(a1) + a2;
}

void sub_1C9F33A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<BOOL>::elements(a1) + a2;
}

void sub_1C9F33B00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<BOOL>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<BOOL>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<BOOL>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_1C9F33BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<BOOL>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<BOOL>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<BOOL>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<BOOL>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<BOOL>::elements(a2);
    memcpy(v6, v8, *a2);
  }
}

void sub_1C9F33D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<int>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<int>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<int>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<int>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<int>::elements(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1C9F33EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1C9F33F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<int>::elements(a1) + 4 * a2;
}

void sub_1C9F34048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<int>::elements(a1) + 4 * a2;
}

void sub_1C9F34128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<int>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<int>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<int>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_1C9F34208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<int>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<int>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<int>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<int>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<int>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }
}

void sub_1C9F34330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned int>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<unsigned int>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<unsigned int>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<unsigned int>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<unsigned int>::elements(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1C9F344DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1C9F3459C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned int>::elements(a1) + 4 * a2;
}

void sub_1C9F34674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned int>::elements(a1) + 4 * a2;
}

void sub_1C9F34754(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned int>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<unsigned int>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<unsigned int>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_1C9F34834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned int>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<unsigned int>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<unsigned int>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<unsigned int>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<unsigned int>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }
}

void sub_1C9F3495C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<long long>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<long long>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<long long>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<long long>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<long long>::elements(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1C9F34B08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1C9F34BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<long long>::elements(a1) + 8 * a2;
}

void sub_1C9F34CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<long long>::elements(a1) + 8 * a2;
}

void sub_1C9F34D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<long long>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<long long>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<long long>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_1C9F34E60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<long long>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<long long>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<long long>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<long long>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<long long>::elements(a2);
    memcpy(v6, v8, 8 * *a2);
  }
}

void sub_1C9F34F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned long long>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<unsigned long long>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<unsigned long long>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<unsigned long long>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<unsigned long long>::elements(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1C9F35134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1C9F351F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned long long>::elements(a1) + 8 * a2;
}

void sub_1C9F352CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<unsigned long long>::elements(a1) + 8 * a2;
}

void sub_1C9F353AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<unsigned long long>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<unsigned long long>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_1C9F3548C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<unsigned long long>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<unsigned long long>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<unsigned long long>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<unsigned long long>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<unsigned long long>::elements(a2);
    memcpy(v6, v8, 8 * *a2);
  }
}

void sub_1C9F355B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<float>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<float>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<float>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<float>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<float>::elements(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1C9F35760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1C9F35820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<float>::elements(a1) + 4 * a2;
}

void sub_1C9F358F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<float>::elements(a1) + 4 * a2;
}

void sub_1C9F359D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<float>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<float>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<float>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_1C9F35AB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<float>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<float>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<float>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<float>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<float>::elements(a2);
    memcpy(v6, v8, 4 * *a2);
  }
}

void sub_1C9F35BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<double>::Reserve(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(google::protobuf::RepeatedField<double>::elements(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            google::protobuf::internal::LogMessage::LogMessage(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = google::protobuf::internal::LogMessage::operator<<(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            google::protobuf::internal::LogFinisher::operator=(&v14, &v8->__r_.__value_.__l.__data_);
            google::protobuf::internal::LogMessage::~LogMessage(&v15[0].__r_.__value_.__l.__data_);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (google::protobuf::RepeatedField<double>::elements(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      google::protobuf::RepeatedField<BOOL>::Reserve(v6);
    }

    AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    AlignedNoHook = operator new(v10 + 8);
  }

  *AlignedNoHook = v6;
  a1[1] = v3;
  *(a1 + 1) = AlignedNoHook + 1;
  google::protobuf::RepeatedField<double>::elements(a1);
  if (*a1 >= 1)
  {
    v13 = google::protobuf::RepeatedField<double>::elements(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_1C9F35D8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::AddNAlreadyReserved(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = google::protobuf::internal::LogMessage::operator<<(v5, *(a1 + 4));
    v7 = google::protobuf::internal::LogMessage::operator<<(v6, ", ");
    v8 = google::protobuf::internal::LogMessage::operator<<(v7, *a1);
    google::protobuf::internal::LogFinisher::operator=(&v10, &v8->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1C9F35E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::Mutable(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<double>::elements(a1) + 8 * a2;
}

void sub_1C9F35F24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::Get(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*a1 <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return google::protobuf::RepeatedField<double>::elements(a1) + 8 * a2;
}

void sub_1C9F36004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::RepeatedField<double>::~RepeatedField(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = google::protobuf::RepeatedField<double>::elements(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t google::protobuf::RepeatedField<double>::elements(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = google::protobuf::internal::LogMessage::operator<<(v5, "CHECK failed: (total_size_) > (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v4, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v5[0].__r_.__value_.__l.__data_);
  }

  return *(a1 + 8);
}

void sub_1C9F360E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedField<double>::MergeFrom(int *a1, int *a2)
{
  if (a2 == a1)
  {
    google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v9, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
  }

  if (*a2)
  {
    v5 = *a1;
    google::protobuf::RepeatedField<double>::Reserve(a1, *a1 + *a2);
    google::protobuf::RepeatedField<double>::AddNAlreadyReserved(a1, *a2);
    v6 = google::protobuf::RepeatedField<double>::Mutable(a1, v5);
    if (*a2 <= 0)
    {
      google::protobuf::internal::LogMessage::LogMessage(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = google::protobuf::internal::LogMessage::operator<<(v10, "CHECK failed: (index) < (current_size_): ");
      google::protobuf::internal::LogFinisher::operator=(&v9, &v7->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v10[0].__r_.__value_.__l.__data_);
    }

    v8 = google::protobuf::RepeatedField<double>::elements(a2);
    memcpy(v6, v8, 8 * *a2);
  }
}

void sub_1C9F3620C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::RepeatedPtrField<std::string>::~RepeatedPtrField(ma::QualityAnalysis **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          MEMORY[0x1CCA95C50](v5, 0x1012C40EC159624);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::Reserve(unsigned int *this, int a2)
{
  v2 = this[2];
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v4);
  }

  return this;
}

unsigned int *google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(google::protobuf::internal::RepeatedPtrFieldBase *this, int a2)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  v4 = v2 + a2;
  v5 = *(this + 2);
  if (v3 < v2 + a2)
  {
    v7 = *this;
    v8 = 2 * v3;
    if (2 * v3 <= v4)
    {
      v8 = v4;
    }

    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    if (v7)
    {
      v11 = v10 + 15;
      if (*(v7 + 24))
      {
        google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(*this);
      }

      AlignedNoHook = google::protobuf::Arena::AllocateAlignedNoHook(v7, v11 & 0x7FFFFFFF8);
    }

    else
    {
      AlignedNoHook = operator new(v10 + 8);
    }

    *(this + 2) = AlignedNoHook;
    *(this + 3) = v9;
    if (v5 && (v13 = *v5, v13 >= 1))
    {
      memcpy(AlignedNoHook + 2, v5 + 2, 8 * v13);
      AlignedNoHook = *(this + 2);
      *AlignedNoHook = *v5;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *AlignedNoHook = 0;
      if (!v7)
      {
LABEL_17:
        operator delete(v5);
        AlignedNoHook = *(this + 2);
      }
    }

    v2 = *(this + 2);
    v5 = AlignedNoHook;
  }

  return &v5[2 * v2 + 2];
}

uint64_t sentencepiece::MemoryMappedModelProto::MemoryMappedModelProto(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  *a1 = &unk_1F496C3F8;
  *(a1 + 16) = &unk_1F496C3B8;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_1F496C3B8;
  *(a1 + 40) = 0;
  VCPImageDescriptorWrapper::VCPImageDescriptorWrapper((a1 + 88));
  sentencepiece::MemoryMappedModelProto::Init(a1, a2, a3, &v7);
  sentencepiece::util::Status::operator=((a1 + 88), &v7);
  sentencepiece::util::Status::~Status(&v7);
  return a1;
}

void sub_1C9F36574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sentencepiece::util::Status::~Status(va);
  sentencepiece::util::Status::~Status((v2 + 88));
  _Unwind_Resume(a1);
}

void sentencepiece::MemoryMappedModelProto::Init(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, VCPImageDescriptorWrapper *a4@<X8>)
{
  v12 = a2;
  v13 = a3;
  v11 = 0;
  sentencepiece::mmap_util::DecodePrefix<unsigned int>(a2, a3, &v11, a4);
  if (!*a4)
  {
    sentencepiece::util::Status::~Status(a4);
    sentencepiece::mmap_util::RemovePrefix(&v12, 4uLL, a4);
    if (!*a4)
    {
      sentencepiece::util::Status::~Status(a4);
      *(a1 + 8) = v11;
      v10 = 0;
      sentencepiece::mmap_util::DecodePrefix<unsigned int>(v12, v13, &v10, a4);
      if (!*a4)
      {
        sentencepiece::util::Status::~Status(a4);
        sentencepiece::mmap_util::RemovePrefix(&v12, 4uLL, a4);
        if (!*a4)
        {
          sentencepiece::util::Status::~Status(a4);
          *(a1 + 24) = v10;
          v9 = 0;
          sentencepiece::mmap_util::DecodePrefix<unsigned int>(v12, v13, &v9, a4);
          if (!*a4)
          {
            sentencepiece::util::Status::~Status(a4);
            sentencepiece::mmap_util::RemovePrefix(&v12, 4uLL, a4);
            if (!*a4)
            {
              sentencepiece::util::Status::~Status(a4);
              v6 = v9;
              *(a1 + 48) = 0;
              *(a1 + 40) = v6;
              sentencepiece::mmap_util::DecodePrefix<int>(v12, v13, (a1 + 48), a4);
              if (!*a4)
              {
                sentencepiece::util::Status::~Status(a4);
                sentencepiece::mmap_util::RemovePrefix(&v12, 4uLL, a4);
                if (!*a4)
                {
                  sentencepiece::util::Status::~Status(a4);
                  *(a1 + 56) = v12;
                  v7 = sentencepiece::mmap_util::RoundUp(*(a1 + 48), 4uLL);
                  sentencepiece::mmap_util::RemovePrefix(&v12, v7, a4);
                  if (!*a4)
                  {
                    sentencepiece::util::Status::~Status(a4);
                    *(a1 + 64) = v12;
                    sentencepiece::mmap_util::RemovePrefix(&v12, 4 * *(a1 + 48), a4);
                    if (!*a4)
                    {
                      sentencepiece::util::Status::~Status(a4);
                      *(a1 + 72) = v12;
                      sentencepiece::mmap_util::RemovePrefix(&v12, 4 * *(a1 + 48) + 20, a4);
                      if (!*a4)
                      {
                        sentencepiece::util::Status::~Status(a4);
                        *(a1 + 80) = v12;
                        VCPImageDescriptorWrapper::VCPImageDescriptorWrapper(v8);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sentencepiece::MemoryMappedModelProto::~MemoryMappedModelProto(sentencepiece::MemoryMappedModelProto *this)
{
  *this = &unk_1F496C3F8;
  sentencepiece::util::Status::~Status((this + 88));
}

{
  *this = &unk_1F496C3F8;
  sentencepiece::util::Status::~Status((this + 88));

  JUMPOUT(0x1CCA95C50);
}

uint64_t sentencepiece::MemoryMappedModelProto::UnkSurface(sentencepiece::MemoryMappedModelProto *this)
{
  v1 = *(this + 10);
  v2 = **(this + 9);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sentencepiece::MemoryMappedModelProto::UnkPiece(sentencepiece::MemoryMappedModelProto *this)
{
  v1 = *(this + 10);
  v2 = *(*(this + 9) + 4);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sentencepiece::MemoryMappedModelProto::BosPiece(sentencepiece::MemoryMappedModelProto *this)
{
  v1 = *(this + 10);
  v2 = *(*(this + 9) + 8);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sentencepiece::MemoryMappedModelProto::EosPiece(sentencepiece::MemoryMappedModelProto *this)
{
  v1 = *(this + 10);
  v2 = *(*(this + 9) + 12);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sentencepiece::MemoryMappedModelProto::PadPiece(sentencepiece::MemoryMappedModelProto *this)
{
  v1 = *(this + 10);
  v2 = *(*(this + 9) + 16);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sentencepiece::MemoryMappedModelProto::IdToPiece(sentencepiece::MemoryMappedModelProto *this, int a2)
{
  v2 = *(this + 10);
  v3 = *(*(this + 9) + 4 * (a2 + 5));
  strlen((v2 + v3));
  return v2 + v3;
}

void **tplTrackerResampler_alloc(unint64_t a1, unint64_t a2, float a3)
{
  v6 = malloc_type_calloc(1uLL, 0x68uLL, 0x10100405B433AA0uLL);
  v7 = v6;
  v15 = v6;
  if (v6)
  {
    *(v6 + 18) = fmaxf(a3, 1.0);
    *v6 = a1;
    v6[1] = a2;
    v8 = vcvtps_u32_f32((a1 * a3) * 1.2) + 8;
    v9 = vcvtps_u32_f32((a2 * a3) * 1.2) + 8;
    v6[2] = v8;
    v6[3] = v9;
    v10 = v8 * v9;
    v6[4] = 0;
    v6[5] = 0;
    *(v6 + 76) = 0;
    *(v6 + 92) = 0;
    *(v6 + 84) = 0;
    *(v6 + 100) = 0;
    v11 = malloc_type_calloc(v8 * v9, 1uLL, 0x100004077774924uLL);
    v7[6] = v11;
    if (!v11 || (v12 = malloc_type_calloc(v10, 1uLL, 0x100004077774924uLL), (v7[7] = v12) == 0) || (v13 = malloc_type_calloc(v10, 1uLL, 0x100004077774924uLL), (v7[8] = v13) == 0))
    {
      tplTrackerResampler_free(&v15);
      return v15;
    }
  }

  return v7;
}

void tplTrackerResampler_free(void ***a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      free(v2[6]);
      free(v2[7]);
      free(v2[8]);
      free(v2);
    }

    *a1 = 0;
  }
}

uint64_t tplTrackerResampler_setImage(uint64_t a1, CVPixelBufferRef pixelBuffer, double *a3)
{
  if (!a1)
  {
    return 4294954516;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
  v9 = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
  v11 = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 1uLL);
  if (!*a1)
  {
    return 4294954516;
  }

  v12 = *(a1 + 8);
  if (!v12)
  {
    return 4294954516;
  }

  v13 = v11;
  v14 = a3[4];
  v15 = a3[5];
  v16 = a3[1];
  v17 = v14 - *a3 + 1.0;
  v18 = v15 - v16 + 1.0;
  v19 = v17 / *a1;
  if (v19 <= (v18 / v12))
  {
    v19 = v18 / v12;
  }

  v20 = *(a1 + 72) + -1.0;
  v21 = ((v20 * v17) * 0.5);
  v22 = *a3 - v21;
  v23 = ((v20 * v18) * 0.5);
  v24 = v16 - v23;
  v25 = vcvtms_s32_f32(v24);
  v26 = v14 + v21;
  v27.f32[0] = ceilf(v26);
  v27.i32[1] = floorf(v22);
  v28 = vcvt_s32_f32(v27);
  v27.f32[0] = v15 + v23;
  v29 = vcvtps_s32_f32(v27.f32[0]);
  if (v19 < 1.2)
  {
    v30 = Height - 1;
    v31 = (v25 & 0xFFFFFFFE) - 2;
    if (v31 >= Height - 1)
    {
      v31 = Height - 1;
    }

    v32 = *&v28 & 0xFFFFFFFEFFFFFFFELL;
    if ((v25 & 0xFFFFFFFE) <= 2)
    {
      v33 = 0;
    }

    else
    {
      v33 = v31;
    }

    v34 = vand_s8(vmin_s32(vadd_s32(v32, 0xFFFFFFFE00000004), vdup_n_s32(Width - 1)), vcgt_s32(v32, 0x2FFFFFFFCLL));
    if (((v29 & 0xFFFFFFFE) + 4) < v30)
    {
      v30 = (v29 & 0xFFFFFFFE) + 4;
    }

    v35 = v34.i32[1];
    if ((v29 & 0xFFFFFFFE) <= -4)
    {
      v36 = 0;
    }

    else
    {
      v36 = v30;
    }

    v37 = v34.i32[0] - v34.i32[1] + 1;
    if (*(a1 + 16) >= v37)
    {
      v103 = v9;
      v38 = v36 - v33 + 1;
      if (*(a1 + 24) >= v38)
      {
        v39 = v34.i32[0] - v34.i32[1] + 1;
        *(a1 + 32) = v37;
        *(a1 + 40) = v38;
        *(a1 + 76) = 0x400000003F800000;
        *(a1 + 84) = v34.i32[1];
        *(a1 + 88) = v33;
        *(a1 + 92) = v34.i32[1] + 0.5;
        *(a1 + 96) = v33 + 0.5;
        *(a1 + 100) = 1;
        tplTrackerResampler_cropLuma(BaseAddressOfPlane, Width, Height, BytesPerRowOfPlane, v34.i32[1], v33, v37, v38, *(a1 + 48));
        tplTrackerResampler_cropAndSplitChroma(v13, (Width >> 1), (Height >> 1), v103, v35 >> 1, v33 >> 1, v39 >> 1, v38 >> 1, *(a1 + 56), *(a1 + 64));
        return 0;
      }
    }

    return 4294954516;
  }

  v104 = v9;
  if (v19 < 2.4)
  {
    v40 = Height - 1;
    v41 = (v25 & 0xFFFFFFFE) - 2;
    if (v41 >= Height - 1)
    {
      v41 = Height - 1;
    }

    if ((v25 & 0xFFFFFFFE) <= 2)
    {
      v42 = 0;
    }

    else
    {
      v42 = v41;
    }

    v43 = vand_s8(vmin_s32(vadd_s32((*&v28 & 0xFFFFFFFEFFFFFFFELL), 0xFFFFFFFE00000004), vdup_n_s32(Width - 1)), vcgt_s32((*&v28 & 0xFFFFFFFEFFFFFFFELL), 0x2FFFFFFFCLL));
    if (((v29 & 0xFFFFFFFE) + 4) < v40)
    {
      v40 = (v29 & 0xFFFFFFFE) + 4;
    }

    if ((v29 & 0xFFFFFFFE) <= -4)
    {
      v40 = 0;
    }

    v44 = v43.i32[1];
    v45 = v43.i32[0] - v43.i32[1] + 1;
    if (*(a1 + 16) >= (v45 >> 1))
    {
      v46 = v40 - v42 + 1;
      v47 = v46 >> 1;
      if (*(a1 + 24) >= (v46 >> 1))
      {
        v48 = v45 >> 1;
        *(a1 + 32) = v48;
        *(a1 + 40) = v47;
        *(a1 + 76) = 0x4000000040000000;
        v49 = v43.i32[1] + 0.5;
        *v43.i32 = v42 + 0.5;
        *(a1 + 84) = v49;
        *(a1 + 88) = v43.i32[0];
        *(a1 + 92) = v49;
        *(a1 + 96) = v43.i32[0];
        *(a1 + 100) = 0;
        tplTrackerResampler_lumaDownscale2(BaseAddressOfPlane, Width, Height, BytesPerRowOfPlane, v43.i32[1], v42, v45, v46, *(a1 + 48));
        tplTrackerResampler_cropAndSplitChroma(v13, (Width >> 1), (Height >> 1), v104, v44 >> 1, v42 >> 1, v48, v47, *(a1 + 56), *(a1 + 64));
        return 0;
      }
    }

    return 4294954516;
  }

  if (v19 < 4.8)
  {
    v51 = Height - 1;
    v52 = (v25 & 0xFFFFFFFC) - 4;
    if (v52 >= Height - 1)
    {
      v52 = Height - 1;
    }

    if ((v25 & 0xFFFFFFFC) <= 4)
    {
      v53 = 0;
    }

    else
    {
      v53 = v52;
    }

    v54 = vand_s8(vmin_s32(vadd_s32((*&v28 & 0xFFFFFFFCFFFFFFFCLL), 0xFFFFFFFC00000008), vdup_n_s32(Width - 1)), vcgt_s32((*&v28 & 0xFFFFFFFCFFFFFFFCLL), 0x4FFFFFFF8));
    if (((v29 & 0xFFFFFFFC) + 8) < v51)
    {
      v51 = (v29 & 0xFFFFFFFC) + 8;
    }

    if ((v29 & 0xFFFFFFFC) <= -8)
    {
      v51 = 0;
    }

    v55 = v54.i32[1];
    v56 = v54.i32[0] - v54.i32[1] + 1;
    if (*(a1 + 16) >= (v56 >> 2))
    {
      v57 = v51 - v53 + 1;
      if (*(a1 + 24) >= (v57 >> 2))
      {
        *(a1 + 32) = v56 >> 2;
        *(a1 + 40) = v57 >> 2;
        __asm { FMOV            V0.2S, #4.0 }

        *(a1 + 76) = _D0;
        v62 = v55 + 1.5;
        *&_D0 = v53 + 1.5;
        *(a1 + 84) = v62;
        *(a1 + 88) = _D0;
        *(a1 + 92) = v62;
        *(a1 + 96) = _D0;
        *(a1 + 100) = 0;
        v63 = BaseAddressOfPlane;
        v64 = (Width >> 1);
        v65 = Width;
        v66 = v53;
        tplTrackerResampler_lumaDownscale4(v63, v65, Height, BytesPerRowOfPlane, v55, v53, v56, v57, *(a1 + 48));
        tplTrackerResampler_chromaDownscale2(v13, v64, (Height >> 1), v104, v55 >> 1, v66 >> 1, v56 >> 1, v57 >> 1, *(a1 + 56), *(a1 + 64));
        return 0;
      }
    }

    return 4294954516;
  }

  if (v19 <= 9.6)
  {
    v90 = Height - 1;
    v91 = (v25 & 0xFFFFFFF8) - 8;
    if (v91 >= Height - 1)
    {
      v91 = Height - 1;
    }

    if ((v25 & 0xFFFFFFF8) <= 8)
    {
      v92 = 0;
    }

    else
    {
      v92 = v91;
    }

    v93 = vand_s8(vmin_s32(vadd_s32((*&v28 & 0xFFFFFFF8FFFFFFF8), 0xFFFFFFF800000010), vdup_n_s32(Width - 1)), vcgt_s32((*&v28 & 0xFFFFFFF8FFFFFFF8), 0x8FFFFFFF0));
    if (((v29 & 0xFFFFFFF8) + 16) < v90)
    {
      v90 = (v29 & 0xFFFFFFF8) + 16;
    }

    if ((v29 & 0xFFFFFFF8) <= -16)
    {
      v90 = 0;
    }

    v94 = v93.i32[1];
    v95 = v93.i32[0] - v93.i32[1] + 1;
    if (*(a1 + 16) >= (v95 >> 3))
    {
      v96 = v90 - v92 + 1;
      if (*(a1 + 24) >= (v96 >> 3))
      {
        *(a1 + 32) = v95 >> 3;
        *(a1 + 40) = v96 >> 3;
        *(a1 + 76) = 0x4100000041000000;
        v97 = v93.i32[1] + 3.5;
        *v93.i32 = v92 + 3.5;
        *(a1 + 84) = v97;
        *(a1 + 88) = v93.i32[0];
        *(a1 + 92) = v97;
        *(a1 + 96) = v93.i32[0];
        *(a1 + 100) = 0;
        v98 = BaseAddressOfPlane;
        v99 = (Width >> 1);
        v100 = Width;
        v101 = v92;
        tplTrackerResampler_lumaDownscale8N(v98, v100, Height, BytesPerRowOfPlane, v93.i32[1], v92, v95, v96, 1, *(a1 + 48));
        tplTrackerResampler_chromaDownscale4(v13, v99, (Height >> 1), v104, v94 >> 1, v101 >> 1, v95 >> 1, v96 >> 1, *(a1 + 56), *(a1 + 64));
        return 0;
      }
    }

    return 4294954516;
  }

  v102 = Width >> 1;
  v67 = vcvtps_s32_f32(log2f(v19 / 1.2));
  v68 = vshl_u32(0x100000002, vdup_n_s32(v67));
  v69 = v68.i32[1];
  v70 = Height - 1;
  v71 = -v68.i32[1];
  v72.i32[0] = vadd_s32(v68, v28).u32[0];
  v73 = vsub_s32(v28, v68);
  v74 = (v68.i32[0] + v29) & -v68.i32[1];
  _VF = __OFSUB__(v74, Height - 1);
  if (v74 >= Height - 1)
  {
    v74 = Height - 1;
  }

  if ((((v68.i32[0] + v29) & v71 & 0x80000000) != 0) ^ _VF | (((v68.i32[0] + v29) & v71) == 0))
  {
    v76 = 0;
  }

  else
  {
    v76 = v74;
  }

  v77 = (v25 - v68.i32[1]) & v71;
  v78 = __OFSUB__(v77, v70);
  if (v77 < v70)
  {
    v70 = (v25 - v68.i32[1]) & v71;
  }

  v79 = (((v25 - v68.i32[1]) & v71 & 0x80000000) != 0) ^ v78 | (((v25 - v68.i32[1]) & v71) == 0) ? 0 : v70;
  v72.i32[1] = v73.i32[1];
  v80 = vand_s8(v72, vdup_n_s32(v71));
  v81 = vand_s8(vmin_s32(v80, vdup_n_s32(Width - 1)), vcgtz_s32(v80));
  v82 = v81.i32[1];
  v83 = v81.i32[0] - v81.i32[1] + 1;
  v84 = v83 >> v67;
  if (*(a1 + 16) < (v83 >> v67))
  {
    return 4294954516;
  }

  v85 = v76 - v79 + 1;
  v86 = v85 >> v67;
  if (*(a1 + 24) < v86)
  {
    return 4294954516;
  }

  *(a1 + 32) = v84;
  *(a1 + 40) = v86;
  *(a1 + 76) = v69;
  *(a1 + 80) = v69;
  *v81.i32 = v69 + -1.0;
  v87 = v81.i32[1] + (*v81.i32 * 0.5);
  *v81.i32 = v79 + (*v81.i32 * 0.5);
  *(a1 + 84) = v87;
  *(a1 + 88) = v81.i32[0];
  *(a1 + 92) = v87;
  *(a1 + 96) = v81.i32[0];
  *(a1 + 100) = 0;
  v88 = Width;
  v89 = v83;
  result = tplTrackerResampler_lumaDownscale8N(BaseAddressOfPlane, v88, Height, BytesPerRowOfPlane, v81.i32[1], v79, v83, v85, v69 >> 3, *(a1 + 48));
  if (!result)
  {
    return tplTrackerResampler_chromaDownscale8N(v13, v102, (Height >> 1), v104, v82 >> 1, v79 >> 1, v89 >> 1, v85 >> 1, v69 >> 4, *(a1 + 56), *(a1 + 64));
  }

  return result;
}

uint64_t tplTrackerResampler_resample(uint64_t a1, double *a2, unsigned int a3, int a4, uint64_t a5, _BYTE *a6, _BYTE *a7, int *a8, float a9, float a10)
{
  v10 = a4;
  if (a3 < 1)
  {
    v13 = 0;
    v70 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v77 = 0;
    v14 = *(a1 + 76);
    v15 = *(a1 + 80);
    v16 = a10 / v14;
    v17 = a9 / v14;
    v18 = a10 / v15;
    v19 = *(a1 + 100);
    v72 = a8;
    v73 = *(a1 + 32);
    v20 = v73 >> v19;
    v21 = *(a1 + 40) >> v19;
    v22 = (a2[1] - *(a1 + 96)) / v15;
    v78 = a3;
    v23 = a3;
    v24 = a4;
    v25 = a9 / v15;
    v76 = a3;
    do
    {
      v26 = vcvtms_s32_f32(v22);
      v27 = v26 + 1;
      if (v22 >= 0.0 && v21 > v27)
      {
        if (v12 >= v78)
        {
          v32 = v78;
        }

        else
        {
          v32 = v12;
        }

        v78 = v32;
        if (v12 <= v77)
        {
          v33 = v77;
        }

        else
        {
          v33 = v12;
        }

        v77 = v33;
        if (v10 >= 1)
        {
          v34 = 0;
          v35 = (((v27 - v22) * 255.0) + 0.5);
          v36 = 255 - v35;
          v37 = v20 * v26;
          v38 = *(a1 + 56) + v37;
          v39 = *(a1 + 64) + v37;
          v40 = (*a2 - *(a1 + 92)) / *(a1 + 80);
          do
          {
            v41 = vcvtms_s32_f32(v40);
            if ((v41 & 0x80000000) != 0 || (v42 = v41 + 1, v20 <= v41 + 1))
            {
              a6[v34] = 0x80;
              a7[v34] = 0x80;
            }

            else
            {
              v43 = ((v42 - v40) * 255.0) + 0.5;
              v44 = 255 - v43;
              v45 = (v44 * *(v38 + v42) + *(v38 + v41) * v43 + 191) >> 8;
              v46 = (v44 * *(v38 + v20 + v42) + *(v38 + v20 + v41) * v43 + 191) >> 8;
              v47 = (v44 * *(v39 + v42) + *(v39 + v41) * v43 + 191) >> 8;
              v48 = (v44 * *(v39 + v20 + v42) + *(v39 + v20 + v41) * v43 + 191) >> 8;
              v49 = v46 * v36 + v45 * v35 + 191;
              v50 = HIWORD(v49);
              v51 = v49 >> 8;
              if (v50)
              {
                LOBYTE(v51) = -1;
              }

              a6[v34] = v51;
              v52 = v48 * v36 + v47 * v35 + 191;
              v53 = HIWORD(v52);
              v54 = v52 >> 8;
              if (v53)
              {
                LOBYTE(v54) = -1;
              }

              a7[v34] = v54;
              if (v34 < v24)
              {
                v24 = v34;
              }

              if (v34 > v13)
              {
                v13 = v34;
              }
            }

            v40 = v18 + v40;
            ++v34;
          }

          while (v10 != v34);
          v23 = a3;
        }
      }

      else if (v10 >= 1)
      {
        v29 = v10;
        v30 = a6;
        v31 = a7;
        do
        {
          *v30++ = 0x80;
          *v31++ = 0x80;
          --v29;
        }

        while (v29);
      }

      v22 = v25 + v22;
      ++v12;
      a7 += v10;
      a6 += v10;
    }

    while (v12 != v23);
    v55 = 0;
    v56 = (a2[1] - *(a1 + 88)) / *(a1 + 76);
    v57 = a5;
    do
    {
      if (v55 < v78 || v55 > v77 || v56 < 0.0 || (v58 = vcvtms_s32_f32(v56), *(a1 + 40) <= (v58 + 1)))
      {
        if (v10 >= 1)
        {
          bzero((a5 + v55 * v10), v10);
          v23 = v76;
        }
      }

      else if (v10 >= 1)
      {
        v59 = 0;
        v60 = ((((v58 + 1) - v56) * 255.0) + 0.5);
        v61 = *(a1 + 48) + v73 * v58;
        v62 = (*a2 - *(a1 + 84)) / *(a1 + 76);
        do
        {
          if (v59 < v24)
          {
            goto LABEL_46;
          }

          v63 = 0;
          if (v59 > v13)
          {
            goto LABEL_47;
          }

          v64 = vcvtms_s32_f32(v62);
          if ((v64 & 0x80000000) != 0)
          {
            goto LABEL_47;
          }

          v65 = v64 + 1;
          if (*(a1 + 32) <= (v64 + 1))
          {
LABEL_46:
            v63 = 0;
          }

          else
          {
            v66 = (((v65 - v62) * 255.0) + 0.5);
            v67 = (((255 - v66) * *(v61 + v73 + v65) + *(v61 + v73 + v64) * v66 + 191) >> 8) * (255 - v60) + (((255 - v66) * *(v61 + v65) + *(v61 + v64) * v66 + 191) >> 8) * v60 + 191;
            v68 = HIWORD(v67);
            v69 = v67 >> 8;
            if (v68)
            {
              v63 = -1;
            }

            else
            {
              v63 = v69;
            }
          }

LABEL_47:
          *(v57 + v59) = v63;
          v62 = v16 + v62;
          ++v59;
        }

        while (v10 != v59);
      }

      v56 = v17 + v56;
      ++v55;
      v57 += v10;
    }

    while (v55 != v23);
    v10 = v24;
    a8 = v72;
    v70 = v77;
    a3 = v78;
  }

  *a8 = v10;
  a8[1] = a3;
  a8[2] = v13;
  a8[3] = v70;
  return 0;
}

uint64_t tplTrackerResampler_cropLuma(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a8 >= 1)
  {
    v9 = 0;
    v10 = result + a5 + a6 * a4;
    do
    {
      if (a7 >= 1)
      {
        for (i = 0; i != a7; ++i)
        {
          *(a9 + i) = *(v10 + i);
        }
      }

      v10 += a4;
      a9 += a7;
      ++v9;
    }

    while (v9 != a8);
  }

  return result;
}

uint64_t tplTrackerResampler_cropAndSplitChroma(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a8 >= 1)
  {
    v10 = 0;
    v13 = result + a6 * a4 + 2 * a5 + 1;
    do
    {
      if (a7 >= 1)
      {
        v14 = 0;
        v15 = v13;
        do
        {
          *(a9 + v14) = *(v15 - 1);
          v16 = *v15;
          v15 += 2;
          *(a10 + v14++) = v16;
        }

        while (a7 != v14);
      }

      a9 += a7;
      a10 += a7;
      ++v10;
      v13 += a4;
    }

    while (v10 != a8);
  }

  return result;
}

uint64_t tplTrackerResampler_lumaDownscale2(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a8 >> 1 >= 1)
  {
    v9 = 0;
    v11 = 2 * a4;
    v12 = result + a5 + a6 * a4;
    v13 = v12 + a4;
    v14 = a7 >> 1;
    do
    {
      if (v14 >= 1)
      {
        v15 = 0;
        v16 = 0;
        do
        {
          result = (*(v12 + v16) + *(v12 + v16 + 1) + *(v13 + v16) + *(v13 + v16 + 1) + 2) >> 2;
          *(a9 + v15++) = result;
          v16 += 2;
        }

        while (a7 >> 1 != v15);
      }

      v12 += v11;
      v13 += v11;
      a9 += v14;
      ++v9;
    }

    while (v9 != a8 >> 1);
  }

  return result;
}

uint64_t tplTrackerResampler_chromaDownscale2(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a8 >> 1 >= 1)
  {
    v10 = 0;
    v13 = 2 * a4;
    v14 = result + a6 * a4 + 2 * a5;
    v15 = v14 + a4;
    v16 = a7 >> 1;
    do
    {
      if (v16 >= 1)
      {
        v17 = 0;
        result = 0;
        do
        {
          *(a9 + v17) = (*(v14 + result) + *(v14 + result + 2) + *(v15 + result) + *(v15 + result + 2) + 2) >> 2;
          *(a10 + v17++) = (*(v14 + result + 1) + *(v14 + result + 3) + *(v15 + result + 1) + *(v15 + result + 3) + 2) >> 2;
          result += 4;
        }

        while (a7 >> 1 != v17);
      }

      v14 += v13;
      v15 += v13;
      a9 += v16;
      a10 += v16;
      ++v10;
    }

    while (v10 != a8 >> 1);
  }

  return result;
}

uint64_t tplTrackerResampler_lumaDownscale4(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a8 >> 2 >= 1)
  {
    v9 = 0;
    v11 = 4 * a4;
    v12 = result + a5 + a6 * a4;
    v13 = v12 + 3 * a4;
    v14 = v12 + 2 * a4;
    v15 = v12 + a4;
    v16 = a7 >> 2;
    do
    {
      if (v16 >= 1)
      {
        result = 0;
        do
        {
          v17.i32[0] = *(v12 + 4 * result);
          v17.i32[1] = *(v15 + 4 * result);
          v17.i32[2] = *(v14 + 4 * result);
          v17.i32[3] = *(v13 + 4 * result);
          *(a9 + result++) = (vaddlvq_u8(v17) + 8) >> 4;
        }

        while (a7 >> 2 != result);
      }

      v12 += v11;
      v15 += v11;
      v14 += v11;
      v13 += v11;
      a9 += v16;
      ++v9;
    }

    while (v9 != a8 >> 2);
  }

  return result;
}

uint64_t tplTrackerResampler_chromaDownscale4(uint64_t result, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a8 >> 2 >= 1)
  {
    v10 = 0;
    v13 = result + a6 * a4 + 2 * a5;
    v14 = v13 + 3 * a4;
    v15 = v13 + 2 * a4;
    v16 = v13 + a4;
    v17 = a7 >> 2;
    result = 8 * (a7 >> 2);
    v20 = v17;
    v21 = 4 * a4;
    do
    {
      v22 = v10;
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = 0;
        do
        {
          *(a9 + v18) = (*(v13 + v19) + *(v13 + v19 + 2) + *(v13 + v19 + 4) + *(v13 + v19 + 6) + *(v16 + v19) + *(v16 + v19 + 2) + *(v16 + v19 + 4) + *(v16 + v19 + 6) + *(v15 + v19) + *(v15 + v19 + 2) + *(v15 + v19 + 4) + *(v15 + v19 + 6) + *(v14 + v19) + *(v14 + v19 + 2) + *(v14 + v19 + 4) + *(v14 + v19 + 6) + 8) >> 4;
          *(a10 + v18++) = (*(v13 + v19 + 1) + *(v13 + v19 + 3) + *(v13 + v19 + 5) + *(v13 + v19 + 7) + *(v16 + v19 + 1) + *(v16 + v19 + 3) + *(v16 + v19 + 5) + *(v16 + v19 + 7) + *(v15 + v19 + 1) + *(v15 + v19 + 3) + *(v15 + v19 + 5) + *(v15 + v19 + 7) + *(v14 + v19 + 1) + *(v14 + v19 + 3) + *(v14 + v19 + 5) + *(v14 + v19 + 7) + 8) >> 4;
          v19 += 8;
        }

        while (result != v19);
      }

      v17 = a7 >> 2;
      v13 += v21;
      v16 += v21;
      v15 += v21;
      v14 += v21;
      a9 += v20;
      a10 += v20;
      ++v10;
    }

    while (v22 + 1 != a8 >> 2);
  }

  return result;
}

uint64_t tplTrackerResampler_lumaDownscale8N(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10)
{
  if (a9 < 1)
  {
    return 4294954516;
  }

  v15 = (8 * a9);
  v16 = (a8 / v15);
  v17 = log2((v15 * v15));
  if (v16 >= 1)
  {
    v18 = 0;
    v20 = v17;
    v21 = (a1 + a5 + a6 * a4);
    v22 = (a7 / v15);
    do
    {
      if (a7 / v15 >= 1)
      {
        v23 = 0;
        v24 = v21;
        do
        {
          v25 = 0;
          v26 = v24;
          v27 = 1 << v20 >> 1;
          do
          {
            v28 = (8 * a9);
            v29 = v26;
            do
            {
              v30 = *v29++;
              v27 += v30;
              --v28;
            }

            while (v28);
            ++v25;
            v26 += a4;
          }

          while (v25 != v15);
          *(a10 + v23++) = v27 >> v20;
          v24 += v15;
        }

        while (v23 != v22);
      }

      a10 += v22;
      ++v18;
      v21 += a4 * v15;
    }

    while (v18 != v16);
  }

  return 0;
}

uint64_t tplTrackerResampler_chromaDownscale8N(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, uint64_t a11)
{
  if (a9 < 1)
  {
    return 4294954516;
  }

  v16 = (8 * a9);
  v17 = (a8 / v16);
  v18 = log2((v16 * v16));
  if (v17 >= 1)
  {
    v19 = 0;
    v22 = v18;
    v23 = (a7 / v16);
    v24 = a6 * a4 + 2 * a5 + a1 + 1;
    do
    {
      if (a7 / v16 >= 1)
      {
        v25 = 0;
        v26 = v24;
        do
        {
          v27 = 0;
          v28 = v26;
          v29 = 1 << v22 >> 1;
          v30 = v29;
          do
          {
            v31 = (8 * a9);
            v32 = v28;
            do
            {
              v30 += *(v32 - 1);
              v33 = *v32;
              v32 += 2;
              v29 += v33;
              --v31;
            }

            while (v31);
            ++v27;
            v28 += a4;
          }

          while (v27 != v16);
          *(a10 + v25) = v30 >> v22;
          *(a11 + v25++) = v29 >> v22;
          v26 += 2 * (8 * a9);
        }

        while (v25 != v23);
      }

      a10 += v23;
      a11 += v23;
      ++v19;
      v24 += a4 * v16;
    }

    while (v19 != v17);
  }

  return 0;
}

uint64_t ctrTrackerAlgorithm_computeFFTx(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, float *a5, int a6, const DSPComplex *a7, const DSPSplitComplex *a8)
{
  v16 = log2f(a6);
  __Setup = vDSP_create_fftsetup(v16, 0);
  v17 = a6 * a6;
  if (a6)
  {
    if (v17 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v17;
    }

    v19 = 0.0;
    v20 = v18;
    v21 = a1;
    do
    {
      v22 = *v21++;
      v19 = v19 + v22;
      --v20;
    }

    while (v20);
    v23 = v17;
    v24 = v19 / v17;
    v25 = a5;
    v26 = a7;
    do
    {
      v27 = *a1++;
      v28 = v27;
      v29 = *v25++;
      *v26++ = (v29 * (v28 - v24)) / 255.0;
      --v18;
    }

    while (v18);
  }

  else
  {
    v23 = v17;
  }

  vDSP_ctoz(a7, 2, a8, 1, v17 >> 1);
  vDSP_fft2d_zrip(__Setup, a8, 1, 0, v16, v16, 1);
  __N = v17 >> 1;
  if (a6)
  {
    if (v17 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = v17;
    }

    v32 = 0.0;
    v33 = v31;
    v34 = a2;
    do
    {
      v35 = *v34++;
      v32 = v32 + v35;
      --v33;
    }

    while (v33);
    v36 = v32 / v23;
    do
    {
      LOBYTE(v30) = a2[v33];
      v30 = (a5[v33] * (LODWORD(v30) - v36)) / 255.0;
      *(&a7->real + v33++) = v30;
    }

    while (v31 != v33);
    vDSP_ctoz(a7, 2, a8 + 1, 1, __N);
    v37 = __Setup;
    vDSP_fft2d_zrip(__Setup, a8 + 1, 1, 0, v16, v16, 1);
    v38 = 0.0;
    v39 = v31;
    v40 = a3;
    do
    {
      v41 = *v40++;
      v38 = v38 + v41;
      --v39;
    }

    while (v39);
    v42 = a5;
    v43 = a7;
    v44 = v38 / v23;
    do
    {
      v45 = *a3++;
      v46 = v45;
      v47 = *v42++;
      *v43++ = (v47 * (v46 - v44)) / 255.0;
      --v31;
    }

    while (v31);
  }

  else
  {
    vDSP_ctoz(a7, 2, a8 + 1, 1, v17 >> 1);
    vDSP_fft2d_zrip(__Setup, a8 + 1, 1, 0, v16, v16, 1);
    v37 = __Setup;
  }

  vDSP_ctoz(a7, 2, a8 + 2, 1, __N);
  vDSP_fft2d_zrip(v37, a8 + 2, 1, 0, v16, v16, 1);
  if (a6)
  {
    if (v17 <= 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = v17;
    }

    v49 = 0.0;
    v50 = v48;
    v51 = a4;
    do
    {
      v52 = *v51++;
      v49 = v49 + v52;
      --v50;
    }

    while (v50);
    v53 = a7;
    v54 = v49 / v23;
    do
    {
      v55 = *a4++;
      v56 = v55;
      v57 = *a5++;
      *v53++ = (v57 * (v56 - v54)) / 255.0;
      --v48;
    }

    while (v48);
  }

  vDSP_ctoz(a7, 2, a8 + 3, 1, __N);
  vDSP_fft2d_zrip(v37, a8 + 3, 1, 0, v16, v16, 1);
  vDSP_destroy_fftsetup(v37);
  return 0;
}

uint64_t ctrTrackerAlgorithm_GaussianCorrelation(uint64_t a1, uint64_t a2, DSPSplitComplex *a3, const DSPSplitComplex *a4, DSPComplex *a5, float *a6, int a7, float a8)
{
  v75 = log2f(a7);
  fftsetup = vDSP_create_fftsetup(v75, 0);
  bzero(a6, 4 * (a7 * a7));
  v13 = 0;
  __N = (a7 * a7) >> 1;
  v14 = (a7 + (a7 >> 31)) >> 1;
  v15 = 0.25 / (a7 * a7);
  v16 = ((a7 - 3) >> 1) + 1;
  v71 = (a7 * a7);
  if ((a7 * a7) <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = (a7 * a7);
  }

  v77 = 3 * a7;
  v78 = a7;
  v18 = 2 * a7;
  do
  {
    v19 = (a2 + 16 * v13);
    v20 = (a1 + 16 * v13);
    vDSP_zvcmul(v19, 1, v20, 1, a3, 1, __N);
    realp = v20->realp;
    imagp = v20->imagp;
    v23 = v19->realp;
    v24 = v19->imagp;
    v25 = a3->realp;
    v26 = a3->imagp;
    *v25 = *v20->realp * *v19->realp;
    *v26 = *imagp * *v24;
    v25[v14] = realp[v14] * v23[v14];
    v26[v14] = imagp[v14] * v24[v14];
    if (v78 <= 2)
    {
      vDSP_zvcmul(a4 + 1, 1, a4, 1, a4 + 2, 1, 0xFFFFFFFFFFFFFFFFLL);
      vDSP_zvcmul(a4 + 1, 1, a4, 1, a4 + 2, 1, 0xFFFFFFFFFFFFFFFFLL);
    }

    else
    {
      v27 = 0;
      v28 = a4->realp;
      v29 = a4->imagp;
      v30 = v18;
      v31 = v77;
      v32 = a4[1].realp;
      v33 = a4[1].imagp;
      do
      {
        v28[v27] = realp[v30 >> 1];
        v29[v27] = realp[v31 >> 1];
        v32[v27] = v23[v30 >> 1];
        v33[v27++] = v23[v31 >> 1];
        v31 += v18;
        v30 += v18;
      }

      while (v16 != v27);
      vDSP_zvcmul(a4 + 1, 1, a4, 1, a4 + 2, 1, v27 - 1);
      v34 = a3->realp;
      v35 = v18;
      v36 = v77;
      v37 = v16;
      v38 = a4[2].realp;
      v39 = a4[2].imagp;
      do
      {
        v40 = *v38++;
        v34[v35 >> 1] = v40;
        v41 = *v39++;
        v34[v36 >> 1] = v41;
        v36 += v18;
        v35 += v18;
        --v37;
      }

      while (v37);
      v42 = 0;
      v43 = v20->imagp;
      v44 = a4->realp;
      v45 = a4->imagp;
      v46 = v19->imagp;
      v47 = v18;
      v48 = v77;
      v49 = a4[1].realp;
      v50 = a4[1].imagp;
      do
      {
        v44[v42] = v43[v47 >> 1];
        v45[v42] = v43[v48 >> 1];
        v49[v42] = v46[v47 >> 1];
        v50[v42++] = v46[v48 >> 1];
        v48 += v18;
        v47 += v18;
      }

      while (v16 != v42);
      vDSP_zvcmul(a4 + 1, 1, a4, 1, a4 + 2, 1, v42 - 1);
      v51 = a3->imagp;
      v52 = v18;
      v53 = v77;
      v54 = v16;
      v55 = a4[2].realp;
      v56 = a4[2].imagp;
      do
      {
        v57 = *v55++;
        v51[v52 >> 1] = v57;
        v58 = *v56++;
        v51[v53 >> 1] = v58;
        v53 += v18;
        v52 += v18;
        --v54;
      }

      while (v54);
    }

    vDSP_fft2d_zrip(fftsetup, a3, 1, 0, v75, v75, -1);
    v59 = a5;
    vDSP_ztoc(a3, 1, a5, 2, __N);
    v80 = v15;
    MEMORY[0x1CCA973D0](v59, 1, &v80, v59, 1, v71);
    v60 = v17;
    v61 = a6;
    if (v78)
    {
      do
      {
        v62 = *v59++;
        *v61 = v62 + *v61;
        ++v61;
        --v60;
      }

      while (v60);
    }

    ++v13;
  }

  while (v13 != 4);
  v63 = ctrTrackerAlgorithm_packedNorm(a1, a3, v78);
  v64 = ctrTrackerAlgorithm_packedNorm(a2, a3, v78);
  if (v78)
  {
    v65 = a8 * a8;
    v66 = v63 + v64;
    v67 = a5;
    v68 = -1.0 / v65;
    do
    {
      v69 = *a6++;
      *v67++ = expf(v68 * fmaxf((v66 + (v69 * -2.0)) / (4 * v71), 0.0));
      --v17;
    }

    while (v17);
  }

  vDSP_ctoz(a5, 2, a3, 1, __N);
  vDSP_fft2d_zrip(fftsetup, a3, 1, 0, v75, v75, 1);
  vDSP_destroy_fftsetup(fftsetup);
  return 0;
}

float ctrTrackerAlgorithm_packedNorm(uint64_t a1, DSPSplitComplex *__C, unsigned int a3)
{
  v5 = 0;
  v6 = a3 * a3;
  v7 = (a3 * a3) >> 1;
  v8 = (a3 + (a3 >> 31)) >> 1;
  v9 = (2 * a3 * a3);
  if (v7 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v7;
  }

  v11 = 0.0;
  do
  {
    v12 = (a1 + 16 * v5);
    vDSP_zvcmul(v12, 1, v12, 1, __C, 1, v6 >> 1);
    v13 = 0.0;
    if (v6 >= 2)
    {
      realp = __C->realp;
      v15 = v10;
      do
      {
        v16 = *realp++;
        v13 = v13 + v16;
        --v15;
      }

      while (v15);
    }

    imagp = v12->imagp;
    v11 = v11 + ((v13 + (((((*imagp * *imagp) + (*v12->realp * *v12->realp)) + (v12->realp[v8] * v12->realp[v8])) + (imagp[v8] * imagp[v8])) * -0.5)) / v9);
    ++v5;
  }

  while (v5 != 4);
  return v11;
}

uint64_t ctrTrackerAlgorithm_packedDivision(float **a1, float **a2, float **a3, int a4, float a5)
{
  if ((a4 * a4) >= 2)
  {
    v5 = (a4 * a4) >> 1;
    v6 = *a1;
    do
    {
      *v6 = *v6 + a5;
      ++v6;
      --v5;
    }

    while (v5);
  }

  if (a4 >= 4)
  {
    v7 = *a1;
    v8 = 3;
    v9 = 3 * a4;
    do
    {
      v7[v9 >> 1] = v7[v9 >> 1] - a5;
      v8 += 2;
      v9 += 2 * a4;
    }

    while (v8 < a4);
  }

  if (a4 >= 1)
  {
    v10 = 0;
    for (i = 0; i != a4; ++i)
    {
      if (a4 >= 4)
      {
        v12 = 0;
        v13 = (2 * v10) & 0x1FFFFFFFCLL;
        v14 = *a3 + v13;
        v15 = a1[1] + v13;
        v16 = *a1 + v13;
        v17 = *a2 + v13;
        v18 = a3[1] + v13 + 4;
        v19 = v14 + 4;
        v20 = v15 + 4;
        v21 = v16 + 4;
        v22 = v17 + 4;
        do
        {
          *(v19 + v12) = (*(v22 + v12) * *(v21 + v12)) / ((*(v20 + v12) * *(v20 + v12)) + (*(v21 + v12) * *(v21 + v12)));
          *(v18 + v12) = -(*(v22 + v12) * *(v20 + v12)) / ((*(v20 + v12) * *(v20 + v12)) + (*(v21 + v12) * *(v21 + v12)));
          v12 += 4;
        }

        while (4 * (a4 >> 1) - 4 != v12);
      }

      v10 = (v10 + a4);
    }
  }

  v23 = *a2;
  v24 = *a1;
  v25 = a1[1];
  v26 = *a3;
  v27 = a3[1];
  *v26 = (**a2 * **a1) / ((*v25 * *v25) + (**a1 * **a1));
  *v27 = -(*v23 * *v25) / ((*v25 * *v25) + (*v24 * *v24));
  v28 = a4 / 2;
  v26[v28] = (v23[v28] * v24[v28]) / ((v25[v28] * v25[v28]) + (v24[v28] * v24[v28]));
  v27[v28] = -(v23[v28] * v25[v28]) / ((v25[v28] * v25[v28]) + (v24[v28] * v24[v28]));
  if (a4 >= 3)
  {
    v29 = 2 * a4;
    v30 = 2;
    v31 = 2 * a4;
    do
    {
      v32 = v31 >> 1;
      v26[v32] = (v23[v32] * v24[v32]) / ((v25[v32] * v25[v32]) + (v24[v32] * v24[v32]));
      v27[v32] = -(v23[v32] * v25[v32]) / ((v25[v32] * v25[v32]) + (v24[v32] * v24[v32]));
      v30 += 2;
      v31 += v29;
    }

    while (v30 < a4);
    if (a4 >= 4)
    {
      v33 = 3 * a4;
      for (j = 3; j < a4; j += 2)
      {
        v35 = v33 >> 1;
        v26[v35] = 0.0;
        v27[v35] = 0.0;
        v33 += v29;
      }
    }
  }

  return 0;
}

uint64_t ctrTrackerAlgorithm_generateYf(const DSPSplitComplex *a1, DSPComplex *a2, unsigned int a3, float a4)
{
  v20 = a3 * a3;
  bzero(a2, 4 * a3 * a3);
  v22 = a3;
  if (a3 >= 2)
  {
    v6 = 0;
    v7 = a3 >> 1;
    v8 = (a4 * a4);
    v9 = a2;
    v10 = a2 + 4 * a3 * a3;
    v11 = 4 * a3;
    v12 = (a2 + (v11 + 4) * a3);
    do
    {
      v13 = 0;
      v24 = v12;
      do
      {
        v14 = (v6 * v6 + v13 * v13) * -0.5 / v8;
        v15 = expf(v14);
        *(&v9->real + v13) = v15;
        if (v6)
        {
          *&v10[4 * v13] = v15;
          if (!v13)
          {
            goto LABEL_10;
          }

          *(&v9->real + v11) = v15;
          v16 = v12;
        }

        else
        {
          if (!v13)
          {
            goto LABEL_10;
          }

          v16 = a2 + v6 * v22 + v22 - v13;
        }

        *v16 = v15;
LABEL_10:
        ++v13;
        --v12;
        v11 -= 4;
      }

      while (v7 != v13);
      ++v6;
      v11 = 4 * v22;
      v10 -= v11;
      v9 = (v9 + v11);
      v12 = &v24[v11 / 0xFFFFFFFFFFFFFFFCLL];
    }

    while (v6 != v7);
  }

  v17 = log2f(v22);
  fftsetup = vDSP_create_fftsetup(v17, 0);
  vDSP_ctoz(a2, 2, a1, 1, v20 >> 1);
  vDSP_fft2d_zrip(fftsetup, a1, 1, 0, v17, v17, 1);
  vDSP_destroy_fftsetup(fftsetup);
  return 0;
}

uint64_t ctrTrackerAlgorithm_getResponse(const DSPSplitComplex *a1, DSPSplitComplex *__B, DSPSplitComplex *__C, int a4, DSPComplex *a5)
{
  v10 = a4 * a4;
  v11 = (a4 * a4) >> 1;
  vDSP_zvcmul(a1, 1, __B, 1, __C, 1, v11);
  realp = __C->realp;
  imagp = __C->imagp;
  if (v10 >= 2)
  {
    if (v11 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v11;
    }

    v15 = __C->realp;
    v16 = __C->imagp;
    do
    {
      *v15 = *v15 * 0.5;
      ++v15;
      *v16 = *v16 * 0.5;
      ++v16;
      --v14;
    }

    while (v14);
  }

  v17 = __B->realp;
  v18 = __B->imagp;
  v19 = a1->realp;
  v20 = a1->imagp;
  *realp = (*__B->realp * *a1->realp) * 0.5;
  *imagp = (*v18 * *v20) * 0.5;
  v21 = a4 / 2;
  realp[v21] = (v17[v21] * v19[v21]) * 0.5;
  imagp[v21] = (v18[v21] * v20[v21]) * 0.5;
  if (a4 >= 3)
  {
    v22 = 2;
    v23 = 2 * a4;
    do
    {
      v24 = v23 >> 1;
      v25 = v17[v23 >> 1];
      v26 = v18[v23 >> 1];
      v27 = v21 + (v23 >> 1);
      v28 = v17[v27];
      v29 = v18[v27];
      v30 = v19[v23 >> 1];
      v31 = v20[v23 >> 1];
      v32 = v19[v27];
      v33 = v20[v27];
      realp[v24] = ((v25 * v30) - (v28 * v32)) * 0.5;
      imagp[v24] = ((v26 * v31) - (v29 * v33)) * 0.5;
      realp[v27] = ((v28 * v30) + (v25 * v32)) * 0.5;
      imagp[v27] = ((v29 * v31) + (v26 * v33)) * 0.5;
      v22 += 2;
      v23 += 2 * a4;
    }

    while (v22 < a4);
  }

  v34 = log2f(a4);
  fftsetup = vDSP_create_fftsetup(v34, 0);
  vDSP_fft2d_zrip(fftsetup, __C, 1, 0, v34, v34, -1);
  vDSP_ztoc(__C, 1, a5, 2, v10 >> 1);
  vDSP_destroy_fftsetup(fftsetup);
  return 0;
}

float **ctrTrackerAlgorithm_runningAvg(float **result, float **a2, int a3, float a4)
{
  if (a3 >= 1)
  {
    v4 = 1.0 - a4;
    v5 = *a2;
    v6 = a2[1];
    v7 = *result;
    v8 = result[1];
    v9 = a3;
    do
    {
      v10 = *v7++;
      *v5 = (v10 * a4) + (v4 * *v5);
      ++v5;
      v11 = *v8++;
      *v6 = (v11 * a4) + (v4 * *v6);
      ++v6;
      --v9;
    }

    while (v9);
  }

  return result;
}

void ctrTrackerInitialization_freeContext(void *a1)
{
  if (*a1)
  {
    for (i = 2048; i != 2112; i += 16)
    {
      free(*(*a1 + i));
      free(*(*a1 + i + 8));
    }

    free(*(*a1 + 2112));
    free(*(*a1 + 2120));
    v3 = *a1;
  }

  else
  {
    v3 = 0;
  }

  free(v3);
  if (*(a1 + 2))
  {
    free(*(*(a1 + 2) + 245992));
    free(*(*(a1 + 2) + 246000));
    free(*(*(a1 + 2) + 246008));
    free(*(*(a1 + 2) + 246016));
    v4 = 4;
    v5 = 245936;
    do
    {
      free(*(*(a1 + 2) + v5 - 8));
      free(*(*(a1 + 2) + v5));
      v5 += 16;
      --v4;
    }

    while (v4);
    v6 = 246032;
    v7 = 3;
    do
    {
      free(*(*(a1 + 2) + v6 - 8));
      free(*(*(a1 + 2) + v6));
      v6 += 16;
      --v7;
    }

    while (v7);
    v8 = *(a1 + 2);
  }

  else
  {
    v8 = 0;
  }

  free(v8);
  v9 = *(a1 + 4);
  if (v9)
  {
    free(*(v9 + 65632));
    free(*(*(a1 + 4) + 65640));
    v10 = *(a1 + 4);
  }

  else
  {
    v10 = 0;
  }

  free(v10);
  free(*(a1 + 1));
  tplTrackerResampler_free(a1 + 3);

  free(a1);
}

void *ctrTrackerInitialization_allocContext()
{
  v0 = malloc_type_calloc(1uLL, 0x28uLL, 0x20040769AC3DAuLL);
  v0[1] = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
  *v0 = malloc_type_calloc(1uLL, 0x860uLL, 0x1080040EFF975D0uLL);
  for (i = 2048; i != 2112; i += 16)
  {
    *(*v0 + i) = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
    *(*v0 + i + 8) = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
  }

  *(*v0 + 2112) = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
  v2 = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
  v3 = *v0;
  v3[265] = v2;
  bzero(v3, 0x400uLL);
  bzero((*v0 + 1024), 0x400uLL);
  v4 = malloc_type_calloc(1uLL, 0x3D158uLL, 0x108004024A52FC1uLL);
  v0[2] = v4;
  bzero(v4, 0x4000uLL);
  bzero((v0[2] + 0x4000), 0x4000uLL);
  bzero((v0[2] + 0x8000), 0x4000uLL);
  bzero((v0[2] + 49152), 0x4000uLL);
  bzero((v0[2] + 0x10000), 0x4000uLL);
  bzero((v0[2] + 81920), 0x4000uLL);
  bzero((v0[2] + 98304), 0x4000uLL);
  bzero((v0[2] + 246072), 0x400uLL);
  bzero((v0[2] + 247096), 0x400uLL);
  bzero((v0[2] + 248120), 0x400uLL);
  bzero((v0[2] + 249144), 0x400uLL);
  *(v0[2] + 245992) = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
  *(v0[2] + 246000) = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
  *(v0[2] + 246008) = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
  *(v0[2] + 246016) = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
  v5 = 4;
  v6 = 245936;
  do
  {
    *(v0[2] + v6 - 8) = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
    *(v0[2] + v6) = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
    v6 += 16;
    --v5;
  }

  while (v5);
  v7 = 246032;
  v8 = 3;
  do
  {
    *(v0[2] + v7 - 8) = malloc_type_calloc(0x40uLL, 4uLL, 0x100004052888210uLL);
    v9 = malloc_type_calloc(0x40uLL, 4uLL, 0x100004052888210uLL);
    v10 = v0[2];
    *(v10 + v7) = v9;
    v7 += 16;
    --v8;
  }

  while (v8);
  *(v10 + 250184) = 0;
  v0[3] = tplTrackerResampler_alloc(0x80uLL, 0x80uLL, 1.1);
  v11 = malloc_type_calloc(1uLL, 0x10070uLL, 0x10C0040E2B89275uLL);
  v0[4] = v11;
  generate_size_search_stablizer(v11, 21, 15.0, 13.0);
  generate_sqrt_table(v0[4] + 84, 0x4000u);
  *(v0[4] + 65632) = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
  v12 = malloc_type_malloc(0x8000uLL, 0x100004052888210uLL);
  v13 = v0[4] + 0x10000;
  *(v13 + 104) = v12;
  *(v13 + 88) = &cosineWindow;
  return v0;
}

void ctrTrackerInitialization_cleanUpContext(uint64_t a1)
{
  for (i = 2048; i != 2112; i += 16)
  {
    bzero(*(*a1 + i), 0x8000uLL);
    bzero(*(*a1 + i + 8), 0x8000uLL);
  }

  bzero(*(*a1 + 2112), 0x8000uLL);
  bzero(*(*a1 + 2120), 0x8000uLL);
  bzero(*a1, 0x400uLL);
  bzero((*a1 + 1024), 0x400uLL);
  bzero(*(a1 + 16), 0x4000uLL);
  bzero((*(a1 + 16) + 0x4000), 0x4000uLL);
  bzero((*(a1 + 16) + 0x8000), 0x4000uLL);
  bzero((*(a1 + 16) + 49152), 0x4000uLL);
  bzero((*(a1 + 16) + 0x10000), 0x4000uLL);
  bzero((*(a1 + 16) + 81920), 0x4000uLL);
  bzero((*(a1 + 16) + 98304), 0x4000uLL);
  bzero((*(a1 + 16) + 246072), 0x400uLL);
  bzero((*(a1 + 16) + 247096), 0x400uLL);
  bzero((*(a1 + 16) + 248120), 0x400uLL);
  bzero((*(a1 + 16) + 249144), 0x400uLL);
  v3 = *(a1 + 16) + 250184;
  *(v3 + 8) = 0;
  *v3 = 0;
  bzero(*(*(a1 + 16) + 245992), 0x8000uLL);
  bzero(*(*(a1 + 16) + 246000), 0x8000uLL);
  bzero(*(*(a1 + 16) + 246008), 0x8000uLL);
  bzero(*(*(a1 + 16) + 246016), 0x8000uLL);
  v4 = 4;
  v5 = 245936;
  do
  {
    bzero(*(*(a1 + 16) + v5 - 8), 0x8000uLL);
    bzero(*(*(a1 + 16) + v5), 0x8000uLL);
    v5 += 16;
    --v4;
  }

  while (v4);
  v6 = 246032;
  v7 = 3;
  do
  {
    v8 = *(*(a1 + 16) + v6 - 8);
    v8[14] = 0uLL;
    v8[15] = 0uLL;
    v8[12] = 0uLL;
    v8[13] = 0uLL;
    v8[10] = 0uLL;
    v8[11] = 0uLL;
    v8[8] = 0uLL;
    v8[9] = 0uLL;
    v8[6] = 0uLL;
    v8[7] = 0uLL;
    v8[4] = 0uLL;
    v8[5] = 0uLL;
    v8[2] = 0uLL;
    v8[3] = 0uLL;
    *v8 = 0uLL;
    v8[1] = 0uLL;
    v9 = *(*(a1 + 16) + v6);
    v9[14] = 0uLL;
    v9[15] = 0uLL;
    v9[12] = 0uLL;
    v9[13] = 0uLL;
    v9[10] = 0uLL;
    v9[11] = 0uLL;
    v9[8] = 0uLL;
    v9[9] = 0uLL;
    v9[6] = 0uLL;
    v9[7] = 0uLL;
    v9[4] = 0uLL;
    v9[5] = 0uLL;
    v9[2] = 0uLL;
    v9[3] = 0uLL;
    *v9 = 0uLL;
    v9[1] = 0uLL;
    v6 += 16;
    --v7;
  }

  while (v7);
  bzero(*(*(a1 + 32) + 65632), 0x8000uLL);
  v10 = *(*(a1 + 32) + 65640);

  bzero(v10, 0x8000uLL);
}

uint64_t ctrTrackerInitialization_setUpTracker(__CVBuffer *a1, uint64_t *a2, float64x2_t *a3)
{
  v6 = malloc_type_calloc(4uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  ctrTrackerComputation_overscan(a3, v6, 1.56);
  *(*a2 + 2128) = vdivq_f64(vsubq_f64(v6[2], *v6), vdupq_n_s64(0x405FC00000000000uLL));
  v7 = (a2[2] + 249856);
  tplTrackerResampler_setImage(a2[3], a1, v6->f64);
  v8 = *(*a2 + 2136);
  v9 = *(*a2 + 2128);
  tplTrackerResampler_resample(a2[3], v6->f64, 0x80u, 128, a2[2], (a2[2] + 0x4000), (a2[2] + 0x8000), v7 + 78, v8, v9);
  if (v7[78] > 0 || v7[79] > 0 || v7[80] < 127 || v7[81] <= 126)
  {
    ctrTrackerComputation_repairNonValidRegion(a2[2], a2[2] + 0x4000, a2[2] + 0x8000, v7 + 78);
  }

  free(v6);
  ctrTrackerComputation_YCbCr2nRGB(a2[2], (a2[2] + 0x4000), (a2[2] + 0x8000), 0x4000, (a2[2] + 49152), (a2[2] + 0x10000), (a2[2] + 81920));
  ctrTrackerComputation_normedGradient(a2[2] + 49152, a2[2] + 0x10000, a2[2] + 81920, 128, 128, a2[2] + 98304);
  ctrTrackerAlgorithm_computeFFTx((a2[2] + 49152), (a2[2] + 0x10000), (a2[2] + 81920), (a2[2] + 98304), *(a2[4] + 65624), 128, (a2[2] + 114856), (*a2 + 2048));
  ctrTrackerAlgorithm_GaussianCorrelation(*a2 + 2048, *a2 + 2048, (a2[2] + 245992), (a2[2] + 246024), (a2[2] + 114856), (a2[2] + 180392), 128, 0.2);
  ctrTrackerAlgorithm_generateYf((a2[4] + 65632), (a2[2] + 114856), 0x80u, 5.0);
  ctrTrackerAlgorithm_packedDivision((a2[2] + 245992), (a2[4] + 65632), (*a2 + 2112), 128, 0.0001);
  *a2[1] = 0;
  v10 = a2[2];
  v11 = *a2;
  v12 = (*a2 + 1024);

  return ctrTrackerComputation_colorHistogram(v10 + 49152, v10 + 0x10000, v10 + 81920, v11, v12, 128, 50);
}

uint64_t ctrTrackerComputation_trackNewFrame(__CVBuffer *a1, uint64_t a2, float64x2_t *a3, BOOL *a4, _BYTE *a5)
{
  v8 = malloc_type_calloc(4uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  ctrTrackerComputation_overscan(a3, v8, 1.56);
  v9 = (v8[4] - *v8) / 127.0;
  v10 = *(a2 + 16);
  v11 = (v10 + 249856);
  v12 = (v10 + 250168);
  v13 = (v8[5] - v8[1]) / 127.0;
  tplTrackerResampler_setImage(*(a2 + 24), a1, v8);
  v14 = v13;
  v15 = v9;
  tplTrackerResampler_resample(*(a2 + 24), v8, 0x80u, 128, *(a2 + 16), (*(a2 + 16) + 0x4000), (*(a2 + 16) + 0x8000), v12, v14, v15);
  if (v11[78] > 0 || v11[79] > 0 || v11[80] < 127 || v11[81] <= 126)
  {
    ctrTrackerComputation_repairNonValidRegion(*(a2 + 16), *(a2 + 16) + 0x4000, *(a2 + 16) + 0x8000, v12);
  }

  ctrTrackerComputation_YCbCr2nRGB(*(a2 + 16), (*(a2 + 16) + 0x4000), (*(a2 + 16) + 0x8000), 0x4000, (*(a2 + 16) + 49152), (*(a2 + 16) + 0x10000), (*(a2 + 16) + 81920));
  ctrTrackerComputation_normedGradient(*(a2 + 16) + 49152, *(a2 + 16) + 0x10000, *(a2 + 16) + 81920, 128, 128, *(a2 + 16) + 98304);
  v16 = *(a2 + 16);
  ctrTrackerAlgorithm_computeFFTx((v16 + 49152), (v16 + 0x10000), (v16 + 81920), (v16 + 98304), *(*(a2 + 32) + 65624), 128, (v16 + 114856), (v16 + 245928));
  ctrTrackerAlgorithm_GaussianCorrelation(*(a2 + 16) + 245928, *a2 + 2048, (*(a2 + 16) + 245992), (*(a2 + 16) + 246024), (*(a2 + 16) + 114856), (*(a2 + 16) + 180392), 128, 0.2);
  ctrTrackerAlgorithm_getResponse((*(a2 + 16) + 245992), (*a2 + 2112), (*(a2 + 16) + 246008), 128, (*(a2 + 16) + 180392));
  v17 = malloc_type_malloc(0xCuLL, 0x10000403E1C8BA9uLL);
  ctrTrackerComputation_updateLocation(*(a2 + 16) + 180392, a3, 128, v17, *(*a2 + 2128), *(*a2 + 2136));
  *a4 = ctrTrackerComputation_getPSR(*(a2 + 16) + 180392, 128, v17, *(a2 + 8));
  free(v17);
  if (*(*(a2 + 8) + 4) >= 31)
  {
    *a5 = 1;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (ctrTrackerComputation_checkBoxLocation(a3->f64, Width, Height) && *a4)
  {
    ctrTrackerComputation_overscan(a3, v8, 0.2);
    tplTrackerResampler_setImage(*(a2 + 24), a1, v8);
    v20 = (v8[5] - v8[1]) / 127.0;
    v21 = (v8[4] - *v8) / 127.0;
    tplTrackerResampler_resample(*(a2 + 24), v8, 0x80u, 128, *(a2 + 16), (*(a2 + 16) + 0x4000), (*(a2 + 16) + 0x8000), v12, v20, v21);
    ctrTrackerComputation_YCbCr2nRGB(*(a2 + 16), (*(a2 + 16) + 0x4000), (*(a2 + 16) + 0x8000), 0x4000, (*(a2 + 16) + 49152), (*(a2 + 16) + 0x10000), (*(a2 + 16) + 81920));
    ctrTrackerComputation_sizeAdaption(*(a2 + 16), *a2, *a2 + 1024, *(a2 + 32), *(a2 + 32) + 84, a3, 128);
  }

  ctrTrackerComputation_overscan(a3, v8, 1.56);
  v22 = (v8[4] - *v8) / 127.0;
  v23 = (v8[5] - v8[1]) / 127.0;
  tplTrackerResampler_setImage(*(a2 + 24), a1, v8);
  v24 = v23;
  v25 = v22;
  tplTrackerResampler_resample(*(a2 + 24), v8, 0x80u, 128, *(a2 + 16), (*(a2 + 16) + 0x4000), (*(a2 + 16) + 0x8000), v12, v24, v25);
  if (*v12 > 0 || v11[79] > 0 || v11[80] < 127 || v11[81] <= 126)
  {
    ctrTrackerComputation_repairNonValidRegion(*(a2 + 16), *(a2 + 16) + 0x4000, *(a2 + 16) + 0x8000, v12);
  }

  free(v8);
  ctrTrackerComputation_YCbCr2nRGB(*(a2 + 16), (*(a2 + 16) + 0x4000), (*(a2 + 16) + 0x8000), 0x4000, (*(a2 + 16) + 49152), (*(a2 + 16) + 0x10000), (*(a2 + 16) + 81920));
  ctrTrackerComputation_normedGradient(*(a2 + 16) + 49152, *(a2 + 16) + 0x10000, *(a2 + 16) + 81920, 128, 128, *(a2 + 16) + 98304);
  v26 = *(a2 + 16);
  ctrTrackerAlgorithm_computeFFTx((v26 + 49152), (v26 + 0x10000), (v26 + 81920), (v26 + 98304), *(*(a2 + 32) + 65624), 128, (v26 + 114856), (v26 + 245928));
  ctrTrackerAlgorithm_GaussianCorrelation(*(a2 + 16) + 245928, *(a2 + 16) + 245928, (*(a2 + 16) + 245992), (*(a2 + 16) + 246024), (*(a2 + 16) + 114856), (*(a2 + 16) + 180392), 128, 0.2);
  ctrTrackerAlgorithm_packedDivision((*(a2 + 16) + 245992), (*(a2 + 32) + 65632), (*(a2 + 16) + 246008), 128, 0.0001);
  ctrTrackerAlgorithm_runningAvg((*(a2 + 16) + 246008), (*a2 + 2112), 0x2000, 0.02);
  for (i = 0; i != 64; i += 16)
  {
    ctrTrackerAlgorithm_runningAvg((*(a2 + 16) + i + 245928), (*a2 + i + 2048), 0x2000, 0.02);
  }

  result = ctrTrackerComputation_colorHistogram(*(a2 + 16) + 49152, *(a2 + 16) + 0x10000, *(a2 + 16) + 81920, (*(a2 + 16) + 248120), (*(a2 + 16) + 249144), 128, 50);
  v29 = *a2;
  v30 = (*(a2 + 16) + 248120);
  v31 = 256;
  do
  {
    *v29 = (*v30 * 0.05) + (*v29 * 0.95);
    v29[256] = (v30[256] * 0.05) + (v29[256] * 0.95);
    ++v30;
    ++v29;
    --v31;
  }

  while (v31);
  return result;
}

int8x16_t ctrTrackerComputation_overscan(float64x2_t *a1, uint64_t a2, float a3)
{
  v3 = a1[2];
  v4 = vsubq_f64(v3, *a1);
  __asm { FMOV            V2.2D, #0.5 }

  v10 = vmulq_f64(vaddq_f64(v3, *a1), _Q2);
  v11 = vmulq_f64(vmulq_n_f64(v4, (a3 + 1.0)), _Q2);
  v12 = vsubq_f64(v10, v11);
  *a2 = v12;
  *(a2 + 16) = v12.f64[0];
  v13 = vaddq_f64(v10, v11);
  result = vextq_s8(v13, v13, 8uLL);
  *(a2 + 24) = result;
  *(a2 + 40) = result;
  *(a2 + 56) = v12.f64[1];
  return result;
}

uint64_t ctrTrackerComputation_repairNonValidRegion(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  LODWORD(v4) = *a4;
  if (*a4 >= 1)
  {
    v5 = 0;
    v6 = result;
    v7 = a2;
    v8 = a3;
    do
    {
      if (v4 >= 1)
      {
        v9 = 0;
        v10 = v5 << 7;
        do
        {
          *(v6 + v9) = *(result + v4 + v10);
          *(v7 + v9) = *(a2 + *a4 + v10);
          *(v8 + v9++) = *(a3 + *a4 + v10);
          v4 = *a4;
        }

        while (v9 < v4);
      }

      ++v5;
      v8 += 128;
      v7 += 128;
      v6 += 128;
    }

    while (v5 != 128);
  }

  v11 = a4[2];
  if (v11 <= 126)
  {
    v12 = 0;
    v13 = result + 1;
    v14 = a2 + 1;
    for (i = a3 + 1; ; i += 128)
    {
      if (v11 <= 126)
      {
        v16 = v11;
        do
        {
          *(v13 + v16) = *(result + (v12 << 7) + a4[2]);
          *(v14 + v16) = *(a2 + (v12 << 7) + a4[2]);
          *(i + v16++) = *(a3 + (v12 << 7) + a4[2]);
        }

        while (v16 != 127);
      }

      if (++v12 == 128)
      {
        break;
      }

      v11 = a4[2];
      v13 += 128;
      v14 += 128;
    }
  }

  if (a4[1] >= 1)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = 128;
      v20 = result;
      v21 = a2;
      v22 = a3;
      do
      {
        *(v20 + v17) = *(v20 + (a4[1] << 7));
        *(v21 + v17) = *(v21 + (a4[1] << 7));
        *(v22 + v17) = *(v22 + (a4[1] << 7));
        ++v22;
        ++v21;
        ++v20;
        --v19;
      }

      while (v19);
      ++v18;
      v17 += 128;
    }

    while (v18 < a4[1]);
  }

  v23 = a4[3];
  if (v23 <= 126)
  {
    v24 = (v23 << 7) + 128;
    v25 = result + v24;
    v26 = a2 + v24;
    v27 = a3 + v24;
    do
    {
      v28 = 0;
      ++v23;
      do
      {
        *(v25 + v28) = *(result + (a4[3] << 7) + v28);
        *(v26 + v28) = *(a2 + (a4[3] << 7) + v28);
        *(v27 + v28) = *(a3 + (a4[3] << 7) + v28);
        ++v28;
      }

      while (v28 != 128);
      v25 += 128;
      v26 += 128;
      v27 += 128;
    }

    while (v23 != 127);
  }

  return result;
}

uint64_t ctrTrackerComputation_YCbCr2nRGB(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, int a4, _BYTE *a5, _BYTE *a6, _BYTE *a7)
{
  if (a4 >= 1)
  {
    v7 = a4;
    do
    {
      v9 = *a1++;
      v8 = v9;
      v10 = *a2++;
      v11 = v10 - 128;
      v12 = *a3++;
      v13 = (v8 << 6) | 0x20;
      v14 = v13 + 101 * (v12 - 128);
      v15 = v14 >> 6;
      v16 = ((v14 >> 6) & ~(v14 >> 31));
      v17 = v13 - 12 * v11 - 30 * (v12 - 128);
      if (v15 > 255)
      {
        v16 = 255;
      }

      v18 = v17 >> 6;
      v19 = ((v17 >> 6) & ~(v17 >> 31));
      v20 = v13 + 119 * v11;
      if (v18 <= 255)
      {
        v21 = v19;
      }

      else
      {
        v21 = 255;
      }

      v22 = v20 >> 6;
      v23 = ((v20 >> 6) & ~(v20 >> 31));
      if (v22 > 255)
      {
        v23 = 255;
      }

      if (v21 <= v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = v21;
      }

      if (v16 > v24)
      {
        v24 = v16;
      }

      v25 = ctrTrackerComputation_YCbCr2nRGB_kIlluminationInvariantLookupTable[v24];
      v26 = v16 * v25;
      v27 = v26 >> 4;
      v28 = (v26 + 16) >> 5;
      v29 = v21 * v25;
      if (v27 > 0x1FE)
      {
        LOBYTE(v28) = -1;
      }

      v30 = v29 >> 4;
      v31 = (v29 + 16) >> 5;
      *a5++ = v28;
      if (v30 > 0x1FE)
      {
        LOBYTE(v31) = -1;
      }

      v32 = v23 * v25;
      v33 = v32 >> 4;
      *a6++ = v31;
      v34 = (v32 + 16) >> 5;
      if (v33 > 0x1FE)
      {
        LOBYTE(v34) = -1;
      }

      *a7++ = v34;
      --v7;
    }

    while (v7);
  }

  return 0;
}

uint64_t ctrTrackerComputation_normedGradient(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  if (a4 >= 3)
  {
    v6 = (a4 - 1);
    v7 = a1 + 1;
    v8 = a2 + 1;
    v9 = a3 + 1;
    v39 = a6 + 1;
    v10 = a2 + 2;
    v11 = a3 + 2;
    v12 = 1;
    do
    {
      if (a5 <= 2)
      {
        v15 = v12 + 1;
      }

      else
      {
        v13 = 0;
        v14 = v12 * a5;
        v15 = v12 + 1;
        v16 = (v12 + 1) * a5;
        v17 = (v12 - 1) * a5;
        v18 = v7 + v17;
        v19 = v8 + v17;
        v20 = v9 + v17;
        v21 = v9 + v16;
        v22 = v8 + v16;
        v23 = v7 + v16;
        v24 = v39 + v14;
        v25 = a1 + 2 + v14;
        v26 = v10 + v14;
        v27 = v11 + v14;
        do
        {
          v28 = *(v25 + v13) - *(v25 + v13 - 2);
          v29 = *(v23 + v13) - *(v18 + v13);
          v30 = *(v27 + v13) - *(v27 + v13 - 2);
          v31 = *(v21 + v13) - *(v20 + v13);
          if (v28 < 0)
          {
            v28 = *(v25 + v13 - 2) - *(v25 + v13);
          }

          if (v29 < 0)
          {
            v29 = *(v18 + v13) - *(v23 + v13);
          }

          v32 = v29 + v28;
          if (*(v26 + v13) - *(v26 + v13 - 2) >= 0)
          {
            v33 = *(v26 + v13) - *(v26 + v13 - 2);
          }

          else
          {
            v33 = *(v26 + v13 - 2) - *(v26 + v13);
          }

          if (*(v22 + v13) - *(v19 + v13) >= 0)
          {
            v34 = *(v22 + v13) - *(v19 + v13);
          }

          else
          {
            v34 = *(v19 + v13) - *(v22 + v13);
          }

          v35 = v34 + v33;
          if (v30 < 0)
          {
            v30 = *(v27 + v13 - 2) - *(v27 + v13);
          }

          if (v31 < 0)
          {
            v31 = *(v20 + v13) - *(v21 + v13);
          }

          v36 = v31 + v30;
          if (v32 <= v35)
          {
            v37 = v35;
          }

          else
          {
            v37 = v32;
          }

          if (v37 > v36)
          {
            v36 = v37;
          }

          if (v36 >= 0xFF)
          {
            LOBYTE(v36) = -1;
          }

          *(v24 + v13++) = v36;
        }

        while ((a5 - 1) - 1 != v13);
      }

      v12 = v15;
    }

    while (v15 != v6);
  }

  return 0;
}

uint64_t ctrTrackerComputation_updateLocation(uint64_t result, uint64_t a2, int a3, uint64_t a4, double a5, double a6)
{
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    LODWORD(v8) = a3 * a3;
    if ((a3 * a3) <= 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v8;
    }

    v9 = 0.0;
    do
    {
      if (*(result + 4 * v6) > v9)
      {
        v7 = v6;
        v9 = *(result + 4 * v6);
      }

      ++v6;
    }

    while (v8 != v6);
  }

  else
  {
    v7 = 0;
    v9 = 0.0;
  }

  v10 = 0;
  v11 = v7 / a3;
  if (a3 / 2 <= v7 / a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  v13 = v11 - v12;
  *a4 = v9;
  v14 = v7 % a3;
  if (a3 / 2 <= v14)
  {
    v15 = a3;
  }

  else
  {
    v15 = 0;
  }

  v16 = vdupq_lane_s64(COERCE__INT64(-(v14 - v15)), 0);
  v17 = vdupq_lane_s64(*&a5, 0);
  v18 = vdupq_lane_s64(COERCE__INT64(-v13), 0);
  v19 = vdupq_lane_s64(*&a6, 0);
  do
  {
    v20 = (a2 + v10);
    v21 = vld2q_f64(v20);
    v21.val[0] = vmlaq_f64(v21.val[0], v17, v16);
    v21.val[1] = vmlaq_f64(v21.val[1], v19, v18);
    vst2q_f64(v20, v21);
    v10 += 32;
  }

  while (v10 != 64);
  *(a4 + 4) = v11;
  *(a4 + 8) = v14;
  return result;
}

BOOL ctrTrackerComputation_getPSR(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 4);
  v5 = *(a3 + 8);
  v6 = v4 - 5;
  v7 = (a2 / 2);
  if (v7 <= v4 - 5)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = v4 + 5;
  if (v7 <= v4 + 5)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0;
  }

  v11 = v5 - 5;
  if (v7 <= v5 - 5)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0;
  }

  v13 = v5 + 5;
  if (v7 <= v13)
  {
    v14 = a2;
  }

  else
  {
    v14 = 0;
  }

  if (a2 < 1)
  {
    v20 = 0.0;
    v19 = 0.0;
  }

  else
  {
    v15 = 0;
    v16 = v6 - v8;
    v17 = v9 - v10;
    v18 = v11 - v12;
    v19 = 0.0;
    v20 = 0.0;
    v21 = v13 - v14;
    do
    {
      v22 = 0;
      if (v15 >= v7)
      {
        v23 = a2;
      }

      else
      {
        v23 = 0;
      }

      v24 = v15 - v23;
      v26 = v24 < v16 || v24 > v17;
      do
      {
        if (v26 || (v22 >= v7 ? (v27 = a2) : (v27 = 0), (v28 = v22 - v27, v28 >= v18) ? (v29 = v28 <= v21) : (v29 = 0), !v29))
        {
          v30 = *(a1 + 4 * v22);
          v19 = v19 + v30;
          v20 = v20 + (v30 * v30);
        }

        ++v22;
      }

      while (a2 != v22);
      ++v15;
      a1 += 4 * a2;
    }

    while (v15 != a2);
  }

  v31 = (*a3 - (v19 / (a2 * a2 - 121))) / sqrtf((v20 / (a2 * a2 - 121)) - ((v19 / (a2 * a2 - 121)) * (v19 / (a2 * a2 - 121))));
  *a4 = v31;
  if (v31 <= 8.0)
  {
    v32 = *(a4 + 4) + 1;
  }

  else
  {
    v32 = 0;
  }

  result = v31 > 8.0;
  *(a4 + 4) = v32;
  return result;
}

uint64_t ctrTrackerComputation_colorHistogram(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, int a6, int a7)
{
  bzero(a4, 0x400uLL);
  bzero(a5, 0x400uLL);
  if (a7 >= 1)
  {
    v14 = a7 + (a6 - a7) / 2;
    v15 = ((a6 - a7 + ((a6 - a7) >> 31)) >> 1) + (a6 - a7) / 2 * a6;
    v16 = (a1 + v15);
    v17 = (a2 + v15);
    v18 = (a3 + v15);
    v19 = (a6 - a7 + ((a6 - a7) >> 31)) >> 1;
    do
    {
      v20 = v18;
      v21 = v17;
      v22 = v16;
      v23 = (a6 - a7 + ((a6 - a7) >> 31)) >> 1;
      do
      {
        v24 = *v22++;
        v25 = v24;
        v26 = v24;
        v28 = *v21++;
        v27 = v28;
        v29 = v25 + v28;
        v30 = *v20++;
        v31 = fmax((v29 + v30), 0.01);
        *&v26 = v26 / v31;
        v32 = vcvtms_s32_f32(*&v26 * 256.0);
        v33 = v27 / v31;
        if (v32 >= 255)
        {
          v34 = 255;
        }

        else
        {
          v34 = v32;
        }

        v35 = vcvtms_s32_f32(v33 * 256.0);
        if (v35 >= 255)
        {
          v35 = 255;
        }

        *&a4[4 * v34] = *&a4[4 * v34] + 1.0;
        *&a5[4 * v35] = *&a5[4 * v35] + 1.0;
        ++v23;
      }

      while (v23 < v14);
      ++v19;
      v16 += a6;
      v17 += a6;
      v18 += a6;
    }

    while (v19 < v14);
  }

  v36 = 0;
  v37 = (a7 * a7);
  do
  {
    *&a4[v36] = *&a4[v36] / v37;
    *&a5[v36] = *&a5[v36] / v37;
    v36 += 4;
  }

  while (v36 != 1024);
  return 0;
}

BOOL ctrTrackerComputation_sizeAdaption(uint64_t a1, uint64_t a2, uint64_t a3, float *a4, uint64_t a5, float64x2_t *a6, int a7)
{
  v10 = 0;
  v147 = a1 + 250184;
  v11 = (a1 + 246072);
  v12 = (a1 + 114688);
  v13 = roundf((a7 + ((a7 * -0.8) / 1.2)) * 0.5);
  v14 = (a1 + 248120);
  do
  {
    *v14 = sqrtf(*(a2 + v10));
    v14[256] = sqrtf(*(a3 + v10));
    ++v14;
    v10 += 4;
  }

  while (v10 != 1024);
  v15 = v13;
  v16 = (a1 + 247096);
  v146 = a1 + 114772;
  bzero((a1 + 246072), 0x400uLL);
  bzero(v11 + 256, 0x400uLL);
  v17 = v15 - 1;
  if (v15 - 1 <= a7 - v15)
  {
    v18 = v17;
    v19 = v15 + v17 * a7 + a1 + 49151;
    do
    {
      v20 = a7 - 2 * v15 + 2;
      v21 = v19;
      v22 = v19;
      do
      {
        v23 = *v22++;
        v24 = v21[0x4000];
        *&v25 = v24;
        LOBYTE(v25) = v21[0x8000];
        v26 = fmax(((v23 + v24) + v25), 0.01);
        v27 = v23 / v26;
        v28 = vcvtms_s32_f32(v27 * 256.0);
        v29 = v24 / v26;
        if (v28 >= 255)
        {
          v28 = 255;
        }

        v30 = vcvtms_s32_f32(v29 * 256.0);
        if (v30 >= 255)
        {
          v30 = 255;
        }

        ++v11[v28];
        ++v16[v30];
        v21 = v22;
        --v20;
      }

      while (v20);
      ++v18;
      v19 += a7;
    }

    while (a7 - v15 + 1 != v18);
  }

  v32 = (v11 + 1);
  v31 = *v11;
  v33 = 0.0;
  v34 = 255;
  do
  {
    v35 = *v32;
    v31 += v35;
    v33 = v33 + (*(a5 + 4 * v35) * v32[512]);
    ++v32;
    --v34;
  }

  while (v34);
  v144 = (v15 - 1);
  v36 = v33 / sqrtf(v31);
  *v12 = v36;
  v37 = v11[256];
  v38 = (v11 + 257);
  v39 = 0.0;
  v40 = 255;
  do
  {
    v41 = *v38;
    v37 += v41;
    v39 = v39 + (*(a5 + 4 * v41) * v38[512]);
    ++v38;
    --v40;
  }

  while (v40);
  v42 = (v36 + (v39 / sqrtf(v37))) * 0.5;
  *v12 = v42;
  v149 = (v15 - 2);
  if (v15 >= 2)
  {
    v43 = a7 - 1;
    v44 = (v15 - 2);
    v45 = v43 * v149 + a7;
    v46 = v45 + 49151;
    v47 = 1;
    v151 = 1 - a7;
    v48 = v45 + 0xFFFF;
    v49 = v45 + 81919;
    v50 = a7 * v149;
    v51 = v50 + v149;
    v150 = ~a7;
    v52 = a1 + v15 + 0xFFFF;
    v53 = (v43 - v149) * a7;
    v54 = -1;
    v152 = v12;
    v153 = v15;
    do
    {
      v55 = a7 - v44;
      v56 = v51;
      v57 = v49;
      v58 = v48;
      v154 = v46;
      v59 = v46;
      for (i = v44; i < v55; v56 += a7)
      {
        v61 = *(a1 + v56 + 49152);
        v62 = v61;
        v63 = v61;
        v64 = *(a1 + v56 + 0x10000);
        *&v65 = v64;
        LOBYTE(v65) = *(a1 + v56 + 81920);
        v66 = fmax(((v62 + v64) + v65), 0.01);
        *&v63 = v63 / v66;
        v67 = vcvtms_s32_f32(*&v63 * 256.0);
        v68 = v64 / v66;
        if (v67 >= 255)
        {
          v67 = 255;
        }

        v69 = vcvtms_s32_f32(v68 * 256.0);
        if (v69 >= 255)
        {
          v69 = 255;
        }

        ++v11[v67];
        ++v16[v69];
        v70 = *(a1 + v59);
        v71 = *(a1 + v58);
        *&v72 = v71;
        LOBYTE(v72) = *(a1 + v57);
        v73 = fmax(((v70 + v71) + v72), 0.01);
        v74 = v70 / v73;
        v75 = vcvtms_s32_f32(v74 * 256.0);
        *&v73 = v71 / v73;
        v76 = vcvtms_s32_f32(*&v73 * 256.0);
        if (v75 >= 255)
        {
          v75 = 255;
        }

        ++v11[v75];
        if (v76 >= 255)
        {
          v77 = 255;
        }

        else
        {
          v77 = v76;
        }

        ++v16[v77];
        ++i;
        v59 += a7;
        v58 += a7;
        v57 += a7;
      }

      v78 = v55 - 1;
      v79 = v54;
      v80 = v53;
      v81 = v50;
      LODWORD(v15) = v153;
      if (v44 + 1 < v55 - 1)
      {
        do
        {
          v82 = *(v52 + v81 - 0x4000);
          v83 = v82;
          v84 = v82;
          v85 = *(v52 + v81);
          *&v86 = v85;
          LOBYTE(v86) = *(v52 + v81 + 0x4000);
          v87 = fmax(((v83 + v85) + v86), 0.01);
          *&v84 = v84 / v87;
          v88 = vcvtms_s32_f32(*&v84 * 256.0);
          v89 = v85 / v87;
          if (v88 >= 255)
          {
            v88 = 255;
          }

          v90 = vcvtms_s32_f32(v89 * 256.0);
          if (v90 >= 255)
          {
            v90 = 255;
          }

          ++v11[v88];
          ++v16[v90];
          v91 = *(v52 + v80 - 0x4000);
          v92 = *(v52 + v80);
          *&v93 = v91;
          LOBYTE(v93) = *(v52 + v80 + 0x4000);
          v94 = fmax(((v91 + v92) + v93), 0.01);
          v95 = v91 / v94;
          v96 = vcvtms_s32_f32(v95 * 256.0);
          *&v94 = v92 / v94;
          v97 = vcvtms_s32_f32(*&v94 * 256.0);
          if (v96 >= 255)
          {
            v96 = 255;
          }

          ++v11[v96];
          if (v97 >= 255)
          {
            v98 = 255;
          }

          else
          {
            v98 = v97;
          }

          ++v16[v98];
          ++v81;
          ++v80;
          ++v79;
        }

        while (v153 + v79 < v78);
      }

      v99 = *v11;
      v100 = 0.0;
      v101 = (v11 + 1);
      v102 = 255;
      do
      {
        v103 = *v101;
        v99 += v103;
        v100 = v100 + (*(a5 + 4 * v103) * v101[512]);
        ++v101;
        --v102;
      }

      while (v102);
      v104 = v100 / sqrtf(v99);
      v12 = v152;
      v152[v47] = v104;
      v105 = *v16;
      v106 = 0.0;
      v107 = (v11 + 257);
      v108 = 255;
      do
      {
        v109 = *v107;
        v105 += v109;
        v106 = v106 + (*(a5 + 4 * v109) * v107[512]);
        ++v107;
        --v108;
      }

      while (v108);
      v152[v47++] = (v104 + (v106 / sqrtf(v105))) * 0.5;
      --v44;
      v46 = v154 + v151;
      v48 += v151;
      v49 += v151;
      v51 += v150;
      v50 += v150;
      v53 += a7 - 1;
      --v54;
    }

    while (v47 != v153);
  }

  v110 = v12[1];
  v12[21] = ((v110 * 0.19) + (v42 * 0.79)) + (*a4 * 0.02);
  if (v15 >= 3)
  {
    v111 = a4 + 1;
    v112 = v144 - 1;
    v113 = v12;
    do
    {
      v114 = (*v113 * 0.19) + (v110 * 0.6);
      v110 = v113[2];
      v115 = *v111++;
      v113[22] = (v114 + (v110 * 0.19)) + (v115 * 0.02);
      ++v113;
      --v112;
    }

    while (v112);
  }

  *(v146 + 4 * v144) = ((v12[v149] * 0.19) + (v12[v144] * 0.79)) + (a4[v144] * 0.02);
  v116 = v12[31];
  v117 = v12[32];
  v118 = v12[33];
  v119 = v12[34];
  v120 = v12[35];
  v121 = v12[36];
  v122 = v12[37];
  v123 = v12[38];
  v124 = v12[39];
  v125 = v12[40];
  v126 = v12[41];
  v127 = (((((((((((((((((((((v12[22] * 0.0019763) + (v12[21] * 0.0028233)) + (v12[23] * 0.0012185)) + (v12[24] * 0.00054979)) + (v12[25] * -0.000029719)) + (v12[26] * -0.00052007)) + (v12[27] * -0.00092128)) + (v12[28] * -0.0012333)) + (v12[29] * -0.0014562)) + (v12[30] * -0.0015899)) + (v116 * -0.0016345)) + (v117 * -0.0015899)) + (v118 * -0.0014562)) + (v119 * -0.0012333)) + (v120 * -0.00092128)) + (v121 * -0.00052007)) + (v122 * -0.000029719)) + (v123 * 0.00054979)) + (v124 * 0.0012185)) + (v125 * 0.0019763)) + (v126 * 0.0028233)) * -1000.0;
  v128 = 0.0;
  if (v127 >= 0.0)
  {
    v129 = (((((((((((((((((((((v12[22] * 0.0019763) + (v12[21] * 0.0028233)) + (v12[23] * 0.0012185)) + (v12[24] * 0.00054979)) + (v12[25] * -0.000029719)) + (v12[26] * -0.00052007)) + (v12[27] * -0.00092128)) + (v12[28] * -0.0012333)) + (v12[29] * -0.0014562)) + (v12[30] * -0.0015899)) + (v116 * -0.0016345)) + (v117 * -0.0015899)) + (v118 * -0.0014562)) + (v119 * -0.0012333)) + (v120 * -0.00092128)) + (v121 * -0.00052007)) + (v122 * -0.000029719)) + (v123 * 0.00054979)) + (v124 * 0.0012185)) + (v125 * 0.0019763)) + (v126 * 0.0028233)) * -1000.0;
  }

  else
  {
    v129 = 0.0;
  }

  if (v127 <= 1.0)
  {
    v130 = v129;
  }

  else
  {
    v130 = 1.0;
  }

  *v147 = v130;
  if (*(v147 + 8))
  {
    if (v130 >= *(v147 + 4))
    {
      v131 = 0;
      v132 = 10;
      do
      {
        if (*(v146 + 4 * v131) > v128)
        {
          v132 = v131;
          v128 = *(v146 + 4 * v131);
        }

        ++v131;
      }

      while (v131 != 21);
      v133 = v132 - 2;
      v128 = 0.0;
      if (v133 < 0x11)
      {
        v134 = 0;
        v135 = 0.0;
        do
        {
          v136 = *(v146 + 4 * v133 + v134 * 4);
          v135 = v135 + (*&dword_1C9F75138[v134] * v136);
          v128 = v128 + (*&dword_1C9F7514C[v134++] * v136);
        }

        while (v134 != 5);
        if (v128 <= -0.0002)
        {
          v137 = 0.0;
          if (v135 > 0.0 == v128 < 0.0)
          {
            v137 = 4.0;
            if (v135 <= (v128 * -8.0))
            {
              v137 = v135 / (v128 * -2.0);
            }
          }
        }

        else
        {
          v137 = NAN;
        }

        v128 = 0.0;
        if ((LODWORD(v137) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
        {
          v142 = v137 + v133;
          v128 = -4.0;
          if (v142 > 0.0)
          {
            v128 = 4.0;
            if (v142 < 20.0)
            {
              v143 = (((v142 - v142) * (v142 + 1)) + ((1.0 - (v142 - v142)) * v142)) + -10.0;
              v128 = (v143 * 0.2) + (v143 * 0.2);
            }
          }
        }
      }
    }
  }

  else
  {
    *(v147 + 8) = 1;
    *(v147 + 4) = v130 * 0.5;
  }

  v138 = v128 / 20.0;
  if ((v128 / 20.0) != 0.0)
  {
    v139 = malloc_type_calloc(4uLL, 0x10uLL, 0x1000040451B5BE8uLL);
    ctrTrackerComputation_overscan(a6, v139, v138);
    for (j = 0; j != 4; ++j)
    {
      a6[j] = *&v139[j * 16];
    }

    free(v139);
  }

  return v15 != 21;
}

BOOL ctrTrackerComputation_checkBoxLocation(double *a1, unint64_t a2, unint64_t a3)
{
  result = 0;
  if (*a1 >= 0.0 && a1[4] < a2 && a1[1] >= 0.0 && a1[5] < a3)
  {
    return 1;
  }

  return result;
}

void generate_size_search_stablizer(uint64_t a1, int a2, float a3, float a4)
{
  v5 = (a2 - 1) / 2;
  if (a2 <= 2)
  {
    *(a1 + 4 * v5) = 1065353216;
  }

  else
  {
    v7 = 0;
    v8 = a3 + a3;
    if (v5 <= 0)
    {
      v9 = (a2 - 1) / -2;
    }

    else
    {
      v9 = -1;
    }

    v10 = (v9 + 1) + v5;
    v11 = vdupq_n_s64(v10 - 1);
    v12 = (v10 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v13 = (a1 + 8);
    v39 = v11;
    do
    {
      v14 = vdupq_n_s64(v7);
      v15 = vcgeq_u64(v11, vorrq_s8(v14, xmmword_1C9F609E0));
      v16 = vmovn_s64(v15);
      v41 = vuzp1_s16(v16, *v15.i8);
      v43 = v14;
      *&v17 = expf(-((v7 - v5) * (v7 - v5)) / v8);
      v45 = v17;
      v18 = expf(-((v7 - v5 + 1) * (v7 - v5 + 1)) / v8);
      v19 = v45;
      *(&v19 + 1) = v18;
      v46 = v19;
      v20 = expf(-((v7 - v5 + 2) * (v7 - v5 + 2)) / v8);
      v21 = v46;
      *(&v21 + 2) = v20;
      v47 = v21;
      v22 = expf(-((v7 - v5 + 3) * (v7 - v5 + 3)) / v8);
      if (v41.i8[0])
      {
        *(v13 - 2) = v47;
      }

      if (vuzp1_s16(v16, v41).i8[2])
      {
        *(v13 - 1) = *(&v47 + 1);
      }

      v11 = v39;
      v23 = vmovn_s64(vcgeq_u64(v39, vorrq_s8(v43, xmmword_1C9F609D0)));
      if (vuzp1_s16(v23, v23).i32[1])
      {
        *v13 = *(&v47 + 2);
        v13[1] = v22;
      }

      v7 += 4;
      v13 += 4;
    }

    while (v12 != v7);
    v24 = 0;
    v25 = (a1 + 4 * v5);
    *v25 = 1065353216;
    v26 = (v25 + 2);
    v27 = a4 + a4;
    if (v5 <= 1)
    {
      v28 = 1;
    }

    else
    {
      v28 = v5;
    }

    v29 = (v28 + 3) & 0x7FFFFFFC;
    v30 = vdupq_n_s64(v28 - 1);
    v40 = v30;
    do
    {
      v31 = vdupq_n_s64(v24);
      v32 = vcgeq_u64(v30, vorrq_s8(v31, xmmword_1C9F609E0));
      v33 = vmovn_s64(v32);
      v42 = vuzp1_s16(v33, *v32.i8);
      v44 = v31;
      v48 = expf(-((v24 + 2) * (v24 + 2)) / v27);
      *&v34 = expf(-((v24 + 1) * (v24 + 1)) / v27);
      *(&v34 + 1) = v48;
      v49 = v34;
      v35 = expf(-((v24 + 3) * (v24 + 3)) / v27);
      v36 = v49;
      *(&v36 + 2) = v35;
      v50 = v36;
      v37 = expf(-((v24 + 4) * (v24 + 4)) / v27);
      if (v42.i8[0])
      {
        *(v26 - 1) = v50;
      }

      if (vuzp1_s16(v33, v42).i8[2])
      {
        *v26 = *(&v50 + 1);
      }

      v30 = v40;
      v38 = vmovn_s64(vcgeq_u64(v40, vorrq_s8(v44, xmmword_1C9F609D0)));
      if (vuzp1_s16(v38, v38).i32[1])
      {
        v26[1] = *(&v50 + 2);
        v26[2] = v37;
      }

      v24 += 4;
      v26 += 4;
    }

    while (v29 != v24);
  }
}

uint64_t generate_sqrt_table(uint64_t result, unsigned int a2)
{
  if ((a2 & 0x80000000) == 0)
  {
    v2 = 0;
    v3 = vdupq_n_s64(a2);
    v4 = xmmword_1C9F609D0;
    v5 = xmmword_1C9F609E0;
    v6 = (result + 8);
    v7 = vdupq_n_s64(4uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v3, v5));
      v9.i32[0] = v2;
      v9.i32[1] = v2 + 1;
      v9.u64[1] = vorr_s8(vdup_n_s32(v2), 0x300000002);
      v10 = vsqrtq_f32(vcvtq_f32_u32(v9));
      if (vuzp1_s16(v8, *v3.i8).u8[0])
      {
        *(v6 - 2) = v10.i32[0];
      }

      if (vuzp1_s16(v8, *&v3).i8[2])
      {
        *(v6 - 1) = v10.i32[1];
      }

      if (vuzp1_s16(*&v3, vmovn_s64(vcgeq_u64(v3, *&v4))).i32[1])
      {
        *v6 = v10.i64[1];
      }

      v2 += 4;
      v4 = vaddq_s64(v4, v7);
      v5 = vaddq_s64(v5, v7);
      v6 += 2;
    }

    while ((a2 & 0x7FFFFFFC) + 4 != v2);
  }

  return result;
}

void CVPixelBufferLock::Unlock()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void CVPixelBufferLock::CVPixelBufferLock()
{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

{
  OUTLINED_FUNCTION_3(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

uint64_t dlib::eigenvalue_decomposition<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>::eigenvalue_decomposition<dlib::matrix<float,0l,0l,dlib::memory_manager_stateless_kernel_1<char>,dlib::row_major_layout>>(uint64_t *a1, void *a2, void *a3, uint64_t *a4)
{
  v7 = *a1;
  if (v7)
  {
    MEMORY[0x1CCA95C10](v7, 0x1000C8052888210);
  }

  if (*a2)
  {
    MEMORY[0x1CCA95C10](*a2, 0x1000C8052888210);
  }

  if (*a3)
  {
    MEMORY[0x1CCA95C10](*a3, 0x1000C8052888210);
  }

  result = *a4;
  if (*a4)
  {
    return MEMORY[0x1CCA95C10](result, 0x1000C8052888210);
  }

  return result;
}

void ma::EncodeAnalysis::GetFrameLBP()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void ma::EncodeStats::GenerateSubMacroBlockStats()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void dlib::fatal_error::check_for_previous_fatal_errors(uint64_t a1)
{
  v2 = MEMORY[0x1E69E5300];
  v3 = std::operator<<[abi:ne200100]<std::char_traits<char>>(MEMORY[0x1E69E5300], "\n\n ************************** FATAL ERROR DETECTED ************************** ");
  std::endl[abi:ne200100]<char,std::char_traits<char>>(v3);
  v4 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, " ************************** FATAL ERROR DETECTED ************************** ");
  std::endl[abi:ne200100]<char,std::char_traits<char>>(v4);
  v5 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, " ************************** FATAL ERROR DETECTED ************************** \n");
  std::endl[abi:ne200100]<char,std::char_traits<char>>(v5);
  v6 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "Two fatal errors have been detected, the first was inappropriately ignored. \n");
  v7 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "To prevent further fatal errors from being ignored this application will be \n");
  v8 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "terminated immediately and you should go fix this buggy program.\n\n");
  v9 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v8, "The error message from this fatal error was:\n");
  v10 = (*(*a1 + 16))(a1);
  v11 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, v10);
  v12 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v11, "\n\n");
  std::endl[abi:ne200100]<char,std::char_traits<char>>(v12);
  abort();
}

uint64_t dlib::lbfgs_search_strategy::lbfgs_search_strategy(uint64_t *a1, void *a2, uint64_t *a3)
{
  v5 = *a1;
  if (v5)
  {
    MEMORY[0x1CCA95C10](v5, 0x1000C8000313F17);
  }

  if (*a2)
  {
    MEMORY[0x1CCA95C10](*a2, 0x1000C8000313F17);
  }

  result = *a3;
  if (*a3)
  {

    JUMPOUT(0x1CCA95C10);
  }

  return result;
}

void CGImage_CreateCVPixelBuffer()
{
  *v0 = 0;
  _os_log_debug_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[CGImage->CVPixelBuffer] CGImage not IOSurface backed", v0, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

BOOL CGImage_CreateCVPixelBuffer(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
  return *a3 == 0;
}

uint64_t getkSymptomDiagnosticReplySuccess_cold_1()
{
  dlerror();
  abort_report_np();
  return __getSDRDiagnosticReporterClass_block_invoke_cold_1();
}

void ma::EncodeStatsHW::ComputeChromaBlockSum()
{
  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to unlock CVPixelBuffer (%p, %d)", v0, 0x12u);
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SentencePieceText_SentencePiece>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::SentencePieceText_SentencePiece *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::SentencePieceText_SentencePiece::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SentencePieceText>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::SentencePieceText *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::SentencePieceText::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

void sentencepiece::TrainerSpec::_InternalParse(sentencepiece::TrainerSpec *this, google::protobuf::internal *a2, google::protobuf::internal::ParseContext *a3)
{
  v275 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v275, *(a3 + 23));
  v6 = v275;
  if (v5)
  {
    return;
  }

  while (2)
  {
    v7 = (v6 + 1);
    LODWORD(v8) = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = (v8 + (*v7 << 7) - 128);
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = (v6 + 2);
LABEL_6:
      v275 = v7;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v6, v8);
    v275 = TagFallback;
    if (!TagFallback)
    {
      return;
    }

    v7 = TagFallback;
LABEL_7:
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_269;
        }

        v9 = v7 - 1;
        while (2)
        {
          v275 = (v9 + 1);
          if (!*(this + 9))
          {
            v11 = *(this + 17);
LABEL_16:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 14, v11 + 1);
            v10 = *(this + 9);
            goto LABEL_17;
          }

          OUTLINED_FUNCTION_15();
          if (v12 != v13)
          {
            OUTLINED_FUNCTION_13();
            *(this + 16) = v15;
            v17 = *(v16 + 8);
            goto LABEL_22;
          }

          if (v11 == *(this + 17))
          {
            goto LABEL_16;
          }

LABEL_17:
          OUTLINED_FUNCTION_20(v10);
          v18 = *(this + 7);
          if (!v18)
          {
            OUTLINED_FUNCTION_21();
          }

          if (*(v18 + 24))
          {
            v24 = OUTLINED_FUNCTION_8();
          }

          v19 = OUTLINED_FUNCTION_2_1();
          OUTLINED_FUNCTION_17(v19);
          OUTLINED_FUNCTION_16();
          *(this + 16) = v20;
          v17 = OUTLINED_FUNCTION_14(v21, v22);
LABEL_22:
          v275 = google::protobuf::internal::InlineGreedyStringParser(v17, v14, a3);
          if (v275)
          {
            OUTLINED_FUNCTION_12();
            if (!(!v210 & v23) || *v9 != 10)
            {
              goto LABEL_267;
            }

            continue;
          }

          return;
        }

      case 2u:
        if (v8 != 18)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_19(*(this + 10) | 1);
        if (v43)
        {
          OUTLINED_FUNCTION_18();
        }

        v44 = (this + 152);
        goto LABEL_227;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        v153 = (v7 + 1);
        v152 = *v7;
        if ((v152 & 0x8000000000000000) == 0)
        {
          goto LABEL_183;
        }

        OUTLINED_FUNCTION_0_3();
        if (v155 < 0)
        {
          v275 = google::protobuf::internal::VarintParseSlow64(v154, v152);
          if (!v275)
          {
            return;
          }
        }

        else
        {
          v153 = (v154 + 2);
LABEL_183:
          v275 = v153;
        }

        if ((v152 - 1) > 3)
        {
          v269 = *(this + 1);
          if (v269)
          {
            v270 = ((v269 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v273 = v152;
            v274 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
            v152 = v273;
            v270 = v274;
          }

          google::protobuf::internal::WriteVarint(3, v152, v270);
        }

        else
        {
          *(this + 10) |= 0x800000u;
          *(this + 68) = v152;
        }

        goto LABEL_267;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(*(this + 10) | 0x1000000);
        if ((v100 & 0x80) == 0)
        {
          goto LABEL_122;
        }

        OUTLINED_FUNCTION_1_3();
        if (v103 < 0)
        {
          v237 = google::protobuf::internal::VarintParseSlow64(v102, v100);
          v275 = v237;
          *(this + 69) = v238;
          if (!v237)
          {
            return;
          }
        }

        else
        {
          v101 = (v102 + 2);
LABEL_122:
          v275 = v101;
          *(this + 69) = v100;
        }

        goto LABEL_267;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_269;
        }

        v125 = v7 - 1;
        while (1)
        {
          v275 = (v125 + 1);
          if (!*(this + 12))
          {
            break;
          }

          OUTLINED_FUNCTION_15();
          if (v12 == v13)
          {
            if (v127 == *(this + 23))
            {
LABEL_154:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 20, v127 + 1);
              v126 = *(this + 12);
            }

            OUTLINED_FUNCTION_20(v126);
            v132 = *(this + 10);
            if (!v132)
            {
              OUTLINED_FUNCTION_21();
            }

            if (*(v132 + 24))
            {
              v137 = OUTLINED_FUNCTION_8();
            }

            v133 = OUTLINED_FUNCTION_2_1();
            OUTLINED_FUNCTION_17(v133);
            OUTLINED_FUNCTION_16();
            *(this + 22) = v134;
            v131 = OUTLINED_FUNCTION_14(v135, v136);
            goto LABEL_160;
          }

          OUTLINED_FUNCTION_13();
          *(this + 22) = v129;
          v131 = *(v130 + 8);
LABEL_160:
          v275 = google::protobuf::internal::InlineGreedyStringParser(v131, v128, a3);
          if (!v275)
          {
            return;
          }

          OUTLINED_FUNCTION_12();
          if (!(!v210 & v23) || *v125 != 42)
          {
            goto LABEL_267;
          }
        }

        v127 = *(this + 23);
        goto LABEL_154;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(*(this + 10) | 0x200);
        if ((v148 & 0x80) == 0)
        {
          goto LABEL_178;
        }

        OUTLINED_FUNCTION_1_3();
        if (v151 < 0)
        {
          v251 = google::protobuf::internal::VarintParseSlow64(v150, v148);
          v275 = v251;
          *(this + 56) = v252;
          if (!v251)
          {
            return;
          }
        }

        else
        {
          v149 = (v150 + 2);
LABEL_178:
          v275 = v149;
          *(this + 56) = v148;
        }

        goto LABEL_267;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_19(*(this + 10) | 2);
        if (v43)
        {
          OUTLINED_FUNCTION_18();
        }

        v44 = (this + 160);
        goto LABEL_227;
      case 0xAu:
        if (v8 != 85)
        {
          goto LABEL_269;
        }

        *(this + 10) |= 0x2000000u;
        v179 = *v7;
        v118 = (v7 + 4);
        *(this + 70) = v179;
        goto LABEL_251;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(*(this + 10) | 0x800);
        if ((v77 & 0x8000000000000000) == 0)
        {
          goto LABEL_100;
        }

        OUTLINED_FUNCTION_0_3();
        if (v80 < 0)
        {
          v227 = google::protobuf::internal::VarintParseSlow64(v79, v77);
          v275 = v227;
          *(this + 29) = v228;
          if (!v227)
          {
            return;
          }
        }

        else
        {
          v78 = (v79 + 2);
LABEL_100:
          v275 = v78;
          *(this + 29) = v77;
        }

        goto LABEL_267;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(*(this + 10) | 0x400);
        if ((v180 & 0x80) == 0)
        {
          goto LABEL_234;
        }

        OUTLINED_FUNCTION_1_3();
        if (v183 < 0)
        {
          v257 = google::protobuf::internal::VarintParseSlow64(v182, v180);
          v275 = v257;
          *(this + 57) = v258;
          if (!v257)
          {
            return;
          }
        }

        else
        {
          v181 = (v182 + 2);
LABEL_234:
          v275 = v181;
          *(this + 57) = v180;
        }

        goto LABEL_267;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(*(this + 10) | 0x1000);
        if ((v91 & 0x80) == 0)
        {
          goto LABEL_113;
        }

        OUTLINED_FUNCTION_1_3();
        if (v94 < 0)
        {
          v233 = google::protobuf::internal::VarintParseSlow64(v93, v91);
          v275 = v233;
          *(this + 60) = v234;
          if (!v233)
          {
            return;
          }
        }

        else
        {
          v92 = (v93 + 2);
LABEL_113:
          v275 = v92;
          *(this + 60) = v91;
        }

        goto LABEL_267;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(*(this + 10) | 0x4000000);
        if ((v139 & 0x80) == 0)
        {
          goto LABEL_169;
        }

        OUTLINED_FUNCTION_1_3();
        if (v142 < 0)
        {
          v247 = google::protobuf::internal::VarintParseSlow64(v141, v139);
          v275 = v247;
          *(this + 71) = v248;
          if (!v247)
          {
            return;
          }
        }

        else
        {
          v140 = (v141 + 2);
LABEL_169:
          v275 = v140;
          *(this + 71) = v139;
        }

        goto LABEL_267;
      case 0xFu:
        if (v8 != 125)
        {
          goto LABEL_269;
        }

        *(this + 10) |= 0x8000000u;
        v119 = *v7;
        v118 = (v7 + 4);
        *(this + 72) = v119;
        goto LABEL_251;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(*(this + 10) | 0x10000000);
        if ((v59 & 0x80) == 0)
        {
          goto LABEL_76;
        }

        OUTLINED_FUNCTION_1_3();
        if (v62 < 0)
        {
          v225 = google::protobuf::internal::VarintParseSlow64(v61, v59);
          v275 = v225;
          *(this + 73) = v226;
          if (!v225)
          {
            return;
          }
        }

        else
        {
          v60 = (v61 + 2);
LABEL_76:
          v275 = v60;
          *(this + 73) = v59;
        }

        goto LABEL_267;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(*(this + 10) | 0x20000000);
        if ((v170 & 0x80) == 0)
        {
          goto LABEL_217;
        }

        OUTLINED_FUNCTION_1_3();
        if (v173 < 0)
        {
          v253 = google::protobuf::internal::VarintParseSlow64(v172, v170);
          v275 = v253;
          *(this + 74) = v254;
          if (!v253)
          {
            return;
          }
        }

        else
        {
          v171 = (v172 + 2);
LABEL_217:
          v275 = v171;
          *(this + 74) = v170;
        }

        goto LABEL_267;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(*(this + 10) | 0x40000000);
        if ((v174 & 0x80) == 0)
        {
          goto LABEL_222;
        }

        OUTLINED_FUNCTION_1_3();
        if (v177 < 0)
        {
          v255 = google::protobuf::internal::VarintParseSlow64(v176, v174);
          v275 = v255;
          *(this + 75) = v256;
          if (!v255)
          {
            return;
          }
        }

        else
        {
          v175 = (v176 + 2);
LABEL_222:
          v275 = v175;
          *(this + 75) = v174;
        }

        goto LABEL_267;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(*(this + 11) | 1);
        if (v192 < 0 && (OUTLINED_FUNCTION_0_3(), v195 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v194, v193);
          OUTLINED_FUNCTION_3_0();
          *(this + 308) = v263;
          if (!v264)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 308) = v196;
        }

        goto LABEL_267;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(*(this + 10) | 0x80000000);
        if ((v188 & 0x80) == 0)
        {
          goto LABEL_244;
        }

        OUTLINED_FUNCTION_1_3();
        if (v191 < 0)
        {
          v261 = google::protobuf::internal::VarintParseSlow64(v190, v188);
          v275 = v261;
          *(this + 76) = v262;
          if (!v261)
          {
            return;
          }
        }

        else
        {
          v189 = (v190 + 2);
LABEL_244:
          v275 = v189;
          *(this + 76) = v188;
        }

        goto LABEL_267;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(*(this + 11) | 2);
        if (v45 < 0 && (OUTLINED_FUNCTION_0_3(), v48 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v47, v46);
          OUTLINED_FUNCTION_3_0();
          *(this + 309) = v219;
          if (!v220)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 309) = v49;
        }

        goto LABEL_267;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(*(this + 11) | 8);
        if (v120 < 0 && (OUTLINED_FUNCTION_0_3(), v123 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v122, v121);
          OUTLINED_FUNCTION_3_0();
          *(this + 311) = v245;
          if (!v246)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 311) = v124;
        }

        goto LABEL_267;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(*(this + 11) | 4);
        if (v198 < 0 && (OUTLINED_FUNCTION_0_3(), v201 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v200, v199);
          OUTLINED_FUNCTION_3_0();
          *(this + 310) = v265;
          if (!v266)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 310) = v202;
        }

        goto LABEL_267;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(*(this + 10) | 0x4000);
        if (v54 < 0 && (OUTLINED_FUNCTION_0_3(), v57 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v56, v55);
          OUTLINED_FUNCTION_3_0();
          *(this + 245) = v223;
          if (!v224)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 245) = v58;
        }

        goto LABEL_267;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(*(this + 10) | 0x10000);
        if (v113 < 0 && (OUTLINED_FUNCTION_0_3(), v116 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v115, v114);
          OUTLINED_FUNCTION_3_0();
          *(this + 247) = v243;
          if (!v244)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 247) = v117;
        }

        goto LABEL_267;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(*(this + 10) | 0x8000);
        if (v81 < 0 && (OUTLINED_FUNCTION_0_3(), v84 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v83, v82);
          OUTLINED_FUNCTION_3_0();
          *(this + 246) = v229;
          if (!v230)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 246) = v85;
        }

        goto LABEL_267;
      case 0x1Eu:
        if (v8 != 242)
        {
          goto LABEL_269;
        }

        v156 = (v7 - 2);
        while (1)
        {
          v275 = (v156 + 1);
          if (!*(this + 15))
          {
            break;
          }

          OUTLINED_FUNCTION_15();
          if (v12 == v13)
          {
            if (v158 == *(this + 29))
            {
LABEL_194:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 26, v158 + 1);
              v157 = *(this + 15);
            }

            OUTLINED_FUNCTION_20(v157);
            v163 = *(this + 13);
            if (!v163)
            {
              OUTLINED_FUNCTION_21();
            }

            if (*(v163 + 24))
            {
              v168 = OUTLINED_FUNCTION_8();
            }

            v164 = OUTLINED_FUNCTION_2_1();
            OUTLINED_FUNCTION_17(v164);
            OUTLINED_FUNCTION_16();
            *(this + 28) = v165;
            v162 = OUTLINED_FUNCTION_14(v166, v167);
            goto LABEL_200;
          }

          OUTLINED_FUNCTION_13();
          *(this + 28) = v160;
          v162 = *(v161 + 8);
LABEL_200:
          v275 = google::protobuf::internal::InlineGreedyStringParser(v162, v159, a3);
          if (!v275)
          {
            return;
          }

          OUTLINED_FUNCTION_12();
          if (!(!v210 & v23) || *v156 != 498)
          {
            goto LABEL_267;
          }
        }

        v158 = *(this + 29);
        goto LABEL_194;
      case 0x1Fu:
        if (v8 != 250)
        {
          goto LABEL_269;
        }

        v63 = (v7 - 2);
        break;
      case 0x20u:
        if (v8)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(*(this + 11) | 0x10);
        if (v38 < 0 && (OUTLINED_FUNCTION_0_3(), v41 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v40, v39);
          OUTLINED_FUNCTION_3_0();
          *(this + 312) = v217;
          if (!v218)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 312) = v42;
        }

        goto LABEL_267;
      case 0x21u:
        if (v8 != 8)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_7(*(this + 11) | 0x20);
        if (v203 < 0 && (OUTLINED_FUNCTION_0_3(), v206 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v205, v204);
          OUTLINED_FUNCTION_3_0();
          *(this + 313) = v267;
          if (!v268)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 313) = v207;
        }

        goto LABEL_267;
      case 0x22u:
        if (v8 != 16)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(*(this + 10) | 0x40000);
        if (v95 < 0 && (OUTLINED_FUNCTION_0_3(), v98 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v97, v96);
          OUTLINED_FUNCTION_3_0();
          *(this + 249) = v235;
          if (!v236)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 249) = v99;
        }

        goto LABEL_267;
      case 0x23u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(*(this + 10) | 0x20000);
        if (v104 < 0 && (OUTLINED_FUNCTION_0_3(), v107 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v106, v105);
          OUTLINED_FUNCTION_3_0();
          *(this + 248) = v239;
          if (!v240)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 248) = v108;
        }

        goto LABEL_267;
      case 0x24u:
        if (v8 != 34)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_19(*(this + 10) | 4);
        if (v43)
        {
          OUTLINED_FUNCTION_18();
        }

        v44 = (this + 168);
        goto LABEL_227;
      case 0x28u:
        if (v8 != 64)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_5(*(this + 10) | 0x100000);
        if ((v109 & 0x80) == 0)
        {
          goto LABEL_135;
        }

        OUTLINED_FUNCTION_1_3();
        if (v112 < 0)
        {
          v241 = google::protobuf::internal::VarintParseSlow64(v111, v109);
          v275 = v241;
          *(this + 63) = v242;
          if (!v241)
          {
            return;
          }
        }

        else
        {
          v110 = (v111 + 2);
LABEL_135:
          v275 = v110;
          *(this + 63) = v109;
        }

        goto LABEL_267;
      case 0x29u:
        if (v8 != 72)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_9(*(this + 11) | 0x40);
        if ((v31 & 0x80) == 0)
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_1_3();
        if (v34 < 0)
        {
          v215 = google::protobuf::internal::VarintParseSlow64(v33, v31);
          v275 = v215;
          *(this + 79) = v216;
          if (!v215)
          {
            return;
          }
        }

        else
        {
          v32 = (v33 + 2);
LABEL_38:
          v275 = v32;
          *(this + 79) = v31;
        }

        goto LABEL_267;
      case 0x2Au:
        if (v8 != 80)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_9(*(this + 11) | 0x80);
        if ((v50 & 0x80) == 0)
        {
          goto LABEL_67;
        }

        OUTLINED_FUNCTION_1_3();
        if (v53 < 0)
        {
          v221 = google::protobuf::internal::VarintParseSlow64(v52, v50);
          v275 = v221;
          *(this + 80) = v222;
          if (!v221)
          {
            return;
          }
        }

        else
        {
          v51 = (v52 + 2);
LABEL_67:
          v275 = v51;
          *(this + 80) = v50;
        }

        goto LABEL_267;
      case 0x2Bu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_9(*(this + 11) | 0x100);
        if ((v184 & 0x80) == 0)
        {
          goto LABEL_239;
        }

        OUTLINED_FUNCTION_1_3();
        if (v187 < 0)
        {
          v259 = google::protobuf::internal::VarintParseSlow64(v186, v184);
          v275 = v259;
          *(this + 81) = v260;
          if (!v259)
          {
            return;
          }
        }

        else
        {
          v185 = (v186 + 2);
LABEL_239:
          v275 = v185;
          *(this + 81) = v184;
        }

        goto LABEL_267;
      case 0x2Cu:
        if (v8 != 98)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 8);
        if (v35)
        {
          OUTLINED_FUNCTION_11();
        }

        v36 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_surface_;
        v37 = (this + 176);
        goto LABEL_264;
      case 0x2Du:
        if (v8 != 106)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 0x10);
        if (v35)
        {
          OUTLINED_FUNCTION_11();
        }

        v36 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_unk_piece_;
        v37 = (this + 184);
        goto LABEL_264;
      case 0x2Eu:
        if (v8 != 114)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 0x20);
        if (v35)
        {
          OUTLINED_FUNCTION_11();
        }

        v36 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_bos_piece_;
        v37 = (this + 192);
        goto LABEL_264;
      case 0x2Fu:
        if (v8 != 122)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 0x40);
        if (v35)
        {
          OUTLINED_FUNCTION_11();
        }

        v36 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_eos_piece_;
        v37 = (this + 200);
        goto LABEL_264;
      case 0x30u:
        if (v8 != 130)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_10(*(this + 10) | 0x80);
        if (v35)
        {
          OUTLINED_FUNCTION_11();
        }

        v36 = &sentencepiece::TrainerSpec::_i_give_permission_to_break_this_code_default_pad_piece_;
        v37 = (this + 208);
LABEL_264:
        v178 = google::protobuf::internal::ArenaStringPtr::Mutable(v37, v36, v35);
        goto LABEL_265;
      case 0x31u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(*(this + 10) | 0x80000);
        if (v86 < 0 && (OUTLINED_FUNCTION_0_3(), v89 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v88, v87);
          OUTLINED_FUNCTION_3_0();
          *(this + 250) = v231;
          if (!v232)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 250) = v90;
        }

        goto LABEL_267;
      case 0x32u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(*(this + 10) | 0x2000);
        if (v143 < 0 && (OUTLINED_FUNCTION_0_3(), v146 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v145, v144);
          OUTLINED_FUNCTION_3_0();
          *(this + 244) = v249;
          if (!v250)
          {
            return;
          }
        }

        else
        {
          OUTLINED_FUNCTION_4();
          *(this + 244) = v147;
        }

        goto LABEL_267;
      case 0x33u:
        if (v8 != 157)
        {
          goto LABEL_269;
        }

        *(this + 10) |= 0x200000u;
        v197 = *v7;
        v118 = (v7 + 4);
        *(this + 64) = v197;
LABEL_251:
        v275 = v118;
        goto LABEL_267;
      case 0x34u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_6(*(this + 10) | 0x400000);
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        OUTLINED_FUNCTION_0_3();
        if (v30 < 0)
        {
          v213 = google::protobuf::internal::VarintParseSlow64(v29, v27);
          v275 = v213;
          *(this + 33) = v214;
          if (!v213)
          {
            return;
          }
        }

        else
        {
          v28 = (v29 + 2);
LABEL_33:
          v275 = v28;
          *(this + 33) = v27;
        }

        goto LABEL_267;
      case 0x35u:
        if (v8 != 170)
        {
          goto LABEL_269;
        }

        OUTLINED_FUNCTION_19(*(this + 10) | 0x100);
        if (v43)
        {
          OUTLINED_FUNCTION_18();
        }

        v44 = (this + 216);
LABEL_227:
        v178 = google::protobuf::internal::ArenaStringPtr::Mutable(v44, v43);
LABEL_265:
        v208 = google::protobuf::internal::InlineGreedyStringParser(v178, v275, a3);
        goto LABEL_266;
      default:
LABEL_269:
        if (v8)
        {
          v210 = (v8 & 7) == 4;
        }

        else
        {
          v210 = 1;
        }

        if (v210)
        {
          *(a3 + 20) = v8 - 1;
          return;
        }

        if (v8 < 0x640)
        {
          v211 = *(this + 1);
          if (v211)
          {
            v212 = (v211 & 0xFFFFFFFFFFFFFFFELL) + 8;
          }

          else
          {
            v271 = v8;
            v272 = google::protobuf::internal::InternalMetadata::mutable_unknown_fields_slow<std::string>(this + 1);
            LODWORD(v8) = v271;
            v212 = v272;
            v7 = v275;
          }

          v208 = google::protobuf::internal::UnknownFieldParse(v8, v212, v7, a3);
        }

        else
        {
          v208 = google::protobuf::internal::ExtensionSet::ParseField((this + 16), v8, v7, &sentencepiece::_TrainerSpec_default_instance_, this + 1, a3);
        }

LABEL_266:
        v275 = v208;
        if (!v208)
        {
          return;
        }

LABEL_267:
        v209 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(a3, &v275, *(a3 + 23));
        v6 = v275;
        if (v209)
        {
          return;
        }

        continue;
    }

    break;
  }

  while (1)
  {
    v275 = (v63 + 1);
    if (!*(this + 18))
    {
      break;
    }

    OUTLINED_FUNCTION_15();
    if (v12 == v13)
    {
      if (v65 == *(this + 35))
      {
LABEL_85:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 32, v65 + 1);
        v64 = *(this + 18);
      }

      OUTLINED_FUNCTION_20(v64);
      v70 = *(this + 16);
      if (!v70)
      {
        OUTLINED_FUNCTION_21();
      }

      if (*(v70 + 24))
      {
        v75 = OUTLINED_FUNCTION_8();
      }

      v71 = OUTLINED_FUNCTION_2_1();
      OUTLINED_FUNCTION_17(v71);
      OUTLINED_FUNCTION_16();
      *(this + 34) = v72;
      v69 = OUTLINED_FUNCTION_14(v73, v74);
      goto LABEL_91;
    }

    OUTLINED_FUNCTION_13();
    *(this + 34) = v67;
    v69 = *(v68 + 8);
LABEL_91:
    v275 = google::protobuf::internal::InlineGreedyStringParser(v69, v66, a3);
    if (!v275)
    {
      return;
    }

    OUTLINED_FUNCTION_12();
    if (!(!v210 & v23) || *v63 != 506)
    {
      goto LABEL_267;
    }
  }

  v65 = *(this + 35);
  goto LABEL_85;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SelfTestData_Sample>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::SelfTestData_Sample *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::SelfTestData_Sample::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::ModelProto_SentencePiece>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::ModelProto_SentencePiece *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::ModelProto_SentencePiece::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

void google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::TrainerSpec>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::TrainerSpec *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    SizeFallback = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!SizeFallback)
    {
      return;
    }

    v8 = SizeFallback;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 == v13)
  {
    v14 = v11;
    sentencepiece::TrainerSpec::_InternalParse(a2, v8, this);
    if (v15)
    {
      ++*(this + 22);
      if (!*(this + 20))
      {
        v16 = *(this + 7) + v14;
        *(this + 7) = v16;
        *this = *(this + 1) + (v16 & (v16 >> 31));
      }
    }
  }
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::NormalizerSpec>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::NormalizerSpec *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::NormalizerSpec::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

char *google::protobuf::internal::ParseContext::ParseMessage<sentencepiece::SelfTestData>(google::protobuf::internal::EpsCopyInputStream *this, sentencepiece::SelfTestData *a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v12 = *(this + 22);
  v13 = __OFSUB__(v12--, 1);
  *(this + 22) = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sentencepiece::SelfTestData::_InternalParse(a2, v8, this);
  if (!result)
  {
    return result;
  }

  ++*(this + 22);
  if (*(this + 20))
  {
    return 0;
  }

  v15 = *(this + 7) + v14;
  *(this + 7) = v15;
  *this = *(this + 1) + (v15 & (v15 >> 31));
  return result;
}

void google::protobuf::internal::ExtensionSet::MergeFrom(google::protobuf::internal::ExtensionSet *this, const google::protobuf::internal::ExtensionSet *a2)
{
  if (*(this + 4) <= 0x100u)
  {
    v4 = *(a2 + 4);
    v5 = *(this + 2);
    v6 = &v5[32 * *(this + 5)];
    v7 = *(a2 + 2);
    if (v4 > 0x100)
    {
    }

    else
    {
      v8 = 0;
      v9 = v7 + 32 * *(a2 + 5);
      if (*(this + 5) && *(a2 + 5))
      {
        v8 = 0;
        do
        {
          if (*v5 == *v7)
          {
            v10 = v5 + 32;
          }

          else
          {
            v10 = v5;
          }

          if (*v5 < *v7)
          {
            v5 += 32;
          }

          else
          {
            v7 += 32;
            v5 = v10;
          }

          ++v8;
        }

        while (v5 != v6 && v7 != v9);
      }

      v12 = v8 + ((v9 - v7) >> 5) + ((v6 - v5) >> 5);
    }

    google::protobuf::internal::ExtensionSet::GrowCapacity(this, v12);
  }

  v13 = *(a2 + 2);
  if (*(a2 + 4) >= 0x101u)
  {
    v19 = *v13;
    v18 = v13 + 2;
    v17 = v19;

    google::protobuf::internal::ExtensionSet::ForEach<std::__map_iterator<std::__tree_iterator<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,std::__tree_node<std::__value_type<int,google::protobuf::internal::ExtensionSet::Extension>,void *> *,long>>,google::protobuf::internal::ExtensionSet::MergeFrom(google::protobuf::internal::ExtensionSet const&)::$_0>(v17, v18, this);
  }

  else if (*(a2 + 5))
  {
    v14 = &v13[8 * *(a2 + 5)];
    v15 = v13;
    do
    {
      v16 = *v15;
      v15 += 8;
      google::protobuf::internal::ExtensionSet::InternalExtensionMergeFrom(this, v16, (v13 + 2));
      v13 = v15;
    }

    while (v15 != v14);
  }
}

uint64_t google::protobuf::internal::MergeFromImpl<false>()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1_5();
  google::protobuf::internal::EpsCopyInputStream::InitFrom(v2, v3, v4);
  OUTLINED_FUNCTION_3_1();
  v5 = OUTLINED_FUNCTION_8_0();
  v7 = v6(v5);
  result = 0;
  if (v7)
  {
    if ((v1 & 2) != 0)
    {
      return 1;
    }

    OUTLINED_FUNCTION_6_0();
    if ((*(v9 + 48))(v0))
    {
      return 1;
    }

    else
    {
      google::protobuf::MessageLite::LogInitializationErrorMessage(v0);
      return 0;
    }
  }

  return result;
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::ReadStringFallback()
{
  OUTLINED_FUNCTION_2_3();
  if (*(v6 + 23) < 0)
  {
    **v1 = 0;
    *(v1 + 8) = 0;
  }

  else
  {
    *v1 = 0;
    *(v1 + 23) = 0;
  }

  v7 = *(v2 + 8);
  if (v7 - v3 + *(v2 + 28) >= v0)
  {
    v8 = *(v1 + 23);
    if (v8 < 0)
    {
      v8 = *(v1 + 8);
    }

    OUTLINED_FUNCTION_0_6(v8);
    v7 = *(v2 + 8);
  }

  v9 = v7 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      OUTLINED_FUNCTION_3_2(v4, v5);
      v11 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: size > chunk_size: ");
      google::protobuf::internal::LogFinisher::operator=(&v15, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_4_1(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = google::protobuf::internal::EpsCopyInputStream::Next(v2);
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_1_6();
    if (v14 ^ v10 | v13)
    {
      OUTLINED_FUNCTION_4_1(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_1C9F3F3A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

google::protobuf::internal::EpsCopyInputStream *google::protobuf::internal::EpsCopyInputStream::AppendStringFallback()
{
  OUTLINED_FUNCTION_2_3();
  v6 = *(v4 + 8);
  if (v6 - v5 + *(v4 + 28) >= v7)
  {
    v8 = *(v1 + 23);
    if (v8 < 0)
    {
      v8 = *(v1 + 8);
    }

    OUTLINED_FUNCTION_0_6(v8);
    v6 = *(v2 + 8);
  }

  v9 = v6 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      OUTLINED_FUNCTION_3_2(v4, v5);
      v11 = google::protobuf::internal::LogMessage::operator<<(v16, "CHECK failed: size > chunk_size: ");
      google::protobuf::internal::LogFinisher::operator=(&v15, &v11->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v16[0].__r_.__value_.__l.__data_);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_4_1(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = google::protobuf::internal::EpsCopyInputStream::Next(v2);
    if (!result)
    {
      return result;
    }

    OUTLINED_FUNCTION_1_6();
    if (v14 ^ v10 | v13)
    {
      OUTLINED_FUNCTION_4_1(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_1C9F3F4B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

char *google::protobuf::internal::ParseContext::ParseMessage<google::protobuf::MessageLite>(google::protobuf::internal::EpsCopyInputStream *this, uint64_t a2, google::protobuf::internal *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    LODWORD(v7) = v15;
  }

  else
  {
    v8 = a3 + 1;
  }

  v9 = google::protobuf::internal::EpsCopyInputStream::PushLimit(this, v8, v7);
  v10 = *(this + 22);
  v11 = __OFSUB__(v10--, 1);
  *(this + 22) = v10;
  if (v10 < 0 == v11)
  {
    v12 = v9;
    result = (*(*a2 + 88))(a2, v8, this);
    if (!result)
    {
      return result;
    }

    ++*(this + 22);
    if (!*(this + 20))
    {
      v14 = *(this + 7) + v12;
      *(this + 7) = v14;
      *this = *(this + 1) + (v14 & (v14 >> 31));
      return result;
    }
  }

  return 0;
}

char *google::protobuf::internal::ReadSizeFallback(google::protobuf::internal *this, const char *a2)
{
  result = this + 2;
  v4 = -21;
  while (1)
  {
    LODWORD(a2) = ((*(result - 1) - 1) << (v4 + 28)) + a2;
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = *(this + 4);
      v6 = this + 5;
      if (a2 + (v5 << 28) - 0x10000000 > 0x7FFFFFEF)
      {
        v6 = 0;
      }

      if (v5 <= 7)
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CMVideoFormatDescriptionGetCleanAperture(CMVideoFormatDescriptionRef videoDesc, Boolean originIsAtTopLeft)
{
  MEMORY[0x1EEDBBE38](videoDesc, originIsAtTopLeft);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGSize CMVideoFormatDescriptionGetPresentationDimensions(CMVideoFormatDescriptionRef videoDesc, Boolean usePixelAspectRatio, Boolean useCleanAperture)
{
  MEMORY[0x1EEDBBE60](videoDesc, usePixelAspectRatio, useCleanAperture);
  result.height = v4;
  result.width = v3;
  return result;
}

CGRect CVImageBufferGetCleanRect(CVImageBufferRef imageBuffer)
{
  MEMORY[0x1EEDBF840](imageBuffer);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

NSPoint NSPointFromString(NSString *aString)
{
  MEMORY[0x1EEDC7078](aString);
  result.y = v2;
  result.x = v1;
  return result;
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x1EEDC70C0](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

NSSize NSSizeFromString(NSString *aString)
{
  MEMORY[0x1EEDC7108](aString);
  result.height = v2;
  result.width = v1;
  return result;
}

uint64_t PB::TextFormatter::format(PB::TextFormatter *this, const char *a2)
{
  return MEMORY[0x1EEE30A70](this, a2);
}

{
  return MEMORY[0x1EEE30A78](this, a2);
}

uint64_t PB::Writer::writeVarInt(PB::Writer *this)
{
  return MEMORY[0x1EEE30B08](this);
}

{
  return MEMORY[0x1EEE30B10](this);
}

void cva::VecLibLapack<float>::ormqr()
{
    ;
  }
}

void cva::VecLib<float>::gemm()
{
    ;
  }
}

void cva::VecLib<float>::gemv()
{
    ;
  }
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

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EB0]();
}

{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE0]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

void operator delete[](void *__p, const std::nothrow_t *a2)
{
    ;
  }
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

void operator delete(void *__p, const std::nothrow_t *a2)
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

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
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

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
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

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

uint64_t sub_1C9F43570(double a1)
{
  if (!atomic_load(dlopenHelperFlag_PhotosSpatialMediaCore))
  {
    dlopenHelper_PhotosSpatialMediaCore(a1);
  }

  return MEMORY[0x1EEE2AA28]();
}

uint64_t sub_1C9F4359C(double a1)
{
  if (!atomic_load(dlopenHelperFlag_PhotosSpatialMediaCore))
  {
    dlopenHelper_PhotosSpatialMediaCore(a1);
  }

  return MEMORY[0x1EEE2AA30]();
}

uint64_t sub_1C9F435C8(double a1)
{
  if (!atomic_load(dlopenHelperFlag_PhotosSpatialMediaCore))
  {
    dlopenHelper_PhotosSpatialMediaCore(a1);
  }

  return MEMORY[0x1EEE2AA38]();
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_PhotosSpatialMediaCore(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/PhotosSpatialMediaCore.framework/PhotosSpatialMediaCore", 0);
  atomic_store(1u, dlopenHelperFlag_PhotosSpatialMediaCore);
  return a1;
}