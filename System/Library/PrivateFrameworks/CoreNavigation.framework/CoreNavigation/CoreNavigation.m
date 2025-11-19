uint64_t cnlogging::details::CNProtobufStreamChecksum::adler32(void *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 1;
  }

  v3 = 0;
  v4 = (*a1 + a2);
  v5 = 1;
  do
  {
    v6 = *v4++;
    v5 = (v5 + v6) % 0xFFF1;
    v3 = (v5 + v3) % 0xFFF1;
    --a3;
  }

  while (a3);
  return v5 | (v3 << 16);
}

CoreNavigation::CLP::LogEntry::LogEntry *CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(CoreNavigation::CLP::LogEntry::LogEntry *this)
{
  *this = &unk_1F4CD9480;
  wireless_diagnostics::google::protobuf::internal::ExtensionSet::ExtensionSet((this + 8));
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  return this;
}

uint64_t CoreNavigation::CLP::LogEntry::LogEntry::Clear(CoreNavigation::CLP::LogEntry::LogEntry *this)
{
  result = wireless_diagnostics::google::protobuf::internal::ExtensionSet::Clear((this + 8));
  LOBYTE(v3) = *(this + 52);
  if (v3)
  {
    if (*(this + 52))
    {
      v4 = *(this + 4);
      if (v4)
      {
        if (*(v4 + 44))
        {
          *(v4 + 24) = 0u;
          *(v4 + 8) = 0u;
        }

        *(v4 + 44) = 0;
        v3 = *(this + 13);
      }
    }

    if ((v3 & 2) != 0)
    {
      result = *(this + 5);
      if (result)
      {
        result = CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::Clear(result);
      }
    }
  }

  *(this + 13) = 0;
  return result;
}

