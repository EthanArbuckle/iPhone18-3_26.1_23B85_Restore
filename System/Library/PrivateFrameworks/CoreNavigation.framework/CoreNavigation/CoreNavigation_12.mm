uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SvBandCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 2)
        {
          break;
        }

        if (v6 != 1)
        {
          if (v6 != 2 || v7 != 1)
          {
            goto LABEL_21;
          }

          goto LABEL_34;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v18[0] = 0;
        v10 = *(a2 + 1);
        if (v10 >= *(a2 + 2) || (v11 = *v10, (v11 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v18);
          if (!result)
          {
            return result;
          }

          v11 = v18[0];
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v11 <= 0xC)
        {
          *(this + 11) |= 1u;
          *(this + 6) = v11;
        }

        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 17)
        {
          *(a2 + 1) = v13 + 1;
LABEL_34:
          *v18 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v18) & 1) == 0)
          {
            return 0;
          }

          *(this + 1) = *v18;
          *(this + 11) |= 2u;
          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 25)
          {
            *(a2 + 1) = v14 + 1;
LABEL_38:
            *v18 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v18) & 1) == 0)
            {
              return 0;
            }

            *(this + 2) = *v18;
            *(this + 11) |= 4u;
            v15 = *(a2 + 1);
            if (v15 < *(a2 + 2) && *v15 == 33)
            {
              *(a2 + 1) = v15 + 1;
              goto LABEL_42;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if (v7 != 1)
        {
          goto LABEL_21;
        }

        goto LABEL_38;
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 1)
      {
        goto LABEL_21;
      }

LABEL_42:
      *v18 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v18) & 1) == 0)
      {
        return 0;
      }

      *(this + 4) = *v18;
      *(this + 11) |= 8u;
      v16 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v16 < v8 && *v16 == 40)
      {
        v9 = v16 + 1;
        *(a2 + 1) = v9;
LABEL_46:
        v18[0] = 0;
        if (v9 >= v8 || (v17 = *v9, (v17 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v18);
          if (!result)
          {
            return result;
          }

          v17 = v18[0];
        }

        else
        {
          *(a2 + 1) = v9 + 1;
        }

        if (v17 <= 2)
        {
          *(this + 11) |= 0x10u;
          *(this + 7) = v17;
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

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      goto LABEL_46;
    }

LABEL_21:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::ReceiverBandCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v7 != 5)
          {
            goto LABEL_20;
          }

LABEL_34:
          v14[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v14) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v14[0];
          *(this + 8) |= 4u;
          v13 = *(a2 + 1);
          if (v13 < *(a2 + 2) && *v13 == 37)
          {
            *(a2 + 1) = v13 + 1;
            goto LABEL_38;
          }
        }

        else
        {
          if (v6 != 4 || v7 != 5)
          {
            goto LABEL_20;
          }

LABEL_38:
          v14[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v14) & 1) == 0)
          {
            return 0;
          }

          *(this + 6) = v14[0];
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

      if (v6 != 1)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v14[0] = 0;
      v8 = *(a2 + 1);
      if (v8 >= *(a2 + 2) || (v9 = *v8, (v9 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v14);
        if (!result)
        {
          return result;
        }

        v9 = v14[0];
      }

      else
      {
        *(a2 + 1) = v8 + 1;
      }

      if (v9 <= 0xC)
      {
        *(this + 8) |= 1u;
        *(this + 4) = v9;
      }

      v11 = *(a2 + 1);
      if (v11 < *(a2 + 2) && *v11 == 17)
      {
        *(a2 + 1) = v11 + 1;
LABEL_30:
        *v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v14) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v14;
        *(this + 8) |= 2u;
        v12 = *(a2 + 1);
        if (v12 < *(a2 + 2) && *v12 == 29)
        {
          *(a2 + 1) = v12 + 1;
          goto LABEL_34;
        }
      }
    }

    if (v6 == 2 && v7 == 1)
    {
      goto LABEL_30;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::TimeConversionInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
            goto LABEL_21;
          }

          goto LABEL_52;
        }

        if (v6 == 4)
        {
          if (v7 != 2)
          {
            goto LABEL_21;
          }

LABEL_66:
          *(this + 13) |= 8u;
          v30 = *(this + 4);
          if (!v30)
          {
            operator new();
          }

          v44 = 0;
          v31 = *(a2 + 1);
          if (v31 >= *(a2 + 2) || *v31 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
            {
              return 0;
            }
          }

          else
          {
            v44 = *v31;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::MergePartialFromCodedStream(v30, a2) || *(a2 + 36) != 1)
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
            goto LABEL_80;
          }
        }

        else
        {
          if (v6 != 5 || v7 != 2)
          {
            goto LABEL_21;
          }

LABEL_80:
          *(this + 13) |= 0x10u;
          v37 = *(this + 5);
          if (!v37)
          {
            operator new();
          }

          v44 = 0;
          v38 = *(a2 + 1);
          if (v38 >= *(a2 + 2) || *v38 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
            {
              return 0;
            }
          }

          else
          {
            v44 = *v38;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::MergePartialFromCodedStream(v37, a2) || *(a2 + 36) != 1)
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
        goto LABEL_21;
      }

      *(this + 13) |= 1u;
      v8 = *(this + 1);
      if (!v8)
      {
        operator new();
      }

      v44 = 0;
      v9 = *(a2 + 1);
      if (v9 >= *(a2 + 2) || *v9 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
        {
          return 0;
        }
      }

      else
      {
        v44 = *v9;
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
      if (!CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::MergePartialFromCodedStream(v8, a2) || *(a2 + 36) != 1)
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
LABEL_38:
        *(this + 13) |= 2u;
        v16 = *(this + 2);
        if (!v16)
        {
          operator new();
        }

        v44 = 0;
        v17 = *(a2 + 1);
        if (v17 >= *(a2 + 2) || *v17 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
          {
            return 0;
          }
        }

        else
        {
          v44 = *v17;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
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
LABEL_52:
          *(this + 13) |= 4u;
          v23 = *(this + 3);
          if (!v23)
          {
            operator new();
          }

          v44 = 0;
          v24 = *(a2 + 1);
          if (v24 >= *(a2 + 2) || *v24 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44))
            {
              return 0;
            }
          }

          else
          {
            v44 = *v24;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::MergePartialFromCodedStream(v23, a2) || *(a2 + 36) != 1)
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
            goto LABEL_66;
          }
        }
      }
    }

    if (v6 == 2 && v7 == 2)
    {
      goto LABEL_38;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GpsTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_16;
        }

        v12 = *(this + 8);
LABEL_24:
        *(this + 8) = v12 | 2;
        v14 = *(this + 1);
        if (!v14)
        {
          operator new();
        }

        v28 = 0;
        v15 = *(a2 + 1);
        if (v15 >= *(a2 + 2) || *v15 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v28))
          {
            return 0;
          }
        }

        else
        {
          v28 = *v15;
          *(a2 + 1) = v15 + 1;
        }

        v16 = *(a2 + 14);
        v17 = *(a2 + 15);
        *(a2 + 14) = v16 + 1;
        if (v16 >= v17)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::MergePartialFromCodedStream(v14, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v18 = *(a2 + 14);
        v19 = __OFSUB__(v18, 1);
        v20 = v18 - 1;
        if (v20 < 0 == v19)
        {
          *(a2 + 14) = v20;
        }

        v21 = *(a2 + 1);
        if (v21 < *(a2 + 2) && *v21 == 26)
        {
          *(a2 + 1) = v21 + 1;
LABEL_38:
          *(this + 8) |= 4u;
          v22 = *(this + 2);
          if (!v22)
          {
            operator new();
          }

          v29 = 0;
          v23 = *(a2 + 1);
          if (v23 >= *(a2 + 2) || *v23 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v29))
            {
              return 0;
            }
          }

          else
          {
            v29 = *v23;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v26 = *(a2 + 14);
          v19 = __OFSUB__(v26, 1);
          v27 = v26 - 1;
          if (v27 < 0 == v19)
          {
            *(a2 + 14) = v27;
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

      else
      {
        if (v6 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 6) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        v12 = *(this + 8) | 1;
        *(this + 8) = v12;
        if (v11 < v8 && *v11 == 18)
        {
          *(a2 + 1) = v11 + 1;
          goto LABEL_24;
        }
      }
    }

    if (v7 == 2)
    {
      goto LABEL_38;
    }

LABEL_16:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
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

          if (v7 == 2)
          {
            goto LABEL_34;
          }

LABEL_16:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }

        if (v6 == 2)
        {
          break;
        }

        if (v6 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_16;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 2) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        *(this + 7) |= 1u;
        if (v11 < v8 && *v11 == 16)
        {
          v12 = v11 + 1;
          *(a2 + 1) = v12;
          goto LABEL_24;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v12 = *(a2 + 1);
      v8 = *(a2 + 2);
LABEL_24:
      v23 = 0;
      if (v12 >= v8 || (v14 = *v12, (v14 & 0x80000000) != 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v23);
        if (!result)
        {
          return result;
        }

        v14 = v23;
      }

      else
      {
        *(a2 + 1) = v12 + 1;
      }

      if (v14 <= 4)
      {
        *(this + 7) |= 2u;
        *(this + 3) = v14;
      }

      v15 = *(a2 + 1);
    }

    while (v15 >= *(a2 + 2) || *v15 != 26);
    *(a2 + 1) = v15 + 1;
LABEL_34:
    *(this + 7) |= 4u;
    v16 = *(this + 2);
    if (!v16)
    {
      operator new();
    }

    v24 = 0;
    v17 = *(a2 + 1);
    if (v17 >= *(a2 + 2) || *v17 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24))
      {
        return 0;
      }
    }

    else
    {
      v24 = *v17;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondChange::MergePartialFromCodedStream(v16, a2) || *(a2 + 36) != 1)
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

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GpsToUtcConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v7 != 1)
          {
            goto LABEL_20;
          }

LABEL_32:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v15;
          *(this + 11) |= 4u;
          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 33)
          {
            *(a2 + 1) = v14 + 1;
            goto LABEL_36;
          }
        }

        else
        {
          if (v6 != 4 || v7 != 1)
          {
            goto LABEL_20;
          }

LABEL_36:
          v15 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v15;
          *(this + 11) |= 8u;
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

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_20;
      }

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 11) |= 1u;
      if (v11 < v8 && *v11 == 17)
      {
        *(a2 + 1) = v11 + 1;
LABEL_28:
        v15 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v15) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v15;
        *(this + 11) |= 2u;
        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 25)
        {
          *(a2 + 1) = v13 + 1;
          goto LABEL_32;
        }
      }
    }

    if (v6 == 2 && v7 == 1)
    {
      goto LABEL_28;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GlonassTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v6 != 1)
          {
            if (v6 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_21;
            }

            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            goto LABEL_32;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_21;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v11 >= v8 || (v12 = *v11, v12 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
            if (!result)
            {
              return result;
            }

            v13 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 2) = v12;
            v13 = v11 + 1;
            *(a2 + 1) = v13;
          }

          *(this + 10) |= 1u;
          if (v13 < v8 && *v13 == 16)
          {
            v9 = v13 + 1;
            *(a2 + 1) = v9;
LABEL_32:
            if (v9 >= v8 || (v15 = *v9, v15 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
              if (!result)
              {
                return result;
              }

              v16 = *(a2 + 1);
              v8 = *(a2 + 2);
            }

            else
            {
              *(this + 3) = v15;
              v16 = v9 + 1;
              *(a2 + 1) = v16;
            }

            *(this + 10) |= 2u;
            if (v16 < v8 && *v16 == 24)
            {
              v10 = v16 + 1;
              *(a2 + 1) = v10;
              goto LABEL_40;
            }
          }
        }

        if (v6 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_21;
        }

        v10 = *(a2 + 1);
        v8 = *(a2 + 2);
LABEL_40:
        v33 = 0;
        if (v10 >= v8 || (v17 = *v10, (v17 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v33);
          if (!result)
          {
            return result;
          }

          v17 = v33;
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v17 <= 5)
        {
          *(this + 10) |= 4u;
          *(this + 8) = v17;
        }

        v18 = *(a2 + 1);
        if (v18 < *(a2 + 2) && *v18 == 34)
        {
          *(a2 + 1) = v18 + 1;
LABEL_50:
          *(this + 10) |= 8u;
          v19 = *(this + 2);
          if (!v19)
          {
            operator new();
          }

          v34 = 0;
          v20 = *(a2 + 1);
          if (v20 >= *(a2 + 2) || *v20 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v34))
            {
              return 0;
            }
          }

          else
          {
            v34 = *v20;
            *(a2 + 1) = v20 + 1;
          }

          v21 = *(a2 + 14);
          v22 = *(a2 + 15);
          *(a2 + 14) = v21 + 1;
          if (v21 >= v22)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergePartialFromCodedStream(v19, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v23 = *(a2 + 14);
          v24 = __OFSUB__(v23, 1);
          v25 = v23 - 1;
          if (v25 < 0 == v24)
          {
            *(a2 + 14) = v25;
          }

          v26 = *(a2 + 1);
          if (v26 < *(a2 + 2) && *v26 == 42)
          {
            *(a2 + 1) = v26 + 1;
            goto LABEL_64;
          }
        }
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 == 2)
      {
        goto LABEL_50;
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

    if (v6 != 5 || v7 != 2)
    {
      goto LABEL_21;
    }

LABEL_64:
    *(this + 10) |= 0x10u;
    v27 = *(this + 3);
    if (!v27)
    {
      operator new();
    }

    v35 = 0;
    v28 = *(a2 + 1);
    if (v28 >= *(a2 + 2) || *v28 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
      {
        return 0;
      }
    }

    else
    {
      v35 = *v28;
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
    if (!CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergePartialFromCodedStream(v27, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v31 = *(a2 + 14);
    v24 = __OFSUB__(v31, 1);
    v32 = v31 - 1;
    if (v32 < 0 == v24)
    {
      *(a2 + 14) = v32;
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GlonassSubsecondConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      v6 = TagFallback & 7;
      if (TagFallback >> 3 == 2)
      {
        break;
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_13;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
      }

      *(this + 7) |= 1u;
      if (v10 < v7 && *v10 == 17)
      {
        *(a2 + 1) = v10 + 1;
LABEL_21:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v12;
        *(this + 7) |= 2u;
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
      goto LABEL_21;
    }

LABEL_13:
    if (v6 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::BeidouTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 <= 3)
          {
            break;
          }

          if (v6 == 4)
          {
            if (v7 == 2)
            {
              goto LABEL_62;
            }

            goto LABEL_26;
          }

          if (v6 == 5)
          {
            if (v7 != 2)
            {
              goto LABEL_26;
            }

LABEL_76:
            *(this + 14) |= 0x10u;
            v36 = *(this + 4);
            if (!v36)
            {
              operator new();
            }

            v49 = 0;
            v37 = *(a2 + 1);
            if (v37 >= *(a2 + 2) || *v37 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
              {
                return 0;
              }
            }

            else
            {
              v49 = *v37;
              *(a2 + 1) = v37 + 1;
            }

            v38 = *(a2 + 14);
            v39 = *(a2 + 15);
            *(a2 + 14) = v38 + 1;
            if (v38 >= v39)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v36, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v40 = *(a2 + 14);
            v19 = __OFSUB__(v40, 1);
            v41 = v40 - 1;
            if (v41 < 0 == v19)
            {
              *(a2 + 14) = v41;
            }

            v42 = *(a2 + 1);
            if (v42 < *(a2 + 2) && *v42 == 50)
            {
              *(a2 + 1) = v42 + 1;
              goto LABEL_90;
            }
          }

          else
          {
            if (v6 != 6 || v7 != 2)
            {
              goto LABEL_26;
            }

LABEL_90:
            *(this + 14) |= 0x20u;
            v43 = *(this + 5);
            if (!v43)
            {
              operator new();
            }

            v49 = 0;
            v44 = *(a2 + 1);
            if (v44 >= *(a2 + 2) || *v44 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
              {
                return 0;
              }
            }

            else
            {
              v49 = *v44;
              *(a2 + 1) = v44 + 1;
            }

            v45 = *(a2 + 14);
            v46 = *(a2 + 15);
            *(a2 + 14) = v45 + 1;
            if (v45 >= v46)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v43, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v47 = *(a2 + 14);
            v19 = __OFSUB__(v47, 1);
            v48 = v47 - 1;
            if (v48 < 0 == v19)
            {
              *(a2 + 14) = v48;
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

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_26;
        }

        v9 = *(a2 + 1);
        v8 = *(a2 + 2);
        if (v9 >= v8 || (v10 = *v9, v10 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v11 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v10;
          v11 = v9 + 1;
          *(a2 + 1) = v11;
        }

        v12 = *(this + 14) | 1;
        *(this + 14) = v12;
        if (v11 < v8 && *v11 == 18)
        {
          *(a2 + 1) = v11 + 1;
          goto LABEL_34;
        }
      }

      if (v6 != 2)
      {
        break;
      }

      if (v7 != 2)
      {
        goto LABEL_26;
      }

      v12 = *(this + 14);
LABEL_34:
      *(this + 14) = v12 | 2;
      v14 = *(this + 1);
      if (!v14)
      {
        operator new();
      }

      v49 = 0;
      v15 = *(a2 + 1);
      if (v15 >= *(a2 + 2) || *v15 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
        {
          return 0;
        }
      }

      else
      {
        v49 = *v15;
        *(a2 + 1) = v15 + 1;
      }

      v16 = *(a2 + 14);
      v17 = *(a2 + 15);
      *(a2 + 14) = v16 + 1;
      if (v16 >= v17)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
      if (!CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::MergePartialFromCodedStream(v14, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v18 = *(a2 + 14);
      v19 = __OFSUB__(v18, 1);
      v20 = v18 - 1;
      if (v20 < 0 == v19)
      {
        *(a2 + 14) = v20;
      }

      v21 = *(a2 + 1);
      if (v21 < *(a2 + 2) && *v21 == 26)
      {
        *(a2 + 1) = v21 + 1;
LABEL_48:
        *(this + 14) |= 4u;
        v22 = *(this + 2);
        if (!v22)
        {
          operator new();
        }

        v49 = 0;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
          {
            return 0;
          }
        }

        else
        {
          v49 = *v23;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v26 = *(a2 + 14);
        v19 = __OFSUB__(v26, 1);
        v27 = v26 - 1;
        if (v27 < 0 == v19)
        {
          *(a2 + 14) = v27;
        }

        v28 = *(a2 + 1);
        if (v28 < *(a2 + 2) && *v28 == 34)
        {
          *(a2 + 1) = v28 + 1;
LABEL_62:
          *(this + 14) |= 8u;
          v29 = *(this + 3);
          if (!v29)
          {
            operator new();
          }

          v49 = 0;
          v30 = *(a2 + 1);
          if (v30 >= *(a2 + 2) || *v30 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v49))
            {
              return 0;
            }
          }

          else
          {
            v49 = *v30;
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
          if (!CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v29, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v33 = *(a2 + 14);
          v19 = __OFSUB__(v33, 1);
          v34 = v33 - 1;
          if (v34 < 0 == v19)
          {
            *(a2 + 14) = v34;
          }

          v35 = *(a2 + 1);
          if (v35 < *(a2 + 2) && *v35 == 42)
          {
            *(a2 + 1) = v35 + 1;
            goto LABEL_76;
          }
        }
      }
    }

    if (v6 == 3 && v7 == 2)
    {
      goto LABEL_48;
    }

LABEL_26:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 == 3)
      {
        if (v7 == 1)
        {
          goto LABEL_28;
        }

        goto LABEL_16;
      }

      if (v6 == 2)
      {
        break;
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        goto LABEL_16;
      }

      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        *(this + 1) = v10;
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 9) |= 1u;
      if (v11 < v8 && *v11 == 17)
      {
        *(a2 + 1) = v11 + 1;
LABEL_24:
        v14 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v14;
        *(this + 9) |= 2u;
        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 25)
        {
          *(a2 + 1) = v13 + 1;
LABEL_28:
          v14 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v14) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v14;
          *(this + 9) |= 4u;
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

    if (v7 == 1)
    {
      goto LABEL_24;
    }

LABEL_16:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::GalileoTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v6 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_20;
            }

            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v10 >= v9 || (v11 = *v10, v11 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v12 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 8) = v11;
              v12 = v10 + 1;
              *(a2 + 1) = v12;
            }

            v8 = *(this + 10) | 1;
            *(this + 10) = v8;
            if (v12 < v9 && *v12 == 18)
            {
              *(a2 + 1) = v12 + 1;
              goto LABEL_28;
            }
          }

          else
          {
            if (v6 != 2 || v7 != 2)
            {
              goto LABEL_20;
            }

            v8 = *(this + 10);
LABEL_28:
            *(this + 10) = v8 | 2;
            v14 = *(this + 1);
            if (!v14)
            {
              operator new();
            }

            v35 = 0;
            v15 = *(a2 + 1);
            if (v15 >= *(a2 + 2) || *v15 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v35))
              {
                return 0;
              }
            }

            else
            {
              v35 = *v15;
              *(a2 + 1) = v15 + 1;
            }

            v16 = *(a2 + 14);
            v17 = *(a2 + 15);
            *(a2 + 14) = v16 + 1;
            if (v16 >= v17)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CoreNavigation::CLP::LogEntry::PrivateData::LeapSecondInfo::MergePartialFromCodedStream(v14, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v18 = *(a2 + 14);
            v19 = __OFSUB__(v18, 1);
            v20 = v18 - 1;
            if (v20 < 0 == v19)
            {
              *(a2 + 14) = v20;
            }

            v21 = *(a2 + 1);
            if (v21 < *(a2 + 2) && *v21 == 26)
            {
              *(a2 + 1) = v21 + 1;
              goto LABEL_42;
            }
          }
        }

        if (v6 != 3)
        {
          break;
        }

        if (v7 != 2)
        {
          goto LABEL_20;
        }

LABEL_42:
        *(this + 10) |= 4u;
        v22 = *(this + 2);
        if (!v22)
        {
          operator new();
        }

        v36 = 0;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
          {
            return 0;
          }
        }

        else
        {
          v36 = *v23;
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
        if (!CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v26 = *(a2 + 14);
        v19 = __OFSUB__(v26, 1);
        v27 = v26 - 1;
        if (v27 < 0 == v19)
        {
          *(a2 + 14) = v27;
        }

        v28 = *(a2 + 1);
        if (v28 < *(a2 + 2) && *v28 == 34)
        {
          *(a2 + 1) = v28 + 1;
          goto LABEL_56;
        }
      }

      if (v6 != 4 || v7 != 2)
      {
        break;
      }

LABEL_56:
      *(this + 10) |= 8u;
      v29 = *(this + 3);
      if (!v29)
      {
        operator new();
      }

      v37 = 0;
      v30 = *(a2 + 1);
      if (v30 >= *(a2 + 2) || *v30 < 0)
      {
        if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v37))
        {
          return 0;
        }
      }

      else
      {
        v37 = *v30;
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
      if (!CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v29, a2) || *(a2 + 36) != 1)
      {
        return 0;
      }

      wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
      v33 = *(a2 + 14);
      v19 = __OFSUB__(v33, 1);
      v34 = v33 - 1;
      if (v34 < 0 == v19)
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

LABEL_20:
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

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::NavicTimeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      if ((TagFallback & 7) == 0)
      {
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_28;
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

    if (TagFallback >> 3 != 1 || v6 != 2)
    {
      goto LABEL_15;
    }

    *(this + 6) |= 1u;
    v7 = *(this + 1);
    if (!v7)
    {
      operator new();
    }

    v20 = 0;
    v8 = *(a2 + 1);
    if (v8 >= *(a2 + 2) || *v8 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v20))
      {
        return 0;
      }
    }

    else
    {
      v20 = *v8;
      *(a2 + 1) = v8 + 1;
    }

    v11 = *(a2 + 14);
    v12 = *(a2 + 15);
    *(a2 + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CoreNavigation::CLP::LogEntry::PrivateData::SubSecondConversion::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
    v13 = *(a2 + 14);
    v14 = __OFSUB__(v13, 1);
    v15 = v13 - 1;
    if (v15 < 0 == v14)
    {
      *(a2 + 14) = v15;
    }

    v16 = *(a2 + 1);
    v9 = *(a2 + 2);
    if (v16 < v9 && *v16 == 16)
    {
      v10 = v16 + 1;
      *(a2 + 1) = v10;
LABEL_28:
      if (v10 >= v9 || (v17 = *v10, v17 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
        if (!result)
        {
          return result;
        }

        v18 = *(a2 + 1);
        v9 = *(a2 + 2);
      }

      else
      {
        *(this + 4) = v17;
        v18 = v10 + 1;
        *(a2 + 1) = v18;
      }

      *(this + 6) |= 2u;
      if (v18 == v9 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      }
    }
  }
}

