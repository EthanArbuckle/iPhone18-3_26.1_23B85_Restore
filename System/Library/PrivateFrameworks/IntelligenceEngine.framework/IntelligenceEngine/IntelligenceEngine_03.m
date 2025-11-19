uint64_t siri::intelligence::UpdateTo_1_0_7(uint64_t this, protobuf::Intelligence *a2)
{
  v2 = this;
  if (*(this + 56) >= 1)
  {
    v3 = 0;
    do
    {
      this = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::TypeHandler>((v2 + 12), v3);
      v4 = *(this + 16);
      if ((v4 & 0x20) != 0)
      {
        v5 = this;
        v8 = *(this + 216);
        v6 = this + 216;
        v7 = v8;
        v9 = *(v6 - 56);
        *(v6 - 200) = v4 | 0x1000;
        if (v8 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v6, v9);
        }

        this = std::string::operator=(v7, v9);
        v10 = *(v5 + 160);
        if (v10 != &google::protobuf::internal::fixed_address_empty_string)
        {
          if (*(v10 + 23) < 0)
          {
            **v10 = 0;
            *(v10 + 8) = 0;
          }

          else
          {
            *v10 = 0;
            *(v10 + 23) = 0;
          }
        }

        *(v5 + 16) &= ~0x20u;
      }

      ++v3;
    }

    while (v3 < v2[14]);
  }

  if (v2[20] >= 1)
  {
    v11 = 0;
    do
    {
      this = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>((v2 + 18), v11);
      v12 = *(this + 16);
      if ((v12 & 0x20) != 0)
      {
        v13 = this;
        v16 = *(this + 144);
        v14 = this + 144;
        v15 = v16;
        v17 = *(v14 - 32);
        *(v14 - 128) = v12 | 0x200;
        if (v16 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v14, v17);
        }

        this = std::string::operator=(v15, v17);
        v18 = *(v13 + 112);
        if (v18 != &google::protobuf::internal::fixed_address_empty_string)
        {
          if (*(v18 + 23) < 0)
          {
            **v18 = 0;
            *(v18 + 8) = 0;
          }

          else
          {
            *v18 = 0;
            *(v18 + 23) = 0;
          }
        }

        *(v13 + 16) &= ~0x20u;
      }

      ++v11;
    }

    while (v11 < v2[20]);
  }

  if (v2[26] >= 1)
  {
    v19 = 0;
    do
    {
      this = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::TypeHandler>((v2 + 24), v19);
      v20 = *(this + 16);
      if ((v20 & 0x20) != 0)
      {
        v21 = this;
        v24 = *(this + 128);
        v22 = this + 128;
        v23 = v24;
        v25 = *(v22 - 40);
        *(v22 - 112) = v20 | 0x400;
        if (v24 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v22, v25);
        }

        this = std::string::operator=(v23, v25);
        v26 = *(v21 + 88);
        if (v26 != &google::protobuf::internal::fixed_address_empty_string)
        {
          if (*(v26 + 23) < 0)
          {
            **v26 = 0;
            *(v26 + 8) = 0;
          }

          else
          {
            *v26 = 0;
            *(v26 + 23) = 0;
          }
        }

        *(v21 + 16) &= ~0x20u;
      }

      ++v19;
    }

    while (v19 < v2[26]);
  }

  if (v2[104] >= 1)
  {
    v27 = 0;
    do
    {
      this = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>((v2 + 102), v27);
      v28 = *(this + 16);
      if ((v28 & 0x20) != 0)
      {
        v29 = this;
        v32 = *(this + 112);
        v30 = this + 112;
        v31 = v32;
        v33 = *(v30 - 24);
        *(v30 - 96) = v28 | 0x100;
        if (v32 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v30, v33);
        }

        this = std::string::operator=(v31, v33);
        v34 = *(v29 + 88);
        if (v34 != &google::protobuf::internal::fixed_address_empty_string)
        {
          if (*(v34 + 23) < 0)
          {
            **v34 = 0;
            *(v34 + 8) = 0;
          }

          else
          {
            *v34 = 0;
            *(v34 + 23) = 0;
          }
        }

        *(v29 + 16) &= ~0x20u;
      }

      ++v27;
    }

    while (v27 < v2[104]);
  }

  if (v2[44] >= 1)
  {
    v35 = 0;
    do
    {
      this = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::TypeHandler>((v2 + 42), v35);
      v36 = *(this + 16);
      if ((v36 & 8) != 0)
      {
        v37 = this;
        v40 = *(this + 80);
        v38 = this + 80;
        v39 = v40;
        v41 = *(v38 - 8);
        *(v38 - 64) = v36 | 0x10;
        if (v40 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v38, v41);
        }

        this = std::string::operator=(v39, v41);
        v42 = *(v37 + 72);
        if (v42 != &google::protobuf::internal::fixed_address_empty_string)
        {
          if (*(v42 + 23) < 0)
          {
            **v42 = 0;
            *(v42 + 8) = 0;
          }

          else
          {
            *v42 = 0;
            *(v42 + 23) = 0;
          }
        }

        *(v37 + 16) &= ~8u;
      }

      ++v35;
    }

    while (v35 < v2[44]);
  }

  return this;
}

void siri::intelligence::UpdateTo_1_4_0(siri::intelligence *this, protobuf::Intelligence *a2)
{
  if (*(this + 20) >= 1)
  {
    for (i = 0; i < *(this + 20); ++i)
    {
      v5 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>(this + 72, i);
      v6 = *(v5 + 128);
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v72, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v72.__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v72.__r_.__value_.__l.__data_ = v7;
      }

      v8 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
      if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
      {
        if (v72.__r_.__value_.__l.__size_ > 11)
        {
          if (v72.__r_.__value_.__l.__size_ <= 13)
          {
            if (v72.__r_.__value_.__l.__size_ == 12)
            {
              v12 = *(v72.__r_.__value_.__r.__words[0] + 8);
              v13 = *v72.__r_.__value_.__l.__data_ == 0x6665646E55746573;
              v14 = 1684369001;
            }

            else
            {
              v12 = *(v72.__r_.__value_.__r.__words[0] + 5);
              v13 = *v72.__r_.__value_.__l.__data_ == 0x6974636944746573;
              v14 = 0x7972616E6F697463;
            }

            goto LABEL_85;
          }

          if (v72.__r_.__value_.__l.__size_ != 14)
          {
            if (v72.__r_.__value_.__l.__size_ != 22)
            {
              goto LABEL_262;
            }

            v12 = *(v72.__r_.__value_.__r.__words[0] + 14);
            v13 = *v72.__r_.__value_.__l.__data_ == 0x706E497972746572 && *(v72.__r_.__value_.__r.__words[0] + 8) == 0x6552726F46737475;
            v14 = 0x65736E6F70736552;
LABEL_85:
            if (!v13 || v12 != v14)
            {
LABEL_262:
              operator delete(v72.__r_.__value_.__l.__data_);
              continue;
            }

            goto LABEL_108;
          }

          v25 = v72.__r_.__value_.__r.__words[0];
LABEL_103:
          v32 = v25->__r_.__value_.__r.__words[0];
          v33 = *(v25->__r_.__value_.__r.__words + 6);
          if (v32 != 0x6341686374697773 || v33 != 0x7974697669746341)
          {
            goto LABEL_261;
          }

          goto LABEL_108;
        }

        if (v72.__r_.__value_.__l.__size_ <= 8)
        {
          if (v72.__r_.__value_.__l.__size_ != 7)
          {
            if (v72.__r_.__value_.__l.__size_ != 8 || *v72.__r_.__value_.__l.__data_ != 0x7961727241746573 && *v72.__r_.__value_.__l.__data_ != 0x6B63614268737570 && *v72.__r_.__value_.__l.__data_ != 0x7974706D45746573)
            {
              goto LABEL_262;
            }

            goto LABEL_108;
          }

          v26 = *(v72.__r_.__value_.__r.__words[0] + 3);
          v27 = *v72.__r_.__value_.__l.__data_ == 1114664816;
          v28 = 1801675074;
          goto LABEL_96;
        }

        if (v72.__r_.__value_.__l.__size_ == 9)
        {
          if (*v72.__r_.__value_.__l.__data_ == 0x6E69727453746573 && *(v72.__r_.__value_.__r.__words[0] + 8) == 103)
          {
            goto LABEL_108;
          }

          v26 = *(v72.__r_.__value_.__r.__words[0] + 8);
          v27 = *v72.__r_.__value_.__l.__data_ == 0x65626D754E746573;
          v28 = 114;
LABEL_96:
          if (!v27 || v26 != v28)
          {
            goto LABEL_262;
          }

          goto LABEL_108;
        }

        if (v72.__r_.__value_.__l.__size_ != 10)
        {
          goto LABEL_262;
        }

        if (*v72.__r_.__value_.__l.__data_ != 0x656C6F6F42746573 || *(v72.__r_.__value_.__r.__words[0] + 8) != 28257)
        {
          goto LABEL_262;
        }
      }

      else
      {
        if (HIBYTE(v72.__r_.__value_.__r.__words[2]) > 0xBu)
        {
          if (HIBYTE(v72.__r_.__value_.__r.__words[2]) <= 0xDu)
          {
            if (HIBYTE(v72.__r_.__value_.__r.__words[2]) == 12)
            {
              v9 = LODWORD(v72.__r_.__value_.__r.__words[1]);
              v10 = v72.__r_.__value_.__r.__words[0] == 0x6665646E55746573;
              v11 = 1684369001;
            }

            else
            {
              if (HIBYTE(v72.__r_.__value_.__r.__words[2]) != 13)
              {
                continue;
              }

              v9 = *(v72.__r_.__value_.__r.__words + 5);
              v10 = v72.__r_.__value_.__r.__words[0] == 0x6974636944746573;
              v11 = 0x7972616E6F697463;
            }

            if (!v10 || v9 != v11)
            {
              continue;
            }

            goto LABEL_108;
          }

          if (HIBYTE(v72.__r_.__value_.__r.__words[2]) != 14)
          {
            if (HIBYTE(v72.__r_.__value_.__r.__words[2]) != 22)
            {
              continue;
            }

            v16 = v72.__r_.__value_.__r.__words[0] == 0x706E497972746572 && v72.__r_.__value_.__l.__size_ == 0x6552726F46737475;
            if (!v16 || *(&v72.__r_.__value_.__r.__words[1] + 6) != 0x65736E6F70736552)
            {
              continue;
            }

            goto LABEL_108;
          }

          v25 = &v72;
          goto LABEL_103;
        }

        if (HIBYTE(v72.__r_.__value_.__r.__words[2]) > 8u)
        {
          if (HIBYTE(v72.__r_.__value_.__r.__words[2]) != 9)
          {
            if (HIBYTE(v72.__r_.__value_.__r.__words[2]) != 10)
            {
              continue;
            }

            if (v72.__r_.__value_.__r.__words[0] != 0x656C6F6F42746573 || LOWORD(v72.__r_.__value_.__r.__words[1]) != 28257)
            {
              continue;
            }

            goto LABEL_108;
          }

          if (v72.__r_.__value_.__r.__words[0] == 0x6E69727453746573 && v72.__r_.__value_.__s.__data_[8] == 103)
          {
            goto LABEL_108;
          }

          v19 = v72.__r_.__value_.__s.__data_[8];
          v20 = v72.__r_.__value_.__r.__words[0] == 0x65626D754E746573;
          v21 = 114;
          goto LABEL_76;
        }

        if (HIBYTE(v72.__r_.__value_.__r.__words[2]) == 7)
        {
          v19 = *(v72.__r_.__value_.__r.__words + 3);
          v20 = LODWORD(v72.__r_.__value_.__l.__data_) == 1114664816;
          v21 = 1801675074;
LABEL_76:
          if (!v20 || v19 != v21)
          {
            continue;
          }

          goto LABEL_108;
        }

        if (HIBYTE(v72.__r_.__value_.__r.__words[2]) != 8 || v72.__r_.__value_.__r.__words[0] != 0x6B63614268737570 && v72.__r_.__value_.__r.__words[0] != 0x7961727241746573 && v72.__r_.__value_.__r.__words[0] != 0x7974706D45746573)
        {
          continue;
        }
      }

LABEL_108:
      v35 = *(v5 + 32);
      if (!v35)
      {
        goto LABEL_261;
      }

      if (v35 >= 2)
      {
        if ((v72.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &v72;
        }

        else
        {
          v36 = v72.__r_.__value_.__r.__words[0];
        }

        siri::intelligence::Log::Error("Found more than 1 array parameter for behavior '%s' while upgrading to v1.0.8", v4, v36);
      }

      protobuf::Intelligence_KeyValueParameter::Intelligence_KeyValueParameter(v69);
      if (*(v5 + 32) <= 0)
      {
        v37 = google::protobuf::internal::LogMessage::LogMessage(&v74, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
        v38 = google::protobuf::internal::LogMessage::operator<<(v37, "CHECK failed: (index) < (current_size_): ");
        google::protobuf::internal::LogFinisher::operator=(&v73, &v38->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v74);
      }

      v39 = *(*(v5 + 40) + 8);
      if ((SHIBYTE(v72.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        if (HIBYTE(v72.__r_.__value_.__r.__words[2]) <= 0xBu)
        {
          if (HIBYTE(v72.__r_.__value_.__r.__words[2]) > 8u)
          {
            if (HIBYTE(v72.__r_.__value_.__r.__words[2]) == 9)
            {
              if (v72.__r_.__value_.__r.__words[0] == 0x6E69727453746573 && v72.__r_.__value_.__s.__data_[8] == 103)
              {
                goto LABEL_243;
              }

              if (v72.__r_.__value_.__r.__words[0] == 0x65626D754E746573 && v72.__r_.__value_.__s.__data_[8] == 114)
              {
                goto LABEL_243;
              }
            }

            else if (HIBYTE(v72.__r_.__value_.__r.__words[2]) == 10 && v72.__r_.__value_.__r.__words[0] == 0x656C6F6F42746573 && LOWORD(v72.__r_.__value_.__r.__words[1]) == 28257)
            {
              goto LABEL_243;
            }
          }

          else if (HIBYTE(v72.__r_.__value_.__r.__words[2]) == 7)
          {
            if (LODWORD(v72.__r_.__value_.__l.__data_) == 1114664816 && *(v72.__r_.__value_.__r.__words + 3) == 1801675074)
            {
              goto LABEL_216;
            }
          }

          else if (HIBYTE(v72.__r_.__value_.__r.__words[2]) == 8)
          {
            if (v72.__r_.__value_.__r.__words[0] == 0x6B63614268737570 || v72.__r_.__value_.__r.__words[0] == 0x7961727241746573)
            {
              goto LABEL_243;
            }

            if (v72.__r_.__value_.__r.__words[0] == 0x7974706D45746573)
            {
              goto LABEL_199;
            }
          }

          goto LABEL_248;
        }

        if (HIBYTE(v72.__r_.__value_.__r.__words[2]) <= 0xDu)
        {
          if (HIBYTE(v72.__r_.__value_.__r.__words[2]) == 12)
          {
            if (v72.__r_.__value_.__r.__words[0] == 0x6665646E55746573 && LODWORD(v72.__r_.__value_.__r.__words[1]) == 1684369001)
            {
              goto LABEL_199;
            }
          }

          else if (v72.__r_.__value_.__r.__words[0] == 0x6974636944746573 && *(v72.__r_.__value_.__r.__words + 5) == 0x7972616E6F697463)
          {
            goto LABEL_243;
          }

          goto LABEL_248;
        }

        if (HIBYTE(v72.__r_.__value_.__r.__words[2]) != 14)
        {
          if (HIBYTE(v72.__r_.__value_.__r.__words[2]) == 22)
          {
            v46 = v72.__r_.__value_.__r.__words[0] == 0x706E497972746572 && v72.__r_.__value_.__l.__size_ == 0x6552726F46737475;
            if (v46 && *(&v72.__r_.__value_.__r.__words[1] + 6) == 0x65736E6F70736552)
            {
              goto LABEL_185;
            }
          }

          goto LABEL_248;
        }

        v54 = &v72;
        goto LABEL_237;
      }

      size = v72.__r_.__value_.__l.__size_;
      if (v72.__r_.__value_.__l.__size_ <= 9)
      {
        switch(v72.__r_.__value_.__l.__size_)
        {
          case 7uLL:
            if (*v72.__r_.__value_.__l.__data_ == 1114664816 && *(v72.__r_.__value_.__r.__words[0] + 3) == 1801675074)
            {
LABEL_216:
              std::string::basic_string[abi:ne200100]<0>(&v74, "name");
              siri::intelligence::ConvertPositionalArgToDictionary(v69, v39, 0, &v74);
              if (v75 < 0)
              {
                operator delete(v74.n128_u64[0]);
              }

              std::string::basic_string[abi:ne200100]<0>(&v74, "destination");
              siri::intelligence::ConvertPositionalArgToDictionary(v69, v39, 1, &v74);
              goto LABEL_246;
            }

            goto LABEL_248;
          case 8uLL:
            if (*v72.__r_.__value_.__l.__data_ == 0x7961727241746573 || *v72.__r_.__value_.__l.__data_ == 0x6B63614268737570)
            {
              goto LABEL_243;
            }

            if (*v72.__r_.__value_.__l.__data_ == 0x7974706D45746573)
            {
              goto LABEL_199;
            }

            goto LABEL_234;
          case 9uLL:
            v43 = *v72.__r_.__value_.__l.__data_ == 0x6E69727453746573 && *(v72.__r_.__value_.__r.__words[0] + 8) == 103;
            if (v43 || (*v72.__r_.__value_.__l.__data_ == 0x65626D754E746573 ? (v44 = *(v72.__r_.__value_.__r.__words[0] + 8) == 114) : (v44 = 0), v44))
            {
LABEL_243:
              std::string::basic_string[abi:ne200100]<0>(&v74, "name");
              siri::intelligence::ConvertPositionalArgToDictionary(v69, v39, 0, &v74);
              if (v75 < 0)
              {
                operator delete(v74.n128_u64[0]);
              }

              std::string::basic_string[abi:ne200100]<0>(&v74, "value");
              siri::intelligence::ConvertPositionalArgToDictionary(v69, v39, 1, &v74);
              goto LABEL_246;
            }

LABEL_234:
            size = v72.__r_.__value_.__l.__size_;
            break;
        }

LABEL_235:
        if (size != 14)
        {
          goto LABEL_248;
        }

        v54 = v72.__r_.__value_.__r.__words[0];
LABEL_237:
        v58 = v54->__r_.__value_.__r.__words[0];
        v59 = *(v54->__r_.__value_.__r.__words + 6);
        if (v58 == 0x6341686374697773 && v59 == 0x7974697669746341)
        {
          std::string::basic_string[abi:ne200100]<0>(&v74, "activityId");
          siri::intelligence::ConvertPositionalArgToDictionary(v69, v39, 0, &v74);
LABEL_246:
          if (v75 < 0)
          {
            operator delete(v74.n128_u64[0]);
          }

          goto LABEL_248;
        }

        goto LABEL_248;
      }

      if (v72.__r_.__value_.__l.__size_ > 12)
      {
        if (v72.__r_.__value_.__l.__size_ == 13)
        {
          if (*v72.__r_.__value_.__l.__data_ == 0x6974636944746573 && *(v72.__r_.__value_.__r.__words[0] + 5) == 0x7972616E6F697463)
          {
            goto LABEL_243;
          }

          goto LABEL_248;
        }

        if (v72.__r_.__value_.__l.__size_ == 22)
        {
          if (*v72.__r_.__value_.__l.__data_ == 0x706E497972746572 && *(v72.__r_.__value_.__r.__words[0] + 8) == 0x6552726F46737475 && *(v72.__r_.__value_.__r.__words[0] + 14) == 0x65736E6F70736552)
          {
LABEL_185:
            std::string::basic_string[abi:ne200100]<0>(&v74, "responseId");
            siri::intelligence::ConvertPositionalArgToDictionary(v69, v39, 0, &v74);
            if (v75 < 0)
            {
              operator delete(v74.n128_u64[0]);
            }

            *(v5 + 16) |= 0x80u;
            std::string::basic_string[abi:ne200100]<0>(&v74, "retryInputs");
            google::protobuf::internal::ArenaStringPtr::SetNoArena((v5 + 128), &google::protobuf::internal::fixed_address_empty_string, &v74);
            goto LABEL_246;
          }

          goto LABEL_234;
        }

        goto LABEL_235;
      }

      if (v72.__r_.__value_.__l.__size_ == 10)
      {
        if (*v72.__r_.__value_.__l.__data_ == 0x656C6F6F42746573 && *(v72.__r_.__value_.__r.__words[0] + 8) == 28257)
        {
          goto LABEL_243;
        }

        goto LABEL_248;
      }

      if (v72.__r_.__value_.__l.__size_ != 12)
      {
        goto LABEL_235;
      }

      if (*v72.__r_.__value_.__l.__data_ == 0x6665646E55746573 && *(v72.__r_.__value_.__r.__words[0] + 8) == 1684369001)
      {
LABEL_199:
        std::string::basic_string[abi:ne200100]<0>(&v74, "name");
        siri::intelligence::ConvertPositionalArgToDictionary(v69, v39, 0, &v74);
        goto LABEL_246;
      }

LABEL_248:
      google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v5 + 24);
      if (v71 >= 1)
      {
        v61 = 0;
        while (1)
        {
          v62 = *(v5 + 40);
          if (!v62)
          {
            break;
          }

          v63 = *(v5 + 32);
          v64 = *v62;
          if (v63 >= *v62)
          {
            if (v64 == *(v5 + 36))
            {
LABEL_255:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 24), v64 + 1);
              v62 = *(v5 + 40);
              v64 = *v62;
            }

            *v62 = v64 + 1;
            v65 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(v5 + 24));
            v66 = *(v5 + 32);
            v67 = *(v5 + 40) + 8 * v66;
            *(v5 + 32) = v66 + 1;
            *(v67 + 8) = v65;
            goto LABEL_257;
          }

          *(v5 + 32) = v63 + 1;
          v65 = *&v62[2 * v63 + 2];
LABEL_257:
          v68 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(&v70, v61);
          if (v68 != v65)
          {
            protobuf::Intelligence_KeyValueParameter::Clear(v65);
            protobuf::Intelligence_KeyValueParameter::MergeFrom(v65, v68);
          }

          if (++v61 >= v71)
          {
            goto LABEL_260;
          }
        }

        v64 = *(v5 + 36);
        goto LABEL_255;
      }

LABEL_260:
      protobuf::Intelligence_KeyValueParameter::~Intelligence_KeyValueParameter(v69);
      v8 = HIBYTE(v72.__r_.__value_.__r.__words[2]);
LABEL_261:
      if (v8 < 0)
      {
        goto LABEL_262;
      }
    }
  }
}

void sub_254CBD304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 - 121) < 0)
  {
    operator delete(*(v3 - 144));
  }

  protobuf::Intelligence_KeyValueParameter::~Intelligence_KeyValueParameter(va);
  if (*(v3 - 153) < 0)
  {
    operator delete(*(v3 - 176));
  }

  _Unwind_Resume(a1);
}