uint64_t CoreNavigation::CLP::LogEntry::LogEntry::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::LogEntry *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v3 = this;
  while (1)
  {
    while (1)
    {
      v4 = *(a2 + 1);
      if (v4 >= *(a2 + 2) || (v5 = *v4, (v5 & 0x80000000) != 0))
      {
        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        v5 = this;
        *(a2 + 8) = this;
        if (!this)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = v5;
        *(a2 + 1) = v4 + 1;
        if (!v5)
        {
          return 1;
        }
      }

      v6 = v5 & 7;
      if (v5 >> 3 == 4)
      {
        break;
      }

      if (v5 >> 3 != 1 || v6 != 2)
      {
        goto LABEL_16;
      }

      *(v3 + 13) |= 1u;
      v7 = *(v3 + 4);
      if (!v7)
      {
        operator new();
      }

      v22 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v22))
        {
          return 0;
        }
      }

      else
      {
        v22 = *v8;
        *(a2 + 1) = v8 + 1;
      }

      v9 = *(a2 + 14);
      v10 = *(a2 + 15);
      *(a2 + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v11 = *(a2 + 14);
      v12 = __OFSUB__(v11, 1);
      v13 = v11 - 1;
      if (v13 < 0 == v12)
      {
        *(a2 + 14) = v13;
      }

      v14 = *(a2 + 1);
      if (v14 < *(a2 + 2) && *v14 == 34)
      {
        *(a2 + 1) = v14 + 1;
LABEL_31:
        *(v3 + 13) |= 2u;
        v15 = *(v3 + 5);
        if (!v15)
        {
          operator new();
        }

        v23 = 0;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23))
          {
            return 0;
          }
        }

        else
        {
          v23 = *v16;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::MergePartialFromCodedStream(v15, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        this = wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v19 = *(a2 + 14);
        v12 = __OFSUB__(v19, 1);
        v20 = v19 - 1;
        if (v20 < 0 == v12)
        {
          *(a2 + 14) = v20;
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

    if (v6 == 2)
    {
      goto LABEL_31;
    }

LABEL_16:
    if (v6 == 4)
    {
      return 1;
    }

    if ((v5 & 0xFFFFFFF8) == 0x10)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      this = wireless_diagnostics::google::protobuf::internal::ExtensionSet::ParseField((v3 + 8), v5, a2, CoreNavigation::CLP::LogEntry::LogEntry::default_instance_);
      if ((this & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, v5);
      if ((this & 1) == 0)
      {
        return 0;
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::LogEntry_TimeStamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if (v7 == 1)
          {
            goto LABEL_28;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_32;
        }

        goto LABEL_25;
      }

      if (v6 != 1)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_25;
      }

      v16 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v16;
      *(this + 11) |= 1u;
      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 17)
      {
        *(a2 + 1) = v10 + 1;
LABEL_20:
        v16 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v16;
        *(this + 11) |= 2u;
        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 25)
        {
          *(a2 + 1) = v11 + 1;
LABEL_28:
          v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v16;
          *(this + 11) |= 4u;
          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v12 < v8 && *v12 == 32)
          {
            v9 = v12 + 1;
            *(a2 + 1) = v9;
LABEL_32:
            v16 = 0;
            if (v9 >= v8 || (v13 = *v9, (v13 & 0x8000000000000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, &v16);
              if (!result)
              {
                return result;
              }

              v13 = v16;
              v14 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              v14 = v9 + 1;
              *(a2 + 1) = v14;
            }

            *(this + 4) = v13;
            *(this + 11) |= 8u;
            if (v14 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

    if (v6 == 2 && v7 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 <= 0x3E7)
        {
          switch(v6)
          {
            case 1u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              *(this + 79) |= 1u;
              v8 = *(this + 1);
              if (!v8)
              {
                operator new();
              }

              v275 = 0;
              v9 = *(a2 + 1);
              if (v9 >= *(a2 + 2) || *v9 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v9;
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
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Accel::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
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
              if (v15 >= *(a2 + 2) || *v15 != 18)
              {
                continue;
              }

              *(a2 + 1) = v15 + 1;
LABEL_106:
              *(this + 79) |= 2u;
              v16 = *(this + 2);
              if (!v16)
              {
                operator new();
              }

              v275 = 0;
              v17 = *(a2 + 1);
              if (v17 >= *(a2 + 2) || *v17 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v17;
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
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Gyro::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
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
              if (v22 >= *(a2 + 2) || *v22 != 26)
              {
                continue;
              }

              *(a2 + 1) = v22 + 1;
LABEL_120:
              *(this + 79) |= 4u;
              v23 = *(this + 3);
              if (!v23)
              {
                operator new();
              }

              v275 = 0;
              v24 = *(a2 + 1);
              if (v24 >= *(a2 + 2) || *v24 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v24;
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
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Baro::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
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
              if (v29 >= *(a2 + 2) || *v29 != 34)
              {
                continue;
              }

              *(a2 + 1) = v29 + 1;
LABEL_134:
              *(this + 79) |= 8u;
              v30 = *(this + 4);
              if (!v30)
              {
                operator new();
              }

              v275 = 0;
              v31 = *(a2 + 1);
              if (v31 >= *(a2 + 2) || *v31 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v31;
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
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Location::MergePartialFromCodedStream(v30, a2) || *(a2 + 36) != 1)
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
              if (v36 >= *(a2 + 2) || *v36 != 42)
              {
                continue;
              }

              *(a2 + 1) = v36 + 1;
LABEL_148:
              *(this + 79) |= 0x10u;
              v37 = *(this + 5);
              if (!v37)
              {
                operator new();
              }

              v275 = 0;
              v38 = *(a2 + 1);
              if (v38 >= *(a2 + 2) || *v38 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v38;
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
              if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionState::MergePartialFromCodedStream(v37, a2) || *(a2 + 36) != 1)
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
              if (v43 >= *(a2 + 2) || *v43 != 50)
              {
                continue;
              }

              *(a2 + 1) = v43 + 1;
LABEL_162:
              *(this + 79) |= 0x20u;
              v44 = *(this + 6);
              if (!v44)
              {
                operator new();
              }

              v275 = 0;
              v45 = *(a2 + 1);
              if (v45 >= *(a2 + 2) || *v45 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v45;
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
              if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionStateObserver::MergePartialFromCodedStream(v44, a2) || *(a2 + 36) != 1)
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
              if (v50 >= *(a2 + 2) || *v50 != 58)
              {
                continue;
              }

              *(a2 + 1) = v50 + 1;
LABEL_176:
              *(this + 79) |= 0x40u;
              v51 = *(this + 7);
              if (!v51)
              {
                operator new();
              }

              v275 = 0;
              v52 = *(a2 + 1);
              if (v52 >= *(a2 + 2) || *v52 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v52;
                *(a2 + 1) = v52 + 1;
              }

              v53 = *(a2 + 14);
              v54 = *(a2 + 15);
              *(a2 + 14) = v53 + 1;
              if (v53 >= v54)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Natalimetry::MergePartialFromCodedStream(v51, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v55 = *(a2 + 14);
              v13 = __OFSUB__(v55, 1);
              v56 = v55 - 1;
              if (v56 < 0 == v13)
              {
                *(a2 + 14) = v56;
              }

              v57 = *(a2 + 1);
              if (v57 >= *(a2 + 2) || *v57 != 66)
              {
                continue;
              }

              *(a2 + 1) = v57 + 1;
LABEL_190:
              *(this + 79) |= 0x80u;
              v58 = *(this + 8);
              if (!v58)
              {
                operator new();
              }

              v275 = 0;
              v59 = *(a2 + 1);
              if (v59 >= *(a2 + 2) || *v59 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v59;
                *(a2 + 1) = v59 + 1;
              }

              v60 = *(a2 + 14);
              v61 = *(a2 + 15);
              *(a2 + 14) = v60 + 1;
              if (v60 >= v61)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Timer::MergePartialFromCodedStream(v58, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v62 = *(a2 + 14);
              v13 = __OFSUB__(v62, 1);
              v63 = v62 - 1;
              if (v63 < 0 == v13)
              {
                *(a2 + 14) = v63;
              }

              v64 = *(a2 + 1);
              if (v64 >= *(a2 + 2) || *v64 != 74)
              {
                continue;
              }

              *(a2 + 1) = v64 + 1;
LABEL_204:
              *(this + 79) |= 0x100u;
              v65 = *(this + 9);
              if (!v65)
              {
                operator new();
              }

              v275 = 0;
              v66 = *(a2 + 1);
              if (v66 >= *(a2 + 2) || *v66 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v66;
                *(a2 + 1) = v66 + 1;
              }

              v67 = *(a2 + 14);
              v68 = *(a2 + 15);
              *(a2 + 14) = v67 + 1;
              if (v67 >= v68)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::DigitalElevationModel::MergePartialFromCodedStream(v65, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v69 = *(a2 + 14);
              v13 = __OFSUB__(v69, 1);
              v70 = v69 - 1;
              if (v70 < 0 == v13)
              {
                *(a2 + 14) = v70;
              }

              v71 = *(a2 + 1);
              if (v71 >= *(a2 + 2) || *v71 != 82)
              {
                continue;
              }

              *(a2 + 1) = v71 + 1;
LABEL_218:
              *(this + 79) |= 0x200u;
              v72 = *(this + 10);
              if (!v72)
              {
                operator new();
              }

              v275 = 0;
              v73 = *(a2 + 1);
              if (v73 >= *(a2 + 2) || *v73 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v73;
                *(a2 + 1) = v73 + 1;
              }

              v74 = *(a2 + 14);
              v75 = *(a2 + 15);
              *(a2 + 14) = v74 + 1;
              if (v74 >= v75)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::MapVector::MergePartialFromCodedStream(v72, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v76 = *(a2 + 14);
              v13 = __OFSUB__(v76, 1);
              v77 = v76 - 1;
              if (v77 < 0 == v13)
              {
                *(a2 + 14) = v77;
              }

              v78 = *(a2 + 1);
              if (v78 >= *(a2 + 2) || *v78 != 90)
              {
                continue;
              }

              *(a2 + 1) = v78 + 1;
LABEL_232:
              *(this + 79) |= 0x400u;
              v79 = *(this + 11);
              if (!v79)
              {
                operator new();
              }

              v275 = 0;
              v80 = *(a2 + 1);
              if (v80 >= *(a2 + 2) || *v80 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v80;
                *(a2 + 1) = v80 + 1;
              }

              v81 = *(a2 + 14);
              v82 = *(a2 + 15);
              *(a2 + 14) = v81 + 1;
              if (v81 >= v82)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::DeviceStatus::MergePartialFromCodedStream(v79, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v83 = *(a2 + 14);
              v13 = __OFSUB__(v83, 1);
              v84 = v83 - 1;
              if (v84 < 0 == v13)
              {
                *(a2 + 14) = v84;
              }

              v85 = *(a2 + 1);
              if (v85 >= *(a2 + 2) || *v85 != 98)
              {
                continue;
              }

              *(a2 + 1) = v85 + 1;
LABEL_246:
              *(this + 79) |= 0x800u;
              v86 = *(this + 12);
              if (!v86)
              {
                operator new();
              }

              v275 = 0;
              v87 = *(a2 + 1);
              if (v87 >= *(a2 + 2) || *v87 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v87;
                *(a2 + 1) = v87 + 1;
              }

              v88 = *(a2 + 14);
              v89 = *(a2 + 15);
              *(a2 + 14) = v88 + 1;
              if (v88 >= v89)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::SignalEnvironment::MergePartialFromCodedStream(v86, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v90 = *(a2 + 14);
              v13 = __OFSUB__(v90, 1);
              v91 = v90 - 1;
              if (v91 < 0 == v13)
              {
                *(a2 + 14) = v91;
              }

              v92 = *(a2 + 1);
              if (v92 >= *(a2 + 2) || *v92 != 106)
              {
                continue;
              }

              *(a2 + 1) = v92 + 1;
LABEL_260:
              *(this + 79) |= 0x1000u;
              v93 = *(this + 13);
              if (!v93)
              {
                operator new();
              }

              v275 = 0;
              v94 = *(a2 + 1);
              if (v94 >= *(a2 + 2) || *v94 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v94;
                *(a2 + 1) = v94 + 1;
              }

              v95 = *(a2 + 14);
              v96 = *(a2 + 15);
              *(a2 + 14) = v95 + 1;
              if (v95 >= v96)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::MergePartialFromCodedStream(v93, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v97 = *(a2 + 14);
              v13 = __OFSUB__(v97, 1);
              v98 = v97 - 1;
              if (v98 < 0 == v13)
              {
                *(a2 + 14) = v98;
              }

              v99 = *(a2 + 1);
              if (v99 >= *(a2 + 2) || *v99 != 114)
              {
                continue;
              }

              *(a2 + 1) = v99 + 1;
LABEL_274:
              *(this + 79) |= 0x2000u;
              v100 = *(this + 14);
              if (!v100)
              {
                operator new();
              }

              v275 = 0;
              v101 = *(a2 + 1);
              if (v101 >= *(a2 + 2) || *v101 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v101;
                *(a2 + 1) = v101 + 1;
              }

              v102 = *(a2 + 14);
              v103 = *(a2 + 15);
              *(a2 + 14) = v102 + 1;
              if (v102 >= v103)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Magnetometer::MergePartialFromCodedStream(v100, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v104 = *(a2 + 14);
              v13 = __OFSUB__(v104, 1);
              v105 = v104 - 1;
              if (v105 < 0 == v13)
              {
                *(a2 + 14) = v105;
              }

              v106 = *(a2 + 1);
              if (v106 >= *(a2 + 2) || *v106 != 122)
              {
                continue;
              }

              *(a2 + 1) = v106 + 1;
LABEL_288:
              *(this + 79) |= 0x4000u;
              v107 = *(this + 15);
              if (!v107)
              {
                operator new();
              }

              v275 = 0;
              v108 = *(a2 + 1);
              if (v108 >= *(a2 + 2) || *v108 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v108;
                *(a2 + 1) = v108 + 1;
              }

              v109 = *(a2 + 14);
              v110 = *(a2 + 15);
              *(a2 + 14) = v109 + 1;
              if (v109 >= v110)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Reset::MergePartialFromCodedStream(v107, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v111 = *(a2 + 14);
              v13 = __OFSUB__(v111, 1);
              v112 = v111 - 1;
              if (v112 < 0 == v13)
              {
                *(a2 + 14) = v112;
              }

              v113 = *(a2 + 1);
              if (*(a2 + 4) - v113 <= 1 || *v113 != 130 || v113[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v113 + 2;
LABEL_303:
              *(this + 79) |= 0x8000u;
              v114 = *(this + 16);
              if (!v114)
              {
                operator new();
              }

              v275 = 0;
              v115 = *(a2 + 1);
              if (v115 >= *(a2 + 2) || *v115 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v115;
                *(a2 + 1) = v115 + 1;
              }

              v116 = *(a2 + 14);
              v117 = *(a2 + 15);
              *(a2 + 14) = v116 + 1;
              if (v116 >= v117)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::StepCount::MergePartialFromCodedStream(v114, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v118 = *(a2 + 14);
              v13 = __OFSUB__(v118, 1);
              v119 = v118 - 1;
              if (v119 < 0 == v13)
              {
                *(a2 + 14) = v119;
              }

              v120 = *(a2 + 1);
              if (*(a2 + 4) - v120 <= 1 || *v120 != 154 || v120[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v120 + 2;
LABEL_318:
              *(this + 79) |= 0x10000u;
              v121 = *(this + 17);
              if (!v121)
              {
                operator new();
              }

              v275 = 0;
              v122 = *(a2 + 1);
              if (v122 >= *(a2 + 2) || *v122 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v122;
                *(a2 + 1) = v122 + 1;
              }

              v123 = *(a2 + 14);
              v124 = *(a2 + 15);
              *(a2 + 14) = v123 + 1;
              if (v123 >= v124)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotionSample::MergePartialFromCodedStream(v121, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v125 = *(a2 + 14);
              v13 = __OFSUB__(v125, 1);
              v126 = v125 - 1;
              if (v126 < 0 == v13)
              {
                *(a2 + 14) = v126;
              }

              v127 = *(a2 + 1);
              if (*(a2 + 4) - v127 <= 1 || *v127 != 170 || v127[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v127 + 2;
LABEL_333:
              *(this + 79) |= 0x20000u;
              v128 = *(this + 18);
              if (!v128)
              {
                operator new();
              }

              v275 = 0;
              v129 = *(a2 + 1);
              if (v129 >= *(a2 + 2) || *v129 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v129;
                *(a2 + 1) = v129 + 1;
              }

              v130 = *(a2 + 14);
              v131 = *(a2 + 15);
              *(a2 + 14) = v130 + 1;
              if (v130 >= v131)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::TunnelBridgeNotification::MergePartialFromCodedStream(v128, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v132 = *(a2 + 14);
              v13 = __OFSUB__(v132, 1);
              v133 = v132 - 1;
              if (v133 < 0 == v13)
              {
                *(a2 + 14) = v133;
              }

              v134 = *(a2 + 1);
              if (*(a2 + 4) - v134 <= 1 || *v134 != 178 || v134[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v134 + 2;
LABEL_348:
              *(this + 79) |= 0x40000u;
              v135 = *(this + 19);
              if (!v135)
              {
                operator new();
              }

              v275 = 0;
              v136 = *(a2 + 1);
              if (v136 >= *(a2 + 2) || *v136 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v136;
                *(a2 + 1) = v136 + 1;
              }

              v137 = *(a2 + 14);
              v138 = *(a2 + 15);
              *(a2 + 14) = v137 + 1;
              if (v137 >= v138)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::WifiNotification::MergePartialFromCodedStream(v135, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v139 = *(a2 + 14);
              v13 = __OFSUB__(v139, 1);
              v140 = v139 - 1;
              if (v140 < 0 == v13)
              {
                *(a2 + 14) = v140;
              }

              v141 = *(a2 + 1);
              if (*(a2 + 4) - v141 <= 1 || *v141 != 186 || v141[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v141 + 2;
LABEL_363:
              *(this + 79) |= 0x80000u;
              v142 = *(this + 20);
              if (!v142)
              {
                operator new();
              }

              v275 = 0;
              v143 = *(a2 + 1);
              if (v143 >= *(a2 + 2) || *v143 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v143;
                *(a2 + 1) = v143 + 1;
              }

              v144 = *(a2 + 14);
              v145 = *(a2 + 15);
              *(a2 + 14) = v144 + 1;
              if (v144 >= v145)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::TunnelEndPoint::MergePartialFromCodedStream(v142, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v146 = *(a2 + 14);
              v13 = __OFSUB__(v146, 1);
              v147 = v146 - 1;
              if (v147 < 0 == v13)
              {
                *(a2 + 14) = v147;
              }

              v148 = *(a2 + 1);
              if (*(a2 + 4) - v148 <= 1 || *v148 != 194 || v148[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v148 + 2;
LABEL_378:
              *(this + 79) |= 0x100000u;
              v149 = *(this + 21);
              if (!v149)
              {
                operator new();
              }

              v275 = 0;
              v150 = *(a2 + 1);
              if (v150 >= *(a2 + 2) || *v150 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v150;
                *(a2 + 1) = v150 + 1;
              }

              v151 = *(a2 + 14);
              v152 = *(a2 + 15);
              *(a2 + 14) = v151 + 1;
              if (v151 >= v152)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::AccessoryVehicleSpeedNotification::MergePartialFromCodedStream(v149, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v153 = *(a2 + 14);
              v13 = __OFSUB__(v153, 1);
              v154 = v153 - 1;
              if (v154 < 0 == v13)
              {
                *(a2 + 14) = v154;
              }

              v155 = *(a2 + 1);
              if (*(a2 + 4) - v155 <= 1 || *v155 != 202 || v155[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v155 + 2;
LABEL_393:
              *(this + 79) |= 0x200000u;
              v156 = *(this + 22);
              if (!v156)
              {
                operator new();
              }

              v275 = 0;
              v157 = *(a2 + 1);
              if (v157 >= *(a2 + 2) || *v157 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v157;
                *(a2 + 1) = v157 + 1;
              }

              v158 = *(a2 + 14);
              v159 = *(a2 + 15);
              *(a2 + 14) = v158 + 1;
              if (v158 >= v159)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::MapMatchingRouteHint::MergePartialFromCodedStream(v156, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v160 = *(a2 + 14);
              v13 = __OFSUB__(v160, 1);
              v161 = v160 - 1;
              if (v161 < 0 == v13)
              {
                *(a2 + 14) = v161;
              }

              v162 = *(a2 + 1);
              if (*(a2 + 4) - v162 <= 1 || *v162 != 210 || v162[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v162 + 2;
LABEL_408:
              *(this + 79) |= 0x400000u;
              v163 = *(this + 23);
              if (!v163)
              {
                operator new();
              }

              v275 = 0;
              v164 = *(a2 + 1);
              if (v164 >= *(a2 + 2) || *v164 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v164;
                *(a2 + 1) = v164 + 1;
              }

              v165 = *(a2 + 14);
              v166 = *(a2 + 15);
              *(a2 + 14) = v165 + 1;
              if (v165 >= v166)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::Compass::MergePartialFromCodedStream(v163, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v167 = *(a2 + 14);
              v13 = __OFSUB__(v167, 1);
              v168 = v167 - 1;
              if (v168 < 0 == v13)
              {
                *(a2 + 14) = v168;
              }

              v169 = *(a2 + 1);
              if (*(a2 + 4) - v169 <= 1 || *v169 != 218 || v169[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v169 + 2;
LABEL_423:
              *(this + 79) |= 0x800000u;
              v170 = *(this + 24);
              if (!v170)
              {
                operator new();
              }

              v275 = 0;
              v171 = *(a2 + 1);
              if (v171 >= *(a2 + 2) || *v171 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v171;
                *(a2 + 1) = v171 + 1;
              }

              v172 = *(a2 + 14);
              v173 = *(a2 + 15);
              *(a2 + 14) = v172 + 1;
              if (v172 >= v173)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::DeviceMotion::MergePartialFromCodedStream(v170, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v174 = *(a2 + 14);
              v13 = __OFSUB__(v174, 1);
              v175 = v174 - 1;
              if (v175 < 0 == v13)
              {
                *(a2 + 14) = v175;
              }

              v176 = *(a2 + 1);
              if (*(a2 + 4) - v176 <= 1 || *v176 != 226 || v176[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v176 + 2;
LABEL_438:
              *(this + 79) |= 0x1000000u;
              v177 = *(this + 25);
              if (!v177)
              {
                operator new();
              }

              v275 = 0;
              v178 = *(a2 + 1);
              if (v178 >= *(a2 + 2) || *v178 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v178;
                *(a2 + 1) = v178 + 1;
              }

              v179 = *(a2 + 14);
              v180 = *(a2 + 15);
              *(a2 + 14) = v179 + 1;
              if (v179 >= v180)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::GnssAvailabilityPrediction::MergePartialFromCodedStream(v177, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v181 = *(a2 + 14);
              v13 = __OFSUB__(v181, 1);
              v182 = v181 - 1;
              if (v182 < 0 == v13)
              {
                *(a2 + 14) = v182;
              }

              v183 = *(a2 + 1);
              if (*(a2 + 4) - v183 <= 1 || *v183 != 234 || v183[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v183 + 2;
LABEL_453:
              *(this + 79) |= 0x2000000u;
              v184 = *(this + 26);
              if (!v184)
              {
                operator new();
              }

              v275 = 0;
              v185 = *(a2 + 1);
              if (v185 >= *(a2 + 2) || *v185 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v185;
                *(a2 + 1) = v185 + 1;
              }

              v186 = *(a2 + 14);
              v187 = *(a2 + 15);
              *(a2 + 14) = v186 + 1;
              if (v186 >= v187)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::GEOMapBuildingData::MergePartialFromCodedStream(v184, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v188 = *(a2 + 14);
              v13 = __OFSUB__(v188, 1);
              v189 = v188 - 1;
              if (v189 < 0 == v13)
              {
                *(a2 + 14) = v189;
              }

              v190 = *(a2 + 1);
              if (*(a2 + 4) - v190 <= 1 || *v190 != 242 || v190[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v190 + 2;
LABEL_468:
              *(this + 79) |= 0x4000000u;
              v191 = *(this + 27);
              if (!v191)
              {
                operator new();
              }

              v275 = 0;
              v192 = *(a2 + 1);
              if (v192 >= *(a2 + 2) || *v192 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v192;
                *(a2 + 1) = v192 + 1;
              }

              v193 = *(a2 + 14);
              v194 = *(a2 + 15);
              *(a2 + 14) = v193 + 1;
              if (v193 >= v194)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::GEOMapTropicalSavannaData::MergePartialFromCodedStream(v191, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v195 = *(a2 + 14);
              v13 = __OFSUB__(v195, 1);
              v196 = v195 - 1;
              if (v196 < 0 == v13)
              {
                *(a2 + 14) = v196;
              }

              v197 = *(a2 + 1);
              if (*(a2 + 4) - v197 <= 1 || *v197 != 250 || v197[1] != 1)
              {
                continue;
              }

              *(a2 + 1) = v197 + 2;
LABEL_483:
              *(this + 79) |= 0x8000000u;
              v198 = *(this + 28);
              if (!v198)
              {
                operator new();
              }

              v275 = 0;
              v199 = *(a2 + 1);
              if (v199 >= *(a2 + 2) || *v199 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v199;
                *(a2 + 1) = v199 + 1;
              }

              v200 = *(a2 + 14);
              v201 = *(a2 + 15);
              *(a2 + 14) = v200 + 1;
              if (v200 >= v201)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::WatchState::MergePartialFromCodedStream(v198, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v202 = *(a2 + 14);
              v13 = __OFSUB__(v202, 1);
              v203 = v202 - 1;
              if (v203 < 0 == v13)
              {
                *(a2 + 14) = v203;
              }

              v204 = *(a2 + 1);
              if (*(a2 + 4) - v204 <= 1 || *v204 != 130 || v204[1] != 2)
              {
                continue;
              }

              *(a2 + 1) = v204 + 2;
LABEL_498:
              *(this + 79) |= 0x10000000u;
              v205 = *(this + 29);
              if (!v205)
              {
                operator new();
              }

              v275 = 0;
              v206 = *(a2 + 1);
              if (v206 >= *(a2 + 2) || *v206 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v206;
                *(a2 + 1) = v206 + 1;
              }

              v207 = *(a2 + 14);
              v208 = *(a2 + 15);
              *(a2 + 14) = v207 + 1;
              if (v207 >= v208)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::MotionStateMediator::MergePartialFromCodedStream(v205, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v209 = *(a2 + 14);
              v13 = __OFSUB__(v209, 1);
              v210 = v209 - 1;
              if (v210 < 0 == v13)
              {
                *(a2 + 14) = v210;
              }

              v211 = *(a2 + 1);
              if (*(a2 + 4) - v211 <= 1 || *v211 != 138 || v211[1] != 2)
              {
                continue;
              }

              *(a2 + 1) = v211 + 2;
LABEL_513:
              *(this + 79) |= 0x20000000u;
              v212 = *(this + 30);
              if (!v212)
              {
                operator new();
              }

              v275 = 0;
              v213 = *(a2 + 1);
              if (v213 >= *(a2 + 2) || *v213 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v213;
                *(a2 + 1) = v213 + 1;
              }

              v214 = *(a2 + 14);
              v215 = *(a2 + 15);
              *(a2 + 14) = v214 + 1;
              if (v214 >= v215)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::RoutineVisit::MergePartialFromCodedStream(v212, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v216 = *(a2 + 14);
              v13 = __OFSUB__(v216, 1);
              v217 = v216 - 1;
              if (v217 < 0 == v13)
              {
                *(a2 + 14) = v217;
              }

              v218 = *(a2 + 1);
              if (*(a2 + 4) - v218 <= 1 || *v218 != 146 || v218[1] != 2)
              {
                continue;
              }

              *(a2 + 1) = v218 + 2;
LABEL_528:
              *(this + 79) |= 0x40000000u;
              v219 = *(this + 31);
              if (!v219)
              {
                operator new();
              }

              v275 = 0;
              v220 = *(a2 + 1);
              if (v220 >= *(a2 + 2) || *v220 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v220;
                *(a2 + 1) = v220 + 1;
              }

              v221 = *(a2 + 14);
              v222 = *(a2 + 15);
              *(a2 + 14) = v221 + 1;
              if (v221 >= v222)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::RavenGnssAssistanceFile::AssistanceFileContents::MergePartialFromCodedStream(v219, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v223 = *(a2 + 14);
              v13 = __OFSUB__(v223, 1);
              v224 = v223 - 1;
              if (v224 < 0 == v13)
              {
                *(a2 + 14) = v224;
              }

              v225 = *(a2 + 1);
              if (*(a2 + 4) - v225 <= 1 || *v225 != 154 || v225[1] != 2)
              {
                continue;
              }

              *(a2 + 1) = v225 + 2;
LABEL_543:
              *(this + 79) |= 0x80000000;
              v226 = *(this + 32);
              if (!v226)
              {
                operator new();
              }

              v275 = 0;
              v227 = *(a2 + 1);
              if (v227 >= *(a2 + 2) || *v227 < 0)
              {
                if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
                {
                  return 0;
                }
              }

              else
              {
                v275 = *v227;
                *(a2 + 1) = v227 + 1;
              }

              v228 = *(a2 + 14);
              v229 = *(a2 + 15);
              *(a2 + 14) = v228 + 1;
              if (v228 >= v229)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
              if (!CoreNavigation::CLP::LogEntry::PrivateData::OutdoorUpdate::MergePartialFromCodedStream(v226, a2) || *(a2 + 36) != 1)
              {
                return 0;
              }

              wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
              v230 = *(a2 + 14);
              v13 = __OFSUB__(v230, 1);
              v231 = v230 - 1;
              if (v231 < 0 == v13)
              {
                *(a2 + 14) = v231;
              }

              v232 = *(a2 + 1);
              if (*(a2 + 4) - v232 <= 1 || *v232 != 194 || v232[1] != 62)
              {
                continue;
              }

              *(a2 + 1) = v232 + 2;
              break;
            case 2u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_106;
            case 3u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_120;
            case 4u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_134;
            case 5u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_148;
            case 6u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_162;
            case 7u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_176;
            case 8u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_190;
            case 9u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_204;
            case 0xAu:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_218;
            case 0xBu:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_232;
            case 0xCu:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_246;
            case 0xDu:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_260;
            case 0xEu:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_274;
            case 0xFu:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_288;
            case 0x10u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_303;
            case 0x13u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_318;
            case 0x15u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_333;
            case 0x16u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_348;
            case 0x17u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_363;
            case 0x18u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_378;
            case 0x19u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_393;
            case 0x1Au:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_408;
            case 0x1Bu:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_423;
            case 0x1Cu:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_438;
            case 0x1Du:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_453;
            case 0x1Eu:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_468;
            case 0x1Fu:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_483;
            case 0x20u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_498;
            case 0x21u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_513;
            case 0x22u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_528;
            case 0x23u:
              if (v7 != 2)
              {
                goto LABEL_94;
              }

              goto LABEL_543;
            default:
              goto LABEL_94;
          }

          goto LABEL_558;
        }

        if (TagFallback >> 3 <= 0x3F1)
        {
          break;
        }

        if (v6 == 1010)
        {
          if (v7 != 2)
          {
            goto LABEL_94;
          }

LABEL_603:
          *(this + 80) |= 8u;
          v254 = *(this + 36);
          if (!v254)
          {
            operator new();
          }

          v275 = 0;
          v255 = *(a2 + 1);
          if (v255 >= *(a2 + 2) || *v255 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
            {
              return 0;
            }
          }

          else
          {
            v275 = *v255;
            *(a2 + 1) = v255 + 1;
          }

          v256 = *(a2 + 14);
          v257 = *(a2 + 15);
          *(a2 + 14) = v256 + 1;
          if (v256 >= v257)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::MergePartialFromCodedStream(v254, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v258 = *(a2 + 14);
          v13 = __OFSUB__(v258, 1);
          v259 = v258 - 1;
          if (v259 < 0 == v13)
          {
            *(a2 + 14) = v259;
          }

          v260 = *(a2 + 1);
          if (*(a2 + 4) - v260 > 1 && *v260 == 178 && v260[1] == 63)
          {
            *(a2 + 1) = v260 + 2;
LABEL_618:
            *(this + 80) |= 0x10u;
            v261 = *(this + 37);
            if (!v261)
            {
              operator new();
            }

            v275 = 0;
            v262 = *(a2 + 1);
            if (v262 >= *(a2 + 2) || *v262 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
              {
                return 0;
              }
            }

            else
            {
              v275 = *v262;
              *(a2 + 1) = v262 + 1;
            }

            v263 = *(a2 + 14);
            v264 = *(a2 + 15);
            *(a2 + 14) = v263 + 1;
            if (v263 >= v264)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::RayTracingTilesAvailability::LogEntry::MergePartialFromCodedStream(v261, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v265 = *(a2 + 14);
            v13 = __OFSUB__(v265, 1);
            v266 = v265 - 1;
            if (v266 < 0 == v13)
            {
              *(a2 + 14) = v266;
            }

            v267 = *(a2 + 1);
            if (*(a2 + 4) - v267 > 1 && *v267 == 194 && v267[1] == 63)
            {
              *(a2 + 1) = v267 + 2;
              goto LABEL_633;
            }
          }
        }

        else
        {
          if (v6 == 1014)
          {
            if (v7 == 2)
            {
              goto LABEL_618;
            }

            goto LABEL_94;
          }

          if (v6 != 1016 || v7 != 2)
          {
            goto LABEL_94;
          }

LABEL_633:
          *(this + 80) |= 0x20u;
          v268 = *(this + 38);
          if (!v268)
          {
            operator new();
          }

          v275 = 0;
          v269 = *(a2 + 1);
          if (v269 >= *(a2 + 2) || *v269 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
            {
              return 0;
            }
          }

          else
          {
            v275 = *v269;
            *(a2 + 1) = v269 + 1;
          }

          v270 = *(a2 + 14);
          v271 = *(a2 + 15);
          *(a2 + 14) = v270 + 1;
          if (v270 >= v271)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::RayTracingTileData::LogEntry::MergePartialFromCodedStream(v268, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v272 = *(a2 + 14);
          v13 = __OFSUB__(v272, 1);
          v273 = v272 - 1;
          if (v273 < 0 == v13)
          {
            *(a2 + 14) = v273;
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

      if (v6 != 1000)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_94;
      }

LABEL_558:
      *(this + 80) |= 1u;
      v233 = *(this + 33);
      if (!v233)
      {
        operator new();
      }

      v275 = 0;
      v234 = *(a2 + 1);
      if (v234 >= *(a2 + 2) || *v234 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
        {
          return 0;
        }
      }

      else
      {
        v275 = *v234;
        *(a2 + 1) = v234 + 1;
      }

      v235 = *(a2 + 14);
      v236 = *(a2 + 15);
      *(a2 + 14) = v235 + 1;
      if (v235 >= v236)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::InternalToolData::InternalToolDataCapture::MergePartialFromCodedStream(v233, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v237 = *(a2 + 14);
      v13 = __OFSUB__(v237, 1);
      v238 = v237 - 1;
      if (v238 < 0 == v13)
      {
        *(a2 + 14) = v238;
      }

      v239 = *(a2 + 1);
      if (*(a2 + 4) - v239 > 1 && *v239 == 242 && v239[1] == 62)
      {
        *(a2 + 1) = v239 + 2;
LABEL_573:
        *(this + 80) |= 2u;
        v240 = *(this + 34);
        if (!v240)
        {
          operator new();
        }

        v275 = 0;
        v241 = *(a2 + 1);
        if (v241 >= *(a2 + 2) || *v241 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
          {
            return 0;
          }
        }

        else
        {
          v275 = *v241;
          *(a2 + 1) = v241 + 1;
        }

        v242 = *(a2 + 14);
        v243 = *(a2 + 15);
        *(a2 + 14) = v242 + 1;
        if (v242 >= v243)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::Raven::LogEntry::MergePartialFromCodedStream(v240, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v244 = *(a2 + 14);
        v13 = __OFSUB__(v244, 1);
        v245 = v244 - 1;
        if (v245 < 0 == v13)
        {
          *(a2 + 14) = v245;
        }

        v246 = *(a2 + 1);
        if (*(a2 + 4) - v246 > 1 && *v246 == 250 && v246[1] == 62)
        {
          *(a2 + 1) = v246 + 2;
LABEL_588:
          *(this + 80) |= 4u;
          v247 = *(this + 35);
          if (!v247)
          {
            operator new();
          }

          v275 = 0;
          v248 = *(a2 + 1);
          if (v248 >= *(a2 + 2) || *v248 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v275))
            {
              return 0;
            }
          }

          else
          {
            v275 = *v248;
            *(a2 + 1) = v248 + 1;
          }

          v249 = *(a2 + 14);
          v250 = *(a2 + 15);
          *(a2 + 14) = v249 + 1;
          if (v249 >= v250)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::Vision::LogEntry::MergePartialFromCodedStream(v247, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v251 = *(a2 + 14);
          v13 = __OFSUB__(v251, 1);
          v252 = v251 - 1;
          if (v252 < 0 == v13)
          {
            *(a2 + 14) = v252;
          }

          v253 = *(a2 + 1);
          if (*(a2 + 4) - v253 > 1 && *v253 == 146 && v253[1] == 63)
          {
            *(a2 + 1) = v253 + 2;
            goto LABEL_603;
          }
        }
      }
    }

    if (v6 == 1006)
    {
      if (v7 == 2)
      {
        goto LABEL_573;
      }
    }

    else if (v6 == 1007 && v7 == 2)
    {
      goto LABEL_588;
    }

LABEL_94:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v11) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v11;
        *(this + 9) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || v7 != 1)
      {
        goto LABEL_20;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v11) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v11;
      *(this + 9) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
LABEL_15:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v11) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v11;
        *(this + 9) |= 2u;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 25)
        {
          *(a2 + 1) = v9 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v7 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

double CNTimeSpan::SetTimeSpan(CNTimeSpan *this, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  if ((a3.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    if (a2 == 0x8000000000000000 && *a3.i64 > 0.0 || a2 == 0x7FFFFFFFFFFFFFFFLL && *a3.i64 < 0.0)
    {
      *this = 0;
      *(this + 1) = 0x7FF8000000000000;
      return *a3.i64;
    }

    *this = 0;
LABEL_16:
    *(this + 1) = a3.i64[0];
    return *a3.i64;
  }

  if (fabs(*a3.i64) > 9.22337204e18)
  {
    *this = 0;
    a4.i64[0] = 0x7FF0000000000000;
    v4.f64[0] = NAN;
    v4.f64[1] = NAN;
    a3.i64[0] = vbslq_s8(vnegq_f64(v4), a4, a3).u64[0];
    goto LABEL_16;
  }

  *a4.i64 = trunc(*a3.i64);
  v5 = a2 + *a3.i64;
  *this = v5;
  if (__OFADD__(a2, *a3.i64))
  {
    *this = 0;
    a3.i64[0] = 0x7FF0000000000000;
    v6.f64[0] = NAN;
    v6.f64[1] = NAN;
    a3.i64[0] = vbslq_s8(vnegq_f64(v6), a3, a4).u64[0];
    goto LABEL_16;
  }

  *a3.i64 = *a3.i64 - *a4.i64;
  *(this + 1) = a3.i64[0];
  if (v5 >= 1 && *a3.i64 < 0.0)
  {
    *this = v5 - 1;
    v7 = 1.0;
LABEL_20:
    *a3.i64 = *a3.i64 + v7;
    *(this + 1) = a3.i64[0];
    return *a3.i64;
  }

  if (v5 < 0 && *a3.i64 > 0.0)
  {
    *this = v5 + 1;
    v7 = -1.0;
    goto LABEL_20;
  }

  return *a3.i64;
}

_BYTE *sub_1D0B751F4(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1D0C537F0();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

uint64_t CNTimeSpan::operator-(void *a1, void *a2, int8x16_t a3, int8x16_t a4)
{
  a3.i64[0] = a1[1];
  a4.i64[0] = a2[1];
  v6 = __OFSUB__(*a1, *a2);
  v7 = *a1 - *a2;
  if (v6)
  {
    return 0;
  }

  v9[2] = v4;
  v9[3] = v5;
  *a3.i64 = *a3.i64 - *a4.i64;
  v9[0] = 0;
  v9[1] = 0;
  CNTimeSpan::SetTimeSpan(v9, v7, a3, a4);
  return v9[0];
}

uint64_t trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *a1)
{
  CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(v15);
  if (wireless_diagnostics::google::protobuf::MessageLite::ParseFromString())
  {
    v10 = trackrun::TrackRunSupervisor::RaiseEventsFrom(a1, v15, v2, v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    cnprint::CNPrinter::Print(&v14, &v13, "Failed to parse incoming LogEntry", v3, v4, v5, v6, v7, v12);
    v10 = 0;
  }

  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(v15);
  return v10;
}

void sub_1D0B753B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(va);
  _Unwind_Resume(a1);
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Location::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Location *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    v4 = *(a2 + 1);
    if (v4 < *(a2 + 2))
    {
      TagFallback = *v4;
      if ((TagFallback & 0x80000000) == 0)
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v4 + 1;
        if (!TagFallback)
        {
          return 1;
        }

        goto LABEL_6;
      }
    }

    TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
    *(a2 + 8) = TagFallback;
    if (!TagFallback)
    {
      return 1;
    }

LABEL_6:
    v6 = TagFallback & 7;
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v6 != 2)
        {
          goto LABEL_36;
        }

        *(this + 25) |= 1u;
        v7 = *(this + 1);
        if (!v7)
        {
          operator new();
        }

        v82[0] = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v82))
          {
            return 0;
          }
        }

        else
        {
          v82[0] = *v8;
          *(a2 + 1) = v8 + 1;
        }

        v18 = *(a2 + 14);
        v19 = *(a2 + 15);
        *(a2 + 14) = v18 + 1;
        if (v18 >= v19)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
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
        v14 = *(a2 + 2);
        if (v23 >= v14 || *v23 != 16)
        {
          continue;
        }

        v15 = v23 + 1;
        *(a2 + 1) = v15;
        goto LABEL_48;
      case 2u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
LABEL_48:
        v82[0] = 0;
        if (v15 >= v14 || (v24 = *v15, (v24 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v82);
          if (!result)
          {
            return result;
          }

          v24 = v82[0];
          v25 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v25 = v15 + 1;
          *(a2 + 1) = v25;
        }

        *(this + 8) = v24;
        v11 = *(this + 25) | 2;
        *(this + 25) = v11;
        if (v25 >= v14 || *v25 != 26)
        {
          continue;
        }

        *(a2 + 1) = v25 + 1;
LABEL_56:
        *(this + 25) = v11 | 4;
        v27 = *(this + 2);
        if (!v27)
        {
          operator new();
        }

        v82[0] = 0;
        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v82))
          {
            return 0;
          }
        }

        else
        {
          v82[0] = *v28;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::MergePartialFromCodedStream(v27, a2) || *(a2 + 36) != 1)
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

        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 != 34)
        {
          continue;
        }

        *(a2 + 1) = v33 + 1;
LABEL_70:
        *(this + 25) |= 8u;
        v34 = *(this + 3);
        if (!v34)
        {
          operator new();
        }

        v82[0] = 0;
        v35 = *(a2 + 1);
        if (v35 >= *(a2 + 2) || *v35 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v82))
          {
            return 0;
          }
        }

        else
        {
          v82[0] = *v35;
          *(a2 + 1) = v35 + 1;
        }

        v36 = *(a2 + 14);
        v37 = *(a2 + 15);
        *(a2 + 14) = v36 + 1;
        if (v36 >= v37)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::MergePartialFromCodedStream(v34, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v38 = *(a2 + 14);
        v21 = __OFSUB__(v38, 1);
        v39 = v38 - 1;
        if (v39 < 0 == v21)
        {
          *(a2 + 14) = v39;
        }

        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 != 42)
        {
          continue;
        }

        *(a2 + 1) = v40 + 1;
LABEL_84:
        *(this + 25) |= 0x10u;
        v41 = *(this + 5);
        if (!v41)
        {
          operator new();
        }

        v82[0] = 0;
        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2) || *v42 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v82))
          {
            return 0;
          }
        }

        else
        {
          v82[0] = *v42;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::MergePartialFromCodedStream(v41, a2) || *(a2 + 36) != 1)
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
        v16 = *(a2 + 2);
        if (v47 >= v16 || *v47 != 48)
        {
          continue;
        }

        v17 = v47 + 1;
        *(a2 + 1) = v17;
LABEL_98:
        v82[0] = 0;
        if (v17 >= v16 || (v48 = *v17, (v48 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v82);
          if (!result)
          {
            return result;
          }

          v48 = v82[0];
          v49 = *(a2 + 1);
          v16 = *(a2 + 2);
        }

        else
        {
          v49 = v17 + 1;
          *(a2 + 1) = v49;
        }

        *(this + 36) = v48 != 0;
        *(this + 25) |= 0x20u;
        if (v49 >= v16 || *v49 != 57)
        {
          continue;
        }

        *(a2 + 1) = v49 + 1;
LABEL_106:
        *v82 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v82) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v82;
        *(this + 25) |= 0x40u;
        v50 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v50 >= v12 || *v50 != 64)
        {
          continue;
        }

        v13 = v50 + 1;
        *(a2 + 1) = v13;
LABEL_110:
        v82[0] = 0;
        if (v13 >= v12 || (v51 = *v13, (v51 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v82);
          if (!result)
          {
            return result;
          }

          v51 = v82[0];
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v51 <= 2)
        {
          *(this + 25) |= 0x80u;
          *(this + 18) = v51;
        }

        v52 = *(a2 + 1);
        if (v52 >= *(a2 + 2) || *v52 != 74)
        {
          continue;
        }

        *(a2 + 1) = v52 + 1;
LABEL_120:
        *(this + 25) |= 0x100u;
        v53 = *(this + 7);
        if (!v53)
        {
          operator new();
        }

        v82[0] = 0;
        v54 = *(a2 + 1);
        if (v54 >= *(a2 + 2) || *v54 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v82))
          {
            return 0;
          }
        }

        else
        {
          v82[0] = *v54;
          *(a2 + 1) = v54 + 1;
        }

        v55 = *(a2 + 14);
        v56 = *(a2 + 15);
        *(a2 + 14) = v55 + 1;
        if (v55 >= v56)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::MergePartialFromCodedStream(v53, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v57 = *(a2 + 14);
        v21 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v58 < 0 == v21)
        {
          *(a2 + 14) = v58;
        }

        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 != 82)
        {
          continue;
        }

        *(a2 + 1) = v59 + 1;
LABEL_134:
        *(this + 25) |= 0x200u;
        v60 = *(this + 8);
        if (!v60)
        {
          operator new();
        }

        v82[0] = 0;
        v61 = *(a2 + 1);
        if (v61 >= *(a2 + 2) || *v61 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v82))
          {
            return 0;
          }
        }

        else
        {
          v82[0] = *v61;
          *(a2 + 1) = v61 + 1;
        }

        v62 = *(a2 + 14);
        v63 = *(a2 + 15);
        *(a2 + 14) = v62 + 1;
        if (v62 >= v63)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::VehicleHeading::MergePartialFromCodedStream(v60, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v64 = *(a2 + 14);
        v21 = __OFSUB__(v64, 1);
        v65 = v64 - 1;
        if (v65 < 0 == v21)
        {
          *(a2 + 14) = v65;
        }

        v66 = *(a2 + 1);
        if (v66 >= *(a2 + 2) || *v66 != 90)
        {
          continue;
        }

        *(a2 + 1) = v66 + 1;
LABEL_148:
        *(this + 25) |= 0x400u;
        v67 = *(this + 10);
        if (!v67)
        {
          operator new();
        }

        v82[0] = 0;
        v68 = *(a2 + 1);
        if (v68 >= *(a2 + 2) || *v68 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v82))
          {
            return 0;
          }
        }

        else
        {
          v82[0] = *v68;
          *(a2 + 1) = v68 + 1;
        }

        v69 = *(a2 + 14);
        v70 = *(a2 + 15);
        *(a2 + 14) = v69 + 1;
        if (v69 >= v70)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::MergePartialFromCodedStream(v67, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v71 = *(a2 + 14);
        v21 = __OFSUB__(v71, 1);
        v72 = v71 - 1;
        if (v72 < 0 == v21)
        {
          *(a2 + 14) = v72;
        }

        v73 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v73 >= v9 || *v73 != 96)
        {
          continue;
        }

        v10 = v73 + 1;
        *(a2 + 1) = v10;
LABEL_162:
        v82[0] = 0;
        if (v10 >= v9 || (v74 = *v10, (v74 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v82);
          if (!result)
          {
            return result;
          }

          v74 = v82[0];
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v74 <= 2)
        {
          *(this + 25) |= 0x800u;
          *(this + 19) = v74;
        }

        v75 = *(a2 + 1);
        if (v75 >= *(a2 + 2) || *v75 != 106)
        {
          continue;
        }

        *(a2 + 1) = v75 + 1;
LABEL_172:
        *(this + 25) |= 0x1000u;
        v76 = *(this + 11);
        if (!v76)
        {
          operator new();
        }

        v82[0] = 0;
        v77 = *(a2 + 1);
        if (v77 >= *(a2 + 2) || *v77 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v82))
          {
            return 0;
          }
        }

        else
        {
          v82[0] = *v77;
          *(a2 + 1) = v77 + 1;
        }

        v78 = *(a2 + 14);
        v79 = *(a2 + 15);
        *(a2 + 14) = v78 + 1;
        if (v78 >= v79)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::MergePartialFromCodedStream(v76, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v80 = *(a2 + 14);
        v21 = __OFSUB__(v80, 1);
        v81 = v80 - 1;
        if (v81 < 0 == v21)
        {
          *(a2 + 14) = v81;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }

        break;
      case 3u:
        if (v6 != 2)
        {
          goto LABEL_36;
        }

        v11 = *(this + 25);
        goto LABEL_56;
      case 4u:
        if (v6 == 2)
        {
          goto LABEL_70;
        }

        goto LABEL_36;
      case 5u:
        if (v6 == 2)
        {
          goto LABEL_84;
        }

        goto LABEL_36;
      case 6u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_98;
      case 7u:
        if (v6 == 1)
        {
          goto LABEL_106;
        }

        goto LABEL_36;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_110;
      case 9u:
        if (v6 != 2)
        {
          goto LABEL_36;
        }

        goto LABEL_120;
      case 0xAu:
        if (v6 == 2)
        {
          goto LABEL_134;
        }

        goto LABEL_36;
      case 0xBu:
        if (v6 == 2)
        {
          goto LABEL_148;
        }

        goto LABEL_36;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_36;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_162;
      case 0xDu:
        if (v6 == 2)
        {
          goto LABEL_172;
        }

        goto LABEL_36;
      default:
LABEL_36:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v71[0] = 0;
        v7 = *(a2 + 1);
        if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71);
          if (!result)
          {
            return result;
          }

          v8 = v71[0];
        }

        else
        {
          *(a2 + 1) = v7 + 1;
        }

        if (v8 < 3 || v8 == 0xFFFF)
        {
          *(this + 38) |= 1u;
          *(this + 12) = v8;
        }

        v26 = *(a2 + 1);
        if (v26 < *(a2 + 2) && *v26 == 18)
        {
          *(a2 + 1) = v26 + 1;
          goto LABEL_67;
        }

        continue;
      case 2u:
        if (v6 != 2)
        {
          goto LABEL_52;
        }

LABEL_67:
        *(this + 38) |= 2u;
        v27 = *(this + 1);
        if (!v27)
        {
          operator new();
        }

        v71[0] = 0;
        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
          {
            return 0;
          }
        }

        else
        {
          v71[0] = *v28;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergePartialFromCodedStream(v27, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v31 = *(a2 + 14);
        v32 = __OFSUB__(v31, 1);
        v33 = v31 - 1;
        if (v33 < 0 == v32)
        {
          *(a2 + 14) = v33;
        }

        v34 = *(a2 + 1);
        if (v34 >= *(a2 + 2) || *v34 != 25)
        {
          continue;
        }

        *(a2 + 1) = v34 + 1;
LABEL_81:
        *v71 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v71;
        *(this + 38) |= 4u;
        v35 = *(a2 + 1);
        if (v35 >= *(a2 + 2) || *v35 != 33)
        {
          continue;
        }

        *(a2 + 1) = v35 + 1;
LABEL_85:
        *v71 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v71;
        *(this + 38) |= 8u;
        v36 = *(a2 + 1);
        if (v36 >= *(a2 + 2) || *v36 != 41)
        {
          continue;
        }

        *(a2 + 1) = v36 + 1;
LABEL_89:
        *v71 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v71;
        *(this + 38) |= 0x10u;
        v37 = *(a2 + 1);
        if (v37 >= *(a2 + 2) || *v37 != 49)
        {
          continue;
        }

        *(a2 + 1) = v37 + 1;
LABEL_93:
        *v71 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v71;
        *(this + 38) |= 0x20u;
        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 != 57)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_97:
        *v71 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
        {
          return 0;
        }

        *(this + 7) = *v71;
        *(this + 38) |= 0x40u;
        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 != 65)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_101:
        *v71 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v71;
        *(this + 38) |= 0x80u;
        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 != 73)
        {
          continue;
        }

        *(a2 + 1) = v40 + 1;
LABEL_105:
        *v71 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v71;
        *(this + 38) |= 0x100u;
        v41 = *(a2 + 1);
        if (v41 >= *(a2 + 2) || *v41 != 81)
        {
          continue;
        }

        *(a2 + 1) = v41 + 1;
LABEL_109:
        *v71 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = *v71;
        *(this + 38) |= 0x200u;
        v42 = *(a2 + 1);
        v20 = *(a2 + 2);
        if (v42 >= v20 || *v42 != 88)
        {
          continue;
        }

        v21 = v42 + 1;
        *(a2 + 1) = v21;
LABEL_113:
        v71[0] = 0;
        if (v21 >= v20 || (v43 = *v21, (v43 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71);
          if (!result)
          {
            return result;
          }

          v43 = v71[0];
          v44 = *(a2 + 1);
          v20 = *(a2 + 2);
        }

        else
        {
          v44 = v21 + 1;
          *(a2 + 1) = v44;
        }

        *(this + 13) = v43;
        *(this + 38) |= 0x400u;
        if (v44 >= v20 || *v44 != 97)
        {
          continue;
        }

        *(a2 + 1) = v44 + 1;
LABEL_121:
        *v71 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = *v71;
        *(this + 38) |= 0x800u;
        v45 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v45 >= v11 || *v45 != 104)
        {
          continue;
        }

        v12 = v45 + 1;
        *(a2 + 1) = v12;
LABEL_125:
        v71[0] = 0;
        if (v12 >= v11 || (v46 = *v12, (v46 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71);
          if (!result)
          {
            return result;
          }

          v46 = v71[0];
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v46 <= 0xD)
        {
          *(this + 38) |= 0x1000u;
          *(this + 26) = v46;
        }

        v47 = *(a2 + 1);
        if (v47 >= *(a2 + 2) || *v47 != 114)
        {
          continue;
        }

        *(a2 + 1) = v47 + 1;
LABEL_135:
        *(this + 38) |= 0x2000u;
        v48 = *(this + 12);
        if (!v48)
        {
          operator new();
        }

        v71[0] = 0;
        v49 = *(a2 + 1);
        if (v49 >= *(a2 + 2) || *v49 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71))
          {
            return 0;
          }
        }

        else
        {
          v71[0] = *v49;
          *(a2 + 1) = v49 + 1;
        }

        v50 = *(a2 + 14);
        v51 = *(a2 + 15);
        *(a2 + 14) = v50 + 1;
        if (v50 >= v51)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergePartialFromCodedStream(v48, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v52 = *(a2 + 14);
        v32 = __OFSUB__(v52, 1);
        v53 = v52 - 1;
        if (v53 < 0 == v32)
        {
          *(a2 + 14) = v53;
        }

        v54 = *(a2 + 1);
        if (v54 >= *(a2 + 2) || *v54 != 121)
        {
          continue;
        }

        *(a2 + 1) = v54 + 1;
LABEL_149:
        *v71 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71) & 1) == 0)
        {
          return 0;
        }

        *(this + 14) = *v71;
        *(this + 38) |= 0x4000u;
        v55 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v9 - v55 < 2 || *v55 != 128 || v55[1] != 1)
        {
          continue;
        }

        v13 = (v55 + 2);
        *(a2 + 1) = v13;
LABEL_154:
        v71[0] = 0;
        if (v13 >= v9 || (v56 = *v13, (v56 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71);
          if (!result)
          {
            return result;
          }

          v56 = v71[0];
          v57 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v57 = (v13 + 1);
          *(a2 + 1) = v57;
        }

        *(this + 27) = v56;
        *(this + 38) |= 0x8000u;
        if (v9 - v57 < 2 || *v57 != 136 || v57[1] != 1)
        {
          continue;
        }

        v10 = (v57 + 2);
        *(a2 + 1) = v10;
LABEL_163:
        v71[0] = 0;
        if (v10 >= v9 || (v58 = *v10, (v58 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71);
          if (!result)
          {
            return result;
          }

          v58 = v71[0];
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v58 - 25 <= 0x32 && ((1 << (v58 - 25)) & 0x4000002000001) != 0 || v58 + 1 < 2)
        {
          *(this + 38) |= 0x10000u;
          *(this + 30) = v58;
        }

        v61 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v14 - v61 < 2 || *v61 != 144 || v61[1] != 1)
        {
          continue;
        }

        v15 = (v61 + 2);
        *(a2 + 1) = v15;
LABEL_180:
        v71[0] = 0;
        if (v15 >= v14 || (v62 = *v15, (v62 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71);
          if (!result)
          {
            return result;
          }

          v62 = v71[0];
        }

        else
        {
          *(a2 + 1) = v15 + 1;
        }

        if (v62 <= 2)
        {
          *(this + 38) |= 0x20000u;
          *(this + 31) = v62;
        }

        v63 = *(a2 + 1);
        v18 = *(a2 + 2);
        if (v18 - v63 < 2 || *v63 != 152 || v63[1] != 1)
        {
          continue;
        }

        v19 = (v63 + 2);
        *(a2 + 1) = v19;
LABEL_191:
        v71[0] = 0;
        if (v19 >= v18 || (v64 = *v19, (v64 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71);
          if (!result)
          {
            return result;
          }

          v64 = v71[0];
        }

        else
        {
          *(a2 + 1) = v19 + 1;
        }

        if (v64 <= 2)
        {
          *(this + 38) |= 0x40000u;
          *(this + 32) = v64;
        }

        v65 = *(a2 + 1);
        v22 = *(a2 + 2);
        if (v22 - v65 < 2 || *v65 != 160 || v65[1] != 1)
        {
          continue;
        }

        v23 = (v65 + 2);
        *(a2 + 1) = v23;
LABEL_202:
        v71[0] = 0;
        if (v23 >= v22 || (v66 = *v23, (v66 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71);
          if (!result)
          {
            return result;
          }

          v66 = v71[0];
        }

        else
        {
          *(a2 + 1) = v23 + 1;
        }

        if (v66 + 1 <= 7)
        {
          *(this + 38) |= 0x80000u;
          *(this + 33) = v66;
        }

        v67 = *(a2 + 1);
        if (*(a2 + 4) - v67 < 2 || *v67 != 169 || v67[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v67 + 2;
LABEL_213:
        *v71 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v71))
        {
          *(this + 17) = *v71;
          *(this + 38) |= 0x100000u;
          v68 = *(a2 + 1);
          v16 = *(a2 + 2);
          if (v16 - v68 >= 2 && *v68 == 176 && v68[1] == 1)
          {
            v17 = (v68 + 2);
            *(a2 + 1) = v17;
LABEL_218:
            v71[0] = 0;
            if (v17 >= v16 || (v69 = *v17, (v69 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v71);
              if (!result)
              {
                return result;
              }

              v69 = v71[0];
              v70 = *(a2 + 1);
              v16 = *(a2 + 2);
            }

            else
            {
              v70 = v17 + 1;
              *(a2 + 1) = v70;
            }

            *(this + 144) = v69 != 0;
            *(this + 38) |= 0x200000u;
            if (v70 == v16 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v6 == 1)
        {
          goto LABEL_81;
        }

        goto LABEL_52;
      case 4u:
        if (v6 == 1)
        {
          goto LABEL_85;
        }

        goto LABEL_52;
      case 5u:
        if (v6 == 1)
        {
          goto LABEL_89;
        }

        goto LABEL_52;
      case 6u:
        if (v6 == 1)
        {
          goto LABEL_93;
        }

        goto LABEL_52;
      case 7u:
        if (v6 == 1)
        {
          goto LABEL_97;
        }

        goto LABEL_52;
      case 8u:
        if (v6 == 1)
        {
          goto LABEL_101;
        }

        goto LABEL_52;
      case 9u:
        if (v6 == 1)
        {
          goto LABEL_105;
        }

        goto LABEL_52;
      case 0xAu:
        if (v6 == 1)
        {
          goto LABEL_109;
        }

        goto LABEL_52;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v21 = *(a2 + 1);
        v20 = *(a2 + 2);
        goto LABEL_113;
      case 0xCu:
        if (v6 == 1)
        {
          goto LABEL_121;
        }

        goto LABEL_52;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_125;
      case 0xEu:
        if (v6 == 2)
        {
          goto LABEL_135;
        }

        goto LABEL_52;
      case 0xFu:
        if (v6 == 1)
        {
          goto LABEL_149;
        }

        goto LABEL_52;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_154;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_163;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_180;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v19 = *(a2 + 1);
        v18 = *(a2 + 2);
        goto LABEL_191;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v23 = *(a2 + 1);
        v22 = *(a2 + 2);
        goto LABEL_202;
      case 0x15u:
        if (v6 == 1)
        {
          goto LABEL_213;
        }

        goto LABEL_52;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_52;
        }

        v17 = *(a2 + 1);
        v16 = *(a2 + 2);
        goto LABEL_218;
      default:
LABEL_52:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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

        v6 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v9 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v9) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v9;
        *(this + 7) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v6 != 1)
      {
        break;
      }

      v9 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v9) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v9;
      *(this + 7) |= 1u;
      v7 = *(a2 + 1);
      if (v7 < *(a2 + 2) && *v7 == 17)
      {
        *(a2 + 1) = v7 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v6 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
LABEL_1:
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
          goto LABEL_154;
        }

        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v170;
        *(this + 91) |= 1u;
        v7 = *(a2 + 1);
        if (v7 >= *(a2 + 2) || *v7 != 17)
        {
          continue;
        }

        *(a2 + 1) = v7 + 1;
        goto LABEL_67;
      case 2u:
        if (v6 != 1)
        {
          goto LABEL_154;
        }

LABEL_67:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v170;
        *(this + 91) |= 2u;
        v27 = *(a2 + 1);
        if (v27 >= *(a2 + 2) || *v27 != 25)
        {
          continue;
        }

        *(a2 + 1) = v27 + 1;
LABEL_71:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = *v170;
        *(this + 91) |= 4u;
        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 != 33)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_75:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = *v170;
        *(this + 91) |= 8u;
        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 != 41)
        {
          continue;
        }

        *(a2 + 1) = v29 + 1;
LABEL_79:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 5) = *v170;
        *(this + 91) |= 0x10u;
        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 != 53)
        {
          continue;
        }

        *(a2 + 1) = v30 + 1;
LABEL_92:
        v170[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 12) = v170[0];
        *(this + 91) |= 0x20u;
        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 != 61)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_101:
        v170[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 13) = v170[0];
        *(this + 91) |= 0x40u;
        v35 = *(a2 + 1);
        if (v35 >= *(a2 + 2) || *v35 != 69)
        {
          continue;
        }

        *(a2 + 1) = v35 + 1;
LABEL_105:
        v170[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 14) = v170[0];
        *(this + 91) |= 0x80u;
        v36 = *(a2 + 1);
        v24 = *(a2 + 2);
        if (v36 >= v24 || *v36 != 72)
        {
          continue;
        }

        v37 = v36 + 1;
        *(a2 + 1) = v37;
LABEL_115:
        v170[0] = 0;
        if (v37 >= v24 || (v39 = *v37, (v39 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
          if (!result)
          {
            return result;
          }

          v39 = v170[0];
          v40 = *(a2 + 1);
          v24 = *(a2 + 2);
        }

        else
        {
          v40 = v37 + 1;
          *(a2 + 1) = v40;
        }

        *(this + 112) = v39 != 0;
        *(this + 91) |= 0x100u;
        if (v40 >= v24 || *v40 != 80)
        {
          continue;
        }

        v25 = v40 + 1;
        *(a2 + 1) = v25;
LABEL_163:
        v170[0] = 0;
        if (v25 >= v24 || (v58 = *v25, (v58 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
          if (!result)
          {
            return result;
          }

          v58 = v170[0];
        }

        else
        {
          *(a2 + 1) = v25 + 1;
        }

        if (v58 <= 3)
        {
          *(this + 91) |= 0x200u;
          *(this + 15) = v58;
        }

        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 != 90)
        {
          continue;
        }

        *(a2 + 1) = v59 + 1;
LABEL_173:
        *(this + 91) |= 0x400u;
        v60 = *(this + 8);
        if (!v60)
        {
          operator new();
        }

        v170[0] = 0;
        v61 = *(a2 + 1);
        if (v61 >= *(a2 + 2) || *v61 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170))
          {
            return 0;
          }
        }

        else
        {
          v170[0] = *v61;
          *(a2 + 1) = v61 + 1;
        }

        v62 = *(a2 + 14);
        v63 = *(a2 + 15);
        *(a2 + 14) = v62 + 1;
        if (v62 >= v63)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergePartialFromCodedStream(v60, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v64 = *(a2 + 14);
        v65 = __OFSUB__(v64, 1);
        v66 = v64 - 1;
        if (v66 < 0 == v65)
        {
          *(a2 + 14) = v66;
        }

        v67 = *(a2 + 1);
        if (v67 >= *(a2 + 2) || *v67 != 97)
        {
          continue;
        }

        *(a2 + 1) = v67 + 1;
LABEL_187:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v170;
        *(this + 91) |= 0x800u;
        v68 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v68 >= v17 || *v68 != 104)
        {
          continue;
        }

        v23 = v68 + 1;
        *(a2 + 1) = v23;
LABEL_191:
        v170[0] = 0;
        if (v23 >= v17 || (v69 = *v23, (v69 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
          if (!result)
          {
            return result;
          }

          v69 = v170[0];
          v70 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v70 = v23 + 1;
          *(a2 + 1) = v70;
        }

        *(this + 20) = v69;
        *(this + 91) |= 0x1000u;
        if (v70 >= v17 || *v70 != 112)
        {
          continue;
        }

        v34 = v70 + 1;
        *(a2 + 1) = v34;
LABEL_199:
        v170[0] = 0;
        if (v34 >= v17 || (v71 = *v34, (v71 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
          if (!result)
          {
            return result;
          }

          v71 = v170[0];
          v72 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v72 = v34 + 1;
          *(a2 + 1) = v72;
        }

        *(this + 21) = v71;
        *(this + 91) |= 0x2000u;
        if (v72 >= v17 || *v72 != 120)
        {
          continue;
        }

        v18 = v72 + 1;
        *(a2 + 1) = v18;
LABEL_207:
        v170[0] = 0;
        if (v18 >= v17 || (v73 = *v18, (v73 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
          if (!result)
          {
            return result;
          }

          v73 = v170[0];
          v74 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v74 = (v18 + 1);
          *(a2 + 1) = v74;
        }

        *(this + 113) = v73 != 0;
        v26 = *(this + 91) | 0x4000;
        *(this + 91) = v26;
        if (v17 - v74 < 2 || *v74 != 130 || v74[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v74 + 2;
LABEL_216:
        *(this + 91) = v26 | 0x8000;
        v75 = *(this + 11);
        if (!v75)
        {
          operator new();
        }

        v170[0] = 0;
        v76 = *(a2 + 1);
        if (v76 >= *(a2 + 2) || *v76 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170))
          {
            return 0;
          }
        }

        else
        {
          v170[0] = *v76;
          *(a2 + 1) = v76 + 1;
        }

        v77 = *(a2 + 14);
        v78 = *(a2 + 15);
        *(a2 + 14) = v77 + 1;
        if (v77 >= v78)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::MergePartialFromCodedStream(v75, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v79 = *(a2 + 14);
        v65 = __OFSUB__(v79, 1);
        v80 = v79 - 1;
        if (v80 < 0 == v65)
        {
          *(a2 + 14) = v80;
        }

        v81 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v15 - v81 <= 1 || *v81 != 136 || v81[1] != 1)
        {
          continue;
        }

        v16 = (v81 + 2);
        *(a2 + 1) = v16;
LABEL_231:
        v170[0] = 0;
        if (v16 >= v15 || (v82 = *v16, (v82 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
          if (!result)
          {
            return result;
          }

          v82 = v170[0];
        }

        else
        {
          *(a2 + 1) = v16 + 1;
        }

        if (v82 + 1 <= 3)
        {
          *(this + 91) |= 0x10000u;
          *(this + 24) = v82;
        }

        v83 = *(a2 + 1);
        if (*(a2 + 4) - v83 < 2 || *v83 != 149 || v83[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v83 + 2;
LABEL_242:
        v170[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 25) = v170[0];
        v38 = *(this + 91) | 0x20000;
        *(this + 91) = v38;
        v84 = *(a2 + 1);
        if (*(a2 + 4) - v84 < 2 || *v84 != 154 || v84[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v84 + 2;
LABEL_247:
        *(this + 91) = v38 | 0x40000;
        v85 = *(this + 13);
        if (!v85)
        {
          operator new();
        }

        v170[0] = 0;
        v86 = *(a2 + 1);
        if (v86 >= *(a2 + 2) || *v86 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170))
          {
            return 0;
          }
        }

        else
        {
          v170[0] = *v86;
          *(a2 + 1) = v86 + 1;
        }

        v87 = *(a2 + 14);
        v88 = *(a2 + 15);
        *(a2 + 14) = v87 + 1;
        if (v87 >= v88)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergePartialFromCodedStream(v85, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v89 = *(a2 + 14);
        v65 = __OFSUB__(v89, 1);
        v90 = v89 - 1;
        if (v90 < 0 == v65)
        {
          *(a2 + 14) = v90;
        }

        v91 = *(a2 + 1);
        if (*(a2 + 4) - v91 <= 1 || *v91 != 161 || v91[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v91 + 2;
LABEL_262:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 15) = *v170;
        *(this + 91) |= 0x80000u;
        v92 = *(a2 + 1);
        if (*(a2 + 4) - v92 < 2 || *v92 != 169 || v92[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v92 + 2;
LABEL_267:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 16) = *v170;
        *(this + 91) |= 0x100000u;
        v93 = *(a2 + 1);
        v32 = *(a2 + 2);
        if (v32 - v93 < 2 || *v93 != 176 || v93[1] != 1)
        {
          continue;
        }

        v33 = (v93 + 2);
        *(a2 + 1) = v33;
LABEL_272:
        v170[0] = 0;
        if (v33 >= v32 || (v94 = *v33, (v94 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
          if (!result)
          {
            return result;
          }

          v94 = v170[0];
        }

        else
        {
          *(a2 + 1) = v33 + 1;
        }

        if (v94 <= 2)
        {
          *(this + 91) |= 0x200000u;
          *(this + 29) = v94;
        }

        v95 = *(a2 + 1);
        v43 = *(a2 + 2);
        if (v43 - v95 < 2 || *v95 != 184 || v95[1] != 1)
        {
          continue;
        }

        v44 = (v95 + 2);
        *(a2 + 1) = v44;
LABEL_283:
        v170[0] = 0;
        if (v44 >= v43 || (v96 = *v44, (v96 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
          if (!result)
          {
            return result;
          }

          v96 = v170[0];
          v97 = *(a2 + 1);
          v43 = *(a2 + 2);
        }

        else
        {
          v97 = (v44 + 1);
          *(a2 + 1) = v97;
        }

        *(this + 114) = v96 != 0;
        v47 = *(this + 91) | 0x400000;
        *(this + 91) = v47;
        if (v43 - v97 < 2 || *v97 != 194 || v97[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v97 + 2;
LABEL_292:
        *(this + 91) = v47 | 0x800000;
        v98 = *(this + 17);
        if (!v98)
        {
          operator new();
        }

        v170[0] = 0;
        v99 = *(a2 + 1);
        if (v99 >= *(a2 + 2) || *v99 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170))
          {
            return 0;
          }
        }

        else
        {
          v170[0] = *v99;
          *(a2 + 1) = v99 + 1;
        }

        v100 = *(a2 + 14);
        v101 = *(a2 + 15);
        *(a2 + 14) = v100 + 1;
        if (v100 >= v101)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::MergePartialFromCodedStream(v98, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v102 = *(a2 + 14);
        v65 = __OFSUB__(v102, 1);
        v103 = v102 - 1;
        if (v103 < 0 == v65)
        {
          *(a2 + 14) = v103;
        }

        v104 = *(a2 + 1);
        if (*(a2 + 4) - v104 <= 1 || *v104 != 201 || v104[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v104 + 2;
LABEL_307:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 18) = *v170;
        *(this + 91) |= 0x1000000u;
        v105 = *(a2 + 1);
        if (*(a2 + 4) - v105 < 2 || *v105 != 209 || v105[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v105 + 2;
LABEL_312:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 19) = *v170;
        *(this + 91) |= 0x2000000u;
        v106 = *(a2 + 1);
        if (*(a2 + 4) - v106 < 2 || *v106 != 217 || v106[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v106 + 2;
LABEL_317:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = *v170;
        *(this + 91) |= 0x4000000u;
        v107 = *(a2 + 1);
        if (*(a2 + 4) - v107 < 2 || *v107 != 225 || v107[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v107 + 2;
LABEL_322:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 21) = *v170;
        *(this + 91) |= 0x8000000u;
        v108 = *(a2 + 1);
        if (*(a2 + 4) - v108 < 2 || *v108 != 233 || v108[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v108 + 2;
LABEL_327:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 22) = *v170;
        *(this + 91) |= 0x10000000u;
        v109 = *(a2 + 1);
        if (*(a2 + 4) - v109 < 2 || *v109 != 241 || v109[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v109 + 2;
LABEL_332:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 23) = *v170;
        *(this + 91) |= 0x20000000u;
        v110 = *(a2 + 1);
        v41 = *(a2 + 2);
        if (v41 - v110 < 2 || *v110 != 248 || v110[1] != 1)
        {
          continue;
        }

        v42 = (v110 + 2);
        *(a2 + 1) = v42;
LABEL_337:
        v170[0] = 0;
        if (v42 >= v41 || (v111 = *v42, (v111 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
          if (!result)
          {
            return result;
          }

          v111 = v170[0];
          v112 = *(a2 + 1);
          v41 = *(a2 + 2);
        }

        else
        {
          v112 = (v42 + 1);
          *(a2 + 1) = v112;
        }

        *(this + 115) = v111 != 0;
        *(this + 91) |= 0x40000000u;
        if (v41 - v112 < 2 || *v112 != 129 || v112[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v112 + 2;
LABEL_346:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 24) = *v170;
        *(this + 91) |= 0x80000000;
        v113 = *(a2 + 1);
        if (*(a2 + 4) - v113 < 2 || *v113 != 137 || v113[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v113 + 2;
LABEL_351:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 25) = *v170;
        *(this + 92) |= 1u;
        v114 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v19 - v114 < 2 || *v114 != 144 || v114[1] != 2)
        {
          continue;
        }

        v20 = (v114 + 2);
        *(a2 + 1) = v20;
LABEL_356:
        v170[0] = 0;
        if (v20 >= v19 || (v115 = *v20, (v115 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
          if (!result)
          {
            return result;
          }

          v115 = v170[0];
          v116 = *(a2 + 1);
          v19 = *(a2 + 2);
        }

        else
        {
          v116 = (v20 + 1);
          *(a2 + 1) = v116;
        }

        *(this + 276) = v115 != 0;
        v14 = *(this + 92) | 2;
        *(this + 92) = v14;
        if (v19 - v116 < 2 || *v116 != 154 || v116[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v116 + 2;
LABEL_365:
        *(this + 92) = v14 | 4;
        v117 = *(this + 26);
        if (!v117)
        {
          operator new();
        }

        v170[0] = 0;
        v118 = *(a2 + 1);
        if (v118 >= *(a2 + 2) || *v118 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170))
          {
            return 0;
          }
        }

        else
        {
          v170[0] = *v118;
          *(a2 + 1) = v118 + 1;
        }

        v119 = *(a2 + 14);
        v120 = *(a2 + 15);
        *(a2 + 14) = v119 + 1;
        if (v119 >= v120)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::ClientLocationCoordinate::MergePartialFromCodedStream(v117, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v121 = *(a2 + 14);
        v65 = __OFSUB__(v121, 1);
        v122 = v121 - 1;
        if (v122 < 0 == v65)
        {
          *(a2 + 14) = v122;
        }

        v123 = *(a2 + 1);
        if (*(a2 + 4) - v123 <= 1 || *v123 != 161 || v123[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v123 + 2;
LABEL_380:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 27) = *v170;
        *(this + 92) |= 8u;
        v124 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v12 - v124 < 2 || *v124 != 168 || v124[1] != 2)
        {
          continue;
        }

        v13 = (v124 + 2);
        *(a2 + 1) = v13;
LABEL_385:
        v170[0] = 0;
        if (v13 >= v12 || (v125 = *v13, (v125 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
          if (!result)
          {
            return result;
          }

          v125 = v170[0];
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v125 <= 2)
        {
          *(this + 92) |= 0x10u;
          *(this + 68) = v125;
        }

        v126 = *(a2 + 1);
        if (*(a2 + 4) - v126 < 2 || *v126 != 177 || v126[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v126 + 2;
LABEL_396:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 28) = *v170;
        *(this + 92) |= 0x20u;
        v127 = *(a2 + 1);
        if (*(a2 + 4) - v127 < 2 || *v127 != 185 || v127[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v127 + 2;
LABEL_401:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 29) = *v170;
        *(this + 92) |= 0x40u;
        v128 = *(a2 + 1);
        if (*(a2 + 4) - v128 < 2 || *v128 != 193 || v128[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v128 + 2;
LABEL_406:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 30) = *v170;
        *(this + 92) |= 0x80u;
        v129 = *(a2 + 1);
        if (*(a2 + 4) - v129 < 2 || *v129 != 201 || v129[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v129 + 2;
LABEL_411:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 31) = *v170;
        *(this + 92) |= 0x100u;
        v130 = *(a2 + 1);
        if (*(a2 + 4) - v130 < 2 || *v130 != 209 || v130[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v130 + 2;
LABEL_416:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 32) = *v170;
        *(this + 92) |= 0x200u;
        v131 = *(a2 + 1);
        v45 = *(a2 + 2);
        if (v45 - v131 < 2 || *v131 != 216 || v131[1] != 2)
        {
          continue;
        }

        v46 = (v131 + 2);
        *(a2 + 1) = v46;
LABEL_421:
        v170[0] = 0;
        if (v46 >= v45 || (v132 = *v46, (v132 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
          if (!result)
          {
            return result;
          }

          v132 = v170[0];
          v133 = *(a2 + 1);
          v45 = *(a2 + 2);
        }

        else
        {
          v133 = (v46 + 1);
          *(a2 + 1) = v133;
        }

        *(this + 277) = v132 != 0;
        *(this + 92) |= 0x400u;
        if (v45 - v133 < 2 || *v133 != 225 || v133[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v133 + 2;
LABEL_430:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 33) = *v170;
        *(this + 92) |= 0x800u;
        v134 = *(a2 + 1);
        if (*(a2 + 4) - v134 < 2 || *v134 != 233 || v134[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v134 + 2;
LABEL_435:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 35) = *v170;
        *(this + 92) |= 0x1000u;
        v135 = *(a2 + 1);
        if (*(a2 + 4) - v135 < 2 || *v135 != 242)
        {
          continue;
        }

        while (1)
        {
          if (v135[1] != 2)
          {
            goto LABEL_1;
          }

          *(a2 + 1) = v135 + 2;
LABEL_545:
          v160 = *(this + 74);
          v161 = *(this + 75);
          if (v160 >= v161)
          {
            if (v161 == *(this + 76))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 288));
              v161 = *(this + 75);
            }

            *(this + 75) = v161 + 1;
            operator new();
          }

          v162 = *(this + 36);
          *(this + 74) = v160 + 1;
          v163 = *(v162 + 8 * v160);
          v170[0] = 0;
          v164 = *(a2 + 1);
          if (v164 >= *(a2 + 2) || *v164 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170))
            {
              return 0;
            }
          }

          else
          {
            v170[0] = *v164;
            *(a2 + 1) = v164 + 1;
          }

          v165 = *(a2 + 14);
          v166 = *(a2 + 15);
          *(a2 + 14) = v165 + 1;
          if (v165 >= v166)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::ClientSatelliteInfo::MergePartialFromCodedStream(v163, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v167 = *(a2 + 14);
          v65 = __OFSUB__(v167, 1);
          v168 = v167 - 1;
          if (v168 < 0 == v65)
          {
            *(a2 + 14) = v168;
          }

          v135 = *(a2 + 1);
          v53 = *(a2 + 2);
          if (v53 - v135 <= 1)
          {
            goto LABEL_1;
          }

          v169 = *v135;
          if (v169 == 248)
          {
            break;
          }

          if (v169 != 242)
          {
            goto LABEL_1;
          }
        }

        if (v135[1] != 2)
        {
          continue;
        }

        v52 = (v135 + 2);
        *(a2 + 1) = v52;
LABEL_150:
        v170[0] = 0;
        if (v52 >= v53 || (v54 = *v52, (v54 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
          if (!result)
          {
            return result;
          }

          v54 = v170[0];
        }

        else
        {
          *(a2 + 1) = v52 + 1;
        }

        if (v54 <= 2)
        {
          *(this + 92) |= 0x4000u;
          *(this + 78) = v54;
        }

        v136 = *(a2 + 1);
        if (*(a2 + 4) - v136 < 2 || *v136 != 130 || v136[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v136 + 2;
LABEL_447:
        *(this + 92) |= 0x8000u;
        v137 = *(this + 40);
        if (!v137)
        {
          operator new();
        }

        v170[0] = 0;
        v138 = *(a2 + 1);
        if (v138 >= *(a2 + 2) || *v138 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170))
          {
            return 0;
          }
        }

        else
        {
          v170[0] = *v138;
          *(a2 + 1) = v138 + 1;
        }

        v139 = *(a2 + 14);
        v140 = *(a2 + 15);
        *(a2 + 14) = v139 + 1;
        if (v139 >= v140)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::MergePartialFromCodedStream(v137, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v141 = *(a2 + 14);
        v65 = __OFSUB__(v141, 1);
        v142 = v141 - 1;
        if (v142 < 0 == v65)
        {
          *(a2 + 14) = v142;
        }

        v143 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v21 - v143 <= 1 || *v143 != 136 || v143[1] != 3)
        {
          continue;
        }

        v22 = (v143 + 2);
        *(a2 + 1) = v22;
LABEL_462:
        v170[0] = 0;
        if (v22 >= v21 || (v144 = *v22, (v144 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
          if (!result)
          {
            return result;
          }

          v144 = v170[0];
        }

        else
        {
          *(a2 + 1) = v22 + 1;
        }

        if (v144 <= 2)
        {
          *(this + 92) |= 0x10000u;
          *(this + 79) = v144;
        }

        v145 = *(a2 + 1);
        if (*(a2 + 4) - v145 < 2 || *v145 != 145 || v145[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v145 + 2;
LABEL_473:
        *v170 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170) & 1) == 0)
        {
          return 0;
        }

        *(this + 41) = *v170;
        *(this + 92) |= 0x20000u;
        v146 = *(a2 + 1);
        if (*(a2 + 4) - v146 < 2 || *v146 != 153 || v146[1] != 3)
        {
          continue;
        }

        *(a2 + 1) = v146 + 2;
LABEL_478:
        *v170 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v170))
        {
          *(this + 42) = *v170;
          *(this + 92) |= 0x40000u;
          v147 = *(a2 + 1);
          v55 = *(a2 + 2);
          if (v55 - v147 >= 2 && *v147 == 160 && v147[1] == 3)
          {
            v56 = (v147 + 2);
            *(a2 + 1) = v56;
LABEL_483:
            v170[0] = 0;
            if (v56 >= v55 || (v148 = *v56, (v148 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
              if (!result)
              {
                return result;
              }

              v148 = v170[0];
            }

            else
            {
              *(a2 + 1) = v56 + 1;
            }

            if (v148 <= 3)
            {
              *(this + 92) |= 0x80000u;
              *(this + 86) = v148;
            }

            v149 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v8 - v149 >= 2 && *v149 == 168 && v149[1] == 3)
            {
              v51 = (v149 + 2);
              *(a2 + 1) = v51;
LABEL_494:
              v170[0] = 0;
              if (v51 >= v8 || (v150 = *v51, (v150 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
                if (!result)
                {
                  return result;
                }

                v150 = v170[0];
                v151 = *(a2 + 1);
                v8 = *(a2 + 2);
              }

              else
              {
                v151 = (v51 + 1);
                *(a2 + 1) = v151;
              }

              *(this + 278) = v150 != 0;
              *(this + 92) |= 0x100000u;
              if (v8 - v151 >= 2 && *v151 == 176 && v151[1] == 3)
              {
                v9 = (v151 + 2);
                *(a2 + 1) = v9;
LABEL_503:
                v170[0] = 0;
                if (v9 >= v8 || (v152 = *v9, (v152 & 0x80000000) != 0))
                {
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
                  if (!result)
                  {
                    return result;
                  }

                  v152 = v170[0];
                }

                else
                {
                  *(a2 + 1) = v9 + 1;
                }

                if (v152 <= 2)
                {
                  *(this + 92) |= 0x200000u;
                  *(this + 87) = v152;
                }

                v153 = *(a2 + 1);
                v48 = *(a2 + 2);
                if (v48 - v153 >= 2 && *v153 == 184 && v153[1] == 3)
                {
                  v49 = (v153 + 2);
                  *(a2 + 1) = v49;
LABEL_514:
                  v170[0] = 0;
                  if (v49 >= v48 || (v154 = *v49, (v154 & 0x80000000) != 0))
                  {
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
                    if (!result)
                    {
                      return result;
                    }

                    v154 = v170[0];
                  }

                  else
                  {
                    *(a2 + 1) = v49 + 1;
                  }

                  if (v154 <= 4)
                  {
                    *(this + 92) |= 0x400000u;
                    *(this + 88) = v154;
                  }

                  v155 = *(a2 + 1);
                  v10 = *(a2 + 2);
                  if (v10 - v155 >= 2 && *v155 == 192 && v155[1] == 3)
                  {
                    v50 = (v155 + 2);
                    *(a2 + 1) = v50;
LABEL_525:
                    v170[0] = 0;
                    if (v50 >= v10 || (v156 = *v50, (v156 & 0x80000000) != 0))
                    {
                      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
                      if (!result)
                      {
                        return result;
                      }

                      v156 = v170[0];
                      v157 = *(a2 + 1);
                      v10 = *(a2 + 2);
                    }

                    else
                    {
                      v157 = (v50 + 1);
                      *(a2 + 1) = v157;
                    }

                    *(this + 279) = v156 != 0;
                    *(this + 92) |= 0x800000u;
                    if (v10 - v157 >= 2 && *v157 == 200 && v157[1] == 3)
                    {
                      v11 = (v157 + 2);
                      *(a2 + 1) = v11;
LABEL_534:
                      v170[0] = 0;
                      if (v11 >= v10 || (v158 = *v11, (v158 & 0x80000000) != 0))
                      {
                        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v170);
                        if (!result)
                        {
                          return result;
                        }

                        v158 = v170[0];
                        v159 = *(a2 + 1);
                        v10 = *(a2 + 2);
                      }

                      else
                      {
                        v159 = v11 + 1;
                        *(a2 + 1) = v159;
                      }

                      *(this + 356) = v158 != 0;
                      *(this + 92) |= 0x1000000u;
                      if (v159 == v10 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v6 == 1)
        {
          goto LABEL_71;
        }

        goto LABEL_154;
      case 4u:
        if (v6 == 1)
        {
          goto LABEL_75;
        }

        goto LABEL_154;
      case 5u:
        if (v6 == 1)
        {
          goto LABEL_79;
        }

        goto LABEL_154;
      case 6u:
        if (v6 == 5)
        {
          goto LABEL_92;
        }

        goto LABEL_154;
      case 7u:
        if (v6 == 5)
        {
          goto LABEL_101;
        }

        goto LABEL_154;
      case 8u:
        if (v6 == 5)
        {
          goto LABEL_105;
        }

        goto LABEL_154;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v37 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_115;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        goto LABEL_163;
      case 0xBu:
        if (v6 == 2)
        {
          goto LABEL_173;
        }

        goto LABEL_154;
      case 0xCu:
        if (v6 == 1)
        {
          goto LABEL_187;
        }

        goto LABEL_154;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v23 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_191;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v34 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_199;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_207;
      case 0x10u:
        if (v6 != 2)
        {
          goto LABEL_154;
        }

        v26 = *(this + 91);
        goto LABEL_216;
      case 0x11u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_231;
      case 0x12u:
        if (v6 == 5)
        {
          goto LABEL_242;
        }

        goto LABEL_154;
      case 0x13u:
        if (v6 != 2)
        {
          goto LABEL_154;
        }

        v38 = *(this + 91);
        goto LABEL_247;
      case 0x14u:
        if (v6 == 1)
        {
          goto LABEL_262;
        }

        goto LABEL_154;
      case 0x15u:
        if (v6 == 1)
        {
          goto LABEL_267;
        }

        goto LABEL_154;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v33 = *(a2 + 1);
        v32 = *(a2 + 2);
        goto LABEL_272;
      case 0x17u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v44 = *(a2 + 1);
        v43 = *(a2 + 2);
        goto LABEL_283;
      case 0x18u:
        if (v6 != 2)
        {
          goto LABEL_154;
        }

        v47 = *(this + 91);
        goto LABEL_292;
      case 0x19u:
        if (v6 == 1)
        {
          goto LABEL_307;
        }

        goto LABEL_154;
      case 0x1Au:
        if (v6 == 1)
        {
          goto LABEL_312;
        }

        goto LABEL_154;
      case 0x1Bu:
        if (v6 == 1)
        {
          goto LABEL_317;
        }

        goto LABEL_154;
      case 0x1Cu:
        if (v6 == 1)
        {
          goto LABEL_322;
        }

        goto LABEL_154;
      case 0x1Du:
        if (v6 == 1)
        {
          goto LABEL_327;
        }

        goto LABEL_154;
      case 0x1Eu:
        if (v6 == 1)
        {
          goto LABEL_332;
        }

        goto LABEL_154;
      case 0x1Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v42 = *(a2 + 1);
        v41 = *(a2 + 2);
        goto LABEL_337;
      case 0x20u:
        if (v6 == 1)
        {
          goto LABEL_346;
        }

        goto LABEL_154;
      case 0x21u:
        if (v6 == 1)
        {
          goto LABEL_351;
        }

        goto LABEL_154;
      case 0x22u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_356;
      case 0x23u:
        if (v6 != 2)
        {
          goto LABEL_154;
        }

        v14 = *(this + 92);
        goto LABEL_365;
      case 0x24u:
        if (v6 == 1)
        {
          goto LABEL_380;
        }

        goto LABEL_154;
      case 0x25u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_385;
      case 0x26u:
        if (v6 == 1)
        {
          goto LABEL_396;
        }

        goto LABEL_154;
      case 0x27u:
        if (v6 == 1)
        {
          goto LABEL_401;
        }

        goto LABEL_154;
      case 0x28u:
        if (v6 == 1)
        {
          goto LABEL_406;
        }

        goto LABEL_154;
      case 0x29u:
        if (v6 == 1)
        {
          goto LABEL_411;
        }

        goto LABEL_154;
      case 0x2Au:
        if (v6 == 1)
        {
          goto LABEL_416;
        }

        goto LABEL_154;
      case 0x2Bu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v46 = *(a2 + 1);
        v45 = *(a2 + 2);
        goto LABEL_421;
      case 0x2Cu:
        if (v6 == 1)
        {
          goto LABEL_430;
        }

        goto LABEL_154;
      case 0x2Du:
        if (v6 == 1)
        {
          goto LABEL_435;
        }

        goto LABEL_154;
      case 0x2Eu:
        if (v6 == 2)
        {
          goto LABEL_545;
        }

        goto LABEL_154;
      case 0x2Fu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v52 = *(a2 + 1);
        v53 = *(a2 + 2);
        goto LABEL_150;
      case 0x30u:
        if (v6 == 2)
        {
          goto LABEL_447;
        }

        goto LABEL_154;
      case 0x31u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_462;
      case 0x32u:
        if (v6 == 1)
        {
          goto LABEL_473;
        }

        goto LABEL_154;
      case 0x33u:
        if (v6 == 1)
        {
          goto LABEL_478;
        }

        goto LABEL_154;
      case 0x34u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v56 = *(a2 + 1);
        v55 = *(a2 + 2);
        goto LABEL_483;
      case 0x35u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v51 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_494;
      case 0x36u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        goto LABEL_503;
      case 0x37u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v49 = *(a2 + 1);
        v48 = *(a2 + 2);
        goto LABEL_514;
      case 0x38u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v50 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_525;
      case 0x39u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_154;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_534;
      default:
LABEL_154:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::PressureSample::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::PressureSample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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

        v6 = TagFallback & 7;
        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if (v6 != 1)
        {
          goto LABEL_14;
        }

LABEL_17:
        v9 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v9) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v9;
        *(this + 7) |= 2u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (TagFallback >> 3 != 1 || v6 != 1)
      {
        break;
      }

      v9 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v9) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v9;
      *(this + 7) |= 1u;
      v7 = *(a2 + 1);
      if (v7 < *(a2 + 2) && *v7 == 17)
      {
        *(a2 + 1) = v7 + 1;
        goto LABEL_17;
      }
    }

LABEL_14:
    if (v6 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::MapMatcherData *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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

        if (v6 != 3)
        {
          if (v6 == 4 && (TagFallback & 7) == 0)
          {
            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_37;
          }

          goto LABEL_25;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_25;
        }

        v12 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_29:
        v18[0] = 0;
        if (v12 >= v8 || (v13 = *v12, (v13 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v18);
          if (!result)
          {
            return result;
          }

          v13 = v18[0];
          v14 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v14 = v12 + 1;
          *(a2 + 1) = v14;
        }

        *(this + 24) = v13 != 0;
        *(this + 8) |= 4u;
        if (v14 < v8 && *v14 == 32)
        {
          v9 = v14 + 1;
          *(a2 + 1) = v9;
LABEL_37:
          v18[0] = 0;
          if (v9 >= v8 || (v16 = *v9, (v16 & 0x80000000) != 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v18);
            if (!result)
            {
              return result;
            }

            v16 = v18[0];
            v17 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            v17 = v9 + 1;
            *(a2 + 1) = v17;
          }

          *(this + 25) = v16 != 0;
          *(this + 8) |= 8u;
          if (v17 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
        goto LABEL_25;
      }

      *v18 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v18) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v18;
      *(this + 8) |= 1u;
      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 17)
      {
        *(a2 + 1) = v10 + 1;
LABEL_20:
        *v18 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v18) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v18;
        *(this + 8) |= 2u;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v11 < v8 && *v11 == 24)
        {
          v12 = v11 + 1;
          *(a2 + 1) = v12;
          goto LABEL_29;
        }
      }
    }

    if (v6 == 2 && v7 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocationPrivate_AltitudeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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
      if (TagFallback >> 3 > 2)
      {
        if (v6 == 3)
        {
          if (v7 == 1)
          {
            goto LABEL_28;
          }
        }

        else if (v6 == 4 && (TagFallback & 7) == 0)
        {
          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          goto LABEL_32;
        }

        goto LABEL_25;
      }

      if (v6 != 1)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_25;
      }

      *v15 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v15) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = *v15;
      *(this + 10) |= 1u;
      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2) && *v10 == 17)
      {
        *(a2 + 1) = v10 + 1;
LABEL_20:
        *v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v15;
        *(this + 10) |= 2u;
        v11 = *(a2 + 1);
        if (v11 < *(a2 + 2) && *v11 == 25)
        {
          *(a2 + 1) = v11 + 1;
LABEL_28:
          *v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = *v15;
          *(this + 10) |= 4u;
          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v12 < v8 && *v12 == 32)
          {
            v9 = v12 + 1;
            *(a2 + 1) = v9;
LABEL_32:
            v15[0] = 0;
            if (v9 >= v8 || (v13 = *v9, (v13 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v15);
              if (!result)
              {
                return result;
              }

              v13 = v15[0];
            }

            else
            {
              *(a2 + 1) = v9 + 1;
            }

            if (v13 + 1 <= 3)
            {
              *(this + 10) |= 8u;
              *(this + 8) = v13;
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
      }
    }

    if (v6 == 2 && v7 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::TechnologyStatus *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if (v7 <= 0xD)
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
        v15 = 0;
        if (v9 >= v8 || (v11 = *v9, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v15);
          if (!result)
          {
            return result;
          }

          v11 = v15;
          v12 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v12 = v9 + 1;
          *(a2 + 1) = v12;
        }

        *(this + 12) = v11 != 0;
        *(this + 5) |= 2u;
        if (v12 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::VehicleSpeed *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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
          if (v7 == 1)
          {
            goto LABEL_28;
          }

          goto LABEL_25;
        }

        if (v6 != 4 || v7 != 1)
        {
          goto LABEL_25;
        }

LABEL_32:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v12;
        *(this + 11) |= 8u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v6 != 1)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_25;
      }

      v12 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v12;
      *(this + 11) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
LABEL_20:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v12;
        *(this + 11) |= 2u;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 25)
        {
          *(a2 + 1) = v9 + 1;
LABEL_28:
          v12 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v12;
          *(this + 11) |= 4u;
          v10 = *(a2 + 1);
          if (v10 < *(a2 + 2) && *v10 == 33)
          {
            *(a2 + 1) = v10 + 1;
            goto LABEL_32;
          }
        }
      }
    }

    if (v6 == 2 && v7 == 1)
    {
      goto LABEL_20;
    }

LABEL_25:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::XtraFileAvailable *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x1E69E5958];
  do
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

      v7 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v7 != 1)
      {
        goto LABEL_15;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v11) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v11;
      v8 = *(this + 7) | 1;
      *(this + 7) = v8;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 18)
      {
        *(a2 + 1) = v9 + 1;
LABEL_19:
        *(this + 7) = v8 | 2;
        if (*(this + 2) == v4)
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

    if (v7 == 2)
    {
      v8 = *(this + 7);
      goto LABEL_19;
    }

LABEL_15:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::LocationDerivedSpeed *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
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
        if (TagFallback >> 3 != 3)
        {
          break;
        }

        if (v7 != 1)
        {
          goto LABEL_20;
        }

LABEL_23:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v11) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v11;
        *(this + 9) |= 4u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || v7 != 1)
      {
        goto LABEL_20;
      }

      v11 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v11) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v11;
      *(this + 9) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
LABEL_15:
        v11 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v11) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v11;
        *(this + 9) |= 2u;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 25)
        {
          *(a2 + 1) = v9 + 1;
          goto LABEL_23;
        }
      }
    }

    if (v7 == 1)
    {
      goto LABEL_15;
    }

LABEL_20:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::LogEntry *a2, trackrun::GEOMapRunningTrackDataEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v11 = this;
  v12 = *(a2 + 5);
  v13 = v12;
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v12 = *(a2 + 5);
  }

  if ((*(v13 + 320) & 2) == 0)
  {
    goto LABEL_9;
  }

  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  }

  v14 = *(v12 + 272);
  if (!v14)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 272);
  }

  v12 = *(a2 + 5);
  if ((*(v14 + 28) & 2) != 0)
  {
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v16 = *(v12 + 272);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 272);
    }

    v17 = *(v16 + 16);
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::Raven::protobuf_AddDesc_CoreNavigationCLPRavenLogEntry_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::Raven::LogEntry::default_instance_ + 16);
    }

    trackrun::TrackRunSupervisor::RaiseEventsFrom(v11, v17);
    v12 = *(a2 + 5);
    v15 = 1;
  }

  else
  {
LABEL_9:
    v15 = 0;
  }

  v18 = v12;
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v18 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v12 = *(a2 + 5);
  }

  if ((*(v18 + 319) & 4) != 0)
  {
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v19 = *(v12 + 216);
    if (!v19)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 216);
    }

    trackrun::TrackRunSupervisor::RaiseEventsFrom(v11, v19, a3, a4, a5, a6, a7, a8, a9, a10);
    v12 = *(a2 + 5);
    v15 = 2;
  }

  v20 = v12;
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v20 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v12 = *(a2 + 5);
  }

  if ((*(v20 + 316) & 8) != 0)
  {
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v21 = *(v12 + 32);
    if (!v21)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 32);
    }

    this = trackrun::TrackRunSupervisor::RaiseEventsFrom(v11, v21, a3, a4, a5, a6, a7, a8, *a9.i64, a10);
    v12 = *(a2 + 5);
    v15 = 3;
  }

  v22 = v12;
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v22 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v12 = *(a2 + 5);
  }

  if ((*(v22 + 316) & 0x10) != 0)
  {
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v23 = *(v12 + 40);
    if (!v23)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 40);
    }

    this = trackrun::TrackRunSupervisor::RaiseEventsFrom(v11, v23, a3, a4, a5, a6, a7, a8, a9, a10);
    v12 = *(a2 + 5);
    v15 = 4;
  }

  v24 = v12;
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v24 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v12 = *(a2 + 5);
  }

  if ((*(v24 + 319) & 0x10) != 0)
  {
    if (!v12)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v12 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v25 = *(v12 + 232);
    if (!v25)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 232);
    }

    trackrun::TrackRunSupervisor::RaiseEventsFrom(v11, v25);
    v12 = *(a2 + 5);
    v15 = 5;
  }

  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v12 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  }

  if ((*(v12 + 317) & 8) != 0)
  {
    v26 = *(a2 + 5);
    if (!v26)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v26 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    if (!*(v26 + 96))
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    }

    v15 = 8;
  }

  v27 = *(a2 + 5);
  if (!v27)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v27 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  }

  if ((*(v27 + 317) & 0x80) != 0)
  {
    v28 = *(a2 + 5);
    if (!v28)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v28 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    if (!*(v28 + 128))
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    }

    v15 = 9;
  }

  v29 = *(a2 + 5);
  v30 = v29;
  if (!v29)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v30 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v29 = *(a2 + 5);
  }

  if ((*(v30 + 320) & 8) != 0)
  {
    if (!v29)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v29 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v31 = *(v29 + 288);
    if (!v31)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v31 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 288);
    }

    v29 = *(a2 + 5);
    if (*(v31 + 20))
    {
      if (!v29)
      {
        CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
        v29 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
      }

      v32 = *(v29 + 288);
      if (!v32)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
        v32 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 288);
      }

      v33 = *(v32 + 8);
      if (!v33)
      {
        CoreNavigation::CLP::LogEntry::TropicalSavanna::protobuf_AddDesc_CoreNavigationCLPTropicalSavannaLogEntry_2eproto(this);
        v33 = *(CoreNavigation::CLP::LogEntry::TropicalSavanna::LogEntry::default_instance_ + 8);
      }

      trackrun::TrackRunSupervisor::RaiseEventsFrom(v11, v33, a3, a4, a5, a6, a7, a8, a9, a10);
      v29 = *(a2 + 5);
      v15 = 10;
    }
  }

  v34 = v29;
  if (!v29)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v34 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v29 = *(a2 + 5);
  }

  if ((*(v34 + 319) & 0x20) != 0)
  {
    if (!v29)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v29 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v35 = *(v29 + 240);
    if (!v35)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v35 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 240);
    }

    trackrun::TrackRunSupervisor::RaiseEventsFrom(v11, v35);
    v29 = *(a2 + 5);
    v15 = 11;
  }

  v36 = v29;
  if (!v29)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v36 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v29 = *(a2 + 5);
  }

  if ((*(v36 + 319) & 8) != 0)
  {
    if (!v29)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v29 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v37 = *(v29 + 224);
    if (!v37)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v37 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 224);
    }

    trackrun::TrackRunSupervisor::RaiseEventsFrom(v11, v37, a3, a4, a5, a6, a7, a8, a9, a10);
    v29 = *(a2 + 5);
    v15 = 12;
  }

  if (!v29)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v29 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  }

  if ((*(v29 + 317) & 0x40) != 0)
  {
    cnframework::Supervisor::Reset(v11);
    return 7;
  }

  return v15;
}

uint64_t trackrun::TrackRunSupervisor::RaiseEventsFrom(trackrun::TrackRunSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::Location *a2, trackrun::PositionEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v11 = &unk_1F4CF0C98;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v16 = 0uLL;
  v17 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = vdupq_n_s64(0x7FF8000000000000uLL);
  v23 = v22;
  v24 = v22;
  v25 = v22;
  v26 = 0x7FF8000000000000;
  LOWORD(v27[0]) = 0;
  *&v27[1] = v22;
  v27[3] = 0x7FF8000000000000;
  result = trackrun::ConvertProtobufToPositionEvent(a2, &v11, a3, a4, a5, a6, a7, a8, v22, a10);
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_1D0B7A2D0(_Unwind_Exception *a1)
{
  v4 = *(v2 - 64);
  if (v4)
  {
    sub_1D0B7CAB8(v4);
  }

  sub_1D0B7CAB8(v1);
  _Unwind_Resume(a1);
}

uint64_t trackrun::ConvertProtobufToPositionEvent(trackrun *this, const CoreNavigation::CLP::LogEntry::PrivateData::Location *a2, trackrun::PositionEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v78[0] = 0;
  v79 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  if ((*(this + 100) & 1) == 0)
  {
    goto LABEL_31;
  }

  v12 = *(this + 1);
  if (!v12)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v12 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 8);
  }

  v13 = trackrun::ConvertProtobufToTrackRunTime(v12, v78, 0, a4, a5, a6, a7, a8, a9, a10);
  if (!v13)
  {
    goto LABEL_31;
  }

  v16 = *(this + 3);
  if (!v16)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v13);
    v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
  }

  if ((*(v16 + 366) & 0x10) != 0)
  {
    v22 = *(this + 3);
    if (!v22)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v13);
      v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
    }

    v14.i64[0] = *(v22 + 128);
    v76 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v76, 0, v14, v15);
    v23 = v76;
    *(a2 + 1) = v76;
    *(a2 + 8) = 1;
    v25 = trackrun::PopulateAllTimeFields(a2 + 8, v78, v23, v24);
    v28 = *(this + 2);
    if (!v28)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v28 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    if ((*(v28 + 153) & 0x10) != 0)
    {
      v31 = *(this + 2);
      if (!v31)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
        v31 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
      }

      v25 = trackrun::ConvertProtobufToLocationType(*(v31 + 104));
      *(a2 + 104) = v25;
      if ((v25 - 12) < 2)
      {
        goto LABEL_31;
      }

      if (v25 == 9 || v25 == 1)
      {
        v32 = *(this + 3);
        if (!v32)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
          v32 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
        }

        if ((*(v32 + 364) & 8) != 0)
        {
          v33 = *(this + 3);
          if (!v33)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
            v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
          }

          v26.i64[0] = *(v33 + 32);
          goto LABEL_36;
        }
      }
    }

    else
    {
      *(a2 + 104) = 0;
    }

    v29 = *(this + 2);
    if (!v29)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    if ((*(v29 + 153) & 2) == 0)
    {
      v30 = 0;
      goto LABEL_37;
    }

    v36 = *(this + 2);
    if (!v36)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v36 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v26.i64[0] = *(v36 + 80);
LABEL_36:
    v76 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v76, 0, v26, v27);
    *(a2 + 40) = v76;
    v30 = 1;
LABEL_37:
    *(a2 + 32) = v30;
    v37 = *(a2 + 24);
    *(a2 + 56) = *(a2 + 8);
    *(a2 + 72) = v37;
    *(a2 + 88) = *(a2 + 40);
    v38 = *(this + 2);
    if (!v38)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v38 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    if (*(v38 + 16) <= 0.0)
    {
      goto LABEL_43;
    }

    v39 = *(this + 2);
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v39 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    if ((*(v39 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_43:
      *(a2 + 105) = 0;
      *(a2 + 14) = 0;
      *(a2 + 15) = 0;
      goto LABEL_44;
    }

    v59 = *(this + 2);
    if (!v59)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v59 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v60 = *(v59 + 8);
    if (!v60)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v60 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
    }

    if (fabs(*(v60 + 8)) >= 2.22044605e-16)
    {
      *(a2 + 14) = 0;
      v64 = (a2 + 112);
      *(a2 + 105) = 1;
      *(a2 + 15) = 0;
    }

    else
    {
      v61 = *(this + 2);
      if (!v61)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
        v61 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
      }

      v62 = *(v61 + 8);
      if (!v62)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
        v62 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
      }

      v63 = fabs(*(v62 + 16));
      *(a2 + 14) = 0;
      v64 = (a2 + 112);
      *(a2 + 105) = v63 >= 2.22044605e-16;
      *(a2 + 15) = 0;
      if (v63 < 2.22044605e-16)
      {
LABEL_44:
        v40 = *(this + 2);
        if (!v40)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
          v40 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
        }

        if (*(v40 + 32) <= 0.0)
        {
          *(a2 + 106) = 0;
          v47 = 0;
          v48 = 128;
        }

        else
        {
          v41 = *(this + 2);
          if (!v41)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
            v41 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
          }

          v42 = *(v41 + 32) & 0x7FFFFFFFFFFFFFFFLL;
          *(a2 + 106) = v42 < 0x7FF0000000000000;
          *(a2 + 16) = 0;
          if (v42 > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_59:
            v49 = *(this + 3);
            if (!v49)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
              v49 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            if ((*(v49 + 364) & 1) == 0)
            {
              goto LABEL_83;
            }

            v50 = *(this + 3);
            if (!v50)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
              v50 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            if ((*(v50 + 364) & 2) == 0)
            {
              goto LABEL_83;
            }

            v51 = *(this + 3);
            if (!v51)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
              v51 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            if ((*(v51 + 364) & 4) == 0)
            {
              goto LABEL_83;
            }

            v52 = *(this + 3);
            if (!v52)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
              v52 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            if ((*(v52 + 8) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_83;
            }

            v53 = *(this + 3);
            if (!v53)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
              v53 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            if ((*(v53 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_83;
            }

            v54 = *(this + 3);
            if (!v54)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
              v54 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            if ((*(v54 + 24) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_83;
            }

            v55 = *(this + 3);
            if (!v55)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
              v55 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            if (*(v55 + 8) < 0.0)
            {
              goto LABEL_83;
            }

            v56 = *(this + 3);
            if (!v56)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
              v56 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            if (*(v56 + 16) < 0.0)
            {
LABEL_83:
              *(a2 + 184) = 0;
              goto LABEL_84;
            }

            v72 = *(this + 3);
            if (!v72)
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
              v72 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
            }

            v73 = *(v72 + 24);
            *(a2 + 184) = v73 > 0.0;
            if (v73 <= 0.0)
            {
LABEL_84:
              v57 = *(this + 2);
              if (v57)
              {
                *(a2 + 19) = v57[8];
              }

              else
              {
                CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
                v57 = *(this + 2);
                *(a2 + 19) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16) + 64);
                if (!v57)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v58);
                  v57 = *(this + 2);
                  *(a2 + 21) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16) + 40);
                  if (!v57)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v65);
                    v57 = *(this + 2);
                    *(a2 + 22) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16) + 56);
                    if (!v57)
                    {
                      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v66);
                      v57 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
                    }

                    goto LABEL_89;
                  }

LABEL_88:
                  *(a2 + 22) = v57[7];
LABEL_89:
                  *(a2 + 20) = v57[9];
                  v34 = *(a2 + 105);
                  return v34 & 1;
                }
              }

              *(a2 + 21) = v57[5];
              goto LABEL_88;
            }

            v74 = *(this + 3);
            if (v74)
            {
              *(a2 + 24) = v74[1];
            }

            else
            {
              CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
              v74 = *(this + 3);
              *(a2 + 24) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24) + 8);
              if (!v74)
              {
                CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
                v74 = *(this + 3);
                *(a2 + 25) = *(*(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24) + 16);
                if (!v74)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
                  v74 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
                }

                goto LABEL_123;
              }
            }

            *(a2 + 25) = v74[2];
LABEL_123:
            *(a2 + 26) = v74[3];
            goto LABEL_84;
          }

          v43 = *(this + 2);
          if (!v43)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
            v43 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
          }

          v44 = *(v43 + 24);
          v45 = *(this + 3);
          if (!v45)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
            v45 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 24);
          }

          *(a2 + 16) = v44 + *(v45 + 100);
          v46 = *(this + 2);
          if (!v46)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
            v46 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
          }

          v47 = *(v46 + 32);
          v48 = 144;
        }

        *(a2 + v48) = v47;
        goto LABEL_59;
      }
    }

    v67 = *(this + 2);
    if (!v67)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v67 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v68 = *(v67 + 8);
    if (!v68)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v68 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
    }

    *v64 = *(v68 + 8);
    v69 = *(this + 2);
    if (!v69)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v69 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    v70 = *(v69 + 8);
    if (!v70)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v70 = *(CoreNavigation::CLP::LogEntry::PrivateData::DaemonLocation::default_instance_ + 8);
    }

    *(a2 + 15) = *(v70 + 16);
    v71 = *(this + 2);
    if (!v71)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(v25);
      v71 = *(CoreNavigation::CLP::LogEntry::PrivateData::Location::default_instance_ + 16);
    }

    *(a2 + 17) = *(v71 + 16);
    goto LABEL_44;
  }

  if (cnprint::CNPrinter::GetLogLevel(v13) <= 1)
  {
    v76.i16[0] = 13;
    v77 = 1;
    cnprint::CNPrinter::Print(&v76, &v77, "location private does not have mach continuous time for position event", v17, v18, v19, v20, v21, v75);
  }