uint64_t CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters::MergePartialFromCodedStream(CoreNavigation::CLP::LogEntry::PrivateData::KlobucharModelParameters *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (TagFallback >> 3 > 4)
        {
          break;
        }

        if (TagFallback >> 3 > 2)
        {
          if (v6 != 3)
          {
            if (v6 != 4 || v7 != 5)
            {
              goto LABEL_37;
            }

            goto LABEL_53;
          }

          if (v7 != 5)
          {
            goto LABEL_37;
          }

LABEL_49:
          v20 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v20) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v20;
          *(this + 13) |= 4u;
          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 37)
          {
            *(a2 + 1) = v14 + 1;
LABEL_53:
            v20 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v20) & 1) == 0)
            {
              return 0;
            }

            *(this + 6) = v20;
            *(this + 13) |= 8u;
            v15 = *(a2 + 1);
            if (v15 < *(a2 + 2) && *v15 == 45)
            {
              *(a2 + 1) = v15 + 1;
LABEL_57:
              v20 = 0;
              if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v20) & 1) == 0)
              {
                return 0;
              }

              *(this + 7) = v20;
              *(this + 13) |= 0x10u;
              v16 = *(a2 + 1);
              if (v16 < *(a2 + 2) && *v16 == 53)
              {
                *(a2 + 1) = v16 + 1;
LABEL_61:
                v20 = 0;
                if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v20) & 1) == 0)
                {
                  return 0;
                }

                *(this + 8) = v20;
                *(this + 13) |= 0x20u;
                v17 = *(a2 + 1);
                if (v17 < *(a2 + 2) && *v17 == 61)
                {
                  *(a2 + 1) = v17 + 1;
LABEL_65:
                  v20 = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v20) & 1) == 0)
                  {
                    return 0;
                  }

                  *(this + 9) = v20;
                  *(this + 13) |= 0x40u;
                  v18 = *(a2 + 1);
                  if (v18 < *(a2 + 2) && *v18 == 69)
                  {
                    *(a2 + 1) = v18 + 1;
                    goto LABEL_69;
                  }
                }
              }
            }
          }
        }

        else
        {
          if (v6 != 1)
          {
            if (v6 != 2 || v7 != 5)
            {
              goto LABEL_37;
            }

            goto LABEL_45;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_37;
          }

          v9 = *(a2 + 1);
          v8 = *(a2 + 2);
          if (v9 >= v8 || (v10 = *v9, v10 < 0))
          {
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
            if (!result)
            {
              return result;
            }

            v11 = *(a2 + 1);
            v8 = *(a2 + 2);
          }

          else
          {
            *(this + 1) = v10;
            v11 = v9 + 1;
            *(a2 + 1) = v11;
          }

          *(this + 13) |= 1u;
          if (v11 < v8 && *v11 == 21)
          {
            *(a2 + 1) = v11 + 1;
LABEL_45:
            v20 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v20) & 1) == 0)
            {
              return 0;
            }

            *(this + 4) = v20;
            *(this + 13) |= 2u;
            v13 = *(a2 + 1);
            if (v13 < *(a2 + 2) && *v13 == 29)
            {
              *(a2 + 1) = v13 + 1;
              goto LABEL_49;
            }
          }
        }
      }

      if (TagFallback >> 3 <= 6)
      {
        break;
      }

      if (v6 == 7)
      {
        if (v7 != 5)
        {
          goto LABEL_37;
        }

        goto LABEL_65;
      }

      if (v6 == 8)
      {
        if (v7 != 5)
        {
          goto LABEL_37;
        }

LABEL_69:
        v20 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v20) & 1) == 0)
        {
          return 0;
        }

        *(this + 10) = v20;
        *(this + 13) |= 0x80u;
        v19 = *(a2 + 1);
        if (v19 < *(a2 + 2) && *v19 == 77)
        {
          *(a2 + 1) = v19 + 1;
          goto LABEL_73;
        }
      }

      else
      {
        if (v6 != 9 || v7 != 5)
        {
          goto LABEL_37;
        }

LABEL_73:
        v20 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v20) & 1) == 0)
        {
          return 0;
        }

        *(this + 11) = v20;
        *(this + 13) |= 0x100u;
        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5)
    {
      if (v7 != 5)
      {
        goto LABEL_37;
      }

      goto LABEL_57;
    }

    if (v6 == 6 && v7 == 5)
    {
      goto LABEL_61;
    }

LABEL_37:
    if (v7 == 4)
    {
      return 1;
    }
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t raven::ConvertProtobufToGnssMeasDataEvent(raven *this, const CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2, raven::GnssMeasurementDataEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v12 = *(this + 33);
  a9.i64[0] = *(this + 10);
  a10.i64[0] = 0;
  if ((v12 & 0x20) == 0)
  {
    *a9.i64 = 0.0;
  }

  if ((v12 & 0x40) != 0 && *a9.i64 > 0.0 && (v15 = *(this + 11), v15 > 0.0))
  {
    v205 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v205, 0, a9, a10);
    *(a2 + 8) = v205;
    *(a2 + 13) = v15;
  }

  else
  {
    if ((v12 & 1) == 0)
    {
      goto LABEL_8;
    }

    v13 = *(this + 1);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
    }

    if ((*(v13 + 36) & 4) == 0)
    {
LABEL_8:
      LOWORD(v205) = 12;
      v221[0] = 3;
      cnprint::CNPrinter::Print(&v205, v221, "MRCC mach continuous time not present", a4, a5, a6, a7, a8, v198);
      return 0;
    }

    v22 = *(this + 1);
    if (!v22)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(this);
      v22 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 8);
    }

    a9.i64[0] = *(v22 + 24);
    v205 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v205, 0, a9, a10);
    *(a2 + 8) = v205;
    *(a2 + 13) = 0;
  }

  v202 = this;
  if ((*(this + 132) & 2) != 0)
  {
    v23 = *(this + 2);
    if (!v23)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
      v23 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 16);
    }

    if ((*(v23 + 44) & 1) == 0)
    {
      goto LABEL_48;
    }

    v24 = *(v23 + 8);
    if (!v24)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
      v24 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8);
    }

    v25 = *(v24 + 44);
    if (v25)
    {
      *(a2 + 14) = *(v24 + 8);
    }

    if ((v25 & 2) == 0)
    {
      goto LABEL_32;
    }

    v26 = *(v24 + 16);
    if (!v26)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
      v26 = *(CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ + 16);
    }

    v27 = v26[8];
    if ((v27 & 4) != 0)
    {
      *(a2 + 32) = v26[4];
      if ((v27 & 2) == 0)
      {
LABEL_29:
        if ((v27 & 8) == 0)
        {
          goto LABEL_30;
        }

LABEL_443:
        *(a2 + 33) = v26[5];
        if (v27)
        {
LABEL_31:
          *(a2 + 30) = v26[2];
        }

LABEL_32:
        if ((*(v24 + 44) & 4) != 0)
        {
          v28 = *(v24 + 24);
          if (!v28)
          {
            CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
            v28 = *(CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ + 24);
          }

          v29 = *(v28 + 52);
          if (v29)
          {
            *(a2 + 17) = *(v28 + 8);
          }

          if ((v29 & 2) != 0)
          {
            *(a2 + 18) = *(v28 + 16);
          }
        }

        if ((*(v24 + 44) & 8) == 0)
        {
          goto LABEL_48;
        }

        v30 = *(v24 + 32);
        if (!v30)
        {
          CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
          v30 = *(CoreNavigation::CLP::LogEntry::PrivateData::Clock::default_instance_ + 32);
        }

        v31 = *(v30 + 40);
        if ((v31 & 8) != 0)
        {
          *(a2 + 21) = *(v30 + 24);
          if ((v31 & 1) == 0)
          {
LABEL_44:
            if ((v31 & 0x10) == 0)
            {
              goto LABEL_45;
            }

            goto LABEL_447;
          }
        }

        else if ((v31 & 1) == 0)
        {
          goto LABEL_44;
        }

        *(a2 + 19) = *(v30 + 8);
        if ((v31 & 0x10) == 0)
        {
LABEL_45:
          if ((v31 & 4) == 0)
          {
            goto LABEL_46;
          }

LABEL_448:
          *(a2 + 41) = *(v30 + 20);
          if ((v31 & 2) != 0)
          {
LABEL_47:
            *(a2 + 40) = *(v30 + 16);
          }

LABEL_48:
          v32 = *(v23 + 24);
          if (v32)
          {
            v33 = *(v23 + 16);
            v34 = 0x147AE147AE147AELL;
            v35 = (a2 + 184);
            v203 = vdupq_n_s64(0x7FF8000000000000uLL);
            v200 = &v33[v32];
            while (1)
            {
              v36 = *v33;
              LODWORD(v205) = 0;
              WORD2(v205) = 32512;
              DWORD2(v205) = 0;
              WORD6(v205) = 0;
              v206 = -1;
              __p[0] = -1;
              __p[1] = -1;
              v208 = 0x7FF8000000000000;
              v209 = NAN;
              v210 = 0;
              v211 = v203;
              LOBYTE(v212[0]) = 0;
              *(v212 + 8) = v203;
              BYTE8(v212[1]) = 0;
              v213 = v203;
              LOWORD(v214) = 1;
              BYTE8(v214) = 0;
              LOBYTE(v215) = 0;
              BYTE8(v215) = 0;
              v216[0] = 0;
              *&v216[8] = v203;
              v217[0] = 1;
              *&v217[8] = 0;
              *&v217[16] = 2143289344;
              *&v217[20] = 0;
              v37 = *(v36 + 112);
              if (v37)
              {
                v38 = *(v36 + 8);
                if (!v38)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
                  v38 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8);
                }

                v16 = raven::ConvertProtobufToGnssId(v38, &v205);
                if (!v16)
                {
LABEL_439:
                  v197 = *&v217[8];
                  *&v217[8] = 0;
                  if (v197)
                  {
                    MEMORY[0x1D387ECA0](v197, 0x1000C4041240993);
                  }

                  return 0;
                }

                v37 = *(v36 + 112);
              }

              if ((v37 & 2) != 0)
              {
                v40 = *(v36 + 16);
                if (!v40)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
                  v40 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 16);
                }

                v41 = *(v40 + 96);
                if (v41)
                {
                  *v221 = *(v40 + 88);
                  v16 = raven::ConvertProtobufToGnssBand(v221, &v205 + 8);
                  v41 = *(v40 + 96);
                }

                if ((v41 & 2) != 0)
                {
                  v55 = *(v40 + 8);
                  if (!v55)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
                    v55 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 8);
                  }

                  v56 = *(v55 + 16);
                  if ((v56 & 2) != 0)
                  {
                    BYTE10(v205) = *(v55 + 9);
                    if ((v56 & 4) != 0)
                    {
                      goto LABEL_171;
                    }

LABEL_122:
                    if ((v56 & 1) == 0)
                    {
                      goto LABEL_123;
                    }

LABEL_172:
                    BYTE9(v205) = *(v55 + 8);
                    if ((v56 & 8) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  else
                  {
                    if ((v56 & 4) == 0)
                    {
                      goto LABEL_122;
                    }

LABEL_171:
                    BYTE11(v205) = *(v55 + 10);
                    if (v56)
                    {
                      goto LABEL_172;
                    }

LABEL_123:
                    if ((v56 & 8) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  BYTE12(v205) = *(v55 + 11);
                  goto LABEL_56;
                }

                if ((v41 & 4) != 0)
                {
                  goto LABEL_439;
                }

                if ((v41 & 8) != 0)
                {
                  v77 = *(v40 + 24);
                  if (!v77)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
                    v77 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 24);
                  }

                  v78 = *(v77 + 16);
                  if ((v78 & 4) != 0)
                  {
                    BYTE11(v205) = *(v77 + 10);
                    if ((v78 & 2) == 0)
                    {
                      goto LABEL_178;
                    }
                  }

                  else if ((v78 & 2) == 0)
                  {
LABEL_178:
                    if ((v78 & 8) == 0)
                    {
                      goto LABEL_192;
                    }

LABEL_191:
                    BYTE12(v205) = *(v77 + 11);
                    goto LABEL_192;
                  }

                  BYTE10(v205) = *(v77 + 9);
                  if ((v78 & 8) == 0)
                  {
                    goto LABEL_192;
                  }

                  goto LABEL_191;
                }

                if ((v41 & 0x10) != 0)
                {
                  v79 = *(v40 + 32);
                  if (!v79)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
                    v79 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 32);
                  }

                  v80 = *(v79 + 20);
                  if (v80)
                  {
                    BYTE9(v205) = *(v79 + 8);
                    if ((v80 & 4) != 0)
                    {
                      goto LABEL_204;
                    }

LABEL_185:
                    if ((v80 & 8) == 0)
                    {
                      goto LABEL_186;
                    }

LABEL_205:
                    BYTE12(v205) = *(v79 + 11);
                    if ((v80 & 2) != 0)
                    {
                      goto LABEL_206;
                    }

LABEL_187:
                    if ((v80 & 0x10) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  else
                  {
                    if ((v80 & 4) == 0)
                    {
                      goto LABEL_185;
                    }

LABEL_204:
                    BYTE11(v205) = *(v79 + 10);
                    if ((v80 & 8) != 0)
                    {
                      goto LABEL_205;
                    }

LABEL_186:
                    if ((v80 & 2) == 0)
                    {
                      goto LABEL_187;
                    }

LABEL_206:
                    BYTE10(v205) = *(v79 + 9);
                    if ((v80 & 0x10) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  BYTE13(v205) = *(v79 + 12);
                  goto LABEL_56;
                }

                if ((v41 & 0x20) != 0)
                {
                  if (BYTE8(v205) == 5)
                  {
                    v85 = *(v40 + 40);
                    if (!v85)
                    {
                      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
                      v85 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 40);
                    }

                    v86 = *(v85 + 16);
                    if (v86)
                    {
                      BYTE9(v205) = *(v85 + 8);
                      if ((v86 & 8) == 0)
                      {
                        goto LABEL_219;
                      }
                    }

                    else if ((v86 & 8) == 0)
                    {
LABEL_219:
                      if ((v86 & 4) == 0)
                      {
                        goto LABEL_56;
                      }

                      goto LABEL_233;
                    }

                    BYTE11(v205) = *(v85 + 11);
                    if ((v86 & 4) == 0)
                    {
                      goto LABEL_56;
                    }

LABEL_233:
                    v87 = *(v85 + 10);
LABEL_234:
                    BYTE10(v205) = v87;
                    goto LABEL_56;
                  }

                  if (BYTE8(v205) != 4)
                  {
                    goto LABEL_439;
                  }

                  v81 = *(v40 + 40);
                  if (!v81)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
                    v81 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 40);
                  }

                  v82 = *(v81 + 16);
                  if ((v82 & 2) != 0)
                  {
                    BYTE10(v205) = *(v81 + 9);
                    if (v82)
                    {
                      goto LABEL_236;
                    }

LABEL_200:
                    if ((v82 & 8) == 0)
                    {
                      goto LABEL_201;
                    }

LABEL_237:
                    BYTE12(v205) = *(v81 + 11);
                    if ((v82 & 4) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  else
                  {
                    if ((v82 & 1) == 0)
                    {
                      goto LABEL_200;
                    }

LABEL_236:
                    BYTE9(v205) = *(v81 + 8);
                    if ((v82 & 8) != 0)
                    {
                      goto LABEL_237;
                    }

LABEL_201:
                    if ((v82 & 4) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  BYTE11(v205) = *(v81 + 10);
                  goto LABEL_56;
                }

                if ((v41 & 0x40) != 0)
                {
                  v83 = *(v40 + 48);
                  if (!v83)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
                    v83 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 48);
                  }

                  v84 = *(v83 + 16);
                  if ((v84 & 4) != 0)
                  {
                    BYTE11(v205) = *(v83 + 10);
                    if ((v84 & 8) != 0)
                    {
                      goto LABEL_228;
                    }

LABEL_212:
                    if ((v84 & 1) == 0)
                    {
                      goto LABEL_213;
                    }

LABEL_229:
                    BYTE9(v205) = *(v83 + 8);
                    if ((v84 & 2) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  else
                  {
                    if ((v84 & 8) == 0)
                    {
                      goto LABEL_212;
                    }

LABEL_228:
                    BYTE12(v205) = *(v83 + 11);
                    if (v84)
                    {
                      goto LABEL_229;
                    }

LABEL_213:
                    if ((v84 & 2) == 0)
                    {
                      goto LABEL_56;
                    }
                  }

                  v87 = *(v83 + 9);
                  goto LABEL_234;
                }

                if ((v41 & 0x80) != 0)
                {
                  v77 = *(v40 + 56);
                  if (!v77)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
                    v77 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 56);
                  }

                  v78 = *(v77 + 16);
                  if ((v78 & 8) != 0)
                  {
                    BYTE12(v205) = *(v77 + 11);
                    if ((v78 & 4) != 0)
                    {
                      goto LABEL_243;
                    }

LABEL_225:
                    if ((v78 & 2) != 0)
                    {
LABEL_244:
                      BYTE10(v205) = *(v77 + 9);
                    }
                  }

                  else
                  {
                    if ((v78 & 4) == 0)
                    {
                      goto LABEL_225;
                    }

LABEL_243:
                    BYTE11(v205) = *(v77 + 10);
                    if ((v78 & 2) != 0)
                    {
                      goto LABEL_244;
                    }
                  }

LABEL_192:
                  if (v78)
                  {
                    BYTE9(v205) = *(v77 + 8);
                  }

                  goto LABEL_56;
                }

                if ((v41 & 0x100) != 0)
                {
                  v88 = *(v40 + 64);
                  if (!v88)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
                    v88 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 64);
                  }

                  v16 = sub_1D0C31EE8(v88, &v205 + 9);
                }

                else
                {
                  if ((v41 & 0x200) != 0)
                  {
                    v77 = *(v40 + 72);
                    if (!v77)
                    {
                      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
                      v77 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 72);
                    }

                    v78 = *(v77 + 16);
                    if ((v78 & 2) != 0)
                    {
                      BYTE10(v205) = *(v77 + 9);
                    }

                    if ((v78 & 4) != 0)
                    {
                      BYTE11(v205) = *(v77 + 10);
                    }

                    goto LABEL_192;
                  }

                  if ((v41 & 0x400) == 0)
                  {
                    goto LABEL_439;
                  }

                  v42 = *(v40 + 80);
                  if (!v42)
                  {
                    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
                    v42 = *(CoreNavigation::CLP::LogEntry::PrivateData::SyncState::default_instance_ + 80);
                  }

                  v16 = sub_1D0DEA0B0(v42, &v205 + 9);
                }
              }

LABEL_56:
              v39 = *(v36 + 112);
              if ((v39 & 4) != 0)
              {
                v206 = *(v36 + 24);
                if ((v39 & 8) == 0)
                {
LABEL_58:
                  if ((v39 & 0x10) == 0)
                  {
                    goto LABEL_59;
                  }

                  goto LABEL_80;
                }
              }

              else if ((v39 & 8) == 0)
              {
                goto LABEL_58;
              }

              __p[0] = *(v36 + 32);
              if ((v39 & 0x10) == 0)
              {
LABEL_59:
                if ((v39 & 0x20) == 0)
                {
                  goto LABEL_91;
                }

                goto LABEL_81;
              }

LABEL_80:
              __p[1] = *(v36 + 40);
              if ((v39 & 0x20) == 0)
              {
                goto LABEL_91;
              }

LABEL_81:
              v43 = *(v36 + 48);
              if (!v43)
              {
                CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
                v43 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 48);
              }

              v44 = *(v43 + 32);
              if (v44)
              {
                v208 = *(v43 + 8);
              }

              if ((v44 & 2) != 0)
              {
                v45 = *(v43 + 16);
                if (v45 < 1.17549435e-38 || v45 > 3.40282347e38)
                {
                  goto LABEL_439;
                }

                v46 = v45;
                v209 = v46;
              }

              if ((v44 & 4) != 0)
              {
                v210 = *(v43 + 24);
              }

LABEL_91:
              if ((*(v36 + 112) & 0x40) != 0)
              {
                v47 = *(v36 + 56);
                if (!v47)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
                  v47 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 56);
                }

                v48 = *(v47 + 32);
                if ((~v48 & 3) != 0)
                {
                  goto LABEL_439;
                }

                v211 = *(v47 + 8);
                if ((v48 & 4) != 0)
                {
                  LOBYTE(v212[0]) = *(v47 + 24);
                }
              }

              if ((*(v36 + 113) & 8) != 0)
              {
                v49 = *(v36 + 88);
                if (!v49)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
                  v49 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 88);
                }

                v50 = *(v49 + 32);
                if ((~v50 & 3) != 0)
                {
                  goto LABEL_439;
                }

                *(v212 + 8) = *(v49 + 8);
                if ((v50 & 4) != 0)
                {
                  BYTE8(v212[1]) = *(v49 + 24);
                }
              }

              if ((*(v36 + 113) & 0x20) != 0)
              {
                v51 = *(v36 + 96);
                if (!v51)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
                  v51 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 96);
                }

                v52 = *(v51 + 32);
                if ((~v52 & 7) != 0)
                {
                  goto LABEL_439;
                }

                v213 = *(v51 + 8);
                LOBYTE(v214) = *(v51 + 24);
                if ((v52 & 8) != 0)
                {
                  BYTE1(v214) = *(v51 + 25);
                }
              }

              if ((*(v36 + 112) & 0x80) != 0)
              {
                v53 = *(v36 + 64);
                if (!v53)
                {
                  CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
                  v53 = *(CoreNavigation::CLP::LogEntry::PrivateData::Measurement::default_instance_ + 64);
                }

                v54 = *(v53 + 48);
                if ((v54 & 0x10) != 0)
                {
                  v217[0] = *(v53 + 40);
                  if ((v54 & 2) != 0)
                  {
                    goto LABEL_126;
                  }

LABEL_114:
                  if ((v54 & 1) == 0)
                  {
                    goto LABEL_115;
                  }

LABEL_127:
                  *(&v214 + 1) = *(v53 + 8);
                  LOBYTE(v215) = 1;
                  v54 = *(v53 + 48);
                  if ((v54 & 4) != 0)
                  {
                    goto LABEL_128;
                  }

LABEL_116:
                  if ((v54 & 8) == 0)
                  {
                    goto LABEL_131;
                  }
                }

                else
                {
                  if ((v54 & 2) == 0)
                  {
                    goto LABEL_114;
                  }

LABEL_126:
                  *(&v215 + 1) = *(v53 + 16);
                  v216[0] = 1;
                  v54 = *(v53 + 48);
                  if (v54)
                  {
                    goto LABEL_127;
                  }

LABEL_115:
                  if ((v54 & 4) == 0)
                  {
                    goto LABEL_116;
                  }

LABEL_128:
                  *&v216[8] = *(v53 + 24);
                  if ((v54 & 8) == 0)
                  {
                    goto LABEL_131;
                  }
                }

                if (*(v53 + 32) < 1.0e10)
                {
                  *&v216[16] = *(v53 + 32);
                }
              }