void siri::intelligence::UpdateTo_1_4_1(siri::intelligence *this, protobuf::Intelligence *a2)
{
  if (*(this + 14) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::TypeHandler>(this + 48, v3);
      if (*(v4 + 32) >= 1)
      {
        v5 = 0;
        do
        {
          v6 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v4 + 24, v5);
          siri::intelligence::UpdateFunctionToParameterDictionary(v6, v7);
          ++v5;
        }

        while (v5 < *(v4 + 32));
      }

      if (*(v4 + 56) >= 1)
      {
        v8 = 0;
        do
        {
          v9 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v4 + 48, v8);
          siri::intelligence::UpdateFunctionToParameterDictionary(v9, v10);
          ++v8;
        }

        while (v8 < *(v4 + 56));
      }

      ++v3;
    }

    while (v3 < *(this + 14));
  }

  if (*(this + 20) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>(this + 72, v11);
      if (*(v12 + 32) >= 1)
      {
        v13 = v12;
        v14 = 0;
        do
        {
          v15 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(v13 + 24, v14);
          siri::intelligence::UpdateFunctionToParameterDictionary(v15, v16);
          ++v14;
        }

        while (v14 < *(v13 + 32));
      }

      ++v11;
    }

    while (v11 < *(this + 20));
  }

  if (*(this + 98) >= 1)
  {
    v17 = 0;
    do
    {
      v18 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::TypeHandler>(this + 384, v17);
      v20 = *(v18 + 16);
      if ((v20 & 0x10) != 0)
      {
        v21 = v18;
        v22 = *(v18 + 104);
        if (!v22)
        {
          google::protobuf::internal::LogMessage::LogMessage(v32, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 17756);
          v23 = google::protobuf::internal::LogMessage::operator<<(v32, "CHECK failed: !value || default_value_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v31, &v23->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v32[0].__r_.__value_.__l.__data_);
          v22 = *(v21 + 104);
          v20 = *(v21 + 16) | 0x10;
        }

        *(v21 + 16) = v20;
        siri::intelligence::UpdateFunctionToParameterDictionary(v22, v19);
      }

      ++v17;
    }

    while (v17 < *(this + 98));
  }

  if (*(this + 68) >= 1)
  {
    v24 = 0;
    do
    {
      v25 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition>::TypeHandler>(this + 264, v24);
      v27 = *(v25 + 16);
      if ((v27 & 2) != 0)
      {
        v28 = v25;
        v29 = *(v25 + 32);
        if (!v29)
        {
          google::protobuf::internal::LogMessage::LogMessage(v32, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21788);
          v30 = google::protobuf::internal::LogMessage::operator<<(v32, "CHECK failed: !value || condition_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v31, &v30->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v32[0].__r_.__value_.__l.__data_);
          v29 = *(v28 + 32);
          v27 = *(v28 + 16) | 2;
        }

        *(v28 + 16) = v27;
        siri::intelligence::UpdateFunctionInCondition(v29, v26);
      }

      ++v24;
    }

    while (v24 < *(this + 68));
  }
}

void sub_254CBD5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void siri::intelligence::UpdateTo_1_4_4(siri::intelligence *this, protobuf::Intelligence *a2)
{
  if (*(this + 20) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>(this + 72, v3);
      if ((*(v4 + 16) & 0x400) != 0)
      {
        v5 = v4;
        v6 = *(v4 + 152);
        if (!v6)
        {
          google::protobuf::internal::LogMessage::LogMessage(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 12082);
          v7 = google::protobuf::internal::LogMessage::operator<<(v9, "CHECK failed: !value || undo_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v8, &v7->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v9[0].__r_.__value_.__l.__data_);
          v6 = *(v5 + 152);
        }

        protobuf::Intelligence_Undo::Clear(v6);
        *(v5 + 16) &= ~0x400u;
      }

      ++v3;
    }

    while (v3 < *(this + 20));
  }
}

void sub_254CBD6F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void siri::intelligence::UpdateTo_1_4_5(siri::intelligence *this, protobuf::Intelligence *a2)
{
  v2 = this;
  if (*(this + 110) >= 1)
  {
    v3 = 0;
    while (1)
    {
      v4 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(v2 + 432, v3);
      if (*(v4 + 32) >= 1)
      {
        break;
      }

LABEL_49:
      google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::TypeHandler>(v4 + 24);
      ++v3;
      v2 = this;
      if (v3 >= *(this + 110))
      {
        goto LABEL_50;
      }
    }

    v5 = 0;
    while (1)
    {
      v6 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::TypeHandler>(v4 + 24, v5);
      v7 = *(v4 + 136);
      if (!v7)
      {
        break;
      }

      v8 = *(v4 + 128);
      v9 = *v7;
      if (v8 < *v7)
      {
        *(v4 + 128) = v8 + 1;
        v10 = *&v7[2 * v8 + 2];
        goto LABEL_12;
      }

      if (v9 == *(v4 + 132))
      {
        goto LABEL_10;
      }

LABEL_11:
      *v7 = v9 + 1;
      v10 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Event>(*(v4 + 120));
      v11 = *(v4 + 128);
      v12 = *(v4 + 136) + 8 * v11;
      *(v4 + 128) = v11 + 1;
      *(v12 + 8) = v10;
LABEL_12:
      if (*(v6 + 16))
      {
        v13 = *(v6 + 72);
        v14 = *(v10 + 6);
        *(v10 + 4) |= 1u;
        if (v14 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v10 + 48, v13);
        }

        std::string::operator=(v14, v13);
      }

      if ((*(v6 + 16) & 2) != 0)
      {
        v15 = *(v6 + 80);
        v16 = *(v10 + 8);
        *(v10 + 4) |= 4u;
        if (v16 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v10 + 64, v15);
        }

        std::string::operator=(v16, v15);
      }

      if ((*(v6 + 16) & 4) != 0)
      {
        v17 = *(v6 + 88);
        v18 = *(v10 + 7);
        *(v10 + 4) |= 2u;
        if (v18 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v10 + 56, v17);
        }

        std::string::operator=(v18, v17);
      }

      if ((*(v6 + 16) & 8) != 0)
      {
        v19 = *(v6 + 96);
        if (!v19)
        {
          google::protobuf::internal::LogMessage::LogMessage(v61, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 14635);
          v20 = google::protobuf::internal::LogMessage::operator<<(v61, "CHECK failed: !value || interjection_settings_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v60, &v20->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v61[0].__r_.__value_.__l.__data_);
          v19 = *(v6 + 96);
        }

        *(v10 + 4) |= 8u;
        v21 = *(v10 + 9);
        if (!v21)
        {
          v21 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_InputGroup_Interjection>(0);
          *(v10 + 9) = v21;
          v19 = *(v6 + 96);
        }

        if (v19)
        {
          v22 = v19;
        }

        else
        {
          v22 = &protobuf::_Intelligence_InputGroup_Interjection_default_instance_;
        }

        if (v22 != v21)
        {
          protobuf::Intelligence_InputGroup_Interjection::Clear(v21);
          protobuf::Intelligence_InputGroup_Interjection::MergeFrom(v21, v22);
        }
      }

      if (*(v6 + 56) >= 1)
      {
        v23 = 0;
        while (1)
        {
          v24 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<std::string>::TypeHandler>(v6 + 48, v23);
          v25 = *(v10 + 5);
          if (!v25)
          {
            break;
          }

          v26 = *(v10 + 8);
          v27 = *v25;
          if (v26 >= *v25)
          {
            if (v27 == *(v10 + 9))
            {
LABEL_41:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v10 + 6, v27 + 1);
              v25 = *(v10 + 5);
              v27 = *v25;
            }

            *v25 = v27 + 1;
            v29 = *(v10 + 3);
            if (!v29)
            {
              operator new();
            }

            if (v29[14])
            {
            }

            AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v29, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
            AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
            AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
            AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
            v30 = *(v10 + 8);
            v31 = *(v10 + 5) + 8 * v30;
            *(v10 + 8) = v30 + 1;
            *(v31 + 8) = AlignedAndAddCleanup;
            goto LABEL_47;
          }

          *(v10 + 8) = v26 + 1;
          AlignedAndAddCleanup = *&v25[2 * v26 + 2];
LABEL_47:
          std::string::operator=(AlignedAndAddCleanup, v24);
          if (++v23 >= *(v6 + 56))
          {
            goto LABEL_48;
          }
        }

        v27 = *(v10 + 9);
        goto LABEL_41;
      }

LABEL_48:
      if (++v5 >= *(v4 + 32))
      {
        goto LABEL_49;
      }
    }

    v9 = *(v4 + 132);
LABEL_10:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v4 + 120), v9 + 1);
    v7 = *(v4 + 136);
    v9 = *v7;
    goto LABEL_11;
  }

LABEL_50:
  LODWORD(v32) = *(v2 + 62);
  if (v32 >= 1)
  {
    v33 = 0;
    while (1)
    {
      if (v33 >= v32)
      {
        google::protobuf::internal::LogMessage::LogMessage(v61, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1561);
        v34 = google::protobuf::internal::LogMessage::operator<<(v61, "CHECK failed: (index) < (current_size_): ");
        google::protobuf::internal::LogFinisher::operator=(&v60, &v34->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&v61[0].__r_.__value_.__l.__data_);
      }

      v35 = *(*(v2 + 32) + 8 * v33 + 8);
      v36 = *(v2 + 65);
      if (!v36)
      {
        break;
      }

      v37 = *(v2 + 128);
      v38 = *v36;
      if (v37 < *v36)
      {
        *(v2 + 128) = v37 + 1;
        v39 = *&v36[2 * v37 + 2];
        goto LABEL_61;
      }

      if (v38 == *(v2 + 129))
      {
        goto LABEL_59;
      }

LABEL_60:
      *v36 = v38 + 1;
      v39 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_Event>(*(v2 + 63));
      v40 = *(v2 + 128);
      v41 = *(v2 + 65) + 8 * v40;
      *(v2 + 128) = v40 + 1;
      *(v41 + 8) = v39;
LABEL_61:
      if (*(v35 + 16))
      {
        v42 = *(v35 + 48);
        v43 = *(v39 + 15);
        *(v39 + 4) |= 1u;
        if (v43 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v39 + 120, v42);
        }

        std::string::operator=(v43, v42);
      }

      if ((*(v35 + 16) & 2) != 0)
      {
        v44 = *(v35 + 56);
        v45 = *(v39 + 16);
        *(v39 + 4) |= 2u;
        if (v45 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v39 + 128, v44);
        }

        std::string::operator=(v45, v44);
      }

      if ((*(v35 + 16) & 4) != 0)
      {
        v46 = *(v35 + 64);
        if (!v46)
        {
          google::protobuf::internal::LogMessage::LogMessage(v61, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 19149);
          v47 = google::protobuf::internal::LogMessage::operator<<(v61, "CHECK failed: !value || nl_producer_ != nullptr: ");
          google::protobuf::internal::LogFinisher::operator=(&v60, &v47->__r_.__value_.__l.__data_);
          google::protobuf::internal::LogMessage::~LogMessage(&v61[0].__r_.__value_.__l.__data_);
          v46 = *(v35 + 64);
        }

        *(v39 + 4) |= 0x20u;
        v48 = *(v39 + 20);
        if (!v48)
        {
          v48 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_NLParameters>(0);
          *(v39 + 20) = v48;
          v46 = *(v35 + 64);
        }

        if (v46)
        {
          v49 = v46;
        }

        else
        {
          v49 = &protobuf::_Intelligence_NLParameters_default_instance_;
        }

        if (v49 != v48)
        {
          protobuf::Intelligence_NLParameters::Clear(v48);
          protobuf::Intelligence_NLParameters::MergeFrom(v48, v49);
        }
      }

      if (*(v35 + 32) >= 1)
      {
        v50 = 0;
        while (1)
        {
          v51 = *(v39 + 5);
          if (!v51)
          {
            break;
          }

          v52 = *(v39 + 8);
          v53 = *v51;
          if (v52 >= *v51)
          {
            if (v53 == *(v39 + 9))
            {
LABEL_86:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v39 + 6, v53 + 1);
              v51 = *(v39 + 5);
              v53 = *v51;
            }

            *v51 = v53 + 1;
            v54 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_NLParameters>(*(v39 + 3));
            v55 = *(v39 + 8);
            v56 = *(v39 + 5) + 8 * v55;
            *(v39 + 8) = v55 + 1;
            *(v56 + 8) = v54;
            goto LABEL_88;
          }

          *(v39 + 8) = v52 + 1;
          v54 = *&v51[2 * v52 + 2];
LABEL_88:
          v57 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_NLParameters>::TypeHandler>(v35 + 24, v50);
          if (v57 != v54)
          {
            v58 = v57;
            protobuf::Intelligence_NLParameters::Clear(v54);
            protobuf::Intelligence_NLParameters::MergeFrom(v54, v58);
          }

          if (++v50 >= *(v35 + 32))
          {
            goto LABEL_91;
          }
        }

        v53 = *(v39 + 9);
        goto LABEL_86;
      }

LABEL_91:
      ++v33;
      v2 = this;
      v32 = *(this + 62);
      if (v33 >= v32)
      {
        goto LABEL_92;
      }
    }

    v38 = *(v2 + 129);
LABEL_59:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve(v2 + 126, v38 + 1);
    v36 = *(v2 + 65);
    v38 = *v36;
    goto LABEL_60;
  }

LABEL_92:
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Intent>::TypeHandler>(v2 + 240);
}

