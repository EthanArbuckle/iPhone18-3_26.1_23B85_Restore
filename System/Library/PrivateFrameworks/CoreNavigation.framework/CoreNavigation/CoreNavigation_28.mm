double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::Swap(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *this, CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData *a2)
{
  if (a2 != this)
  {
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    result = *(a2 + 6);
    *(a2 + 5) = v5;
    v7 = *(this + 6);
    *(this + 6) = result;
    *(a2 + 6) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
    LODWORD(v8) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v8;
    LODWORD(v8) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v8;
  }

  return result;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::SharedCtor(void *this)
{
  this[4] = 0;
  this[5] = 0;
  this[6] = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::GEOMapFeatureTropicalSavannaBranch(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *a2)
{
  *(this + 1) = 0;
  *this = &unk_1F4CDB940;
  *(this + 2) = 0;
  *(this + 6) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::MergeFrom(this, a2);
  return this;
}

void sub_1D0CF4F4C(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  sub_1D0CFF374((this + 8), a2 + 8);
  v4 = *(a2 + 13);
  if ((v4 & 0x1FE) != 0)
  {
    if ((v4 & 2) != 0)
    {
      v5 = *(a2 + 8);
      if (v5 >= 4)
      {
        __assert_rtn("set_branch_type", "CoreNavigationCLPPrivateDataShared.pb.h", 26506, "::CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch_BranchType_IsValid(value)");
      }

      *(this + 13) |= 2u;
      *(this + 8) = v5;
      v4 = *(a2 + 13);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 9);
      *(this + 13) |= 4u;
      *(this + 9) = v7;
      v4 = *(a2 + 13);
      if ((v4 & 8) == 0)
      {
LABEL_9:
        if ((v4 & 0x10) == 0)
        {
          return;
        }

        goto LABEL_10;
      }
    }

    else if ((v4 & 8) == 0)
    {
      goto LABEL_9;
    }

    v8 = *(a2 + 10);
    *(this + 13) |= 8u;
    *(this + 10) = v8;
    if ((*(a2 + 13) & 0x10) != 0)
    {
LABEL_10:
      v6 = *(a2 + 11);
      *(this + 13) |= 0x10u;
      *(this + 11) = v6;
    }
  }
}

void sub_1D0CF5094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::~GEOMapFeatureTropicalSavannaBranch(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *this)
{
  *this = &unk_1F4CDB940;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  sub_1D0B8CD0C(this + 1);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::~GEOMapFeatureTropicalSavannaBranch(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::Clear(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *this)
{
  if ((*(this + 26) & 0x1FE) != 0)
  {
    *(this + 4) = 0;
    *(this + 5) = 0;
  }

  result = sub_1D0C77384(this + 8);
  *(this + 13) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
LABEL_1:
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 == 1)
        {
          if (v7 == 2)
          {
            while (1)
            {
              v15 = *(this + 5);
              v16 = *(this + 4);
              if (v16 >= v15)
              {
                if (v15 == *(this + 6))
                {
                  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 8));
                  v15 = *(this + 5);
                }

                *(this + 5) = v15 + 1;
                operator new();
              }

              v17 = *(this + 1);
              *(this + 4) = v16 + 1;
              v18 = *(v17 + 8 * v16);
              v36 = 0;
              v19 = *(a2 + 1);
              if (v19 >= *(a2 + 2) || *v19 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
                {
                  return 0;
                }
              }

              else
              {
                v36 = *v19;
                *(a2 + 1) = v19 + 1;
              }

              v20 = *(a2 + 14);
              v21 = *(a2 + 15);
              *(a2 + 14) = v20 + 1;
              if (v20 >= v21)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::MergePartialFromCodedStream(v18, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v22 = *(a2 + 14);
              v23 = __OFSUB__(v22, 1);
              v24 = v22 - 1;
              if (v24 < 0 == v23)
              {
                *(a2 + 14) = v24;
              }

              v25 = *(a2 + 1);
              v10 = *(a2 + 2);
              if (v25 >= v10)
              {
                goto LABEL_1;
              }

              v26 = *v25;
              if (v26 != 10)
              {
                if (v26 != 16)
                {
                  goto LABEL_1;
                }

                v11 = (v25 + 1);
                *(a2 + 1) = v11;
                goto LABEL_16;
              }

              *(a2 + 1) = v25 + 1;
            }
          }

          goto LABEL_24;
        }

        if (v6 != 2 || (TagFallback & 7) != 0)
        {
          goto LABEL_24;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
LABEL_16:
        v35 = 0;
        if (v11 >= v10 || (v12 = *v11, (v12 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35);
          if (!result)
          {
            return result;
          }

          v12 = v35;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v12 <= 3)
        {
          *(this + 13) |= 2u;
          *(this + 8) = v12;
        }

        v28 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v28 < v8 && *v28 == 24)
        {
          v13 = v28 + 1;
          *(a2 + 1) = v13;
LABEL_53:
          if (v13 >= v8 || (v29 = *v13, v29 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 9);
            if (!result)
            {
              return result;
            }

            v30 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 9) = v29;
            v30 = v13 + 1;
            *(a2 + 1) = v30;
          }

          *(this + 13) |= 4u;
          if (v30 < v8 && *v30 == 32)
          {
            v14 = v30 + 1;
            *(a2 + 1) = v14;
            goto LABEL_61;
          }
        }
      }

      if (v6 == 3)
      {
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_24;
        }

        v13 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_53;
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_24;
      }

      v14 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_61:
      if (v14 >= v8 || (v31 = *v14, v31 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 10);
        if (!result)
        {
          return result;
        }

        v32 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 10) = v31;
        v32 = v14 + 1;
        *(a2 + 1) = v32;
      }

      *(this + 13) |= 8u;
      if (v32 < v8 && *v32 == 40)
      {
        v9 = v32 + 1;
        *(a2 + 1) = v9;
LABEL_69:
        if (v9 >= v8 || (v33 = *v9, v33 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v34 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 11) = v33;
          v34 = v9 + 1;
          *(a2 + 1) = v34;
        }

        *(this + 13) |= 0x10u;
        if (v34 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_69;
    }

LABEL_24:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 16) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, *(*(v5 + 8) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 16));
  }

  v7 = *(v5 + 52);
  if ((v7 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 32), a2, a4);
    v7 = *(v5 + 52);
    if ((v7 & 4) == 0)
    {
LABEL_6:
      if ((v7 & 8) == 0)
      {
        goto LABEL_7;
      }

LABEL_11:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, *(v5 + 40), a2, a4);
      if ((*(v5 + 52) & 0x10) == 0)
      {
        return this;
      }

      goto LABEL_12;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_6;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 36), a2, a4);
  v7 = *(v5 + 52);
  if ((v7 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v7 & 0x10) == 0)
  {
    return this;
  }

LABEL_12:
  v8 = *(v5 + 44);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *this)
{
  v2 = *(this + 13);
  if ((v2 & 0x1FE) == 0)
  {
    v3 = 0;
    goto LABEL_28;
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(this + 8);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 4) == 0)
      {
        goto LABEL_17;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 13);
      if ((v2 & 4) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 4) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((v2 & 4) == 0)
    {
      goto LABEL_17;
    }
  }

  v5 = *(this + 9);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v6 = 2;
  }

  v3 += v6;
LABEL_17:
  if ((v2 & 8) == 0)
  {
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

  v7 = *(this + 10);
  if (v7 >= 0x80)
  {
    v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 13);
  }

  else
  {
    v8 = 2;
  }

  v3 += v8;
  if ((v2 & 0x10) != 0)
  {
LABEL_24:
    v9 = *(this + 11);
    if (v9 >= 0x80)
    {
      v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
    }

    else
    {
      v10 = 2;
    }

    v3 += v10;
  }

LABEL_28:
  v11 = *(this + 4);
  result = (v11 + v3);
  if (v11 >= 1)
  {
    v13 = *(this + 1);
    do
    {
      v14 = *(*v13 + 28);
      if (*(*v13 + 28))
      {
        if ((v14 & 2) != 0)
        {
          v14 = ((v14 << 31 >> 31) & 9) + 9;
        }

        else
        {
          v14 = (v14 << 31 >> 31) & 9;
        }
      }

      *(*v13 + 24) = v14;
      result = (result + v14 + 1);
      v13 += 8;
      --v11;
    }

    while (v11);
  }

  *(this + 12) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::Swap(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *this, CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch *a2)
{
  if (a2 != this)
  {
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v4 = *(v3 + 8);
    *(v3 + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    v5 = *(v3 + 9);
    *(v3 + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    v6 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
    v7 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v7;
    v8 = *(v3 + 13);
    *(v3 + 13) = *(a2 + 13);
    *(a2 + 13) = v8;
    v9 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v9;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::GEOMapFeatureTropicalSavannaBoundingBox(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *a2)
{
  *this = &unk_1F4CDB9B8;
  *(this + 8) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::MergeFrom(this, a2);
  return this;
}

void sub_1D0CF5AAC(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 5);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  sub_1D0CFF374((this + 40), a2 + 40);
  LOBYTE(v5) = *(a2 + 68);
  if (v5)
  {
    if (*(a2 + 68))
    {
      result = *(a2 + 1);
      *(this + 17) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 17);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 68) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 17) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 17);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

LABEL_12:
    result = *(a2 + 3);
    *(this + 17) |= 4u;
    *(this + 3) = result;
    if ((*(a2 + 17) & 8) == 0)
    {
      return result;
    }

LABEL_8:
    result = *(a2 + 4);
    *(this + 17) |= 8u;
    *(this + 4) = result;
  }

  return result;
}

void sub_1D0CF5BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::~GEOMapFeatureTropicalSavannaBoundingBox(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *this)
{
  *this = &unk_1F4CDB9B8;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  sub_1D0B8CD0C(this + 5);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::~GEOMapFeatureTropicalSavannaBoundingBox(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::Clear(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *this)
{
  if (*(this + 68))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  result = sub_1D0C77384(this + 40);
  *(this + 17) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if (v7 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_32;
        }

        if (v6 == 4)
        {
          if (v7 != 1)
          {
            goto LABEL_21;
          }

LABEL_36:
          *v24 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v24) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = *v24;
          *(this + 17) |= 8u;
          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 42)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v6 != 5 || v7 != 2)
          {
            goto LABEL_21;
          }

          while (1)
          {
            v12 = *(this + 13);
            v13 = *(this + 12);
            if (v13 >= v12)
            {
              if (v12 == *(this + 14))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40));
                v12 = *(this + 13);
              }

              *(this + 13) = v12 + 1;
              operator new();
            }

            v14 = *(this + 5);
            *(this + 12) = v13 + 1;
            v15 = *(v14 + 8 * v13);
            v24[0] = 0;
            v16 = *(a2 + 1);
            if (v16 >= *(a2 + 2) || *v16 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v24))
              {
                return 0;
              }
            }

            else
            {
              v24[0] = *v16;
              *(a2 + 1) = v16 + 1;
            }

            v17 = *(a2 + 14);
            v18 = *(a2 + 15);
            *(a2 + 14) = v17 + 1;
            if (v17 >= v18)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::MergePartialFromCodedStream(v15, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v19 = *(a2 + 14);
            v20 = __OFSUB__(v19, 1);
            v21 = v19 - 1;
            if (v21 < 0 == v20)
            {
              *(a2 + 14) = v21;
            }

            v11 = *(a2 + 1);
            v22 = *(a2 + 2);
            if (v11 >= v22 || *v11 != 42)
            {
              break;
            }

LABEL_39:
            *(a2 + 1) = v11 + 1;
          }

          if (v11 == v22 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_21;
      }

      *v24 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v24) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v24;
      *(this + 17) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
LABEL_28:
        *v24 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v24) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v24;
        *(this + 17) |= 2u;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 25)
        {
          *(a2 + 1) = v9 + 1;
LABEL_32:
          *v24 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v24) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = *v24;
          *(this + 17) |= 4u;
          v10 = *(a2 + 1);
          if (v10 < *(a2 + 2) && *v10 == 33)
          {
            *(a2 + 1) = v10 + 1;
            goto LABEL_36;
          }
        }
      }
    }

    if (v6 == 2 && v7 == 1)
    {
      goto LABEL_28;
    }

LABEL_21:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 24), a3);
  if ((*(v5 + 68) & 8) != 0)
  {
LABEL_5:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
  }