LABEL_31:
  v34 = 0;
  return v34 & 1;
}

uint64_t trackrun::ConvertProtobufToTrackRunTime(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v10 = *(a1 + 36);
  if ((v10 & 4) != 0)
  {
    a9.i64[0] = *(a1 + 24);
    v19 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v19, 0, a9, a10);
    v15.i64[1] = *(&v19 + 1);
    *(a2 + 8) = v19;
    *a2 = 1;
    if (a3 & 1) != 0 && (*(a1 + 36))
    {
      v15.i64[0] = *(a1 + 8);
      v19 = 0uLL;
      CNTimeSpan::SetTimeSpan(&v19, 0, v15, v14);
      *(a2 + 32) = v19;
      *(a2 + 24) = 1;
    }

    else
    {
      *(a2 + 24) = 0;
    }
  }

  else
  {
    LOWORD(v19) = 13;
    v18 = 3;
    cnprint::CNPrinter::Print(&v19, &v18, "ConvertProtobufToTrackRunTime,mach continuous time not present", a4, a5, a6, a7, a8, v17);
  }

  return (v10 >> 2) & 1;
}

{
  v10 = *(a1 + 36);
  if ((v10 & 4) != 0)
  {
    a9.i64[0] = *(a1 + 24);
    v19 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v19, 0, a9, a10);
    v15.i64[1] = *(&v19 + 1);
    *(a2 + 8) = v19;
    *a2 = 1;
    if (a3 & 1) != 0 && (*(a1 + 36))
    {
      v15.i64[0] = *(a1 + 8);
      v19 = 0uLL;
      CNTimeSpan::SetTimeSpan(&v19, 0, v15, v14);
      *(a2 + 32) = v19;
      *(a2 + 24) = 1;
    }

    else
    {
      *(a2 + 24) = 0;
    }
  }

  else
  {
    LOWORD(v19) = 13;
    v18 = 3;
    cnprint::CNPrinter::Print(&v19, &v18, "ConvertProtobufToTrackRunTime,mach continuous time not present", a4, a5, a6, a7, a8, v17);
  }

  return (v10 >> 2) & 1;
}