void sub_254CBDD94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void siri::intelligence::UpdateTo_2_0_1(siri::intelligence *this, protobuf::Intelligence *a2)
{
  std::string::basic_string[abi:ne200100]<0>(&v199, "socialCATI");
  std::string::basic_string[abi:ne200100]<0>(&v196, "identifierValue");
  std::string::basic_string[abi:ne200100]<0>(v194, "matchers");
  std::string::basic_string[abi:ne200100]<0>(v192, "namespace");
  std::string::basic_string[abi:ne200100]<0>(v190, "directInvocation");
  std::string::basic_string[abi:ne200100]<0>(v188, "invocations");
  std::string::basic_string[abi:ne200100]<0>(v186, "identifier");
  std::string::basic_string[abi:ne200100]<0>(v184, "userData");
  std::string::basic_string[abi:ne200100]<0>(v182, "usoLiteral");
  std::string::basic_string[abi:ne200100]<0>(__p, "userDialogActs");
  if (*(this + 128) < 1)
  {
    goto LABEL_341;
  }

  v3 = 0;
  v169 = this;
  do
  {
    v170 = v3;
    v4 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Event>::TypeHandler>(this + 504, v3);
    v5 = v4;
    memset(&v179, 0, sizeof(v179));
    memset(&v178, 0, sizeof(v178));
    if ((*(v4 + 16) & 0x20) != 0)
    {
      v6 = *(v4 + 160);
      if (!v6)
      {
        v7 = google::protobuf::internal::LogMessage::LogMessage(&__str, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 18904);
        v8 = google::protobuf::internal::LogMessage::operator<<(v7, "CHECK failed: !value || nl_producer_ != nullptr: ");
        google::protobuf::internal::LogFinisher::operator=(&v177, &v8->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__str.__r_.__value_.__l.__data_);
        v6 = *(v5 + 160);
      }

      if (v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = &protobuf::_Intelligence_NLParameters_default_instance_;
      }

      v10 = v9[6];
      v11 = *(v10 + 23);
      if (v11 >= 0)
      {
        v12 = *(v10 + 23);
      }

      else
      {
        v12 = *(v10 + 8);
      }

      v13 = v201;
      if ((v201 & 0x80u) != 0)
      {
        v13 = v200;
      }

      if (v12 == v13)
      {
        v14 = v11 >= 0 ? v9[6] : *v10;
        v15 = (v201 & 0x80u) == 0 ? &v199 : v199;
        if (!memcmp(v14, v15, v12) && *(v9 + 8) == 1)
        {
          v16 = *(v9[5] + 8);
          v17 = *(v16 + 120);
          v18 = v197;
          v19 = *(v17 + 23);
          if (v19 >= 0)
          {
            v20 = *(v17 + 23);
          }

          else
          {
            v20 = *(v17 + 8);
          }

          if ((v198 & 0x80u) == 0)
          {
            v18 = v198;
          }

          if (v20 == v18)
          {
            v21 = v19 >= 0 ? *(v16 + 120) : *v17;
            v22 = (v198 & 0x80u) == 0 ? &v196 : v196;
            if (!memcmp(v21, v22, v20) && (*(v16 + 16) & 2) != 0)
            {
              std::string::operator=(&v178, *(v16 + 128));
              v23 = *(v5 + 160);
              if (v23)
              {
                protobuf::Intelligence_NLParameters::Clear(v23);
              }

              *(v5 + 16) &= ~0x20u;
            }
          }
        }
      }
    }

    if (*(v5 + 32) < 1)
    {
      goto LABEL_295;
    }

    v24 = 0;
    do
    {
      v25 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_NLParameters>::TypeHandler>(v5 + 24, v24);
      v26 = v25;
      v27 = *(v25 + 48);
      v28 = *(v27 + 23);
      v29 = v28;
      v30 = *(v27 + 8);
      if ((v28 & 0x80u) == 0)
      {
        v31 = *(v27 + 23);
      }

      else
      {
        v31 = *(v27 + 8);
      }

      v32 = v201;
      if ((v201 & 0x80u) != 0)
      {
        v32 = v200;
      }

      if (v31 != v32)
      {
        goto LABEL_72;
      }

      v33 = (v28 & 0x80u) == 0 ? *(v25 + 48) : *v27;
      v34 = (v201 & 0x80u) == 0 ? &v199 : v199;
      if (memcmp(v33, v34, v31) || *(v26 + 32) != 1)
      {
        goto LABEL_72;
      }

      v36 = *(*(v26 + 40) + 8);
      v37 = *(v36 + 120);
      v38 = v194[1];
      v39 = *(v37 + 23);
      if (v39 >= 0)
      {
        v40 = *(v37 + 23);
      }

      else
      {
        v40 = *(v37 + 8);
      }

      if ((v195 & 0x80u) == 0)
      {
        v38 = v195;
      }

      if (v40 != v38 || (v39 >= 0 ? (v41 = *(v36 + 120)) : (v41 = *v37), (v195 & 0x80u) == 0 ? (v42 = v194) : (v42 = v194[0]), memcmp(v41, v42, v40) || (v115 = *(v36 + 56), v115 < 1)))
      {
LABEL_72:
        v44 = 0;
        goto LABEL_73;
      }

      v172 = 0;
      v116 = *(v36 + 64);
      if (v116)
      {
        v117 = (v116 + 8);
      }

      else
      {
        v117 = 0;
      }

      v174 = v26;
      v176 = &v117[v115];
      do
      {
        v118 = *v117;
        memset(&__str, 0, sizeof(__str));
        memset(&v177, 0, sizeof(v177));
        v119 = *(v118 + 88);
        if (v119)
        {
          v120 = (v119 + 8);
        }

        else
        {
          v120 = 0;
        }

        v121 = *(v118 + 80);
        if (v121)
        {
          v122 = 8 * v121;
          do
          {
            v123 = *v120;
            v124 = *(*v120 + 120);
            v125 = *(v124 + 23);
            v126 = v125;
            v127 = *(v124 + 8);
            if ((v125 & 0x80u) == 0)
            {
              v128 = *(v124 + 23);
            }

            else
            {
              v128 = *(v124 + 8);
            }

            v129 = v198;
            if ((v198 & 0x80u) != 0)
            {
              v129 = v197;
            }

            if (v128 == v129)
            {
              v130 = (v125 & 0x80u) == 0 ? *(*v120 + 120) : *v124;
              v131 = (v198 & 0x80u) == 0 ? &v196 : v196;
              if (!memcmp(v130, v131, v128) && (*(v123 + 16) & 2) != 0)
              {
                std::string::operator=(&__str, *(v123 + 128));
                v124 = *(v123 + 120);
                v125 = *(v124 + 23);
                v127 = *(v124 + 8);
                v126 = *(v124 + 23);
              }
            }

            if (v126 >= 0)
            {
              v132 = v125;
            }

            else
            {
              v132 = v127;
            }

            v133 = v193;
            if ((v193 & 0x80u) != 0)
            {
              v133 = v192[1];
            }

            if (v132 == v133)
            {
              v134 = v126 >= 0 ? v124 : *v124;
              v135 = (v193 & 0x80u) == 0 ? v192 : v192[0];
              if (!memcmp(v134, v135, v132) && (*(v123 + 16) & 2) != 0)
              {
                std::string::operator=(&v177, *(v123 + 128));
              }
            }

            ++v120;
            v122 -= 8;
          }

          while (v122);
          v136 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          size = __str.__r_.__value_.__l.__size_;
          v138 = HIBYTE(v177.__r_.__value_.__r.__words[2]);
          v26 = v174;
        }

        else
        {
          v138 = 0;
          size = 0;
          v136 = 0;
        }

        v139 = v136;
        if ((v136 & 0x80u) == 0)
        {
          v140 = v136;
        }

        else
        {
          v140 = size;
        }

        if (v140)
        {
          if ((v138 & 0x80u) != 0)
          {
            v138 = v177.__r_.__value_.__l.__size_;
          }

          if (v138)
          {
            v141 = &v179;
          }

          else
          {
            v142 = HIBYTE(v178.__r_.__value_.__r.__words[2]);
            if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v142 = v178.__r_.__value_.__l.__size_;
            }

            if (v142)
            {
              if (v142 == v140)
              {
                v141 = &v178;
                v143 = (v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v178 : v178.__r_.__value_.__r.__words[0];
                v144 = v139 >= 0 ? &__str : __str.__r_.__value_.__r.__words[0];
                if (!memcmp(v143, v144, v140))
                {
                  goto LABEL_276;
                }
              }

              v145 = *(v26 + 48);
              if (*(v145 + 23) < 0)
              {
                v145 = *v145;
              }

              p_str = __str.__r_.__value_.__r.__words[0];
              if (v139 >= 0)
              {
                p_str = &__str;
              }

              siri::intelligence::Log::Warning("CATI GUID is different for parser and producer for event %s. Using '%s'.", v43, v145, p_str);
            }

            v141 = &v178;
          }

LABEL_276:
          std::string::operator=(v141, &__str);
          LOBYTE(v138) = *(&v177.__r_.__value_.__s + 23);
          v172 = 1;
        }

        if ((v138 & 0x80) != 0)
        {
          operator delete(v177.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        ++v117;
      }

      while (v117 != v176);
      v27 = *(v26 + 48);
      v28 = *(v27 + 23);
      v30 = *(v27 + 8);
      v29 = *(v27 + 23);
      v44 = v172;
LABEL_73:
      if (v29 >= 0)
      {
        v45 = v28;
      }

      else
      {
        v45 = v30;
      }

      v46 = v191;
      if ((v191 & 0x80u) != 0)
      {
        v46 = v190[1];
      }

      if (v45 == v46)
      {
        v47 = v29 >= 0 ? v27 : *v27;
        v48 = (v191 & 0x80u) == 0 ? v190 : v190[0];
        if (!memcmp(v47, v48, v45) && *(v26 + 32) == 1)
        {
          v50 = *(*(v26 + 40) + 8);
          v51 = *(v50 + 120);
          v52 = v188[1];
          v53 = *(v51 + 23);
          if (v53 >= 0)
          {
            v54 = *(v51 + 23);
          }

          else
          {
            v54 = *(v51 + 8);
          }

          if ((v189 & 0x80u) == 0)
          {
            v52 = v189;
          }

          if (v54 == v52)
          {
            v55 = v53 >= 0 ? *(v50 + 120) : *v51;
            v56 = (v189 & 0x80u) == 0 ? v188 : v188[0];
            if (!memcmp(v55, v56, v54))
            {
              v57 = *(v50 + 56);
              if (v57 >= 1)
              {
                v58 = *(v50 + 64);
                if (v58)
                {
                  v59 = v58 + 8;
                }

                else
                {
                  v59 = 0;
                }

                v173 = v26;
                v175 = v59 + 8 * v57;
                v171 = v5;
                while (1)
                {
                  v60 = *(*v59 + 88);
                  v61 = v60 ? v60 + 8 : 0;
                  v62 = *(*v59 + 80);
                  if (v62)
                  {
                    break;
                  }

LABEL_155:
                  v59 += 8;
                  if (v59 == v175)
                  {
                    goto LABEL_156;
                  }
                }

                v63 = v44;
                v64 = 0;
                if ((v185 & 0x80u) == 0)
                {
                  v65 = v185;
                }

                else
                {
                  v65 = v184[1];
                }

                if ((v185 & 0x80u) == 0)
                {
                  v66 = v184;
                }

                else
                {
                  v66 = v184[0];
                }

                v67 = 8 * v62;
                v68 = 8 * v62;
                v69 = v61;
                do
                {
                  v70 = *(*v69 + 120);
                  v71 = *(v70 + 23);
                  v72 = v71;
                  if ((v71 & 0x80u) != 0)
                  {
                    v71 = *(v70 + 8);
                  }

                  if (v71 == v65)
                  {
                    if (v72 >= 0)
                    {
                      v73 = *(*v69 + 120);
                    }

                    else
                    {
                      v73 = *v70;
                    }

                    v64 |= memcmp(v73, v66, v65) == 0;
                  }

                  v69 += 8;
                  v68 -= 8;
                }

                while (v68);
                v44 = v63;
                v5 = v171;
                if ((v64 & 1) == 0)
                {
                  while (2)
                  {
                    v74 = *v61;
                    v75 = *(*v61 + 120);
                    v76 = *(v75 + 23);
                    if (v76 >= 0)
                    {
                      v77 = *(v75 + 23);
                    }

                    else
                    {
                      v77 = *(v75 + 8);
                    }

                    v78 = v187;
                    if ((v187 & 0x80u) != 0)
                    {
                      v78 = v186[1];
                    }

                    if (v77 == v78)
                    {
                      v79 = v76 >= 0 ? *(*v61 + 120) : *v75;
                      v80 = (v187 & 0x80u) == 0 ? v186 : v186[0];
                      if (!memcmp(v79, v80, v77) && (*(v74 + 16) & 2) != 0)
                      {
                        v81 = *(v74 + 128);
                        v82 = *(v171 + 88);
                        if (!v82)
                        {
                          v84 = *(v171 + 84);
                          goto LABEL_147;
                        }

                        v83 = *(v171 + 80);
                        v84 = *v82;
                        if (v83 < *v82)
                        {
                          *(v171 + 80) = v83 + 1;
                          AlignedAndAddCleanup = *&v82[2 * v83 + 2];
                          goto LABEL_153;
                        }

                        if (v84 == *(v171 + 84))
                        {
LABEL_147:
                          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v171 + 72), v84 + 1);
                          v82 = *(v171 + 88);
                          v84 = *v82;
                        }

                        *v82 = v84 + 1;
                        v86 = *(v171 + 72);
                        if (!v86)
                        {
                          operator new();
                        }

                        if (v86[14])
                        {
                        }

                        AlignedAndAddCleanup = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v86, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
                        AlignedAndAddCleanup->__r_.__value_.__r.__words[0] = 0;
                        AlignedAndAddCleanup->__r_.__value_.__l.__size_ = 0;
                        AlignedAndAddCleanup->__r_.__value_.__r.__words[2] = 0;
                        v87 = *(v171 + 80);
                        v88 = *(v171 + 88) + 8 * v87;
                        *(v171 + 80) = v87 + 1;
                        *(v88 + 8) = AlignedAndAddCleanup;
LABEL_153:
                        std::string::operator=(AlignedAndAddCleanup, v81);
                        v44 = 1;
                      }
                    }

                    v61 += 8;
                    v67 -= 8;
                    if (!v67)
                    {
                      goto LABEL_155;
                    }

                    continue;
                  }
                }

LABEL_156:
                v26 = v173;
                v27 = *(v173 + 48);
                v28 = *(v27 + 23);
                v30 = *(v27 + 8);
                v29 = *(v27 + 23);
              }
            }
          }
        }
      }

      if (v29 >= 0)
      {
        v89 = v28;
      }

      else
      {
        v89 = v30;
      }

      v90 = v183;
      if ((v183 & 0x80u) != 0)
      {
        v90 = v182[1];
      }

      if (v89 != v90)
      {
        goto LABEL_189;
      }

      v91 = v29 >= 0 ? v27 : *v27;
      v92 = (v183 & 0x80u) == 0 ? v182 : v182[0];
      if (memcmp(v91, v92, v89) || *(v26 + 32) != 1)
      {
        goto LABEL_189;
      }

      v94 = *(*(v26 + 40) + 8);
      v95 = *(v94 + 120);
      v96 = __p[1];
      v97 = *(v95 + 23);
      if (v97 >= 0)
      {
        v98 = *(v95 + 23);
      }

      else
      {
        v98 = *(v95 + 8);
      }

      if ((v181 & 0x80u) == 0)
      {
        v96 = v181;
      }

      if (v98 != v96 || (v97 >= 0 ? (v99 = *(v94 + 120)) : (v99 = *v95), (v181 & 0x80u) == 0 ? (v100 = __p) : (v100 = __p[0]), memcmp(v99, v100, v98) || *(v94 + 56) != 1 || (v101 = *(*(v94 + 64) + 8), (*(v101 + 16) & 2) == 0)))
      {
LABEL_189:
        if (v44)
        {
          goto LABEL_190;
        }

        goto LABEL_206;
      }

      v147 = *(v101 + 128);
      v148 = *(v5 + 64);
      if (!v148)
      {
        v150 = *(v5 + 60);
        goto LABEL_288;
      }

      v149 = *(v5 + 56);
      v150 = *v148;
      if (v149 < *v148)
      {
        *(v5 + 56) = v149 + 1;
        v151 = *&v148[2 * v149 + 2];
        goto LABEL_294;
      }

      if (v150 == *(v5 + 60))
      {
LABEL_288:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v5 + 48), v150 + 1);
        v148 = *(v5 + 64);
        v150 = *v148;
      }

      *v148 = v150 + 1;
      v152 = *(v5 + 48);
      if (!v152)
      {
        operator new();
      }

      if (v152[14])
      {
      }

      v151 = google::protobuf::internal::ArenaImpl::AllocateAlignedAndAddCleanup(v152, 0x18uLL, google::protobuf::internal::arena_destruct_object<std::string>);
      v151->__r_.__value_.__r.__words[0] = 0;
      v151->__r_.__value_.__l.__size_ = 0;
      v151->__r_.__value_.__r.__words[2] = 0;
      v153 = *(v5 + 56);
      v154 = *(v5 + 64) + 8 * v153;
      *(v5 + 56) = v153 + 1;
      *(v154 + 8) = v151;
LABEL_294:
      std::string::operator=(v151, v147);
LABEL_190:
      if (v24 < 0)
      {
        v102 = google::protobuf::internal::LogMessage::LogMessage(&__str, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 2041);
        v103 = google::protobuf::internal::LogMessage::operator<<(v102, "CHECK failed: (start) >= (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v177, &v103->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__str.__r_.__value_.__l.__data_);
      }

      if (*(v5 + 32) <= v24)
      {
        v104 = google::protobuf::internal::LogMessage::LogMessage(&__str, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 2043);
        v105 = google::protobuf::internal::LogMessage::operator<<(v104, "CHECK failed: (start + num) <= (size()): ");
        google::protobuf::internal::LogFinisher::operator=(&v177, &v105->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__str.__r_.__value_.__l.__data_);
      }

      if (v24 < 0)
      {
        v106 = google::protobuf::internal::LogMessage::LogMessage(&__str, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1567);
        v107 = google::protobuf::internal::LogMessage::operator<<(v106, "CHECK failed: (index) >= (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v177, &v107->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__str.__r_.__value_.__l.__data_);
      }

      if (*(v5 + 32) <= v24)
      {
        v108 = google::protobuf::internal::LogMessage::LogMessage(&__str, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1568);
        v109 = google::protobuf::internal::LogMessage::operator<<(v108, "CHECK failed: (index) < (current_size_): ");
        google::protobuf::internal::LogFinisher::operator=(&v177, &v109->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__str.__r_.__value_.__l.__data_);
      }

      v110 = *(*(v5 + 40) + 8 * v24 + 8);
      if (v110 && !*(v5 + 24))
      {
        (*(*v110 + 8))(v110);
      }

      if (v24 < 0)
      {
        v111 = google::protobuf::internal::LogMessage::LogMessage(&__str, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 2063);
        v112 = google::protobuf::internal::LogMessage::operator<<(v111, "CHECK failed: (start) >= (0): ");
        google::protobuf::internal::LogFinisher::operator=(&v177, &v112->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__str.__r_.__value_.__l.__data_);
      }

      if (*(v5 + 32) <= v24)
      {
        v113 = google::protobuf::internal::LogMessage::LogMessage(&__str, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 2065);
        v114 = google::protobuf::internal::LogMessage::operator<<(v113, "CHECK failed: (start + num) <= (size()): ");
        google::protobuf::internal::LogFinisher::operator=(&v177, &v114->__r_.__value_.__l.__data_);
        google::protobuf::internal::LogMessage::~LogMessage(&__str.__r_.__value_.__l.__data_);
      }

      google::protobuf::internal::RepeatedPtrFieldBase::CloseGap(v5 + 24, v24--, 1);
LABEL_206:
      ++v24;
    }

    while (v24 < *(v5 + 32));
LABEL_295:
    v155 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
    if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v155 = v179.__r_.__value_.__l.__size_;
    }

    if (v155)
    {
      v156 = *(v5 + 136);
      *(v5 + 16) |= 4u;
      if (v156 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v5 + 136, &v179);
      }

      std::string::operator=(v156, &v179);
    }

    v157 = HIBYTE(v178.__r_.__value_.__r.__words[2]);
    if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v157 = v178.__r_.__value_.__l.__size_;
    }

    if (v157)
    {
      v158 = *(v5 + 144);
      *(v5 + 16) |= 8u;
      if (v158 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v5 + 144, &v178);
      }

      std::string::operator=(v158, &v178);
    }

    if ((*(v5 + 16) & 2) != 0)
    {
      v159 = *(v5 + 128);
      v160 = *(v159 + 23);
      if (v160 >= 0)
      {
        v161 = *(v159 + 23);
      }

      else
      {
        v161 = *(v159 + 8);
      }

      v162 = HIBYTE(v179.__r_.__value_.__r.__words[2]);
      if ((v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v162 = v179.__r_.__value_.__l.__size_;
      }

      if (v161 == v162)
      {
        v163 = *v159;
        v164 = v160 >= 0 ? *(v5 + 128) : *v159;
        v165 = (v179.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v179 : v179.__r_.__value_.__r.__words[0];
        if (!memcmp(v164, v165, v161))
        {
          goto LABEL_331;
        }
      }

      v166 = HIBYTE(v178.__r_.__value_.__r.__words[2]);
      if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v166 = v178.__r_.__value_.__l.__size_;
      }

      if (v161 == v166)
      {
        v163 = *v159;
        v167 = v160 >= 0 ? v159 : *v159;
        v168 = (v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v178 : v178.__r_.__value_.__r.__words[0];
        if (!memcmp(v167, v168, v161))
        {
LABEL_331:
          if (v159 != &google::protobuf::internal::fixed_address_empty_string)
          {
            if (v160 < 0)
            {
              *v163 = 0;
              *(v159 + 8) = 0;
            }

            else
            {
              *v159 = 0;
              *(v159 + 23) = 0;
            }
          }

          *(v5 + 16) &= ~2u;
        }
      }
    }

    if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v178.__r_.__value_.__l.__data_);
    }

    this = v169;
    if (SHIBYTE(v179.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v179.__r_.__value_.__l.__data_);
    }

    v3 = v170 + 1;
  }

  while (v170 + 1 < *(v169 + 128));
LABEL_341:
  if (v181 < 0)
  {
    operator delete(__p[0]);
  }

  if (v183 < 0)
  {
    operator delete(v182[0]);
  }

  if (v185 < 0)
  {
    operator delete(v184[0]);
  }

  if (v187 < 0)
  {
    operator delete(v186[0]);
  }

  if (v189 < 0)
  {
    operator delete(v188[0]);
  }

  if (v191 < 0)
  {
    operator delete(v190[0]);
  }

  if (v193 < 0)
  {
    operator delete(v192[0]);
  }

  if (v195 < 0)
  {
    operator delete(v194[0]);
  }

  if (v198 < 0)
  {
    operator delete(v196);
  }

  if (v201 < 0)
  {
    operator delete(v199);
  }
}

void sub_254CBEC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61, void *a62, uint64_t a63)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (a37 < 0)
  {
    operator delete(a32);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  if (a61 < 0)
  {
    operator delete(a56);
  }

  if (a67 < 0)
  {
    operator delete(a62);
  }

  if (*(v67 - 209) < 0)
  {
    operator delete(*(v67 - 232));
  }

  if (*(v67 - 185) < 0)
  {
    operator delete(*(v67 - 208));
  }

  if (*(v67 - 161) < 0)
  {
    operator delete(*(v67 - 184));
  }

  if (*(v67 - 137) < 0)
  {
    operator delete(*(v67 - 160));
  }

  _Unwind_Resume(a1);
}

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (v4 != v5)
    {
      return 0;
    }

    return memcmp(a1, __s, v4) == 0;
  }

  if (v4 == a1[1])
  {
    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    a1 = *a1;
    return memcmp(a1, __s, v4) == 0;
  }

  return 0;
}

void protobuf::Intelligence_Variable::set_type(protobuf::Intelligence_Variable *this, char *__s)
{
  if (!__s)
  {
    google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 17621);
    v4 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: value != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
  }

  *(this + 4) |= 2u;
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 10, &google::protobuf::internal::fixed_address_empty_string, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CBF048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
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
      protobuf::Intelligence_ResponseGroup::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254CBF100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CBF1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
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
      protobuf::Intelligence_InputGroup::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254CBF290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_DialogResponse>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1560);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1561);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CBF368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v4, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/arenastring.h", 376);
    v2 = google::protobuf::internal::LogMessage::operator<<(v4, "CHECK failed: initial_value != NULL: ");
    google::protobuf::internal::LogFinisher::operator=(&v3, &v2->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v4[0].__r_.__value_.__l.__data_);
  }

  operator new();
}

void sub_254CBF448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_BehaviorResponse>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1560);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1561);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CBF534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ReferenceResponse>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1560);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1561);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CBF614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_ResponseGroup>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1560);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1561);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CBF6F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Activity>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1560);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1561);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CBF7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1560);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1561);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CBF8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Label>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CBF994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Label>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
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
      protobuf::Intelligence_Label::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254CBFA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Counter>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CBFB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Counter>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
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
      protobuf::Intelligence_Counter::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254CBFBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Flag>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CBFCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Flag>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
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
      protobuf::Intelligence_Flag::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254CBFD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_List>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CBFE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_List>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
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
      protobuf::Intelligence_List::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254CBFEFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t siri::intelligence::IsNewStyleCondition(uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  if (!v1)
  {
    return 0;
  }

  siri::intelligence::StringTrim(" \t\n\r", a1, &v9);
  std::string::basic_string[abi:ne200100]<0>(__p, " ");
  v3 = siri::intelligence::StringContains(&v9.__r_.__value_.__l.__data_, __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
    if (v3)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  std::string::basic_string[abi:ne200100]<0>(&v9, "$");
  if (siri::intelligence::StringContains(a1, &v9))
  {
    v4 = 0;
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "(");
    v5 = siri::intelligence::StringContains(a1, __p);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = v5 ^ 1u;
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return v4;
}

void sub_254CC0024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::UpdateKeyValueParameterTo_1_0_2(siri::intelligence *this, protobuf::Intelligence_KeyValueParameter *a2)
{
  v3 = *(this + 4);
  if ((v3 & 4) != 0)
  {
    v4 = *(this + 17);
    if (v4 != &google::protobuf::internal::fixed_address_empty_string)
    {
      if (*(v4 + 23) < 0)
      {
        **v4 = 0;
        *(v4 + 8) = 0;
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
      }
    }

    v3 = *(this + 4) & 0xFFFFFFFB;
    *(this + 4) = v3;
  }

  if ((v3 & 0x20) != 0)
  {
    *(this + 22) = *(this + 20);
    *(this + 20) = 0;
    v5 = -161;
  }

  else
  {
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_12;
    }

    *(this + 22) = *(this + 21);
    *(this + 21) = 0;
    v5 = -225;
  }

  v3 = v3 & v5 | 0x80;
  *(this + 4) = v3;
LABEL_12:
  if ((v3 & 0x200) != 0)
  {
    *(this + 184) = *(this + 185);
    *(this + 185) = 0;
    *(this + 4) = v3 & 0xFFFFFCDF | 0x100;
  }

  if (*(this + 8) >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 24, v6);
      v8 = *(this + 11);
      if (!v8)
      {
        break;
      }

      v9 = *(this + 20);
      v10 = *v8;
      if (v9 >= *v8)
      {
        if (v10 == *(this + 21))
        {
LABEL_21:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve(this + 18, v10 + 1);
          v8 = *(this + 11);
          v10 = *v8;
        }

        *v8 = v10 + 1;
        v11 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(this + 9));
        v12 = *(this + 20);
        v13 = *(this + 11) + 8 * v12;
        *(this + 20) = v12 + 1;
        *(v13 + 8) = v11;
        goto LABEL_23;
      }

      *(this + 20) = v9 + 1;
      v11 = *&v8[2 * v9 + 2];
LABEL_23:
      if (v7 != v11)
      {
        protobuf::Intelligence_KeyValueParameter::Clear(v11);
        protobuf::Intelligence_KeyValueParameter::MergeFrom(v11, v7);
      }

      if (++v6 >= *(this + 8))
      {
        goto LABEL_26;
      }
    }

    v10 = *(this + 21);
    goto LABEL_21;
  }

LABEL_26:
  google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 24);
  if (*(this + 20) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 72, v14);
      siri::intelligence::UpdateKeyValueParameterTo_1_0_2(v15, v16);
      ++v14;
    }

    while (v14 < *(this + 20));
  }

  if (*(this + 14) >= 1)
  {
    v17 = 0;
    do
    {
      v18 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 48, v17);
      siri::intelligence::UpdateKeyValueParameterTo_1_0_2(v18, v19);
      ++v17;
    }

    while (v17 < *(this + 14));
  }
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CC0304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
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
      protobuf::Intelligence_KeyValueParameter::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254CC03BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1560);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1561);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CC0494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1560);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1561);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CC0574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Variable>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1560);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1561);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CC0654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void siri::intelligence::UpdateConditionEntryTo_1_0_3(siri::intelligence *this, protobuf::Intelligence_Condition_ConditionEntry *a2)
{
  v3 = *(this + 4);
  if (v3)
  {
    *(this + 4) = v3 | 0x10;
    v4 = *(this + 13);
    if (!v4)
    {
      v4 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(0);
      *(this + 13) = v4;
    }

    siri::intelligence::CreateConditionKeyValueParameter_1_0_3(v4, *(this + 9));
    v5 = *(this + 9);
    if (v5 != &google::protobuf::internal::fixed_address_empty_string)
    {
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
      }
    }

    v3 = *(this + 4) & 0xFFFFFFFE;
    *(this + 4) = v3;
  }

  if ((v3 & 4) != 0)
  {
    *(this + 4) = v3 | 0x20;
    v6 = *(this + 14);
    if (!v6)
    {
      v6 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(0);
      *(this + 14) = v6;
    }

    siri::intelligence::CreateConditionKeyValueParameter_1_0_3(v6, *(this + 11));
    v7 = *(this + 11);
    if (v7 != &google::protobuf::internal::fixed_address_empty_string)
    {
      if (*(v7 + 23) < 0)
      {
        **v7 = 0;
        *(v7 + 8) = 0;
      }

      else
      {
        *v7 = 0;
        *(v7 + 23) = 0;
      }
    }

    *(this + 4) &= ~4u;
  }

  if (*(this + 8) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(this + 24, v8);
      siri::intelligence::UpdateConditionEntryTo_1_0_3(v9, v10);
      ++v8;
    }

    while (v8 < *(this + 8));
  }

  if (*(this + 14) >= 1)
  {
    v11 = 0;
    do
    {
      v12 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(this + 48, v11);
      siri::intelligence::UpdateConditionEntryTo_1_0_3(v12, v13);
      ++v11;
    }

    while (v11 < *(this + 14));
  }

  v14 = *(this + 4);
  if ((v14 & 8) != 0)
  {
    v15 = *(this + 12);
    if (!v15)
    {
      google::protobuf::internal::LogMessage::LogMessage(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21511);
      v16 = google::protobuf::internal::LogMessage::operator<<(v18, "CHECK failed: !value || not_child_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v17, &v16->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v18[0].__r_.__value_.__l.__data_);
      v15 = *(this + 12);
      v14 = *(this + 4) | 8;
    }

    *(this + 4) = v14;
    siri::intelligence::UpdateConditionEntryTo_1_0_3(v15, a2);
  }
}