LABEL_6:
  if (*(v5 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, *(*(v5 + 40) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 48));
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *this)
{
  v1 = *(this + 68);
  if (*(this + 68))
  {
    v2 = (v1 << 31 >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 8) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  v3 = *(this + 12);
  v4 = (v3 + v1);
  if (v3 >= 1)
  {
    v5 = *(this + 5);
    do
    {
      v6 = *(*v5 + 28);
      if (*(*v5 + 28))
      {
        if ((v6 & 2) != 0)
        {
          v6 = ((v6 << 31 >> 31) & 9) + 9;
        }

        else
        {
          v6 = (v6 << 31 >> 31) & 9;
        }
      }

      *(*v5 + 24) = v6;
      v4 = (v4 + v6 + 1);
      v5 += 8;
      --v3;
    }

    while (v3);
  }

  *(this + 16) = v4;
  return v4;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::MergeFrom(this, a2);
  }

  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::Swap(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *this, CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    v5 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v5;
    v6 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v6;
    v7 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v7;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v8 = *(v3 + 17);
    *(v3 + 17) = *(a2 + 17);
    *(a2 + 17) = v8;
    v9 = *(v3 + 16);
    *(v3 + 16) = *(a2 + 16);
    *(a2 + 16) = v9;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::SharedCtor(uint64_t this)
{
  *(this + 12) = 0;
  *(this + 8) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::GEOMapFeatureTropicalSavanna_TreeFeatures(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures *a2)
{
  *this = &unk_1F4CDBA30;
  *(this + 12) = 0;
  *(this + 4) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 16);
  if (v4)
  {
    if (*(a2 + 16))
    {
      v5 = *(a2 + 8);
      *(this + 4) |= 1u;
      *(this + 8) = v5;
      v4 = *(a2 + 4);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 9);
      *(this + 4) |= 2u;
      *(this + 9) = v6;
    }
  }
}

void sub_1D0CF656C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::~GEOMapFeatureTropicalSavanna_TreeFeatures(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures *this)
{
  *this = &unk_1F4CDBA30;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::~GEOMapFeatureTropicalSavanna_TreeFeatures(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 0;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v15 = 0;
      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, (v8 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
        if (!result)
        {
          return result;
        }

        v8 = v15;
        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
      }

      else
      {
        v9 = v7 + 1;
        *(a2 + 1) = v9;
      }

      *(this + 8) = v8 != 0;
      *(this + 4) |= 1u;
      if (v9 < v6 && *v9 == 16)
      {
        v10 = v9 + 1;
        *(a2 + 1) = v10;
LABEL_22:
        v14 = 0;
        if (v10 >= v6 || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
          if (!result)
          {
            return result;
          }

          v11 = v14;
          v12 = *(a2 + 1);
          v6 = *(a2 + 2);
        }

        else
        {
          v12 = v10 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 9) = v11 != 0;
        *(this + 4) |= 2u;
        if (v12 == v6 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v6 = *(a2 + 2);
      goto LABEL_22;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 16);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(1, *(this + 8), a2, a4);
    v6 = *(v5 + 16);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 9);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, v7, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures *this)
{
  if (*(this + 4))
  {
    v1 = 2 * (*(this + 4) & 1) + (*(this + 4) & 2u);
  }

  else
  {
    v1 = 0;
  }

  *(this + 3) = v1;
  return v1;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v5;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna *this)
{
  *(this + 1) = 0;
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::GEOMapFeatureTropicalSavanna(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna *a2)
{
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  *this = &unk_1F4CDBAA8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::MergeFrom(this, a2);
  return this;
}

void sub_1D0CF6B00(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
  }

  v4 = *(this + 6);
  v5 = *(a2 + 6);
  v6 = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  LODWORD(v7) = *(a2 + 6);
  if (v7 >= 1)
  {
    v8 = 0;
    do
    {
      if (v8 >= v7)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v22);
      }

      v9 = *(*(a2 + 2) + 8 * v8);
      v10 = *(this + 7);
      v11 = *(this + 6);
      if (v11 >= v10)
      {
        if (v10 == *(this + 8))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
          v10 = *(this + 7);
        }

        *(this + 7) = v10 + 1;
        operator new();
      }

      v12 = *(this + 2);
      *(this + 6) = v11 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::MergeFrom(*(v12 + 8 * v11), v9);
      ++v8;
      v7 = *(a2 + 6);
    }

    while (v8 < v7);
  }

  LOBYTE(v13) = *(a2 + 76);
  if (!v13)
  {
    return;
  }

  if (*(a2 + 76))
  {
    *(this + 19) |= 1u;
    v15 = *(this + 1);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 1);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v6);
      v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::MergeFrom(v15, v16);
    v13 = *(a2 + 19);
    if ((v13 & 4) == 0)
    {
LABEL_16:
      if ((v13 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_28;
    }
  }

  else if ((*(a2 + 76) & 4) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a2 + 5);
  *(this + 19) |= 4u;
  *(this + 5) = v17;
  v13 = *(a2 + 19);
  if ((v13 & 8) == 0)
  {
LABEL_17:
    if ((v13 & 0x10) == 0)
    {
      goto LABEL_18;
    }

LABEL_30:
    v19 = *(a2 + 13);
    *(this + 19) |= 0x10u;
    *(this + 13) = v19;
    v13 = *(a2 + 19);
    if ((v13 & 0x20) == 0)
    {
LABEL_19:
      if ((v13 & 0x40) == 0)
      {
        return;
      }

      goto LABEL_20;
    }

    goto LABEL_31;
  }

LABEL_28:
  v18 = *(a2 + 12);
  if (v18 >= 4)
  {
    __assert_rtn("set_tree_type", "CoreNavigationCLPPrivateDataShared.pb.h", 26853, "::CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeType_IsValid(value)");
  }

  *(this + 19) |= 8u;
  *(this + 12) = v18;
  v13 = *(a2 + 19);
  if ((v13 & 0x10) != 0)
  {
    goto LABEL_30;
  }

LABEL_18:
  if ((v13 & 0x20) == 0)
  {
    goto LABEL_19;
  }

LABEL_31:
  *(this + 19) |= 0x20u;
  v20 = *(this + 7);
  if (!v20)
  {
    operator new();
  }

  v21 = *(a2 + 7);
  if (!v21)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v6);
    v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 56);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::MergeFrom(v20, v21);
  if ((*(a2 + 19) & 0x40) != 0)
  {
LABEL_20:
    v14 = *(a2 + 8);
    *(this + 19) |= 0x40u;
    *(this + 8) = v14;
  }
}

void sub_1D0CF6EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::~GEOMapFeatureTropicalSavanna(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna *this)
{
  *this = &unk_1F4CDBAA8;
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::SharedDtor(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::~GEOMapFeatureTropicalSavanna(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 7);
    if (v3)
    {
      v4 = *(*v3 + 8);

      v4();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 76);
  if (v2)
  {
    if (*(this + 76))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 68))
        {
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        this = sub_1D0C77384(v3 + 40);
        *(v3 + 68) = 0;
        v2 = *(v1 + 76);
      }
    }

    *(v1 + 40) = 0;
    *(v1 + 48) = 0;
    if ((v2 & 0x20) != 0)
    {
      v4 = *(v1 + 56);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 16) = 0;
      }
    }

    *(v1 + 64) = 0;
  }

  if (*(v1 + 24) >= 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(v1 + 16) + 8 * v5);
      this = (*(*v6 + 32))(v6);
      ++v5;
    }

    while (v5 < *(v1 + 24));
  }

  *(v1 + 24) = 0;
  *(v1 + 76) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
LABEL_1:
          v4 = *(a2 + 1);
          if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          v7 = TagFallback & 7;
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (TagFallback >> 3 > 5)
          {
            if (v6 != 6)
            {
              if (v6 == 7 && (TagFallback & 7) == 0)
              {
                v13 = *(a2 + 1);
                v12 = *(a2 + 2);
                goto LABEL_102;
              }

              goto LABEL_32;
            }

            if (v7 != 2)
            {
              goto LABEL_32;
            }

            v17 = *(this + 19);
LABEL_88:
            *(this + 19) = v17 | 0x20;
            v41 = *(this + 7);
            if (!v41)
            {
              operator new();
            }

            v50 = 0;
            v42 = *(a2 + 1);
            if (v42 >= *(a2 + 2) || *v42 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
              {
                return 0;
              }
            }

            else
            {
              v50 = *v42;
              *(a2 + 1) = v42 + 1;
            }

            v43 = *(a2 + 14);
            v44 = *(a2 + 15);
            *(a2 + 14) = v43 + 1;
            if (v43 >= v44)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna_TreeFeatures::MergePartialFromCodedStream(v41, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v45 = *(a2 + 14);
            v21 = __OFSUB__(v45, 1);
            v46 = v45 - 1;
            if (v46 < 0 == v21)
            {
              *(a2 + 14) = v46;
            }

            v47 = *(a2 + 1);
            v12 = *(a2 + 2);
            if (v47 < v12 && *v47 == 56)
            {
              v13 = v47 + 1;
              *(a2 + 1) = v13;
LABEL_102:
              if (v13 >= v12 || (v48 = *v13, v48 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 8);
                if (!result)
                {
                  return result;
                }

                v49 = *(a2 + 1);
                v12 = *(a2 + 2);
              }

              else
              {
                *(this + 8) = v48;
                v49 = v13 + 1;
                *(a2 + 1) = v49;
              }

              *(this + 19) |= 0x40u;
              if (v49 == v12 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }
          }

          else
          {
            if (v6 != 4)
            {
              if (v6 == 5 && (TagFallback & 7) == 0)
              {
                v9 = *(a2 + 1);
                v8 = *(a2 + 2);
                goto LABEL_80;
              }

              goto LABEL_32;
            }

            if ((TagFallback & 7) != 0)
            {
              goto LABEL_32;
            }

            v16 = *(a2 + 1);
            v10 = *(a2 + 2);
LABEL_70:
            v50 = 0;
            if (v16 >= v10 || (v37 = *v16, (v37 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50);
              if (!result)
              {
                return result;
              }

              v37 = v50;
            }

            else
            {
              *(a2 + 1) = v16 + 1;
            }

            if (v37 <= 3)
            {
              *(this + 19) |= 8u;
              *(this + 12) = v37;
            }

            v38 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v38 < v8 && *v38 == 40)
            {
              v9 = v38 + 1;
              *(a2 + 1) = v9;
LABEL_80:
              if (v9 >= v8 || (v39 = *v9, v39 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
                if (!result)
                {
                  return result;
                }

                v40 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                *(this + 13) = v39;
                v40 = v9 + 1;
                *(a2 + 1) = v40;
              }

              v17 = *(this + 19) | 0x10;
              *(this + 19) = v17;
              if (v40 < v8 && *v40 == 50)
              {
                *(a2 + 1) = v40 + 1;
                goto LABEL_88;
              }
            }
          }
        }

        if (v6 != 1)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_32;
        }

        *(this + 19) |= 1u;
        v14 = *(this + 1);
        if (!v14)
        {
          operator new();
        }

        v50 = 0;
        v15 = *(a2 + 1);
        if (v15 >= *(a2 + 2) || *v15 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
          {
            return 0;
          }
        }

        else
        {
          v50 = *v15;
          *(a2 + 1) = v15 + 1;
        }

        v18 = *(a2 + 14);
        v19 = *(a2 + 15);
        *(a2 + 14) = v18 + 1;
        if (v18 >= v19)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::MergePartialFromCodedStream(v14, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v20 = *(a2 + 14);
        v21 = __OFSUB__(v20, 1);
        v22 = v20 - 1;
        if (v22 < 0 == v21)
        {
          *(a2 + 14) = v22;
        }

        v23 = *(a2 + 1);
        if (v23 < *(a2 + 2) && *v23 == 18)
        {
          while (1)
          {
            *(a2 + 1) = v23 + 1;
LABEL_44:
            v24 = *(this + 7);
            v25 = *(this + 6);
            if (v25 >= v24)
            {
              if (v24 == *(this + 8))
              {
                wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
                v24 = *(this + 7);
              }

              *(this + 7) = v24 + 1;
              operator new();
            }

            v26 = *(this + 2);
            *(this + 6) = v25 + 1;
            v27 = *(v26 + 8 * v25);
            v50 = 0;
            v28 = *(a2 + 1);
            if (v28 >= *(a2 + 2) || *v28 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v50))
              {
                return 0;
              }
            }

            else
            {
              v50 = *v28;
              *(a2 + 1) = v28 + 1;
            }

            v29 = *(a2 + 14);
            v30 = *(a2 + 15);
            *(a2 + 14) = v29 + 1;
            if (v29 >= v30)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::MergePartialFromCodedStream(v27, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v31 = *(a2 + 14);
            v21 = __OFSUB__(v31, 1);
            v32 = v31 - 1;
            if (v32 < 0 == v21)
            {
              *(a2 + 14) = v32;
            }

            v23 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v23 >= v10)
            {
              break;
            }

            v33 = *v23;
            if (v33 != 18)
            {
              if (v33 != 24)
              {
                goto LABEL_1;
              }

              v11 = v23 + 1;
              *(a2 + 1) = v11;
              goto LABEL_62;
            }
          }
        }
      }

      if (v6 == 2)
      {
        if (v7 != 2)
        {
          break;
        }

        goto LABEL_44;
      }

      if (v6 != 3 || (TagFallback & 7) != 0)
      {
        break;
      }

      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
LABEL_62:
      if (v11 >= v10 || (v34 = *v11, v34 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
        if (!result)
        {
          return result;
        }

        v35 = *(a2 + 1);
        v10 = *(a2 + 2);
      }

      else
      {
        *(this + 5) = v34;
        v35 = v11 + 1;
        *(a2 + 1) = v35;
      }

      *(this + 19) |= 4u;
      if (v35 < v10 && *v35 == 32)
      {
        v16 = v35 + 1;
        *(a2 + 1) = v16;
        goto LABEL_70;
      }
    }