uint64_t trackrun::PopulateAllTimeFields(uint64_t a1, uint64_t a2, int8x16_t a3, int8x16_t a4)
{
  result = CNTimeSpan::operator-((a1 + 8), (a2 + 8), a3, a4);
  v11[0] = result;
  v11[1] = v9;
  if (*(a2 + 24) == 1)
  {
    result = CNTimeSpan::operator+((a2 + 32), v11, v7, v8);
    *(a1 + 32) = result;
    *(a1 + 40) = v10;
    *(a1 + 24) = 1;
  }

  return result;
}

uint64_t trackrun::ConvertProtobufToLocationType(unsigned int a1)
{
  if (a1 >= 0xE)
  {
    return 1;
  }

  else
  {
    return a1;
  }
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *a1)
{
  CoreNavigation::CLP::LogEntry::LogEntry::LogEntry(v15);
  if (wireless_diagnostics::google::protobuf::MessageLite::ParseFromString())
  {
    v10 = raven::RavenSupervisor::RaiseEventsFrom(a1, v15, v2, v3, v4, v5, v6, v7, v8, v9);
  }

  else
  {
    cnprint::CNPrinter::Print(&v14, &v13, "Failed to parse incoming LogEntry", v3, v4, v5, v6, v7, v12);
    v10 = 0;
  }

  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(v15);
  return v10;
}