void sub_254CC0828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1560);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1561);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CC0900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void siri::intelligence::CreateConditionKeyValueParameter_1_0_3(uint64_t a1, uint64_t a2)
{
  siri::intelligence::GetLiteralType(a2, &v29);
  v4 = strlen(siri::intelligence::TYPE_STRING[0]);
  v5 = v4;
  v6 = v31;
  if ((v31 & 0x8000000000000000) != 0)
  {
    if (v4 != v30)
    {
      goto LABEL_8;
    }

    if (v4 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v7 = v29;
  }

  else
  {
    if (v4 != v31)
    {
      goto LABEL_8;
    }

    v7 = &v29;
  }

  if (memcmp(v7, siri::intelligence::TYPE_STRING[0], v5))
  {
LABEL_8:
    v8 = strlen(siri::intelligence::TYPE_BOOLEAN[0]);
    v9 = v8;
    if ((v6 & 0x80000000) != 0)
    {
      if (v8 != v30)
      {
        goto LABEL_15;
      }

      if (v8 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v10 = v29;
    }

    else
    {
      if (v8 != v6)
      {
        goto LABEL_15;
      }

      v10 = &v29;
    }

    if (!memcmp(v10, siri::intelligence::TYPE_BOOLEAN[0], v9))
    {
      v22 = siri::intelligence::StringToBool(a2, 0);
      *(a1 + 16) |= 0x100u;
      *(a1 + 184) = v22;
      goto LABEL_41;
    }

LABEL_15:
    v11 = strlen(siri::intelligence::TYPE_NUMBER[0]);
    v12 = v11;
    if ((v6 & 0x80000000) != 0)
    {
      if (v11 == v30)
      {
        if (v11 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v13 = v29;
LABEL_21:
        if (!memcmp(v13, siri::intelligence::TYPE_NUMBER[0], v12))
        {
          siri::intelligence::StringToDouble(a2, 0);
          *(a1 + 16) |= 0x80u;
          *(a1 + 176) = v23;
          goto LABEL_41;
        }
      }
    }

    else if (v11 == v6)
    {
      v13 = &v29;
      goto LABEL_21;
    }

    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v25, *a2, *(a2 + 8));
    }

    else
    {
      v25 = *a2;
    }

    v26 = 0;
    v27 = 0;
    v28 = 0;
    siri::intelligence::Entity::FindNext(&v25);
    if (v28)
    {
      siri::intelligence::Entity::GetName(&v25, &__p);
      *(a1 + 16) |= 8u;
      google::protobuf::internal::ArenaStringPtr::SetNoArena((a1 + 144), &google::protobuf::internal::fixed_address_empty_string, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      if (*(a2 + 23) >= 0)
      {
        v15 = a2;
      }

      else
      {
        v15 = *a2;
      }

      siri::intelligence::Log::Error("Unable to update old-style condition: %s", v14, v15);
      v18 = *(a1 + 128);
      v17 = a1 + 128;
      v16 = v18;
      *(v17 - 112) |= 2u;
      if (v18 == &google::protobuf::internal::fixed_address_empty_string)
      {
        google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v17, a2);
      }

      std::string::operator=(v16, a2);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    goto LABEL_41;
  }

  v21 = *(a1 + 128);
  v20 = a1 + 128;
  v19 = v21;
  *(v20 - 112) |= 2u;
  if (v21 == &google::protobuf::internal::fixed_address_empty_string)
  {
    google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(v20, a2);
  }

  std::string::operator=(v19, a2);
LABEL_41:
  if (v31 < 0)
  {
    operator delete(v29);
  }
}

void sub_254CC0BEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 33) < 0)
  {
    operator delete(*(v21 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1560);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1561);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CC0D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::MergeFrom<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(signed int **this, uint64_t a2)
{
  if (a2 == this)
  {
    google::protobuf::internal::LogMessage::LogMessage(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1632);
    v4 = google::protobuf::internal::LogMessage::operator<<(v11, "CHECK failed: (&other) != (this): ");
    google::protobuf::internal::LogFinisher::operator=(&v10, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v11[0].__r_.__value_.__l.__data_);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend(this, v5);
    google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this, v7, (v6 + 8), v5, *this[2] - *(this + 2));
    v8 = *(this + 2) + v5;
    *(this + 2) = v8;
    v9 = this[2];
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_254CC0DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

std::string *google::protobuf::internal::RepeatedPtrFieldBase::MergeFromInnerLoop<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(std::string *result, atomic_ullong ***a2, atomic_ullong ***a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_KeyValueParameter>::Merge(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a2[a5];
    v20 = &a3[a5];
    do
    {
      v21 = *v20++;
      v22 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(v18);
      result = google::protobuf::internal::GenericTypeHandler<protobuf::Intelligence_KeyValueParameter>::Merge(v21, v22);
      *v19++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

void google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::~RepeatedPtrField(google::protobuf::internal::ArenaImpl **a1)
{
  google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1);

  google::protobuf::internal::RepeatedPtrFieldBase::~RepeatedPtrFieldBase(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Destroy<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(void *a1)
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

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_LegacyEvent>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CC1054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void siri::intelligence::ConvertPositionalArgToDictionary(uint64_t a1, uint64_t a2, int a3, char *a4)
{
  if (*(a2 + 56) <= a3)
  {
    return;
  }

  v9 = *(a1 + 88);
  if (!v9)
  {
    v11 = *(a1 + 84);
    goto LABEL_8;
  }

  v10 = *(a1 + 80);
  v11 = *v9;
  if (v10 >= *v9)
  {
    if (v11 != *(a1 + 84))
    {
LABEL_9:
      *v9 = v11 + 1;
      v12 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(*(a1 + 72));
      v13 = *(a1 + 80);
      v14 = *(a1 + 88) + 8 * v13;
      *(a1 + 80) = v13 + 1;
      *(v14 + 8) = v12;
      goto LABEL_10;
    }

LABEL_8:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 72), v11 + 1);
    v9 = *(a1 + 88);
    v11 = *v9;
    goto LABEL_9;
  }

  *(a1 + 80) = v10 + 1;
  v12 = *&v9[2 * v10 + 2];
LABEL_10:
  v15 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a2 + 48, a3);
  if (v15 != v12)
  {
    v16 = v15;
    protobuf::Intelligence_KeyValueParameter::Clear(v12);
    protobuf::Intelligence_KeyValueParameter::MergeFrom(v12, v16);
  }

  if (a4[23] >= 0)
  {
    v17 = a4;
  }

  else
  {
    v17 = *a4;
  }

  protobuf::Intelligence_KeyValueParameter::set_key(v12, v17);
}

void protobuf::Intelligence_KeyValueParameter::set_key(protobuf::Intelligence_KeyValueParameter *this, char *__s)
{
  if (!__s)
  {
    google::protobuf::internal::LogMessage::LogMessage(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 9508);
    v4 = google::protobuf::internal::LogMessage::operator<<(__p, "CHECK failed: value != nullptr: ");
    google::protobuf::internal::LogFinisher::operator=(&v5, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&__p[0].__r_.__value_.__l.__data_);
  }

  *(this + 4) |= 1u;
  std::string::basic_string[abi:ne200100]<0>(__p, __s);
  google::protobuf::internal::ArenaStringPtr::SetNoArena(this + 15, &google::protobuf::internal::fixed_address_empty_string, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }
}

void siri::intelligence::UpdateFunctionToParameterDictionary(siri::intelligence *this, protobuf::Intelligence_KeyValueParameter *a2)
{
  if ((*(this + 16) & 0x10) == 0)
  {
    goto LABEL_210;
  }

  v3 = *(this + 19);
  if (*(v3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    v63.__r_.__value_.__r.__words[2] = *(v3 + 2);
    *&v63.__r_.__value_.__l.__data_ = v4;
  }

  v5 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    size = v63.__r_.__value_.__l.__size_;
    if (v63.__r_.__value_.__l.__size_ == 3)
    {
      if ((*v63.__r_.__value_.__l.__data_ != 25185 || *(v63.__r_.__value_.__r.__words[0] + 2) != 115) && (*v63.__r_.__value_.__l.__data_ != 25711 || *(v63.__r_.__value_.__r.__words[0] + 2) != 100))
      {
        goto LABEL_54;
      }

      goto LABEL_50;
    }

    if (v63.__r_.__value_.__l.__size_ != 4)
    {
      goto LABEL_59;
    }

    v6 = v63.__r_.__value_.__r.__words[0];
    if (*v63.__r_.__value_.__l.__data_ == 1953657203)
    {
      goto LABEL_50;
    }
  }

  else
  {
    if (HIBYTE(v63.__r_.__value_.__r.__words[2]) == 3)
    {
      if ((LOWORD(v63.__r_.__value_.__l.__data_) != 25185 || v63.__r_.__value_.__s.__data_[2] != 115) && (LOWORD(v63.__r_.__value_.__l.__data_) != 25711 || v63.__r_.__value_.__s.__data_[2] != 100))
      {
LABEL_27:
        if (LOWORD(v63.__r_.__value_.__l.__data_) == 25697 && v63.__r_.__value_.__s.__data_[2] == 100)
        {
          goto LABEL_86;
        }

        v11 = &v63;
        v5 = 3;
        goto LABEL_72;
      }

LABEL_50:
      std::string::basic_string[abi:ne200100]<0>(__p, "value");
      siri::intelligence::SetFunctionArgumentKey(this, 0, __p);
      if (v62 < 0)
      {
        operator delete(__p[0]);
      }

      v5 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
      if ((*(&v63.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_53;
    }

    if (HIBYTE(v63.__r_.__value_.__r.__words[2]) != 4)
    {
LABEL_15:
      if (v5 == 8)
      {
        if (v63.__r_.__value_.__r.__words[0] != 0x7463617274627573 && v63.__r_.__value_.__r.__words[0] != 0x796C7069746C756DLL)
        {
          v13 = &v63;
          v5 = 8;
          goto LABEL_147;
        }

        goto LABEL_86;
      }

      if (v5 == 6)
      {
        if (LODWORD(v63.__r_.__value_.__l.__data_) != 1769367908 || WORD2(v63.__r_.__value_.__r.__words[0]) != 25956)
        {
          goto LABEL_167;
        }

        goto LABEL_86;
      }

      if (v5 != 3)
      {
        goto LABEL_77;
      }

      goto LABEL_27;
    }

    if (LODWORD(v63.__r_.__value_.__l.__data_) == 1953657203)
    {
      goto LABEL_50;
    }

    v6 = &v63;
  }

  if (LODWORD(v6->__r_.__value_.__l.__data_) == 1852143205)
  {
    goto LABEL_50;
  }

  if ((*(&v63.__r_.__value_.__s + 23) & 0x80) == 0)
  {
    goto LABEL_15;
  }

LABEL_53:
  size = v63.__r_.__value_.__l.__size_;
  if (v63.__r_.__value_.__l.__size_ == 3)
  {
LABEL_54:
    if (*v63.__r_.__value_.__l.__data_ == 25697 && *(v63.__r_.__value_.__r.__words[0] + 2) == 100)
    {
      goto LABEL_86;
    }

    size = v63.__r_.__value_.__l.__size_;
  }

LABEL_59:
  if (size != 3)
  {
    if (size == 6)
    {
      if (*v63.__r_.__value_.__l.__data_ != 1769367908 || *(v63.__r_.__value_.__r.__words[0] + 4) != 25956)
      {
        goto LABEL_79;
      }
    }

    else if (size != 8 || *v63.__r_.__value_.__l.__data_ != 0x7463617274627573 && *v63.__r_.__value_.__l.__data_ != 0x796C7069746C756DLL)
    {
      goto LABEL_79;
    }

    goto LABEL_86;
  }

  v11 = v63.__r_.__value_.__r.__words[0];
LABEL_72:
  data_low = LOWORD(v11->__r_.__value_.__l.__data_);
  v19 = v11->__r_.__value_.__s.__data_[2];
  if (data_low != 26989 || v19 != 110)
  {
    if ((v5 & 0x80) == 0)
    {
LABEL_77:
      if (v5 != 3)
      {
LABEL_92:
        if (v5 != 9)
        {
          goto LABEL_101;
        }

        v25 = &v63;
        goto LABEL_96;
      }

      v21 = &v63;
      goto LABEL_81;
    }

LABEL_79:
    if (v63.__r_.__value_.__l.__size_ != 3)
    {
      goto LABEL_94;
    }

    v21 = v63.__r_.__value_.__r.__words[0];
LABEL_81:
    v22 = LOWORD(v21->__r_.__value_.__l.__data_);
    v23 = v21->__r_.__value_.__s.__data_[2];
    if (v22 != 24941 || v23 != 120)
    {
      goto LABEL_91;
    }
  }

LABEL_86:
  std::string::basic_string[abi:ne200100]<0>(__p, "firstValue");
  siri::intelligence::SetFunctionArgumentKey(this, 0, __p);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "secondValue");
  siri::intelligence::SetFunctionArgumentKey(this, 1, __p);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
LABEL_91:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_92;
  }

LABEL_94:
  v26 = v63.__r_.__value_.__l.__size_;
  if (v63.__r_.__value_.__l.__size_ != 9)
  {
    goto LABEL_113;
  }

  v25 = v63.__r_.__value_.__r.__words[0];
LABEL_96:
  v27 = v25->__r_.__value_.__r.__words[0];
  v28 = v25->__r_.__value_.__s.__data_[8];
  if (v27 != 0x6E496D6F646E6172 || v28 != 116)
  {
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_101;
    }

    goto LABEL_112;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "minValue");
  siri::intelligence::SetFunctionArgumentKey(this, 0, __p);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "maxValue");
  siri::intelligence::SetFunctionArgumentKey(this, 1, __p);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
  if ((*(&v63.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_112:
    v26 = v63.__r_.__value_.__l.__size_;
LABEL_113:
    if (v26 == 5)
    {
      v31 = v63.__r_.__value_.__r.__words[0];
      if (*v63.__r_.__value_.__l.__data_ == 1701867637 && *(v63.__r_.__value_.__r.__words[0] + 4) == 114)
      {
        goto LABEL_124;
      }

      if (v63.__r_.__value_.__l.__size_ == 5)
      {
LABEL_119:
        data = v31->__r_.__value_.__l.__data_;
        v34 = v31->__r_.__value_.__s.__data_[4];
        if (data != 1702326124 || v34 != 114)
        {
          goto LABEL_127;
        }

        goto LABEL_124;
      }
    }

LABEL_130:
    v37 = v63.__r_.__value_.__l.__size_;
    if (v63.__r_.__value_.__l.__size_ != 10)
    {
      goto LABEL_145;
    }

    v36 = v63.__r_.__value_.__r.__words[0];
LABEL_132:
    v38 = v36->__r_.__value_.__r.__words[0];
    v39 = LOWORD(v36->__r_.__value_.__r.__words[1]);
    if (v38 == 0x6957737472617473 && v39 == 26740)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "string");
      siri::intelligence::SetFunctionArgumentKey(this, 0, __p);
      if (v62 < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:ne200100]<0>(__p, "prefix");
      siri::intelligence::SetFunctionArgumentKey(this, 1, __p);
      if (v62 < 0)
      {
        operator delete(__p[0]);
      }

      v5 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
      if ((*(&v63.__r_.__value_.__s + 23) & 0x80) == 0)
      {
        goto LABEL_137;
      }
    }

    else if ((v5 & 0x80) == 0)
    {
      goto LABEL_137;
    }

    v37 = v63.__r_.__value_.__l.__size_;
LABEL_145:
    if (v37 != 8)
    {
      goto LABEL_174;
    }

    v13 = v63.__r_.__value_.__r.__words[0];
    goto LABEL_147;
  }

LABEL_101:
  if (v5 != 5)
  {
    goto LABEL_128;
  }

  if (LODWORD(v63.__r_.__value_.__l.__data_) != 1701867637 || v63.__r_.__value_.__s.__data_[4] != 114)
  {
    v31 = &v63;
    v5 = 5;
    goto LABEL_119;
  }

LABEL_124:
  std::string::basic_string[abi:ne200100]<0>(__p, "string");
  siri::intelligence::SetFunctionArgumentKey(this, 0, __p);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
LABEL_127:
  if ((v5 & 0x80) != 0)
  {
    goto LABEL_130;
  }

LABEL_128:
  if (v5 == 10)
  {
    v36 = &v63;
    goto LABEL_132;
  }

LABEL_137:
  if (v5 != 8)
  {
LABEL_149:
    if (v5 != 8)
    {
      goto LABEL_160;
    }

    v41 = &v63;
    goto LABEL_158;
  }

  v13 = &v63;
LABEL_147:
  if (v13->__r_.__value_.__r.__words[0] == 0x6874695773646E65)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "string");
    siri::intelligence::SetFunctionArgumentKey(this, 0, __p);
    if (v62 < 0)
    {
      operator delete(__p[0]);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "suffix");
    siri::intelligence::SetFunctionArgumentKey(this, 1, __p);
    if (v62 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
    if ((*(&v63.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_149;
    }
  }

  else if ((v5 & 0x80) == 0)
  {
    goto LABEL_149;
  }

  v37 = v63.__r_.__value_.__l.__size_;
  if (v63.__r_.__value_.__l.__size_ != 8)
  {
    goto LABEL_174;
  }

  v41 = v63.__r_.__value_.__r.__words[0];
LABEL_158:
  if (v41->__r_.__value_.__r.__words[0] != 0x736E6961746E6F63)
  {
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_173;
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "haystack");
  siri::intelligence::SetFunctionArgumentKey(this, 0, __p);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(__p, "needle");
  siri::intelligence::SetFunctionArgumentKey(this, 1, __p);
  if (v62 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = HIBYTE(v63.__r_.__value_.__r.__words[2]);
  if ((*(&v63.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_173:
    v37 = v63.__r_.__value_.__l.__size_;
LABEL_174:
    if (v37 == 6)
    {
      if (*v63.__r_.__value_.__l.__data_ == 1735288172 && *(v63.__r_.__value_.__r.__words[0] + 4) == 26740)
      {
        goto LABEL_205;
      }

      v37 = v63.__r_.__value_.__l.__size_;
    }

    if (v37 > 7)
    {
      if (v37 == 8)
      {
        v49 = v63.__r_.__value_.__r.__words[0];
LABEL_204:
        if (v49->__r_.__value_.__r.__words[0] != 0x7974706D656E6F6ELL)
        {
          goto LABEL_208;
        }

        goto LABEL_205;
      }

      if (v37 != 9)
      {
LABEL_209:
        operator delete(v63.__r_.__value_.__l.__data_);
        goto LABEL_210;
      }

      v46 = *(v63.__r_.__value_.__r.__words[0] + 8);
      v47 = *v63.__r_.__value_.__l.__data_ == 0x656E696665646E75;
      v48 = 100;
    }

    else if (v37 == 5)
    {
      v46 = *(v63.__r_.__value_.__r.__words[0] + 4);
      v47 = *v63.__r_.__value_.__l.__data_ == 1953525093;
      v48 = 121;
    }

    else
    {
      if (v37 != 7)
      {
        goto LABEL_209;
      }

      v46 = *(v63.__r_.__value_.__r.__words[0] + 3);
      v47 = *v63.__r_.__value_.__l.__data_ == 1768318308;
      v48 = 1684369001;
    }

    if (v47 && v46 == v48)
    {
      goto LABEL_205;
    }

    goto LABEL_209;
  }

LABEL_160:
  if (v5 <= 6)
  {
    if (v5 == 5)
    {
      v42 = v63.__r_.__value_.__s.__data_[4];
      v43 = LODWORD(v63.__r_.__value_.__l.__data_) == 1953525093;
      v44 = 121;
      goto LABEL_190;
    }

    if (v5 != 6)
    {
      goto LABEL_210;
    }

LABEL_167:
    v42 = WORD2(v63.__r_.__value_.__r.__words[0]);
    v43 = LODWORD(v63.__r_.__value_.__l.__data_) == 1735288172;
    v44 = 26740;
    goto LABEL_190;
  }

  if (v5 == 7)
  {
    v42 = *(v63.__r_.__value_.__r.__words + 3);
    v43 = LODWORD(v63.__r_.__value_.__l.__data_) == 1768318308;
    v44 = 1684369001;
    goto LABEL_190;
  }

  if (v5 == 8)
  {
    v49 = &v63;
    goto LABEL_204;
  }

  if (v5 != 9)
  {
    goto LABEL_210;
  }

  v42 = v63.__r_.__value_.__s.__data_[8];
  v43 = v63.__r_.__value_.__r.__words[0] == 0x656E696665646E75;
  v44 = 100;
LABEL_190:
  if (v43 && v42 == v44)
  {
LABEL_205:
    std::string::basic_string[abi:ne200100]<0>(__p, "variable");
    siri::intelligence::SetFunctionArgumentKey(this, 0, __p);
    if (v62 < 0)
    {
      operator delete(__p[0]);
    }

    LOBYTE(v5) = *(&v63.__r_.__value_.__s + 23);
LABEL_208:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_210;
    }

    goto LABEL_209;
  }

LABEL_210:
  if (*(this + 14) >= 1)
  {
    v52 = 0;
    do
    {
      v53 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 48, v52);
      siri::intelligence::UpdateFunctionToParameterDictionary(v53, v54);
      ++v52;
    }

    while (v52 < *(this + 14));
  }

  if (*(this + 20) >= 1)
  {
    v55 = 0;
    do
    {
      v56 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 72, v55);
      siri::intelligence::UpdateFunctionToParameterDictionary(v56, v57);
      ++v55;
    }

    while (v55 < *(this + 20));
  }

  if (*(this + 26) >= 1)
  {
    v58 = 0;
    do
    {
      v59 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(this + 96, v58);
      siri::intelligence::UpdateFunctionToParameterDictionary(v59, v60);
      ++v58;
    }

    while (v58 < *(this + 26));
  }
}

void sub_254CC1C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::UpdateFunctionInCondition(siri::intelligence *this, protobuf::Intelligence_Condition_ConditionEntry *a2)
{
  v3 = *(this + 4);
  if ((v3 & 0x10) != 0)
  {
    v4 = *(this + 13);
    if (!v4)
    {
      google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21242);
      v5 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: !value || left_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v16, &v5->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
      v4 = *(this + 13);
      v3 = *(this + 4) | 0x10;
    }

    *(this + 4) = v3;
    siri::intelligence::UpdateFunctionToParameterDictionary(v4, a2);
    v3 = *(this + 4);
  }

  if ((v3 & 0x20) != 0)
  {
    if (!*(this + 14))
    {
      google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21373);
      v6 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: !value || right_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v16, &v6->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
      v3 = *(this + 4);
    }

    *(this + 4) = v3 | 0x10;
    v7 = *(this + 13);
    if (!v7)
    {
      v7 = google::protobuf::Arena::CreateMaybeMessage<protobuf::Intelligence_KeyValueParameter>(0);
      *(this + 13) = v7;
    }

    siri::intelligence::UpdateFunctionToParameterDictionary(v7, a2);
    v3 = *(this + 4);
  }

  if ((v3 & 8) != 0)
  {
    v8 = *(this + 12);
    if (!v8)
    {
      google::protobuf::internal::LogMessage::LogMessage(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.h", 21511);
      v9 = google::protobuf::internal::LogMessage::operator<<(v17, "CHECK failed: !value || not_child_ != nullptr: ");
      google::protobuf::internal::LogFinisher::operator=(&v16, &v9->__r_.__value_.__l.__data_);
      google::protobuf::internal::LogMessage::~LogMessage(&v17[0].__r_.__value_.__l.__data_);
      v8 = *(this + 12);
      v3 = *(this + 4) | 8;
    }

    *(this + 4) = v3;
    siri::intelligence::UpdateFunctionInCondition(v8, a2);
  }

  if (*(this + 8) >= 1)
  {
    v10 = 0;
    do
    {
      v11 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(this + 24, v10);
      siri::intelligence::UpdateFunctionInCondition(v11, v12);
      ++v10;
    }

    while (v10 < *(this + 8));
  }

  if (*(this + 14) >= 1)
  {
    v13 = 0;
    do
    {
      v14 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Condition_ConditionEntry>::TypeHandler>(this + 48, v13);
      siri::intelligence::UpdateFunctionInCondition(v14, v15);
      ++v13;
    }

    while (v13 < *(this + 14));
  }
}

void sub_254CC1E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void siri::intelligence::SetFunctionArgumentKey(uint64_t a1, int a2, char *a3)
{
  if (*(a1 + 104) > a2)
  {
    v5 = google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_KeyValueParameter>::TypeHandler>(a1 + 96, a2);
    if (a3[23] >= 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = *a3;
    }

    protobuf::Intelligence_KeyValueParameter::set_key(v5, v6);
  }
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_InputGroup_Intent>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
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
      protobuf::Intelligence_InputGroup_Intent::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254CC1F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::Intelligence_NLParameters>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1538);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1539);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CC2060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void google::protobuf::internal::RepeatedPtrFieldBase::Clear<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Intent>::TypeHandler>(uint64_t a1)
{
  v1 = *(a1 + 8);
  if ((v1 & 0x80000000) != 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1613);
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
      protobuf::Intelligence_Intent::Clear(v4);
      --v1;
    }

    while (v1);
    *(a1 + 8) = 0;
  }
}

void sub_254CC2118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t google::protobuf::internal::RepeatedPtrFieldBase::Mutable<google::protobuf::RepeatedPtrField<protobuf::Intelligence_Event>::TypeHandler>(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1560);
    v4 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) >= (0): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v4->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  if (*(a1 + 8) <= a2)
  {
    google::protobuf::internal::LogMessage::LogMessage(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/3rdparty/protobuf/src/google/protobuf/repeated_field.h", 1561);
    v5 = google::protobuf::internal::LogMessage::operator<<(v8, "CHECK failed: (index) < (current_size_): ");
    google::protobuf::internal::LogFinisher::operator=(&v7, &v5->__r_.__value_.__l.__data_);
    google::protobuf::internal::LogMessage::~LogMessage(&v8[0].__r_.__value_.__l.__data_);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_254CC21F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<std::string,void (*)(protobuf::Intelligence *)>>,std::pair<std::string,void (*)(protobuf::Intelligence *)>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    v4 = **(a1 + 16);
    while (v4 != v3)
    {
      v5 = *(v4 - 9);
      v4 -= 4;
      if (v5 < 0)
      {
        operator delete(*v4);
      }
    }
  }

  return a1;
}

void std::vector<std::pair<std::string,void (*)(protobuf::Intelligence *)>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = *(v4 - 9);
        v4 -= 4;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<siri::intelligence::FunctionArgument>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