LABEL_32:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 76))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  v8 = *(v5 + 76);
  if ((v8 & 4) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 40), a2, a4);
    v8 = *(v5 + 76);
    if ((v8 & 8) == 0)
    {
LABEL_10:
      if ((v8 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }
  }

  else if ((v8 & 8) == 0)
  {
    goto LABEL_10;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 48), a2, a4);
  v8 = *(v5 + 76);
  if ((v8 & 0x10) == 0)
  {
LABEL_11:
    if ((v8 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, *(v5 + 52), a2, a4);
  v8 = *(v5 + 76);
  if ((v8 & 0x20) == 0)
  {
LABEL_12:
    if ((v8 & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_20;
  }

LABEL_17:
  v9 = *(v5 + 56);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  if ((*(v5 + 76) & 0x40) != 0)
  {
LABEL_20:
    v10 = *(v5 + 64);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(7, v10, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::ByteSize(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 76);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_18;
  }

  if ((*(this + 76) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 76) & 4) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v1 + 40));
    v3 += this + 1;
    v2 = *(v1 + 76);
    goto LABEL_13;
  }

  v4 = *(this + 8);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 8);
  }

  v5 = CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBoundingBox::ByteSize(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    this = 1;
  }

  v3 = v6 + this + 1;
  v2 = *(v1 + 76);
  if ((v2 & 4) != 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  if ((v2 & 8) != 0)
  {
    this = *(v1 + 48);
    if ((this & 0x80000000) != 0)
    {
      v14 = 11;
    }

    else if (this >= 0x80)
    {
      this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
      v14 = this + 1;
      v2 = *(v1 + 76);
    }

    else
    {
      v14 = 2;
    }

    v3 += v14;
    if ((v2 & 0x10) == 0)
    {
LABEL_15:
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_35;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  this = *(v1 + 52);
  if (this >= 0x80)
  {
    this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(this);
    v15 = this + 1;
    v2 = *(v1 + 76);
  }

  else
  {
    v15 = 2;
  }

  v3 += v15;
  if ((v2 & 0x20) == 0)
  {
LABEL_16:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_35:
  v16 = *(v1 + 56);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::default_instance_ + 56);
  }

  if (*(v16 + 16))
  {
    v17 = 2 * (*(v16 + 16) & 1) + (*(v16 + 16) & 2);
  }

  else
  {
    v17 = 0;
  }

  *(v16 + 12) = v17;
  v3 += v17 + 2;
  if ((*(v1 + 76) & 0x40) != 0)
  {
LABEL_17:
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(v1 + 64)) + 1;
  }

LABEL_18:
  v7 = *(v1 + 24);
  v8 = (v7 + v3);
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavannaBranch::ByteSize(*(*(v1 + 16) + 8 * v9));
      v11 = v10;
      if (v10 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      }

      else
      {
        v12 = 1;
      }

      v8 = (v11 + v8 + v12);
      ++v9;
    }

    while (v9 < *(v1 + 24));
  }

  *(v1 + 72) = v8;
  return v8;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::Swap(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna *this, CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 5);
    *(v3 + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    LODWORD(v5) = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v5;
    LODWORD(v5) = *(v3 + 13);
    *(v3 + 13) = *(a2 + 13);
    *(a2 + 13) = v5;
    v6 = *(v3 + 7);
    v7 = *(v3 + 8);
    v8 = *(a2 + 8);
    *(v3 + 7) = *(a2 + 7);
    *(v3 + 8) = v8;
    *(a2 + 7) = v6;
    *(a2 + 8) = v7;
    LODWORD(v6) = *(v3 + 19);
    *(v3 + 19) = *(a2 + 19);
    *(a2 + 19) = v6;
    LODWORD(v6) = *(v3 + 18);
    *(v3 + 18) = *(a2 + 18);
    *(a2 + 18) = v6;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::SharedCtor(uint64_t this)
{
  *(this + 44) = 0;
  *(this + 8) = 0;
  *(this + 40) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::GEOMapTropicalSavannaData(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *a2)
{
  *(this + 44) = 0;
  *(this + 40) = 0;
  *this = &unk_1F4CDBB20;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::MergeFrom(this, a2);
  return this;
}

void sub_1D0CF7D38(_Unwind_Exception *a1)
{
  sub_1D0B8CD0C(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  sub_1D0CFF4F4((this + 16), a2 + 16);
  LOBYTE(v5) = *(a2 + 48);
  if (v5)
  {
    if (*(a2 + 48))
    {
      *(this + 12) |= 1u;
      v6 = *(this + 1);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 1);
      if (!v7)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v4);
        v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
      v5 = *(a2 + 12);
    }

    if ((v5 & 4) != 0)
    {
      v8 = *(a2 + 40);
      *(this + 12) |= 4u;
      *(this + 40) = v8;
    }
  }
}

void sub_1D0CF7E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::~GEOMapTropicalSavannaData(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *this)
{
  *this = &unk_1F4CDBB20;
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::SharedDtor(this);
  sub_1D0B8CD0C(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::~GEOMapTropicalSavannaData(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::Clear(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *this)
{
  if (*(this + 48))
  {
    if (*(this + 48))
    {
      v2 = *(this + 1);
      if (v2)
      {
        if (*(v2 + 36))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 36) = 0;
      }
    }

    *(this + 40) = 0;
  }

  result = sub_1D0C77384(this + 16);
  *(this + 12) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v6 = TagFallback >> 3;
      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v6 == 2)
      {
        if (v7 != 2)
        {
          goto LABEL_18;
        }

LABEL_31:
        v18 = *(this + 7);
        v19 = *(this + 6);
        if (v19 >= v18)
        {
          if (v18 == *(this + 8))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
            v18 = *(this + 7);
          }

          *(this + 7) = v18 + 1;
          operator new();
        }

        v20 = *(this + 2);
        *(this + 6) = v19 + 1;
        v21 = *(v20 + 8 * v19);
        v33 = 0;
        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2) || *v22 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33))
          {
            return 0;
          }
        }

        else
        {
          v33 = *v22;
          *(a2 + 1) = v22 + 1;
        }

        v23 = *(a2 + 14);
        v24 = *(a2 + 15);
        *(a2 + 14) = v23 + 1;
        if (v23 >= v24)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::MergePartialFromCodedStream(v21, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v25 = *(a2 + 14);
        v15 = __OFSUB__(v25, 1);
        v26 = v25 - 1;
        if (v26 < 0 == v15)
        {
          *(a2 + 14) = v26;
        }

        v17 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v17 < v10)
        {
          v27 = *v17;
          if (v27 == 18)
          {
            goto LABEL_52;
          }

          if (v27 == 24)
          {
            v11 = v17 + 1;
            *(a2 + 1) = v11;
LABEL_49:
            v31 = 0;
            if (v11 >= v10 || (v28 = *v11, (v28 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v31);
              if (!result)
              {
                return result;
              }

              v28 = v31;
              v29 = *(a2 + 1);
              v10 = *(a2 + 2);
            }

            else
            {
              v29 = v11 + 1;
              *(a2 + 1) = v29;
            }

            *(this + 40) = v28 != 0;
            *(this + 12) |= 4u;
            if (v29 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }
      }

      else
      {
        if (v6 != 1 || v7 != 2)
        {
          goto LABEL_18;
        }

        *(this + 12) |= 1u;
        v8 = *(this + 1);
        if (!v8)
        {
          operator new();
        }

        v32 = 0;
        v9 = *(a2 + 1);
        if (v9 >= *(a2 + 2) || *v9 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v32))
          {
            return 0;
          }
        }

        else
        {
          v32 = *v9;
          *(a2 + 1) = v9 + 1;
        }

        v12 = *(a2 + 14);
        v13 = *(a2 + 15);
        *(a2 + 14) = v12 + 1;
        if (v12 >= v13)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v14 = *(a2 + 14);
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (v16 < 0 == v15)
        {
          *(a2 + 14) = v16;
        }

        v17 = *(a2 + 1);
        if (v17 < *(a2 + 2) && *v17 == 18)
        {
LABEL_52:
          *(a2 + 1) = v17 + 1;
          goto LABEL_31;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      goto LABEL_49;
    }

LABEL_18:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 48))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v6, a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 24));
  }

  if ((*(v5 + 48) & 4) != 0)
  {
    v8 = *(v5 + 40);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(3, v8, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::default_instance_ + 8);
      }

      v6 = *(v5 + 36);
      if (*(v5 + 36))
      {
        v7 = (v6 << 31 >> 31) & 9;
        if ((v6 & 2) != 0)
        {
          v7 += 9;
        }

        if ((v6 & 4) != 0)
        {
          v6 = v7 + 9;
        }

        else
        {
          v6 = v7;
        }
      }

      *(v5 + 32) = v6;
      v3 = v6 + 2;
      v2 = *(this + 12);
    }

    else
    {
      v3 = 0;
    }

    v4 = ((v2 >> 1) & 2) + v3;
  }

  else
  {
    v4 = 0;
  }

  v8 = *(this + 6);
  v9 = v8 + v4;
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::ByteSize(*(*(this + 2) + 8 * v10));
      v12 = v11;
      if (v11 >= 0x80)
      {
        v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
      }

      else
      {
        v13 = 1;
      }

      v9 = (v12 + v9 + v13);
      ++v10;
    }

    while (v10 < *(this + 6));
  }

  *(this + 11) = v9;
  return v9;
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *this, const CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::Swap(CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *this, CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 40);
    *(v3 + 40) = *(a2 + 40);
    *(a2 + 40) = v5;
    v6 = *(v3 + 12);
    *(v3 + 12) = *(a2 + 12);
    *(a2 + 12) = v6;
    v7 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v7;
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation *CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::WatchOrientation(CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation *this, const CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDBB98;
  CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation *this, const CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      if (v5 >= 4)
      {
        __assert_rtn("set_wrist_orientation", "CoreNavigationCLPPrivateDataShared.pb.h", 27059, "::CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation_WatchOrientationType_IsValid(value)");
      }

      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 4)
      {
        __assert_rtn("set_crown_orientation", "CoreNavigationCLPPrivateDataShared.pb.h", 27082, "::CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation_WatchOrientationType_IsValid(value)");
      }

      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }
}

void sub_1D0CF8964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::~WatchOrientation(CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation *this)
{
  *this = &unk_1F4CDBB98;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::~WatchOrientation(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v14 = 0;
      v6 = *(a2 + 1);
      if (v6 >= *(a2 + 2) || (v7 = *v6, (v7 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v14);
        if (!result)
        {
          return result;
        }

        v7 = v14;
      }

      else
      {
        *(a2 + 1) = v6 + 1;
      }

      if (v7 <= 3)
      {
        *(this + 5) |= 1u;
        *(this + 2) = v7;
      }

      v10 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v10 < v8 && *v10 == 16)
      {
        v9 = v10 + 1;
        *(a2 + 1) = v9;
LABEL_24:
        v13 = 0;
        if (v9 >= v8 || (v11 = *v9, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v13);
          if (!result)
          {
            return result;
          }

          v11 = v13;
        }

        else
        {
          *(a2 + 1) = v9 + 1;
        }

        if (v11 <= 3)
        {
          *(this + 5) |= 2u;
          *(this + 3) = v11;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if ((TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_24;
    }

LABEL_13:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, v7, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation *this)
{
  v2 = *(this + 20);
  if (v2)
  {
    if (*(this + 20))
    {
      v4 = *(this + 2);
      if ((v4 & 0x80000000) != 0)
      {
        v3 = 11;
        if ((v2 & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v4 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        if ((*(this + 5) & 2) == 0)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((*(this + 20) & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    v5 = *(this + 3);
    if ((v5 & 0x80000000) != 0)
    {
      v6 = 11;
    }

    else if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    }

    else
    {
      v6 = 2;
    }

    v3 = (v6 + v3);
  }

  else
  {
    v3 = 0;
  }

LABEL_19:
  *(this + 4) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation *this, const CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::MergeFrom(this, a2);
  }
}

CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation *CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::Swap(CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation *this, CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

void *CoreNavigation::CLP::LogEntry::PrivateData::WristState::SharedCtor(void *this)
{
  this[4] = 0;
  this[1] = 0;
  this[2] = 0;
  *(this + 23) = 0;
  return this;
}

CoreNavigation::CLP::LogEntry::PrivateData::WristState *CoreNavigation::CLP::LogEntry::PrivateData::WristState::WristState(CoreNavigation::CLP::LogEntry::PrivateData::WristState *this, const CoreNavigation::CLP::LogEntry::PrivateData::WristState *a2)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F4CDBC10;
  *(this + 23) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::WristState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WristState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WristState *this, const CoreNavigation::CLP::LogEntry::PrivateData::WristState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      *(this + 9) |= 1u;
      v5 = *(this + 1);
      if (!v5)
      {
        operator new();
      }

      v6 = *(a2 + 1);
      if (!v6)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::WristState::default_instance_ + 8);
      }

      CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v5, v6);
      v4 = *(a2 + 9);
    }

    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 4);
      if (v7 >= 4)
      {
        __assert_rtn("set_on_wrist", "CoreNavigationCLPPrivateDataShared.pb.h", 27151, "::CoreNavigation::CLP::LogEntry::PrivateData::WristState_WristStateType_IsValid(value)");
      }

      *(this + 9) |= 2u;
      *(this + 4) = v7;
      v4 = *(a2 + 9);
    }

    if ((v4 & 4) != 0)
    {
      v8 = *(a2 + 5);
      if (v8 >= 4)
      {
        __assert_rtn("set_on_wrist_sensor", "CoreNavigationCLPPrivateDataShared.pb.h", 27174, "::CoreNavigation::CLP::LogEntry::PrivateData::WristState_WristStateType_IsValid(value)");
      }

      *(this + 9) |= 4u;
      *(this + 5) = v8;
      v4 = *(a2 + 9);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 6);
      if (v9 >= 4)
      {
        __assert_rtn("set_on_wrist_confidence", "CoreNavigationCLPPrivateDataShared.pb.h", 27197, "::CoreNavigation::CLP::LogEntry::PrivateData::WristState_WristStateConfidenceType_IsValid(value)");
      }

      *(this + 9) |= 8u;
      *(this + 6) = v9;
      v4 = *(a2 + 9);
    }

    if ((v4 & 0x10) != 0)
    {
      v11 = *(a2 + 28);
      *(this + 9) |= 0x10u;
      *(this + 28) = v11;
      v4 = *(a2 + 9);
      if ((v4 & 0x20) == 0)
      {
LABEL_21:
        if ((v4 & 0x40) == 0)
        {
          return;
        }

        goto LABEL_22;
      }
    }

    else if ((v4 & 0x20) == 0)
    {
      goto LABEL_21;
    }

    v12 = *(a2 + 29);
    *(this + 9) |= 0x20u;
    *(this + 29) = v12;
    if ((*(a2 + 9) & 0x40) != 0)
    {
LABEL_22:
      v10 = *(a2 + 30);
      *(this + 9) |= 0x40u;
      *(this + 30) = v10;
    }
  }
}

void sub_1D0CF91B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WristState::~WristState(CoreNavigation::CLP::LogEntry::PrivateData::WristState *this)
{
  *this = &unk_1F4CDBC10;
  CoreNavigation::CLP::LogEntry::PrivateData::WristState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::WristState::~WristState(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WristState::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::WristState *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::WristState::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      v3 = *(*v2 + 8);

      v3();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WristState::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    if (*(this + 36))
    {
      v1 = *(this + 8);
      if (v1)
      {
        if (*(v1 + 36))
        {
          *(v1 + 8) = 0;
          *(v1 + 16) = 0;
          *(v1 + 24) = 0;
        }

        *(v1 + 36) = 0;
      }
    }

    *(this + 23) = 0;
    *(this + 16) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WristState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::WristState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 <= 3)
        {
          break;
        }

        if (TagFallback >> 3 > 5)
        {
          if (v6 == 6)
          {
            if ((TagFallback & 7) == 0)
            {
              v17 = *(a2 + 1);
              v8 = *(a2 + 2);
              goto LABEL_83;
            }
          }

          else if (v6 == 7 && (TagFallback & 7) == 0)
          {
            v12 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_91;
          }

          goto LABEL_32;
        }

        if (v6 == 4)
        {
          if ((TagFallback & 7) != 0)
          {
            goto LABEL_32;
          }

          v16 = *(a2 + 1);
          v15 = *(a2 + 2);
LABEL_65:
          v39 = 0;
          if (v16 >= v15 || (v31 = *v16, (v31 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
            if (!result)
            {
              return result;
            }

            v31 = v39;
          }

          else
          {
            *(a2 + 1) = v16 + 1;
          }

          if (v31 <= 3)
          {
            *(this + 9) |= 8u;
            *(this + 6) = v31;
          }

          v32 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v32 < v8 && *v32 == 40)
          {
            v9 = v32 + 1;
            *(a2 + 1) = v9;
LABEL_75:
            v39 = 0;
            if (v9 >= v8 || (v33 = *v9, (v33 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
              if (!result)
              {
                return result;
              }

              v33 = v39;
              v34 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v34 = v9 + 1;
              *(a2 + 1) = v34;
            }

            *(this + 28) = v33 != 0;
            *(this + 9) |= 0x10u;
            if (v34 < v8 && *v34 == 48)
            {
              v17 = v34 + 1;
              *(a2 + 1) = v17;
LABEL_83:
              v39 = 0;
              if (v17 >= v8 || (v35 = *v17, (v35 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                if (!result)
                {
                  return result;
                }

                v35 = v39;
                v36 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v36 = v17 + 1;
                *(a2 + 1) = v36;
              }

              *(this + 29) = v35 != 0;
              *(this + 9) |= 0x20u;
              if (v36 < v8 && *v36 == 56)
              {
                v12 = v36 + 1;
                *(a2 + 1) = v12;
LABEL_91:
                v39 = 0;
                if (v12 >= v8 || (v37 = *v12, (v37 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
                  if (!result)
                  {
                    return result;
                  }

                  v37 = v39;
                  v38 = *(a2 + 1);
                  v8 = *(a2 + 2);
                }

                else
                {
                  v38 = v12 + 1;
                  *(a2 + 1) = v38;
                }

                *(this + 30) = v37 != 0;
                *(this + 9) |= 0x40u;
                if (v38 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }
            }
          }
        }

        else
        {
          if (v6 == 5 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_75;
          }

LABEL_32:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }
      }

      if (v6 == 1)
      {
        break;
      }

      if (v6 != 2)
      {
        if (v6 != 3 || (TagFallback & 7) != 0)
        {
          goto LABEL_32;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_55;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_32;
      }

      v19 = *(a2 + 1);
      v18 = *(a2 + 2);
LABEL_45:
      v39 = 0;
      if (v19 >= v18 || (v26 = *v19, (v26 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
        if (!result)
        {
          return result;
        }

        v26 = v39;
      }

      else
      {
        *(a2 + 1) = v19 + 1;
      }

      if (v26 <= 3)
      {
        *(this + 9) |= 2u;
        *(this + 4) = v26;
      }

      v28 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v28 < v10 && *v28 == 24)
      {
        v11 = v28 + 1;
        *(a2 + 1) = v11;
LABEL_55:
        v39 = 0;
        if (v11 >= v10 || (v29 = *v11, (v29 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39);
          if (!result)
          {
            return result;
          }

          v29 = v39;
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v29 <= 3)
        {
          *(this + 9) |= 4u;
          *(this + 5) = v29;
        }

        v30 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v30 < v15 && *v30 == 32)
        {
          v16 = v30 + 1;
          *(a2 + 1) = v16;
          goto LABEL_65;
        }
      }
    }

    if (v7 != 2)
    {
      goto LABEL_32;
    }

    *(this + 9) |= 1u;
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    v39 = 0;
    v14 = *(a2 + 1);
    if (v14 >= *(a2 + 2) || *v14 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v39))
      {
        return 0;
      }
    }

    else
    {
      v39 = *v14;
      *(a2 + 1) = v14 + 1;
    }

    v20 = *(a2 + 14);
    v21 = *(a2 + 15);
    *(a2 + 14) = v20 + 1;
    if (v20 >= v21)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v13, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v22 = *(a2 + 14);
    v23 = __OFSUB__(v22, 1);
    v24 = v22 - 1;
    if (v24 < 0 == v23)
    {
      *(a2 + 14) = v24;
    }

    v25 = *(a2 + 1);
    v18 = *(a2 + 2);
    if (v25 < v18 && *v25 == 16)
    {
      v19 = v25 + 1;
      *(a2 + 1) = v19;
      goto LABEL_45;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WristState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::WristState::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 20), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 29), a2, a4);
    if ((*(v5 + 36) & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, *(v5 + 28), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 0x20) != 0)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v6 & 0x40) == 0)
  {
    return this;
  }

LABEL_17:
  v8 = *(v5 + 30);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, v8, a2, a4);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WristState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::WristState *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 1);
      if (!v5)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
        v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::WristState::default_instance_ + 8);
      }

      v6 = *(v5 + 36);
      if (*(v5 + 36))
      {
        v7 = (v6 << 31 >> 31) & 9;
        if ((v6 & 2) != 0)
        {
          v7 += 9;
        }

        if ((v6 & 4) != 0)
        {
          v6 = v7 + 9;
        }

        else
        {
          v6 = v7;
        }
      }

      *(v5 + 32) = v6;
      v3 = v6 + 2;
      v2 = *(this + 9);
      if ((v2 & 2) == 0)
      {
LABEL_21:
        if ((v2 & 4) != 0)
        {
          v10 = *(this + 5);
          if ((v10 & 0x80000000) != 0)
          {
            v11 = 11;
          }

          else if (v10 >= 0x80)
          {
            v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10) + 1;
            v2 = *(this + 9);
          }

          else
          {
            v11 = 2;
          }

          v3 += v11;
          if ((v2 & 8) == 0)
          {
            goto LABEL_36;
          }
        }

        else if ((v2 & 8) == 0)
        {
LABEL_36:
          result = ((v2 >> 3) & 2) + v3 + ((v2 >> 4) & 2) + ((v2 >> 5) & 2);
          goto LABEL_37;
        }

        v12 = *(this + 6);
        if ((v12 & 0x80000000) != 0)
        {
          v13 = 11;
        }

        else if (v12 >= 0x80)
        {
          v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12) + 1;
          v2 = *(this + 9);
        }

        else
        {
          v13 = 2;
        }

        v3 += v13;
        goto LABEL_36;
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
        goto LABEL_21;
      }
    }

    v8 = *(this + 4);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 11;
    }

    else if (v8 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      v2 = *(this + 9);
    }

    else
    {
      v9 = 2;
    }

    v3 += v9;
    goto LABEL_21;
  }

  result = 0;