LABEL_131:
              if (*(v36 + 113))
              {
                operator new();
              }

              v57 = *(v36 + 112);
              if ((v57 & 0x200) != 0)
              {
                *&v217[16] = *(v36 + 80);
                if ((v57 & 0x400) == 0)
                {
LABEL_135:
                  if ((v57 & 0x1000) == 0)
                  {
                    goto LABEL_136;
                  }

                  goto LABEL_144;
                }
              }

              else if ((v57 & 0x400) == 0)
              {
                goto LABEL_135;
              }

              v59 = *(v36 + 84);
              if (v59 == 4)
              {
                v60 = 2;
              }

              else
              {
                v60 = v59 == 3;
              }

              v217[20] = v60;
              if ((v57 & 0x1000) == 0)
              {
LABEL_136:
                v58 = (v211.i64[1] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && *&v211.i64[1] < 10000.0 || (LODWORD(v209) & 0x7FFFFFFFu) <= 0x7F7FFFFF && v209 < 90000.0;
                goto LABEL_145;
              }

LABEL_144:
              v58 = *(v36 + 104);
LABEL_145:
              v217[21] = v58;
              v62 = *(a2 + 24);
              v61 = *(a2 + 25);
              if (v62 >= v61)
              {
                v64 = 0x8F5C28F5C28F5C29 * ((v62 - *v35) >> 3);
                v65 = v64 + 1;
                if (v64 + 1 > v34)
                {
                  sub_1D0C5663C();
                }

                v66 = 0x8F5C28F5C28F5C29 * ((v61 - *v35) >> 3);
                if (2 * v66 > v65)
                {
                  v65 = 2 * v66;
                }

                if (v66 >= 0xA3D70A3D70A3D7)
                {
                  v67 = v34;
                }

                else
                {
                  v67 = v65;
                }

                v222 = a2 + 184;
                if (v67)
                {
                  sub_1D0C31C98(a2 + 184, v67);
                }

                v68 = v34;
                *v221 = 0;
                *&v221[8] = 200 * v64;
                *&v221[16] = 200 * v64;
                *&v221[24] = 0;
                sub_1D0C31D68(200 * v64, &v205);
                *&v221[16] += 200;
                v69 = *(a2 + 23);
                v70 = *(a2 + 24);
                v223[0] = a2 + 184;
                v223[1] = &v225;
                v223[2] = &v226;
                v224 = 0;
                v71 = v69;
                v72 = *&v221[8] + v69 - v70;
                v225 = v72;
                v226 = v72;
                v73 = v72;
                if (v69 == v70)
                {
                  v224 = 1;
                }

                else
                {
                  do
                  {
                    sub_1D0C31D68(v73, v71);
                    v71 += 200;
                    v73 = v226 + 200;
                    v226 += 200;
                  }

                  while (v71 != v70);
                  v224 = 1;
                  do
                  {
                    v74 = *(v69 + 184);
                    *(v69 + 184) = 0;
                    if (v74)
                    {
                      MEMORY[0x1D387ECA0](v74, 0x1000C4041240993);
                    }

                    v69 += 200;
                  }

                  while (v69 != v70);
                }

                sub_1D0C31D30(v223);
                v75 = *(a2 + 23);
                *(a2 + 23) = v72;
                v76 = *(a2 + 25);
                v199 = *&v221[16];
                *(a2 + 12) = *&v221[16];
                *&v221[16] = v75;
                *&v221[24] = v76;
                *v221 = v75;
                *&v221[8] = v75;
                sub_1D0C31E64(v221);
                v63 = v199;
                v34 = v68;
              }

              else
              {
                sub_1D0C31D68(*(a2 + 24), &v205);
                v63 = v62 + 200;
                *(a2 + 24) = v62 + 200;
              }

              *(a2 + 24) = v63;
              v16 = *&v217[8];
              *&v217[8] = 0;
              if (v16)
              {
                v16 = MEMORY[0x1D387ECA0](v16, 0x1000C4041240993);
              }

              if (++v33 == v200)
              {
                goto LABEL_251;
              }
            }
          }

          goto LABEL_251;
        }

LABEL_447:
        *(a2 + 44) = *(v30 + 32);
        if ((v31 & 4) == 0)
        {
LABEL_46:
          if ((v31 & 2) == 0)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        goto LABEL_448;
      }
    }

    else if ((v27 & 2) == 0)
    {
      goto LABEL_29;
    }

    *(a2 + 31) = v26[3];
    if ((v27 & 8) == 0)
    {
LABEL_30:
      if ((v27 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_443;
  }

LABEL_251:
  if ((*(v202 + 132) & 0x80) != 0)
  {
    operator new();
  }

  v89 = *(v202 + 8);
  if (!v89)
  {
LABEL_407:
    v178 = (a2 + 232);
    v177 = *(a2 + 29);
    v179 = *(v202 + 14);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a2 + 31) - v177) >> 3) < v179)
    {
      if ((v179 & 0x80000000) == 0)
      {
        v180 = *(a2 + 30) - v177;
        sub_1D0C32158(a2 + 232, v179);
      }

LABEL_457:
      sub_1D0C5663C();
    }

    v181 = *(v202 + 14);
    if (v181)
    {
      v182 = *(v202 + 6);
      v183 = *(a2 + 30);
      v184 = 8 * v181;
      do
      {
        v185 = *v182;
        *v221 = *(*v182 + 16);
        v16 = raven::ConvertProtobufToGnssBand(v221, &v205);
        *(&v205 + 1) = *(v185 + 8);
        LODWORD(v206) = *(v185 + 20);
        v186 = *(a2 + 31);
        if (v183 >= v186)
        {
          v188 = 0xAAAAAAAAAAAAAAABLL * ((v183 - *v178) >> 3);
          v189 = v188 + 1;
          if (v188 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_457;
          }

          v190 = 0xAAAAAAAAAAAAAAABLL * ((v186 - *v178) >> 3);
          if (2 * v190 > v189)
          {
            v189 = 2 * v190;
          }

          if (v190 >= 0x555555555555555)
          {
            v191 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v191 = v189;
          }

          if (v191)
          {
            sub_1D0C32158(a2 + 232, v191);
          }

          v192 = 8 * ((v183 - *v178) >> 3);
          *v192 = v205;
          *(v192 + 16) = v206;
          v183 = 24 * v188 + 24;
          v193 = *(a2 + 29);
          v194 = *(a2 + 30) - v193;
          v195 = 24 * v188 - v194;
          memcpy((v192 - v194), v193, v194);
          v16 = *(a2 + 29);
          *(a2 + 29) = v195;
          *(a2 + 30) = v183;
          *(a2 + 31) = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          v187 = v205;
          *(v183 + 16) = v206;
          *v183 = v187;
          v183 += 24;
        }

        *(a2 + 30) = v183;
        ++v182;
        v184 -= 8;
      }

      while (v184);
    }

    if ((*(v202 + 132) & 0x10) != 0)
    {
      v196 = *(v202 + 9);
      if (!v196)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
        v196 = *(CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents::default_instance_ + 72);
      }

      if (*(v196 + 52))
      {
        operator new();
      }

      if ((*(v196 + 52) & 4) != 0)
      {
        operator new();
      }

      if ((*(v196 + 52) & 8) != 0)
      {
        operator new();
      }

      if ((*(v196 + 52) & 2) != 0)
      {
        operator new();
      }

      if ((*(v196 + 52) & 0x10) != 0)
      {
        operator new();
      }
    }

    return 1;
  }

  v90 = *(v202 + 3);
  v201 = &v90[v89];
  v204 = vdupq_n_s64(0x7FF8000000000000uLL);
  while (1)
  {
    v91 = *v90;
    LODWORD(v205) = 0;
    WORD2(v205) = 32512;
    *(&v205 + 1) = 0x7FF8000000000000;
    LOBYTE(v206) = 0;
    LOBYTE(__p[0]) = 0;
    LOBYTE(v209) = 0;
    v211.i8[0] = 0;
    v216[16] = 0;
    *v217 = v204;
    *&v217[16] = v204;
    *&v217[32] = 2143289344;
    *&v217[36] = 0;
    *&v217[44] = 0;
    v219 = 0;
    v218 = 0uLL;
    v220 = 0;
    v92 = *(v91 + 172);
    if (v92)
    {
      v93 = *(v91 + 8);
      if (!v93)
      {
        CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(0);
        v93 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 8);
      }

      v16 = raven::ConvertProtobufToGnssId(v93, &v205);
      if (!v16)
      {
        goto LABEL_451;
      }

      v92 = *(v91 + 172);
    }

    if ((v92 & 4) != 0)
    {
      v94 = *(v91 + 56) - 1;
      if (v94 > 5)
      {
        goto LABEL_451;
      }

      LOBYTE(v206) = 0x30404020100uLL >> (8 * v94);
    }

    v95 = *(v91 + 32);
    if (v95 < 1)
    {
      v97 = 0.0;
      if ((v92 & 2) == 0)
      {
        goto LABEL_451;
      }
    }

    else
    {
      if (LOBYTE(v209) == 1)
      {
        v16 = __p[0];
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      __p[1] = 0;
      v208 = 0;
      __p[0] = 0;
      LOBYTE(v209) = 1;
      v96 = *(v91 + 32);
      if (v96)
      {
        if ((v96 & 0x80000000) == 0)
        {
          sub_1D0C31F40(__p, v96);
        }

        sub_1D0C5663C();
      }

      v97 = *__p[0];
      v98 = (__p[1] - __p[0]) >> 5;
      if (v98 >= 2)
      {
        v99 = (__p[0] + 32);
        for (i = 1; i != v98; ++i)
        {
          v101 = *v99;
          v99 += 4;
          v97 = v97 + (v101 - v97) / i;
        }
      }

      v92 = *(v91 + 172);
      if ((v92 & 2) == 0)
      {
        goto LABEL_281;
      }
    }

    if ((*(v91 + 16) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      v97 = *(v91 + 16);
    }

    if (v95 <= 0 && (*(v91 + 16) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
    {
      goto LABEL_451;
    }

LABEL_281:
    *(&v205 + 1) = v97;
    if ((v92 & 0x8000) == 0)
    {
      goto LABEL_304;
    }

    v102 = *(v91 + 128);
    if (!v102)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(v16);
      v102 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 128);
    }

    v211 = v204;
    memset(v212, 0, sizeof(v212));
    v213 = 0u;
    v214 = 0u;
    v215 = 0u;
    *v216 = 0u;
    v216[16] = 1;
    v211 = *(v102 + 8);
    v103 = *(v102 + 32);
    if (v103 != 4 || *(v102 + 48) != 4 || *(v102 + 64) != 4)
    {
      break;
    }

    v104 = *(v102 + 24);
    v105 = v104[1];
    v212[0] = *v104;
    v212[1] = v105;
    v106 = *(v102 + 48);
    if (v106 <= 0)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v221);
      v106 = *(v102 + 48);
    }

    v107 = *(v102 + 40);
    v108 = *v107;
    if (v106 <= 1)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v221);
      v107 = *(v102 + 40);
      v106 = *(v102 + 48);
    }

    v109 = v107[1];
    if (v106 <= 2)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v221);
      v106 = *(v102 + 48);
      v107 = *(v102 + 40);
    }

    v110 = v107[2];
    if (v106 <= 3)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v221);
      v107 = *(v102 + 40);
    }

    v111 = v107[3];
    v213.i64[0] = v108;
    v213.i64[1] = v109;
    *&v214 = v110;
    *(&v214 + 1) = v111;
    v112 = *(v102 + 64);
    if (v112 <= 0)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v221);
      v112 = *(v102 + 64);
    }

    v113 = *(v102 + 56);
    v114 = *v113;
    if (v112 <= 1)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v221);
      v113 = *(v102 + 56);
      v112 = *(v102 + 64);
    }

    v115 = v113[1];
    if (v112 <= 2)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v221);
      v112 = *(v102 + 64);
      v113 = *(v102 + 56);
    }

    v116 = v113[2];
    if (v112 <= 3)
    {
      wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
      wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
      wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
      wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v221);
      v113 = *(v102 + 56);
    }

    v117 = v113[3];
    *&v215 = v114;
    *(&v215 + 1) = v115;
    *v216 = v116;
    *&v216[8] = v117;
    v92 = *(v91 + 172);
LABEL_304:
    *v217 = *(v91 + 48);
    *&v217[8] = *(v91 + 64);
    if ((v92 & 0x200000) == 0 || (v118 = *(v91 + 152), (v118 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000))
    {
      v118 = 0;
    }

    *&v217[24] = v118;
    v119 = *(v91 + 60);
    if (COERCE__INT64(fabs(v119)) >= 0x7FF0000000000000)
    {
      *v221 = 12;
      LOBYTE(v223[0]) = 4;
      cnprint::CNPrinter::Print(v221, v223, "NaN range_accuracy_position_m", v17, v18, v19, v20, v21, v198);
      v119 = 0.0;
    }

    v120 = *(v91 + 80);
    if (COERCE__INT64(fabs(v120)) >= 0x7FF0000000000000)
    {
      *v221 = 12;
      LOBYTE(v223[0]) = 4;
      cnprint::CNPrinter::Print(v221, v223, "NaN range_accuracy_clock_ns", v17, v18, v19, v20, v21, v198);
      v120 = 0.0;
    }

    v121 = hypot(v119, v120 * 0.299792458);
    *&v217[32] = v121;
    v122 = *(v91 + 172);
    if ((v122 & 0x200) != 0)
    {
      v123 = *(v91 + 84) - 1;
      if (v123 > 3)
      {
        goto LABEL_451;
      }

      v217[36] = 0x2010000u >> (8 * v123);
    }

    if ((v122 & 0x10000) != 0)
    {
      v124 = *(v91 + 136) - 1;
      if (v124 > 3)
      {
        goto LABEL_451;
      }

      v217[37] = 0x2010000u >> (8 * v124);
    }

    if ((v122 & 0x400) != 0)
    {
      v125 = *(v91 + 88) - 1;
      if (v125 > 3)
      {
        goto LABEL_451;
      }

      v217[38] = 0x2010000u >> (8 * v125);
    }

    if ((v122 & 0x20000) != 0)
    {
      v126 = *(v91 + 140) - 1;
      if (v126 > 3)
      {
        goto LABEL_451;
      }

      v217[39] = 0x2010000u >> (8 * v126);
    }

    if ((v122 & 0x800) != 0)
    {
      v127 = *(v91 + 92) - 1;
      if (v127 > 3)
      {
        goto LABEL_451;
      }

      v217[40] = 0x2010000u >> (8 * v127);
    }

    if ((v122 & 0x40000) != 0)
    {
      v128 = *(v91 + 144) - 1;
      if (v128 > 3)
      {
        goto LABEL_451;
      }

      v217[41] = 0x2010000u >> (8 * v128);
    }

    if ((v122 & 0x1000) != 0)
    {
      v129 = *(v91 + 96) - 1;
      if (v129 > 3)
      {
        goto LABEL_451;
      }

      v217[42] = 0x2010000u >> (8 * v129);
    }

    if ((v122 & 0x80000) != 0)
    {
      v130 = *(v91 + 148) - 1;
      if (v130 > 3)
      {
        goto LABEL_451;
      }

      v217[43] = 0x2010000u >> (8 * v130);
    }

    if ((v122 & 0x2000) != 0)
    {
      v131 = *(v91 + 100) - 1;
      if (v131 > 3)
      {
        goto LABEL_451;
      }

      v217[44] = 0x2010000u >> (8 * v131);
    }

    if ((v122 & 0x100000) != 0)
    {
      v132 = *(v91 + 160) - 1;
      if (v132 > 3)
      {
        goto LABEL_451;
      }

      v217[45] = 0x2010000u >> (8 * v132);
    }

    v133 = *(v91 + 112);
    if (0xCCCCCCCCCCCCCCCDLL * ((v219 - v218) >> 3) < v133)
    {
      if ((v133 & 0x80000000) == 0)
      {
        sub_1D0C31F88(&v218, v133);
      }

      sub_1D0C5663C();
    }

    v134 = *(v91 + 112);
    if (v134)
    {
      v135 = *(v91 + 104);
      v136 = 8 * v134;
      do
      {
        v137 = *v135;
        v221[0] = 0;
        *&v221[8] = v204;
        *&v221[24] = 0x7FF8000000000000;
        LOBYTE(v222) = 0;
        v138 = *(v137 + 44);
        if (v138)
        {
          LODWORD(v223[0]) = *(v137 + 24);
          v16 = raven::ConvertProtobufToGnssBand(v223, v221);
          v139 = *(v137 + 8);
          if (v139 >= 0 && ((v139 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v139 - 1) <= 0xFFFFFFFFFFFFELL)
          {
            *&v221[8] = *(v137 + 8);
          }

          v142 = *(v137 + 16);
          if (v142 >= 0 && ((v142 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v142 - 1) <= 0xFFFFFFFFFFFFELL)
          {
            *&v221[16] = *(v137 + 16);
          }

          *&v221[24] = *(v137 + 32);
          if ((v138 & 0x10) != 0)
          {
            v145 = *(v137 + 28);
            if (v145 == 1)
            {
              v146 = 1;
            }

            else
            {
              v146 = 2 * (v145 == 2);
            }

            LOBYTE(v222) = v146;
          }
        }

        v147 = *(&v218 + 1);
        if (*(&v218 + 1) >= v219)
        {
          v149 = 0xCCCCCCCCCCCCCCCDLL * ((*(&v218 + 1) - v218) >> 3);
          v150 = v149 + 1;
          if (v149 + 1 > 0x666666666666666)
          {
            sub_1D0C5663C();
          }

          if (0x999999999999999ALL * ((v219 - v218) >> 3) > v150)
          {
            v150 = 0x999999999999999ALL * ((v219 - v218) >> 3);
          }

          if (0xCCCCCCCCCCCCCCCDLL * ((v219 - v218) >> 3) >= 0x333333333333333)
          {
            v151 = 0x666666666666666;
          }

          else
          {
            v151 = v150;
          }

          if (v151)
          {
            sub_1D0C31F88(&v218, v151);
          }

          v152 = 8 * ((*(&v218 + 1) - v218) >> 3);
          *v152 = *v221;
          *(v152 + 16) = *&v221[16];
          *(v152 + 32) = v222;
          v148 = 40 * v149 + 40;
          v153 = 40 * v149 - (*(&v218 + 1) - v218);
          memcpy((v152 - (*(&v218 + 1) - v218)), v218, *(&v218 + 1) - v218);
          v16 = v218;
          *&v218 = v153;
          *(&v218 + 1) = v148;
          v219 = 0;
          if (v16)
          {
            operator delete(v16);
          }
        }

        else
        {
          **(&v218 + 1) = *v221;
          *(v147 + 16) = *&v221[16];
          *(v147 + 32) = v222;
          v148 = v147 + 40;
        }

        *(&v218 + 1) = v148;
        ++v135;
        v136 -= 8;
      }

      while (v136);
    }

    v154 = *(a2 + 27);
    v155 = *(a2 + 28);
    if (v154 >= v155)
    {
      v165 = *(a2 + 26);
      v166 = (v154 - v165) >> 8;
      v167 = v166 + 1;
      if ((v166 + 1) >> 56)
      {
        sub_1D0C5663C();
      }

      v168 = v155 - v165;
      if (v168 >> 7 > v167)
      {
        v167 = v168 >> 7;
      }

      if (v168 >= 0x7FFFFFFFFFFFFF00)
      {
        v169 = 0xFFFFFFFFFFFFFFLL;
      }

      else
      {
        v169 = v167;
      }

      if (v169)
      {
        sub_1D0C31FE0(a2 + 208, v169);
      }

      v170 = v166 << 8;
      sub_1D0C32028(v166 << 8, &v205);
      v171 = *(a2 + 26);
      v172 = *(a2 + 27);
      v173 = ((v166 << 8) + v171 - v172);
      if (v172 != v171)
      {
        v174 = v90;
        v175 = v170 + v171 - v172;
        v176 = *(a2 + 26);
        do
        {
          sub_1D0C32028(v175, v176);
          v176 += 16;
          v175 += 256;
        }

        while (v176 != v172);
        v90 = v174;
        do
        {
          sub_1D0C320F4(v171);
          v171 += 16;
        }

        while (v171 != v172);
        v171 = *(a2 + 26);
      }

      *(a2 + 26) = v173;
      *(a2 + 27) = v170 + 256;
      *(a2 + 28) = 0;
      if (v171)
      {
        operator delete(v171);
      }

      v16 = v218;
      *(a2 + 27) = v170 + 256;
      if (v16)
      {
        *(&v218 + 1) = v16;
        operator delete(v16);
      }
    }

    else
    {
      v156 = v205;
      *(v154 + 16) = v206;
      *v154 = v156;
      *(v154 + 24) = 0;
      *(v154 + 48) = 0;
      if (LOBYTE(v209) == 1)
      {
        *(v154 + 24) = 0;
        *(v154 + 32) = 0;
        *(v154 + 40) = 0;
        *(v154 + 24) = *__p;
        *(v154 + 40) = v208;
        __p[0] = 0;
        __p[1] = 0;
        v208 = 0;
        *(v154 + 48) = 1;
      }

      v157 = v211;
      v158 = v212[0];
      v159 = v212[1];
      *(v154 + 104) = v213;
      *(v154 + 88) = v159;
      *(v154 + 72) = v158;
      *(v154 + 56) = v157;
      v160 = v214;
      v161 = v215;
      v162 = *v216;
      *(v154 + 168) = *&v216[16];
      *(v154 + 152) = v162;
      *(v154 + 136) = v161;
      *(v154 + 120) = v160;
      v163 = *v217;
      v164 = *&v217[16];
      *(v154 + 206) = *&v217[30];
      *(v154 + 176) = v163;
      *(v154 + 192) = v164;
      *(v154 + 224) = 0;
      *(v154 + 232) = 0;
      *(v154 + 240) = 0;
      *(v154 + 224) = v218;
      *(v154 + 240) = v219;
      v218 = 0uLL;
      v219 = 0;
      *(v154 + 248) = v220;
      *(a2 + 27) = v154 + 256;
    }

    if (LOBYTE(v209) == 1)
    {
      v16 = __p[0];
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    if (++v90 == v201)
    {
      goto LABEL_407;
    }
  }

  *v221 = 12;
  LOBYTE(v223[0]) = 4;
  cnprint::CNPrinter::Print(v221, v223, "invalid position coefficient size,%d,%d,%d", v17, v18, v19, v20, v21, v103);
LABEL_451:
  if (v218)
  {
    *(&v218 + 1) = v218;
    operator delete(v218);
  }

  if (LOBYTE(v209) == 1 && __p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return 0;
}

void sub_1D0C3166C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage((v14 - 232));
  sub_1D0DEA16C(va);
  _Unwind_Resume(a1);
}

void raven::RavenSupervisor::RaiseEventsFrom(raven::RavenSupervisor *this, const CoreNavigation::CLP::LogEntry::PrivateData::MeasurementReportCallbackContents *a2, raven::GnssMeasurementDataEvent *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  v12 = 0uLL;
  v11 = &unk_1F4CEDFD0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0uLL;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = xmmword_1D0E87BD0;
  v22 = -1;
  v10.i64[0] = 0x3F0000003FLL;
  v10.i64[1] = 0x3F0000003FLL;
  v23 = vnegq_f32(v10);
  v24 = vdupq_n_s64(0x7FF8000000000000uLL);
  v25 = 0x8000000000000000;
  v26 = vneg_f32(0x3F0000003FLL);
  v27 = 0x7FF8000000000000;
  v28 = 2143289344;
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v33 = 0u;
  v32 = 0u;
  v31 = 0u;
  v30 = 0u;
  v29 = 0u;
  if (raven::ConvertProtobufToGnssMeasDataEvent(a2, &v11, a3, a4, a5, a6, a7, a8, 0, a10))
  {
    operator new();
  }

  raven::GnssMeasurementDataEvent::~GnssMeasurementDataEvent(&v11);
}

void sub_1D0C31A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v10 - 64);
  if (v12)
  {
    sub_1D0B7CAB8(v12);
  }

  sub_1D0B7CAB8(v9);
  raven::GnssMeasurementDataEvent::~GnssMeasurementDataEvent(&a9);
  _Unwind_Resume(a1);
}