std::string *siri::intelligence::TestCase::TestCase(std::string *this, uint64_t a2, __int128 *a3, __int128 *a4)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a3, *(a3 + 1));
  }

  else
  {
    v7 = *a3;
    this->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    this[1].__r_.__value_.__r.__words[2] = *(a4 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v8;
  }

  *&this[2].__r_.__value_.__l.__data_ = 0u;
  *&this[4].__r_.__value_.__r.__words[1] = 0u;
  p_size = &this[4].__r_.__value_.__l.__size_;
  *&this[2].__r_.__value_.__r.__words[2] = 0u;
  *&this[3].__r_.__value_.__r.__words[1] = 0u;
  *&this[5].__r_.__value_.__l.__data_ = 0u;
  *&this[5].__r_.__value_.__r.__words[2] = 0u;
  if (a2)
  {
    std::string::operator=(this + 2, *(a2 + 48));
    std::string::operator=(this + 3, *(a2 + 56));
    v10 = *(a2 + 16);
    v11 = (v10 & 4) != 0 ? *(a2 + 64) : 1;
    this[4].__r_.__value_.__s.__data_[0] = v11 & 1;
    v12 = (v10 & 8) != 0 ? *(a2 + 68) : 1;
    HIDWORD(this[4].__r_.__value_.__r.__words[0]) = v12;
    if (*(a2 + 32) >= 1)
    {
      v13 = 0;
      do
      {
        v14 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<protobuf::FlowTest_Step>::TypeHandler>(a2 + 24, v13);
        v16 = this[4].__r_.__value_.__r.__words[2];
        data = this[5].__r_.__value_.__l.__data_;
        if (v16 >= data)
        {
          v18 = 0xCCCCCCCCCCCCCCCDLL * ((v16 - *p_size) >> 4);
          v19 = v18 + 1;
          if (v18 + 1 > 0x333333333333333)
          {
            std::vector<siri::intelligence::TestParseError>::__throw_length_error[abi:ne200100]();
          }

          v20 = 0xCCCCCCCCCCCCCCCDLL * (&data[-*p_size] >> 4);
          if (2 * v20 > v19)
          {
            v19 = 2 * v20;
          }

          if (v20 >= 0x199999999999999)
          {
            v21 = 0x333333333333333;
          }

          else
          {
            v21 = v19;
          }

          v36 = &this[4].__r_.__value_.__s.__data_[8];
          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<protobuf::FlowTest_Step>>(&this[4].__r_.__value_.__l.__size_, v21);
          }

          v32 = 0;
          v33 = 80 * v18;
          v34 = 80 * v18;
          v35 = 0;
          protobuf::FlowTest_Step::FlowTest_Step((80 * v18), v14);
          v17 = v34 + 80;
          v34 += 80;
          size = this[4].__r_.__value_.__l.__size_;
          v23 = this[4].__r_.__value_.__r.__words[2];
          v24 = v33 + size - v23;
          if (size != v23)
          {
            v25 = this[4].__r_.__value_.__l.__size_;
            v26 = (v33 + size - v23);
            do
            {
              protobuf::FlowTest_Step::FlowTest_Step(v26);
              if (v26 != v25)
              {
                protobuf::FlowTest_Step::InternalSwap(v26, v25);
              }

              v25 = (v25 + 80);
              v26 = (v26 + 80);
            }

            while (v25 != v23);
            v27 = size;
            v28 = size;
            do
            {
              v29 = *v28;
              v28 += 10;
              (*v29)(size);
              v27 += 80;
              size = v28;
            }

            while (v28 != v23);
            size = *p_size;
            v17 = v34;
          }

          this[4].__r_.__value_.__l.__size_ = v24;
          this[4].__r_.__value_.__r.__words[2] = v17;
          v30 = this[5].__r_.__value_.__l.__data_;
          this[5].__r_.__value_.__r.__words[0] = v35;
          v34 = size;
          v35 = v30;
          v32 = size;
          v33 = size;
          std::__split_buffer<protobuf::FlowTest_Step>::~__split_buffer(&v32);
        }

        else
        {
          protobuf::FlowTest_Step::FlowTest_Step(this[4].__r_.__value_.__r.__words[2], v14);
          v17 = v16 + 80;
          this[4].__r_.__value_.__r.__words[2] = v17;
        }

        this[4].__r_.__value_.__r.__words[2] = v17;
        ++v13;
      }

      while (v13 < *(a2 + 32));
    }
  }

  return this;
}

void sub_254CC2774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::TestCase::GetTemplateDir(siri::intelligence::TestCase *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

void siri::intelligence::TestCase::GetFlowId(siri::intelligence::TestCase *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 3), *(this + 4));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 24);
    a2->__r_.__value_.__r.__words[2] = *(this + 5);
  }
}

void siri::intelligence::TestCase::GetTestFilename(siri::intelligence::TestCase *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v3, ".flowtest");
  std::string::basic_string[abi:ne200100]<0>(&v2, ".flow");
  siri::intelligence::Configuration::GetPathFromFlowId(this + 24);
}

void sub_254CC2934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v26 - 17) < 0)
  {
    operator delete(*(v26 - 40));
  }

  _Unwind_Resume(exception_object);
}

void siri::intelligence::TestCase::GetName(siri::intelligence::TestCase *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 6), *(this + 7));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 3);
    a2->__r_.__value_.__r.__words[2] = *(this + 8);
  }
}

void siri::intelligence::TestCase::GetDescription(siri::intelligence::TestCase *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 9), *(this + 10));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 72);
    a2->__r_.__value_.__r.__words[2] = *(this + 11);
  }
}

uint64_t siri::intelligence::TestCase::GetSteps@<X0>(siri::intelligence::TestCase *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<protobuf::FlowTest_Step>::__init_with_size[abi:ne200100]<protobuf::FlowTest_Step*,protobuf::FlowTest_Step*>(a2, *(this + 13), *(this + 14), 0xCCCCCCCCCCCCCCCDLL * ((*(this + 14) - *(this + 13)) >> 4));
}

_BYTE *siri::intelligence::TestCase::GetSkipReason@<X0>(siri::intelligence::TestCase *this@<X0>, _BYTE *a2@<X8>)
{
  if (*(this + 96))
  {
    v2 = &str_2_1;
  }

  else
  {
    v2 = "test is disabled";
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

void siri::intelligence::TestCase::ToString(siri::intelligence::TestCase *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 47) >= 0)
  {
    v4 = *(this + 47);
  }

  else
  {
    v4 = *(this + 4);
  }

  v5 = &v11;
  std::string::basic_string[abi:ne200100](&v11, v4 + 2);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v11.__r_.__value_.__r.__words[0];
  }

  if (v4)
  {
    if (*(this + 47) >= 0)
    {
      v6 = this + 24;
    }

    else
    {
      v6 = *(this + 3);
    }

    memmove(v5, v6, v4);
  }

  strcpy(v5 + v4, ": ");
  if (*(this + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 6), *(this + 7));
  }

  else
  {
    __p = *(this + 2);
  }

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

  v9 = std::string::append(&v11, p_p, size);
  *a2 = *v9;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_254CC2B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<protobuf::FlowTest_Step>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 80);
    *(a1 + 16) = i - 80;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t YAML::Scanner::SimpleKey::SimpleKey(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v3;
  *(result + 16) = a3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

{
  v3 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v3;
  *(result + 16) = a3;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  return result;
}

void *YAML::Scanner::SimpleKey::Validate(void *this)
{
  v1 = this[3];
  if (v1)
  {
    *(v1 + 8) = 0;
  }

  v2 = this[4];
  if (v2)
  {
    *v2 = 0;
  }

  v3 = this[5];
  if (v3)
  {
    *v3 = 0;
  }

  return this;
}

void *YAML::Scanner::SimpleKey::Invalidate(void *this)
{
  v1 = this[3];
  if (v1)
  {
    *(v1 + 8) = 1;
  }

  v2 = this[4];
  if (v2)
  {
    *v2 = 1;
  }

  v3 = this[5];
  if (v3)
  {
    *v3 = 1;
  }

  return this;
}

BOOL YAML::Scanner::CanInsertPotentialSimpleKey(YAML::Scanner *this)
{
  if (*(this + 146) != 1)
  {
    return 0;
  }

  v1 = *(this + 24);
  return !v1 || *(*(*(this + 20) + 8 * ((v1 + *(this + 23) - 1) / 0x55uLL)) + 48 * ((v1 + *(this + 23) - 1) % 0x55uLL) + 16) != *(this + 39);
}

void YAML::Scanner::InsertPotentialSimpleKey(YAML::Scanner *this)
{
  if (*(this + 146) == 1)
  {
    v2 = *(this + 24);
    if (v2)
    {
      v3 = *(this + 39);
      if (*(*(*(this + 20) + 8 * ((v2 + *(this + 23) - 1) / 0x55uLL)) + 48 * ((v2 + *(this + 23) - 1) % 0x55uLL) + 16) == v3)
      {
        return;
      }
    }

    else
    {
      v3 = *(this + 39);
    }

    v4 = *(this + 1);
    v5 = *(this + 4);
    if (v3)
    {
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v8 = *(this + 4);
      v9 = YAML::Scanner::PushIndentTo(this);
      v7 = v9;
      if (v9)
      {
        *(v9 + 8) = 2;
        v6 = *(v9 + 16);
        *v6 = 2;
      }

      else
      {
        v6 = 0;
      }
    }

    v10 = *(this + 1);
    v11 = *(this + 4);
    *&v24 = 0xE00000000;
    *(&v24 + 1) = v10;
    v25 = v11;
    *__p = 0u;
    memset(v27, 0, sizeof(v27));
    v28 = 0;
    std::deque<YAML::Token>::push_back(this + 96, &v24);
    v29 = v27 + 1;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
    if (SBYTE7(v27[0]) < 0)
    {
      operator delete(__p[0]);
    }

    v12 = *(this + 10);
    v13 = *(this + 21);
    v14 = *(this + 20);
    if (v13 == v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = 85 * ((v13 - v14) >> 3) - 1;
    }

    v15 = *(this + 17) + *(this + 16);
    v17 = (*(*(this + 13) + 8 * ((v15 - 1) / 0x33uLL)) + 80 * ((v15 - 1) % 0x33uLL));
    *v17 = 2;
    v18 = *(this + 23);
    v19 = *(this + 24) + v18;
    if (v16 == v19)
    {
      if (v18 < 0x55)
      {
        v20 = *(this + 22);
        v21 = *(this + 19);
        if (v13 - v14 < (v20 - v21))
        {
          operator new();
        }

        if (v20 == v21)
        {
          v22 = 1;
        }

        else
        {
          v22 = (v20 - v21) >> 2;
        }

        std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Scanner::SimpleKey *>>(v22);
      }

      *(this + 23) = v18 - 85;
      *&v24 = *v14;
      *(this + 20) = v14 + 8;
      std::__split_buffer<YAML::Scanner::SimpleKey *>::emplace_back<YAML::Scanner::SimpleKey *&>(this + 19, &v24);
      v14 = *(this + 20);
      v19 = *(this + 24) + *(this + 23);
    }

    v23 = *&v14[8 * (v19 / 0x55)] + 48 * (v19 % 0x55);
    *v23 = v4;
    *(v23 + 8) = v5;
    *(v23 + 16) = v3;
    *(v23 + 24) = v7;
    *(v23 + 32) = v6;
    *(v23 + 40) = v17;
    ++*(this + 24);
  }
}

void sub_254CC3374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  operator delete(v15);
  if (v14)
  {
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void *YAML::Scanner::InvalidateSimpleKey(void *this)
{
  v1 = this[24];
  if (v1)
  {
    v2 = v1 - 1;
    v3 = (*(this[20] + 8 * ((this[23] + v2) / 0x55uLL)) + 48 * ((this[23] + v2) % 0x55uLL));
    if (v3[2] == this[39])
    {
      v4 = v3[3];
      if (v4)
      {
        *(v4 + 8) = 1;
      }

      v5 = v3[4];
      if (v5)
      {
        *v5 = 1;
      }

      v6 = v3[5];
      if (v6)
      {
        *v6 = 1;
      }

      this[24] = v2;
      return std::deque<YAML::Scanner::SimpleKey>::__maybe_remove_back_spare[abi:ne200100](this + 19, 1);
    }
  }

  return this;
}

uint64_t YAML::Scanner::VerifySimpleKey(YAML::Scanner *this)
{
  v1 = *(this + 24);
  if (!v1)
  {
    return 0;
  }

  v3 = v1 - 1;
  v4 = *(*(this + 20) + 8 * ((*(this + 23) + v3) / 0x55uLL)) + 48 * ((*(this + 23) + v3) % 0x55uLL);
  if (*(v4 + 16) != *(this + 39))
  {
    return 0;
  }

  v6 = *(v4 + 24);
  v5 = *(v4 + 32);
  v7 = *(v4 + 40);
  v8 = *v4;
  v9 = *(v4 + 4);
  *(this + 24) = v3;
  std::deque<YAML::Scanner::SimpleKey>::__maybe_remove_back_spare[abi:ne200100](this + 19, 1);
  if (*(this + 3) == v9 && *(this + 2) - v8 <= 1024)
  {
    if (v6)
    {
      *(v6 + 8) = 0;
    }

    if (v5)
    {
      *v5 = 0;
    }

    result = 1;
    if (v7)
    {
      v11 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    if (v6)
    {
      *(v6 + 8) = 1;
    }

    if (v5)
    {
      *v5 = 1;
    }

    result = 0;
    if (v7)
    {
      v11 = 1;
LABEL_19:
      *v7 = v11;
    }
  }

  return result;
}

uint64_t YAML::Scanner::PopAllSimpleKeys(uint64_t this)
{
  v1 = *(this + 192);
  if (v1)
  {
    v2 = this;
    do
    {
      *(v2 + 192) = v1 - 1;
      this = std::deque<YAML::Scanner::SimpleKey>::__maybe_remove_back_spare[abi:ne200100]((v2 + 152), 1);
      v1 = *(v2 + 192);
    }

    while (v1);
  }

  return this;
}

void YAML::Token::~Token(void **this)
{
  v2 = this + 6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }
}

__n128 std::deque<YAML::Token>::push_back(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 51 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<YAML::Token>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x33)) + 80 * (v8 % 0x33);
  v10 = *a2;
  *(v9 + 16) = *(a2 + 4);
  *v9 = v10;
  v11 = *(a2 + 24);
  *(v9 + 40) = *(a2 + 5);
  *(v9 + 24) = v11;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  result = a2[3];
  *(v9 + 48) = result;
  *(v9 + 64) = *(a2 + 8);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  *(v9 + 72) = *(a2 + 18);
  ++*(a1 + 40);
  return result;
}

void *std::deque<YAML::Token>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x33;
  v3 = v1 - 51;
  if (!v2)
  {
    v6 = a1[2];
    v7 = a1[3];
    v8 = v7 - *a1;
    if (v6 - a1[1] < v8)
    {
      if (v7 != v6)
      {
        operator new();
      }

      operator new();
    }

    if (v7 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8 >> 2;
    }

    v11 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Token *>>(a1, v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<YAML::Token *>::emplace_back<YAML::Token *&>(a1, &v10);
}

void sub_254CC3864(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<YAML::Token *>::emplace_back<YAML::Token *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Token *>>(result, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<YAML::Token *>::emplace_front<YAML::Token *>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Token *>>(result, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void *std::__split_buffer<YAML::Token *>::emplace_back<YAML::Token *>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Token *>>(result[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

const void **std::__split_buffer<YAML::Token *>::emplace_front<YAML::Token *&>(const void **result, void *a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 == *result)
  {
    v6 = result[2];
    v7 = result[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Token *>>(result[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      result = memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = v3[2];
    }

    v3[1] = v5;
    v3[2] = &v6[8 * v8];
  }

  else
  {
    v5 = result[1];
  }

  *(v5 - 1) = *a2;
  v3[1] = v3[1] - 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Token *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__split_buffer<YAML::Scanner::SimpleKey *>::emplace_back<YAML::Scanner::SimpleKey *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Scanner::SimpleKey *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Scanner::SimpleKey *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::deque<YAML::Scanner::SimpleKey>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 85 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x55)
  {
    a2 = 1;
  }

  if (v5 < 0xAA)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

void __cxx_global_array_dtor()
{
  v0 = &byte_280AF5197;
  v1 = -480;
  v2 = &byte_280AF5197;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

void siri::intelligence::Activity::GetId(siri::intelligence::Activity *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

void siri::intelligence::Activity::GetName(siri::intelligence::Activity *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 47) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 3), *(this + 4));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 24);
    a2->__r_.__value_.__r.__words[2] = *(this + 5);
  }
}

void siri::intelligence::Activity::GetInputGroup(siri::intelligence::Activity *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 6), *(this + 7));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 3);
    a2->__r_.__value_.__r.__words[2] = *(this + 8);
  }
}

void siri::intelligence::Activity::SetResponseIds(std::vector<std::string> *a1, std::string **a2)
{
  v2 = a1 + 3;
  if (v2 != a2)
  {
    std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(v2, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  }
}

uint64_t siri::intelligence::Activity::GetResponseIds@<X0>(siri::intelligence::Activity *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a2, *(this + 9), *(this + 10), 0xAAAAAAAAAAAAAAABLL * ((*(this + 10) - *(this + 9)) >> 3));
}

void YAML::Scanner::ScanDirective(YAML::Scanner *this)
{
  memset(v26, 0, 24);
  YAML::Scanner::PopAllIndents(this);
  while (1)
  {
    v2 = *(this + 24);
    if (!v2)
    {
      break;
    }

    *(this + 24) = v2 - 1;
    std::deque<YAML::Scanner::SimpleKey>::__maybe_remove_back_spare[abi:ne200100](this + 19, 1);
  }

  *(this + 73) = 0;
  v3 = *(this + 1);
  v4 = *(this + 4);
  *&v21 = 0;
  *(&v21 + 1) = v3;
  v22 = v4;
  *__p = 0u;
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  YAML::Stream::get(this);
  while (YAML::Stream::operator BOOL(this))
  {
    {
      if (v6)
      {
        v7 = YAML::Exp::Blank(v6);
        v8 = YAML::Exp::Break(v7);
        YAML::operator|(v7, v8, &YAML::Exp::BlankOrBreak(void)::e);
        __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::BlankOrBreak(void)::e, &dword_254C81000);
      }
    }

    v19.__r_.__value_.__r.__words[0] = 0;
    v19.__r_.__value_.__l.__size_ = this;
    if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&YAML::Exp::BlankOrBreak(void)::e, &v19) & 0x80000000) == 0)
    {
      break;
    }

    v5 = YAML::Stream::get(this);
    std::string::push_back(__p, v5);
  }

  while (1)
  {
    while (1)
    {
      {
        if (v16)
        {
          v17 = YAML::Exp::Space(v16);
          v18 = YAML::Exp::Tab(v17);
          YAML::operator|(v17, v18, &YAML::Exp::Blank(void)::e);
          __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Blank(void)::e, &dword_254C81000);
        }
      }

      v19.__r_.__value_.__r.__words[0] = 0;
      v19.__r_.__value_.__l.__size_ = this;
      if (!*(this + 8) && !YAML::Stream::_ReadAheadTo(this, 0))
      {
        break;
      }

      if ((YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&YAML::Exp::Blank(void)::e, &v19) & 0x80000000) != 0)
      {
        break;
      }

      YAML::Stream::get(this);
    }

    v9 = YAML::Stream::operator BOOL(this);
    if (!v9)
    {
      break;
    }

    v10 = YAML::Exp::Break(v9);
    v19.__r_.__value_.__r.__words[0] = 0;
    v19.__r_.__value_.__l.__size_ = this;
    if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v10, &v19) & 0x80000000) == 0)
    {
      break;
    }

    {
      YAML::Exp::Comment(void)::e = 1;
      word_27F7539BC = 35;
      qword_27F7539C8 = 0;
      unk_27F7539D0 = 0;
      qword_27F7539C0 = 0;
      __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Comment(void)::e, &dword_254C81000);
    }

    LODWORD(v19.__r_.__value_.__l.__data_) = YAML::Exp::Comment(void)::e;
    WORD2(v19.__r_.__value_.__r.__words[0]) = word_27F7539BC;
    v20 = 0;
    *&v19.__r_.__value_.__r.__words[1] = 0uLL;
    std::vector<YAML::RegEx>::__init_with_size[abi:ne200100]<YAML::RegEx*,YAML::RegEx*>(&v19.__r_.__value_.__l.__size_, qword_27F7539C0, qword_27F7539C8, (qword_27F7539C8 - qword_27F7539C0) >> 5);
    p_size = 0;
    v28 = this;
    if (*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0))
    {
      v11 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&v19, &p_size);
      p_size = &v19.__r_.__value_.__l.__size_;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&p_size);
      if ((v11 & 0x80000000) == 0)
      {
        break;
      }
    }

    else
    {
      p_size = &v19.__r_.__value_.__l.__size_;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&p_size);
    }

    memset(&v19, 0, sizeof(v19));
    while (YAML::Stream::operator BOOL(this))
    {
      {
        if (v13)
        {
          v14 = YAML::Exp::Blank(v13);
          v15 = YAML::Exp::Break(v14);
          YAML::operator|(v14, v15, &YAML::Exp::BlankOrBreak(void)::e);
          __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::BlankOrBreak(void)::e, &dword_254C81000);
        }
      }

      p_size = 0;
      v28 = this;
      if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&YAML::Exp::BlankOrBreak(void)::e, &p_size) & 0x80000000) == 0)
      {
        break;
      }

      v12 = YAML::Stream::get(this);
      std::string::push_back(&v19, v12);
    }

    std::vector<std::string>::push_back[abi:ne200100](v24 + 8, &v19);
    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }
  }

  std::deque<YAML::Token>::push_back(this + 96, &v21);
  v19.__r_.__value_.__r.__words[0] = v24 + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v19);
  if (SBYTE7(v24[0]) < 0)
  {
    operator delete(__p[0]);
  }

  *&v21 = v26;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v21);
}

void sub_254CC4464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  YAML::Token::~Token(&a17);
  a17 = &a27;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

void *YAML::Exp::BlankOrBreak(YAML::Exp *this)
{
  {
    if (v2)
    {
      v3 = YAML::Exp::Blank(v2);
      v4 = YAML::Exp::Break(v3);
      YAML::operator|(v3, v4, &YAML::Exp::BlankOrBreak(void)::e);
      __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::BlankOrBreak(void)::e, &dword_254C81000);
    }
  }

  return &YAML::Exp::BlankOrBreak(void)::e;
}

void *YAML::Exp::Blank(YAML::Exp *this)
{
  {
    if (v2)
    {
      v3 = YAML::Exp::Space(v2);
      v4 = YAML::Exp::Tab(v3);
      YAML::operator|(v3, v4, &YAML::Exp::Blank(void)::e);
      __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Blank(void)::e, &dword_254C81000);
    }
  }

  return &YAML::Exp::Blank(void)::e;
}

void *YAML::Exp::Break(YAML::Exp *this)
{
  {
    v6 = 1;
    v7 = 10;
    memset(v8, 0, sizeof(v8));
    std::string::basic_string[abi:ne200100]<0>(__p, "\r\n");
    YAML::RegEx::RegEx(&v4, __p, 6);
    YAML::operator|(&v6, &v4, &YAML::Exp::Break(void)::e);
    v9 = &v5;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v9);
    if (v3 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = v8;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v4);
    __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Break(void)::e, &dword_254C81000);
  }

  return &YAML::Exp::Break(void)::e;
}

void sub_254CC4780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  *(v16 - 40) = v15 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v16 - 40));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