LABEL_37:
  *(this + 8) = result;
  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WristState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WristState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::WristState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WristState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::WristState *this, const CoreNavigation::CLP::LogEntry::PrivateData::WristState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::WristState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WristState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::WristState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LOBYTE(v2) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v2;
    LOBYTE(v2) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v2;
    LOBYTE(v2) = *(this + 30);
    *(this + 30) = *(a2 + 30);
    *(a2 + 30) = v2;
    LODWORD(v2) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::WatchState::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::WatchState *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::WatchState *CoreNavigation::CLP::LogEntry::PrivateData::WatchState::WatchState(CoreNavigation::CLP::LogEntry::PrivateData::WatchState *this, const CoreNavigation::CLP::LogEntry::PrivateData::WatchState *a2)
{
  *this = &unk_1F4CDBC88;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::WatchState::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WatchState::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WatchState *this, const CoreNavigation::CLP::LogEntry::PrivateData::WatchState *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  LOBYTE(v4) = *(a2 + 40);
  if (!v4)
  {
    return;
  }

  if ((*(a2 + 40) & 1) == 0)
  {
    if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_14:
    v7 = *(a2 + 8);
    *(this + 10) |= 2u;
    *(this + 8) = v7;
    v4 = *(a2 + 10);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

      goto LABEL_20;
    }

    goto LABEL_15;
  }

  *(this + 10) |= 1u;
  v5 = *(this + 1);
  if (!v5)
  {
    operator new();
  }

  v6 = *(a2 + 1);
  if (!v6)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 8);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v5, v6);
  v4 = *(a2 + 10);
  if ((v4 & 2) != 0)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v4 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  *(this + 10) |= 4u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 16);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::MergeFrom(v8, v9);
  if ((*(a2 + 10) & 8) != 0)
  {
LABEL_20:
    *(this + 10) |= 8u;
    v10 = *(this + 3);
    if (!v10)
    {
      operator new();
    }

    v11 = *(a2 + 3);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 24);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::WristState::MergeFrom(v10, v11);
  }
}

void sub_1D0CF9F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WatchState::~WatchState(CoreNavigation::CLP::LogEntry::PrivateData::WatchState *this)
{
  *this = &unk_1F4CDBC88;
  CoreNavigation::CLP::LogEntry::PrivateData::WatchState::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::WatchState::~WatchState(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WatchState::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::WatchState *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      v5 = *(*v4 + 8);

      v5();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WatchState::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 40);
  if (v2)
  {
    if (*(this + 40))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 40);
      }
    }

    *(this + 32) = 0;
    if ((v2 & 4) != 0)
    {
      v4 = *(this + 16);
      if (v4)
      {
        if (*(v4 + 20))
        {
          *(v4 + 8) = 0;
        }

        *(v4 + 20) = 0;
        v2 = *(this + 40);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(this + 24);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::WristState::Clear(this);
      }
    }
  }

  *(v1 + 40) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WatchState::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::WatchState *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v4 = *(a2 + 1);
        if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v4 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v6 = TagFallback >> 3;
        v7 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v6 == 3)
        {
          if (v7 != 2)
          {
            goto LABEL_22;
          }

          v12 = *(this + 10);
LABEL_43:
          *(this + 10) = v12 | 4;
          v22 = *(this + 2);
          if (!v22)
          {
            operator new();
          }

          v35 = 0;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
            {
              return 0;
            }
          }

          else
          {
            v35 = *v23;
            *(a2 + 1) = v23 + 1;
          }

          v24 = *(a2 + 14);
          v25 = *(a2 + 15);
          *(a2 + 14) = v24 + 1;
          if (v24 >= v25)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v26 = *(a2 + 14);
          v16 = __OFSUB__(v26, 1);
          v27 = v26 - 1;
          if (v27 < 0 == v16)
          {
            *(a2 + 14) = v27;
          }

          v28 = *(a2 + 1);
          if (v28 < *(a2 + 2) && *v28 == 34)
          {
            *(a2 + 1) = v28 + 1;
            goto LABEL_57;
          }
        }

        else
        {
          if (v6 != 4 || v7 != 2)
          {
            goto LABEL_22;
          }

LABEL_57:
          *(this + 10) |= 8u;
          v29 = *(this + 3);
          if (!v29)
          {
            operator new();
          }

          v35 = 0;
          v30 = *(a2 + 1);
          if (v30 >= *(a2 + 2) || *v30 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
            {
              return 0;
            }
          }

          else
          {
            v35 = *v30;
            *(a2 + 1) = v30 + 1;
          }

          v31 = *(a2 + 14);
          v32 = *(a2 + 15);
          *(a2 + 14) = v31 + 1;
          if (v31 >= v32)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::WristState::MergePartialFromCodedStream(v29, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v33 = *(a2 + 14);
          v16 = __OFSUB__(v33, 1);
          v34 = v33 - 1;
          if (v34 < 0 == v16)
          {
            *(a2 + 14) = v34;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_22;
      }

      *(this + 10) |= 1u;
      v10 = *(this + 1);
      if (!v10)
      {
        operator new();
      }

      v35 = 0;
      v11 = *(a2 + 1);
      if (v11 >= *(a2 + 2) || *v11 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
        {
          return 0;
        }
      }

      else
      {
        v35 = *v11;
        *(a2 + 1) = v11 + 1;
      }

      v13 = *(a2 + 14);
      v14 = *(a2 + 15);
      *(a2 + 14) = v13 + 1;
      if (v13 >= v14)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v10, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v15 = *(a2 + 14);
      v16 = __OFSUB__(v15, 1);
      v17 = v15 - 1;
      if (v17 < 0 == v16)
      {
        *(a2 + 14) = v17;
      }

      v18 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v18 < v8 && *v18 == 16)
      {
        v9 = v18 + 1;
        *(a2 + 1) = v9;
LABEL_35:
        v35 = 0;
        if (v9 >= v8 || (v19 = *v9, (v19 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35);
          if (!result)
          {
            return result;
          }

          v19 = v35;
          v20 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v20 = v9 + 1;
          *(a2 + 1) = v20;
        }

        *(this + 8) = v19;
        v12 = *(this + 10) | 2;
        *(this + 10) = v12;
        if (v20 < v8 && *v20 == 26)
        {
          *(a2 + 1) = v20 + 1;
          goto LABEL_43;
        }
      }
    }

    if (v6 == 2 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_35;
    }

LABEL_22:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WatchState::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(2, *(v5 + 32), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_10:
  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((*(v5 + 40) & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 24);
    if (!v9)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 24);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WatchState::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::WatchState *this)
{
  LOBYTE(v2) = *(this + 40);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_36;
  }

  if ((*(this + 40) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 40) & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v4 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 8);
  }

  v5 = *(v4 + 36);
  if (*(v4 + 36))
  {
    v6 = (v5 << 31 >> 31) & 9;
    if ((v5 & 2) != 0)
    {
      v6 += 9;
    }

    if ((v5 & 4) != 0)
    {
      v5 = v6 + 9;
    }

    else
    {
      v5 = v6;
    }
  }

  *(v4 + 32) = v5;
  v3 = (v5 + 2);
  v2 = *(this + 10);
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v7 = *(this + 8);
    if ((v7 & 0x80000000) != 0)
    {
      v8 = 11;
    }

    else if (v7 >= 0x80)
    {
      v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
      v2 = *(this + 10);
    }

    else
    {
      v8 = 2;
    }

    v3 = (v8 + v3);
  }

LABEL_21:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_30;
  }

  v9 = *(this + 2);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 16);
  }

  v10 = CoreNavigation::CLP::LogEntry::PrivateData::WatchOrientation::ByteSize(v9);
  v11 = v10;
  if (v10 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
  }

  else
  {
    v12 = 1;
  }

  v3 = (v3 + v11 + v12 + 1);
  if ((*(this + 10) & 8) != 0)
  {
LABEL_30:
    v13 = *(this + 3);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_ + 24);
    }

    v14 = CoreNavigation::CLP::LogEntry::PrivateData::WristState::ByteSize(v13);
    v15 = v14;
    if (v14 >= 0x80)
    {
      v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
    }

    else
    {
      v16 = 1;
    }

    v3 = (v3 + v15 + v16 + 1);
  }

LABEL_36:
  *(this + 9) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::WatchState::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::WatchState *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::WatchState::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::WatchState::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::WatchState *this, const CoreNavigation::CLP::LogEntry::PrivateData::WatchState *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::WatchState::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::WatchState::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::WatchState *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v4;
    LODWORD(v4) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v4;
    LODWORD(v4) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v4;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference *this)
{
  result = 0.0;
  *(this + 1) = 0;
  v2 = MEMORY[0x1E69E5958];
  *(this + 2) = MEMORY[0x1E69E5958];
  *(this + 3) = v2;
  *(this + 4) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference *CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::PlaceInference(CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference *this, const CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference *a2)
{
  *this = &unk_1F4CDBD00;
  *(this + 1) = 0;
  v3 = MEMORY[0x1E69E5958];
  *(this + 2) = MEMORY[0x1E69E5958];
  *(this + 3) = v3;
  *(this + 4) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference *this, const CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 2);
      if (v5 >= 5)
      {
        __assert_rtn("set_user_specific_place_type", "CoreNavigationCLPPrivateDataShared.pb.h", 27442, "::CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference_UserSpecificPlaceType_IsValid(value)");
      }

      *(this + 9) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 9);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if (v6 >= 3)
      {
        __assert_rtn("set_place_type", "CoreNavigationCLPPrivateDataShared.pb.h", 27465, "::CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference_PlaceInferencePlaceType_IsValid(value)");
      }

      *(this + 9) |= 2u;
      *(this + 3) = v6;
      v4 = *(a2 + 9);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 9) |= 4u;
      v8 = *(this + 2);
      if (v8 == MEMORY[0x1E69E5958])
      {
        operator new();
      }

      std::string::operator=(v8, v7);
      v4 = *(a2 + 9);
    }

    if ((v4 & 8) != 0)
    {
      v9 = *(a2 + 3);
      *(this + 9) |= 8u;
      v10 = *(this + 3);
      if (v10 == MEMORY[0x1E69E5958])
      {
        operator new();
      }

      std::string::operator=(v10, v9);
    }
  }
}