uint64_t raven::ConvertProtobufToGnssId(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 16);
    if ((v4 - 1) > 0x3F || ((1 << (v4 - 1)) & 0x800000008000808BLL) == 0)
    {
      v4 = 0;
    }

    *a2 = v4;
  }

  if ((v3 & 2) == 0)
  {
    return 1;
  }

  v6 = *(a1 + 8);
  if (!v6)
  {
    CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(a1);
    v6 = *(CoreNavigation::CLP::LogEntry::PrivateData::SvId::default_instance_ + 8);
  }

  v7 = *(v6 + 44);
  if (v7)
  {
    v9 = *(v6 + 16);
    goto LABEL_24;
  }

  if ((v7 & 0x10) != 0)
  {
    v9 = *(v6 + 28);
    goto LABEL_24;
  }

  if ((v7 & 0x20) != 0)
  {
    v9 = *(v6 + 32);
    goto LABEL_24;
  }

  if ((v7 & 2) != 0)
  {
    v10 = *(v6 + 8);
    if (!v10)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(a1);
      v10 = *(CoreNavigation::CLP::LogEntry::PrivateData::ConstellationId::default_instance_ + 8);
    }

    v11 = *(v10 + 24);
    if (v11)
    {
      v12 = *(v10 + 16);
      if (v12 != v12)
      {
        return 0;
      }

      *(a2 + 5) = v12;
      v11 = *(v10 + 24);
    }

    if ((v11 & 2) == 0)
    {
      return 1;
    }

    v13 = *(v10 + 8);
    if (!v13)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(a1);
      v13 = *(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8);
    }

    if ((*(v13 + 20) & 1) == 0)
    {
      return 1;
    }

    v14 = *(v10 + 8);
    if (!v14)
    {
      CoreNavigation::CLP::LogEntry::PrivateData::protobuf_AddDesc_CoreNavigationCLPGnssMeasApi_2eproto(a1);
      v14 = *(CoreNavigation::CLP::LogEntry::PrivateData::GlonassId::default_instance_ + 8);
    }

    v9 = *(v14 + 8);
LABEL_24:
    if (v9 <= 0xFF)
    {
LABEL_26:
      *(a2 + 4) = v9;
      return 1;
    }

    return 0;
  }

  if ((v7 & 4) != 0)
  {
    v9 = *(v6 + 20);
    goto LABEL_24;
  }

  if ((v7 & 8) != 0)
  {
    v9 = *(v6 + 24);
    goto LABEL_24;
  }

  result = 0;
  if ((v7 & 0x40) != 0)
  {
    v9 = *(v6 + 36);
    if (v9 <= 0xFF)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t raven::ConvertProtobufToGnssBand(_DWORD *a1, _BYTE *a2)
{
  v2 = *a1 - 2;
  if (v2 > 0xA)
  {
    v3 = 0;
  }

  else
  {
    v3 = byte_1D0E9C950[v2];
  }

  *a2 = v3;
  return 1;
}

void sub_1D0C31C98(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x147AE147AE147AFLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0C31D30(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1D0DD048C(a1);
  }

  return a1;
}

uint64_t sub_1D0C31D68(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  *(result + 8) = v2;
  *(result + 16) = *(a2 + 16);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = *(a2 + 40);
  v3 = *(a2 + 56);
  *(result + 72) = *(a2 + 72);
  *(result + 56) = v3;
  v4 = *(a2 + 80);
  *(result + 96) = *(a2 + 96);
  *(result + 80) = v4;
  v5 = *(a2 + 104);
  *(result + 120) = *(a2 + 120);
  *(result + 104) = v5;
  v6 = *(a2 + 128);
  v7 = *(a2 + 144);
  v8 = *(a2 + 160);
  *(result + 176) = *(a2 + 176);
  *(result + 144) = v7;
  *(result + 160) = v8;
  *(result + 128) = v6;
  if (*(a2 + 184))
  {
    operator new();
  }

  *(result + 184) = 0;
  *(result + 192) = *(a2 + 192);
  *(result + 196) = *(a2 + 196);
  return result;
}

uint64_t sub_1D0C31E64(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 200;
    v4 = *(v2 - 16);
    *(v2 - 16) = 0;
    if (v4)
    {
      MEMORY[0x1D387ECA0](v4, 0x1000C4041240993);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 200;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1D0C31EE8(uint64_t result, _BYTE *a2)
{
  v2 = *(result + 24);
  if ((v2 & 0x200) != 0)
  {
    a2[4] = *(result + 17);
    if ((v2 & 0x10) == 0)
    {
LABEL_3:
      if ((v2 & 0x100) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v2 & 0x10) == 0)
  {
    goto LABEL_3;
  }

  a2[1] = *(result + 12);
  if ((v2 & 0x100) == 0)
  {
LABEL_4:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  a2[3] = *(result + 16);
  if ((v2 & 0x40) == 0)
  {
LABEL_5:
    if ((v2 & 2) == 0)
    {
      return result;
    }

LABEL_11:
    *a2 = *(result + 9);
    return result;
  }

LABEL_10:
  a2[2] = *(result + 14);
  if ((v2 & 2) != 0)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_1D0C31F40(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0C31F88(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

void sub_1D0C31FE0(uint64_t a1, unint64_t a2)
{
  if (!HIBYTE(a2))
  {
    operator new();
  }

  sub_1D0C54BE8();
}

__n128 sub_1D0C32028(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a1 = v2;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 5);
    *(a2 + 3) = 0;
    *(a2 + 4) = 0;
    *(a2 + 5) = 0;
    *(a1 + 48) = 1;
  }

  v3 = *(a2 + 56);
  v4 = *(a2 + 72);
  v5 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v5;
  *(a1 + 72) = v4;
  *(a1 + 56) = v3;
  v6 = *(a2 + 120);
  v7 = *(a2 + 136);
  v8 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 152) = v8;
  *(a1 + 136) = v7;
  *(a1 + 120) = v6;
  v9 = a2[11];
  v10 = a2[12];
  *(a1 + 206) = *(a2 + 206);
  *(a1 + 176) = v9;
  *(a1 + 192) = v10;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  result = a2[14];
  *(a1 + 224) = result;
  *(a1 + 240) = *(a2 + 30);
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  *(a2 + 30) = 0;
  *(a1 + 248) = *(a2 + 62);
  return result;
}

void sub_1D0C320F4(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (v2)
  {
    *(a1 + 232) = v2;
    operator delete(v2);
  }

  if (*(a1 + 48) == 1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      *(a1 + 32) = v3;

      operator delete(v3);
    }
  }
}

void sub_1D0C32158(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_1D0C54BE8();
}

uint64_t sub_1D0C321B0(uint64_t result, uint64_t a2)
{
  *result = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(result + 64) = *(a2 + 64);
  *(result + 32) = v3;
  *(result + 48) = v4;
  *(result + 16) = v2;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0;
  v5 = *(a2 + 72);
  v6 = *(a2 + 80);
  if (v6 != v5)
  {
    v7 = 0x8F5C28F5C28F5C29 * ((v6 - v5) >> 3);
    if (v7 < 0x147AE147AE147AFLL)
    {
      sub_1D0C31C98(result + 72, v7);
    }

    sub_1D0C5663C();
  }

  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  v8 = *(a2 + 96);
  v9 = *(a2 + 104);
  v10 = v9 - v8;
  if (v9 != v8)
  {
    if (!((v10 >> 8) >> 56))
    {
      sub_1D0C31FE0(result + 96, v10 >> 8);
    }

    sub_1D0C5663C();
  }

  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 136) = 0;
  v12 = *(a2 + 120);
  v11 = *(a2 + 128);
  if (v11 != v12)
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v12) >> 3);
    if (v13 < 0xAAAAAAAAAAAAAABLL)
    {
      sub_1D0C32158(result + 120, v13);
    }

    sub_1D0C5663C();
  }

  if (*(a2 + 144))
  {
    operator new();
  }

  *(result + 144) = 0;
  if (*(a2 + 152))
  {
    operator new();
  }

  *(result + 152) = 0;
  if (*(a2 + 160))
  {
    operator new();
  }

  *(result + 160) = 0;
  if (*(a2 + 168))
  {
    operator new();
  }

  *(result + 168) = 0;
  if (*(a2 + 176))
  {
    operator new();
  }

  *(result + 176) = 0;
  *(result + 184) = *(a2 + 184);
  v14 = *(a2 + 192);
  *(result + 192) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1D0C325CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = v3[21];
  v3[21] = 0;
  if (v6)
  {
    MEMORY[0x1D387ECA0](v6, 0x1000C4095D96C66);
  }

  v7 = v3[20];
  v3[20] = 0;
  if (v7)
  {
    MEMORY[0x1D387ECA0](v7, 0x1000C4095D96C66);
  }

  v8 = v3[19];
  v3[19] = 0;
  if (v8)
  {
    MEMORY[0x1D387ECA0](v8, 0x1000C40D315E998);
  }

  v9 = v3[18];
  v3[18] = 0;
  if (v9)
  {
    MEMORY[0x1D387ECA0](v9, 0x1000C4079AA8B5ELL);
  }

  v10 = *v4;
  if (*v4)
  {
    v3[16] = v10;
    operator delete(v10);
  }

  sub_1D0C48174(va);
  sub_1D0C48234(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1D0C32708(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  sub_1D0C3279C(a1, a2);
  return a1;
}

void sub_1D0C32738(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    v3 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v3;
      operator delete(v3);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C32760(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1D0C31F40(a1, a2);
  }

  sub_1D0C5663C();
}

void *sub_1D0C3279C(void *result, uint64_t a2)
{
  if (*(a2 + 24) == 1)
  {
    v2 = result;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    result = sub_1D0C327F0(result, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 5);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_1D0C327F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0C32760(result, a4);
  }

  return result;
}

void sub_1D0C32850(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C3286C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    sub_1D0C31F88(a1, a2);
  }

  sub_1D0C5663C();
}

uint64_t sub_1D0C328B8(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1D0C3286C(result, a4);
  }

  return result;
}

void sub_1D0C32918(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1D0C32934(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 32);
      if (v5)
      {
        *(v3 - 24) = v5;
        operator delete(v5);
      }

      if (*(v3 - 208) == 1)
      {
        v6 = *(v3 - 232);
        if (v6)
        {
          *(v3 - 224) = v6;
          operator delete(v6);
        }
      }

      v3 -= 256;
    }
  }

  return a1;
}

void sub_1D0C329EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  if (*(a3 + 8) == 1)
  {
    v10 = *(a3 + 24);
  }

  else
  {
    LOWORD(v70) = 3;
    LOBYTE(v86[0]) = 5;
    cnprint::CNPrinter::Print(&v70, v86, "Attempted to access type of uninitialized GenericEvent.", a4, a5, a6, a7, a8, v42);
    v10 = MEMORY[0x1E69E54A8];
  }

  {
    v16 = *(a3 + 16);
    if (v16)
    {
      v17 = (*(*v16 + 16))(v16);
    }

    else
    {
      v17 = MEMORY[0x1E69E54A8];
    }

    v20 = (*(v17 + 8) & 0x7FFFFFFFFFFFFFFFLL);
    if (v20 != (off_1F4CEF088 & 0x7FFFFFFFFFFFFFFFLL) && strcmp(v20, (off_1F4CEF088 & 0x7FFFFFFFFFFFFFFFLL)))
    {
      *&v70 = 0;
      std::bad_cast::bad_cast(&v70);
      *&v70 = &unk_1F4CE4880;
      sub_1D0DC7F8C();
    }

    v21 = *(a3 + 16);
    v45 = &unk_1F4CEDFD0;
    v23 = *(v21 + 32);
    v22 = *(v21 + 48);
    v46 = *(v21 + 16);
    v47 = v23;
    v48 = v22;
    v24 = *(v21 + 64);
    v25 = *(v21 + 80);
    v26 = *(v21 + 96);
    *&v51[16] = *(v21 + 112);
    v50 = v25;
    *v51 = v26;
    v49 = v24;
    sub_1D0C321B0(&v52, v21 + 120);
  }

  else
  {
    LOWORD(v86[0]) = 3;
    LOBYTE(__p[0]) = 5;
    if (*(a3 + 8) == 1)
    {
      v18 = *(a3 + 24);
    }

    else
    {
      LOWORD(v70) = 3;
      LOBYTE(v104[0]) = 5;
      cnprint::CNPrinter::Print(&v70, v104, "Attempted to access type of uninitialized GenericEvent.", v11, v12, v13, v14, v15, v42);
      v18 = MEMORY[0x1E69E54A8];
    }

    cnprint::CNPrinter::Print(v86, __p, "Attempted to cast a GenericEvent of type %s to type %s.", v11, v12, v13, v14, v15, *(v18 + 8));
    v47 = 0uLL;
    v50 = 0uLL;
    v57 = 0u;
    v46 = 0uLL;
    v45 = &unk_1F4CEDFD0;
    v48 = 0uLL;
    v49 = 0uLL;
    *v51 = 0;
    *&v51[8] = xmmword_1D0E87BD0;
    v52 = -1;
    v19.i64[0] = 0x3F0000003FLL;
    v19.i64[1] = 0x3F0000003FLL;
    v53 = vnegq_f32(v19);
    v54 = vdupq_n_s64(0x7FF8000000000000uLL);
    v55 = 0x8000000000000000;
    v56 = vneg_f32(0x3F0000003FLL);
    *&v57 = 0x7FF8000000000000;
    DWORD2(v57) = 2143289344;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
  }

  if (*(v9 + 224) == 1)
  {
    v70 = *(v9 + 112);
    raven::GnssMeasurementPreprocessor::UpdateCurrentFrameworkTime((v9 + 232), &v70);
    if (raven::GnssMeasurementPreprocessor::HandleEvent((v9 + 232), &v45) == 1)
    {
      v106 = 0;
      v107 = 0;
      v108 = 0;
      v109 = 0;
      v110 = 0;
      v111 = 0;
      v112 = 0;
      memset(v113, 0, sizeof(v113));
      v114 = 0;
      v104[1] = 0;
      v104[2] = 0;
      v104[0] = &unk_1F4CEF598;
      v105 = 0;
      if (raven::GnssMeasurementPreprocessor::GetPreprocessedGnssMeasurements((v9 + 232), v104))
      {
        sub_1D0C4499C();
      }

      v86[2] = 0;
      v86[0] = &unk_1F4CEE9A8;
      v86[1] = 0;
      v87 = 0;
      v89 = 0;
      v88 = 0;
      v90 = 0;
      v92 = 0;
      v91 = 0;
      v93 = 0;
      v95 = 0;
      v94 = 0;
      v96 = 0x7FF8000000000000;
      v97 = 0;
      v98 = 0u;
      v99 = 0u;
      v100 = 0;
      v103 = 0;
      v101 = 0;
      v102 = 0;
      if (raven::GnssMeasurementPreprocessor::GetGpsUTCParametersEvent((v9 + 232), v86))
      {
        sub_1D0B9B7B4();
      }

      *(&v70 + 1) = 0;
      v71 = 0.0;
      *&v70 = &unk_1F4CEE030;
      LOBYTE(v72) = 0;
      *(&v72 + 1) = 0;
      *&v73 = 0;
      BYTE8(v73) = 0;
      v74 = 0uLL;
      LOBYTE(v75) = 0;
      *(&v75 + 1) = 0;
      v76 = 0;
      v77 = 0x7FF8000000000000;
      v78 = 0;
      v79 = 0;
      v80 = &unk_1F4CD5A50;
      v81 = 0u;
      v82 = 0u;
      v83 = xmmword_1D0E76640;
      v84 = xmmword_1D0E76650;
      v85 = 0;
      if (raven::GnssMeasurementPreprocessor::GetKlobucharParametersEvent((v9 + 232), &v70))
      {
        v28 = *(v9 + 112);
        v27 = *(v9 + 120);
        v72 = 0u;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        *(&v70 + 1) = v28;
        v71 = v27;
        v76 = 0;
        v77 = 0x7FF8000000000000;
        v69 = 12;
        v68 = 2;
        sub_1D0B751F4(__p, "KlobucharParametersEvent");
        v43 = v28 + v27;
        cnprint::CNPrinter::Print(&v69, &v68, "t,%.3lf,RavenGnssPreprocessorActiveObject, Raising event - %s.", v29, v30, v31, v32, v33, SLOBYTE(v43));
        if (v67 < 0)
        {
          operator delete(__p[0]);
        }

        sub_1D0C47D0C();
      }

      v104[0] = &unk_1F4CEF598;
      *&v70 = &v113[4];
      sub_1D0BBBD80(&v70);
    }

    else
    {
      LOWORD(v86[0]) = 12;
      LOBYTE(v104[0]) = 2;
      v34 = v45[2](&v45);
      v36 = v35;
      (v45[3])(&v70, &v45);
      v44 = v36 + v34;
      cnprint::CNPrinter::Print(v86, v104, "t,%.3lf,RavenGnssPreprocessorActiveObject Failed to handle event - %s.", v37, v38, v39, v40, v41, SLOBYTE(v44));
      if (SHIBYTE(v71) < 0)
      {
        operator delete(v70);
      }
    }
  }

  raven::GnssMeasurementDataEvent::~GnssMeasurementDataEvent(&v45);
}

void sub_1D0C32FFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, std::exception a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a56 < 0)
  {
    operator delete(__p);
  }

  *(v64 - 168) = v63;
  a58.__vftable = (v64 - 72);
  sub_1D0BBBD80(&a58);
  raven::GnssMeasurementDataEvent::~GnssMeasurementDataEvent(&a12);
  _Unwind_Resume(a1);
}