uint64_t YAML::Exp::Comment@<X0>(uint64_t a1@<X8>)
{
  v3 = a1;
  {
    v3 = a1;
    if (v9)
    {
      YAML::Exp::Comment(void)::e = 1;
      word_27F7539BC = 35;
      qword_27F7539C8 = 0;
      unk_27F7539D0 = 0;
      qword_27F7539C0 = 0;
      __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Comment(void)::e, &dword_254C81000);
      v3 = a1;
    }
  }

  *v3 = YAML::Exp::Comment(void)::e;
  *(v3 + 4) = word_27F7539BC;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *(v3 + 8) = 0;
  v4 = v3 + 8;
  v5 = qword_27F7539C0;
  v6 = qword_27F7539C8;
  v7 = (qword_27F7539C8 - qword_27F7539C0) >> 5;

  return std::vector<YAML::RegEx>::__init_with_size[abi:ne200100]<YAML::RegEx*,YAML::RegEx*>(v4, v5, v6, v7);
}

void YAML::Scanner::ScanDocStart(YAML::Scanner *this)
{
  YAML::Scanner::PopAllIndents(this);
  while (1)
  {
    v2 = *(this + 24);
    if (!v2)
    {
      break;
    }

    *(this + 24) = v2 - 1;
    std::deque<YAML::Scanner::SimpleKey>::__maybe_remove_back_spare[abi:ne200100](this + 19, 1);
  }

  *(this + 73) = 0;
  v3 = *(this + 1);
  v4 = 3;
  v5 = *(this + 4);
  do
  {
    YAML::Stream::get(this);
    --v4;
  }

  while (v4);
  *&v6 = 0x100000000;
  *(&v6 + 1) = v3;
  v7 = v5;
  *__p = 0u;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  std::deque<YAML::Token>::push_back(this + 96, &v6);
  v11 = v9 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
  if (SBYTE7(v9[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_254CC49C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  YAML::Token::~Token(va);
  _Unwind_Resume(a1);
}

void YAML::Scanner::ScanDocEnd(YAML::Scanner *this)
{
  YAML::Scanner::PopAllIndents(this);
  while (1)
  {
    v2 = *(this + 24);
    if (!v2)
    {
      break;
    }

    *(this + 24) = v2 - 1;
    std::deque<YAML::Scanner::SimpleKey>::__maybe_remove_back_spare[abi:ne200100](this + 19, 1);
  }

  *(this + 73) = 0;
  v3 = *(this + 1);
  v4 = 3;
  v5 = *(this + 4);
  do
  {
    YAML::Stream::get(this);
    --v4;
  }

  while (v4);
  *&v6 = 0x200000000;
  *(&v6 + 1) = v3;
  v7 = v5;
  *__p = 0u;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  std::deque<YAML::Token>::push_back(this + 96, &v6);
  v11 = v9 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
  if (SBYTE7(v9[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_254CC4AA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  YAML::Token::~Token(va);
  _Unwind_Resume(a1);
}

void YAML::Scanner::ScanFlowStart(YAML::Scanner *this)
{
  YAML::Scanner::InsertPotentialSimpleKey(this);
  *(this + 73) = 1;
  v2 = *(this + 1);
  v3 = *(this + 4);
  v10 = YAML::Stream::get(this) == 91;
  std::deque<YAML::Scanner::FLOW_MARKER>::push_back(this + 34, &v10);
  if (v10)
  {
    v4 = 8;
  }

  else
  {
    v4 = 9;
  }

  LODWORD(v5) = 0;
  DWORD1(v5) = v4;
  *(&v5 + 1) = v2;
  v6 = v3;
  *__p = 0u;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  std::deque<YAML::Token>::push_back(this + 96, &v5);
  v11 = v8 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v11);
  if (SBYTE7(v8[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void YAML::Scanner::ScanFlowEnd(YAML::Scanner *this)
{
  v2 = *(this + 39);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v17 = *(this + 4);
    v25 = *(this + 1);
    v26 = v17;
    std::string::basic_string[abi:ne200100]<0>(&v19, "illegal flow end");
    YAML::Exception::Exception(exception, &v25, &v19);
    *exception = &unk_28671C278;
  }

  v3 = *(*(*(this + 35) + (((v2 + *(this + 38) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v2 + *(this + 38) - 1) & 0x3FF));
  if (!v3)
  {
    if (YAML::Scanner::VerifySimpleKey(this))
    {
      v4 = *(this + 1);
      v5 = *(this + 4);
      *&v19 = 0xF00000000;
      *(&v19 + 1) = v4;
      v20 = v5;
      *__p = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0;
      std::deque<YAML::Token>::push_back(this + 96, &v19);
      v25 = &v22 + 1;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v25);
      if (SBYTE7(v22) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_9;
    }

    v6 = *(this + 39) + *(this + 38) - 1;
    v3 = *(*(*(this + 35) + ((v6 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v6 & 0x3FF));
  }

  if (v3 == 1)
  {
    YAML::Scanner::InvalidateSimpleKey(this);
  }

LABEL_9:
  *(this + 73) = 256;
  v7 = *(this + 4);
  v25 = *(this + 1);
  v26 = v7;
  v8 = YAML::Stream::get(this);
  v9 = *(this + 39) - 1;
  v10 = v9 + *(this + 38);
  v11 = *(this + 35);
  if (*(*(v11 + ((v10 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v10 & 0x3FF)) != (v8 == 93))
  {
    v18 = __cxa_allocate_exception(0x38uLL);
    std::string::basic_string[abi:ne200100]<0>(&v19, "illegal flow end");
    YAML::Exception::Exception(v18, &v25, &v19);
    *v18 = &unk_28671C278;
  }

  v12 = v8;
  v13 = *(this + 36);
  *(this + 39) = v9;
  if (v13 == v11)
  {
    v14 = 0;
  }

  else
  {
    v14 = ((v13 - v11) << 7) - 1;
  }

  if (v14 - v10 >= 0x800)
  {
    operator delete(*(v13 - 8));
    *(this + 36) -= 8;
  }

  if (v12 == 93)
  {
    v15 = 10;
  }

  else
  {
    v15 = 11;
  }

  LODWORD(v19) = 0;
  DWORD1(v19) = v15;
  *(&v19 + 1) = v25;
  v20 = v26;
  *__p = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0;
  std::deque<YAML::Token>::push_back(this + 96, &v19);
  v27 = &v22 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v27);
  if (SBYTE7(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void YAML::Scanner::ScanFlowEntry(YAML::Scanner *this)
{
  v2 = *(this + 39);
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = *(*(*(this + 35) + (((v2 + *(this + 38) - 1) >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * ((v2 + *(this + 38) - 1) & 0x3FF));
  if (!v3)
  {
    if (YAML::Scanner::VerifySimpleKey(this))
    {
      v4 = *(this + 1);
      v5 = *(this + 4);
      *&v9 = 0xF00000000;
      *(&v9 + 1) = v4;
      v10 = v5;
      *__p = 0u;
      v12 = 0u;
      v13 = 0u;
      v14 = 0;
      std::deque<YAML::Token>::push_back(this + 96, &v9);
      v15 = &v12 + 1;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
      if (SBYTE7(v12) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_9;
    }

    v6 = *(this + 39) + *(this + 38) - 1;
    v3 = *(*(*(this + 35) + ((v6 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v6 & 0x3FF));
  }

  if (v3 == 1)
  {
    YAML::Scanner::InvalidateSimpleKey(this);
  }

LABEL_9:
  *(this + 73) = 1;
  v7 = *(this + 1);
  v8 = *(this + 4);
  YAML::Stream::get(this);
  *&v9 = 0xD00000000;
  *(&v9 + 1) = v7;
  v10 = v8;
  *__p = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0;
  std::deque<YAML::Token>::push_back(this + 96, &v9);
  v15 = &v12 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (SBYTE7(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_254CC5038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  YAML::Token::~Token(va);
  _Unwind_Resume(a1);
}

void YAML::Scanner::ScanBlockEntry(YAML::Scanner *this)
{
  if (*(this + 39))
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v6 = *(this + 4);
    v14 = *(this + 1);
    v15 = v6;
    std::string::basic_string[abi:ne200100]<0>(&v9, "illegal block entry");
    YAML::Exception::Exception(exception, &v14, &v9);
    *exception = &unk_28671C278;
  }

  if ((*(this + 146) & 1) == 0)
  {
    v7 = __cxa_allocate_exception(0x38uLL);
    v8 = *(this + 4);
    v14 = *(this + 1);
    v15 = v8;
    std::string::basic_string[abi:ne200100]<0>(&v9, "illegal block entry");
    YAML::Exception::Exception(v7, &v14, &v9);
    *v7 = &unk_28671C278;
  }

  v2 = *(this + 4);
  YAML::Scanner::PushIndentTo(this);
  *(this + 73) = 1;
  v3 = *(this + 1);
  v4 = *(this + 4);
  YAML::Stream::get(this);
  *&v9 = 0x700000000;
  *(&v9 + 1) = v3;
  v10 = v4;
  *__p = 0u;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  std::deque<YAML::Token>::push_back(this + 96, &v9);
  v14 = v12 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  if (SBYTE7(v12[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_254CC5218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void YAML::Scanner::ScanKey(YAML::Scanner *this)
{
  if (*(this + 39))
  {
    v2 = 0;
  }

  else
  {
    if ((*(this + 146) & 1) == 0)
    {
      exception = __cxa_allocate_exception(0x38uLL);
      v7 = this;
      v8 = exception;
      v9 = *(v7 + 1);
      LODWORD(v7) = *(v7 + 4);
      v15 = v9;
      v16 = v7;
      std::string::basic_string[abi:ne200100]<0>(&v10, "illegal map key");
      YAML::Exception::Exception(v8, &v15, &v10);
      *v8 = &unk_28671C278;
    }

    v3 = *(this + 4);
    YAML::Scanner::PushIndentTo(this);
    v2 = *(this + 39) == 0;
  }

  *(this + 146) = v2;
  v4 = *(this + 1);
  v5 = *(this + 4);
  YAML::Stream::get(this);
  *&v10 = 0xE00000000;
  *(&v10 + 1) = v4;
  v11 = v5;
  *__p = 0u;
  memset(v13, 0, sizeof(v13));
  v14 = 0;
  std::deque<YAML::Token>::push_back(this + 96, &v10);
  v15 = v13 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v15);
  if (SBYTE7(v13[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_254CC53C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void YAML::Scanner::ScanValue(YAML::Scanner *this)
{
  v2 = YAML::Scanner::VerifySimpleKey(this);
  *(this + 147) = 0;
  if (v2)
  {
    *(this + 146) = 0;
  }

  else
  {
    if (*(this + 39))
    {
      v3 = 0;
    }

    else
    {
      if ((*(this + 146) & 1) == 0)
      {
        exception = __cxa_allocate_exception(0x38uLL);
        v8 = this;
        v9 = exception;
        v10 = *(v8 + 1);
        LODWORD(v8) = *(v8 + 4);
        v16 = v10;
        v17 = v8;
        std::string::basic_string[abi:ne200100]<0>(&v11, "illegal map value");
        YAML::Exception::Exception(v9, &v16, &v11);
        *v9 = &unk_28671C278;
      }

      v4 = *(this + 4);
      YAML::Scanner::PushIndentTo(this);
      v3 = *(this + 39) == 0;
    }

    *(this + 146) = v3;
  }

  v5 = *(this + 1);
  v6 = *(this + 4);
  YAML::Stream::get(this);
  *&v11 = 0xF00000000;
  *(&v11 + 1) = v5;
  v12 = v6;
  *__p = 0u;
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  std::deque<YAML::Token>::push_back(this + 96, &v11);
  v16 = v14 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v16);
  if (SBYTE7(v14[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_254CC5574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v15 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v15)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v14);
  goto LABEL_6;
}

void YAML::Scanner::ScanAnchorOrAlias(void **this)
{
  memset(&__str, 0, sizeof(__str));
  YAML::Scanner::InsertPotentialSimpleKey(this);
  *(this + 73) = 0;
  v2 = this[1];
  v3 = *(this + 4);
  v4 = YAML::Stream::get(this);
  while (YAML::Stream::operator BOOL(this))
  {
    if ((atomic_load_explicit(&_MergedGlobals_7, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_7))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "[]{},");
      v6 = YAML::RegEx::RegEx(&v26, __p, 3);
      v7 = YAML::Exp::BlankOrBreak(v6);
      YAML::operator|(&v26, v7, &v18);
      YAML::operator!(&v18, &unk_280AF4280);
      v29[0] = &v18 + 1;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](v29);
      v29[0] = &v27;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](v29);
      if (v25 < 0)
      {
        operator delete(__p[0]);
      }

      __cxa_atexit(YAML::RegEx::~RegEx, &unk_280AF4280, &dword_254C81000);
      __cxa_guard_release(&_MergedGlobals_7);
    }

    *&v18 = 0;
    *(&v18 + 1) = this;
    if (!this[8] && !YAML::Stream::_ReadAheadTo(this, 0))
    {
      break;
    }

    if ((YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&unk_280AF4280, &v18) & 0x80000000) != 0)
    {
      break;
    }

    v5 = YAML::Stream::get(this);
    std::string::push_back(&__str, v5);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    exception = __cxa_allocate_exception(0x38uLL);
    v11 = *(this + 4);
    v26 = this[1];
    v27 = v11;
    if (v4 == 42)
    {
      v12 = "alias not found after *";
    }

    else
    {
      v12 = "anchor not found after &";
    }

    std::string::basic_string[abi:ne200100]<0>(&v18, v12);
    YAML::Exception::Exception(exception, &v26, &v18);
    *exception = &unk_28671C278;
  }

  if (YAML::Stream::operator BOOL(this))
  {
    if ((atomic_load_explicit(&qword_280AF4250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4250))
    {
      v16 = YAML::RegEx::RegEx(&v18, &v26, 3);
      v17 = YAML::Exp::BlankOrBreak(v16);
      YAML::operator|(&v18, v17, &unk_280AF42A0);
      __p[0] = &v18 + 8;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](__p);
      if (v28 < 0)
      {
        operator delete(v26);
      }

      __cxa_atexit(YAML::RegEx::~RegEx, &unk_280AF42A0, &dword_254C81000);
      __cxa_guard_release(&qword_280AF4250);
    }

    *&v18 = 0;
    *(&v18 + 1) = this;
    if (!this[8] && !YAML::Stream::_ReadAheadTo(this, 0) || (YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&unk_280AF42A0, &v18) & 0x80000000) != 0)
    {
      v13 = __cxa_allocate_exception(0x38uLL);
      v14 = *(this + 4);
      v26 = this[1];
      v27 = v14;
      if (v4 == 42)
      {
        v15 = "illegal character found while scanning alias";
      }

      else
      {
        v15 = "illegal character found while scanning anchor";
      }

      std::string::basic_string[abi:ne200100]<0>(&v18, v15);
      YAML::Exception::Exception(v13, &v26, &v18);
      *v13 = &unk_28671C278;
    }
  }

  if (v4 == 42)
  {
    v9 = 17;
  }

  else
  {
    v9 = 16;
  }

  LODWORD(v18) = 0;
  DWORD1(v18) = v9;
  *(&v18 + 1) = v2;
  v19 = v3;
  *v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  std::string::operator=(v20, &__str);
  std::deque<YAML::Token>::push_back((this + 12), &v18);
  v26 = v21 + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v26);
  if (SBYTE7(v21[0]) < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_254CC59EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_280AF4250);
  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(a1);
}

void YAML::Scanner::ScanTag(YAML::Scanner *this)
{
  YAML::Scanner::InsertPotentialSimpleKey(this);
  *(this + 73) = 0;
  v2 = *(this + 1);
  v3 = *(this + 4);
  *&v9 = 0x1200000000;
  *(&v9 + 1) = v2;
  v10 = v3;
  *__p = 0u;
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  YAML::Stream::get(this);
  if (YAML::Stream::operator BOOL(this) && *(this + 8) && *(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL)) == 60)
  {
    YAML::ScanVerbatimTag(this, &__str);
    std::string::operator=(__p, &__str);
    v13 = 0;
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    goto LABEL_25;
  }

  v7 = 0;
  YAML::ScanTagHandle(this, &v7, &__str);
  std::string::operator=(__p, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v4 = BYTE7(v12[0]);
  if ((v7 & 1) == 0)
  {
    if (SBYTE7(v12[0]) < 0)
    {
      v4 = __p[1];
    }

    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = 4;
    }

    goto LABEL_24;
  }

  if (SBYTE7(v12[0]) < 0)
  {
    v4 = __p[1];
  }

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  v13 = v5;
  if (*(this + 8) && *(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL)) == 33)
  {
    YAML::Stream::get(this);
    YAML::ScanTagSuffix(this, &__str);
    std::vector<std::string>::push_back[abi:ne200100](v12 + 8, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v6 = 3;
LABEL_24:
    v13 = v6;
  }

LABEL_25:
  std::deque<YAML::Token>::push_back(this + 96, &v9);
  __str.__r_.__value_.__r.__words[0] = v12 + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__str);
  if (SBYTE7(v12[0]) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_254CC5CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  YAML::Token::~Token(&a16);
  _Unwind_Resume(a1);
}

void YAML::Scanner::ScanPlainScalar(YAML::Scanner *this)
{
  memset(&__str, 0, sizeof(__str));
  v22 = 0;
  v21 = 0;
  v27 = 0;
  if (*(this + 39))
  {
    v2 = &unk_280AF42C0;
    if ((atomic_load_explicit(&qword_280AF4258, memory_order_acquire) & 1) == 0)
    {
      v13 = &qword_280AF4258;
      v3 = __cxa_guard_acquire(&qword_280AF4258);
      if (v3)
      {
        v4 = YAML::Exp::EndScalarInFlow(v3);
        v5 = YAML::Exp::BlankOrBreak(v4);
        YAML::Exp::Comment(&v29);
        YAML::operator+(v5, &v29, &v14);
        YAML::operator|(v4, &v14, &unk_280AF42C0);
        p_size = &v14.__r_.__value_.__l.__size_;
        std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&p_size);
        p_size = v30;
        std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&p_size);
        v2 = &unk_280AF42C0;
LABEL_17:
        __cxa_atexit(YAML::RegEx::~RegEx, v2, &dword_254C81000);
        __cxa_guard_release(v13);
      }
    }
  }

  else
  {
    v2 = &unk_280AF42E0;
    if ((atomic_load_explicit(&qword_280AF4260, memory_order_acquire) & 1) == 0)
    {
      v13 = &qword_280AF4260;
      v10 = __cxa_guard_acquire(&qword_280AF4260);
      if (v10)
      {
        v11 = YAML::Exp::EndScalar(v10);
        v12 = YAML::Exp::BlankOrBreak(v11);
        YAML::Exp::Comment(&v29);
        YAML::operator+(v12, &v29, &v14);
        YAML::operator|(v11, &v14, &unk_280AF42E0);
        p_size = &v14.__r_.__value_.__l.__size_;
        std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&p_size);
        p_size = v30;
        std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&p_size);
        v2 = &unk_280AF42E0;
        goto LABEL_17;
      }
    }
  }

  v6 = 0;
  v18 = v2;
  v19 = 0;
  if (!*(this + 39))
  {
    v7 = *(this + 30);
    if (v7)
    {
      v6 = **(*(*(this + 26) + (((v7 + *(this + 29) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v7 + *(this + 29) - 1) & 0x1FF)) + 1;
    }

    else
    {
      v6 = 1;
    }
  }

  v20 = v6;
  v23 = 2;
  HIBYTE(v21) = 1;
  v24 = 1;
  v25 = 0x1FFFFFFFFLL;
  v26 = 2;
  YAML::Scanner::InsertPotentialSimpleKey(this);
  v8 = *(this + 1);
  v9 = *(this + 4);
  YAML::ScanScalar(this, &v18, &v14);
  __str = v14;
  *(this + 146) = v27;
  *(this + 147) = 0;
  v14.__r_.__value_.__r.__words[0] = 0x1300000000;
  v14.__r_.__value_.__l.__size_ = v8;
  LODWORD(v14.__r_.__value_.__r.__words[2]) = v9;
  *__p = 0u;
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  std::string::operator=(__p, &__str);
  std::deque<YAML::Token>::push_back(this + 96, &v14);
  v29 = v16 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v29);
  if (SBYTE7(v16[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_254CC5FF4(_Unwind_Exception *a1)
{
  *(v2 - 56) = v1 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v2 - 56));
  *(v2 - 56) = v2 - 80;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v2 - 56));
  __cxa_guard_abort(&qword_280AF4260);
  _Unwind_Resume(a1);
}

void YAML::Scanner::ScanQuotedScalar(YAML::Scanner *this)
{
  memset(&__str, 0, sizeof(__str));
  if (*(this + 8))
  {
    v2 = *(*(*(this + 4) + ((*(this + 7) >> 9) & 0x7FFFFFFFFFFFF8)) + (*(this + 7) & 0xFFFLL));
  }

  else
  {
    v2 = 4;
  }

  v16 = 0;
  v17 = 0;
  v20 = 0;
  v19 = 0;
  memset(v18, 0, 7);
  v21[0] = 0;
  *(v21 + 5) = 0;
  if (v2 == 39)
  {
    LODWORD(v6.__r_.__value_.__l.__data_) = 1;
    WORD2(v6.__r_.__value_.__r.__words[0]) = 39;
    __p[0] = 0;
    *&v6.__r_.__value_.__r.__words[1] = 0uLL;
    if ((atomic_load_explicit(&qword_280AF4268, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4268))
    {
      std::string::basic_string[abi:ne200100]<0>(v23, "''");
      YAML::RegEx::RegEx(dword_280AF4300, v23, 6);
      if (v24 < 0)
      {
        operator delete(v23[0]);
      }

      __cxa_atexit(YAML::RegEx::~RegEx, dword_280AF4300, &dword_254C81000);
      __cxa_guard_release(&qword_280AF4268);
    }

    YAML::operator!(dword_280AF4300, &p_size);
    YAML::operator&(&v6, &p_size, &v12);
    v23[0] = &v11;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](v23);
    p_size = &v6.__r_.__value_.__l.__size_;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&p_size);
    v3 = 39;
  }

  else
  {
    v12 = 1;
    v13 = v2;
    v14 = 0;
    v3 = 92;
    memset(v15, 0, sizeof(v15));
  }

  v16 = &v12;
  v17 = 1;
  BYTE2(v18[1]) = v3;
  v18[0] = 0;
  v19 = 2;
  BYTE1(v18[1]) = 1;
  v20 = 0;
  v21[0] = 0x200000000;
  YAML::Scanner::InsertPotentialSimpleKey(this);
  v4 = *(this + 1);
  v5 = *(this + 4);
  YAML::Stream::get(this);
  YAML::ScanScalar(this, &v16, &v6);
  __str = v6;
  *(this + 73) = 256;
  v6.__r_.__value_.__r.__words[0] = 0x1400000000;
  v6.__r_.__value_.__l.__size_ = v4;
  LODWORD(v6.__r_.__value_.__r.__words[2]) = v5;
  *__p = 0u;
  memset(v8, 0, sizeof(v8));
  v9 = 0;
  std::string::operator=(__p, &__str);
  std::deque<YAML::Token>::push_back(this + 96, &v6);
  p_size = v8 + 1;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&p_size);
  if (SBYTE7(v8[0]) < 0)
  {
    operator delete(__p[0]);
  }

  v6.__r_.__value_.__r.__words[0] = v15;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v6);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_254CC6360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  if (*(v11 - 49) < 0)
  {
    operator delete(*(v11 - 72));
  }

  __cxa_guard_abort(&qword_280AF4268);
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void YAML::Scanner::ScanBlockScalar(YAML::Scanner *this)
{
  memset(&__p, 0, sizeof(__p));
  v36 = 0;
  v37 = 0;
  v42 = 0;
  v40 = 0;
  v44 = 0;
  v45 = 0;
  v38 = 1;
  v39 = 1;
  v31 = *(this + 1);
  v30 = *(this + 4);
  v41 = YAML::Stream::get(this) == 62;
  v43 = 0;
  if ((atomic_load_explicit(&qword_280AF4270, memory_order_acquire) & 1) == 0)
  {
    v20 = __cxa_guard_acquire(&qword_280AF4270);
    if (v20)
    {
      YAML::Exp::ChompIndicator(v20);
      v22 = YAML::Exp::Digit(v21);
      v23 = YAML::operator+(dword_280AF4340, v22, &v49);
      v24 = YAML::Exp::Digit(v23);
      YAML::Exp::ChompIndicator(v24);
      YAML::operator+(v24, dword_280AF4340, &v47);
      v25 = YAML::operator|(&v49, &v47, &v51);
      YAML::Exp::ChompIndicator(v25);
      v26 = YAML::operator|(&v51, dword_280AF4340, &v32);
      v27 = YAML::Exp::Digit(v26);
      YAML::operator|(&v32, v27, &unk_280AF4320);
      v52[0] = &v32.__r_.__value_.__l.__size_;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](v52);
      v52[0] = &v51.__r_.__value_.__l.__size_;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](v52);
      v52[0] = &v48;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](v52);
      v47 = &v50;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v47);
      __cxa_atexit(YAML::RegEx::~RegEx, &unk_280AF4320, &dword_254C81000);
      __cxa_guard_release(&qword_280AF4270);
    }
  }

  v32.__r_.__value_.__r.__words[0] = 0;
  v32.__r_.__value_.__l.__size_ = this;
  if (*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0))
  {
    v2 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&unk_280AF4320, &v32);
    if (v2 >= 1)
    {
      while (1)
      {
        v3 = YAML::Stream::get(this);
        v4 = v3;
        if (v3 == 45)
        {
          v43 = -1;
          goto LABEL_24;
        }

        if (v3 == 43)
        {
          v43 = 1;
          goto LABEL_24;
        }

        {
          YAML::Exp::Digit(void)::e = 2;
          word_27F7538F4 = 14640;
          qword_27F753900 = 0;
          unk_27F753908 = 0;
          qword_27F7538F8 = 0;
          __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Digit(void)::e, &dword_254C81000);
        }

        memset(&v51, 0, sizeof(v51));
        std::string::push_back(&v51, v4);
        size = HIBYTE(v51.__r_.__value_.__r.__words[2]);
        v6 = v51.__r_.__value_.__r.__words[0];
        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v51.__r_.__value_.__l.__size_;
        }

        else
        {
          v6 = &v51;
        }

        v32.__r_.__value_.__r.__words[0] = v6;
        *&v32.__r_.__value_.__r.__words[1] = size;
        if ((YAML::Exp::Digit(void)::e - 3) >= 0xFFFFFFFE && size == 0)
        {
          v8 = 0;
          if ((*(&v51.__r_.__value_.__s + 23) & 0x80) != 0)
          {
LABEL_18:
            operator delete(v51.__r_.__value_.__l.__data_);
            if (v8)
            {
              goto LABEL_22;
            }

            goto LABEL_24;
          }
        }

        else
        {
          v8 = YAML::RegEx::MatchUnchecked<YAML::StringCharSource>(&YAML::Exp::Digit(void)::e, &v32) >= 0;
          if ((*(&v51.__r_.__value_.__s + 23) & 0x80) != 0)
          {
            goto LABEL_18;
          }
        }

        if (v8)
        {
LABEL_22:
          if (v4 == 48)
          {
            exception = __cxa_allocate_exception(0x38uLL);
            v19 = *(this + 4);
            v51.__r_.__value_.__r.__words[0] = *(this + 1);
            LODWORD(v51.__r_.__value_.__r.__words[1]) = v19;
            std::string::basic_string[abi:ne200100]<0>(&v32, "cannot set zero indentation for a block scalar");
            YAML::Exception::Exception(exception, &v51, &v32);
            *exception = &unk_28671C278;
          }

          v38 = v4 - 48;
          LOBYTE(v39) = 0;
        }

LABEL_24:
        if (!--v2)
        {
          goto LABEL_28;
        }
      }
    }
  }

  while (1)
  {
LABEL_28:
    {
      if (v9)
      {
        v10 = YAML::Exp::Space(v9);
        v11 = YAML::Exp::Tab(v10);
        YAML::operator|(v10, v11, &YAML::Exp::Blank(void)::e);
        __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Blank(void)::e, &dword_254C81000);
      }
    }

    v32.__r_.__value_.__r.__words[0] = 0;
    v32.__r_.__value_.__l.__size_ = this;
    if (!*(this + 8) && !YAML::Stream::_ReadAheadTo(this, 0))
    {
      break;
    }

    if ((YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&YAML::Exp::Blank(void)::e, &v32) & 0x80000000) != 0)
    {
      break;
    }

    YAML::Stream::get(this);
  }

  {
    YAML::Exp::Comment(void)::e = 1;
    word_27F7539BC = 35;
    qword_27F7539C8 = 0;
    unk_27F7539D0 = 0;
    qword_27F7539C0 = 0;
    __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Comment(void)::e, &dword_254C81000);
  }

  LODWORD(v32.__r_.__value_.__l.__data_) = YAML::Exp::Comment(void)::e;
  WORD2(v32.__r_.__value_.__r.__words[0]) = word_27F7539BC;
  v33[0] = 0;
  *&v32.__r_.__value_.__r.__words[1] = 0uLL;
  std::vector<YAML::RegEx>::__init_with_size[abi:ne200100]<YAML::RegEx*,YAML::RegEx*>(&v32.__r_.__value_.__l.__size_, qword_27F7539C0, qword_27F7539C8, (qword_27F7539C8 - qword_27F7539C0) >> 5);
  v51.__r_.__value_.__r.__words[0] = 0;
  v51.__r_.__value_.__l.__size_ = this;
  if (*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0))
  {
    v12 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(&v32, &v51);
    v51.__r_.__value_.__r.__words[0] = &v32.__r_.__value_.__l.__size_;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v51);
    if ((v12 & 0x80000000) == 0)
    {
      for (i = YAML::Stream::operator BOOL(this); i; i = YAML::Stream::operator BOOL(this))
      {
        v14 = YAML::Exp::Break(i);
        v32.__r_.__value_.__r.__words[0] = 0;
        v32.__r_.__value_.__l.__size_ = this;
        if ((*(this + 8) || YAML::Stream::_ReadAheadTo(this, 0)) && (YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v14, &v32) & 0x80000000) == 0)
        {
          break;
        }

        YAML::Stream::get(this);
      }
    }
  }

  else
  {
    v51.__r_.__value_.__r.__words[0] = &v32.__r_.__value_.__l.__size_;
    std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v51);
  }

  v15 = YAML::Stream::operator BOOL(this);
  if (v15)
  {
    if ((v16 = YAML::Exp::Break(v15), v32.__r_.__value_.__r.__words[0] = 0, v32.__r_.__value_.__l.__size_ = this, !*(this + 8)) && !YAML::Stream::_ReadAheadTo(this, 0) || (YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v16, &v32) & 0x80000000) != 0)
    {
      v28 = __cxa_allocate_exception(0x38uLL);
      v29 = *(this + 4);
      v51.__r_.__value_.__r.__words[0] = *(this + 1);
      LODWORD(v51.__r_.__value_.__r.__words[1]) = v29;
      std::string::basic_string[abi:ne200100]<0>(&v32, "unexpected character in block scalar");
      YAML::Exception::Exception(v28, &v51, &v32);
      *v28 = &unk_28671C278;
    }
  }

  v17 = *(this + 30);
  if (!v17 || (LODWORD(v17) = **(*(*(this + 26) + (((v17 + *(this + 29) - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v17 + *(this + 29) - 1) & 0x1FF)), (v17 & 0x80000000) == 0))
  {
    v38 += v17;
  }

  HIBYTE(v39) = 0;
  v42 = 0;
  HIDWORD(v44) = 2;
  YAML::ScanScalar(this, &v36, &v32);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p = v32;
  *(this + 73) = 1;
  v32.__r_.__value_.__r.__words[0] = 0x1400000000;
  v32.__r_.__value_.__l.__size_ = v31;
  LODWORD(v32.__r_.__value_.__r.__words[2]) = v30;
  *v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  std::string::operator=(v33, &__p);
  std::deque<YAML::Token>::push_back(this + 96, &v32);
  v51.__r_.__value_.__r.__words[0] = v34 + 8;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v51);
  if (SBYTE7(v34[0]) < 0)
  {
    operator delete(v33[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_254CC6B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  *(v38 - 96) = &a38;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v38 - 96));
  a37 = v38 - 152;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a37);
  __cxa_guard_abort(&qword_280AF4270);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

int *YAML::Exp::Digit(YAML::Exp *this)
{
  {
    YAML::Exp::Digit(void)::e = 2;
    word_27F7538F4 = 14640;
    qword_27F753900 = 0;
    unk_27F753908 = 0;
    qword_27F7538F8 = 0;
    __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Digit(void)::e, &dword_254C81000);
  }

  return &YAML::Exp::Digit(void)::e;
}

int *YAML::Exp::Space(YAML::Exp *this)
{
  {
    YAML::Exp::Space(void)::e = 1;
    word_27F75396C = 32;
    qword_27F753978 = 0;
    unk_27F753980 = 0;
    qword_27F753970 = 0;
    __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Space(void)::e, &dword_254C81000);
  }

  return &YAML::Exp::Space(void)::e;
}

int *YAML::Exp::Tab(YAML::Exp *this)
{
  {
    YAML::Exp::Tab(void)::e = 1;
    word_27F753994 = 9;
    qword_27F7539A0 = 0;
    unk_27F7539A8 = 0;
    qword_27F753998 = 0;
    __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::Tab(void)::e, &dword_254C81000);
  }

  return &YAML::Exp::Tab(void)::e;
}

uint64_t std::vector<YAML::RegEx>::__init_with_size[abi:ne200100]<YAML::RegEx*,YAML::RegEx*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<YAML::RegEx>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_254CC6ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<YAML::RegEx>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::RegEx>>(a1, a2);
  }

  std::vector<YAML::RegEx>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::RegEx>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<YAML::RegEx>,YAML::RegEx*,YAML::RegEx*,YAML::RegEx*>(uint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v4 = a4;
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      *(v4 + 4) = *(v6 + 2);
      *v4 = v7;
      *(v4 + 16) = 0;
      *(v4 + 24) = 0;
      *(v4 + 8) = 0;
      v8 = *(v6 + 1);
      v9 = *(v6 + 2);
      std::vector<YAML::RegEx>::__init_with_size[abi:ne200100]<YAML::RegEx*,YAML::RegEx*>(v4 + 8);
      v6 += 8;
      v4 = v14 + 32;
      v14 += 32;
    }

    while (v6 != a3);
  }

  v12 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<YAML::RegEx>,YAML::RegEx*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<YAML::RegEx>,YAML::RegEx*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<YAML::RegEx>,YAML::RegEx*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<YAML::RegEx>,YAML::RegEx*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 32;
      v4 = (v1 - 24);
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v4);
      v1 = v3;
    }

    while (v3 != v2);
  }
}