void sub_1D0CFAD30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::~PlaceInference(CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference *this)
{
  *this = &unk_1F4CDBD00;
  CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::~PlaceInference(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference *this)
{
  v1 = this;
  v2 = *(this + 2);
  v3 = MEMORY[0x1E69E5958];
  if (v2 != MEMORY[0x1E69E5958] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x1D387ECA0](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 3);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x1D387ECA0](v5, 0x1012C40EC159624);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::Clear(uint64_t this)
{
  v1 = *(this + 36);
  if (v1)
  {
    *(this + 8) = 0;
    v2 = MEMORY[0x1E69E5958];
    if ((v1 & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3 != MEMORY[0x1E69E5958])
      {
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
    }

    if ((*(this + 36) & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4 != v2)
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
    }
  }

  *(this + 36) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x1E69E5958];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        v5 = *(a2 + 1);
        if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
        {
          TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
          *(a2 + 8) = TagFallback;
          if (!TagFallback)
          {
            return 1;
          }
        }

        else
        {
          *(a2 + 8) = TagFallback;
          *(a2 + 1) = v5 + 1;
          if (!TagFallback)
          {
            return 1;
          }
        }

        v7 = TagFallback >> 3;
        v8 = TagFallback & 7;
        if (TagFallback >> 3 <= 2)
        {
          break;
        }

        if (v7 != 3)
        {
          if (v7 == 4 && v8 == 2)
          {
            goto LABEL_47;
          }

          goto LABEL_21;
        }

        if (v8 != 2)
        {
          goto LABEL_21;
        }

LABEL_41:
        *(this + 9) |= 4u;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v16 = *(a2 + 1);
        if (v16 < *(a2 + 2) && *v16 == 34)
        {
          *(a2 + 1) = v16 + 1;
LABEL_47:
          *(this + 9) |= 8u;
          if (*(this + 3) == v4)
          {
            operator new();
          }

          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v7 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_21;
      }

      v19 = 0;
      v11 = *(a2 + 1);
      if (v11 >= *(a2 + 2) || (v12 = *v11, (v12 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19);
        if (!result)
        {
          return result;
        }

        v12 = v19;
      }

      else
      {
        *(a2 + 1) = v11 + 1;
      }

      if (v12 <= 4)
      {
        *(this + 9) |= 1u;
        *(this + 2) = v12;
      }

      v13 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v13 < v9 && *v13 == 16)
      {
        v10 = v13 + 1;
        *(a2 + 1) = v10;
LABEL_31:
        v18 = 0;
        if (v10 >= v9 || (v14 = *v10, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18);
          if (!result)
          {
            return result;
          }

          v14 = v18;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v14 <= 2)
        {
          *(this + 9) |= 2u;
          *(this + 3) = v14;
        }

        v15 = *(a2 + 1);
        if (v15 < *(a2 + 2) && *v15 == 26)
        {
          *(a2 + 1) = v15 + 1;
          goto LABEL_41;
        }
      }
    }

    if (v7 == 2 && (TagFallback & 7) == 0)
    {
      v10 = *(a2 + 1);
      v9 = *(a2 + 2);
      goto LABEL_31;
    }

LABEL_21:
    if (v8 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v7 = *(v5 + 16);
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
      if ((*(v5 + 36) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(2, *(v5 + 12), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_40;
  }

  if (*(this + 36))
  {
    v4 = *(this + 2);
    if ((v4 & 0x80000000) != 0)
    {
      v3 = 11;
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else if (v4 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
      v2 = *(this + 9);
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_19;
    }
  }

  v5 = *(this + 3);
  if ((v5 & 0x80000000) != 0)
  {
    v6 = 11;
  }

  else if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 9);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_19:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_31;
  }

  v7 = *(this + 2);
  v8 = *(v7 + 23);
  v9 = v8;
  v10 = *(v7 + 8);
  if ((v8 & 0x80u) == 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 0x80)
  {
    v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
    v8 = *(v7 + 23);
    v10 = *(v7 + 8);
    v2 = *(this + 9);
    v9 = *(v7 + 23);
  }

  else
  {
    v12 = 1;
  }

  if (v9 < 0)
  {
    v8 = v10;
  }

  v3 = (v3 + v12 + v8 + 1);
  if ((v2 & 8) != 0)
  {
LABEL_31:
    v13 = *(this + 3);
    v14 = *(v13 + 23);
    v15 = v14;
    v16 = *(v13 + 8);
    if ((v14 & 0x80u) == 0)
    {
      v17 = *(v13 + 23);
    }

    else
    {
      v17 = v16;
    }

    if (v17 >= 0x80)
    {
      v18 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
      v14 = *(v13 + 23);
      v16 = *(v13 + 8);
      v15 = *(v13 + 23);
    }

    else
    {
      v18 = 1;
    }

    if (v15 < 0)
    {
      v14 = v16;
    }

    v3 = (v3 + v18 + v14 + 1);
  }

LABEL_40:
  *(this + 8) = v3;
  return v3;
}

void CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::MergeFrom(this, lpsrc);
}

void CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference *this, const CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::MergeFrom(this, a2);
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::Swap(uint64_t this, CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
    LODWORD(v5) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *this)
{
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::RoutineVisit(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *this, const CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *a2)
{
  *this = &unk_1F4CDBD78;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::MergeFrom(this, a2);
  return this;
}

double CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *this, const CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v18);
  }

  LOBYTE(v5) = *(a2 + 68);
  if (!v5)
  {
    return result;
  }

  if (*(a2 + 68))
  {
    *(this + 17) |= 1u;
    v6 = *(this + 1);
    if (!v6)
    {
      operator new();
    }

    v7 = *(a2 + 1);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 8);
    }

    result = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v6, v7);
    v5 = *(a2 + 17);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((*(a2 + 68) & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 17) |= 2u;
  v8 = *(this + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 16);
  }

  result = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v8, v9);
  v5 = *(a2 + 17);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_23:
  *(this + 17) |= 4u;
  v10 = *(this + 3);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 3);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 24);
  }

  result = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v10, v11);
  v5 = *(a2 + 17);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_33:
    *(this + 17) |= 0x10u;
    v14 = *(this + 5);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 5);
    if (!v15)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v15 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::MergeFrom(v14, v15);
    v5 = *(a2 + 17);
    if ((v5 & 0x20) == 0)
    {
LABEL_10:
      if ((v5 & 0x40) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_28:
  *(this + 17) |= 8u;
  v12 = *(this + 4);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 4);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 32);
  }

  result = CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergeFrom(v12, v13);
  v5 = *(a2 + 17);
  if ((v5 & 0x10) != 0)
  {
    goto LABEL_33;
  }

LABEL_9:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_10;
  }

LABEL_38:
  *(this + 17) |= 0x20u;
  v16 = *(this + 6);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 6);
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 48);
  }

  result = CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergeFrom(v16, v17);
  if ((*(a2 + 17) & 0x40) != 0)
  {
LABEL_11:
    result = *(a2 + 7);
    *(this + 17) |= 0x40u;
    *(this + 7) = result;
  }

  return result;
}

void sub_1D0CFBA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::~RoutineVisit(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *this)
{
  *this = &unk_1F4CDBD78;
  CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::~RoutineVisit(this);

  JUMPOUT(0x1D387ECA0);
}

void CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::SharedDtor(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *this)
{
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
  if (CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 2);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 4);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 5);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 6);
    if (v7)
    {
      v8 = *(*v7 + 8);

      v8();
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::Clear(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 68);
  if (v2)
  {
    if (*(this + 68))
    {
      v3 = *(this + 8);
      if (v3)
      {
        if (*(v3 + 36))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 36) = 0;
        v2 = *(this + 68);
      }
    }

    if ((v2 & 2) != 0)
    {
      v4 = *(this + 16);
      if (v4)
      {
        if (*(v4 + 36))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 36) = 0;
        v2 = *(this + 68);
      }
    }

    if ((v2 & 4) != 0)
    {
      v5 = *(this + 24);
      if (v5)
      {
        if (*(v5 + 36))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
        }

        *(v5 + 36) = 0;
        v2 = *(this + 68);
      }
    }

    if ((v2 & 8) != 0)
    {
      v6 = *(this + 32);
      if (v6)
      {
        if (*(v6 + 36))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 36) = 0;
        v2 = *(this + 68);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(this + 40);
      if (this)
      {
        this = CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::Clear(this);
        v2 = *(v1 + 68);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v7 = *(v1 + 48);
      if (v7)
      {
        if (*(v7 + 28))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
        }

        *(v7 + 28) = 0;
      }
    }

    *(v1 + 56) = 0;
  }

  *(v1 + 68) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v4 = *(a2 + 1);
          if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          v7 = TagFallback & 7;
          if (TagFallback >> 3 > 3)
          {
            break;
          }

          if (v6 == 1)
          {
            if (v7 != 2)
            {
              goto LABEL_32;
            }

            *(this + 17) |= 1u;
            v8 = *(this + 1);
            if (!v8)
            {
              operator new();
            }

            v52[0] = 0;
            v9 = *(a2 + 1);
            if (v9 >= *(a2 + 2) || *v9 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v52))
              {
                return 0;
              }
            }

            else
            {
              v52[0] = *v9;
              *(a2 + 1) = v9 + 1;
            }

            v10 = *(a2 + 14);
            v11 = *(a2 + 15);
            *(a2 + 14) = v10 + 1;
            if (v10 >= v11)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v12 = *(a2 + 14);
            v13 = __OFSUB__(v12, 1);
            v14 = v12 - 1;
            if (v14 < 0 == v13)
            {
              *(a2 + 14) = v14;
            }

            v15 = *(a2 + 1);
            if (v15 < *(a2 + 2) && *v15 == 18)
            {
              *(a2 + 1) = v15 + 1;
              goto LABEL_44;
            }
          }

          else
          {
            if (v6 != 2)
            {
              if (v6 != 3 || v7 != 2)
              {
                goto LABEL_32;
              }

              goto LABEL_58;
            }

            if (v7 != 2)
            {
              goto LABEL_32;
            }

LABEL_44:
            *(this + 17) |= 2u;
            v16 = *(this + 2);
            if (!v16)
            {
              operator new();
            }

            v52[0] = 0;
            v17 = *(a2 + 1);
            if (v17 >= *(a2 + 2) || *v17 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v52))
              {
                return 0;
              }
            }

            else
            {
              v52[0] = *v17;
              *(a2 + 1) = v17 + 1;
            }

            v18 = *(a2 + 14);
            v19 = *(a2 + 15);
            *(a2 + 14) = v18 + 1;
            if (v18 >= v19)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v20 = *(a2 + 14);
            v13 = __OFSUB__(v20, 1);
            v21 = v20 - 1;
            if (v21 < 0 == v13)
            {
              *(a2 + 14) = v21;
            }

            v22 = *(a2 + 1);
            if (v22 < *(a2 + 2) && *v22 == 26)
            {
              *(a2 + 1) = v22 + 1;
LABEL_58:
              *(this + 17) |= 4u;
              v23 = *(this + 3);
              if (!v23)
              {
                operator new();
              }

              v52[0] = 0;
              v24 = *(a2 + 1);
              if (v24 >= *(a2 + 2) || *v24 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v52))
                {
                  return 0;
                }
              }

              else
              {
                v52[0] = *v24;
                *(a2 + 1) = v24 + 1;
              }

              v25 = *(a2 + 14);
              v26 = *(a2 + 15);
              *(a2 + 14) = v25 + 1;
              if (v25 >= v26)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v27 = *(a2 + 14);
              v13 = __OFSUB__(v27, 1);
              v28 = v27 - 1;
              if (v28 < 0 == v13)
              {
                *(a2 + 14) = v28;
              }

              v29 = *(a2 + 1);
              if (v29 < *(a2 + 2) && *v29 == 34)
              {
                *(a2 + 1) = v29 + 1;
                goto LABEL_72;
              }
            }
          }
        }

        if (TagFallback >> 3 <= 5)
        {
          break;
        }

        if (v6 == 6)
        {
          if (v7 == 2)
          {
            goto LABEL_100;
          }

          goto LABEL_32;
        }

        if (v6 != 7 || v7 != 1)
        {
          goto LABEL_32;
        }

LABEL_114:
        *v52 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v52) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v52;
        *(this + 17) |= 0x40u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_32;
      }

LABEL_72:
      *(this + 17) |= 8u;
      v30 = *(this + 4);
      if (!v30)
      {
        operator new();
      }

      v52[0] = 0;
      v31 = *(a2 + 1);
      if (v31 >= *(a2 + 2) || *v31 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v52))
        {
          return 0;
        }
      }

      else
      {
        v52[0] = *v31;
        *(a2 + 1) = v31 + 1;
      }

      v32 = *(a2 + 14);
      v33 = *(a2 + 15);
      *(a2 + 14) = v32 + 1;
      if (v32 >= v33)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v30, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v34 = *(a2 + 14);
      v13 = __OFSUB__(v34, 1);
      v35 = v34 - 1;
      if (v35 < 0 == v13)
      {
        *(a2 + 14) = v35;
      }

      v36 = *(a2 + 1);
      if (v36 < *(a2 + 2) && *v36 == 42)
      {
        *(a2 + 1) = v36 + 1;
LABEL_86:
        *(this + 17) |= 0x10u;
        v37 = *(this + 5);
        if (!v37)
        {
          operator new();
        }

        v52[0] = 0;
        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v52))
          {
            return 0;
          }
        }

        else
        {
          v52[0] = *v38;
          *(a2 + 1) = v38 + 1;
        }

        v39 = *(a2 + 14);
        v40 = *(a2 + 15);
        *(a2 + 14) = v39 + 1;
        if (v39 >= v40)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::MergePartialFromCodedStream(v37, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v41 = *(a2 + 14);
        v13 = __OFSUB__(v41, 1);
        v42 = v41 - 1;
        if (v42 < 0 == v13)
        {
          *(a2 + 14) = v42;
        }

        v43 = *(a2 + 1);
        if (v43 < *(a2 + 2) && *v43 == 50)
        {
          *(a2 + 1) = v43 + 1;
LABEL_100:
          *(this + 17) |= 0x20u;
          v44 = *(this + 6);
          if (!v44)
          {
            operator new();
          }

          v52[0] = 0;
          v45 = *(a2 + 1);
          if (v45 >= *(a2 + 2) || *v45 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v52))
            {
              return 0;
            }
          }

          else
          {
            v52[0] = *v45;
            *(a2 + 1) = v45 + 1;
          }

          v46 = *(a2 + 14);
          v47 = *(a2 + 15);
          *(a2 + 14) = v46 + 1;
          if (v46 >= v47)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergePartialFromCodedStream(v44, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v48 = *(a2 + 14);
          v13 = __OFSUB__(v48, 1);
          v49 = v48 - 1;
          if (v49 < 0 == v13)
          {
            *(a2 + 14) = v49;
          }

          v50 = *(a2 + 1);
          if (v50 < *(a2 + 2) && *v50 == 57)
          {
            *(a2 + 1) = v50 + 1;
            goto LABEL_114;
          }
        }
      }
    }

    if (v6 == 5 && v7 == 2)
    {
      goto LABEL_86;
    }

LABEL_32:
    if (v7 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v7 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_15:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v9 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v9, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_18:
  v10 = *(v5 + 32);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v10, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_21:
  v11 = *(v5 + 40);
  if (!v11)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v11, a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      return this;
    }

    goto LABEL_27;
  }

LABEL_24:
  v12 = *(v5 + 48);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  if ((*(v5 + 68) & 0x40) != 0)
  {
LABEL_27:
    v13 = *(v5 + 56);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(7, a2, v13, a3);
  }

  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::ByteSize(uint64_t this)
{
  v1 = this;
  LOBYTE(v2) = *(this + 68);
  if (!v2)
  {
    result = 0;
    goto LABEL_63;
  }

  if ((*(this + 68) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 68) & 2) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_15;
  }

  v5 = *(this + 8);
  if (!v5)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v5 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 8);
  }

  v6 = *(v5 + 36);
  if (*(v5 + 36))
  {
    v7 = (v6 << 31 >> 31) & 9;
    if ((v6 & 2) != 0)
    {
      v7 += 9;
    }

    if ((v6 & 4) != 0)
    {
      v6 = v7 + 9;
    }

    else
    {
      v6 = v7;
    }
  }

  *(v5 + 32) = v6;
  v3 = v6 + 2;
  v2 = *(v1 + 68);
  if ((v2 & 2) != 0)
  {
LABEL_15:
    v8 = *(v1 + 16);
    if (!v8)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 16);
    }

    v9 = *(v8 + 36);
    if (*(v8 + 36))
    {
      v10 = (v9 << 31 >> 31) & 9;
      if ((v9 & 2) != 0)
      {
        v10 += 9;
      }

      if ((v9 & 4) != 0)
      {
        v9 = v10 + 9;
      }

      else
      {
        v9 = v10;
      }
    }

    *(v8 + 32) = v9;
    v3 += v9 + 2;
    v2 = *(v1 + 68);
  }

LABEL_24:
  if ((v2 & 4) != 0)
  {
    v11 = *(v1 + 24);
    if (!v11)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v11 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 24);
    }

    v12 = *(v11 + 36);
    if (*(v11 + 36))
    {
      v13 = (v12 << 31 >> 31) & 9;
      if ((v12 & 2) != 0)
      {
        v13 += 9;
      }

      if ((v12 & 4) != 0)
      {
        v12 = v13 + 9;
      }

      else
      {
        v12 = v13;
      }
    }

    *(v11 + 32) = v12;
    v3 += v12 + 2;
    v2 = *(v1 + 68);
    if ((v2 & 8) == 0)
    {
LABEL_26:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_27;
      }