void sub_1D0B7ACF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  CoreNavigation::CLP::LogEntry::LogEntry::~LogEntry(va);
  _Unwind_Resume(a1);
}

uint64_t raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::LogEntry *a2, raven::AccelerometerEvent *a3, raven::RavenGnssAssistanceFileEvent *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v11 = this;
  v12 = this + 4096;
  if (*(this + 8190) != 1)
  {
    goto LABEL_5;
  }

  v13 = *(a2 + 5);
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v13 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  }

  if (*(v13 + 316))
  {
    v15 = *(a2 + 5);
    if (!v15)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v15 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v16 = *(v15 + 8);
    if (!v16)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v16 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 8);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v11, v16, a3, a4, a5, a6, a7, a8, *a9.i64, a10);
    v14 = 1;
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

  v17 = *(a2 + 5);
  v18 = v17;
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v18 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v17 = *(a2 + 5);
  }

  if ((*(v18 + 318) & 0x10) != 0)
  {
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v19 = *(v17 + 168);
    if (!v19)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v19 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 168);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v11, v19, a3, a4, a5, a6, a7, a8, *a9.i64, a10);
    v17 = *(a2 + 5);
    v14 = 2;
  }

  v20 = v17;
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v20 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v17 = *(a2 + 5);
  }

  if ((*(v20 + 316) & 4) != 0)
  {
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v21 = *(v17 + 24);
    if (!v21)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v21 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 24);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v11, v21, a3, a4, a5, a6, a7, a8, *a9.i64, a10);
    v17 = *(a2 + 5);
    v14 = 4;
  }

  v22 = v17;
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v22 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v17 = *(a2 + 5);
  }

  if (*(v22 + 317))
  {
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v23 = *(v17 + 72);
    if (!v23)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 72);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v11, v23, a3, a4, a5, a6, a7, a8, a9, a10);
    v17 = *(a2 + 5);
    v14 = 5;
  }

  v24 = v17;
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v24 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v17 = *(a2 + 5);
  }

  if ((*(v24 + 318) & 0x80) != 0)
  {
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v25 = *(v17 + 192);
    if (!v25)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v25 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 192);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v11, v25, a3, a4, a5, a6, a7, a8, *a9.i64, a10);
    v17 = *(a2 + 5);
    v14 = 6;
  }

  v26 = v17;
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v26 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v17 = *(a2 + 5);
  }

  if (*(v26 + 318))
  {
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v27 = *(v17 + 136);
    if (!v27)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v27 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 136);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v11, v27, a3, a4, a5, a6, a7, a8, *a9.i64, a10);
    v17 = *(a2 + 5);
    v14 = 7;
  }

  v28 = v17;
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v28 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v17 = *(a2 + 5);
  }

  if ((*(v28 + 319) & 2) != 0)
  {
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v29 = *(v17 + 208);
    if (!v29)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v29 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 208);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v11, v29, a3, a4, a5, a6, a7, a8, *a9.i64, a10);
    v17 = *(a2 + 5);
    v14 = 8;
  }

  v30 = v17;
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v30 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v17 = *(a2 + 5);
  }

  if (*(v30 + 319))
  {
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v31 = *(v17 + 200);
    if (!v31)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v31 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 200);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v11, v31, a3, a4, a5, a6, a7, a8, *a9.i64, a10);
    v17 = *(a2 + 5);
    v14 = 9;
  }

  v32 = v17;
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v32 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v17 = *(a2 + 5);
  }

  if ((*(v32 + 317) & 0x10) != 0)
  {
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v33 = *(v17 + 104);
    if (!v33)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v33 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 104);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v11, v33, a3, a4, a5, a6, a7, a8, *a9.i64, a10);
    v17 = *(a2 + 5);
    v14 = 10;
  }

  if (v12[4094] == 1)
  {
    v34 = v17;
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v34 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
      v17 = *(a2 + 5);
    }

    if ((*(v34 + 316) & 2) != 0)
    {
      if (!v17)
      {
        CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
        v17 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
      }

      v35 = *(v17 + 16);
      if (!v35)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
        v35 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 16);
      }

      raven::RavenSupervisor::RaiseEventsFrom(v11, v35, a3, a4, a5, a6, a7, a8, *a9.i64, a10);
      v17 = *(a2 + 5);
      v14 = 11;
    }
  }

  v36 = v17;
  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v36 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v17 = *(a2 + 5);
  }

  if ((*(v36 + 316) & 8) != 0)
  {
    if (!v17)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v17 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v37 = *(v17 + 32);
    if (!v37)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v37 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 32);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v11, v37, a3, a4, a5, a6, a7, a8, *a9.i64, a10);
    v17 = *(a2 + 5);
    v14 = 12;
  }

  if (!v17)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v17 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  }

  if ((*(v17 + 317) & 0x20) != 0)
  {
    v38 = *(a2 + 5);
    if (!v38)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v38 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    if (!*(v38 + 112))
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
    }

    v14 = 13;
  }

  v39 = *(a2 + 5);
  v40 = v39;
  if (!v39)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v40 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v39 = *(a2 + 5);
  }

  if ((*(v40 + 318) & 0x20) != 0)
  {
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v39 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v41 = *(v39 + 176);
    if (!v41)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v41 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 176);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v11, v41, a3, a4, a5, a6, a7, a8, a9, a10);
    v39 = *(a2 + 5);
    v14 = 15;
  }

  v42 = v39;
  if (!v39)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v42 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v39 = *(a2 + 5);
  }

  if ((*(v42 + 317) & 2) != 0)
  {
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v39 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v43 = *(v39 + 80);
    if (!v43)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v43 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 80);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v11, v43, a3, a4, a5, a6, a7, a8, *a9.i64, a10);
    v39 = *(a2 + 5);
    v14 = 16;
  }

  v44 = v39;
  if (!v39)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v44 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v39 = *(a2 + 5);
  }

  if ((*(v44 + 316) & 0x10) != 0)
  {
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v39 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v45 = *(v39 + 40);
    if (!v45)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v45 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 40);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v11, v45, a3, a4, a5, a6, a7, a8, a9, a10);
    v39 = *(a2 + 5);
    v14 = 17;
  }

  v46 = v39;
  if (!v39)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v46 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v39 = *(a2 + 5);
  }

  if ((*(v46 + 316) & 0x20) != 0)
  {
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v39 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v47 = *(v39 + 48);
    if (!v47)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v47 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 48);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v11, v47, a3, a4, a5, a6, a7, a8);
    v39 = *(a2 + 5);
    v14 = 18;
  }

  v48 = v39;
  if (!v39)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v48 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v39 = *(a2 + 5);
  }

  if ((*(v48 + 319) & 0x10) != 0)
  {
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v39 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v49 = *(v39 + 232);
    if (!v49)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v49 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 232);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v11, v49, a3, a4, a5, a6, a7, a8);
    v39 = *(a2 + 5);
    v14 = 19;
  }

  v50 = v39;
  if (!v39)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v50 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v39 = *(a2 + 5);
  }

  if ((*(v50 + 316) & 0x40) != 0)
  {
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v39 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v51 = *(v39 + 56);
    if (!v51)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v51 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 56);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v11, v51, a3, a4, a5, a6, a7, a8, a9, a10);
    v39 = *(a2 + 5);
    v14 = 20;
  }

  v52 = v39;
  if (!v39)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v52 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v39 = *(a2 + 5);
  }

  if ((*(v52 + 317) & 8) != 0)
  {
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v39 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v53 = *(v39 + 96);
    if (!v53)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v53 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 96);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v11, v53, a3, a4, a5, a6, a7, a8, a9, a10);
    v39 = *(a2 + 5);
    v14 = 23;
  }

  v54 = v39;
  if (!v39)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v54 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v39 = *(a2 + 5);
  }

  if ((*(v54 + 317) & 0x80) != 0)
  {
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v39 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v55 = *(v39 + 128);
    if (!v55)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v55 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 128);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v11, v55, a3);
    v39 = *(a2 + 5);
    v14 = 24;
  }

  v56 = v39;
  if (!v39)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v56 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v39 = *(a2 + 5);
  }

  if ((*(v56 + 320) & 0x20) != 0)
  {
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v39 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v57 = *(v39 + 304);
    if (!v57)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v57 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 304);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v11, v57);
  }

  v58 = v39;
  if (!v39)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v58 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v39 = *(a2 + 5);
  }

  if ((*(v58 + 316) & 0x80) != 0)
  {
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v39 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v59 = *(v39 + 64);
    if (!v59)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v59 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 64);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v11, v59, a3, a4, a5, a6, a7, a8, a9, a10);
    v39 = *(a2 + 5);
    v14 = 25;
  }

  v60 = v39;
  if (!v39)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v60 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v39 = *(a2 + 5);
  }

  if ((*(v60 + 318) & 2) != 0)
  {
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v39 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v61 = *(v39 + 144);
    if (!v61)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v61 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 144);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v11, v61, a3, a4, a5, a6, a7, a8, *a9.i64, a10);
    v39 = *(a2 + 5);
    v14 = 26;
  }

  v62 = v39;
  if (!v39)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v62 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v39 = *(a2 + 5);
  }

  if ((*(v62 + 318) & 8) != 0)
  {
    if (!v39)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v39 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v63 = *(v39 + 160);
    if (!v63)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v63 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 160);
    }

    this = raven::RavenSupervisor::RaiseEventsFrom(v11, v63, a3, a4, a5, a6, a7, a8, *a9.i64, a10);
    v39 = *(a2 + 5);
    v14 = 27;
  }

  if (!v39)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v39 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  }

  if ((*(v39 + 320) & 4) != 0)
  {
    v64 = *(a2 + 5);
    if (!v64)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v64 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v65 = *(v64 + 280);
    if (!v65)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v65 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 280);
    }

    v66 = *(a2 + 4);
    if (!v66)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v66 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 32);
    }

    v67 = *(v65 + 40);
    if (v67)
    {
      v75 = *(v65 + 32);
      this = raven::RavenSupervisor::RaiseEventsFrom(a9, a10, v11, &v75, v66);
      v67 = *(v65 + 40);
      v14 = 3;
      if ((v67 & 2) == 0)
      {
LABEL_207:
        if ((v67 & 8) == 0)
        {
          goto LABEL_220;
        }

        goto LABEL_215;
      }
    }

    else if ((v67 & 2) == 0)
    {
      goto LABEL_207;
    }

    if (v12[4082] == 1)
    {
      v68 = *(v65 + 8);
      if (!v68)
      {
        CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto(this);
        v68 = *(CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_ + 8);
      }

      raven::RavenSupervisor::RaiseEventsFrom(v11, v68);
      v67 = *(v65 + 40);
    }

    v14 = 28;
    if ((v67 & 8) != 0)
    {
LABEL_215:
      if (v12[4083] == 1)
      {
        v69 = *(v65 + 24);
        if (!v69)
        {
          CoreNavigation::CLP::LogEntry::Vision::protobuf_AddDesc_CoreNavigationCLPVisionLogEntry_2eproto(this);
          v69 = *(CoreNavigation::CLP::LogEntry::Vision::LogEntry::default_instance_ + 24);
        }

        raven::RavenSupervisor::RaiseEventsFrom(v11, v69, v66);
      }

      v14 = 29;
    }
  }