uint64_t raven::GnssMeasurementPreprocessor::HandleEvent(raven::GnssMeasurementPreprocessor *this, const raven::GnssMeasurementDataEvent *a2)
{
  LogLevel = cnprint::CNPrinter::GetLogLevel(this);
  if (LogLevel <= 1)
  {
    *v306 = 12;
    v289[0] = 1;
    cnprint::CNPrinter::Print(v306, v289, "#gmp,HandleEvent(GNSS),Received msmt data", v5, v6, v7, v8, v9, v273);
  }

  if (*this)
  {
    if (*(this + 2296) == 1)
    {
      v10 = *(a2 + 14);
      if (*(this + 282) == *(this + 288) + v10)
      {
        *v306 = 12;
        v289[0] = 4;
        cnprint::CNPrinter::Print(v306, v289, "#gmp,HandleEvent(GNSS),dropped due to repeated HW clock %llu", v5, v6, v7, v8, v9, v10);
        return 15;
      }
    }

    *(this + 16) = 0;
    memset(&v306[8], 0, 112);
    *v306 = &unk_1F4CEF598;
    *(this + 2) = 0u;
    *(this + 3) = 0u;
    v17 = *&v306[40];
    v18 = *&v306[56];
    v19 = *&v306[72];
    *(this + 14) = *&v306[88];
    *(this + 5) = v18;
    *(this + 6) = v19;
    *(this + 4) = v17;
    if (this + 24 != v306)
    {
      sub_1D0BBD668(this + 15, 0, 0, 0);
    }

    *v306 = &unk_1F4CEF598;
    *v289 = &v306[96];
    sub_1D0BBBD80(v289);
    v29 = *(a2 + 37);
    if (v29 && *(v29 + 80) == 1)
    {
      v30 = *(this + 520);
      if ((v30 & 1) == 0)
      {
        *(v311 + 8) = 0u;
        *&v306[104] = 0;
        memset(&v306[8], 0, 88);
        *v306 = &unk_1F4CEE030;
        *&v306[40] = 0;
        v306[48] = 0;
        *&v306[96] = 0x7FF8000000000000;
        *&v306[112] = 0;
        v307 = &unk_1F4CD5A50;
        v308 = 0u;
        v309 = 0u;
        v310 = xmmword_1D0E76640;
        v311[0] = xmmword_1D0E76650;
        if (v30)
        {
          v31 = *&v306[56];
          v32 = *&v306[88];
          *(this + 392) = *&v306[72];
          *(this + 408) = v32;
          *(this + 424) = *&v306[104];
          v33 = *&v306[24];
          *(this + 328) = *&v306[8];
          *(this + 344) = v33;
          *(this + 360) = *&v306[40];
          *(this + 376) = v31;
          if ((this + 440) != &v307)
          {
            *(this + 28) = 0u;
            *(this + 29) = 0u;
            *(this + 30) = xmmword_1D0E76640;
            *(this + 31) = xmmword_1D0E76650;
            *(this + 512) = 0;
          }
        }

        else
        {
          *(this + 40) = &unk_1F4CEE030;
          v34 = *&v306[56];
          v35 = *&v306[88];
          *(this + 392) = *&v306[72];
          *(this + 408) = v35;
          *(this + 424) = *&v306[104];
          v36 = *&v306[24];
          *(this + 328) = *&v306[8];
          *(this + 344) = v36;
          *(this + 360) = *&v306[40];
          *(this + 376) = v34;
          *(this + 55) = &unk_1F4CD5A50;
          *(this + 28) = 0uLL;
          *(this + 29) = 0uLL;
          *(this + 30) = xmmword_1D0E76640;
          *(this + 31) = xmmword_1D0E76650;
          *(this + 512) = 0;
          *(this + 520) = 1;
        }
      }

      v37 = *(a2 + 24);
      *(this + 328) = *(a2 + 8);
      *(this + 344) = v37;
      v38 = *(a2 + 40);
      v39 = *(a2 + 56);
      v40 = *(a2 + 88);
      *(this + 392) = *(a2 + 72);
      *(this + 408) = v40;
      *(this + 360) = v38;
      *(this + 376) = v39;
      v41 = *(a2 + 37);
      *v306 = &unk_1F4CD5A50;
      v42 = *(v41 + 16);
      *&v306[8] = v42;
      if (this + 440 != v306)
      {
        v43 = *(v41 + 80);
        v44 = *(v41 + 72);
        *(this + 56) = v42;
        v45 = *(v41 + 40);
        v46 = *(v41 + 56);
        *(this + 456) = *(v41 + 24);
        *(this + 472) = v45;
        *(this + 488) = v46;
        *(this + 63) = v44;
        *(this + 512) = v43;
      }

      v47 = sub_1D0C345C8(v306, *v41 * 0.000000001, v20, v21, v22, v23, v24, v25, v26);
      *(this + 424) = *v306;
      if (cnprint::CNPrinter::GetLogLevel(v47) <= 1)
      {
        *v306 = 12;
        v289[0] = 1;
        v48 = (*(*(this + 40) + 16))(this + 320);
        *v50.i64 = v49;
        *v51.i64 = v48;
        v52 = v49 + v48;
        sub_1D0C34690(this + 106, v50, v51);
        cnprint::CNPrinter::Print(v306, v289, "#gmp,t,%.3lf,Klobuchar parameters received and valid,decode_time_s,%.3lf", v53, v54, v55, v56, v57, SLOBYTE(v52));
      }
    }

    if (*(*(this + 1) + 840) == 1)
    {
      raven::GnssMeasurementPreprocessor::UpdateMeasurementPropagationTimeUsingDwellEndTimes(this, a2);
    }

    else
    {
      *(this + 288) = 0;
    }

    if ((raven::GnssReceiverBandCorrectionsManager::InjectVendorCorrections(this + 1280, a2 + 29, this + 137, a2 + 32, this + 888, this + 977, v25, v26, v27, v28) & 1) == 0)
    {
      *v306 = 12;
      v289[0] = 4;
      cnprint::CNPrinter::Print(v306, v289, "#gmp,Receiver band correction update failed", v58, v59, v60, v61, v62, v273);
      return 3;
    }

    if ((raven::GnssSvDatabase::UpdateTimeConversionInfo(this + 984, a2 + 32) & 1) == 0)
    {
      *v306 = 12;
      v11 = 4;
      v289[0] = 4;
      cnprint::CNPrinter::Print(v306, v289, "#gmp,Time conversion information update failed", v63, v64, v65, v66, v67, v273);
      return v11;
    }

    v305 = 0;
    if ((raven::GnssSvDatabase::UpdateSvInfo(this + 984, a2 + 26, &v305, v63, v64, v65, v66, v67) & 1) == 0)
    {
      *v306 = 12;
      v289[0] = 4;
      cnprint::CNPrinter::Print(v306, v289, "#gmp,SV info update failed", v68, v69, v70, v71, v72, v273);
      return 5;
    }

    *&v306[8] = 0;
    *&v306[16] = 0;
    *v306 = &v306[8];
    v303[0] = 0;
    v303[1] = 0;
    v302 = v303;
    v304 = 1;
    sub_1D0C371AC(0);
    v284 = a2;
    v78 = *(a2 + 23);
    v283 = (a2 + 184);
    v79 = *(a2 + 24);
    while (v78 != v79)
    {
      *&v306[23] = 0;
      v306[0] = 0;
      *&v306[28] = -1;
      v80 = *(v78 + 8);
      v81 = v80 > 9;
      v82 = (1 << v80) & 0x2BB;
      v83 = v81 || v82 == 0;
      if (v83)
      {
        v91 = *(v78 + 197);
        if ((*(*(this + 1) + 3808) & 1) != 0 || !*(v78 + 197))
        {
          if (*(v78 + 197))
          {
LABEL_35:
            if (raven::GnssMeasurementPreprocessor::GetCNSatIDFromGnssId(this, v78, v306, v73, v74, v75, v76, v77))
            {
              v84 = v303[0];
              if (!v303[0])
              {
LABEL_46:
                operator new();
              }

              while (1)
              {
                while (1)
                {
                  v85 = v84;
                  v86 = v84[56];
                  v87 = *(v85 + 15);
                  v88 = v87 < *&v306[28];
                  if (v86 != v306[24])
                  {
                    v88 = v86 < v306[24];
                  }

                  if (!v88)
                  {
                    break;
                  }

                  v84 = *v85;
                  if (!*v85)
                  {
                    goto LABEL_46;
                  }
                }

                v89 = v87 > *&v306[28];
                v83 = v86 == v306[24];
                v90 = v86 > v306[24];
                if (v83)
                {
                  v90 = v89;
                }

                if (!v90)
                {
                  break;
                }

                v84 = *(v85 + 1);
                if (!v84)
                {
                  goto LABEL_46;
                }
              }
            }
          }
        }

        else if (*(v78 + 196) != 1)
        {
          goto LABEL_35;
        }
      }

      else if (*(v78 + 197))
      {
        goto LABEL_35;
      }

      if ((v306[23] & 0x80000000) != 0)
      {
        operator delete(*v306);
      }

      v78 += 200;
    }

    v97 = a2;
    if ((raven::GnssSvDatabase::PopulateGnssSvData((this + 984), &v302, this + 15, this + 248, v74, v75, v76, v77) & 1) == 0)
    {
      *v306 = 12;
      v289[0] = 3;
      cnprint::CNPrinter::Print(v306, v289, "#gmp,Populate Gnss Sv Data failed", v92, v93, v94, v95, v96, v273);
      v11 = 6;
      goto LABEL_75;
    }

    v98 = *(a2 + 56);
    *&v306[32] = *(a2 + 40);
    *&v306[48] = v98;
    v99 = *(a2 + 88);
    *&v306[64] = *(a2 + 72);
    *&v306[80] = v99;
    v101 = *(a2 + 24);
    *v306 = *(a2 + 8);
    v100.i64[1] = *&v306[8];
    *&v306[16] = v101;
    *v100.i64 = *(this + 288) * 0.000000001;
    *v289 = 0uLL;
    *v102.i64 = CNTimeSpan::SetTimeSpan(v289, 0, v100, v101);
    *v306 = CNTimeSpan::operator+(v306, v289, v102, v103);
    *&v306[8] = v104;
    raven::PopulateAllTimeFields(v306, a2 + 8, v105, v106);
    v112 = *&v306[48];
    *(this + 184) = *&v306[32];
    *(this + 200) = v112;
    v113 = *&v306[80];
    *(this + 216) = *&v306[64];
    *(this + 232) = v113;
    v114 = *&v306[16];
    *(this + 152) = *v306;
    *(this + 168) = v114;
    v301[0] = 0;
    v301[1] = 0;
    v300 = v301;
    v115 = *(this + 15);
    v116 = *(this + 16);
    while (v115 != v116)
    {
      v117 = *v115;
      if (*v115)
      {
        *v289 = *v115;
        *(sub_1D0C39F20(&v300, *(v117 + 24), *(v117 + 28)) + 64) = v117;
      }

      v115 += 2;
    }

    if (*(this + 729) != 1 || (*(this + 730) & 1) == 0 || (*(this + 808) & 1) == 0)
    {
      *v289 = 12;
      LOBYTE(v286) = 3;
      cnprint::CNPrinter::Print(v289, &v286, "#gmp,No valid last position", v107, v108, v109, v110, v111, v273);
      v11 = 7;
      goto LABEL_74;
    }

    if ((raven::GnssMeasurementPreprocessor::UpdateCurrentDayAndWeek(this, a2 + 32) & 1) == 0)
    {
      *v289 = 12;
      LOBYTE(v286) = 4;
      cnprint::CNPrinter::Print(v289, &v286, "#gmp,Could not update current day and week", v118, v119, v120, v121, v122, v273);
      v11 = 8;
      goto LABEL_74;
    }

    LOBYTE(v298) = 0;
    v299 = 0;
    v125 = *(this + 288) + *(a2 + 14);
    if (*(this + 2296) != 1)
    {
      goto LABEL_79;
    }

    v126 = *(this + 282);
    if (v125 < v126)
    {
      *v289 = 12;
      LOBYTE(v286) = 4;
      cnprint::CNPrinter::Print(v289, &v286, "#gmp,HW clock reset detected,last,%llu,current,%llu", v118, v119, v120, v121, v122, v126);
      v127 = 0;
      v128 = 1;
      goto LABEL_82;
    }

    if (v126)
    {
      v128 = 0;
      v123 = (v125 - v126) * 0.000000001;
      v298 = v123;
      v127 = 1;
      v299 = 1;
    }

    else
    {
LABEL_79:
      v127 = 0;
      v128 = 0;
    }

LABEL_82:
    v297 = 0uLL;
    if ((raven::GnssMeasurementPreprocessor::EstimateCoarseReceiverTaiTime(this, a2 + 112, &v300, &v297, v119, v120, v121, v122, v123, v124) & 1) == 0)
    {
      v152 = *(this + 2296);
      if (v152 != 1 || !v127)
      {
        *v289 = 12;
        LOBYTE(v286) = 3;
        cnprint::CNPrinter::Print(v289, &v286, "#gmp,Could not estimate coarse receiver TAI time,last times set,%d,HW clock diff set,%d", v130, v131, v132, v133, v134, v152);
        v11 = 9;
        goto LABEL_74;
      }

      *v289 = 12;
      LOBYTE(v286) = 2;
      cnprint::CNPrinter::Print(v289, &v286, "#gmp,Fell back to propagation for coarse receiver TAI time", v130, v131, v132, v133, v134, v273);
      if ((*(this + 2296) & 1) == 0)
      {
        sub_1D0C42F28();
      }

      *v153.i64 = v298;
      *v289 = 0uLL;
      *v155.i64 = CNTimeSpan::SetTimeSpan(v289, 0, v153, v154);
      *&v297 = CNTimeSpan::operator+(this + 278, v289, v155, v156);
      *(&v297 + 1) = v157;
    }

    v281 = v128;
    v282 = (this + 2224);
    v135 = (*(*a2 + 16))(a2);
    v137 = v136;
    v138 = v136;
    *v289 = 0x3CuLL;
    v141 = CNTimeSpan::operator+(this + 289, v289, v139, v140);
    v148 = v142;
    if ((v135 || (*&v137 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && (v141 || (*&v142 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL) && v135 != v141)
    {
      if (v135 <= v141)
      {
LABEL_89:
        if ((v305 & 1) == 0)
        {
          goto LABEL_106;
        }
      }
    }

    else if (v138 < v142)
    {
      goto LABEL_89;
    }

    v294 = 0;
    v295 = 0;
    v296 = 0;
    *v289 = 0;
    memset(&v289[8], 0, 32);
    v290 = 0;
    v291 = 0;
    v292 = 0;
    v293 = 0;
    LOBYTE(v286) = 0;
    v288 = 0;
    raven::GnssSvDatabase::PopulateGnssSvData((this + 984), &v286, &v294, v289, v143, v144, v145, v146);
    if (v288 == 1)
    {
      sub_1D0C371AC(*(&v286 + 1));
    }

    *(&v286 + 1) = 0;
    v287 = 0;
    *&v286 = &v286 + 8;
    v149 = v294;
    v150 = v295;
    while (v149 != v150)
    {
      v151 = *v149;
      if (*v149)
      {
        v312[0] = *v149;
        *(sub_1D0C39F20(&v286, *(v151 + 24), *(v151 + 28)) + 64) = v151;
      }

      v149 += 2;
    }

    LOWORD(v312[0]) = 12;
    v285 = 2;
    v158 = (*(*v284 + 16))(v284);
    v274 = v159 + v158;
    v279 = *(this + 290) + *(this + 289);
    cnprint::CNPrinter::Print(v312, &v285, "#gmp,Recomputing active GLONASS satellites,current-time,%lf,last-time,%lf,re-eval-needed,%i", v160, v161, v162, v163, v164, SLOBYTE(v274));
    if (raven::GnssSvDatabase::RecomputeActiveGlonassSlots(this + 123, this + 528, &v286, &v297, v165, v166, v167, v168))
    {
      *(this + 289) = (*(*v284 + 16))(v284);
      *(this + 290) = v174;
    }

    else
    {
      LOWORD(v312[0]) = 12;
      v285 = 3;
      cnprint::CNPrinter::Print(v312, &v285, "#gmp,Could not compute active GLONASS satellites", v169, v170, v171, v172, v173, v273);
    }

    sub_1D0C371AC(*(&v286 + 1));
    *v289 = &v294;
    sub_1D0BBBD80(v289);
LABEL_106:
    LOBYTE(v286) = 0;
    v175 = raven::GnssMeasurementPreprocessor::DetermineNearestReceiverTaiTimeMillisecond(this, v284 + 112, &v300, &v297, &v286, v144, v145, v146, v148, v147);
    if (v175)
    {
      if (v286)
      {
        v183 = 0;
LABEL_123:
        v192 = *(*(this + 1) + 3840);
        if (v192)
        {
          if (cnprint::CNPrinter::GetLogLevel(v175) <= 1)
          {
            *v289 = 12;
            LOBYTE(v286) = 1;
            cnprint::CNPrinter::Print(v289, &v286, "#gmp,Introducing artificial GNSS time offset of %d ms", v193, v194, v195, v196, v197, v192);
          }

          v199.i64[0] = 0x3F50624DD2F1A9FCLL;
          *v198.i64 = v192 * 0.001;
          *v289 = 0uLL;
          *v200.i64 = CNTimeSpan::SetTimeSpan(v289, 0, v198, v199);
          *&v297 = CNTimeSpan::operator+(&v297, v289, v200, v201);
          *(&v297 + 1) = v202;
        }

        v203 = raven::GnssMeasurementPreprocessor::ComputeSvElevAzimLosSpeed(this, this + 15, &v297, v183 & 1);
        if ((v203 & 1) == 0)
        {
          v11 = 12;
          if (cnprint::CNPrinter::GetLogLevel(v203) <= 1)
          {
            *v289 = 12;
            LOBYTE(v286) = 1;
            v217 = (*(*v97 + 16))(v97);
            v275 = v218 + v217;
            cnprint::CNPrinter::Print(v289, &v286, "#gmp,Could not derive augmented SV data,t,%.3lf", v219, v220, v221, v222, v223, SLOBYTE(v275));
          }

          goto LABEL_74;
        }

        v286 = 0uLL;
        if (raven::GnssMeasurementPreprocessor::PopulateGnssMeasurements(this, v283, &v297, &v300, v306, &v298, v183 & 1, &v286, v204, v205))
        {
          v211 = raven::GnssMeasurementPreprocessor::OrderGnssMeasurements(this, this + 15);
          if ((v211 & 1) == 0)
          {
            if (cnprint::CNPrinter::GetLogLevel(v211) <= 1)
            {
              *v289 = 12;
              LOBYTE(v294) = 1;
              v224 = (*(*v284 + 16))(v284);
              v276 = v225 + v224;
              cnprint::CNPrinter::Print(v289, &v294, "#gmp,Could not order GNSS measurements,t,%.3lf", v226, v227, v228, v229, v230, SLOBYTE(v276));
            }

            v11 = 13;
            goto LABEL_74;
          }

          v213 = *v306;
          *(this + 2) = *v306;
          v214 = *(this + 15);
          v215 = *(this + 16);
          while (v214 != v215)
          {
            if (*v214)
            {
              if (raven::GNSSPreprocessedMeasurementsChecker::CanSvAndMeasurementDataBeIncluded(*v214, *(this + 1)))
              {
                ++*(this + 29);
              }

              else
              {
                v216 = v214[1];
                *v214 = 0;
                v214[1] = 0;
                if (v216)
                {
                  sub_1D0B7CAB8(v216);
                }
              }
            }

            v214 += 2;
          }

          if (*(this + 2296))
          {
            v231 = CNTimeSpan::operator-(v306, this + 283, v213, v212);
            if ((*(this + 88) & 1) == 0)
            {
              *(this + 88) = 1;
            }

            *v233.i64 = v232 + v231;
            *(this + 10) = v233.i64[0];
            v235 = 1;
            if (v127)
            {
              *v234.i64 = v231;
              *v236.i64 = CNTimeSpan::operator-(&v286, this + 280, v233, v234);
              *v238.i64 = v237 + *v236.i64;
              *(this + 8) = v298;
              *(this + 6) = v237 + *v236.i64;
              *(this + 56) = 1;
              *(this + 72) = v299;
              v239 = CNTimeSpan::operator-(&v297, v282, v238, v236);
              if ((*(this + 72) & 1) == 0)
              {
                sub_1D0C42F28();
              }

              if (vabdd_f64(v240 + v239, *(this + 8)) >= fabs(*(this + 8) * 0.00002))
              {
                if (cnprint::CNPrinter::GetLogLevel(v239) <= 1)
                {
                  *v289 = 12;
                  LOBYTE(v294) = 1;
                  v266 = (*(*v284 + 16))(v284);
                  v278 = v267 + v266;
                  cnprint::CNPrinter::Print(v289, &v294, "#gmp,t,%.3lf,hw clock and tai rx time mismatch,hw_clock_diff_sec,%.8lf,full_tai_rx_time_diff_sec,%.8lf,mismatch_sec,%.8lf,threshold_sec,%.8lf", v268, v269, v270, v271, v272, SLOBYTE(v278));
                }
              }

              else
              {
                v235 = 0;
              }
            }
          }

          else
          {
            v235 = 1;
          }

          v241 = sub_1D0C44868(v284 + 112);
          if (v241 && *(v284 + 30) > 8.44 && *(v284 + 31) > 2.86)
          {
            v247 = this + 112;
            v248 = *(this + 112);
            *(this + 6) = *(v284 + 120);
            if (v248)
            {
LABEL_159:
              if ((v235 | v183))
              {
LABEL_160:
                if (*(this + 56) == 1)
                {
                  *(this + 56) = 0;
                }

                v250 = 0;
                *(this + 112) = 0;
                goto LABEL_168;
              }

              if (*(this + 2296) == 1)
              {
                if ((v281 | *(this + 2280)))
                {
                  goto LABEL_160;
                }
              }

              else if (v281)
              {
                goto LABEL_160;
              }

              v250 = 1;
LABEL_168:
              v251 = *(v284 + 13);
              if (v251 < 0.0 || v251 > 0.2)
              {
                *v289 = 12;
                LOBYTE(v294) = 3;
                v277 = *(v284 + 2) + *(v284 + 1);
                cnprint::CNPrinter::Print(v289, &v294, "#gmp,Throwing away GNSS measurements due to raven time uncertainty,time,%.2f,unc,%.2f", v242, v243, v244, v245, v246, SLOBYTE(v277));
                v11 = 14;
              }

              else
              {
                if (*(this + 2296) == 1 && v251 >= 0.0 && v251 < 0.2 && (v252 = *(this + 286), v252 >= 0.0) && v252 < 0.2)
                {
                  if (v250)
                  {
                    v253 = (v251 * v251 + v252 * v252) * 9.0e-12 * 1000000000.0 * 1000000000.0;
                    *(this + 27) = *(this + 27) + v253;
                  }
                }

                else if (v250)
                {
                  *(this + 112) = 0;
                }

                if (cnprint::CNPrinter::GetLogLevel(v241) <= 1)
                {
                  *v289 = 12;
                  LOBYTE(v294) = 1;
                  v259 = *(this + 5) + *(this + 4);
                  v260 = *(this + 8) * 1000.0;
                  *(this + 72);
                  v261 = *(this + 10) * 1000.0;
                  *(this + 88);
                  v262 = *(this + 6) * 1000.0;
                  *(this + 56);
                  v280 = *(this + 112);
                  cnprint::CNPrinter::Print(v289, &v294, "#gmp,Preprocessed meas avail,t,%.1f,Elapsed millisec since last report,HW,%.2f,Raven,%.2f,TAI,%.2f,continuous clock,%d", v254, v255, v256, v257, v258, SLOBYTE(v259));
                }

                v263 = v286;
                *v289 = v297;
                *&v289[16] = v286;
                v264 = *(v284 + 13);
                v265 = *(this + 2296);
                *v282 = v297;
                *(this + 140) = v263;
                *(this + 282) = v125;
                *(this + 2264) = *v306;
                *(this + 2280) = v183 & 1;
                *(this + 286) = v264;
                if ((v265 & 1) == 0)
                {
                  *(this + 2296) = 1;
                }

                v11 = 1;
                *(this + 16) = 1;
              }

              goto LABEL_74;
            }
          }

          else
          {
            v247 = this + 112;
            v249 = *(this + 112);
            *(this + 6) = xmmword_1D0EA1120;
            if (v249)
            {
              goto LABEL_159;
            }
          }

          *v247 = 1;
          goto LABEL_159;
        }

        *v289 = 12;
        LOBYTE(v294) = 4;
        cnprint::CNPrinter::Print(v289, &v294, "#gmp,Could not populate GNSS measurements", v206, v207, v208, v209, v210, v273);
        v11 = 11;
LABEL_74:
        sub_1D0C371AC(v301[0]);
LABEL_75:
        if (v304 == 1)
        {
          sub_1D0C371AC(v303[0]);
        }

        return v11;
      }

      if (*(this + 2296) != 1 || (*(this + 2280) & 1) != 0)
      {
        v183 = 1;
        goto LABEL_123;
      }

      if (v127)
      {
        *v181.i64 = v298;
        *v289 = 0uLL;
        *v189.i64 = CNTimeSpan::SetTimeSpan(v289, 0, v181, v182);
        v175 = CNTimeSpan::operator+(v282, v289, v189, v190);
        v183 = 0;
        *&v297 = v175;
        *(&v297 + 1) = v191;
      }

      else
      {
        v183 = 1;
      }
    }

    else
    {
      if (*(this + 2296) != 1 || !v127)
      {
        *v289 = 12;
        LOBYTE(v294) = 3;
        cnprint::CNPrinter::Print(v289, &v294, "#gmp,Could not determine nearest receiver TAI millisecond", v176, v177, v178, v179, v180, v273);
        v11 = 10;
        goto LABEL_74;
      }

      *v289 = 12;
      LOBYTE(v294) = 2;
      cnprint::CNPrinter::Print(v289, &v294, "#gmp,DetermineNearestReceiverTaiTimeMillisecond, fell back to propagation", v176, v177, v178, v179, v180, v273);
      if ((*(this + 2296) & 1) == 0)
      {
        sub_1D0C42F28();
      }

      *v184.i64 = v298;
      *v289 = 0uLL;
      *v186.i64 = CNTimeSpan::SetTimeSpan(v289, 0, v184, v185);
      v175 = CNTimeSpan::operator+(v282, v289, v186, v187);
      *&v297 = v175;
      *(&v297 + 1) = v188;
      v183 = *(this + 2280);
    }

    v97 = v284;
    goto LABEL_123;
  }

  if (cnprint::CNPrinter::GetLogLevel(LogLevel) <= 1)
  {
    *v306 = 12;
    v289[0] = 1;
    cnprint::CNPrinter::Print(v306, v289, "#gmp,HandleEvent(GNSS),not configured", v12, v13, v14, v15, v16, v273);
  }

  return 2;
}

void sub_1D0C34484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char *a40, uint64_t a41, uint64_t a42, char *a43, uint64_t a44, char a45)
{
  sub_1D0C371AC(a40);
  if (a45 == 1)
  {
    sub_1D0C371AC(a43);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0C345C8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if ((*&a2 <= -1 || ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) && (*&a2 - 1) >= 0xFFFFFFFFFFFFFLL && (*&a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v17 = 5;
    v16 = 4;
    cnprint::CNPrinter::Print(&v17, &v16, "Invalid GPS time %.3lf constructed from double", a5, a6, a7, a8, a9, SLOBYTE(a2));
  }

  v14 = vcvtmd_s64_f64(a2 / 604800.0);
  *a1 = v14;
  *(a1 + 8) = a2 + v14 * -604800.0;
  return a1;
}

uint64_t sub_1D0C34690(int *a1, int8x16_t a2, int8x16_t a3)
{
  a2.i64[0] = *(a1 + 1);
  v3 = vcvtmd_s64_f64(*a2.i64) + 604800 * *a1;
  *a3.i64 = floor(*a2.i64);
  *a2.i64 = *a2.i64 - *a3.i64;
  v5[0] = 0;
  v5[1] = 0;
  CNTimeSpan::SetTimeSpan(v5, v3, a2, a3);
  return v5[0];
}

uint64_t raven::GnssReceiverBandCorrectionsManager::InjectVendorCorrections(uint64_t a1, unsigned __int8 **a2, int8x16_t *a3, uint64_t *a4, unsigned __int8 *a5, unsigned __int8 *a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  if (!*a1)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) > 1)
    {
      return 0;
    }

    LOWORD(v54) = 12;
    v53 = 1;
    v47 = "#rxbc,UpdateReceiverBandCorrections,not configured";
LABEL_64:
    cnprint::CNPrinter::Print(&v54, &v53, v47, v33, v34, v35, v36, v37, v48);
    return 0;
  }

  v12 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    v13 = (a1 + 16);
    do
    {
      v14 = *v12;
      if (*v12 && (*(v12 + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && ((*(v12 + 4) & 0x7FFFFFFFu) <= 0x7F7FFFFF ? (v15 = *(v12 + 4) < 100.0) : (v15 = 0), v15))
      {
        if (*(*a1 + 547) == 1)
        {
          v26 = *v12;
          v27 = *(v12 + 2);
          v28 = -*(v12 + 1);
          v54 = v12;
          v29 = sub_1D0C34AEC(a1 + 8, v12);
          v29[5] = v26;
          *(v29 + 6) = v28;
          *(v29 + 14) = v27;
        }

        else
        {
          v54 = v12;
          v30 = sub_1D0C34AEC(a1 + 8, v12);
          a9 = *v12;
          *(v30 + 14) = *(v12 + 4);
          *(v30 + 5) = a9;
        }
      }

      else
      {
        v16 = *v13;
        if (*v13)
        {
          v17 = (a1 + 16);
          v18 = *v13;
          do
          {
            v19 = *(v18 + 32);
            v20 = v19 >= v14;
            v21 = v19 < v14;
            if (v20)
            {
              v17 = v18;
            }

            v18 = v18[v21];
          }

          while (v18);
          if (v17 != v13 && *(v17 + 32) <= v14)
          {
            v22 = v17[1];
            v23 = v17;
            if (v22)
            {
              do
              {
                v24 = v22;
                v22 = *v22;
              }

              while (v22);
            }

            else
            {
              do
              {
                v24 = v23[2];
                v25 = *v24 == v23;
                v23 = v24;
              }

              while (!v25);
            }

            if (*(a1 + 8) == v17)
            {
              *(a1 + 8) = v24;
            }

            --*(a1 + 24);
            sub_1D0D4B3C4(v16, v17);
            operator delete(v17);
            v14 = *v12;
          }
        }

        if (v14 && (*(v12 + 1) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v12 + 4) & 0x7FFFFFFFu) < 0x7F800000)
        {
          LOWORD(v54) = 12;
          v53 = 2;
          cnprint::CNPrinter::Print(&v54, &v53, "#rxbc,rx_band_correction for band %d: uncertainty %.1f ns too high, ignoring and clearing cache", a4, a5, a6, a7, a8, v14);
        }

        else
        {
          LOWORD(v54) = 12;
          v53 = 2;
          cnprint::CNPrinter::Print(&v54, &v53, "#rxbc,Invalid rx_band_correction for band %d, ignoring and clearing cache", a4, a5, a6, a7, a8, v14);
        }
      }

      v12 += 24;
    }

    while (v12 != v11);
  }

  v31 = *(a1 + 40);
  if (v31)
  {
    raven::MinnesotaRfModelCompensator::FeedVendorCorrections(v31, a1 + 8, a3, a5, a6, a6, a7, a8);
  }

  v32 = *(a1 + 32);
  if (v32 && (raven::GnssReceiverBandCorrectionsFilter::TickFilterAndOverwriteCorrections(v32, (a1 + 8), a3, a5, a6, a6, a7, a8, a9, a10) & 1) == 0)
  {
    LOWORD(v54) = 12;
    v53 = 4;
    v47 = "#rxbc,Updating filtered Rx band corrections failed";
    goto LABEL_64;
  }

  if (*(*a1 + 548) == 1)
  {
    raven::GnssReceiverBandCorrectionsManager::RemoveConstellationClockOffset((a1 + 8), a4);
  }

  v38 = *(a1 + 8);
  if (v38 != (a1 + 16))
  {
    do
    {
      v39 = *(a1 + 40);
      if (v39)
      {
        raven::MinnesotaRfModelCompensator::OverwriteWithInternalEstimate(v39, v38 + 40);
      }

      v40 = 0.0;
      if (*(*a1 + 2562) != 1 || *(a1 + 880) != 1 || *(a1 + 152) != 1)
      {
        goto LABEL_54;
      }

      v41 = v38[40];
      v42 = (a1 + 256);
      v43 = (a1 + 888);
      if (v41 != 2)
      {
        if (v41 == 6)
        {
          v42 = (a1 + 272);
          v43 = (a1 + 904);
        }

        else
        {
          v42 = (a1 + 264);
          v43 = (a1 + 896);
          if (v41 != 8)
          {
            goto LABEL_54;
          }
        }
      }

      v40 = *v42;
      *v43 = *v42;
LABEL_54:
      *(v38 + 6) = *(v38 + 6) - v40;
      v44 = *(v38 + 1);
      if (v44)
      {
        do
        {
          v45 = v44;
          v44 = *v44;
        }

        while (v44);
      }

      else
      {
        do
        {
          v45 = *(v38 + 2);
          v25 = *v45 == v38;
          v38 = v45;
        }

        while (!v25);
      }

      v38 = v45;
    }

    while (v45 != (a1 + 16));
  }

  return 1;
}

uint64_t *sub_1D0C34AEC(uint64_t a1, unsigned __int8 *a2)
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

uint64_t raven::GnssReceiverBandCorrectionsFilter::TickFilterAndOverwriteCorrections(void *a1, void *a2, int8x16_t *a3, unsigned __int8 *a4, unsigned __int8 *a5, uint64_t a6, uint64_t a7, uint64_t a8, int8x16_t a9, int8x16_t a10)
{
  v12 = a1[5];
  v13 = *(v12 + 568);
  a10.i64[0] = *(v12 + 792);
  v14 = fabs(*a10.i64);
  v15 = 0.0;
  if (fabs(v13) >= 2.22044605e-16 && v14 >= 2.22044605e-16)
  {
    v15 = 1.0 / ((1.0 / *a10.i64 / v13 - 1.0 / *a10.i64) * 6.28318531);
  }

  if (fabs(v15) < 2.22044605e-16)
  {
    LOWORD(v98) = 12;
    v97 = 4;
    cnprint::CNPrinter::Print(&v98, &v97, "#rxbc,Invalid receiver band correction LPF parameters,alpha,%.4f,sampling_freq,%.2f", a4, a5, a6, a7, a8, SLOBYTE(v13));
    return 0;
  }

  v18 = a2 + 1;
  v19 = *a2;
  if (*a2 == a2 + 1)
  {
LABEL_77:
    v46 = a1[2];
    if (!v46)
    {
      return 1;
    }

    a9.i64[0] = 0x3F847AE147AE147BLL;
    v47 = 0.01 / v15;
    while (1)
    {
      *a10.i64 = CNTimeSpan::operator-(a3, (v46 + 224), a9, a10);
      *a9.i64 = v48 + *a10.i64;
      if (v48 + *a10.i64 >= 0.0 && *a9.i64 <= 10.0)
      {
        v50 = *(v46 + 216);
        if (v50 > 9)
        {
          break;
        }
      }

      if (*a9.i64 <= v47)
      {
LABEL_118:
        v46 = *v46;
        if (!v46)
        {
          return 1;
        }
      }

      else
      {
        v46 = sub_1D0E1F4D4(a1, v46);
        if (!v46)
        {
          return 1;
        }
      }
    }

    if (*(v46 + 240))
    {
      v51 = 208;
    }

    else
    {
      v51 = 96;
    }

    if (*(v46 + 240))
    {
      v52 = 160;
    }

    else
    {
      v52 = 48;
    }

    v53 = *(v46 + 16);
    v54 = *(v46 + v52);
    a9.i64[0] = *(v46 + v51);
    v55 = *a9.i64;
    v56 = *v18;
    if (*v18)
    {
      v57 = v18;
      do
      {
        v58 = *(v56 + 32);
        v37 = v58 >= v53;
        v59 = v58 < v53;
        if (v37)
        {
          v57 = v56;
        }

        v56 = *(v56 + 8 * v59);
      }

      while (v56);
      if (v57 != v18 && v53 >= *(v57 + 32))
      {
        a9.i32[0] = *(v57 + 14);
        if (*a9.i32 > 20.0 && (v50 < 0x64 || *a9.i32 < v55))
        {
          goto LABEL_118;
        }
      }
    }

    if (!*(v46 + 16) || (v54 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 || (LODWORD(v55) & 0x7FFFFFFFu) >= 0x7F800000)
    {
      goto LABEL_118;
    }

    if (*(a1[5] + 550) != 1)
    {
LABEL_117:
      *&v98 = v46 + 16;
      v64 = sub_1D0C34AEC(a2, (v46 + 16));
      *(v64 + 40) = v53;
      *(v64 + 41) = LODWORD(v98);
      *(v64 + 11) = *(&v98 + 3);
      v64[6] = v54;
      *(v64 + 14) = v55;
      goto LABEL_118;
    }

    v60 = *a5;
    if ((v60 - 3) >= 2)
    {
      v62 = 1.0;
      if (v60 != 2)
      {
        goto LABEL_116;
      }

      v61 = *a4;
      if (v61 >= 0xA)
      {
        goto LABEL_116;
      }

      v63 = &unk_1D0EA216C;
    }

    else
    {
      v61 = *a4;
      v62 = 0.5;
      if (v61 > 9)
      {
LABEL_116:
        v55 = v62 * v55;
        goto LABEL_117;
      }

      v63 = &unk_1D0EA2194;
    }

    v62 = v63[v61];
    goto LABEL_116;
  }

  v21 = ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 < 0x3FF && v15 >= 0.0;
  v93 = v21;
  while (1)
  {
    if (*(v19 + 40))
    {
      v22 = (v19 + 6);
      if ((v19[6] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        *a10.i64 = fabs(*(v19 + 6));
        v23 = *(v19 + 14);
        v24 = (LODWORD(v23) & 0x7FFFFFFFu) > 0x7F7FFFFF || *a10.i64 < 2.22044605e-16;
        v25 = !v24 && v23 < 20.0;
        if (v25 && v23 > 0.0)
        {
          break;
        }
      }
    }

LABEL_71:
    v43 = v19[1];
    if (v43)
    {
      do
      {
        v44 = v43;
        v43 = *v43;
      }

      while (v43);
    }

    else
    {
      do
      {
        v44 = v19[2];
        v45 = *v44 == v19;
        v19 = v44;
      }

      while (!v45);
    }

    v19 = v44;
    if (v44 == v18)
    {
      goto LABEL_77;
    }
  }

  v26 = *(v19 + 32);
  v27 = a1[1];
  if (!*&v27)
  {
    goto LABEL_44;
  }

  v28 = vcnt_s8(v27);
  v28.i16[0] = vaddlv_u8(v28);
  if (v28.u32[0] > 1uLL)
  {
    v29 = *(v19 + 32);
    if (*&v27 <= v26)
    {
      v29 = v26 % a1[1];
    }
  }

  else
  {
    v29 = (v27.i32[0] - 1) & v26;
  }

  v30 = *(*a1 + 8 * v29);
  if (!v30 || (v31 = *v30) == 0)
  {
LABEL_44:
    operator new();
  }

  while (1)
  {
    v32 = v31->u64[1];
    if (v32 == v26)
    {
      break;
    }

    if (v28.u32[0] > 1uLL)
    {
      if (v32 >= *&v27)
      {
        v32 %= *&v27;
      }
    }

    else
    {
      v32 &= *&v27 - 1;
    }

    if (v32 != v29)
    {
      goto LABEL_44;
    }

LABEL_43:
    v31 = v31->i64[0];
    if (!v31)
    {
      goto LABEL_44;
    }
  }

  if (v31[1].u8[0] != v26)
  {
    goto LABEL_43;
  }

  v33 = v31[13].u32[2];
  if (v33 > 0xBB7)
  {
    if (v31[15].i8[0])
    {
      if ((v31[7].i8[8] & 1) == 0)
      {
        sub_1D0E1F420(a1, *(v19 + 32));
        LOWORD(v98) = 12;
        v97 = 4;
        cnprint::CNPrinter::Print(&v98, &v97, "#rxbc,Could not add sample to receiver band correction LPF,sample_value,%.4f", v85, v86, v87, v88, v89, v19[6]);
        return 0;
      }

      if ((v31[9].i8[0] & 1) == 0)
      {
        v31[9].i8[0] = 1;
        v35 = *v22;
LABEL_63:
        *v31[10].i64 = v35;
        if (v31[10].i8[8] != 1)
        {
          sub_1D0E1F420(a1, *(v19 + 32));
          LOWORD(v98) = 12;
          v97 = 4;
          v91 = *(v19 + 14);
          cnprint::CNPrinter::Print(&v98, &v97, "#rxbc,Could not add sample to receiver band correction uncertainty LPF,sample_value,%.4f", v80, v81, v82, v83, v84, SLOBYTE(v91));
          return 0;
        }

        v42 = *(v19 + 14);
        if (v31[12].i8[0] == 1)
        {
          a10.i64[0] = v31[12].i64[1];
          v42 = (1.0 - *a10.i64) * *v31[13].i64 + *a10.i64 * v42;
        }

        else
        {
          v31[12].i8[0] = 1;
        }

        *v31[13].i64 = v42;
LABEL_68:
        if (v33 != -1)
        {
          v31[13].i32[2] = v33 + 1;
        }

        a9 = *a3;
        v31[14] = *a3;
        goto LABEL_71;
      }
    }

    else
    {
      v36 = *(a1[5] + 792);
      if (!v93 || (*&v36 > -1 ? (v37 = ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 >= 0x3FF) : (v37 = 1), v37 ? (v38 = (*&v36 - 1) >= 0xFFFFFFFFFFFFFLL) : (v38 = 0), v38))
      {
        sub_1D0E1F420(a1, *(v19 + 32));
        LOWORD(v98) = 12;
        v97 = 4;
        cnprint::CNPrinter::Print(&v98, &v97, "#rxbc,Error in configuring receiver band correction LPF,lpf_cutoff_frequency,%.4f,signal_sample_frequency,%.4f", v70, v71, v72, v73, v74, SLOBYTE(v15));
        return 0;
      }

      *v31[8].i64 = v15;
      *&v31[8].i64[1] = v36;
      v31[7].i8[8] = 1;
      *v31[11].i64 = v15;
      *&v31[11].i64[1] = v36;
      *&v39 = 1.0 / v36 / (1.0 / (v15 * 6.28318531) + 1.0 / v36);
      v31[10].i8[8] = 1;
      v40 = v31[3].i64[0];
      v31[9].i8[0] = 1;
      v31[9].i64[1] = v39;
      v31[10].i64[0] = v40;
      v41 = v31[6].i64[0];
      v31[12].i8[0] = 1;
      v31[12].i64[1] = v39;
      v31[13].i64[0] = v41;
      v31[15].i8[0] = 1;
    }

    a10.i64[0] = v31[9].i64[1];
    v35 = (1.0 - *a10.i64) * *v31[10].i64 + *a10.i64 * *v22;
    goto LABEL_63;
  }

  v34 = 1.0 / (*(v19 + 14) * *(v19 + 14));
  if (sub_1D0B8954C(&v31[1].i64[1], v19 + 6, v34))
  {
    sub_1D0E1F420(a1, *(v19 + 32));
    LOWORD(v98) = 12;
    v97 = 4;
    v92 = v19[6];
    cnprint::CNPrinter::Print(&v98, &v97, "#rxbc,Could not add receiver band correction to weighted average filter,weight,%.4f,corr_value,%.4f", v65, v66, v67, v68, v69, SLOBYTE(v34));
  }

  else
  {
    v98 = *(v19 + 14);
    if (!sub_1D0B8954C(&v31[4].i64[1], &v98, 1.0))
    {
      v33 = v31[13].u32[2];
      goto LABEL_68;
    }

    sub_1D0E1F420(a1, *(v19 + 32));
    LOWORD(v98) = 12;
    v97 = 4;
    v90 = *(v19 + 14);
    cnprint::CNPrinter::Print(&v98, &v97, "#rxbc,Could not add receiver band correction uncertainty to weighted average filter,uncertainty,%.4f", v75, v76, v77, v78, v79, SLOBYTE(v90));
  }

  return 0;
}

BOOL sub_1D0C3562C(uint64_t *a1)
{
  v2 = *a1;
  if (v2 && sub_1D0C35C6C(v2))
  {
    return 1;
  }

  v3 = a1[1];
  if (v3)
  {
    if (*v3 && *(v3 + 2) < 0x5B5u || *(v3 + 8) && (*(v3 + 16) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      return 1;
    }
  }

  v4 = a1[2];
  if (v4)
  {
    if (*v4 || *(v4 + 8) && (*(v4 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v4 + 24) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      return 1;
    }
  }

  v5 = a1[3];
  if (v5)
  {
    if (*v5 || *(v5 + 8) && (*(v5 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v5 + 24) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
    {
      return 1;
    }
  }

  v6 = a1[4];
  if (!v6)
  {
    return 0;
  }

  if (*v6)
  {
    return 1;
  }

  return *(v6 + 8) && (*(v6 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v6 + 24) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
}

uint64_t raven::GnssSvDatabase::UpdateTimeConversionInfo(uint64_t a1, uint64_t *a2)
{
  if (!sub_1D0C35C1C(a2))
  {
    goto LABEL_26;
  }

  v4 = *a2;
  if (sub_1D0C35C6C(*a2) && *(v4 + 8) != -32768)
  {
    v5 = *(v4 + 10);
    if (*(v4 + 16))
    {
      if ((v5 != 2) == (*(v4 + 24) != -32768))
      {
        goto LABEL_15;
      }
    }

    else if (v5 == 2)
    {
      goto LABEL_15;
    }

    v6 = *a2;
    if (*(*a2 + 8) != -32768)
    {
      v7 = *(v6 + 10);
      if (*(v6 + 16))
      {
        if ((v7 != 2) == (*(v6 + 24) != -32768))
        {
          goto LABEL_15;
        }

LABEL_13:
        v8 = *(a1 + 144);
        v9 = *(*a2 + 24);
        *(a1 + 120) = *(*a2 + 8);
        *(a1 + 136) = v9;
        if ((v8 & 1) == 0)
        {
          *(a1 + 144) = 1;
        }

        goto LABEL_15;
      }

      if (v7 != 2)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_15:
  v10 = *a2;
  if (sub_1D0C35C6C(*a2))
  {
    if (v10[4])
    {
      if ((v10[5] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v10[6] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v10[7] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        v11 = *a2;
        if (*(*a2 + 32))
        {
          if ((v11[5] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v11[6] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (v11[7] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v12 = *(a1 + 112);
            v13 = *(*a2 + 48);
            *(a1 + 80) = *(*a2 + 32);
            *(a1 + 96) = v13;
            if ((v12 & 1) == 0)
            {
              *(a1 + 112) = 1;
            }
          }
        }
      }
    }
  }

LABEL_26:
  if (!sub_1D0C35D08(a2))
  {
    goto LABEL_37;
  }

  v14 = a2[1];
  if (*v14 && *(v14 + 2) < 0x5B5u)
  {
    if (!*(v14 + 8))
    {
      goto LABEL_37;
    }

    v15 = *(v14 + 16);
  }

  else
  {
    if (!*(v14 + 8))
    {
      goto LABEL_37;
    }

    v15 = *(v14 + 16);
    if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_37;
    }
  }

  if (fabs(v15) != INFINITY && (*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v16 = *(a1 + 168);
    *(a1 + 152) = *(v14 + 8);
    if ((v16 & 1) == 0)
    {
      *(a1 + 168) = 1;
    }
  }

LABEL_37:
  if (!sub_1D0C35D78(a2))
  {
    goto LABEL_48;
  }

  v17 = a2[3];
  v18 = v17 + 8;
  v19 = *(v17 + 8);
  if (*v17)
  {
    if (!v19 || (*(v17 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_48;
    }

    v20 = *(v17 + 24);
  }

  else
  {
    if (!v19)
    {
      goto LABEL_48;
    }

    if ((*(v17 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_48;
    }

    v20 = *(v17 + 24);
    if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_48;
    }
  }

  if (fabs(v20) != INFINITY)
  {
    v21 = *(a1 + 224);
    v22 = *(v18 + 16);
    *(a1 + 200) = *v18;
    *(a1 + 216) = v22;
    if ((v21 & 1) == 0)
    {
      *(a1 + 224) = 1;
    }
  }

LABEL_48:
  if (!sub_1D0C35DF0(a2))
  {
    goto LABEL_59;
  }

  v23 = a2[2];
  v24 = v23 + 8;
  v25 = *(v23 + 8);
  if (*v23)
  {
    if (!v25 || (*(v23 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_59;
    }

    v26 = *(v23 + 24);
  }

  else
  {
    if (!v25)
    {
      goto LABEL_59;
    }

    if ((*(v23 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_59;
    }

    v26 = *(v23 + 24);
    if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_59;
    }
  }

  if (fabs(v26) != INFINITY)
  {
    v27 = *(a1 + 256);
    v28 = *(v24 + 16);
    *(a1 + 232) = *v24;
    *(a1 + 248) = v28;
    if ((v27 & 1) == 0)
    {
      *(a1 + 256) = 1;
    }
  }

LABEL_59:
  if (!sub_1D0C35E68(a2))
  {
    goto LABEL_70;
  }

  v34 = a2[4];
  v35 = *(v34 + 8);
  if (*v34)
  {
    if (!v35 || (*(v34 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_70;
    }

    v36 = *(v34 + 24);
  }

  else
  {
    if (!v35)
    {
      goto LABEL_70;
    }

    if ((*(v34 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_70;
    }

    v36 = *(v34 + 24);
    if ((*&v36 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_70;
    }
  }

  if (fabs(v36) != INFINITY)
  {
    v37 = *(a1 + 288);
    v38 = *(v34 + 24);
    *(a1 + 264) = *(v34 + 8);
    *(a1 + 280) = v38;
    if ((v37 & 1) == 0)
    {
      *(a1 + 288) = 1;
    }
  }

LABEL_70:
  if ((*(a1 + 144) & 1) == 0)
  {
    v46 = 12;
    v45 = 3;
    cnprint::CNPrinter::Print(&v46, &v45, "#svdb,No GPS leap second information present", v29, v30, v31, v32, v33, v40);
  }

  if ((*(a1 + 112) & 1) == 0)
  {
    v44 = 12;
    v43 = 3;
    cnprint::CNPrinter::Print(&v44, &v43, "#svdb,No GPS to UTC conversion information present", v29, v30, v31, v32, v33, v40);
  }

  if ((*(a1 + 168) & 1) == 0)
  {
    cnprint::CNPrinter::Print(&v42, &v41, "#svdb,No GLONASS to GPS time conversion information present", v29, v30, v31, v32, v33, v40);
  }

  return 1;
}

BOOL sub_1D0C35C1C(uint64_t *a1)
{
  if (!sub_1D0C3562C(a1))
  {
    return 0;
  }

  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  return sub_1D0C35C6C(v2);
}

BOOL sub_1D0C35C6C(uint64_t a1)
{
  if (*a1)
  {
    return 1;
  }

  if (*(a1 + 8) != -32768)
  {
    v2 = *(a1 + 10);
    if (*(a1 + 16))
    {
      if ((v2 != 2) == (*(a1 + 24) != -32768))
      {
        return *(a1 + 32) && (*(a1 + 40) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 48) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 56) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      }

      return 1;
    }

    if (v2 != 2)
    {
      return 1;
    }
  }

  return *(a1 + 32) && (*(a1 + 40) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 48) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(a1 + 56) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
}

BOOL sub_1D0C35D08(uint64_t *a1)
{
  result = sub_1D0C3562C(a1);
  if (result)
  {
    v3 = a1[1];
    if (!v3)
    {
      return 0;
    }

    if (*v3 && *(v3 + 2) < 0x5B5u)
    {
      return 1;
    }

    return *(v3 + 8) && (*(v3 + 16) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  }

  return result;
}

BOOL sub_1D0C35D78(uint64_t *a1)
{
  result = sub_1D0C3562C(a1);
  if (result)
  {
    v3 = a1[3];
    if (!v3)
    {
      return 0;
    }

    if (*v3)
    {
      return 1;
    }

    return *(v3 + 8) && (*(v3 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v3 + 24) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  }

  return result;
}

BOOL sub_1D0C35DF0(uint64_t *a1)
{
  result = sub_1D0C3562C(a1);
  if (result)
  {
    v3 = a1[2];
    if (!v3)
    {
      return 0;
    }

    if (*v3)
    {
      return 1;
    }

    return *(v3 + 8) && (*(v3 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v3 + 24) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  }

  return result;
}

BOOL sub_1D0C35E68(uint64_t *a1)
{
  result = sub_1D0C3562C(a1);
  if (result)
  {
    v3 = a1[4];
    if (!v3)
    {
      return 0;
    }

    if (*v3)
    {
      return 1;
    }

    return *(v3 + 8) && (*(v3 + 16) & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (*(v3 + 24) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
  }

  return result;
}

uint64_t raven::GnssSvDatabase::UpdateSvInfo(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a3 = 0;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 == v10)
  {
    goto LABEL_113;
  }

  v11 = a1 + 8;
  v122 = (a1 + 56);
  v12 = (a1 + 32);
  do
  {
    sub_1D0B751F4(v130, &unk_1D0ED80C5);
    v132 = 0;
    v133 = -1;
    if ((sub_1D0C369C4(v9, v130) & 1) == 0)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v125) = 4;
      sub_1D0D49EE8(v9, v128);
      v58 = v128;
      if (v129 < 0)
      {
        LOBYTE(v58) = v128[0];
      }

      cnprint::CNPrinter::Print(__p, &v125, "#svdb,Could not form id,SV,%s", v53, v54, v55, v56, v57, v58);
      if (SHIBYTE(v129) < 0)
      {
        operator delete(v128[0]);
      }

      goto LABEL_85;
    }

    if (*v9 != 2)
    {
      goto LABEL_34;
    }

    v13 = sub_1D0C36A78(a1, v130);
    v14 = v13;
    if (v11 == v13)
    {
      goto LABEL_29;
    }

    if (*(v13 + 69) == *(v9 + 5))
    {
      goto LABEL_28;
    }

    LOWORD(v125) = 12;
    LOBYTE(v124) = 2;
    sub_1D0D49EE8(v9, v128);
    v15 = SHIBYTE(v129);
    v16 = v128[0];
    sub_1D0D49EE8(v14 + 64, __p);
    v22 = v128;
    if (v15 < 0)
    {
      LOBYTE(v22) = v16;
    }

    cnprint::CNPrinter::Print(&v125, &v124, "#svdb,changing fcn,new,%s,old,%s,", v17, v18, v19, v20, v21, v22);
    if (v127 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v129) < 0)
    {
      operator delete(v128[0]);
    }

    v28 = *(v14 + 69);
    v29 = *v12;
    if (!*v12)
    {
      goto LABEL_20;
    }

    v30 = (a1 + 32);
    while (1)
    {
      v31 = *(v29 + 7);
      if (v31 <= v28)
      {
        break;
      }

      v30 = v29;
LABEL_19:
      v29 = *v29;
      if (!v29)
      {
        goto LABEL_20;
      }
    }

    if (v31 < v28)
    {
      ++v29;
      goto LABEL_19;
    }

    v106 = *v29;
    v107 = v29;
    if (*v29)
    {
      v107 = v29;
      do
      {
        if (*(v106 + 7) >= v28)
        {
          v107 = v106;
        }

        v106 = v106[*(v106 + 7) < v28];
      }

      while (v106);
    }

    for (i = v29[1]; i; i = *(i + 8 * (*(i + 28) <= v28)))
    {
      if (*(i + 28) > v28)
      {
        v30 = i;
      }
    }

    if (v107 != v30)
    {
      while (*(v107 + 8) != *(v14 + 68))
      {
        v109 = v107[1];
        if (v109)
        {
          do
          {
            v110 = v109;
            v109 = *v109;
          }

          while (v109);
        }

        else
        {
          do
          {
            v110 = v107[2];
            v60 = *v110 == v107;
            v107 = v110;
          }

          while (!v60);
        }

        v107 = v110;
        if (v110 == v30)
        {
          goto LABEL_20;
        }
      }

      LOWORD(v128[0]) = 12;
      LOBYTE(__p[0]) = 2;
      cnprint::CNPrinter::Print(v128, __p, "#svdb,removing frequency-to-slot mapping,freq,%i,slot,%i", v23, v24, v25, v26, v27, *(v107 + 7));
      sub_1D0D4B370((a1 + 24), v107);
      operator delete(v107);
    }

LABEL_20:
    v32 = *v122;
    if (*v122)
    {
      v33 = v122;
      do
      {
        if (*(v32 + 28) >= v28)
        {
          v33 = v32;
        }

        v32 = *(v32 + 8 * (*(v32 + 28) < v28));
      }

      while (v32);
      if (v33 != v122)
      {
        v34 = *(v33 + 7);
        if (v34 <= v28)
        {
          LOWORD(v128[0]) = 12;
          LOBYTE(__p[0]) = 2;
          v120 = *(v33 + 8);
          cnprint::CNPrinter::Print(v128, __p, "#svdb,removing active frequency-to-slot mapping,freq,%i,slot,%i", v23, v24, v25, v26, v27, v34);
          sub_1D0D4B73C(a1 + 48, v28);
        }
      }
    }

LABEL_28:
    if (*(v14 + 69) != *(v9 + 5))
    {
LABEL_29:
      LOWORD(__p[0]) = 12;
      LOBYTE(v125) = 2;
      sub_1D0D49EE8(v9, v128);
      v40 = v128;
      if (v129 < 0)
      {
        LOBYTE(v40) = v128[0];
      }

      cnprint::CNPrinter::Print(__p, &v125, "#svdb,New SV added to frequency-to-slot mapping,%s", v35, v36, v37, v38, v39, v40);
      if (SHIBYTE(v129) < 0)
      {
        operator delete(v128[0]);
      }

      v41 = *(v9 + 5);
      v42 = *(v9 + 4);
      operator new();
    }

LABEL_34:
    v125 = 0;
    v43 = sub_1D0C36A78(a1, v130);
    v44 = v43;
    if (v11 == v43)
    {
      goto LABEL_58;
    }

    v45 = *(v9 + 8);
    v46 = v45 - *(v43 + 72);
    if (v46 < -6.0e10)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v124) = 4;
      sub_1D0D49EE8(v9, v128);
      v119 = v45 * 0.000000001;
      cnprint::CNPrinter::Print(__p, &v124, "#svdb,Incoming t0,%.3f,is less than stored by threshold %.3f,Stored,%.3f,SV,%s", v47, v48, v49, v50, v51, SLOBYTE(v119));
      if (SHIBYTE(v129) < 0)
      {
        operator delete(v128[0]);
      }
    }

    if (*(a1 + 72) != 1)
    {
      goto LABEL_58;
    }

    if (*(v44 + 64) == 8 && raven::GnssSvDatabase::AggregateHealthL5((v44 + 64)))
    {
      if (fabs(v46) < 1000000.0)
      {
        v52 = 0;
        goto LABEL_53;
      }

LABEL_58:
      v74 = *(v9 + 224);
      if (v74 == *(v9 + 232) || !*v74 || (*(v74 + 8) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v11 != v44)
        {
          goto LABEL_62;
        }

LABEL_81:
        v128[0] = v130;
        v96 = sub_1D0C36B00(a1, v132, v133);
        v97 = *v9;
        *(v96 + 80) = *(v9 + 16);
        *(v96 + 4) = v97;
        sub_1D0C36CAC((v96 + 11), (v9 + 24));
        v98 = *(v9 + 56);
        v99 = *(v9 + 72);
        v100 = *(v9 + 88);
        *(v96 + 21) = *(v9 + 104);
        *(v96 + 19) = v100;
        *(v96 + 17) = v99;
        *(v96 + 15) = v98;
        v101 = *(v9 + 120);
        v102 = *(v9 + 136);
        v103 = *(v9 + 152);
        *(v96 + 232) = *(v9 + 168);
        *(v96 + 27) = v103;
        *(v96 + 25) = v102;
        *(v96 + 23) = v101;
        v104 = *(v9 + 176);
        v105 = *(v9 + 192);
        *(v96 + 270) = *(v9 + 206);
        *(v96 + 15) = v104;
        *(v96 + 16) = v105;
        if (v96 + 8 != v9)
        {
          sub_1D0C36E20(v96 + 36, *(v9 + 224), *(v9 + 232), 0xCCCCCCCCCCCCCCCDLL * ((*(v9 + 232) - *(v9 + 224)) >> 3));
        }

        *(v96 + 78) = *(v9 + 248);
        goto LABEL_84;
      }

      v95 = (*(v74 + 16) & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000;
      if (v11 == v44 || v95)
      {
        goto LABEL_81;
      }

LABEL_62:
      v75 = *(v44 + 288);
      v76 = *(v44 + 296);
      if (v75 == v76 || !*v75 || (*(v75 + 8) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*(v75 + 16) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *(v44 + 312) > 179)
      {
        goto LABEL_81;
      }

      v128[0] = 0;
      v128[1] = 0;
      v129 = 0;
      sub_1D0C328B8(v128, v75, v76, 0xCCCCCCCCCCCCCCCDLL * ((v76 - v75) >> 3));
      v77 = *(v44 + 312);
      v78 = *(v9 + 16);
      *(v44 + 64) = *v9;
      *(v44 + 80) = v78;
      sub_1D0C36CAC(v44 + 88, (v9 + 24));
      v79 = *(v9 + 56);
      v80 = *(v9 + 72);
      v81 = *(v9 + 88);
      *(v44 + 168) = *(v9 + 104);
      *(v44 + 152) = v81;
      *(v44 + 136) = v80;
      *(v44 + 120) = v79;
      v82 = *(v9 + 120);
      v83 = *(v9 + 136);
      v84 = *(v9 + 152);
      *(v44 + 232) = *(v9 + 168);
      *(v44 + 216) = v84;
      *(v44 + 200) = v83;
      *(v44 + 184) = v82;
      v85 = *(v9 + 176);
      v86 = *(v9 + 192);
      *(v44 + 270) = *(v9 + 206);
      *(v44 + 240) = v85;
      *(v44 + 256) = v86;
      if (v44 + 64 != v9)
      {
        sub_1D0C36E20((v44 + 288), *(v9 + 224), *(v9 + 232), 0xCCCCCCCCCCCCCCCDLL * ((*(v9 + 232) - *(v9 + 224)) >> 3));
      }

      *(v44 + 312) = *(v9 + 248);
      v87 = *(v44 + 288);
      if (v87)
      {
        *(v44 + 296) = v87;
        operator delete(v87);
        *(v44 + 288) = 0;
        *(v44 + 296) = 0;
        *(v44 + 304) = 0;
      }

      *(v44 + 288) = *v128;
      *(v44 + 304) = v129;
      v128[1] = 0;
      v129 = 0;
      v128[0] = 0;
      *(v44 + 312) = v77 + 1;
      if (!cnprint::CNPrinter::GetLogLevel(v87))
      {
        v124 = 12;
        v123 = 0;
        sub_1D0D49EE8(v9, __p);
        v93 = __p;
        if (v127 < 0)
        {
          LOBYTE(v93) = __p[0];
        }

        cnprint::CNPrinter::Print(&v124, &v123, "#svdb,Filled SvBandCorr gap,SV,%s,age,%d", v88, v89, v90, v91, v92, v93);
        if (v127 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v94 = v128[0];
      if (v128[0])
      {
        v128[1] = v128[0];
LABEL_78:
        operator delete(v94);
      }
    }

    else
    {
      if (*v9 != 8)
      {
        goto LABEL_58;
      }

      v59 = raven::GnssSvDatabase::AggregateHealthL5(v9);
      v60 = fabs(v46) >= 1000000.0 || v59 == 0;
      if (v60)
      {
        goto LABEL_58;
      }

      v52 = 1;
LABEL_53:
      raven::GnssSvDatabase::MergeMultiFreqInfoSplitBetweenTwoIndications((v44 + 64), v9, v128);
      v61 = v128[0];
      v128[0] = 0;
      sub_1D0C36F80(&v125, v61);
      v62 = sub_1D0C36F80(v128, 0);
      v63 = v125;
      if (v125)
      {
        v128[0] = v130;
        v64 = sub_1D0C36B00(a1, v132, v133);
        v65 = *v63;
        *(v64 + 80) = *(v63 + 16);
        *(v64 + 4) = v65;
        sub_1D0C36CAC((v64 + 11), (v63 + 24));
        v66 = *(v63 + 56);
        v67 = *(v63 + 72);
        v68 = *(v63 + 88);
        *(v64 + 21) = *(v63 + 104);
        *(v64 + 19) = v68;
        *(v64 + 17) = v67;
        *(v64 + 15) = v66;
        v69 = *(v63 + 120);
        v70 = *(v63 + 136);
        v71 = *(v63 + 152);
        *(v64 + 232) = *(v63 + 168);
        *(v64 + 27) = v71;
        *(v64 + 25) = v70;
        *(v64 + 23) = v69;
        v72 = *(v63 + 176);
        v73 = *(v63 + 192);
        *(v64 + 270) = *(v63 + 206);
        *(v64 + 15) = v72;
        *(v64 + 16) = v73;
        if (v64 + 8 != v63)
        {
          sub_1D0C36E20(v64 + 36, *(v63 + 224), *(v63 + 232), 0xCCCCCCCCCCCCCCCDLL * ((*(v63 + 232) - *(v63 + 224)) >> 3));
        }

        *(v64 + 78) = *(v63 + 248);
        goto LABEL_84;
      }

      if (v52)
      {
        goto LABEL_58;
      }

      if (cnprint::CNPrinter::GetLogLevel(v62) <= 1)
      {
        LOWORD(__p[0]) = 12;
        LOBYTE(v124) = 1;
        sub_1D0D49EE8(v9, v128);
        v116 = v128;
        if (v129 < 0)
        {
          LOBYTE(v116) = v128[0];
        }

        v121 = *(v9 + 8) * 0.000000001;
        cnprint::CNPrinter::Print(__p, &v124, "#svdb,MergeSplitInfo,Ignored incoming ephemeris which could not be merged,SV,%s,t0,%.3f", v111, v112, v113, v114, v115, v116);
        if (SHIBYTE(v129) < 0)
        {
          v94 = v128[0];
          goto LABEL_78;
        }
      }
    }

LABEL_84:
    sub_1D0C36F80(&v125, 0);
LABEL_85:
    if (v131 < 0)
    {
      operator delete(v130[0]);
    }

    v9 += 256;
  }

  while (v9 != v10);
LABEL_113:
  if (!*(a1 + 16))
  {
    LOWORD(v130[0]) = 12;
    LOBYTE(v128[0]) = 3;
    cnprint::CNPrinter::Print(v130, v128, "#svdb,No SV data is currently available", a4, a5, a6, a7, a8, v118);
  }

  return 1;
}

void sub_1D0C368DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_1D0C36F80(&a17, 0);
  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1D0C369C4(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*a1 > 7)
  {
    switch(v3)
    {
      case 8:
        LOBYTE(v3) = 3;
        break;
      case 16:
        LOBYTE(v3) = 5;
        break;
      case 64:
        LOBYTE(v3) = 6;
        break;
      default:
LABEL_12:
        v5 = 0;
        result = 0;
        *(a2 + 24) = 0;
        goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v3 == 1)
  {
    result = 1;
    *(a2 + 24) = 1;
    *(a2 + 28) = 0;
    v5 = *(a1 + 4);
LABEL_18:
    *(a2 + 28) = v5;
    return result;
  }

  if (v3 != 2)
  {
    if (v3 != 4)
    {
      goto LABEL_12;
    }

LABEL_16:
    *(a2 + 24) = v3;
    *(a2 + 28) = 0;
    v5 = *(a1 + 4);
    goto LABEL_17;
  }

  result = 0;
  *(a2 + 24) = 2;
  *(a2 + 28) = 0;
  v5 = *(a1 + 4);
  if ((v5 - 1) < 0x18)
  {
LABEL_17:
    result = 1;
    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1D0C36A78(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *(a2 + 24);
  v6 = *(a2 + 28);
  v7 = v2;
  do
  {
    v8 = *(v3 + 56);
    if (v8 == v5)
    {
      v9 = v6 < *(v3 + 60);
    }

    else
    {
      v9 = v5 < v8;
    }

    v10 = !v9;
    if (v9)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v7 = v3;
    }

    v3 = *(v3 + v11);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 56);
  v13 = *(v7 + 60) < v6;
  v14 = v5 == v12 ? v13 : v12 < v5;
  if (v14 == 1)
  {
    return v2;
  }

  return v7;
}

uint64_t *sub_1D0C36B00(uint64_t a1, unsigned __int8 a2, int a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_11:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 56);
      v6 = *(v4 + 15);
      v7 = v6 < a3;
      if (v5 != a2)
      {
        v7 = v5 < a2;
      }

      if (!v7)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_11;
      }
    }

    v8 = v6 > a3;
    v9 = v5 == a2;
    v10 = v5 > a2;
    if (v9)
    {
      v10 = v8;
    }

    if (!v10)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_11;
    }
  }
}

void sub_1D0C36CAC(uint64_t a1, const void **a2)
{
  if (*(a1 + 24) == *(a2 + 24))
  {
    if (a1 != a2 && *(a1 + 24))
    {
      v3 = *a2;
      v4 = a2[1];
      v5 = v4 - *a2;
      v6 = *(a1 + 16);
      v7 = *a1;
      if (v6 - *a1 < v5)
      {
        v8 = v5 >> 5;
        if (v7)
        {
          *(a1 + 8) = v7;
          operator delete(v7);
          v6 = 0;
          *a1 = 0;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;
        }

        if (!(v8 >> 59))
        {
          v9 = v6 >> 4;
          if (v6 >> 4 <= v8)
          {
            v9 = v5 >> 5;
          }

          if (v6 >= 0x7FFFFFFFFFFFFFE0)
          {
            v10 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v10 = v9;
          }

          sub_1D0C32760(a1, v10);
        }

        sub_1D0C5663C();
      }

      v12 = *(a1 + 8);
      v13 = v12 - v7;
      if (v12 - v7 >= v5)
      {
        if (v4 != v3)
        {
          memmove(v7, v3, v5);
        }

        v15 = &v7[v5];
      }

      else
      {
        v14 = &v3[v13];
        if (v12 != v7)
        {
          memmove(*a1, *a2, v13);
          v12 = *(a1 + 8);
        }

        if (v4 != v14)
        {
          memmove(v12, v14, v4 - v14);
        }

        v15 = &v12[v4 - v14];
      }

      *(a1 + 8) = v15;
    }
  }

  else if (*(a1 + 24))
  {
    v11 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v11;
      operator delete(v11);
    }

    *(a1 + 24) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_1D0C327F0(a1, *a2, a2[1], (a2[1] - *a2) >> 5);
    *(a1 + 24) = 1;
  }
}

void *sub_1D0C36E20(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x333333333333333)
      {
        v11 = 0x666666666666666;
      }

      else
      {
        v11 = v10;
      }

      sub_1D0C3286C(v6, v11);
    }

    sub_1D0C5663C();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v12 - v8) >> 3) >= a4)
  {
    v17 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v17 - 7);
    }

    v16 = &v8[v17];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13 - 7);
      v12 = v6[1];
    }

    v15 = a3 - v14;
    if (a3 != v14)
    {
      result = memmove(v12, v14, v15 - 7);
    }

    v16 = &v12[v15];
  }

  v6[1] = v16;
  return result;
}

uint64_t *sub_1D0C36F80(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = *(v2 + 224);
    if (v3)
    {
      *(v2 + 232) = v3;
      operator delete(v3);
    }

    if (*(v2 + 48) == 1)
    {
      v4 = *(v2 + 24);
      if (v4)
      {
        *(v2 + 32) = v4;
        operator delete(v4);
      }
    }

    JUMPOUT(0x1D387ECA0);
  }

  return result;
}

uint64_t raven::GnssMeasurementPreprocessor::GetCNSatIDFromGnssId(cnprint::CNPrinter *a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*a1 & 1) == 0)
  {
    if (cnprint::CNPrinter::GetLogLevel(a1) <= 1)
    {
      LOWORD(__p[0]) = 12;
      LOBYTE(v30) = 1;
      cnprint::CNPrinter::Print(__p, &v30, "#gmp,GetCNSatIDFromGnssId,not configured", v13, v14, v15, v16, v17, v25);
    }

    return 0;
  }

  v30 = *a2;
  if (v30 == 2)
  {
    v8 = (v30 >> 16) >> 24;
    v9 = *(a1 + 130);
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = (a1 + 1040);
    v11 = *(a1 + 130);
    do
    {
      if (*(v11 + 28) >= v8)
      {
        v10 = v11;
      }

      v11 = *(v11 + 8 * (*(v11 + 28) < v8));
    }

    while (v11);
    if (v10 == (a1 + 1040) || *(v10 + 7) > v8)
    {
LABEL_10:
      LOWORD(__p[0]) = 12;
      LOBYTE(v29) = 3;
      cnprint::CNPrinter::Print(__p, &v29, "#gmp,Slot number for frequency could not be found in active list,freq,%i", a4, a5, a6, a7, a8, v8);
      return 0;
    }

    while (1)
    {
      while (1)
      {
        v12 = *(v9 + 7);
        if (v12 <= v8)
        {
          break;
        }

        v9 = *v9;
        if (!v9)
        {
          goto LABEL_17;
        }
      }

      if (v12 >= v8)
      {
        break;
      }

      v9 = v9[1];
      if (!v9)
      {
LABEL_17:
        sub_1D0C543A8("map::at:  key not found");
      }
    }

    BYTE4(v30) = *(v9 + 8);
  }

  if ((sub_1D0C369C4(&v30, a3) & 1) == 0)
  {
    v29 = 12;
    v28 = 4;
    sub_1D0D49EE8(&v30, __p);
    if (v27 >= 0)
    {
      v24 = __p;
    }

    else
    {
      LOBYTE(v24) = __p[0];
    }

    cnprint::CNPrinter::Print(&v29, &v28, "#gmp,Could not fill in CN sat ID for SV,SV,%s", v19, v20, v21, v22, v23, v24);
    if (v27 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return 1;
}

void sub_1D0C37190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1D0C371AC(char *a1)
{
  if (a1)
  {
    sub_1D0C371AC(*a1);
    sub_1D0C371AC(*(a1 + 1));
    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

uint64_t raven::GnssSvDatabase::PopulateGnssUTCParametersWithGps(raven::GnssSvDatabase *this, cnnavigation::GNSSUTCParameters *a2, double a3, int8x16_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v10 = *(this + 112);
  if (v10 == 1 && (*(this + 144) & 1) != 0)
  {
    *(a2 + 33) = 0;
    *(a2 + 50) = 0u;
    *(a2 + 34) = 0u;
    *(a2 + 18) = 0u;
    *(a2 + 2) = 0u;
    *a2 = 257;
    *&v13 = *(this + 10) / 1000000000.0;
    v20 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v20, 0, v13, a4);
    *(a2 + 24) = v20;
    v14 = *(this + 88);
    v15 = vdivq_f64(v14, vdupq_n_s64(0x41CDCD6500000000uLL));
    *(a2 + 8) = v15;
    v16 = *(this + 60);
    *(a2 + 10) = v16;
    if (v16 == -32768 || (v17 = *(this + 16)) == 0 || *(this + 122) != 2 || (v18 = *(this + 68), v18 == 0x8000))
    {
      *(a2 + 16) = v16;
    }

    else
    {
      *(a2 + 16) = v18;
      *v15.i64 = v17 / 1000000000.0;
      v20 = 0uLL;
      CNTimeSpan::SetTimeSpan(&v20, 0, v15, v14);
      *(a2 + 3) = v20;
    }

    return 1;
  }

  else
  {
    LOWORD(v20) = 12;
    v21 = 3;
    cnprint::CNPrinter::Print(&v20, &v21, "#svdb,Could not populate GPS to UTC conversion parameters,subsecond,%i,leapsecond,%i", a6, a7, a8, a9, a10, v10);
    return 0;
  }
}

uint64_t raven::GnssSvDatabase::PopulateGnssSvData(raven::GnssSvDatabase *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v35 = 0;
  v38 = 0;
  v45 = 0;
  v52 = 0;
  v59 = 0;
  memset(&v35[8], 0, 36);
  v36 = 0uLL;
  v37 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v55 = 0;
  v54 = 0u;
  v53 = 0u;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v60 = 0u;
  v61 = 0u;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v34 = raven::GnssSvDatabase::PopulateGnssUtcParameters(a1, v35, a3, a4, a5, a6, a7, a8);
  if (!v34)
  {
    return v34;
  }

  v12 = v36;
  *(a4 + 32) = *&v35[32];
  *(a4 + 48) = v12;
  *(a4 + 64) = v37;
  v13 = *&v35[16];
  *a4 = *v35;
  *(a4 + 16) = v13;
  sub_1D0BCA40C(a3);
  v16 = *a1;
  v14 = (a1 + 8);
  v15 = v16;
  if (v16 == v14)
  {
    return v34;
  }

  do
  {
    if (*(a2 + 24) != 1)
    {
      goto LABEL_24;
    }

    sub_1D0B751F4(&v70, &unk_1D0ED80C5);
    v72 = 0;
    v73 = -1;
    if ((sub_1D0C369C4((v15 + 8), &v70) & 1) == 0)
    {
      v69 = 12;
      v68 = 4;
      sub_1D0D49EE8((v15 + 8), v66);
      v29 = v66;
      if (v67 < 0)
      {
        LOBYTE(v29) = v66[0];
      }

      cnprint::CNPrinter::Print(&v69, &v68, "#svdb,Unexpected failure to convert to CN id,%s", v24, v25, v26, v27, v28, v29);
      if (v67 < 0)
      {
        operator delete(v66[0]);
      }

LABEL_19:
      v30 = 0;
      goto LABEL_20;
    }

    v17 = *(a2 + 8);
    if (!v17)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v18 = *(v17 + 56);
      v19 = v18 < v72;
      v20 = *(v17 + 15);
      if (v72 == v18)
      {
        v19 = v20 < v73;
      }

      if (v19)
      {
        goto LABEL_13;
      }

      v21 = v73 < v20;
      v22 = v72 == v18;
      v23 = v72 < v18;
      if (v22)
      {
        v23 = v21;
      }

      if (!v23)
      {
        break;
      }

      ++v17;
LABEL_13:
      v17 = *v17;
      if (!v17)
      {
        goto LABEL_19;
      }
    }

    v30 = 1;
LABEL_20:
    if (v71 < 0)
    {
      operator delete(v70);
      if (!v30)
      {
        goto LABEL_25;
      }

LABEL_24:
      operator new();
    }

    if (v30)
    {
      goto LABEL_24;
    }

LABEL_25:
    v31 = v15[1];
    if (v31)
    {
      do
      {
        v32 = v31;
        v31 = *v31;
      }

      while (v31);
    }

    else
    {
      do
      {
        v32 = v15[2];
        v22 = *v32 == v15;
        v15 = v32;
      }

      while (!v22);
    }

    v15 = v32;
  }

  while (v32 != v14);
  return v34;
}

uint64_t raven::GnssSvDatabase::PopulateGnssUtcParameters(raven::GnssSvDatabase *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  memset(v49, 0, 46);
  memset(&v47[47], 0, 46);
  memset(&v47[32], 0, 42);
  memset(&v47[16], 0, 42);
  memset(v47, 0, 42);
  v48 = 0uLL;
  *a2 = 0;
  v8 = *(v49 + 4);
  v9 = *(&v49[2] + 4);
  *(a2 + 28) = *(&v49[3] + 6);
  *(a2 + 18) = v9;
  *(a2 + 2) = v8;
  *(a2 + 44) = 0;
  v10 = v49[0];
  *(a2 + 48) = v48;
  *(a2 + 64) = v10;
  *(a2 + 68) = 0;
  *(a2 + 72) = 0;
  v11 = (a2 + 72);
  v12 = *&v47[48];
  v13 = *&v47[52];
  *(a2 + 100) = *(&v47[54] + 2);
  *(a2 + 90) = v13;
  *(a2 + 74) = v12;
  *(a2 + 116) = 0;
  *(a2 + 120) = 0uLL;
  *(a2 + 136) = LOBYTE(v47[47]);
  *(a2 + 144) = 0;
  v14 = (a2 + 144);
  *(a2 + 172) = *(&v47[38] + 2);
  *(a2 + 162) = *&v47[36];
  *(a2 + 146) = *&v47[32];
  *(a2 + 188) = 0;
  *(a2 + 208) = 0;
  *(a2 + 216) = 0;
  v15 = a2 + 216;
  *(a2 + 192) = 0uLL;
  *(a2 + 212) = 0;
  *(a2 + 244) = *(&v47[22] + 2);
  *(a2 + 234) = *&v47[20];
  *(a2 + 218) = *&v47[16];
  *(a2 + 260) = 0;
  *(a2 + 264) = 0uLL;
  *(a2 + 280) = 0;
  *(a2 + 284) = 0;
  *(a2 + 288) = 0;
  *(a2 + 316) = *(&v47[6] + 2);
  *(a2 + 306) = *&v47[4];
  *(a2 + 290) = *v47;
  *(a2 + 332) = 0;
  *(a2 + 336) = 0uLL;
  *(a2 + 352) = 0;
  *(a2 + 356) = 0;
  v16 = *(a1 + 112);
  if (v16 == 1 && (*(a1 + 144) & 1) != 0)
  {
    raven::GnssSvDatabase::PopulateGnssUTCParametersWithGps(a1, a2, 0.0, *&v47[4], a3, a4, a5, a6, a7, a8);
    raven::GnssSvDatabase::PopulateGnssUTCParametersWithGlonass(a1, v11, v19, v20, v21, v22, v23, v24, v25, v26);
    raven::GnssSvDatabase::PopulateGnssUTCParametersWithGalileo(a1, v14, v27, v28, v29, v30, v31, v32);
    raven::GnssSvDatabase::PopulateGnssUTCParametersWithBeiDou(a1, v15, v39, v33, v34, v35, v36, v37, v38);
    if (*(a1 + 73) == 1)
    {
      raven::GnssSvDatabase::PopulateGnssUTCParametersWithNavic(a1, (v15 + 72), v40, v41, v42, v43, v44, v45);
    }

    *(a2 + 160) = 0;
    *(a2 + 88) = 0;
    *(a2 + 16) = 0;
    *(a2 + 232) = 0;
    result = 1;
    *(a2 + 304) = 0;
  }

  else
  {
    WORD2(v49[0]) = 12;
    LOBYTE(v47[48]) = 3;
    cnprint::CNPrinter::Print((v49 + 4), &v47[48], "#svdb,Cannot populate Sv Data,no time conversion from GPS to UTC,Subsecond,%i,Leapsecond,%i", a4, a5, a6, a7, a8, v16);
    return 0;
  }

  return result;
}

BOOL raven::GnssSvDatabase::PopulateGnssUTCParametersWithGlonass(raven::GnssSvDatabase *this, cnnavigation::GNSSUTCParameters *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, int8x16_t a10)
{
  if ((*(this + 144) & 1) == 0)
  {
    LOWORD(v28) = 12;
    v29 = 3;
    cnprint::CNPrinter::Print(&v28, &v29, "#svdb,Failed to populate Glonass to UTC conversion parameters due to no leap second info", a4, a5, a6, a7, a8, v26);
    return 0;
  }

  v12 = *(this + 112);
  if (v12 == 1 && *(this + 168) == 1)
  {
    *a2 = 512;
    *(a2 + 2) = 0u;
    *(a2 + 18) = 0u;
    *(a2 + 34) = 0u;
    *(a2 + 50) = 0u;
    *(a2 + 33) = 0;
    result = raven::GnssSvDatabase::ConvertGpsWholeSecondTimeToGlonassTime(this, (a2 + 24), *(this + 10) / 1000000000.0, a3, a4, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    *(a2 + 1) = (*(this + 11) + *(this + 20)) / 1000000000.0;
    v20 = *(this + 12) / 1000000000.0;
  }

  else
  {
    if (*(this + 192) != 1)
    {
      LOWORD(v28) = 12;
      v29 = 3;
      v27 = *(this + 168);
      cnprint::CNPrinter::Print(&v28, &v29, "#svdb,Failed to populate Glonass to UTC conversion parameters,gps-to-utc,%i,glonass-to-gps,%i,glonass-to-utc,%i", a4, a5, a6, a7, a8, v12);
      result = 0;
      goto LABEL_19;
    }

    *a2 = 512;
    *(a2 + 2) = 0u;
    *(a2 + 18) = 0u;
    *(a2 + 34) = 0u;
    *(a2 + 50) = 0u;
    *(a2 + 33) = 0;
    *&v21 = *(this + 22) / 1000000000.0;
    v28 = 0uLL;
    CNTimeSpan::SetTimeSpan(&v28, 0, v21, a10);
    *(a2 + 24) = v28;
    *(a2 + 1) = *(this + 23) / 1000000000.0;
    v20 = 0.0;
  }

  *(a2 + 2) = v20;
  v22 = *(this + 60);
  v23 = v22 - 10;
  *(a2 + 10) = v22 - 10;
  if (v22 != -32768)
  {
    v24 = *(this + 16);
    if (v24)
    {
      if (*(this + 122) == 2)
      {
        v25 = *(this + 68);
        if (v25 != 0x8000)
        {
          *(a2 + 16) = v25 - 10;
          if (raven::GnssSvDatabase::ConvertGpsWholeSecondTimeToGlonassTime(this, a2 + 3, v24 / 1000000000.0, v14, v15, v16, v17, v18, v19))
          {
            goto LABEL_17;
          }

          return 0;
        }
      }
    }
  }

  *(a2 + 16) = v23;
LABEL_17:
  result = 1;
LABEL_19:
  *a2 = result;
  return result;
}

BOOL raven::GnssSvDatabase::ConvertGpsWholeSecondTimeToGlonassTime(uint64_t a1, _OWORD *a2, long double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a1 + 144);
  if (a3 >= 0.0 && (*(a1 + 144) & 1) != 0)
  {
    v11 = *(a1 + 120);
    if (v11 != 0x8000)
    {
      v12 = *(a1 + 128);
      if (v12)
      {
        if (*(a1 + 122) == 2 && *(a1 + 136) != 0x8000 && v12 / 1000000000.0 <= a3)
        {
          LOWORD(v11) = *(a1 + 136);
        }
      }
    }

    v33 = 0u;
    v34 = 0u;
    v36 = 0;
    v37 = 0;
    v32 = 513;
    v35 = v11 - 10;
    v38 = v35;
    v13 = (a3 / 604800.0);
    v14 = fmod(a3, 604800.0);
    v15.i64[0] = 0xC1212319A1CAC083;
    *v16.i64 = v14 + -561548.816;
    v39 = 0;
    v40 = 0.0;
    CNTimeSpan::SetTimeSpan(&v39, 604800 * (v13 - 1042), v16, v15);
    v30 = 1;
    v31 = 0.0;
    v17 = cnnavigation::TAITime::ToGLONASSTime(&v39, &v32, &v30);
    v25 = v17 == 0;
    if (v17)
    {
      LOWORD(v28) = 12;
      v29 = 4;
      v27 = v40 + v39;
      cnprint::CNPrinter::Print(&v28, &v29, "#svdb,ConvertGpsWholeSecondTimeToGlonassTime,Failed to convert TAI time to GLONASS time,tai-time,%.3lf", v18, v19, v20, v21, v22, SLOBYTE(v27));
    }

    else
    {
      *v24.i64 = v31;
      *v23.i64 = v31 + (v30 - 1) * 86400.0;
      v28 = 0uLL;
      CNTimeSpan::SetTimeSpan(&v28, 0, v23, v24);
      *a2 = v28;
    }
  }

  else
  {
    v32 = 12;
    LOBYTE(v30) = 3;
    cnprint::CNPrinter::Print(&v32, &v30, "#svdb,Could not converge GPS whole second time to Glonass time,leapsecond,%i,gps-time,%.3lf", a5, a6, a7, a8, a9, v9);
    return 0;
  }

  return v25;
}

uint64_t cnnavigation::TAITime::ToGLONASSTime(uint64_t a1, cnnavigation::GNSSUTCParameters *this, uint64_t a3)
{
  *a3 = 0x80000000;
  *(a3 + 8) = 0x7FF8000000000000;
  IsValid = cnnavigation::GNSSUTCParameters::IsValid(this);
  result = 0xFFFFFFFFLL;
  if (IsValid && *(this + 1) == 2)
  {
    v10 = *a1 / 86400;
    *v7.i64 = *(a1 + 8) + (*a1 - 86400 * v10) + 53935.816 - (*(this + 10) - 3);
    v11 = vcvtmd_s64_f64(*v7.i64 / 86400.0);
    v12 = v11 + v10;
    *v8.i64 = v11;
    *v7.i64 = *v7.i64 - v11 * 86400.0;
    *a3 = v12 + 1462;
    *(a3 + 8) = v7.i64[0];
    v25 = 0;
    v26 = 0;
    CNTimeSpan::SetTimeSpan(&v25, 86400 * (v12 + 1461), v7, v8);
    v13 = sub_1D0B7CF88(&v25, this + 6);
    v16 = *(a3 + 8);
    if (v13)
    {
      v17 = *(this + 16) - *(this + 10);
      *v14.i64 = v17;
      v16 = v16 - v17;
      *(a3 + 8) = v16;
      v24[0] = v17;
      v24[1] = 0;
      v25 = CNTimeSpan::operator+(&v25, v24, v14, v15);
      v26 = v18;
    }

    v19 = *(this + 1);
    v20 = *(this + 2);
    v21 = CNTimeSpan::operator-(&v25, this + 3, v14, v15);
    result = 0;
    v23 = v16 + v19 + v20 * (v22 + v21);
    LODWORD(v21) = vcvtmd_s64_f64(v23 / 86400.0);
    *a3 += v21;
    *(a3 + 8) = v23 - v21 * 86400.0;
  }

  return result;
}

uint64_t raven::GnssSvDatabase::PopulateGnssUTCParametersWithGalileo(raven::GnssSvDatabase *this, cnnavigation::GNSSUTCParameters *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(this + 144);
  if (v9 == 1 && (*(this + 112) & 1) != 0 && (*(this + 224) & 1) != 0)
  {
    *a2 = 768;
    *(a2 + 2) = 0u;
    *(a2 + 18) = 0u;
    *(a2 + 34) = 0u;
    *(a2 + 50) = 0u;
    *(a2 + 33) = 0;
    v11 = *(this + 25) / 1000000000.0;
    LODWORD(v37[0]) = vcvtmd_s64_f64(v11 / 604800.0);
    v37[1] = v11 + SLODWORD(v37[0]) * -604800.0;
    v41 = 0;
    v40 = 0u;
    memset(v39, 0, sizeof(v39));
    cnnavigation::TAITime::TAITime(v38, v37, v39);
    LOWORD(v39[0]) = 0;
    memset(v39 + 8, 0, 36);
    v40 = 0uLL;
    LODWORD(v41) = 0;
    v12 = cnnavigation::TAITime::ToGalileoTime(v38, v39);
    *v14.i64 = floor(v13);
    *v15.i64 = v13 - *v14.i64;
    v39[0] = 0uLL;
    CNTimeSpan::SetTimeSpan(v39, vcvtmd_s64_f64(v13) + 604800 * v12, v15, v14);
    *(a2 + 24) = v39[0];
    v23 = *(this + 12);
    v24.f64[0] = *(this + 26) + *(this + 11) + v23 * 0.0;
    v24.f64[1] = v23 + *(this + 27);
    *(a2 + 8) = vdivq_f64(v24, vdupq_n_s64(0x41CDCD6500000000uLL));
    v25 = *(this + 60);
    *(a2 + 10) = v25;
    if (v25 == -32768 || (v26 = *(this + 16)) == 0 || *(this + 122) != 2 || (v27 = *(this + 68), v27 == 0x8000))
    {
      *(a2 + 16) = v25;
    }

    else
    {
      *(a2 + 16) = v27;
      sub_1D0C345C8(v36, v26 / 1000000000.0, v16, v17, v18, v19, v20, v21, v22);
      cnnavigation::TAITime::TAITime(v37, v36, v28, v29);
      LOWORD(v39[0]) = 0;
      memset(v39 + 8, 0, 36);
      v40 = 0uLL;
      LODWORD(v41) = 0;
      v30 = cnnavigation::TAITime::ToGalileoTime(v37, v39);
      *v32.i64 = floor(v31);
      *v33.i64 = v31 - *v32.i64;
      v39[0] = 0uLL;
      CNTimeSpan::SetTimeSpan(v39, vcvtmd_s64_f64(v31) + 604800 * v30, v33, v32);
      *(a2 + 3) = v39[0];
    }

    result = 1;
    *a2 = 1;
  }

  else
  {
    LOWORD(v39[0]) = 12;
    LOBYTE(v38[0]) = 3;
    v35 = *(this + 224);
    cnprint::CNPrinter::Print(v39, v38, "#svdb,Failed to populate Galileo to UTC conversion parameters,gps-leap-second,%i,gps-to-utc,%i,galileo-to-gps,%i", a4, a5, a6, a7, a8, v9);
    return 0;
  }

  return result;
}

uint64_t cnnavigation::TAITime::ToGalileoTime(cnnavigation::TAITime *this, const cnnavigation::GNSSUTCParameters *a2)
{
  v3 = *this / 604800;
  v4 = *(this + 1) + (*this - 604800 * v3) + 561548.816;
  v5 = vcvtmd_s64_f64(v4 / 604800.0);
  v6 = v4 - v5 * 604800.0;
  v7 = v3 + v5 + 18;
  if (cnnavigation::GNSSUTCParameters::IsValid(a2) && *(a2 + 1) == 3)
  {
    v17[0] = 0;
    v17[1] = 0;
    *v8.i64 = v6;
    *v10.i64 = CNTimeSpan::SetTimeSpan(v17, 604800 * v7, v8, v9);
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    v14 = CNTimeSpan::operator-(v17, a2 + 3, v10, v13);
    v7 += vcvtmd_s64_f64((v6 + v11 + v12 * (v15 + v14)) / 604800.0);
  }

  return v7;
}

uint64_t raven::GnssSvDatabase::PopulateGnssUTCParametersWithBeiDou(raven::GnssSvDatabase *this, cnnavigation::GNSSUTCParameters *a2, int8x16_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(this + 144);
  if (v9 == 1 && (*(this + 112) & 1) != 0)
  {
    v12 = 0uLL;
    a3.i64[0] = 0;
    v13 = 0uLL;
    if (*(this + 256) == 1)
    {
      v13 = *(this + 15);
      *a3.i64 = *(this + 29);
    }

    v33 = v13;
    *a2 = 1024;
    *(a2 + 2) = 0uLL;
    *(a2 + 18) = 0uLL;
    *(a2 + 34) = 0uLL;
    *(a2 + 50) = 0uLL;
    *(a2 + 33) = 0;
    *a3.i64 = *a3.i64 / 1000000000.0;
    v14 = vcvtmd_s64_f64(*a3.i64 / 604800.0);
    *a3.i64 = *a3.i64 + v14 * -604800.0;
    v15 = vcvtmd_s64_f64(*a3.i64) + 604800 * v14;
    *v12.i64 = floor(*a3.i64);
    *a3.i64 = *a3.i64 - *v12.i64;
    *v37 = 0uLL;
    CNTimeSpan::SetTimeSpan(v37, v15, a3, v12);
    *(a2 + 24) = *v37;
    *(a2 + 8) = vdivq_f64(vaddq_f64(v33, *(this + 88)), vdupq_n_s64(0x41CDCD6500000000uLL));
    v23 = *(this + 60);
    *(a2 + 10) = v23;
    if (v23 == -32768 || (v24 = *(this + 16)) == 0 || *(this + 122) != 2 || (v25 = *(this + 68), v25 == 0x8000))
    {
      *(a2 + 16) = v23;
    }

    else
    {
      *(a2 + 16) = v25;
      sub_1D0C345C8(&v34, v24 / 1000000000.0, v16, v17, v18, v19, v20, v21, v22);
      v26.i64[0] = 0xC1212319A1CAC083;
      *v27.i64 = v35 + -561548.816;
      v36[0] = 0;
      v36[1] = 0;
      CNTimeSpan::SetTimeSpan(v36, 604800 * (v34 - 1042), v27, v26);
      *v37 = 0;
      memset(&v37[8], 0, 32);
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 0;
      v28 = cnnavigation::TAITime::ToBeiDouTime(v36, v37);
      *v30.i64 = floor(v29);
      *v31.i64 = v29 - *v30.i64;
      *v37 = 0uLL;
      CNTimeSpan::SetTimeSpan(v37, vcvtmd_s64_f64(v29) + 604800 * v28, v31, v30);
      *(a2 + 3) = *v37;
    }

    result = 1;
    *a2 = 1;
  }

  else
  {
    *v37 = 12;
    LOBYTE(v34) = 3;
    cnprint::CNPrinter::Print(v37, &v34, "#svdb,Failed to populate BeiDou-to-UTC conversion parameters,gps-leap-second,%i,gps-to-utc,%i", a5, a6, a7, a8, a9, v9);
    return 0;
  }

  return result;
}

uint64_t raven::GnssSvDatabase::PopulateGnssSvDataForOneSv(uint64_t a1, uint64_t a2, cnnavigation::GNSSUTCParameters *a3, uint64_t a4)
{
  if ((sub_1D0C369C4(a2, a4) & 1) == 0)
  {
    v55 = 12;
    v54 = 4;
    sub_1D0D49EE8(a2, __p);
    if (v53 >= 0)
    {
      v20 = __p;
    }

    else
    {
      LOBYTE(v20) = __p[0];
    }

    cnprint::CNPrinter::Print(&v55, &v54, "#svdb,Unexpected inability to convert to CNSatId,SV,%s", v15, v16, v17, v18, v19, v20);
    goto LABEL_15;
  }

  std::string::operator=((a4 + 40), a4);
  v7 = *(a4 + 24);
  *(a4 + 64) = v7;
  *(a4 + 248) = *(a2 + 208);
  *(a4 + 256) = *(a2 + 16);
  if (v7 > 3u)
  {
    if (v7 == 4)
    {
      a3 = (a3 + 216);
      IsValid = cnnavigation::GNSSUTCParameters::IsValid(a3);
      if (!IsValid)
      {
        v55 = 12;
        v54 = 3;
        sub_1D0D49EE8(a2, __p);
        if (v53 >= 0)
        {
          v33 = __p;
        }

        else
        {
          LOBYTE(v33) = __p[0];
        }

        cnprint::CNPrinter::Print(&v55, &v54, "#svdb,BDS Conversion to UTC not available,SV,%s", v28, v29, v30, v31, v32, v33);
        goto LABEL_15;
      }

      goto LABEL_41;
    }

    if (v7 == 6)
    {
      a3 = (a3 + 288);
      IsValid = cnnavigation::GNSSUTCParameters::IsValid(a3);
      if (!IsValid)
      {
        v55 = 12;
        v54 = 3;
        sub_1D0D49EE8(a2, __p);
        if (v53 >= 0)
        {
          v51 = __p;
        }

        else
        {
          LOBYTE(v51) = __p[0];
        }

        cnprint::CNPrinter::Print(&v55, &v54, "#svdb,Navic Conversion to UTC not available,SV,%s", v46, v47, v48, v49, v50, v51);
        goto LABEL_15;
      }

      goto LABEL_41;
    }

    if (v7 != 5)
    {
      goto LABEL_31;
    }

LABEL_21:
    IsValid = cnnavigation::GNSSUTCParameters::IsValid(a3);
    if (!IsValid)
    {
      v55 = 12;
      v54 = 3;
      sub_1D0D49EE8(a2, __p);
      if (v53 >= 0)
      {
        v27 = __p;
      }

      else
      {
        LOBYTE(v27) = __p[0];
      }

      cnprint::CNPrinter::Print(&v55, &v54, "#svdb,GPS/QZSS Conversion to UTC not available,SV,%s", v22, v23, v24, v25, v26, v27);
      goto LABEL_15;
    }

    goto LABEL_41;
  }

  if (v7 == 1)
  {
    goto LABEL_21;
  }

  if (v7 == 2)
  {
    a3 = (a3 + 72);
    IsValid = cnnavigation::GNSSUTCParameters::IsValid(a3);
    if (!IsValid)
    {
      v55 = 12;
      v54 = 3;
      sub_1D0D49EE8(a2, __p);
      if (v53 >= 0)
      {
        v45 = __p;
      }

      else
      {
        LOBYTE(v45) = __p[0];
      }

      cnprint::CNPrinter::Print(&v55, &v54, "#svdb,GLONASS Conversion to UTC not available,SV,%s", v40, v41, v42, v43, v44, v45);
      goto LABEL_15;
    }

    goto LABEL_41;
  }

  if (v7 != 3)
  {
LABEL_31:
    v55 = 12;
    v54 = 4;
    sub_1D0D49EE8(a2, __p);
    if (v53 >= 0)
    {
      v39 = __p;
    }

    else
    {
      LOBYTE(v39) = __p[0];
    }

    cnprint::CNPrinter::Print(&v55, &v54, "#svdb,Unhandled SV type,SV,%s", v34, v35, v36, v37, v38, v39);
    goto LABEL_15;
  }

  a3 = (a3 + 144);
  IsValid = cnnavigation::GNSSUTCParameters::IsValid(a3);
  if (!IsValid)
  {
    v55 = 12;
    v54 = 3;
    sub_1D0D49EE8(a2, __p);
    if (v53 >= 0)
    {
      v14 = __p;
    }

    else
    {
      LOBYTE(v14) = __p[0];
    }

    cnprint::CNPrinter::Print(&v55, &v54, "#svdb,Galileo Conversion to UTC not available,SV,%s", v9, v10, v11, v12, v13, v14);
LABEL_15:
    if (v53 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

LABEL_41:
  if (*(a2 + 48) == 1)
  {

    return raven::GnssSvDatabase::PopulateEphemFromAnchorPoints(IsValid, a2);
  }

  else
  {

    return raven::GnssSvDatabase::PopulateEphemFromPolynomial(IsValid, a2, a3, a4);
  }
}