LABEL_47:
      v17 = *(v1 + 40);
      if (!v17)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
        v17 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 40);
      }

      v18 = CoreNavigation::CLP::LogEntry::PrivateData::PlaceInference::ByteSize(v17);
      v19 = v18;
      if (v18 >= 0x80)
      {
        this = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v18);
      }

      else
      {
        this = 1;
      }

      v3 += v19 + this + 1;
      v2 = *(v1 + 68);
      if ((v2 & 0x20) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_53;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_26;
  }

  v14 = *(v1 + 32);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 32);
  }

  v15 = *(v14 + 36);
  if (*(v14 + 36))
  {
    v16 = (v15 << 31 >> 31) & 9;
    if ((v15 & 2) != 0)
    {
      v16 += 9;
    }

    if ((v15 & 4) != 0)
    {
      v15 = v16 + 9;
    }

    else
    {
      v15 = v16;
    }
  }

  *(v14 + 32) = v15;
  v3 += v15 + 2;
  v2 = *(v1 + 68);
  if ((v2 & 0x10) != 0)
  {
    goto LABEL_47;
  }

LABEL_27:
  if ((v2 & 0x20) != 0)
  {
LABEL_53:
    v20 = *(v1 + 48);
    if (!v20)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);
      v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_ + 48);
    }

    v21 = *(v20 + 28);
    if (*(v20 + 28))
    {
      if ((v21 & 2) != 0)
      {
        v21 = ((v21 << 31 >> 31) & 9) + 9;
      }

      else
      {
        v21 = (v21 << 31 >> 31) & 9;
      }
    }

    *(v20 + 24) = v21;
    v3 += v21 + 2;
    v2 = *(v1 + 68);
  }

LABEL_60:
  if ((v2 & 0x40) != 0)
  {
    result = v3 + 9;
  }

  else
  {
    result = v3;
  }

LABEL_63:
  *(v1 + 64) = result;
  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::MergeFrom(this, lpsrc);
}

double CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *this, const CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::MergeFrom(this, a2);
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::Swap(CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *this, CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
    v6 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
    result = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = result;
    LODWORD(v7) = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v7;
    LODWORD(v7) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v7;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate *this)
{
  *(this + 14) = 0;
  *(this + 6) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate *CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::OutdoorUpdate(CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate *this, const CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate *a2)
{
  *this = &unk_1F4CDBDF0;
  *(this + 14) = 0;
  *(this + 6) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 37) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate *this, const CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
  }

  LOBYTE(v5) = *(a2 + 56);
  if (v5)
  {
    if (*(a2 + 56))
    {
      v4 = *(a2 + 1);
      *(this + 14) |= 1u;
      *(this + 1) = v4;
      v5 = *(a2 + 14);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((*(a2 + 56) & 2) == 0)
    {
      goto LABEL_6;
    }

    v4 = *(a2 + 2);
    *(this + 14) |= 2u;
    *(this + 2) = v4;
    v5 = *(a2 + 14);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_22;
    }

LABEL_20:
    v8 = *(a2 + 6);
    if (v8 >= 3)
    {
      __assert_rtn("set_type", "CoreNavigationCLPPrivateDataShared.pb.h", 27954, "::CoreNavigation::CLP::LogEntry::PrivateData::IndoorOutdoorType_IsValid(value)");
    }

    *(this + 14) |= 4u;
    *(this + 6) = v8;
    v5 = *(a2 + 14);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
LABEL_10:
        if ((v5 & 0x20) != 0)
        {
          v6 = *(a2 + 10);
          if (v6 >= 4)
          {
            __assert_rtn("set_daylight_confidence", "CoreNavigationCLPPrivateDataShared.pb.h", 28022, "::CoreNavigation::CLP::LogEntry::PrivateData::IndoorOutdoorConfidence_IsValid(value)");
          }

          *(this + 14) |= 0x20u;
          *(this + 10) = v6;
          v5 = *(a2 + 14);
        }

        if ((v5 & 0x40) != 0)
        {
          v7 = *(a2 + 44);
          *(this + 14) |= 0x40u;
          *(this + 44) = v7;
          v5 = *(a2 + 14);
        }

        if ((v5 & 0x80) != 0)
        {
          LODWORD(v4) = *(a2 + 12);
          *(this + 14) |= 0x80u;
          *(this + 12) = v4;
        }

        return *&v4;
      }

LABEL_9:
      v4 = *(a2 + 4);
      *(this + 14) |= 0x10u;
      *(this + 4) = v4;
      v5 = *(a2 + 14);
      goto LABEL_10;
    }

LABEL_22:
    v9 = *(a2 + 7);
    if (v9 >= 4)
    {
      __assert_rtn("set_confidence", "CoreNavigationCLPPrivateDataShared.pb.h", 27977, "::CoreNavigation::CLP::LogEntry::PrivateData::IndoorOutdoorConfidence_IsValid(value)");
    }

    *(this + 14) |= 8u;
    *(this + 7) = v9;
    v5 = *(a2 + 14);
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return *&v4;
}

void sub_1D0CFCE04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::Clear(uint64_t this)
{
  if (*(this + 56))
  {
    *(this + 48) = 0;
    *(this + 8) = 0u;
    *(this + 24) = 0u;
    *(this + 37) = 0;
  }

  *(this + 56) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 56);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 56);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 56);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(4, *(v5 + 28), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 56);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(7, *(v5 + 44), a2, a4);
    if ((*(v5 + 56) & 0x80) == 0)
    {
      return this;
    }

    goto LABEL_17;
  }

LABEL_15:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(6, *(v5 + 40), a2, a4);
  v6 = *(v5 + 56);
  if ((v6 & 0x40) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x80) == 0)
  {
    return this;
  }

LABEL_17:
  v7 = *(v5 + 48);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, v7, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    if ((v2 & 2) != 0)
    {
      v3 = (((v2 << 31) >> 31) & 9) + 9;
    }

    else
    {
      v3 = ((v2 << 31) >> 31) & 9;
    }

    if ((v2 & 4) != 0)
    {
      v4 = *(this + 6);
      if ((v4 & 0x80000000) != 0)
      {
        v5 = 11;
      }

      else if (v4 >= 0x80)
      {
        v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4) + 1;
        v2 = *(this + 14);
      }

      else
      {
        v5 = 2;
      }

      v3 += v5;
    }

    if ((v2 & 8) != 0)
    {
      v7 = *(this + 7);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
        v2 = *(this + 14);
      }

      else
      {
        v8 = 2;
      }

      v3 += v8;
    }

    if ((v2 & 0x10) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x20) != 0)
    {
      v9 = *(this + 10);
      if ((v9 & 0x80000000) != 0)
      {
        v10 = 11;
      }

      else if (v9 >= 0x80)
      {
        v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1;
        v2 = *(this + 14);
      }

      else
      {
        v10 = 2;
      }

      v3 += v10;
    }

    v11 = ((v2 >> 5) & 2) + v3;
    if ((v2 & 0x80) != 0)
    {
      result = v11 + 5;
    }

    else
    {
      result = v11;
    }
  }

  else
  {
    result = 0;
  }

  *(this + 13) = result;
  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate *this, const CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::Swap(CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate *this, CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    v4 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v4;
    v5 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v5;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v7;
    LOBYTE(v7) = *(this + 44);
    *(this + 44) = *(a2 + 44);
    *(a2 + 44) = v7;
    result = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = result;
    v9 = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v9;
    v10 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v10;
  }

  return result;
}

double CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample *this)
{
  *(this + 71) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 84) = 0;
  *(this + 76) = 0;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample *CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::InertialOdometrySample(CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample *this, const CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample *a2)
{
  *this = &unk_1F4CDBE68;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 71) = 0;
  *(this + 84) = 0;
  *(this + 76) = 0;
  CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::MergeFrom(this, a2);
  return this;
}

float CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample *this, const CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v12);
  }

  v5 = *(a2 + 22);
  if (!v5)
  {
    goto LABEL_13;
  }

  if (v5)
  {
    v4 = *(a2 + 1);
    *(this + 22) |= 1u;
    *(this + 1) = v4;
    v5 = *(a2 + 22);
    if ((v5 & 2) == 0)
    {
LABEL_6:
      if ((v5 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_35;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_6;
  }

  v4 = *(a2 + 2);
  *(this + 22) |= 2u;
  *(this + 2) = v4;
  v5 = *(a2 + 22);
  if ((v5 & 4) == 0)
  {
LABEL_7:
    if ((v5 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  LODWORD(v4) = *(a2 + 6);
  *(this + 22) |= 4u;
  *(this + 6) = v4;
  v5 = *(a2 + 22);
  if ((v5 & 8) == 0)
  {
LABEL_8:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  LODWORD(v4) = *(a2 + 7);
  *(this + 22) |= 8u;
  *(this + 7) = v4;
  v5 = *(a2 + 22);
  if ((v5 & 0x10) == 0)
  {
LABEL_9:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_38:
    LODWORD(v4) = *(a2 + 9);
    *(this + 22) |= 0x20u;
    *(this + 9) = v4;
    v5 = *(a2 + 22);
    if ((v5 & 0x40) == 0)
    {
LABEL_11:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_37:
  LODWORD(v4) = *(a2 + 8);
  *(this + 22) |= 0x10u;
  *(this + 8) = v4;
  v5 = *(a2 + 22);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_39:
  LODWORD(v4) = *(a2 + 10);
  *(this + 22) |= 0x40u;
  *(this + 10) = v4;
  v5 = *(a2 + 22);
  if ((v5 & 0x80) != 0)
  {
LABEL_12:
    LODWORD(v4) = *(a2 + 11);
    *(this + 22) |= 0x80u;
    *(this + 11) = v4;
    v5 = *(a2 + 22);
  }

LABEL_13:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_24;
  }

  if ((v5 & 0x100) != 0)
  {
    LODWORD(v4) = *(a2 + 12);
    *(this + 22) |= 0x100u;
    *(this + 12) = v4;
    v5 = *(a2 + 22);
    if ((v5 & 0x200) == 0)
    {
LABEL_16:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_43;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_16;
  }

  LODWORD(v4) = *(a2 + 13);
  *(this + 22) |= 0x200u;
  *(this + 13) = v4;
  v5 = *(a2 + 22);
  if ((v5 & 0x400) == 0)
  {
LABEL_17:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  LODWORD(v4) = *(a2 + 14);
  *(this + 22) |= 0x400u;
  *(this + 14) = v4;
  v5 = *(a2 + 22);
  if ((v5 & 0x800) == 0)
  {
LABEL_18:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  LODWORD(v4) = *(a2 + 15);
  *(this + 22) |= 0x800u;
  *(this + 15) = v4;
  v5 = *(a2 + 22);
  if ((v5 & 0x1000) == 0)
  {
LABEL_19:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  LODWORD(v4) = *(a2 + 16);
  *(this + 22) |= 0x1000u;
  *(this + 16) = v4;
  v5 = *(a2 + 22);
  if ((v5 & 0x2000) == 0)
  {
LABEL_20:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

LABEL_46:
  v10 = *(a2 + 17);
  if (v10 >= 3)
  {
    __assert_rtn("set_reference_frame", "CoreNavigationCLPPrivateDataShared.pb.h", 28379, "::CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample_ReferenceFrame_IsValid(value)");
  }

  *(this + 22) |= 0x2000u;
  *(this + 17) = v10;
  v5 = *(a2 + 22);
  if ((v5 & 0x4000) == 0)
  {
    goto LABEL_22;
  }

LABEL_21:
  v6 = *(a2 + 72);
  *(this + 22) |= 0x4000u;
  *(this + 72) = v6;
  v5 = *(a2 + 22);
LABEL_22:
  if ((v5 & 0x8000) != 0)
  {
    v7 = *(a2 + 73);
    *(this + 22) |= 0x8000u;
    *(this + 73) = v7;
    v5 = *(a2 + 22);
  }

LABEL_24:
  if ((v5 & 0xFF0000) != 0)
  {
    if ((v5 & 0x10000) != 0)
    {
      v8 = *(a2 + 74);
      *(this + 22) |= 0x10000u;
      *(this + 74) = v8;
      v5 = *(a2 + 22);
    }

    if ((v5 & 0x20000) != 0)
    {
      v9 = *(a2 + 19);
      if (v9 >= 4)
      {
        __assert_rtn("set_static_indicator", "CoreNavigationCLPPrivateDataShared.pb.h", 28468, "::CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample_StaticIndicator_IsValid(value)");
      }

      *(this + 22) |= 0x20000u;
      *(this + 19) = v9;
      v5 = *(a2 + 22);
    }

    if ((v5 & 0x40000) != 0)
    {
      LODWORD(v4) = *(a2 + 20);
      *(this + 22) |= 0x40000u;
      *(this + 20) = v4;
    }
  }

  return *&v4;
}

void sub_1D0CFD6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::~InertialOdometrySample(CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample *this)
{
  *this = &unk_1F4CDBE68;
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::~InertialOdometrySample(this);

  JUMPOUT(0x1D387ECA0);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::Clear(uint64_t this)
{
  v1 = *(this + 88);
  if (v1)
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 48) = 0;
    *(this + 56) = 0;
    *(this + 72) = 0;
    *(this + 64) = 0;
  }

  if ((v1 & 0xFF0000) != 0)
  {
    *(this + 74) = 0;
    *(this + 76) = 0;
  }

  *(this + 88) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (2)
  {
    v4 = *(a2 + 1);
    if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
    {
      TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
      *(a2 + 8) = TagFallback;
      if (!TagFallback)
      {
        return 1;
      }
    }

    else
    {
      *(a2 + 8) = TagFallback;
      *(a2 + 1) = v4 + 1;
      if (!TagFallback)
      {
        return 1;
      }
    }

    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 1)
        {
          goto LABEL_72;
        }

        *v38 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v38) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v38;
        *(this + 22) |= 1u;
        v7 = *(a2 + 1);
        if (v7 >= *(a2 + 2) || *v7 != 17)
        {
          continue;
        }

        *(a2 + 1) = v7 + 1;
        goto LABEL_33;
      case 2u:
        if (v6 != 1)
        {
          goto LABEL_72;
        }

LABEL_33:
        *v38 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v38) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v38;
        *(this + 22) |= 2u;
        v12 = *(a2 + 1);
        if (v12 >= *(a2 + 2) || *v12 != 29)
        {
          continue;
        }

        *(a2 + 1) = v12 + 1;
LABEL_37:
        v38[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v38) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = v38[0];
        *(this + 22) |= 4u;
        v13 = *(a2 + 1);
        if (v13 >= *(a2 + 2) || *v13 != 37)
        {
          continue;
        }

        *(a2 + 1) = v13 + 1;
LABEL_41:
        v38[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v38) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = v38[0];
        *(this + 22) |= 8u;
        v14 = *(a2 + 1);
        if (v14 >= *(a2 + 2) || *v14 != 45)
        {
          continue;
        }

        *(a2 + 1) = v14 + 1;
LABEL_45:
        v38[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v38) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = v38[0];
        *(this + 22) |= 0x10u;
        v15 = *(a2 + 1);
        if (v15 >= *(a2 + 2) || *v15 != 53)
        {
          continue;
        }

        *(a2 + 1) = v15 + 1;
LABEL_52:
        v38[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v38) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = v38[0];
        *(this + 22) |= 0x20u;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 != 61)
        {
          continue;
        }

        *(a2 + 1) = v17 + 1;
LABEL_59:
        v38[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v38) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = v38[0];
        *(this + 22) |= 0x40u;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 != 69)
        {
          continue;
        }

        *(a2 + 1) = v20 + 1;
LABEL_63:
        v38[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v38) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = v38[0];
        *(this + 22) |= 0x80u;
        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 != 77)
        {
          continue;
        }

        *(a2 + 1) = v21 + 1;
LABEL_75:
        v38[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v38) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = v38[0];
        *(this + 22) |= 0x100u;
        v22 = *(a2 + 1);
        if (v22 >= *(a2 + 2) || *v22 != 85)
        {
          continue;
        }

        *(a2 + 1) = v22 + 1;
LABEL_79:
        v38[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v38) & 1) == 0)
        {
          return 0;
        }

        *(this + 13) = v38[0];
        *(this + 22) |= 0x200u;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 != 93)
        {
          continue;
        }

        *(a2 + 1) = v23 + 1;
LABEL_83:
        v38[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v38) & 1) == 0)
        {
          return 0;
        }

        *(this + 14) = v38[0];
        *(this + 22) |= 0x400u;
        v24 = *(a2 + 1);
        if (v24 >= *(a2 + 2) || *v24 != 101)
        {
          continue;
        }

        *(a2 + 1) = v24 + 1;
LABEL_87:
        v38[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v38) & 1) == 0)
        {
          return 0;
        }

        *(this + 15) = v38[0];
        *(this + 22) |= 0x800u;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 != 109)
        {
          continue;
        }

        *(a2 + 1) = v25 + 1;