LABEL_220:
  v70 = *(a2 + 5);
  v71 = v70;
  if (!v70)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v71 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    v70 = *(a2 + 5);
  }

  if ((*(v71 + 319) & 0x40) != 0)
  {
    if (!v70)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v70 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
    }

    v72 = *(v70 + 248);
    if (!v72)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataCapture_2eproto(this);
      v72 = *(CoreNavigation::CLP::LogEntry::PrivateData::PrivateDataCapture::default_instance_ + 248);
    }

    v73 = *(a2 + 4);
    if (!v73)
    {
      CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
      v73 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 32);
    }

    raven::RavenSupervisor::RaiseEventsFrom(v11, v72, v73, a4);
    v70 = *(a2 + 5);
    v14 = 30;
  }

  if (!v70)
  {
    CoreNavigation::CLP::LogEntry::protobuf_AddDesc_CoreNavigationCLPLogEntry_2eproto(this);
    v70 = *(CoreNavigation::CLP::LogEntry::LogEntry::default_instance_ + 40);
  }

  if ((*(v70 + 317) & 0x40) != 0)
  {
    cnframework::Supervisor::Reset(v11);
    return 22;
  }

  return v14;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::Accel::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::Accel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v6 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || v6 != 2)
      {
        goto LABEL_15;
      }

      *(this + 11) |= 1u;
      v7 = *(this + 1);
      if (!v7)
      {
        operator new();
      }

      v26 = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || *v8 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26))
        {
          return 0;
        }
      }

      else
      {
        v26 = *v8;
        *(a2 + 1) = v8 + 1;
      }

      v9 = *(a2 + 14);
      v10 = *(a2 + 15);
      *(a2 + 14) = v9 + 1;
      if (v9 >= v10)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::TimeStamp::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v11 = *(a2 + 14);
      v12 = __OFSUB__(v11, 1);
      v13 = v11 - 1;
      if (v13 < 0 == v12)
      {
        *(a2 + 14) = v13;
      }

      v14 = *(a2 + 1);
      if (v14 < *(a2 + 2) && *v14 == 18)
      {
        do
        {
          *(a2 + 1) = v14 + 1;
LABEL_27:
          v15 = *(this + 7);
          v16 = *(this + 6);
          if (v16 >= v15)
          {
            if (v15 == *(this + 8))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
              v15 = *(this + 7);
            }

            *(this + 7) = v15 + 1;
            operator new();
          }

          v17 = *(this + 2);
          *(this + 6) = v16 + 1;
          v18 = *(v17 + 8 * v16);
          v27 = 0;
          v19 = *(a2 + 1);
          if (v19 >= *(a2 + 2) || *v19 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
            {
              return 0;
            }
          }

          else
          {
            v27 = *v19;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::MergePartialFromCodedStream(v18, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v22 = *(a2 + 14);
          v12 = __OFSUB__(v22, 1);
          v23 = v22 - 1;
          if (v23 < 0 == v12)
          {
            *(a2 + 14) = v23;
          }

          v14 = *(a2 + 1);
          v24 = *(a2 + 2);
        }

        while (v14 < v24 && *v14 == 18);
        if (v14 == v24 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 2)
    {
      goto LABEL_27;
    }

LABEL_15:
    if (v6 == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v7 != 5)
          {
            goto LABEL_22;
          }

LABEL_38:
          v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v19) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v19;
          *(this + 8) |= 4u;
          v17 = *(a2 + 1);
          if (v17 < *(a2 + 2) && *v17 == 37)
          {
            *(a2 + 1) = v17 + 1;
            goto LABEL_42;
          }
        }

        else
        {
          if (v6 != 4 || v7 != 5)
          {
            goto LABEL_22;
          }

LABEL_42:
          v19 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v19) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v19;
          *(this + 8) |= 8u;
          if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (v6 == 1)
      {
        break;
      }

      if (v6 == 2 && v7 == 5)
      {
        goto LABEL_34;
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

    if (v7 != 2)
    {
      goto LABEL_22;
    }

    *(this + 8) |= 1u;
    v8 = *(this + 1);
    if (!v8)
    {
      operator new();
    }

    v19 = 0;
    v9 = *(a2 + 1);
    if (v9 >= *(a2 + 2) || *v9 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v19))
      {
        return 0;
      }
    }

    else
    {
      v19 = *v9;
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
    if (v15 < *(a2 + 2) && *v15 == 21)
    {
      *(a2 + 1) = v15 + 1;
LABEL_34:
      v19 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v19) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = v19;
      *(this + 8) |= 2u;
      v16 = *(a2 + 1);
      if (v16 < *(a2 + 2) && *v16 == 29)
      {
        *(a2 + 1) = v16 + 1;
        goto LABEL_38;
      }
    }
  }
}