void std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v6 = v4 - 32;
        v7 = v4 - 24;
        std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

void *YAML::Exp::EndScalarInFlow(YAML::Exp *this)
{
  {
    if (v2)
    {
      v19 = 1;
      v20 = 58;
      memset(v21, 0, sizeof(v21));
      v3 = YAML::Exp::BlankOrBreak(v2);
      v12 = 0;
      v13 = 0;
      memset(v14, 0, sizeof(v14));
      YAML::operator|(v3, &v12, &v15);
      std::string::basic_string[abi:ne200100]<0>(v8, ",]}");
      YAML::RegEx::RegEx(&v10, v8, 3);
      YAML::operator|(&v15, &v10, &v17);
      YAML::operator+(&v19, &v17, &v22);
      std::string::basic_string[abi:ne200100]<0>(__p, ",?[]{}");
      YAML::RegEx::RegEx(&v6, __p, 3);
      YAML::operator|(&v22, &v6, &YAML::Exp::EndScalarInFlow(void)::e);
      v24 = &v7;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v24);
      if (v5 < 0)
      {
        operator delete(__p[0]);
      }

      v6 = &v23;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = &v18;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v6);
      v6 = &v11;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v6);
      if (v9 < 0)
      {
        operator delete(v8[0]);
      }

      v10 = &v16;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v10);
      v10 = v14;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v10);
      v17 = v21;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v17);
      __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::EndScalarInFlow(void)::e, &dword_254C81000);
    }
  }

  return &YAML::Exp::EndScalarInFlow(void)::e;
}

void sub_254CC74B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35)
{
  *(v37 - 56) = v36 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v37 - 56));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a16 = (v37 - 80);
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = (v37 - 144);
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = &a27;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (a25 < 0)
  {
    operator delete(a20);
  }

  a26 = &a35;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a26);
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&a26);
  *(v37 - 152) = v35;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v37 - 152));
  _Unwind_Resume(a1);
}

void *YAML::Exp::EndScalar(YAML::Exp *this)
{
  {
    if (v2)
    {
      v9 = 1;
      v10 = 58;
      memset(v11, 0, sizeof(v11));
      v3 = YAML::Exp::BlankOrBreak(v2);
      v4 = 0;
      v5 = 0;
      memset(v6, 0, sizeof(v6));
      YAML::operator|(v3, &v4, &v7);
      YAML::operator+(&v9, &v7, &YAML::Exp::EndScalar(void)::e);
      v12 = &v8;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v12);
      v12 = v6;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v12);
      v7 = v11;
      std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](&v7);
      __cxa_atexit(YAML::RegEx::~RegEx, &YAML::Exp::EndScalar(void)::e, &dword_254C81000);
    }
  }

  return &YAML::Exp::EndScalar(void)::e;
}

void sub_254CC76B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  *(v8 - 40) = v7 + 8;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v8 - 40));
  *(v8 - 40) = v6;
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100]((v8 - 40));
  std::vector<YAML::RegEx>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void YAML::Exp::ChompIndicator(YAML::Exp *this)
{
  if ((atomic_load_explicit(&qword_280AF4278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280AF4278))
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "+-");
    YAML::RegEx::RegEx(&unk_280AF4340, __p, 3);
    if (v2 < 0)
    {
      operator delete(__p[0]);
    }

    __cxa_atexit(YAML::RegEx::~RegEx, &unk_280AF4340, &dword_254C81000);
    __cxa_guard_release(&qword_280AF4278);
  }
}

void sub_254CC77AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_280AF4278);
  _Unwind_Resume(a1);
}

uint64_t YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = 0xFFFFFFFFLL;
  if (*a1 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        if (*(*(*(a2[1] + 32) + (((*(a2[1] + 56) + *a2) >> 9) & 0x7FFFFFFFFFFFF8)) + ((*(a2[1] + 56) + *a2) & 0xFFFLL)) == *(a1 + 4))
        {
          return 1;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (v4 == 2)
      {
        v10 = *(*(*(a2[1] + 32) + (((*(a2[1] + 56) + *a2) >> 9) & 0x7FFFFFFFFFFFF8)) + ((*(a2[1] + 56) + *a2) & 0xFFFLL));
        if (*(a1 + 4) <= v10)
        {
          if (*(a1 + 5) < v10)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return 1;
          }
        }
      }
    }

    else if (*(*(*(a2[1] + 32) + (((*(a2[1] + 56) + *a2) >> 9) & 0x7FFFFFFFFFFFF8)) + ((*(a2[1] + 56) + *a2) & 0xFFFLL)) == 4)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (v4 > 4)
  {
    if (v4 == 5)
    {
      v21 = *(a1 + 8);
      if (v21 != *(a1 + 16))
      {
        if (YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v21, a2) >= 0)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return 1;
        }
      }
    }

    else if (v4 == 6)
    {
      v11 = *(a1 + 8);
      if (*(a1 + 16) == v11)
      {
        return 0;
      }

      v12 = 0;
      LODWORD(v5) = 0;
      v13 = 0;
      while (1)
      {
        v14 = a2[1];
        v15 = (v5 + *a2) < 0 != __OFADD__(v5, *a2) ? 0 : *a2 + v5;
        v23[0] = v15;
        v23[1] = v14;
        if (*(v14 + 8) <= v15 && !YAML::Stream::_ReadAheadTo(v14, v15))
        {
          break;
        }

        v16 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v11 + v12, v23);
        if (v16 == -1)
        {
          break;
        }

        v5 = (v16 + v5);
        ++v13;
        v11 = *(a1 + 8);
        v12 += 32;
        if (v13 >= (*(a1 + 16) - v11) >> 5)
        {
          return v5;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  else if (v4 == 3)
  {
    v17 = *(a1 + 8);
    if (*(a1 + 16) != v17)
    {
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v20 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v17 + v18, a2);
        if ((v20 & 0x80000000) == 0)
        {
          break;
        }

        ++v19;
        v17 = *(a1 + 8);
        v18 += 32;
        if (v19 >= (*(a1 + 16) - v17) >> 5)
        {
          return 0xFFFFFFFFLL;
        }
      }

      return v20;
    }
  }

  else if (v4 == 4)
  {
    v6 = *(a1 + 8);
    if (*(a1 + 16) != v6)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = YAML::RegEx::MatchUnchecked<YAML::StreamCharSource>(v6 + v7, a2);
        if (v9 == -1)
        {
          break;
        }

        if (v8)
        {
          v5 = v5;
        }

        else
        {
          v5 = v9;
        }

        ++v8;
        v6 = *(a1 + 8);
        v7 += 32;
        if (v8 >= (*(a1 + 16) - v6) >> 5)
        {
          return v5;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t YAML::RegEx::MatchUnchecked<YAML::StringCharSource>(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = 0xFFFFFFFFLL;
  if (*a1 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        if (*(*a2 + a2[2]) == *(a1 + 4))
        {
          return 1;
        }

        else
        {
          return 0xFFFFFFFFLL;
        }
      }

      else if (v4 == 2)
      {
        v10 = *(*a2 + a2[2]);
        if (*(a1 + 4) <= v10)
        {
          if (*(a1 + 5) < v10)
          {
            return 0xFFFFFFFFLL;
          }

          else
          {
            return 1;
          }
        }
      }
    }

    else if (a2[2] >= a2[1])
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (v4 > 4)
  {
    if (v4 == 5)
    {
      v21 = *(a1 + 8);
      if (v21 != *(a1 + 16))
      {
        if (YAML::RegEx::MatchUnchecked<YAML::StringCharSource>(v21, a2) >= 0)
        {
          return 0xFFFFFFFFLL;
        }

        else
        {
          return 1;
        }
      }
    }

    else if (v4 == 6)
    {
      v11 = *(a1 + 8);
      if (*(a1 + 16) == v11)
      {
        return 0;
      }

      v12 = 0;
      v13 = 0;
      LODWORD(v5) = 0;
      while (1)
      {
        v24 = a2[2];
        v23 = *a2;
        v14 = v24 + v5;
        if (v5 + v24 < 0 != __OFADD__(v5, v24))
        {
          v14 = 0;
        }

        v24 = v14;
        if ((*(v11 + v12) - 3) >= 0xFFFFFFFE && v14 >= *(&v23 + 1))
        {
          break;
        }

        v16 = YAML::RegEx::MatchUnchecked<YAML::StringCharSource>(v11 + v12, &v23);
        if (v16 == -1)
        {
          break;
        }

        v5 = (v16 + v5);
        ++v13;
        v11 = *(a1 + 8);
        v12 += 32;
        if (v13 >= (*(a1 + 16) - v11) >> 5)
        {
          return v5;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  else if (v4 == 3)
  {
    v17 = *(a1 + 8);
    if (*(a1 + 16) != v17)
    {
      v18 = 0;
      v19 = 0;
      while (1)
      {
        v20 = YAML::RegEx::MatchUnchecked<YAML::StringCharSource>(v17 + v18, a2);
        if ((v20 & 0x80000000) == 0)
        {
          break;
        }

        ++v19;
        v17 = *(a1 + 8);
        v18 += 32;
        if (v19 >= (*(a1 + 16) - v17) >> 5)
        {
          return 0xFFFFFFFFLL;
        }
      }

      return v20;
    }
  }

  else if (v4 == 4)
  {
    v6 = *(a1 + 8);
    if (*(a1 + 16) != v6)
    {
      v7 = 0;
      v8 = 0;
      while (1)
      {
        v9 = YAML::RegEx::MatchUnchecked<YAML::StringCharSource>(v6 + v7, a2);
        if (v9 == -1)
        {
          break;
        }

        if (v8)
        {
          v5 = v5;
        }

        else
        {
          v5 = v9;
        }

        ++v8;
        v6 = *(a1 + 8);
        v7 += 32;
        if (v8 >= (*(a1 + 16) - v6) >> 5)
        {
          return v5;
        }
      }

      return 0xFFFFFFFFLL;
    }
  }

  return v5;
}

uint64_t std::deque<YAML::Token>::push_back(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 8);
  v7 = 51 * ((v5 - v6) >> 3) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = *(a1 + 40) + *(a1 + 32);
  if (v7 == v8)
  {
    std::deque<YAML::Token>::__add_back_capacity(a1);
    v6 = *(a1 + 8);
    v8 = *(a1 + 40) + *(a1 + 32);
  }

  v9 = *(v6 + 8 * (v8 / 0x33)) + 80 * (v8 % 0x33);
  v10 = *a2;
  *(v9 + 16) = *(a2 + 4);
  *v9 = v10;
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external((v9 + 24), *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v11 = *(a2 + 24);
    *(v9 + 40) = *(a2 + 5);
    *(v9 + 24) = v11;
  }

  *(v9 + 48) = 0;
  *(v9 + 56) = 0;
  *(v9 + 64) = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v9 + 48, *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
  *(v9 + 72) = *(a2 + 18);
  ++*(a1 + 40);
  return result;
}

void sub_254CC7D7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  _Unwind_Resume(exception_object);
}

void *std::deque<YAML::Scanner::FLOW_MARKER>::push_back(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = result[2];
  v6 = result[1];
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 7) - 1;
  }

  v8 = result[5];
  v9 = v8 + result[4];
  if (v7 == v9)
  {
    result = std::deque<YAML::Scanner::FLOW_MARKER>::__add_back_capacity(result);
    v6 = v3[1];
    v8 = v3[5];
    v9 = v3[4] + v8;
  }

  *(*(v6 + ((v9 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v9 & 0x3FF)) = *a2;
  v3[5] = v8 + 1;
  return result;
}

void *std::deque<YAML::Scanner::FLOW_MARKER>::__add_back_capacity(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v6 = a1[3];
    v7 = v6 - *a1;
    if (a1[2] - a1[1] < v7)
    {
      operator new();
    }

    v8 = v7 >> 2;
    if (v6 == *a1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Scanner::FLOW_MARKER *>>(v9);
  }

  a1[4] = v3;
  v4 = a1[1];
  v10 = *v4;
  a1[1] = v4 + 1;
  return std::__split_buffer<YAML::Scanner::FLOW_MARKER *>::emplace_back<YAML::Scanner::FLOW_MARKER *&>(a1, &v10);
}

void sub_254CC8248(_Unwind_Exception *a1)
{
  operator delete(v2);
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

void *std::__split_buffer<YAML::Scanner::FLOW_MARKER *>::emplace_back<YAML::Scanner::FLOW_MARKER *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Scanner::FLOW_MARKER *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<YAML::Scanner::FLOW_MARKER *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void __cxx_global_array_dtor_0()
{
  v0 = &byte_280AF5377;
  v1 = -480;
  v2 = &byte_280AF5377;
  do
  {
    v3 = *v2;
    v2 -= 24;
    if (v3 < 0)
    {
      operator delete(*(v0 - 23));
    }

    v0 = v2;
    v1 += 24;
  }

  while (v1);
}

void siri::intelligence::Undo::GetIdentifier(siri::intelligence::Undo *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *this;
    a2->__r_.__value_.__r.__words[2] = *(this + 2);
  }
}

void siri::intelligence::Undo::SetUserData(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t siri::intelligence::Undo::GetUserData@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  *a2 = *(this + 24);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void std::__shared_ptr_emplace<siri::intelligence::Undo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286719560;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C29D90);
}

uint64_t YAML::Exp::ParseHex(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 23);
  v3 = v2;
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(result + 8);
  }

  if (!v2)
  {
    return 0;
  }

  v4 = result;
  LODWORD(result) = 0;
  if (v3 < 0)
  {
    v4 = *v4;
  }

  do
  {
    v6 = *v4;
    v4 = (v4 + 1);
    v5 = v6;
    if ((v6 - 97) >= 6)
    {
      if ((v5 - 65) >= 6)
      {
        if ((v5 - 48) >= 0xA)
        {
          exception = __cxa_allocate_exception(0x38uLL);
          std::string::basic_string[abi:ne200100]<0>(v10, "bad character found while scanning hex number");
          YAML::Exception::Exception(exception, a2, v10);
          *exception = &unk_28671C278;
        }

        v7 = -48;
      }

      else
      {
        v7 = -55;
      }
    }

    else
    {
      v7 = -87;
    }

    result = (v5 + 16 * result + v7);
    --v2;
  }

  while (v2);
  return result;
}