LABEL_91:
        v38[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v38) & 1) == 0)
        {
          return 0;
        }

        *(this + 16) = v38[0];
        *(this + 22) |= 0x1000u;
        v26 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v26 >= v18 || *v26 != 112)
        {
          continue;
        }

        v19 = v26 + 1;
        *(a2 + 1) = v19;
LABEL_95:
        v38[0] = 0;
        if (v19 >= v18 || (v27 = *v19, (v27 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v38);
          if (!result)
          {
            return result;
          }

          v27 = v38[0];
        }

        else
        {
          *(a2 + 1) = v19 + 1;
        }

        if (v27 <= 2)
        {
          *(this + 22) |= 0x2000u;
          *(this + 17) = v27;
        }

        v29 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v29 >= v8 || *v29 != 120)
        {
          continue;
        }

        v10 = v29 + 1;
        *(a2 + 1) = v10;
LABEL_105:
        v38[0] = 0;
        if (v10 >= v8 || (v30 = *v10, (v30 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v38);
          if (!result)
          {
            return result;
          }

          v30 = v38[0];
          v31 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v31 = (v10 + 1);
          *(a2 + 1) = v31;
        }

        *(this + 72) = v30 != 0;
        *(this + 22) |= 0x4000u;
        if (v8 - v31 < 2 || *v31 != 128 || v31[1] != 1)
        {
          continue;
        }

        v11 = (v31 + 2);
        *(a2 + 1) = v11;
LABEL_114:
        v38[0] = 0;
        if (v11 >= v8 || (v32 = *v11, (v32 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v38);
          if (!result)
          {
            return result;
          }

          v32 = v38[0];
          v33 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v33 = (v11 + 1);
          *(a2 + 1) = v33;
        }

        *(this + 73) = v32 != 0;
        *(this + 22) |= 0x8000u;
        if (v8 - v33 < 2 || *v33 != 136 || v33[1] != 1)
        {
          continue;
        }

        v9 = (v33 + 2);
        *(a2 + 1) = v9;
LABEL_123:
        v38[0] = 0;
        if (v9 >= v8 || (v34 = *v9, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v38);
          if (!result)
          {
            return result;
          }

          v34 = v38[0];
          v35 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v35 = (v9 + 1);
          *(a2 + 1) = v35;
        }

        *(this + 74) = v34 != 0;
        *(this + 22) |= 0x10000u;
        if (v8 - v35 < 2 || *v35 != 144 || v35[1] != 1)
        {
          continue;
        }

        v16 = (v35 + 2);
        *(a2 + 1) = v16;
LABEL_132:
        v38[0] = 0;
        if (v16 >= v8 || (v36 = *v16, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v38);
          if (!result)
          {
            return result;
          }

          v36 = v38[0];
        }

        else
        {
          *(a2 + 1) = v16 + 1;
        }

        if (v36 <= 3)
        {
          *(this + 22) |= 0x20000u;
          *(this + 19) = v36;
        }

        v37 = *(a2 + 1);
        if (*(a2 + 4) - v37 < 2 || *v37 != 157 || v37[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v37 + 2;
LABEL_143:
        v38[0] = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v38))
        {
          *(this + 20) = v38[0];
          *(this + 22) |= 0x40000u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }

          continue;
        }

        return 0;
      case 3u:
        if (v6 == 5)
        {
          goto LABEL_37;
        }

        goto LABEL_72;
      case 4u:
        if (v6 == 5)
        {
          goto LABEL_41;
        }

        goto LABEL_72;
      case 5u:
        if (v6 == 5)
        {
          goto LABEL_45;
        }

        goto LABEL_72;
      case 6u:
        if (v6 == 5)
        {
          goto LABEL_52;
        }

        goto LABEL_72;
      case 7u:
        if (v6 == 5)
        {
          goto LABEL_59;
        }

        goto LABEL_72;
      case 8u:
        if (v6 == 5)
        {
          goto LABEL_63;
        }

        goto LABEL_72;
      case 9u:
        if (v6 != 5)
        {
          goto LABEL_72;
        }

        goto LABEL_75;
      case 0xAu:
        if (v6 == 5)
        {
          goto LABEL_79;
        }

        goto LABEL_72;
      case 0xBu:
        if (v6 == 5)
        {
          goto LABEL_83;
        }

        goto LABEL_72;
      case 0xCu:
        if (v6 == 5)
        {
          goto LABEL_87;
        }

        goto LABEL_72;
      case 0xDu:
        if (v6 == 5)
        {
          goto LABEL_91;
        }

        goto LABEL_72;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_72;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_95;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_72;
        }

        v10 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_105;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_72;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_114;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_72;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_123;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_72;
        }

        v16 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_132;
      case 0x13u:
        if (v6 == 5)
        {
          goto LABEL_143;
        }

        goto LABEL_72;
      default:
LABEL_72:
        if (v6 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }

        continue;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 88);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 88);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 88);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 24), a3);
  v6 = *(v5 + 88);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 28), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, *(v5 + 32), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(6, a2, *(v5 + 36), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(7, a2, *(v5 + 40), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(8, a2, *(v5 + 44), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(9, a2, *(v5 + 48), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, *(v5 + 52), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xB, a2, *(v5 + 56), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xC, a2, *(v5 + 60), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xD, a2, *(v5 + 64), a3);
  v6 = *(v5 + 88);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xE, *(v5 + 68), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xF, *(v5 + 72), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x10, *(v5 + 73), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x12, *(v5 + 76), a2, a4);
    if ((*(v5 + 88) & 0x40000) == 0)
    {
      return this;
    }

    goto LABEL_39;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x11, *(v5 + 74), a2, a4);
  v6 = *(v5 + 88);
  if ((v6 & 0x20000) != 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((v6 & 0x40000) == 0)
  {
    return this;
  }

LABEL_39:
  v7 = *(v5 + 80);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0x13, a2, v7, a3);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::ByteSize(CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample *this)
{
  v2 = *(this + 22);
  if (v2)
  {
    v3 = ((v2 << 31) >> 31) & 9;
    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 8) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 0x10) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 0x20) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 0x40) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 0x80) != 0)
    {
      result = v3 + 5;
    }

    else
    {
      result = v3;
    }
  }

  else
  {
    result = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    v5 = result + 5;
    if ((v2 & 0x100) == 0)
    {
      v5 = result;
    }

    if ((v2 & 0x200) != 0)
    {
      v5 += 5;
    }

    if ((v2 & 0x400) != 0)
    {
      v5 += 5;
    }

    if ((v2 & 0x800) != 0)
    {
      v5 += 5;
    }

    if ((v2 & 0x1000) != 0)
    {
      v6 = v5 + 5;
    }

    else
    {
      v6 = v5;
    }

    if ((v2 & 0x2000) != 0)
    {
      v7 = *(this + 17);
      if ((v7 & 0x80000000) != 0)
      {
        v8 = 11;
      }

      else if (v7 >= 0x80)
      {
        v8 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
        v2 = *(this + 22);
      }

      else
      {
        v8 = 2;
      }

      v6 += v8;
    }

    v9 = ((v2 >> 13) & 2) + v6;
    if ((v2 & 0x8000) != 0)
    {
      result = v9 + 3;
    }

    else
    {
      result = v9;
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v10 = result + 3;
    }

    else
    {
      v10 = result;
    }

    if ((v2 & 0x20000) != 0)
    {
      v11 = *(this + 19);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = 12;
      }

      else if (v11 >= 0x80)
      {
        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 2;
        v2 = *(this + 22);
      }

      else
      {
        v12 = 3;
      }

      v10 += v12;
    }

    if ((v2 & 0x40000) != 0)
    {
      result = v10 + 6;
    }

    else
    {
      result = v10;
    }
  }

  *(this + 21) = result;
  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::CheckTypeAndMergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::MergeFrom(this, lpsrc);
}

float CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::CopyFrom(CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample *this, const CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::MergeFrom(this, a2);
  }

  return result;
}

float CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample::Swap(CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample *this, CoreNavigation::CLP::LogEntry::PrivateData::InertialOdometrySample *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v3;
    LODWORD(v3) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v3;
    LODWORD(v3) = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v3;
    LODWORD(v3) = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v3;
    LODWORD(v3) = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v3;
    LODWORD(v3) = *(this + 14);
    *(this + 14) = *(a2 + 14);
    *(a2 + 14) = v3;
    LODWORD(v3) = *(this + 15);
    *(this + 15) = *(a2 + 15);
    *(a2 + 15) = v3;
    LODWORD(v3) = *(this + 16);
    *(this + 16) = *(a2 + 16);
    *(a2 + 16) = v3;
    v4 = *(this + 17);
    *(this + 17) = *(a2 + 17);
    *(a2 + 17) = v4;
    LOBYTE(v4) = *(this + 72);
    *(this + 72) = *(a2 + 72);
    *(a2 + 72) = v4;
    LOBYTE(v4) = *(this + 73);
    *(this + 73) = *(a2 + 73);
    *(a2 + 73) = v4;
    LOBYTE(v4) = *(this + 74);
    *(this + 74) = *(a2 + 74);
    *(a2 + 74) = v4;
    v5 = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v5;
    result = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = result;
    v7 = *(this + 22);
    *(this + 22) = *(a2 + 22);
    *(a2 + 22) = v7;
    v8 = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v8;
  }

  return result;
}

void sub_1D0CFEA50(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        operator new();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_1D0CFEBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1D0CFEBD4(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        operator new();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::GyroSample::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_1D0CFED40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1D0CFED58(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        operator new();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::BaroSample::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_1D0CFEEC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1D0CFEED8(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        operator new();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::MagSample::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_1D0CFF044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1D0CFF05C(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        operator new();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::CompassTypeSample::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_1D0CFF1CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1D0CFF1E4(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        operator new();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_1D0CFF35C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1D0CFF374(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        operator new();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::GEOLocationCoordinate2D::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_1D0CFF4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_1D0CFF4F4(wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase *a1, uint64_t a2)
{
  v4 = (*(a2 + 8) + *(a1 + 2));
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
  LODWORD(v5) = *(a2 + 8);
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if (v6 >= v5)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v11);
      }

      v7 = *(*a2 + 8 * v6);
      v8 = *(a1 + 3);
      v9 = *(a1 + 2);
      if (v9 >= v8)
      {
        if (v8 == *(a1 + 4))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a1);
          v8 = *(a1 + 3);
        }

        *(a1 + 3) = v8 + 1;
        operator new();
      }

      v10 = *a1;
      *(a1 + 2) = v9 + 1;
      CoreNavigation::CLP::LogEntry::PrivateData::GEOMapFeatureTropicalSavanna::MergeFrom(*(v10 + 8 * v9), v7);
      ++v6;
      v5 = *(a2 + 8);
    }

    while (v6 < v5);
  }
}

void sub_1D0CFF670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::protobuf_ShutdownFile_CoreNavigationCLPPrivateDataCapture_2eproto(CoreNavigation::CLP::LogEntry::PrivateData *this)
{
  result = CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_;
  if (CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_)
  {
    return (*(*CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 8))();
  }

  return result;
}

void CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto_impl(CoreNavigation::CLP::LogEntry::PrivateData *this, uint64_t a2, uint64_t a3, const char *a4)
{
  v4 = wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/CoreNavigation/shared/cnprotobuf/CoreNavigationCLPPrivateDataCapture.pb.cc", a4);
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v4);
  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v5);
  CoreNavigation::CLP::LogEntry::InternalToolData::protobuf_AddDesc_CoreNavigationCLPInternalToolData_2eproto(v6);
  CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(v7);
  CoreNavigation::CLP::LogEntry::RayTracingTileData::protobuf_AddDesc_CoreNavigationCLPRayTracingTileData_2eproto(v8);
  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::protobuf_AddDesc_CoreNavigationCLPRayTracingTilesAvailability_2eproto(v9);
  CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto(v10);
  CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(v11);
  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::protobuf_AddDesc_CoreNavigationCLPRavenGnssAssistanceFile_2eproto(v12);
  operator new();
}

void *CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::InitAsDefaultInstance(void *this)
{
  v1 = CoreNavigation::CLP::LogEntry::PrivateData::Gyro::default_instance_;
  this[1] = CoreNavigation::CLP::LogEntry::PrivateData::Accel::default_instance_;
  this[2] = v1;
  v2 = CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_;
  this[3] = CoreNavigation::CLP::LogEntry::PrivateData::Baro::default_instance_;
  this[4] = v2;
  v3 = CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::default_instance_;
  this[5] = CoreNavigation::CLP::LogEntry::PrivateData::MotionState::default_instance_;
  this[6] = v3;
  v4 = CoreNavigation::CLP::LogEntry::PrivateData::Timer::default_instance_;
  this[7] = CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::default_instance_;
  this[8] = v4;
  v5 = CoreNavigation::CLP::LogEntry::PrivateData::MapVector::default_instance_;
  this[9] = CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::default_instance_;
  this[10] = v5;
  v6 = CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::default_instance_;
  this[11] = CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::default_instance_;
  this[12] = v6;
  v7 = CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::default_instance_;
  this[13] = CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_;
  this[14] = v7;
  v8 = CoreNavigation::CLP::LogEntry::PrivateData::StepCount::default_instance_;
  this[15] = CoreNavigation::CLP::LogEntry::PrivateData::Reset::default_instance_;
  this[16] = v8;
  v9 = CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::default_instance_;
  this[17] = CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::default_instance_;
  this[18] = v9;
  v10 = CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::default_instance_;
  this[19] = CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::default_instance_;
  this[20] = v10;
  v11 = CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::default_instance_;
  this[21] = CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::default_instance_;
  this[22] = v11;
  v12 = CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::default_instance_;
  this[23] = CoreNavigation::CLP::LogEntry::PrivateData::Compass::default_instance_;
  this[24] = v12;
  v13 = CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::default_instance_;
  this[25] = CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::default_instance_;
  this[26] = v13;
  v14 = CoreNavigation::CLP::LogEntry::PrivateData::WatchState::default_instance_;
  this[27] = CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::default_instance_;
  this[28] = v14;
  v15 = CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::default_instance_;
  this[29] = CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::default_instance_;
  this[30] = v15;
  v16 = CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::default_instance_;
  this[31] = CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::default_instance_;
  this[32] = v16;
  v17 = CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_;
  this[33] = CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::default_instance_;
  this[34] = v17;
  v18 = CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::default_instance_;
  this[35] = CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_;
  this[36] = v18;
  v19 = CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::default_instance_;
  this[37] = CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::default_instance_;
  this[38] = v19;
  return this;
}