uint64_t raven::ConvertProtobufToRavenTime(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v10 = *(a1 + 36);
  if ((v10 & 4) != 0)
  {
    a9.i64[0] = *(a1 + 24);
    v19 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v19, 0, a9, a10);
    v15.i64[1] = *(&v19 + 1);
    *a2 = v19;
    if (a3 & 1) != 0 && (*(a1 + 36))
    {
      v15.i64[0] = *(a1 + 8);
      v19 = 0uLL;
      CNTimeSpan::SetTimeSpan(&v19, 0, v15, v14);
      *(a2 + 24) = v19;
      *(a2 + 16) = 1;
    }

    else
    {
      *(a2 + 16) = 0;
    }
  }

  else
  {
    LOWORD(v19) = 12;
    v18 = 3;
    cnprint::CNPrinter::Print(&v19, &v18, "ConvertProtobufToRavenTime,mach continuous time not present", a4, a5, a6, a7, a8, v17);
  }

  return (v10 >> 2) & 1;
}

void raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::Accel *a2, raven::AccelerometerEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  LODWORD(v10) = *(a2 + 6);
  if (v10 >= 1)
  {
    v12 = 0;
    v14 = vdupq_n_s64(0x7FF8000000000000uLL);
    do
    {
      v15[0] = &unk_1F4CEEEB0;
      v15[1] = 0;
      v15[2] = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
      v13 = v14;
      v25 = v14;
      v26 = v14;
      v27 = 0;
      v28 = 0x7FF8000000000000;
      v29 = 0;
      if (v12 >= v10)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v30);
      }

      if (raven::ConvertProtobufToAccelerometerEvent(*(*(a2 + 2) + 8 * v12), v15, a3, a4, a5, a6, a7, a8, v13, a10))
      {
        sub_1D0B7C294();
      }

      ++v12;
      v10 = *(a2 + 6);
    }

    while (v12 < v10);
  }
}

uint64_t raven::ConvertProtobufToAccelerometerEvent(float32x2_t *this, const CoreNavigation::CLP::LogEntry::PrivateData::AccelSample *a2, raven::AccelerometerEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if ((this[4].i8[0] & 1) == 0)
  {
    return 0;
  }

  v13 = this[1];
  if (!v13)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPPrivateDataShared_2eproto(0);
    v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::AccelSample::default_instance_ + 8);
  }

  result = raven::ConvertProtobufToRavenTime(v13, a2 + 8, 0, a4, a5, a6, a7, a8, a9, a10);
  if (result)
  {
    *(a2 + 104) = vcvtq_f64_f32(this[2]);
    *(a2 + 15) = this[3].f32[0];
    return 1;
  }

  return result;
}