void sub_254CC87E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

uint64_t YAML::Exp::Str@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  a2[23] = 1;
  *a2 = this;
  a2[1] = 0;
  return this;
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void YAML::Exp::Escape(YAML::Exp *this@<X0>, YAML::Stream *a2@<X1>, uint64_t a3@<X8>)
{
  memset(&v33, 0, sizeof(v33));
  if (a2 >= 1)
  {
    v5 = a2;
    do
    {
      v6 = YAML::Stream::get(this);
      std::string::push_back(&v33, v6);
      --v5;
    }

    while (v5);
  }

  v7 = *(this + 4);
  v32.__r_.__value_.__r.__words[0] = *(this + 1);
  LODWORD(v32.__r_.__value_.__r.__words[1]) = v7;
  v8 = YAML::Exp::ParseHex(&v33, &v32);
  v9 = v8;
  if (WORD1(v8) > 0x10u || (v8 & 0xFFFFF800) == 55296)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v32);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v32.__r_.__value_.__r.__words[2], "invalid unicode: ", 17);
    MEMORY[0x259C29BD0](v21, v9);
    exception = __cxa_allocate_exception(0x38uLL);
    v23 = *(this + 4);
    v30.__r_.__value_.__r.__words[0] = *(this + 1);
    LODWORD(v30.__r_.__value_.__r.__words[1]) = v23;
    std::stringbuf::str();
    YAML::Exception::Exception(exception, &v30, &__s);
    *exception = &unk_28671C278;
  }

  if (v8 <= 0x7F)
  {
    *(a3 + 23) = 1;
    *a3 = v8;
    goto LABEL_37;
  }

  if (v8 > 0x7FF)
  {
    if (WORD1(v8))
    {
      *(&v30.__r_.__value_.__s + 23) = 1;
      LOWORD(v30.__r_.__value_.__l.__data_) = (v8 >> 18) | 0xF0;
      v29 = 1;
      v28[0] = (v8 >> 12) & 0x3F | 0x80;
      v28[1] = 0;
      v16 = std::string::append(&v30, v28, 1uLL);
      v17 = *&v16->__r_.__value_.__l.__data_;
      __s.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&__s.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v27 = 1;
      v26[0] = (v9 >> 6) & 0x3F | 0x80;
      v26[1] = 0;
      v18 = std::string::append(&__s, v26, 1uLL);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v32.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v32.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v25 = 1;
      LOWORD(__p) = v9 & 0x3F | 0x80;
      v20 = std::string::append(&v32, &__p, 1uLL);
      *a3 = *v20;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (v25 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (v27 < 0)
      {
        operator delete(*v26);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__s.__r_.__value_.__l.__data_);
      }

      if (v29 < 0)
      {
        operator delete(*v28);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        v12 = v30.__r_.__value_.__r.__words[0];
        goto LABEL_36;
      }
    }

    else
    {
      *(&__s.__r_.__value_.__s + 23) = 1;
      LOWORD(__s.__r_.__value_.__l.__data_) = (v8 >> 12) | 0xE0;
      *(&v30.__r_.__value_.__s + 23) = 1;
      LOWORD(v30.__r_.__value_.__l.__data_) = (v8 >> 6) & 0x3F | 0x80;
      v13 = std::string::append(&__s, &v30, 1uLL);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v32.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v32.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      v29 = 1;
      v28[0] = v9 & 0x3F | 0x80;
      v28[1] = 0;
      v15 = std::string::append(&v32, v28, 1uLL);
      *a3 = *v15;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (v29 < 0)
      {
        operator delete(*v28);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
      {
        v12 = __s.__r_.__value_.__r.__words[0];
        goto LABEL_36;
      }
    }
  }

  else
  {
    *(&v32.__r_.__value_.__s + 23) = 1;
    LOWORD(v32.__r_.__value_.__l.__data_) = (v8 >> 6) | 0xC0;
    *(&__s.__r_.__value_.__s + 23) = 1;
    LOWORD(__s.__r_.__value_.__l.__data_) = v8 & 0x3F | 0x80;
    v11 = std::string::append(&v32, &__s, 1uLL);
    *a3 = *v11;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__s.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      v12 = v32.__r_.__value_.__r.__words[0];
LABEL_36:
      operator delete(v12);
    }
  }

LABEL_37:
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }
}

void sub_254CC8CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a38 < 0)
  {
    operator delete(__p);
    if ((v46 & 1) == 0)
    {
LABEL_6:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a40);
      if (*(v47 - 49) < 0)
      {
        operator delete(*(v47 - 72));
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v46)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v45);
  goto LABEL_6;
}

void YAML::Exp::Escape(YAML::Exp *this@<X0>, _BYTE *a2@<X8>)
{
  v5 = YAML::Stream::get(this);
  v6 = YAML::Stream::get(this);
  if (v5 == 39 && v6 == 39)
  {
LABEL_3:
    v7 = "'";
LABEL_4:

    std::string::basic_string[abi:ne200100]<0>(a2, v7);
    return;
  }

  if (v6 > 0x5Eu)
  {
    if (v6 <= 0x6Du)
    {
      if (v6 <= 0x61u)
      {
        if (v6 == 95)
        {
          v7 = "\xA0";
          goto LABEL_4;
        }

        if (v6 == 97)
        {
          v7 = "\a";
          goto LABEL_4;
        }
      }

      else
      {
        switch(v6)
        {
          case 'b':
            v7 = "\b";
            goto LABEL_4;
          case 'e':
            v7 = "\x1B";
            goto LABEL_4;
          case 'f':
            v7 = "\f";
            goto LABEL_4;
        }
      }

      goto LABEL_60;
    }

    if (v6 > 0x74u)
    {
      switch(v6)
      {
        case 'u':
          v8 = a2;
          v9 = this;
          v10 = 4;
          break;
        case 'v':
          v7 = "\v";
          goto LABEL_4;
        case 'x':
          v8 = a2;
          v9 = this;
          v10 = 2;
          break;
        default:
          goto LABEL_60;
      }

      goto LABEL_56;
    }

    if (v6 == 110)
    {
      v7 = "\n";
      goto LABEL_4;
    }

    if (v6 == 114)
    {
      v7 = "\r";
      goto LABEL_4;
    }

    if (v6 != 116)
    {
      goto LABEL_60;
    }

LABEL_44:
    v7 = "\t";
    goto LABEL_4;
  }

  if (v6 <= 0x2Fu)
  {
    if (v6 > 0x21u)
    {
      switch(v6)
      {
        case '""':
          v7 = "";
          goto LABEL_4;
        case '\'':
          goto LABEL_3;
        case '/':
          v7 = "/";
          goto LABEL_4;
      }

LABEL_60:
      v11 = v6;
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
      exception = __cxa_allocate_exception(0x38uLL);
      v13 = *(this + 4);
      v16 = *(this + 1);
      v17 = v13;
      std::string::basic_string[abi:ne200100]<0>(&v14, "unknown escape character: ");
      std::string::push_back(&v14, v11);
      v15 = v14;
      memset(&v14, 0, sizeof(v14));
      YAML::Exception::Exception(exception, &v16, &v15);
      *exception = &unk_28671C278;
    }

    if (v6 != 9)
    {
      if (v6 == 32)
      {
        v7 = " ";
        goto LABEL_4;
      }

      goto LABEL_60;
    }

    goto LABEL_44;
  }

  if (v6 <= 0x4Fu)
  {
    switch(v6)
    {
      case '0':
        a2[23] = 1;
        *a2 = 0;
        return;
      case 'L':
        v7 = "\u2028";
        goto LABEL_4;
      case 'N':
        v7 = "\x85";
        goto LABEL_4;
    }

    goto LABEL_60;
  }

  if (v6 == 80)
  {
    v7 = "\u2029";
    goto LABEL_4;
  }

  if (v6 != 85)
  {
    if (v6 == 92)
    {
      v7 = "\";
      goto LABEL_4;
    }

    goto LABEL_60;
  }

  v8 = a2;
  v9 = this;
  v10 = 8;
LABEL_56:

  YAML::Exp::Escape(v9, v10, v8);
}

void sub_254CC916C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v25);
  goto LABEL_8;
}

double siri::intelligence::Interjection::Interjection(siri::intelligence::Interjection *this)
{
  *this = 256;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = 256;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

void siri::intelligence::Interjection::GetSegueResponseId(siri::intelligence::Interjection *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

void siri::intelligence::Interjection::GetReturnResponseId(siri::intelligence::Interjection *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 55) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 4), *(this + 5));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 2);
    a2->__r_.__value_.__r.__words[2] = *(this + 6);
  }
}

void InitDefaultsscc_info_Intelligence_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence::Intelligence(&protobuf::_Intelligence_default_instance_);
  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_default_instance_, v4);
  qword_27F754B08 = &protobuf::_Intelligence_Start_default_instance_;
}

void InitDefaultsscc_info_Intelligence_Activity_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_Activity::Intelligence_Activity(&protobuf::_Intelligence_Activity_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_Activity_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_BehaviorResponse_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_BehaviorResponse::Intelligence_BehaviorResponse(&protobuf::_Intelligence_BehaviorResponse_default_instance_);
  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_BehaviorResponse_default_instance_, v4);
  qword_27F753EE8 = &protobuf::_Intelligence_Undo_default_instance_;
}

void InitDefaultsscc_info_Intelligence_Character_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_Character::Intelligence_Character(&protobuf::_Intelligence_Character_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_Character_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_Condition_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_Condition::Intelligence_Condition(&protobuf::_Intelligence_Condition_default_instance_);
  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_Condition_default_instance_, v4);
  qword_27F7548E8 = &protobuf::_Intelligence_Condition_ConditionEntry_default_instance_;
}

void InitDefaultsscc_info_Intelligence_Condition_ConditionEntry_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_Condition_ConditionEntry::Intelligence_Condition_ConditionEntry(&protobuf::_Intelligence_Condition_ConditionEntry_default_instance_);
  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_Condition_ConditionEntry_default_instance_, v4);
  qword_27F7548B8 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
  unk_27F7548C0 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
  qword_27F7548B0 = &protobuf::_Intelligence_Condition_ConditionEntry_default_instance_;
}

void InitDefaultsscc_info_Intelligence_Counter_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_Counter::Intelligence_Counter(&protobuf::_Intelligence_Counter_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_Counter_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_DialogResponse_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_DialogResponse::Intelligence_DialogResponse(&protobuf::_Intelligence_DialogResponse_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_DialogResponse_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_Event_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_Event::Intelligence_Event(&protobuf::_Intelligence_Event_default_instance_);
  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_Event_default_instance_, v4);
  qword_27F754530 = &protobuf::_Intelligence_NLParameters_default_instance_;
}

void InitDefaultsscc_info_Intelligence_Flag_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_Flag::Intelligence_Flag(&protobuf::_Intelligence_Flag_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_Flag_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_InputGroup_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_InputGroup::Intelligence_InputGroup(&protobuf::_Intelligence_InputGroup_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_InputGroup_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_InputGroup_Event_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_InputGroup_Event::Intelligence_InputGroup_Event(&protobuf::_Intelligence_InputGroup_Event_default_instance_);
  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_InputGroup_Event_default_instance_, v4);
  qword_27F7540E8 = &protobuf::_Intelligence_InputGroup_Interjection_default_instance_;
}

void InitDefaultsscc_info_Intelligence_InputGroup_Fallback_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_InputGroup_Fallback::Intelligence_InputGroup_Fallback(&protobuf::_Intelligence_InputGroup_Fallback_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_InputGroup_Fallback_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_InputGroup_Intent_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_InputGroup_Intent::Intelligence_InputGroup_Intent(&protobuf::_Intelligence_InputGroup_Intent_default_instance_);
  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_InputGroup_Intent_default_instance_, v4);
  qword_27F754098 = &protobuf::_Intelligence_InputGroup_Interjection_default_instance_;
}

void InitDefaultsscc_info_Intelligence_InputGroup_Interjection_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_InputGroup_Interjection::Intelligence_InputGroup_Interjection(&protobuf::_Intelligence_InputGroup_Interjection_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_InputGroup_Interjection_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_InputGroup_LegacyEvent_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_InputGroup_LegacyEvent::Intelligence_InputGroup_LegacyEvent(&protobuf::_Intelligence_InputGroup_LegacyEvent_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_InputGroup_LegacyEvent_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_Intent_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_Intent::Intelligence_Intent(&protobuf::_Intelligence_Intent_default_instance_);
  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_Intent_default_instance_, v4);
  qword_27F754578 = &protobuf::_Intelligence_NLParameters_default_instance_;
}

void InitDefaultsscc_info_Intelligence_KeyValueParameter_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_KeyValueParameter::Intelligence_KeyValueParameter(&protobuf::_Intelligence_KeyValueParameter_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_KeyValueParameter_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_Label_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_Label::Intelligence_Label(&protobuf::_Intelligence_Label_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_Label_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_List_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_List::Intelligence_List(&protobuf::_Intelligence_List_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_List_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_Meta_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_Meta::Intelligence_Meta(&protobuf::_Intelligence_Meta_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_Meta_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_NLParameters_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_NLParameters::Intelligence_NLParameters(&protobuf::_Intelligence_NLParameters_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_NLParameters_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_ReferenceResponse_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_ReferenceResponse::Intelligence_ReferenceResponse(&protobuf::_Intelligence_ReferenceResponse_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_ReferenceResponse_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_ResponseGroup_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_ResponseGroup::Intelligence_ResponseGroup(&protobuf::_Intelligence_ResponseGroup_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_ResponseGroup_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_Start_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_Start::Intelligence_Start(&protobuf::_Intelligence_Start_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_Start_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_State_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_State::Intelligence_State(&protobuf::_Intelligence_State_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_State_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_State_Event_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_State_Event::Intelligence_State_Event(&protobuf::_Intelligence_State_Event_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_State_Event_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_State_ExecutionState_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_State_ExecutionState::Intelligence_State_ExecutionState(&protobuf::_Intelligence_State_ExecutionState_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_State_ExecutionState_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_State_ExecutionState_Frame_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_State_ExecutionState_Frame::Intelligence_State_ExecutionState_Frame(&protobuf::_Intelligence_State_ExecutionState_Frame_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_State_ExecutionState_Frame_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_State_ExecutionState_Frame_ResponseState_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_State_ExecutionState_Frame_ResponseState::Intelligence_State_ExecutionState_Frame_ResponseState(&protobuf::_Intelligence_State_ExecutionState_Frame_ResponseState_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_State_ExecutionState_Frame_ResponseState_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_State_InputGroup_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_State_InputGroup::Intelligence_State_InputGroup(&protobuf::_Intelligence_State_InputGroup_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_State_InputGroup_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_State_Memory_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_State_Memory::Intelligence_State_Memory(&protobuf::_Intelligence_State_Memory_default_instance_);
  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_State_Memory_default_instance_, v4);
  qword_27F7545D8 = &protobuf::_Intelligence_State_Memory_Value_default_instance_;
}

void InitDefaultsscc_info_Intelligence_State_Memory_Value_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_State_Memory_Value::Intelligence_State_Memory_Value(&protobuf::_Intelligence_State_Memory_Value_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_State_Memory_Value_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_State_Response_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_State_Response::Intelligence_State_Response(&protobuf::_Intelligence_State_Response_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_State_Response_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_State_Timer_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_State_Timer::Intelligence_State_Timer(&protobuf::_Intelligence_State_Timer_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_State_Timer_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_Undo_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_Undo::Intelligence_Undo(&protobuf::_Intelligence_Undo_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_Undo_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_Utterance_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_Utterance::Intelligence_Utterance(&protobuf::_Intelligence_Utterance_default_instance_);

  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_Utterance_default_instance_, v4);
}

void InitDefaultsscc_info_Intelligence_Variable_intelligence_2eproto(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DEDD0, 0x2DEDD0, "/Library/Caches/com.apple.xbs/Sources/SiriIntelligenceEngine/fileformat/intelligence.pb.cc", a4);
  protobuf::Intelligence_Variable::Intelligence_Variable(&protobuf::_Intelligence_Variable_default_instance_);
  google::protobuf::internal::OnShutdownRun(google::protobuf::internal::DestroyMessage, &protobuf::_Intelligence_Variable_default_instance_, v4);
  qword_27F754408 = &protobuf::_Intelligence_KeyValueParameter_default_instance_;
}

protobuf::Intelligence_Meta *protobuf::Intelligence_Meta::Intelligence_Meta(protobuf::Intelligence_Meta *this)
{
  *this = &unk_2867195B0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (atomic_load_explicit(scc_info_Intelligence_Meta_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Meta_intelligence_2eproto);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  return this;
}

protobuf::Intelligence_Meta *protobuf::Intelligence_Meta::Intelligence_Meta(protobuf::Intelligence_Meta *this, const protobuf::Intelligence_Meta *a2)
{
  *this = &unk_2867195B0;
  *(this + 1) = 0;
  v4 = *(a2 + 4);
  *(this + 2) = v4;
  v5 = *(a2 + 1);
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoMergeFrom(this + 1, v5 & 0xFFFFFFFFFFFFFFFELL);
    v4 = *(a2 + 4);
  }

  *(this + 3) = &google::protobuf::internal::fixed_address_empty_string;
  if (v4)
  {
    v6 = *(a2 + 3);
    if (v6 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 24, v6);
    }
  }

  *(this + 4) = &google::protobuf::internal::fixed_address_empty_string;
  if ((v4 & 2) != 0)
  {
    v7 = *(a2 + 4);
    if (v7 != &google::protobuf::internal::fixed_address_empty_string)
    {
      google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(this + 32, v7);
    }
  }

  return this;
}

void protobuf::Intelligence_Meta::~Intelligence_Meta(protobuf::Intelligence_Meta *this)
{
  *this = &unk_2867195B0;
  v2 = *(this + 3);
  if (v2 != &google::protobuf::internal::fixed_address_empty_string && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    MEMORY[0x259C29D90](v2, 0x1012C40EC159624);
  }

  v4 = *(this + 4);
  if (v4 != &google::protobuf::internal::fixed_address_empty_string && v4 != 0)
  {
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C29D90](v4, 0x1012C40EC159624);
  }

  google::protobuf::internal::InternalMetadataWithArenaBase<std::string,google::protobuf::internal::InternalMetadataWithArenaLite>::~InternalMetadataWithArenaBase(this + 1);
}

{
  protobuf::Intelligence_Meta::~Intelligence_Meta(this);

  JUMPOUT(0x259C29D90);
}

void *protobuf::Intelligence_Meta::default_instance(protobuf::Intelligence_Meta *this)
{
  if (atomic_load_explicit(scc_info_Intelligence_Meta_intelligence_2eproto, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl(scc_info_Intelligence_Meta_intelligence_2eproto);
  }

  return &protobuf::_Intelligence_Meta_default_instance_;
}

void protobuf::Intelligence_Meta::Clear(protobuf::Intelligence_Meta *this)
{
  v1 = *(this + 4);
  if ((v1 & 3) == 0)
  {
    goto LABEL_11;
  }

  if ((v1 & 1) == 0)
  {
LABEL_5:
    if ((v1 & 2) != 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v2 = *(this + 3);
  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
    goto LABEL_5;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  if ((v1 & 2) != 0)
  {
LABEL_6:
    v3 = *(this + 4);
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  v5 = *(this + 8);
  v4 = this + 8;
  *(v4 + 2) = 0;
  if (v5)
  {
    google::protobuf::internal::InternalMetadataWithArenaLite::DoClear(v4);
  }
}

google::protobuf::internal *protobuf::Intelligence_Meta::_InternalParse(uint64_t a1, google::protobuf::internal *a2, google::protobuf::internal::EpsCopyInputStream *this)
{
  v13 = a2;
  v5 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v13, *(this + 23));
  result = v13;
  if ((v5 & 1) == 0)
  {
    while (1)
    {
      v7 = result + 1;
      LODWORD(v8) = *result;
      if ((*result & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = (v8 + (*v7 << 7) - 128);
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      result = google::protobuf::internal::ReadTagFallback(result, v8);
      v13 = result;
      if (!result)
      {
        return result;
      }

      v7 = result;
      LODWORD(v8) = v12;
LABEL_7:
      if (v8 >> 3 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 2u;
          v10 = *(a1 + 32);
          if (v10 == &google::protobuf::internal::fixed_address_empty_string)
          {
            google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 32, &google::protobuf::internal::fixed_address_empty_string);
          }

          goto LABEL_20;
        }
      }

      else if (v8 >> 3 == 1 && v8 == 10)
      {
        *(a1 + 16) |= 1u;
        v10 = *(a1 + 24);
        if (v10 == &google::protobuf::internal::fixed_address_empty_string)
        {
          google::protobuf::internal::ArenaStringPtr::CreateInstanceNoArena(a1 + 24, &google::protobuf::internal::fixed_address_empty_string);
        }

LABEL_20:
        result = google::protobuf::internal::InlineGreedyStringParser(v10, v7, this);
        goto LABEL_21;
      }

      if (!v8 || (v8 & 7) == 4)
      {
        *(this + 20) = v8 - 1;
        return v7;
      }

      result = google::protobuf::internal::UnknownFieldParse(v8, (a1 + 8), v7, this);
LABEL_21:
      v13 = result;
      if (result)
      {
        v11 = google::protobuf::internal::EpsCopyInputStream::DoneWithCheck(this, &v13, *(this + 23));
        result = v13;
        if (!v11)
        {
          continue;
        }
      }

      return result;
    }

    v7 = result + 2;
LABEL_6:
    v13 = v7;
    goto LABEL_7;
  }

  return result;
}

unsigned __int8 *protobuf::Intelligence_Meta::InternalSerializeWithCachedSizesToArray(protobuf::Intelligence_Meta *this, char *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  v6 = *(this + 4);
  if (v6)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 1, *(this + 3), a2);
  }

  if ((v6 & 2) != 0)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::WriteStringMaybeAliased(a3, 2, *(this + 4), v4);
  }

  v7 = *(this + 1);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  if (v10 < 0)
  {
    v11 = *v9;
    v10 = *(v9 + 8);
  }

  else
  {
    v11 = v9;
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