_OWORD *CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::SharedCtor(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *this)
{
  *(this + 8) = 0u;
  result = (this + 8);
  result[17] = 0u;
  result[18] = 0u;
  result[15] = 0u;
  result[16] = 0u;
  result[13] = 0u;
  result[14] = 0u;
  result[11] = 0u;
  result[12] = 0u;
  result[9] = 0u;
  result[10] = 0u;
  result[7] = 0u;
  result[8] = 0u;
  result[5] = 0u;
  result[6] = 0u;
  result[3] = 0u;
  result[4] = 0u;
  result[1] = 0u;
  result[2] = 0u;
  *(result + 300) = 0u;
  return result;
}

CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::PrivateDataCapture(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *this, const CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *a2)
{
  *this = &unk_1F4CDC738;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 8) = 0u;
  *(this + 248) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 308) = 0u;
  CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::MergeFrom(this, a2);
  return this;
}

void CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::MergeFrom(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *this, const CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v82);
  }

  v4 = *(a2 + 79);
  if (!v4)
  {
    goto LABEL_53;
  }

  if (v4)
  {
    *(this + 79) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 8);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::Accel::MergeFrom(v5, v6);
    v4 = *(a2 + 79);
    if ((v4 & 2) == 0)
    {
LABEL_6:
      if ((v4 & 4) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_6;
  }

  *(this + 79) |= 2u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v8 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 16);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::Gyro::MergeFrom(v7, v8);
  v4 = *(a2 + 79);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_23:
  *(this + 79) |= 4u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 24);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::Baro::MergeFrom(v9, v10);
  v4 = *(a2 + 79);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_28:
  *(this + 79) |= 8u;
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 4);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 32);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::Location::MergeFrom(v11, v12);
  v4 = *(a2 + 79);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_38:
    *(this + 79) |= 0x20u;
    v15 = *(this + 6);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 6);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 48);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::MergeFrom(v15, v16);
    v4 = *(a2 + 79);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_48;
    }

    goto LABEL_43;
  }

LABEL_33:
  *(this + 79) |= 0x10u;
  v13 = *(this + 5);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 5);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 40);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::MotionState::MergeFrom(v13, v14);
  v4 = *(a2 + 79);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_43:
  *(this + 79) |= 0x40u;
  v17 = *(this + 7);
  if (!v17)
  {
    operator new();
  }

  v18 = *(a2 + 7);
  if (!v18)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v18 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 56);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::MergeFrom(v17, v18);
  v4 = *(a2 + 79);
  if ((v4 & 0x80) != 0)
  {
LABEL_48:
    *(this + 79) |= 0x80u;
    v19 = *(this + 8);
    if (!v19)
    {
      operator new();
    }

    v20 = *(a2 + 8);
    if (!v20)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v20 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 64);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::Timer::MergeFrom(v19, v20);
    v4 = *(a2 + 79);
  }

LABEL_53:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_103;
  }

  if ((v4 & 0x100) != 0)
  {
    *(this + 79) |= 0x100u;
    v21 = *(this + 9);
    if (!v21)
    {
      operator new();
    }

    v22 = *(a2 + 9);
    if (!v22)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 72);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::MergeFrom(v21, v22);
    v4 = *(a2 + 79);
    if ((v4 & 0x200) == 0)
    {
LABEL_56:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_57;
      }

      goto LABEL_73;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_56;
  }

  *(this + 79) |= 0x200u;
  v23 = *(this + 10);
  if (!v23)
  {
    operator new();
  }

  v24 = *(a2 + 10);
  if (!v24)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 80);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::MapVector::MergeFrom(v23, v24);
  v4 = *(a2 + 79);
  if ((v4 & 0x400) == 0)
  {
LABEL_57:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_78;
  }

LABEL_73:
  *(this + 79) |= 0x400u;
  v25 = *(this + 11);
  if (!v25)
  {
    operator new();
  }

  v26 = *(a2 + 11);
  if (!v26)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 88);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::MergeFrom(v25, v26);
  v4 = *(a2 + 79);
  if ((v4 & 0x800) == 0)
  {
LABEL_58:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_83;
  }

LABEL_78:
  *(this + 79) |= 0x800u;
  v27 = *(this + 12);
  if (!v27)
  {
    operator new();
  }

  v28 = *(a2 + 12);
  if (!v28)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v28 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 96);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::MergeFrom(v27, v28);
  v4 = *(a2 + 79);
  if ((v4 & 0x1000) == 0)
  {
LABEL_59:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_88;
  }

LABEL_83:
  *(this + 79) |= 0x1000u;
  v29 = *(this + 13);
  if (!v29)
  {
    operator new();
  }

  v30 = *(a2 + 13);
  if (!v30)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v30 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 104);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergeFrom(v29, v30);
  v4 = *(a2 + 79);
  if ((v4 & 0x2000) == 0)
  {
LABEL_60:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_93;
  }

LABEL_88:
  *(this + 79) |= 0x2000u;
  v31 = *(this + 14);
  if (!v31)
  {
    operator new();
  }

  v32 = *(a2 + 14);
  if (!v32)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v32 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 112);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::MergeFrom(v31, v32);
  v4 = *(a2 + 79);
  if ((v4 & 0x4000) == 0)
  {
LABEL_61:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_103;
    }

    goto LABEL_98;
  }

LABEL_93:
  *(this + 79) |= 0x4000u;
  v33 = *(this + 15);
  if (!v33)
  {
    operator new();
  }

  v34 = *(a2 + 15);
  if (!v34)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v34 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 120);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::Reset::MergeFrom(v33, v34);
  v4 = *(a2 + 79);
  if ((v4 & 0x8000) != 0)
  {
LABEL_98:
    *(this + 79) |= 0x8000u;
    v35 = *(this + 16);
    if (!v35)
    {
      operator new();
    }

    v36 = *(a2 + 16);
    if (!v36)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v36 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 128);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::StepCount::MergeFrom(v35, v36);
    v4 = *(a2 + 79);
  }

LABEL_103:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_153;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(this + 79) |= 0x10000u;
    v37 = *(this + 17);
    if (!v37)
    {
      operator new();
    }

    v38 = *(a2 + 17);
    if (!v38)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v38 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 136);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::MergeFrom(v37, v38);
    v4 = *(a2 + 79);
    if ((v4 & 0x20000) == 0)
    {
LABEL_106:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_123;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_106;
  }

  *(this + 79) |= 0x20000u;
  v39 = *(this + 18);
  if (!v39)
  {
    operator new();
  }

  v40 = *(a2 + 18);
  if (!v40)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v40 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 144);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::MergeFrom(v39, v40);
  v4 = *(a2 + 79);
  if ((v4 & 0x40000) == 0)
  {
LABEL_107:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_128;
  }

LABEL_123:
  *(this + 79) |= 0x40000u;
  v41 = *(this + 19);
  if (!v41)
  {
    operator new();
  }

  v42 = *(a2 + 19);
  if (!v42)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v42 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 152);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::MergeFrom(v41, v42);
  v4 = *(a2 + 79);
  if ((v4 & 0x80000) == 0)
  {
LABEL_108:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_133;
  }

LABEL_128:
  *(this + 79) |= 0x80000u;
  v43 = *(this + 20);
  if (!v43)
  {
    operator new();
  }

  v44 = *(a2 + 20);
  if (!v44)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v44 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 160);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::MergeFrom(v43, v44);
  v4 = *(a2 + 79);
  if ((v4 & 0x100000) == 0)
  {
LABEL_109:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_138;
  }

LABEL_133:
  *(this + 79) |= 0x100000u;
  v45 = *(this + 21);
  if (!v45)
  {
    operator new();
  }

  v46 = *(a2 + 21);
  if (!v46)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v46 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 168);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::MergeFrom(v45, v46);
  v4 = *(a2 + 79);
  if ((v4 & 0x200000) == 0)
  {
LABEL_110:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_143;
  }

LABEL_138:
  *(this + 79) |= 0x200000u;
  v47 = *(this + 22);
  if (!v47)
  {
    operator new();
  }

  v48 = *(a2 + 22);
  if (!v48)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v48 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 176);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::MergeFrom(v47, v48);
  v4 = *(a2 + 79);
  if ((v4 & 0x400000) == 0)
  {
LABEL_111:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_148;
  }

LABEL_143:
  *(this + 79) |= 0x400000u;
  v49 = *(this + 23);
  if (!v49)
  {
    operator new();
  }

  v50 = *(a2 + 23);
  if (!v50)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v50 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 184);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::Compass::MergeFrom(v49, v50);
  v4 = *(a2 + 79);
  if ((v4 & 0x800000) != 0)
  {
LABEL_148:
    *(this + 79) |= 0x800000u;
    v51 = *(this + 24);
    if (!v51)
    {
      operator new();
    }

    v52 = *(a2 + 24);
    if (!v52)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v52 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 192);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::MergeFrom(v51, v52);
    v4 = *(a2 + 79);
  }

LABEL_153:
  if (!HIBYTE(v4))
  {
    goto LABEL_203;
  }

  if ((v4 & 0x1000000) != 0)
  {
    *(this + 79) |= 0x1000000u;
    v53 = *(this + 25);
    if (!v53)
    {
      operator new();
    }

    v54 = *(a2 + 25);
    if (!v54)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v54 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 200);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::MergeFrom(v53, v54);
    v4 = *(a2 + 79);
    if ((v4 & 0x2000000) == 0)
    {
LABEL_156:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_173;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_156;
  }

  *(this + 79) |= 0x2000000u;
  v55 = *(this + 26);
  if (!v55)
  {
    operator new();
  }

  v56 = *(a2 + 26);
  if (!v56)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v56 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 208);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::MergeFrom(v55, v56);
  v4 = *(a2 + 79);
  if ((v4 & 0x4000000) == 0)
  {
LABEL_157:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_178;
  }

LABEL_173:
  *(this + 79) |= 0x4000000u;
  v57 = *(this + 27);
  if (!v57)
  {
    operator new();
  }

  v58 = *(a2 + 27);
  if (!v58)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v58 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 216);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::MergeFrom(v57, v58);
  v4 = *(a2 + 79);
  if ((v4 & 0x8000000) == 0)
  {
LABEL_158:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_159;
    }

    goto LABEL_183;
  }

LABEL_178:
  *(this + 79) |= 0x8000000u;
  v59 = *(this + 28);
  if (!v59)
  {
    operator new();
  }

  v60 = *(a2 + 28);
  if (!v60)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v60 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 224);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::WatchState::MergeFrom(v59, v60);
  v4 = *(a2 + 79);
  if ((v4 & 0x10000000) == 0)
  {
LABEL_159:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_160;
    }

    goto LABEL_188;
  }

LABEL_183:
  *(this + 79) |= 0x10000000u;
  v61 = *(this + 29);
  if (!v61)
  {
    operator new();
  }

  v62 = *(a2 + 29);
  if (!v62)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v62 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 232);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::MergeFrom(v61, v62);
  v4 = *(a2 + 79);
  if ((v4 & 0x20000000) == 0)
  {
LABEL_160:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_161;
    }

    goto LABEL_193;
  }

LABEL_188:
  *(this + 79) |= 0x20000000u;
  v63 = *(this + 30);
  if (!v63)
  {
    operator new();
  }

  v64 = *(a2 + 30);
  if (!v64)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v64 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 240);
  }

  CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::MergeFrom(v63, v64);
  v4 = *(a2 + 79);
  if ((v4 & 0x40000000) == 0)
  {
LABEL_161:
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_203;
    }

    goto LABEL_198;
  }

LABEL_193:
  *(this + 79) |= 0x40000000u;
  v65 = *(this + 31);
  if (!v65)
  {
    operator new();
  }

  v66 = *(a2 + 31);
  if (!v66)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v66 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 248);
  }

  CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::MergeFrom(v65, v66);
  if ((*(a2 + 79) & 0x80000000) != 0)
  {
LABEL_198:
    *(this + 79) |= 0x80000000;
    v67 = *(this + 32);
    if (!v67)
    {
      operator new();
    }

    v68 = *(a2 + 32);
    if (!v68)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v68 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 256);
    }

    CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::MergeFrom(v67, v68);
  }

LABEL_203:
  LOBYTE(v69) = *(a2 + 320);
  if (!v69)
  {
    return;
  }

  if (*(a2 + 320))
  {
    *(this + 80) |= 1u;
    v70 = *(this + 33);
    if (!v70)
    {
      operator new();
    }

    v71 = *(a2 + 33);
    if (!v71)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v71 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 264);
    }

    CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::MergeFrom(v70, v71);
    v69 = *(a2 + 80);
    if ((v69 & 2) == 0)
    {
LABEL_206:
      if ((v69 & 4) == 0)
      {
        goto LABEL_207;
      }

      goto LABEL_221;
    }
  }

  else if ((*(a2 + 320) & 2) == 0)
  {
    goto LABEL_206;
  }

  *(this + 80) |= 2u;
  v72 = *(this + 34);
  if (!v72)
  {
    operator new();
  }

  v73 = *(a2 + 34);
  if (!v73)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v73 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 272);
  }

  CoreNavigation::CLP::LogEntry::Raven::LogEntry::MergeFrom(v72, v73);
  v69 = *(a2 + 80);
  if ((v69 & 4) == 0)
  {
LABEL_207:
    if ((v69 & 8) == 0)
    {
      goto LABEL_208;
    }

    goto LABEL_226;
  }

LABEL_221:
  *(this + 80) |= 4u;
  v74 = *(this + 35);
  if (!v74)
  {
    operator new();
  }

  v75 = *(a2 + 35);
  if (!v75)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v75 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 280);
  }

  CoreNavigation::CLP::LogEntry::Vision::LogEntry::MergeFrom(v74, v75);
  v69 = *(a2 + 80);
  if ((v69 & 8) == 0)
  {
LABEL_208:
    if ((v69 & 0x10) == 0)
    {
      goto LABEL_209;
    }

    goto LABEL_231;
  }

LABEL_226:
  *(this + 80) |= 8u;
  v76 = *(this + 36);
  if (!v76)
  {
    operator new();
  }

  v77 = *(a2 + 36);
  if (!v77)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v77 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 288);
  }

  CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::MergeFrom(v76, v77);
  v69 = *(a2 + 80);
  if ((v69 & 0x10) == 0)
  {
LABEL_209:
    if ((v69 & 0x20) == 0)
    {
      return;
    }

    goto LABEL_236;
  }

LABEL_231:
  *(this + 80) |= 0x10u;
  v78 = *(this + 37);
  if (!v78)
  {
    operator new();
  }

  v79 = *(a2 + 37);
  if (!v79)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v79 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 296);
  }

  CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::MergeFrom(v78, v79);
  if ((*(a2 + 80) & 0x20) != 0)
  {
LABEL_236:
    *(this + 80) |= 0x20u;
    v80 = *(this + 38);
    if (!v80)
    {
      operator new();
    }

    v81 = *(a2 + 38);
    if (!v81)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v81 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 304);
    }

    CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::MergeFrom(v80, v81);
  }
}