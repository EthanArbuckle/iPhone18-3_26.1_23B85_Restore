uint64_t CLP::LogEntry::PrivateData::MeasurementExtension::default_instance(CLP::LogEntry::PrivateData::MeasurementExtension *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_;
  if (!CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementExtension::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 116);
  if (v2)
  {
    *(this + 8) = 0;
    if ((v2 & 4) != 0)
    {
      v3 = *(this + 16);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 32) = 0;
        v2 = *(this + 116);
      }
    }

    if ((v2 & 8) != 0)
    {
      v4 = *(this + 24);
      if (v4)
      {
        if (*(v4 + 24))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
        }

        *(v4 + 24) = 0;
        v2 = *(this + 116);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      v5 = *(this + 32);
      if (v5)
      {
        if (*(v5 + 24))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 24) = 0;
        v2 = *(this + 116);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v6 = *(this + 40);
      if (v6)
      {
        if (*(v6 + 24))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
        }

        *(v6 + 24) = 0;
        v2 = *(this + 116);
      }
    }

    *(this + 48) = 0;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(this + 56) = 0;
    *(this + 64) = 0;
    *(this + 72) = 0;
    if ((v2 & 0x2000) != 0)
    {
      v7 = *(this + 80);
      if (v7 != MEMORY[0x277D82C30])
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
    }

    *(this + 76) = 0;
  }

  if (*(this + 96) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = *(*(v1 + 88) + 8 * v8);
      this = (*(*v9 + 32))(v9);
      ++v8;
    }

    while (v8 < *(v1 + 96));
  }

  *(v1 + 96) = 0;
  *(v1 + 116) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementExtension::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::MeasurementExtension *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x277D82C30];
  while (2)
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
    switch(TagFallback >> 3)
    {
      case 1u:
        if (v7 != 5)
        {
          goto LABEL_50;
        }

        v77 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v77) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v77;
        *(this + 29) |= 1u;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 != 21)
        {
          continue;
        }

        *(a2 + 1) = v8 + 1;
        goto LABEL_32;
      case 2u:
        if (v7 != 5)
        {
          goto LABEL_50;
        }

LABEL_32:
        v77 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v77) & 1) == 0)
        {
          return 0;
        }

        *(this + 3) = v77;
        v13 = *(this + 29) | 2;
        *(this + 29) = v13;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 != 26)
        {
          continue;
        }

        *(a2 + 1) = v16 + 1;
LABEL_36:
        *(this + 29) = v13 | 4;
        v17 = *(this + 2);
        if (!v17)
        {
          operator new();
        }

        v77 = 0;
        v18 = *(a2 + 1);
        if (v18 >= *(a2 + 2) || *v18 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v77))
          {
            return 0;
          }
        }

        else
        {
          v77 = *v18;
          *(a2 + 1) = v18 + 1;
        }

        v24 = *(a2 + 14);
        v25 = *(a2 + 15);
        *(a2 + 14) = v24 + 1;
        if (v24 >= v25)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::FullSvTime::MergePartialFromCodedStream(v17, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v26 = *(a2 + 14);
        v27 = __OFSUB__(v26, 1);
        v28 = v26 - 1;
        if (v28 < 0 == v27)
        {
          *(a2 + 14) = v28;
        }

        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 != 34)
        {
          continue;
        }

        *(a2 + 1) = v29 + 1;
LABEL_63:
        *(this + 29) |= 8u;
        v30 = *(this + 3);
        if (!v30)
        {
          operator new();
        }

        v77 = 0;
        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v77))
          {
            return 0;
          }
        }

        else
        {
          v77 = *v31;
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
        if (!CLP::LogEntry::PrivateData::SvMeasurementUsage::MergePartialFromCodedStream(v30, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v34 = *(a2 + 14);
        v27 = __OFSUB__(v34, 1);
        v35 = v34 - 1;
        if (v35 < 0 == v27)
        {
          *(a2 + 14) = v35;
        }

        v36 = *(a2 + 1);
        if (v36 >= *(a2 + 2) || *v36 != 42)
        {
          continue;
        }

        *(a2 + 1) = v36 + 1;
LABEL_77:
        *(this + 29) |= 0x10u;
        v37 = *(this + 4);
        if (!v37)
        {
          operator new();
        }

        v77 = 0;
        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v77))
          {
            return 0;
          }
        }

        else
        {
          v77 = *v38;
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
        if (!CLP::LogEntry::PrivateData::SvMeasurementUsage::MergePartialFromCodedStream(v37, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v41 = *(a2 + 14);
        v27 = __OFSUB__(v41, 1);
        v42 = v41 - 1;
        if (v42 < 0 == v27)
        {
          *(a2 + 14) = v42;
        }

        v43 = *(a2 + 1);
        if (v43 >= *(a2 + 2) || *v43 != 50)
        {
          continue;
        }

        *(a2 + 1) = v43 + 1;
LABEL_91:
        *(this + 29) |= 0x20u;
        v44 = *(this + 5);
        if (!v44)
        {
          operator new();
        }

        v77 = 0;
        v45 = *(a2 + 1);
        if (v45 >= *(a2 + 2) || *v45 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v77))
          {
            return 0;
          }
        }

        else
        {
          v77 = *v45;
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
        if (!CLP::LogEntry::PrivateData::SvMeasurementUsage::MergePartialFromCodedStream(v44, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v48 = *(a2 + 14);
        v27 = __OFSUB__(v48, 1);
        v49 = v48 - 1;
        if (v49 < 0 == v27)
        {
          *(a2 + 14) = v49;
        }

        v50 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v50 >= v14 || *v50 != 56)
        {
          continue;
        }

        v20 = v50 + 1;
        *(a2 + 1) = v20;
LABEL_105:
        if (v20 >= v14 || (v51 = *v20, v51 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 12);
          if (!result)
          {
            return result;
          }

          v52 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 12) = v51;
          v52 = v20 + 1;
          *(a2 + 1) = v52;
        }

        *(this + 29) |= 0x40u;
        if (v52 >= v14 || *v52 != 64)
        {
          continue;
        }

        v15 = v52 + 1;
        *(a2 + 1) = v15;
LABEL_113:
        if (v15 >= v14 || (v54 = *v15, v54 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 13);
          if (!result)
          {
            return result;
          }

          v55 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          *(this + 13) = v54;
          v55 = v15 + 1;
          *(a2 + 1) = v55;
        }

        *(this + 29) |= 0x80u;
        if (v55 >= v14 || *v55 != 72)
        {
          continue;
        }

        v23 = v55 + 1;
        *(a2 + 1) = v23;
LABEL_121:
        v77 = 0;
        if (v23 >= v14 || (v56 = *v23, (v56 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v77);
          if (!result)
          {
            return result;
          }

          v56 = v77;
        }

        else
        {
          *(a2 + 1) = v23 + 1;
        }

        if (v56 <= 6)
        {
          *(this + 29) |= 0x100u;
          *(this + 14) = v56;
        }

        v57 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v57 >= v11 || *v57 != 80)
        {
          continue;
        }

        v12 = v57 + 1;
        *(a2 + 1) = v12;
LABEL_131:
        v77 = 0;
        if (v12 >= v11 || (v58 = *v12, (v58 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v77);
          if (!result)
          {
            return result;
          }

          v58 = v77;
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v58 <= 6)
        {
          *(this + 29) |= 0x200u;
          *(this + 15) = v58;
        }

        v59 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v59 >= v21 || *v59 != 88)
        {
          continue;
        }

        v22 = v59 + 1;
        *(a2 + 1) = v22;
LABEL_141:
        v77 = 0;
        if (v22 >= v21 || (v60 = *v22, (v60 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v77);
          if (!result)
          {
            return result;
          }

          v60 = v77;
          v61 = *(a2 + 1);
          v21 = *(a2 + 2);
        }

        else
        {
          v61 = v22 + 1;
          *(a2 + 1) = v61;
        }

        *(this + 16) = v60;
        *(this + 29) |= 0x400u;
        if (v61 >= v21 || *v61 != 101)
        {
          continue;
        }

        *(a2 + 1) = v61 + 1;
LABEL_149:
        v77 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v77) & 1) == 0)
        {
          return 0;
        }

        *(this + 17) = v77;
        *(this + 29) |= 0x800u;
        v62 = *(a2 + 1);
        if (v62 >= *(a2 + 2) || *v62 != 109)
        {
          continue;
        }

        *(a2 + 1) = v62 + 1;
LABEL_153:
        v77 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v77))
        {
          *(this + 18) = v77;
          v19 = *(this + 29) | 0x1000;
          *(this + 29) = v19;
          v63 = *(a2 + 1);
          if (v63 < *(a2 + 2) && *v63 == 114)
          {
            *(a2 + 1) = v63 + 1;
LABEL_157:
            *(this + 29) = v19 | 0x2000;
            if (*(this + 10) == v4)
            {
              operator new();
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
            if (!result)
            {
              return result;
            }

            v64 = *(a2 + 1);
            v10 = *(a2 + 2);
            if (v64 < v10 && *v64 == 120)
            {
              v9 = v64 + 1;
              *(a2 + 1) = v9;
LABEL_163:
              if (v9 >= v10 || (v65 = *v9, v65 < 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 19);
                if (!result)
                {
                  return result;
                }

                v66 = *(a2 + 1);
                v10 = *(a2 + 2);
              }

              else
              {
                *(this + 19) = v65;
                v66 = (v9 + 1);
                *(a2 + 1) = v66;
              }

              *(this + 29) |= 0x4000u;
              if (v10 - v66 >= 2 && *v66 == 130 && v66[1] == 1)
              {
                do
                {
                  *(a2 + 1) = v66 + 2;
LABEL_172:
                  v67 = *(this + 25);
                  v68 = *(this + 24);
                  if (v68 >= v67)
                  {
                    if (v67 == *(this + 26))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 88));
                      v67 = *(this + 25);
                    }

                    *(this + 25) = v67 + 1;
                    operator new();
                  }

                  v69 = *(this + 11);
                  *(this + 24) = v68 + 1;
                  v70 = *(v69 + 8 * v68);
                  v77 = 0;
                  v71 = *(a2 + 1);
                  if (v71 >= *(a2 + 2) || *v71 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v77))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v77 = *v71;
                    *(a2 + 1) = v71 + 1;
                  }

                  v72 = *(a2 + 14);
                  v73 = *(a2 + 15);
                  *(a2 + 14) = v72 + 1;
                  if (v72 >= v73)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!CLP::LogEntry::PrivateData::SignalCorrelationPeak::MergePartialFromCodedStream(v70, a2) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v74 = *(a2 + 14);
                  v27 = __OFSUB__(v74, 1);
                  v75 = v74 - 1;
                  if (v75 < 0 == v27)
                  {
                    *(a2 + 14) = v75;
                  }

                  v66 = *(a2 + 1);
                  v76 = *(a2 + 2);
                }

                while (v76 - v66 > 1 && *v66 == 130 && v66[1] == 1);
                if (v66 == v76 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }
            }
          }

          continue;
        }

        return 0;
      case 3u:
        if (v7 != 2)
        {
          goto LABEL_50;
        }

        v13 = *(this + 29);
        goto LABEL_36;
      case 4u:
        if (v7 == 2)
        {
          goto LABEL_63;
        }

        goto LABEL_50;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_77;
        }

        goto LABEL_50;
      case 6u:
        if (v7 == 2)
        {
          goto LABEL_91;
        }

        goto LABEL_50;
      case 7u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v20 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_105;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_113;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v23 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_121;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_131;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_141;
      case 0xCu:
        if (v7 == 5)
        {
          goto LABEL_149;
        }

        goto LABEL_50;
      case 0xDu:
        if (v7 == 5)
        {
          goto LABEL_153;
        }

        goto LABEL_50;
      case 0xEu:
        if (v7 != 2)
        {
          goto LABEL_50;
        }

        v19 = *(this + 29);
        goto LABEL_157;
      case 0xFu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_50;
        }

        v9 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_163;
      case 0x10u:
        if (v7 == 2)
        {
          goto LABEL_172;
        }

        goto LABEL_50;
      default:
LABEL_50:
        if (v7 == 4)
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

uint64_t CLP::LogEntry::PrivateData::MeasurementExtension::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 116);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 8), a3);
    v6 = *(v5 + 116);
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

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 12), a3);
  v6 = *(v5 + 116);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_26;
  }

LABEL_23:
  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_29;
  }

LABEL_26:
  v9 = *(v5 + 24);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_32;
  }

LABEL_29:
  v10 = *(v5 + 32);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_35;
  }

LABEL_32:
  v11 = *(v5 + 40);
  if (!v11)
  {
    v11 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v11, a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

LABEL_35:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(7, *(v5 + 48), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_37;
  }

LABEL_36:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(8, *(v5 + 52), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(9, *(v5 + 56), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xA, *(v5 + 60), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_40;
  }

LABEL_39:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt32(0xB, *(v5 + 64), a2, a4);
  v6 = *(v5 + 116);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_41;
  }

LABEL_40:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xC, a2, *(v5 + 68), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_42;
  }

LABEL_41:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xD, a2, *(v5 + 72), a3);
  v6 = *(v5 + 116);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_42:
  v12 = *(v5 + 80);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  if ((*(v5 + 116) & 0x4000) != 0)
  {
LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xF, *(v5 + 76), a2, a4);
  }

LABEL_17:
  if (*(v5 + 96) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, *(*(v5 + 88) + 8 * v7++), a2, a4);
    }

    while (v7 < *(v5 + 96));
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementExtension::ByteSize(CLP::LogEntry::PrivateData::MeasurementExtension *this)
{
  v2 = *(this + 29);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_57;
  }

  if ((v2 & 2) != 0)
  {
    v3 = ((v2 << 31 >> 31) & 5) + 5;
  }

  else
  {
    v3 = (v2 << 31 >> 31) & 5;
  }

  if ((v2 & 4) != 0)
  {
    v4 = *(this + 2);
    if (!v4)
    {
      v4 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 16);
    }

    v5 = CLP::LogEntry::PrivateData::FullSvTime::ByteSize(v4);
    v6 = v5;
    if (v5 >= 0x80)
    {
      v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
    }

    else
    {
      v7 = 1;
    }

    v3 += v6 + v7 + 1;
    v2 = *(this + 29);
    if ((v2 & 8) == 0)
    {
LABEL_7:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(this + 3);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 24);
  }

  v9 = *(v8 + 24);
  v10 = (v9 << 31 >> 31) & 5;
  if ((v9 & 2) != 0)
  {
    v10 += 5;
  }

  if ((v9 & 4) != 0)
  {
    v10 += 5;
  }

  if (*(v8 + 24))
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  *(v8 + 20) = v11;
  v3 += v11 + 2;
  v2 = *(this + 29);
  if ((v2 & 0x10) == 0)
  {
LABEL_8:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_39;
  }

LABEL_29:
  v12 = *(this + 4);
  if (!v12)
  {
    v12 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 32);
  }

  v13 = *(v12 + 24);
  v14 = (v13 << 31 >> 31) & 5;
  if ((v13 & 2) != 0)
  {
    v14 += 5;
  }

  if ((v13 & 4) != 0)
  {
    v14 += 5;
  }

  if (*(v12 + 24))
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  *(v12 + 20) = v15;
  v3 += v15 + 2;
  v2 = *(this + 29);
  if ((v2 & 0x20) == 0)
  {
LABEL_9:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_49;
  }

LABEL_39:
  v16 = *(this + 5);
  if (!v16)
  {
    v16 = *(CLP::LogEntry::PrivateData::MeasurementExtension::default_instance_ + 40);
  }

  v17 = *(v16 + 24);
  v18 = (v17 << 31 >> 31) & 5;
  if ((v17 & 2) != 0)
  {
    v18 += 5;
  }

  if ((v17 & 4) != 0)
  {
    v18 += 5;
  }

  if (*(v16 + 24))
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  *(v16 + 20) = v19;
  v3 += v19 + 2;
  v2 = *(this + 29);
  if ((v2 & 0x40) == 0)
  {
LABEL_10:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_53;
  }

LABEL_49:
  v20 = *(this + 12);
  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20) + 1;
    v2 = *(this + 29);
  }

  else
  {
    v21 = 2;
  }

  v3 += v21;
  if ((v2 & 0x80) != 0)
  {
LABEL_53:
    v22 = *(this + 13);
    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22) + 1;
      v2 = *(this + 29);
    }

    else
    {
      v23 = 2;
    }

    v3 += v23;
  }

LABEL_57:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_100;
  }

  if ((v2 & 0x100) == 0)
  {
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_60;
    }

LABEL_68:
    v26 = *(this + 15);
    if ((v26 & 0x80000000) != 0)
    {
      v27 = 11;
    }

    else if (v26 >= 0x80)
    {
      v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26) + 1;
      v2 = *(this + 29);
    }

    else
    {
      v27 = 2;
    }

    v3 += v27;
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_74;
  }

  v24 = *(this + 14);
  if ((v24 & 0x80000000) != 0)
  {
    v25 = 11;
  }

  else if (v24 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
    v2 = *(this + 29);
  }

  else
  {
    v25 = 2;
  }

  v3 += v25;
  if ((v2 & 0x200) != 0)
  {
    goto LABEL_68;
  }

LABEL_60:
  if ((v2 & 0x400) != 0)
  {
LABEL_74:
    v28 = *(this + 16);
    if ((v28 & 0x80000000) != 0)
    {
      v29 = 11;
    }

    else if (v28 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v28) + 1;
      v2 = *(this + 29);
    }

    else
    {
      v29 = 2;
    }

    v3 += v29;
  }

LABEL_80:
  v30 = v3 + 5;
  if ((v2 & 0x800) == 0)
  {
    v30 = v3;
  }

  if ((v2 & 0x1000) != 0)
  {
    v3 = v30 + 5;
  }

  else
  {
    v3 = v30;
  }

  if ((v2 & 0x2000) != 0)
  {
    v31 = *(this + 10);
    v32 = *(v31 + 23);
    v33 = v32;
    v34 = *(v31 + 8);
    if ((v32 & 0x80u) == 0)
    {
      v35 = *(v31 + 23);
    }

    else
    {
      v35 = v34;
    }

    if (v35 >= 0x80)
    {
      v36 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
      v32 = *(v31 + 23);
      v34 = *(v31 + 8);
      v2 = *(this + 29);
      v33 = *(v31 + 23);
    }

    else
    {
      v36 = 1;
    }

    if (v33 < 0)
    {
      v32 = v34;
    }

    v3 += v36 + v32 + 1;
  }

  if ((v2 & 0x4000) != 0)
  {
    v37 = *(this + 19);
    if (v37 >= 0x80)
    {
      v38 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37) + 1;
    }

    else
    {
      v38 = 2;
    }

    v3 += v38;
  }

LABEL_100:
  v39 = *(this + 24);
  v40 = (v3 + 2 * v39);
  if (v39 >= 1)
  {
    v41 = 0;
    do
    {
      v40 = v40 + CLP::LogEntry::PrivateData::SignalCorrelationPeak::ByteSize(*(*(this + 11) + 8 * v41++)) + 1;
    }

    while (v41 < *(this + 24));
  }

  *(this + 28) = v40;
  return v40;
}

void CLP::LogEntry::PrivateData::MeasurementExtension::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::MeasurementExtension *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::MeasurementExtension::CopyFrom(CLP::LogEntry::PrivateData::MeasurementExtension *this, const CLP::LogEntry::PrivateData::MeasurementExtension *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(this, a2);
  }
}

uint64_t CLP::LogEntry::PrivateData::MeasurementExtension::Swap(uint64_t this, CLP::LogEntry::PrivateData::MeasurementExtension *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 8);
    *(this + 8) = *(a2 + 2);
    *(a2 + 2) = v4;
    v5 = *(this + 12);
    *(this + 12) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v6;
    v7 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v7;
    v8 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v8;
    v9 = *(this + 40);
    *(this + 40) = *(a2 + 5);
    *(a2 + 5) = v9;
    LODWORD(v9) = *(this + 48);
    *(this + 48) = *(a2 + 12);
    *(a2 + 12) = v9;
    LODWORD(v9) = *(this + 52);
    *(this + 52) = *(a2 + 13);
    *(a2 + 13) = v9;
    LODWORD(v9) = *(this + 56);
    *(this + 56) = *(a2 + 14);
    *(a2 + 14) = v9;
    LODWORD(v9) = *(this + 60);
    *(this + 60) = *(a2 + 15);
    *(a2 + 15) = v9;
    LODWORD(v9) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v9;
    v10 = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v10;
    v11 = *(this + 72);
    *(this + 72) = *(a2 + 18);
    *(a2 + 18) = v11;
    v12 = *(this + 80);
    *(this + 80) = *(a2 + 10);
    *(a2 + 10) = v12;
    LODWORD(v12) = *(this + 76);
    *(this + 76) = *(a2 + 19);
    *(a2 + 19) = v12;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v13 = *(v3 + 116);
    *(v3 + 116) = *(a2 + 29);
    *(a2 + 29) = v13;
    v14 = *(v3 + 112);
    *(v3 + 112) = *(a2 + 28);
    *(a2 + 28) = v14;
  }

  return this;
}

double CLP::LogEntry::PrivateData::Measurement::SharedCtor(CLP::LogEntry::PrivateData::Measurement *this)
{
  *(this + 27) = 0;
  *(this + 28) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  return result;
}

CLP::LogEntry::PrivateData::Measurement *CLP::LogEntry::PrivateData::Measurement::Measurement(CLP::LogEntry::PrivateData::Measurement *this, const CLP::LogEntry::PrivateData::Measurement *a2)
{
  *this = &unk_2858607F8;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0;
  CLP::LogEntry::PrivateData::Measurement::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::Measurement::MergeFrom(CLP::LogEntry::PrivateData::Measurement *this, const CLP::LogEntry::PrivateData::Measurement *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v27);
  }

  v4 = *(a2 + 28);
  if (!v4)
  {
    goto LABEL_41;
  }

  if (v4)
  {
    *(this + 28) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8);
    }

    CLP::LogEntry::PrivateData::SvId::MergeFrom(v5, v6);
    v4 = *(a2 + 28);
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

  *(this + 28) |= 2u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 16);
  }

  CLP::LogEntry::PrivateData::SyncState::MergeFrom(v7, v8);
  v4 = *(a2 + 28);
  if ((v4 & 4) == 0)
  {
LABEL_7:
    if ((v4 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_24;
  }

LABEL_23:
  v9 = *(a2 + 3);
  *(this + 28) |= 4u;
  *(this + 3) = v9;
  v4 = *(a2 + 28);
  if ((v4 & 8) == 0)
  {
LABEL_8:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_25;
  }

LABEL_24:
  v10 = *(a2 + 4);
  *(this + 28) |= 8u;
  *(this + 4) = v10;
  v4 = *(a2 + 28);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_26:
    *(this + 28) |= 0x20u;
    v12 = *(this + 6);
    if (!v12)
    {
      operator new();
    }

    v13 = *(a2 + 6);
    if (!v13)
    {
      v13 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 48);
    }

    CLP::LogEntry::PrivateData::SvTime::MergeFrom(v12, v13);
    v4 = *(a2 + 28);
    if ((v4 & 0x40) == 0)
    {
LABEL_11:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_36;
    }

    goto LABEL_31;
  }

LABEL_25:
  v11 = *(a2 + 5);
  *(this + 28) |= 0x10u;
  *(this + 5) = v11;
  v4 = *(a2 + 28);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_11;
  }

LABEL_31:
  *(this + 28) |= 0x40u;
  v14 = *(this + 7);
  if (!v14)
  {
    operator new();
  }

  v15 = *(a2 + 7);
  if (!v15)
  {
    v15 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 56);
  }

  CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(v14, v15);
  v4 = *(a2 + 28);
  if ((v4 & 0x80) != 0)
  {
LABEL_36:
    *(this + 28) |= 0x80u;
    v16 = *(this + 8);
    if (!v16)
    {
      operator new();
    }

    v17 = *(a2 + 8);
    if (!v17)
    {
      v17 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 64);
    }

    CLP::LogEntry::PrivateData::PhaseTracking::MergeFrom(v16, v17);
    v4 = *(a2 + 28);
  }

LABEL_41:
  if ((v4 & 0xFF00) == 0)
  {
    return;
  }

  if ((v4 & 0x100) != 0)
  {
    *(this + 28) |= 0x100u;
    v18 = *(this + 9);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 9);
    if (!v19)
    {
      v19 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 72);
    }

    CLP::LogEntry::PrivateData::MeasurementExtension::MergeFrom(v18, v19);
    v4 = *(a2 + 28);
    if ((v4 & 0x200) == 0)
    {
LABEL_44:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_55;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_44;
  }

  v20 = *(a2 + 20);
  *(this + 28) |= 0x200u;
  *(this + 20) = v20;
  v4 = *(a2 + 28);
  if ((v4 & 0x400) == 0)
  {
LABEL_45:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_57;
  }

LABEL_55:
  v21 = *(a2 + 21);
  if (v21 >= 5)
  {
    __assert_rtn("set_multipath_indicator", "CLPGnssMeasApi.pb.h", 9802, "::CLP::LogEntry::PrivateData::MultipathIndicator_IsValid(value)");
  }

  *(this + 28) |= 0x400u;
  *(this + 21) = v21;
  v4 = *(a2 + 28);
  if ((v4 & 0x800) == 0)
  {
LABEL_46:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_47;
    }

LABEL_62:
    v24 = *(a2 + 104);
    *(this + 28) |= 0x1000u;
    *(this + 104) = v24;
    if ((*(a2 + 28) & 0x2000) == 0)
    {
      return;
    }

    goto LABEL_63;
  }

LABEL_57:
  *(this + 28) |= 0x800u;
  v22 = *(this + 11);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 11);
  if (!v23)
  {
    v23 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 88);
  }

  CLP::LogEntry::PrivateData::FrequencyOffset::MergeFrom(v22, v23);
  v4 = *(a2 + 28);
  if ((v4 & 0x1000) != 0)
  {
    goto LABEL_62;
  }

LABEL_47:
  if ((v4 & 0x2000) == 0)
  {
    return;
  }

LABEL_63:
  *(this + 28) |= 0x2000u;
  v25 = *(this + 12);
  if (!v25)
  {
    operator new();
  }

  v26 = *(a2 + 12);
  if (!v26)
  {
    v26 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 96);
  }

  CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergeFrom(v25, v26);
}

void sub_245523B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::Measurement::~Measurement(CLP::LogEntry::PrivateData::Measurement *this)
{
  *this = &unk_2858607F8;
  CLP::LogEntry::PrivateData::Measurement::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858607F8;
  CLP::LogEntry::PrivateData::Measurement::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858607F8;
  CLP::LogEntry::PrivateData::Measurement::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::Measurement::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::Measurement::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[2];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = v1[6];
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = v1[7];
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = v1[8];
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = v1[9];
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = v1[11];
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    this = v1[12];
    if (this)
    {
      v9 = *(*this + 8);

      return v9();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::Measurement::default_instance(CLP::LogEntry::PrivateData::Measurement *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::Measurement::default_instance_;
  if (!CLP::LogEntry::PrivateData::Measurement::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::Measurement::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::Measurement::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 112);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::SvId::Clear(this);
        v2 = *(v1 + 112);
      }
    }

    if ((v2 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::SyncState::Clear(this);
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 40) = 0;
    if ((v2 & 0x20) != 0)
    {
      v3 = *(v1 + 48);
      if (v3)
      {
        if (*(v3 + 32))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
          *(v3 + 24) = 0;
        }

        *(v3 + 32) = 0;
        v2 = *(v1 + 112);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = *(v1 + 56);
      if (v4)
      {
        if (*(v4 + 32))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 32) = 0;
        v2 = *(v1 + 112);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      v5 = *(v1 + 64);
      if (v5)
      {
        if (*(v5 + 48))
        {
          *(v5 + 40) = 0;
          *(v5 + 24) = 0u;
          *(v5 + 8) = 0u;
        }

        *(v5 + 48) = 0;
        v2 = *(v1 + 112);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::MeasurementExtension::Clear(this);
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 80) = 0;
    if ((v2 & 0x800) != 0)
    {
      v6 = *(v1 + 88);
      if (v6)
      {
        if (*(v6 + 32))
        {
          *(v6 + 8) = 0;
          *(v6 + 16) = 0;
          *(v6 + 24) = 0;
        }

        *(v6 + 32) = 0;
        v2 = *(v1 + 112);
      }
    }

    *(v1 + 104) = 0;
    if ((v2 & 0x2000) != 0)
    {
      v7 = *(v1 + 96);
      if (v7)
      {
        if (*(v7 + 32))
        {
          *(v7 + 8) = 0;
          *(v7 + 16) = 0;
          *(v7 + 24) = 0;
        }

        *(v7 + 32) = 0;
      }
    }
  }

  *(v1 + 112) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::Measurement::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::Measurement *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_38;
        }

        *(this + 28) |= 1u;
        v7 = *(this + 1);
        if (!v7)
        {
          operator new();
        }

        v85 = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v8;
          *(a2 + 1) = v8 + 1;
        }

        v19 = *(a2 + 14);
        v20 = *(a2 + 15);
        *(a2 + 14) = v19 + 1;
        if (v19 >= v20)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v21 = *(a2 + 14);
        v22 = __OFSUB__(v21, 1);
        v23 = v21 - 1;
        if (v23 < 0 == v22)
        {
          *(a2 + 14) = v23;
        }

        v24 = *(a2 + 1);
        if (v24 >= *(a2 + 2) || *v24 != 18)
        {
          continue;
        }

        *(a2 + 1) = v24 + 1;
        goto LABEL_50;
      case 2u:
        if (v6 != 2)
        {
          goto LABEL_38;
        }

LABEL_50:
        *(this + 28) |= 2u;
        v25 = *(this + 2);
        if (!v25)
        {
          operator new();
        }

        v85 = 0;
        v26 = *(a2 + 1);
        if (v26 >= *(a2 + 2) || *v26 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v26;
          *(a2 + 1) = v26 + 1;
        }

        v27 = *(a2 + 14);
        v28 = *(a2 + 15);
        *(a2 + 14) = v27 + 1;
        if (v27 >= v28)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::SyncState::MergePartialFromCodedStream(v25, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v29 = *(a2 + 14);
        v22 = __OFSUB__(v29, 1);
        v30 = v29 - 1;
        if (v30 < 0 == v22)
        {
          *(a2 + 14) = v30;
        }

        v31 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v31 >= v9 || *v31 != 24)
        {
          continue;
        }

        v13 = v31 + 1;
        *(a2 + 1) = v13;
LABEL_64:
        if (v13 >= v9 || (v32 = *v13, v32 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 3);
          if (!result)
          {
            return result;
          }

          v33 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 3) = v32;
          v33 = v13 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 28) |= 4u;
        if (v33 >= v9 || *v33 != 32)
        {
          continue;
        }

        v14 = v33 + 1;
        *(a2 + 1) = v14;
LABEL_72:
        if (v14 >= v9 || (v35 = *v14, v35 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 4);
          if (!result)
          {
            return result;
          }

          v36 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 4) = v35;
          v36 = v14 + 1;
          *(a2 + 1) = v36;
        }

        *(this + 28) |= 8u;
        if (v36 >= v9 || *v36 != 40)
        {
          continue;
        }

        v10 = v36 + 1;
        *(a2 + 1) = v10;
LABEL_80:
        if (v10 >= v9 || (v37 = *v10, v37 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
          if (!result)
          {
            return result;
          }

          v38 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          *(this + 5) = v37;
          v38 = v10 + 1;
          *(a2 + 1) = v38;
        }

        v15 = *(this + 28) | 0x10;
        *(this + 28) = v15;
        if (v38 >= v9 || *v38 != 50)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_88:
        *(this + 28) = v15 | 0x20;
        v39 = *(this + 6);
        if (!v39)
        {
          operator new();
        }

        v85 = 0;
        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v40;
          *(a2 + 1) = v40 + 1;
        }

        v41 = *(a2 + 14);
        v42 = *(a2 + 15);
        *(a2 + 14) = v41 + 1;
        if (v41 >= v42)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::SvTime::MergePartialFromCodedStream(v39, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v43 = *(a2 + 14);
        v22 = __OFSUB__(v43, 1);
        v44 = v43 - 1;
        if (v44 < 0 == v22)
        {
          *(a2 + 14) = v44;
        }

        v45 = *(a2 + 1);
        if (v45 >= *(a2 + 2) || *v45 != 58)
        {
          continue;
        }

        *(a2 + 1) = v45 + 1;
LABEL_102:
        *(this + 28) |= 0x40u;
        v46 = *(this + 7);
        if (!v46)
        {
          operator new();
        }

        v85 = 0;
        v47 = *(a2 + 1);
        if (v47 >= *(a2 + 2) || *v47 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v47;
          *(a2 + 1) = v47 + 1;
        }

        v48 = *(a2 + 14);
        v49 = *(a2 + 15);
        *(a2 + 14) = v48 + 1;
        if (v48 >= v49)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(v46, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v50 = *(a2 + 14);
        v22 = __OFSUB__(v50, 1);
        v51 = v50 - 1;
        if (v51 < 0 == v22)
        {
          *(a2 + 14) = v51;
        }

        v52 = *(a2 + 1);
        if (v52 >= *(a2 + 2) || *v52 != 66)
        {
          continue;
        }

        *(a2 + 1) = v52 + 1;
LABEL_116:
        *(this + 28) |= 0x80u;
        v53 = *(this + 8);
        if (!v53)
        {
          operator new();
        }

        v85 = 0;
        v54 = *(a2 + 1);
        if (v54 >= *(a2 + 2) || *v54 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v54;
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
        if (!CLP::LogEntry::PrivateData::PhaseTracking::MergePartialFromCodedStream(v53, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v57 = *(a2 + 14);
        v22 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v58 < 0 == v22)
        {
          *(a2 + 14) = v58;
        }

        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 != 74)
        {
          continue;
        }

        *(a2 + 1) = v59 + 1;
LABEL_130:
        *(this + 28) |= 0x100u;
        v60 = *(this + 9);
        if (!v60)
        {
          operator new();
        }

        v85 = 0;
        v61 = *(a2 + 1);
        if (v61 >= *(a2 + 2) || *v61 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v61;
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
        if (!CLP::LogEntry::PrivateData::MeasurementExtension::MergePartialFromCodedStream(v60, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v64 = *(a2 + 14);
        v22 = __OFSUB__(v64, 1);
        v65 = v64 - 1;
        if (v65 < 0 == v22)
        {
          *(a2 + 14) = v65;
        }

        v66 = *(a2 + 1);
        if (v66 >= *(a2 + 2) || *v66 != 85)
        {
          continue;
        }

        *(a2 + 1) = v66 + 1;
LABEL_144:
        v85 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v85) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = v85;
        *(this + 28) |= 0x200u;
        v67 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v67 >= v17 || *v67 != 88)
        {
          continue;
        }

        v18 = v67 + 1;
        *(a2 + 1) = v18;
LABEL_148:
        v85 = 0;
        if (v18 >= v17 || (v68 = *v18, (v68 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85);
          if (!result)
          {
            return result;
          }

          v68 = v85;
        }

        else
        {
          *(a2 + 1) = v18 + 1;
        }

        if (v68 <= 4)
        {
          *(this + 28) |= 0x400u;
          *(this + 21) = v68;
        }

        v69 = *(a2 + 1);
        if (v69 >= *(a2 + 2) || *v69 != 98)
        {
          continue;
        }

        *(a2 + 1) = v69 + 1;
LABEL_158:
        *(this + 28) |= 0x800u;
        v70 = *(this + 11);
        if (!v70)
        {
          operator new();
        }

        v85 = 0;
        v71 = *(a2 + 1);
        if (v71 >= *(a2 + 2) || *v71 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v71;
          *(a2 + 1) = v71 + 1;
        }

        v72 = *(a2 + 14);
        v73 = *(a2 + 15);
        *(a2 + 14) = v72 + 1;
        if (v72 >= v73)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::FrequencyOffset::MergePartialFromCodedStream(v70, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v74 = *(a2 + 14);
        v22 = __OFSUB__(v74, 1);
        v75 = v74 - 1;
        if (v75 < 0 == v22)
        {
          *(a2 + 14) = v75;
        }

        v76 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v76 >= v11 || *v76 != 104)
        {
          continue;
        }

        v12 = v76 + 1;
        *(a2 + 1) = v12;
LABEL_172:
        v85 = 0;
        if (v12 >= v11 || (v77 = *v12, (v77 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85);
          if (!result)
          {
            return result;
          }

          v77 = v85;
          v78 = *(a2 + 1);
          v11 = *(a2 + 2);
        }

        else
        {
          v78 = v12 + 1;
          *(a2 + 1) = v78;
        }

        *(this + 104) = v77 != 0;
        v16 = *(this + 28) | 0x1000;
        *(this + 28) = v16;
        if (v78 >= v11 || *v78 != 114)
        {
          continue;
        }

        *(a2 + 1) = v78 + 1;
LABEL_180:
        *(this + 28) = v16 | 0x2000;
        v79 = *(this + 12);
        if (!v79)
        {
          operator new();
        }

        v85 = 0;
        v80 = *(a2 + 1);
        if (v80 >= *(a2 + 2) || *v80 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v85))
          {
            return 0;
          }
        }

        else
        {
          v85 = *v80;
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
        if (!CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::MergePartialFromCodedStream(v79, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v83 = *(a2 + 14);
        v22 = __OFSUB__(v83, 1);
        v84 = v83 - 1;
        if (v84 < 0 == v22)
        {
          *(a2 + 14) = v84;
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v13 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_64;
      case 4u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v14 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_72;
      case 5u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_80;
      case 6u:
        if (v6 != 2)
        {
          goto LABEL_38;
        }

        v15 = *(this + 28);
        goto LABEL_88;
      case 7u:
        if (v6 == 2)
        {
          goto LABEL_102;
        }

        goto LABEL_38;
      case 8u:
        if (v6 == 2)
        {
          goto LABEL_116;
        }

        goto LABEL_38;
      case 9u:
        if (v6 != 2)
        {
          goto LABEL_38;
        }

        goto LABEL_130;
      case 0xAu:
        if (v6 == 5)
        {
          goto LABEL_144;
        }

        goto LABEL_38;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_148;
      case 0xCu:
        if (v6 == 2)
        {
          goto LABEL_158;
        }

        goto LABEL_38;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_38;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_172;
      case 0xEu:
        if (v6 != 2)
        {
          goto LABEL_38;
        }

        v16 = *(this + 28);
        goto LABEL_180;
      default:
LABEL_38:
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

uint64_t CLP::LogEntry::PrivateData::Measurement::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 112);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 112);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, *(v5 + 32), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 40), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_25:
  v9 = *(v5 + 48);
  if (!v9)
  {
    v9 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v9, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_31;
  }

LABEL_28:
  v10 = *(v5 + 56);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v10, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_34;
  }

LABEL_31:
  v11 = *(v5 + 64);
  if (!v11)
  {
    v11 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(8, v11, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_37;
  }

LABEL_34:
  v12 = *(v5 + 72);
  if (!v12)
  {
    v12 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v12, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(0xA, a2, *(v5 + 80), a3);
  v6 = *(v5 + 112);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0xB, *(v5 + 84), a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

LABEL_42:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0xD, *(v5 + 104), a2, a4);
    if ((*(v5 + 112) & 0x2000) == 0)
    {
      return this;
    }

    goto LABEL_43;
  }

LABEL_39:
  v13 = *(v5 + 88);
  if (!v13)
  {
    v13 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v13, a2, a4);
  v6 = *(v5 + 112);
  if ((v6 & 0x1000) != 0)
  {
    goto LABEL_42;
  }

LABEL_14:
  if ((v6 & 0x2000) == 0)
  {
    return this;
  }

LABEL_43:
  v14 = *(v5 + 96);
  if (!v14)
  {
    v14 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 96);
  }

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v14, a2, a4);
}

uint64_t CLP::LogEntry::PrivateData::Measurement::ByteSize(CLP::LogEntry::PrivateData::Measurement *this)
{
  v2 = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_50;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_12;
  }

  v4 = *(this + 1);
  if (!v4)
  {
    v4 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 8);
  }

  v5 = CLP::LogEntry::PrivateData::SvId::ByteSize(v4);
  v6 = v5;
  if (v5 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  }

  else
  {
    v7 = 1;
  }

  v3 = (v6 + v7 + 1);
  v2 = *(this + 28);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 2);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 16);
    }

    v9 = CLP::LogEntry::PrivateData::SyncState::ByteSize(v8);
    v10 = v9;
    if (v9 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9);
    }

    else
    {
      v11 = 1;
    }

    v3 = (v3 + v10 + v11 + 1);
    v2 = *(this + 28);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 3)) + 1;
    v2 = *(this + 28);
    if ((v2 & 8) == 0)
    {
LABEL_20:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_27;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_20;
  }

  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 4)) + 1;
  v2 = *(this + 28);
  if ((v2 & 0x10) == 0)
  {
LABEL_21:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_28;
  }

LABEL_27:
  v3 = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5)) + 1;
  v2 = *(this + 28);
  if ((v2 & 0x20) == 0)
  {
LABEL_22:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_36;
  }

LABEL_28:
  v12 = *(this + 6);
  if (!v12)
  {
    v12 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 48);
  }

  v13 = *(v12 + 32);
  v14 = ((v13 << 31) >> 31) & 9;
  if ((v13 & 2) != 0)
  {
    v14 += 9;
  }

  v15 = v14 + ((v13 >> 1) & 2);
  if (*(v12 + 32))
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  *(v12 + 28) = v16;
  v3 = (v3 + v16 + 2);
  v2 = *(this + 28);
  if ((v2 & 0x40) == 0)
  {
LABEL_23:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

LABEL_36:
  v17 = *(this + 7);
  if (!v17)
  {
    v17 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 56);
  }

  v18 = *(v17 + 32);
  v19 = ((v18 << 31) >> 31) & 9;
  if ((v18 & 2) != 0)
  {
    v19 += 9;
  }

  v20 = v19 + ((v18 >> 1) & 2);
  if (*(v17 + 32))
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  *(v17 + 28) = v21;
  v3 = (v3 + v21 + 2);
  v2 = *(this + 28);
  if ((v2 & 0x80) != 0)
  {
LABEL_44:
    v22 = *(this + 8);
    if (!v22)
    {
      v22 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 64);
    }

    v23 = CLP::LogEntry::PrivateData::PhaseTracking::ByteSize(v22);
    v24 = v23;
    if (v23 >= 0x80)
    {
      v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
    }

    else
    {
      v25 = 1;
    }

    v3 = (v3 + v24 + v25 + 1);
    v2 = *(this + 28);
  }

LABEL_50:
  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v26 = *(this + 9);
      if (!v26)
      {
        v26 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 72);
      }

      v27 = CLP::LogEntry::PrivateData::MeasurementExtension::ByteSize(v26);
      v28 = v27;
      if (v27 >= 0x80)
      {
        v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
      }

      else
      {
        v29 = 1;
      }

      LODWORD(v3) = v3 + v28 + v29 + 1;
      v2 = *(this + 28);
    }

    if ((v2 & 0x200) != 0)
    {
      LODWORD(v3) = v3 + 5;
    }

    if ((v2 & 0x400) != 0)
    {
      v30 = *(this + 21);
      if ((v30 & 0x80000000) != 0)
      {
        v31 = 11;
      }

      else if (v30 >= 0x80)
      {
        v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v30) + 1;
        v2 = *(this + 28);
      }

      else
      {
        v31 = 2;
      }

      LODWORD(v3) = v31 + v3;
    }

    if ((v2 & 0x800) != 0)
    {
      v32 = *(this + 11);
      if (!v32)
      {
        v32 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 88);
      }

      v33 = *(v32 + 32);
      v34 = ((v33 << 31) >> 31) & 9;
      if ((v33 & 2) != 0)
      {
        v34 += 9;
      }

      v35 = v34 + ((v33 >> 1) & 2);
      if (*(v32 + 32))
      {
        v36 = v35;
      }

      else
      {
        v36 = 0;
      }

      *(v32 + 28) = v36;
      LODWORD(v3) = v3 + v36 + 2;
      v2 = *(this + 28);
    }

    v3 = ((v2 >> 11) & 2) + v3;
    if ((v2 & 0x2000) != 0)
    {
      v37 = *(this + 12);
      if (!v37)
      {
        v37 = *(CLP::LogEntry::PrivateData::Measurement::default_instance_ + 96);
      }

      v3 = v3 + CLP::LogEntry::PrivateData::FrequencyOffsetFromPhaseTracking::ByteSize(v37) + 2;
    }
  }

  *(this + 27) = v3;
  return v3;
}

void CLP::LogEntry::PrivateData::Measurement::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::Measurement *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::Measurement::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::Measurement::CopyFrom(CLP::LogEntry::PrivateData::Measurement *this, const CLP::LogEntry::PrivateData::Measurement *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::Measurement::MergeFrom(this, a2);
  }
}

float CLP::LogEntry::PrivateData::Measurement::Swap(CLP::LogEntry::PrivateData::Measurement *this, CLP::LogEntry::PrivateData::Measurement *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    v4 = *(this + 3);
    v5 = *(a2 + 3);
    *(this + 2) = *(a2 + 2);
    *(this + 3) = v5;
    *(a2 + 2) = v3;
    *(a2 + 3) = v4;
    v6 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v6;
    v7 = *(this + 5);
    v8 = *(this + 6);
    v9 = *(a2 + 6);
    *(this + 5) = *(a2 + 5);
    *(this + 6) = v9;
    *(a2 + 5) = v7;
    *(a2 + 6) = v8;
    v10 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v10;
    v11 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v11;
    v12 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v12;
    result = *(this + 20);
    *(this + 20) = *(a2 + 20);
    *(a2 + 20) = result;
    LODWORD(v12) = *(this + 21);
    *(this + 21) = *(a2 + 21);
    *(a2 + 21) = v12;
    v14 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v14;
    LOBYTE(v14) = *(this + 104);
    *(this + 104) = *(a2 + 104);
    *(a2 + 104) = v14;
    v15 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v15;
    LODWORD(v15) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v15;
    LODWORD(v15) = *(this + 27);
    *(this + 27) = *(a2 + 27);
    *(a2 + 27) = v15;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::SharedCtor(uint64_t this)
{
  *(this + 28) = 0;
  *(this + 32) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  return this;
}

CLP::LogEntry::PrivateData::ReceiverClockModel *CLP::LogEntry::PrivateData::ReceiverClockModel::ReceiverClockModel(CLP::LogEntry::PrivateData::ReceiverClockModel *this, const CLP::LogEntry::PrivateData::ReceiverClockModel *a2)
{
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_285860870;
  *(this + 24) = 0;
  CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(this, a2);
  return this;
}

float CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(CLP::LogEntry::PrivateData::ReceiverClockModel *this, const CLP::LogEntry::PrivateData::ReceiverClockModel *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 32);
  if (v5)
  {
    if (*(a2 + 32))
    {
      result = *(a2 + 2);
      *(this + 8) |= 1u;
      *(this + 2) = result;
      v5 = *(a2 + 8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 3);
    *(this + 8) |= 2u;
    *(this + 3) = result;
    v5 = *(a2 + 8);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    result = *(a2 + 4);
    *(this + 8) |= 4u;
    *(this + 4) = result;
    v5 = *(a2 + 8);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_14:
    result = *(a2 + 5);
    *(this + 8) |= 8u;
    *(this + 5) = result;
    if ((*(a2 + 8) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    v6 = *(a2 + 24);
    *(this + 8) |= 0x10u;
    *(this + 24) = v6;
  }

  return result;
}

void sub_245525648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::ReceiverClockModel::~ReceiverClockModel(CLP::LogEntry::PrivateData::ReceiverClockModel *this)
{
  *this = &unk_285860870;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860870;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860870;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance(CLP::LogEntry::PrivateData::ReceiverClockModel *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::ReceiverClockModel::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::ReceiverClockModel *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          if (v6 != 2 || v7 != 5)
          {
            goto LABEL_21;
          }

          goto LABEL_28;
        }

        if (v7 != 5)
        {
          goto LABEL_21;
        }

        v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v17) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v17;
        *(this + 8) |= 1u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 21)
        {
          *(a2 + 1) = v10 + 1;
LABEL_28:
          v17 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v17) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v17;
          *(this + 8) |= 2u;
          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 29)
          {
            *(a2 + 1) = v11 + 1;
LABEL_32:
            v17 = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v17) & 1) == 0)
            {
              return 0;
            }

            *(this + 4) = v17;
            *(this + 8) |= 4u;
            v12 = *(a2 + 1);
            if (v12 < *(a2 + 2) && *v12 == 37)
            {
              *(a2 + 1) = v12 + 1;
              goto LABEL_36;
            }
          }
        }
      }

      if (v6 == 3)
      {
        if (v7 != 5)
        {
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      if (v6 != 4)
      {
        break;
      }

      if (v7 != 5)
      {
        goto LABEL_21;
      }

LABEL_36:
      v17 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v17) & 1) == 0)
      {
        return 0;
      }

      *(this + 5) = v17;
      *(this + 8) |= 8u;
      v13 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v13 < v8 && *v13 == 40)
      {
        v9 = v13 + 1;
        *(a2 + 1) = v9;
LABEL_40:
        v17 = 0;
        if (v9 >= v8 || (v14 = *v9, (v14 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v17);
          if (!result)
          {
            return result;
          }

          v14 = v17;
          v15 = *(a2 + 1);
          v8 = *(a2 + 2);
        }

        else
        {
          v15 = v9 + 1;
          *(a2 + 1) = v15;
        }

        *(this + 24) = v14 != 0;
        *(this + 8) |= 0x10u;
        if (v15 == v8 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
      goto LABEL_40;
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

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(1, a2, *(this + 8), a3);
    v6 = *(v5 + 32);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 12), a3);
  v6 = *(v5 + 32);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(4, a2, *(v5 + 20), a3);
    if ((*(v5 + 32) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 32);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockModel::ByteSize(CLP::LogEntry::PrivateData::ReceiverClockModel *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v2 = ((v1 << 31) >> 31) & 5;
    if ((v1 & 2) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 4) != 0)
    {
      v2 += 5;
    }

    if ((v1 & 8) != 0)
    {
      v2 += 5;
    }

    v3 = v2 + ((v1 >> 3) & 2);
  }

  else
  {
    v3 = 0;
  }

  *(this + 7) = v3;
  return v3;
}

float CLP::LogEntry::PrivateData::ReceiverClockModel::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::ReceiverClockModel *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(this, lpsrc);
}

float CLP::LogEntry::PrivateData::ReceiverClockModel::CopyFrom(CLP::LogEntry::PrivateData::ReceiverClockModel *this, const CLP::LogEntry::PrivateData::ReceiverClockModel *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::PrivateData::ReceiverClockModel::Swap(CLP::LogEntry::PrivateData::ReceiverClockModel *this, CLP::LogEntry::PrivateData::ReceiverClockModel *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    result = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = result;
    v6 = *(this + 24);
    *(this + 24) = *(a2 + 24);
    *(a2 + 24) = v6;
    v7 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v7;
    v8 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v8;
  }

  return result;
}

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::SharedCtor(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this)
{
  result = 0.0;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::ReceiverClockCorrections *CLP::LogEntry::PrivateData::ReceiverClockCorrections::ReceiverClockCorrections(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, const CLP::LogEntry::PrivateData::ReceiverClockCorrections *a2)
{
  *this = &unk_2858608E8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, const CLP::LogEntry::PrivateData::ReceiverClockCorrections *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 52);
  if (v5)
  {
    if (*(a2 + 52))
    {
      result = *(a2 + 1);
      *(this + 13) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 13);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 13) |= 2u;
    *(this + 2) = result;
    v5 = *(a2 + 13);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    result = *(a2 + 3);
    *(this + 13) |= 4u;
    *(this + 3) = result;
    v5 = *(a2 + 13);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_14:
    result = *(a2 + 4);
    *(this + 13) |= 8u;
    *(this + 4) = result;
    if ((*(a2 + 13) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    result = *(a2 + 5);
    *(this + 13) |= 0x10u;
    *(this + 5) = result;
  }

  return result;
}

void sub_245525EC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::ReceiverClockCorrections::~ReceiverClockCorrections(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this)
{
  *this = &unk_2858608E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858608E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858608E8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::ReceiverClockCorrections::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockCorrections::Clear(uint64_t this)
{
  if (*(this + 52))
  {
    *(this + 40) = 0;
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 52) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          v13 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
          {
            return 0;
          }

          *(this + 4) = v13;
          *(this + 13) |= 8u;
          v11 = *(a2 + 1);
          if (v11 < *(a2 + 2) && *v11 == 41)
          {
            *(a2 + 1) = v11 + 1;
            goto LABEL_40;
          }
        }

        else
        {
          if (v6 != 5 || v7 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          v13 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v13;
          *(this + 13) |= 0x10u;
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

      if (v7 != 1)
      {
        goto LABEL_21;
      }

      v13 = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v13;
      *(this + 13) |= 1u;
      v8 = *(a2 + 1);
      if (v8 < *(a2 + 2) && *v8 == 17)
      {
        *(a2 + 1) = v8 + 1;
LABEL_28:
        v13 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v13;
        *(this + 13) |= 2u;
        v9 = *(a2 + 1);
        if (v9 < *(a2 + 2) && *v9 == 25)
        {
          *(a2 + 1) = v9 + 1;
LABEL_32:
          v13 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v13) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = v13;
          *(this + 13) |= 4u;
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
  }

  while ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) != 0);
  return 0;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockCorrections::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 52);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v5 = *(v4 + 52);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
  v5 = *(v4 + 52);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v4 + 32), a3);
    if ((*(v4 + 52) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 24), a3);
  v5 = *(v4 + 52);
  if ((v5 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v5 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v6 = *(v4 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, v6, a3);
}

uint64_t CLP::LogEntry::PrivateData::ReceiverClockCorrections::ByteSize(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this)
{
  v1 = *(this + 52);
  if (*(this + 52))
  {
    v2 = ((v1 << 31) >> 31) & 9;
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
      v2 += 9;
    }

    if ((v1 & 0x10) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 12) = v1;
  return v1;
}

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::CopyFrom(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, const CLP::LogEntry::PrivateData::ReceiverClockCorrections *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::ReceiverClockCorrections::Swap(CLP::LogEntry::PrivateData::ReceiverClockCorrections *this, CLP::LogEntry::PrivateData::ReceiverClockCorrections *a2)
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
    result = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = result;
    v7 = *(this + 13);
    *(this + 13) = *(a2 + 13);
    *(a2 + 13) = v7;
    v8 = *(this + 12);
    *(this + 12) = *(a2 + 12);
    *(a2 + 12) = v8;
  }

  return result;
}

double CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::SharedCtor(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this)
{
  *(this + 10) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::ReceiverToGpsTimeConversion(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, const CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *a2)
{
  *this = &unk_285860960;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 0;
  CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, const CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
  }

  LOBYTE(v5) = *(a2 + 40);
  if (v5)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 1);
      *(this + 10) |= 1u;
      *(this + 1) = v6;
      v5 = *(a2 + 10);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    LODWORD(result) = *(a2 + 4);
    *(this + 10) |= 2u;
    *(this + 4) = LODWORD(result);
    v5 = *(a2 + 10);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    LODWORD(result) = *(a2 + 5);
    *(this + 10) |= 4u;
    *(this + 5) = LODWORD(result);
    v5 = *(a2 + 10);
    if ((v5 & 8) == 0)
    {
LABEL_8:
      if ((v5 & 0x10) == 0)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_14:
    result = *(a2 + 3);
    *(this + 10) |= 8u;
    *(this + 3) = result;
    if ((*(a2 + 10) & 0x10) == 0)
    {
      return result;
    }

LABEL_9:
    LODWORD(result) = *(a2 + 8);
    *(this + 10) |= 0x10u;
    *(this + 8) = LODWORD(result);
  }

  return result;
}

void sub_245526714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::~ReceiverToGpsTimeConversion(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this)
{
  *this = &unk_285860960;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860960;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860960;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_;
  if (!CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 32) = 0;
    *(this + 24) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
            goto LABEL_21;
          }

          goto LABEL_36;
        }

        if (v6 == 4)
        {
          if (v7 != 1)
          {
            goto LABEL_21;
          }

LABEL_40:
          *v16 = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 3) = *v16;
          *(this + 10) |= 8u;
          v15 = *(a2 + 1);
          if (v15 < *(a2 + 2) && *v15 == 45)
          {
            *(a2 + 1) = v15 + 1;
            goto LABEL_44;
          }
        }

        else
        {
          if (v6 != 5 || v7 != 5)
          {
            goto LABEL_21;
          }

LABEL_44:
          v16[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 8) = v16[0];
          *(this + 10) |= 0x10u;
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
        goto LABEL_21;
      }

      *v16 = 0;
      v9 = *(a2 + 1);
      v8 = *(a2 + 2);
      if (v9 >= v8 || (v10 = *v9, v10 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, v16);
        if (!result)
        {
          return result;
        }

        v10 = *v16;
        v11 = *(a2 + 1);
        v8 = *(a2 + 2);
      }

      else
      {
        v11 = v9 + 1;
        *(a2 + 1) = v11;
      }

      *(this + 1) = v10;
      *(this + 10) |= 1u;
      if (v11 < v8 && *v11 == 21)
      {
        *(a2 + 1) = v11 + 1;
LABEL_32:
        v16[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v16) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v16[0];
        *(this + 10) |= 2u;
        v13 = *(a2 + 1);
        if (v13 < *(a2 + 2) && *v13 == 29)
        {
          *(a2 + 1) = v13 + 1;
LABEL_36:
          v16[0] = 0;
          if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v16) & 1) == 0)
          {
            return 0;
          }

          *(this + 5) = v16[0];
          *(this + 10) |= 4u;
          v14 = *(a2 + 1);
          if (v14 < *(a2 + 2) && *v14 == 33)
          {
            *(a2 + 1) = v14 + 1;
            goto LABEL_40;
          }
        }
      }
    }

    if (v6 == 2 && v7 == 5)
    {
      goto LABEL_32;
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

uint64_t CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, *(v5 + 16), a3);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 24), a3);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(3, a2, *(v5 + 20), a3);
  v6 = *(v5 + 40);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(5, a2, v7, a3);
}

uint64_t CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::ByteSize(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this)
{
  LOBYTE(v2) = *(this + 40);
  if (v2)
  {
    if (*(this + 40))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 10);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 5;
    }

    if ((v2 & 8) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 0x10) != 0)
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

  *(this + 9) = result;
  return result;
}

double CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::CopyFrom(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, const CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(this, a2);
  }

  return result;
}

float CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::Swap(CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *this, CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    result = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = result;
    LODWORD(v2) = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v2;
    LODWORD(v2) = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v2;
  }

  return result;
}

double CLP::LogEntry::PrivateData::Clock::SharedCtor(CLP::LogEntry::PrivateData::Clock *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::Clock *CLP::LogEntry::PrivateData::Clock::Clock(CLP::LogEntry::PrivateData::Clock *this, const CLP::LogEntry::PrivateData::Clock *a2)
{
  *this = &unk_2858609D8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CLP::LogEntry::PrivateData::Clock::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::Clock::MergeFrom(CLP::LogEntry::PrivateData::Clock *this, const CLP::LogEntry::PrivateData::Clock *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v13);
  }

  LOBYTE(v5) = *(a2 + 44);
  if (!v5)
  {
    return result;
  }

  if ((*(a2 + 44) & 1) == 0)
  {
    if ((*(a2 + 44) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_10:
    *(this + 11) |= 2u;
    v7 = *(this + 2);
    if (!v7)
    {
      operator new();
    }

    v8 = *(a2 + 2);
    if (!v8)
    {
      v8 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 16);
    }

    *&result = CLP::LogEntry::PrivateData::ReceiverClockModel::MergeFrom(v7, v8);
    v5 = *(a2 + 11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

    goto LABEL_15;
  }

  v6 = *(a2 + 1);
  *(this + 11) |= 1u;
  *(this + 1) = v6;
  v5 = *(a2 + 11);
  if ((v5 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  if ((v5 & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_15:
  *(this + 11) |= 4u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    v10 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 24);
  }

  result = CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergeFrom(v9, v10);
  if ((*(a2 + 11) & 8) != 0)
  {
LABEL_20:
    *(this + 11) |= 8u;
    v11 = *(this + 4);
    if (!v11)
    {
      operator new();
    }

    v12 = *(a2 + 4);
    if (!v12)
    {
      v12 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 32);
    }

    return CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergeFrom(v11, v12);
  }

  return result;
}

void sub_2455270AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::Clock::~Clock(CLP::LogEntry::PrivateData::Clock *this)
{
  *this = &unk_2858609D8;
  CLP::LogEntry::PrivateData::Clock::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858609D8;
  CLP::LogEntry::PrivateData::Clock::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2858609D8;
  CLP::LogEntry::PrivateData::Clock::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::Clock::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::Clock::default_instance_ != this)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = v1[3];
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    this = v1[4];
    if (this)
    {
      v4 = *(*this + 8);

      return v4();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::Clock::default_instance(CLP::LogEntry::PrivateData::Clock *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::Clock::default_instance_;
  if (!CLP::LogEntry::PrivateData::Clock::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::Clock::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::Clock::Clear(uint64_t this)
{
  LOBYTE(v1) = *(this + 44);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
      if (v2)
      {
        if (*(v2 + 32))
        {
          *(v2 + 8) = 0;
          *(v2 + 16) = 0;
          *(v2 + 24) = 0;
        }

        *(v2 + 32) = 0;
        v1 = *(this + 44);
      }
    }

    if ((v1 & 4) != 0)
    {
      v3 = *(this + 24);
      if (v3)
      {
        if (*(v3 + 52))
        {
          *(v3 + 40) = 0;
          *(v3 + 24) = 0u;
          *(v3 + 8) = 0u;
        }

        *(v3 + 52) = 0;
        v1 = *(this + 44);
      }
    }

    if ((v1 & 8) != 0)
    {
      v4 = *(this + 32);
      if (v4)
      {
        if (*(v4 + 40))
        {
          *(v4 + 8) = 0;
          *(v4 + 16) = 0;
          *(v4 + 32) = 0;
          *(v4 + 24) = 0;
        }

        *(v4 + 40) = 0;
      }
    }
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::Clock::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::Clock *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
              if (!result)
              {
                return result;
              }

              v12 = *(a2 + 1);
              v9 = *(a2 + 2);
            }

            else
            {
              *(this + 1) = v11;
              v12 = v10 + 1;
              *(a2 + 1) = v12;
            }

            v8 = *(this + 11) | 1;
            *(this + 11) = v8;
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

            v8 = *(this + 11);
LABEL_28:
            *(this + 11) = v8 | 2;
            v14 = *(this + 2);
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
            if (!CLP::LogEntry::PrivateData::ReceiverClockModel::MergePartialFromCodedStream(v14, a2) || *(a2 + 36) != 1)
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
        *(this + 11) |= 4u;
        v22 = *(this + 3);
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
        if (!CLP::LogEntry::PrivateData::ReceiverClockCorrections::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
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
      *(this + 11) |= 8u;
      v29 = *(this + 4);
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
      if (!CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::MergePartialFromCodedStream(v29, a2) || *(a2 + 36) != 1)
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

uint64_t CLP::LogEntry::PrivateData::Clock::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 44);
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

  v7 = *(v5 + 16);
  if (!v7)
  {
    v7 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  v6 = *(v5 + 44);
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
  v8 = *(v5 + 24);
  if (!v8)
  {
    v8 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v8, a2, a4);
  if ((*(v5 + 44) & 8) != 0)
  {
LABEL_13:
    v9 = *(v5 + 32);
    if (!v9)
    {
      v9 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 32);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::Clock::ByteSize(CLP::LogEntry::PrivateData::Clock *this)
{
  LOBYTE(v2) = *(this + 44);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_22;
  }

  if (*(this + 44))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 11);
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 44) & 2) == 0)
    {
      goto LABEL_10;
    }
  }

  v4 = *(this + 2);
  if (!v4)
  {
    v4 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 16);
  }

  v3 = v3 + CLP::LogEntry::PrivateData::ReceiverClockModel::ByteSize(v4) + 2;
  v2 = *(this + 11);
LABEL_10:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  v5 = *(this + 3);
  if (!v5)
  {
    v5 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 24);
  }

  v3 = v3 + CLP::LogEntry::PrivateData::ReceiverClockCorrections::ByteSize(v5) + 2;
  if ((*(this + 11) & 8) != 0)
  {
LABEL_16:
    v6 = *(this + 4);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::PrivateData::Clock::default_instance_ + 32);
    }

    v7 = CLP::LogEntry::PrivateData::ReceiverToGpsTimeConversion::ByteSize(v6);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v3 = (v3 + v8 + v9 + 1);
  }

LABEL_22:
  *(this + 10) = v3;
  return v3;
}

double CLP::LogEntry::PrivateData::Clock::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::Clock *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::Clock::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::Clock::CopyFrom(CLP::LogEntry::PrivateData::Clock *this, const CLP::LogEntry::PrivateData::Clock *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::Clock::MergeFrom(this, a2);
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::Clock::Swap(uint64_t this, CLP::LogEntry::PrivateData::Clock *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    v3 = *(this + 16);
    v4 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    v6 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v6;
    LODWORD(v6) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v6;
    LODWORD(v6) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v6;
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 40) = 0;
  return this;
}

CLP::LogEntry::PrivateData::MeasurementReport *CLP::LogEntry::PrivateData::MeasurementReport::MeasurementReport(CLP::LogEntry::PrivateData::MeasurementReport *this, const CLP::LogEntry::PrivateData::MeasurementReport *a2)
{
  *(this + 5) = 0;
  *this = &unk_285860A50;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(this, a2);
  return this;
}

void sub_245527C4C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v1 + 2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(CLP::LogEntry::PrivateData::MeasurementReport *this, const CLP::LogEntry::PrivateData::MeasurementReport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
  }

  v4 = *(this + 6);
  v5 = *(a2 + 6);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
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
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v15);
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
      CLP::LogEntry::PrivateData::Measurement::MergeFrom(*(v12 + 8 * v11), v9);
      ++v8;
      v7 = *(a2 + 6);
    }

    while (v8 < v7);
  }

  if (*(a2 + 44))
  {
    *(this + 11) |= 1u;
    v13 = *(this + 1);
    if (!v13)
    {
      operator new();
    }

    v14 = *(a2 + 1);
    if (!v14)
    {
      v14 = *(CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8);
    }

    return CLP::LogEntry::PrivateData::Clock::MergeFrom(v13, v14);
  }

  return result;
}

void sub_245527EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::MeasurementReport::~MeasurementReport(CLP::LogEntry::PrivateData::MeasurementReport *this)
{
  *this = &unk_285860A50;
  if (CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ != this)
  {
    v2 = *(this + 1);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 2);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::MeasurementReport::~MeasurementReport(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::MeasurementReport::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ != this)
  {
    this = this[1];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::default_instance(CLP::LogEntry::PrivateData::MeasurementReport *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::MeasurementReport::default_instance_;
  if (!CLP::LogEntry::PrivateData::MeasurementReport::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::MeasurementReport::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::Clear(CLP::LogEntry::PrivateData::MeasurementReport *this)
{
  if (*(this + 44))
  {
    v2 = *(this + 1);
    if (v2)
    {
      CLP::LogEntry::PrivateData::Clock::Clear(v2);
    }
  }

  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Clear<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 16);
  *(this + 11) = 0;
  return result;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::MeasurementReport *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (!CLP::LogEntry::PrivateData::Clock::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
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
          if (!CLP::LogEntry::PrivateData::Measurement::MergePartialFromCodedStream(v18, a2) || *(a2 + 36) != 1)
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

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    v6 = *(this + 8);
    if (!v6)
    {
      v6 = *(CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8);
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

  return this;
}

uint64_t CLP::LogEntry::PrivateData::MeasurementReport::ByteSize(CLP::LogEntry::PrivateData::MeasurementReport *this)
{
  if (*(this + 44))
  {
    v3 = *(this + 1);
    if (!v3)
    {
      v3 = *(CLP::LogEntry::PrivateData::MeasurementReport::default_instance_ + 8);
    }

    v4 = CLP::LogEntry::PrivateData::Clock::ByteSize(v3);
    v5 = v4;
    if (v4 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v4);
    }

    else
    {
      v6 = 1;
    }

    v2 = v5 + v6 + 1;
  }

  else
  {
    v2 = 0;
  }

  v7 = *(this + 6);
  v8 = (v7 + v2);
  if (v7 >= 1)
  {
    v9 = 0;
    do
    {
      v10 = CLP::LogEntry::PrivateData::Measurement::ByteSize(*(*(this + 2) + 8 * v9));
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

    while (v9 < *(this + 6));
  }

  *(this + 10) = v8;
  return v8;
}

double CLP::LogEntry::PrivateData::MeasurementReport::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::MeasurementReport *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::MeasurementReport::CopyFrom(CLP::LogEntry::PrivateData::MeasurementReport *this, const CLP::LogEntry::PrivateData::MeasurementReport *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::MeasurementReport::MergeFrom(this, a2);
  }

  return result;
}

CLP::LogEntry::PrivateData::MeasurementReport *CLP::LogEntry::PrivateData::MeasurementReport::Swap(CLP::LogEntry::PrivateData::MeasurementReport *this, CLP::LogEntry::PrivateData::MeasurementReport *a2)
{
  if (a2 != this)
  {
    v3 = this;
    v4 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v4;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    v6 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
  }

  return this;
}

double CLP::LogEntry::PrivateData::Wgs84Ecef::SharedCtor(CLP::LogEntry::PrivateData::Wgs84Ecef *this)
{
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::Wgs84Ecef *CLP::LogEntry::PrivateData::Wgs84Ecef::Wgs84Ecef(CLP::LogEntry::PrivateData::Wgs84Ecef *this, const CLP::LogEntry::PrivateData::Wgs84Ecef *a2)
{
  *this = &unk_285860AC8;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(CLP::LogEntry::PrivateData::Wgs84Ecef *this, const CLP::LogEntry::PrivateData::Wgs84Ecef *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  LOBYTE(v5) = *(a2 + 36);
  if (v5)
  {
    if (*(a2 + 36))
    {
      result = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          return result;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    result = *(a2 + 2);
    *(this + 9) |= 2u;
    *(this + 2) = result;
    if ((*(a2 + 9) & 4) == 0)
    {
      return result;
    }

LABEL_7:
    result = *(a2 + 3);
    *(this + 9) |= 4u;
    *(this + 3) = result;
  }

  return result;
}

void sub_245528898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::Wgs84Ecef::~Wgs84Ecef(CLP::LogEntry::PrivateData::Wgs84Ecef *this)
{
  *this = &unk_285860AC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860AC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860AC8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance(CLP::LogEntry::PrivateData::Wgs84Ecef *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_;
  if (!CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::Wgs84Ecef::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::Wgs84Ecef::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::Wgs84Ecef::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::Wgs84Ecef *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CLP::LogEntry::PrivateData::Wgs84Ecef::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v4 + 16), a3);
    if ((*(v4 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v6 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, v6, a3);
}

uint64_t CLP::LogEntry::PrivateData::Wgs84Ecef::ByteSize(CLP::LogEntry::PrivateData::Wgs84Ecef *this)
{
  v1 = *(this + 36);
  if (*(this + 36))
  {
    v2 = ((v1 << 31) >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v2 += 9;
    }

    if ((v1 & 4) != 0)
    {
      v1 = v2 + 9;
    }

    else
    {
      v1 = v2;
    }
  }

  *(this + 8) = v1;
  return v1;
}

double CLP::LogEntry::PrivateData::Wgs84Ecef::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::Wgs84Ecef *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::Wgs84Ecef::CopyFrom(CLP::LogEntry::PrivateData::Wgs84Ecef *this, const CLP::LogEntry::PrivateData::Wgs84Ecef *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::Wgs84Ecef::Swap(CLP::LogEntry::PrivateData::Wgs84Ecef *this, CLP::LogEntry::PrivateData::Wgs84Ecef *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    result = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = result;
    v5 = *(this + 9);
    *(this + 9) = *(a2 + 9);
    *(a2 + 9) = v5;
    v6 = *(this + 8);
    *(this + 8) = *(a2 + 8);
    *(a2 + 8) = v6;
  }

  return result;
}

double CLP::LogEntry::PrivateData::SvBandCorrections::SharedCtor(CLP::LogEntry::PrivateData::SvBandCorrections *this)
{
  *(this + 5) = 0;
  result = 0.0;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::SvBandCorrections *CLP::LogEntry::PrivateData::SvBandCorrections::SvBandCorrections(CLP::LogEntry::PrivateData::SvBandCorrections *this, const CLP::LogEntry::PrivateData::SvBandCorrections *a2)
{
  *this = &unk_285860B40;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = 0;
  CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(this, a2);
  return this;
}

void CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(CLP::LogEntry::PrivateData::SvBandCorrections *this, const CLP::LogEntry::PrivateData::SvBandCorrections *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
  }

  LOBYTE(v4) = *(a2 + 44);
  if (v4)
  {
    if (*(a2 + 44))
    {
      v5 = *(a2 + 6);
      if (v5 >= 0xD)
      {
        __assert_rtn("set_band", "CLPGnssMeasApi.pb.h", 10570, "::CLP::LogEntry::PrivateData::Band_IsValid(value)");
      }

      *(this + 11) |= 1u;
      *(this + 6) = v5;
      v4 = *(a2 + 11);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 1);
      *(this + 11) |= 2u;
      *(this + 1) = v6;
      v4 = *(a2 + 11);
      if ((v4 & 4) == 0)
      {
LABEL_9:
        if ((v4 & 8) == 0)
        {
          goto LABEL_10;
        }

        goto LABEL_14;
      }
    }

    else if ((v4 & 4) == 0)
    {
      goto LABEL_9;
    }

    v7 = *(a2 + 2);
    *(this + 11) |= 4u;
    *(this + 2) = v7;
    v4 = *(a2 + 11);
    if ((v4 & 8) == 0)
    {
LABEL_10:
      if ((v4 & 0x10) == 0)
      {
        return;
      }

LABEL_15:
      v9 = *(a2 + 7);
      if (v9 >= 3)
      {
        __assert_rtn("set_ionospheric_model", "CLPGnssMeasApi.pb.h", 10659, "::CLP::LogEntry::PrivateData::IonosphericCorrectionSource_IsValid(value)");
      }

      *(this + 11) |= 0x10u;
      *(this + 7) = v9;
      return;
    }

LABEL_14:
    v8 = *(a2 + 4);
    *(this + 11) |= 8u;
    *(this + 4) = v8;
    if ((*(a2 + 11) & 0x10) == 0)
    {
      return;
    }

    goto LABEL_15;
  }
}

void sub_245528FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SvBandCorrections::~SvBandCorrections(CLP::LogEntry::PrivateData::SvBandCorrections *this)
{
  *this = &unk_285860B40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860B40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_285860B40;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::SvBandCorrections::default_instance(CLP::LogEntry::PrivateData::SvBandCorrections *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SvBandCorrections::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvBandCorrections::Clear(uint64_t this)
{
  if (*(this + 44))
  {
    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }

  *(this + 44) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvBandCorrections::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SvBandCorrections *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

uint64_t CLP::LogEntry::PrivateData::SvBandCorrections::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 44);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
    v6 = *(v5 + 44);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 8), a3);
  v6 = *(v5 + 44);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(v5 + 32), a3);
    if ((*(v5 + 44) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v5 + 16), a3);
  v6 = *(v5 + 44);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 28);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, v7, a2, a4);
}

uint64_t CLP::LogEntry::PrivateData::SvBandCorrections::ByteSize(CLP::LogEntry::PrivateData::SvBandCorrections *this)
{
  LOBYTE(v2) = *(this + 44);
  if (v2)
  {
    if (*(this + 44))
    {
      v5 = *(this + 6);
      if ((v5 & 0x80000000) != 0)
      {
        v3 = 11;
      }

      else if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 11);
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 4) != 0)
    {
      v3 += 9;
    }

    if ((v2 & 8) != 0)
    {
      v4 = v3 + 9;
    }

    else
    {
      v4 = v3;
    }

    if ((v2 & 0x10) != 0)
    {
      v6 = *(this + 7);
      if ((v6 & 0x80000000) != 0)
      {
        v7 = 11;
      }

      else if (v6 >= 0x80)
      {
        v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
      }

      else
      {
        v7 = 2;
      }

      v4 = (v7 + v4);
    }
  }

  else
  {
    v4 = 0;
  }

  *(this + 10) = v4;
  return v4;
}

void CLP::LogEntry::PrivateData::SvBandCorrections::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SvBandCorrections *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(this, lpsrc);
}

void CLP::LogEntry::PrivateData::SvBandCorrections::CopyFrom(CLP::LogEntry::PrivateData::SvBandCorrections *this, const CLP::LogEntry::PrivateData::SvBandCorrections *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(this, a2);
  }
}

double CLP::LogEntry::PrivateData::SvBandCorrections::Swap(CLP::LogEntry::PrivateData::SvBandCorrections *this, CLP::LogEntry::PrivateData::SvBandCorrections *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v3;
    v4 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v4;
    result = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = result;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 11);
    *(this + 11) = *(a2 + 11);
    *(a2 + 11) = v7;
    v8 = *(this + 10);
    *(this + 10) = *(a2 + 10);
    *(a2 + 10) = v8;
  }

  return result;
}

void *CLP::LogEntry::PrivateData::SvPositionAtTime::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

CLP::LogEntry::PrivateData::SvPositionAtTime *CLP::LogEntry::PrivateData::SvPositionAtTime::SvPositionAtTime(CLP::LogEntry::PrivateData::SvPositionAtTime *this, const CLP::LogEntry::PrivateData::SvPositionAtTime *a2)
{
  *this = &unk_285860BB8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(this, a2);
  return this;
}

double CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(CLP::LogEntry::PrivateData::SvPositionAtTime *this, const CLP::LogEntry::PrivateData::SvPositionAtTime *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v5) = *(a2 + 28);
  if (v5)
  {
    if (*(a2 + 28))
    {
      result = *(a2 + 1);
      *(this + 7) |= 1u;
      *(this + 1) = result;
      v5 = *(a2 + 7);
    }

    if ((v5 & 2) != 0)
    {
      *(this + 7) |= 2u;
      v6 = *(this + 2);
      if (!v6)
      {
        operator new();
      }

      v7 = *(a2 + 2);
      if (!v7)
      {
        v7 = *(CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ + 16);
      }

      return CLP::LogEntry::PrivateData::Wgs84Ecef::MergeFrom(v6, v7);
    }
  }

  return result;
}

void sub_2455298DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SvPositionAtTime::~SvPositionAtTime(CLP::LogEntry::PrivateData::SvPositionAtTime *this)
{
  *this = &unk_285860BB8;
  if (CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::SvPositionAtTime::~SvPositionAtTime(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::SvPositionAtTime::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ != this)
  {
    this = this[2];
    if (this)
    {
      return (*(*this + 8))();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance(CLP::LogEntry::PrivateData::SvPositionAtTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvPositionAtTime::Clear(uint64_t this)
{
  v1 = *(this + 28);
  if (v1)
  {
    *(this + 8) = 0;
    if ((v1 & 2) != 0)
    {
      v2 = *(this + 16);
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
  }

  *(this + 28) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvPositionAtTime::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SvPositionAtTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        v6 = TagFallback & 7;
        if (TagFallback >> 3 == 2)
        {
          break;
        }

        if (TagFallback >> 3 != 1 || v6 != 1)
        {
          goto LABEL_14;
        }

        v17 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, &v17) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = v17;
        v7 = *(this + 7) | 1;
        *(this + 7) = v7;
        v8 = *(a2 + 1);
        if (v8 < *(a2 + 2) && *v8 == 18)
        {
          *(a2 + 1) = v8 + 1;
          goto LABEL_18;
        }
      }

      if (v6 == 2)
      {
        break;
      }

LABEL_14:
      if (v6 == 4)
      {
        return 1;
      }

      if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
      {
        return 0;
      }
    }

    v7 = *(this + 7);
LABEL_18:
    *(this + 7) = v7 | 2;
    v9 = *(this + 2);
    if (!v9)
    {
      operator new();
    }

    v18 = 0;
    v10 = *(a2 + 1);
    if (v10 >= *(a2 + 2) || *v10 < 0)
    {
      if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v18))
      {
        return 0;
      }
    }

    else
    {
      v18 = *v10;
      *(a2 + 1) = v10 + 1;
    }

    v11 = *(a2 + 14);
    v12 = *(a2 + 15);
    *(a2 + 14) = v11 + 1;
    if (v11 >= v12)
    {
      return 0;
    }

    wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
    if (!CLP::LogEntry::PrivateData::Wgs84Ecef::MergePartialFromCodedStream(v9, a2) || *(a2 + 36) != 1)
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

    if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
    {
      *(a2 + 8) = 0;
      result = 1;
      *(a2 + 36) = 1;
      return result;
    }
  }
}

uint64_t CLP::LogEntry::PrivateData::SvPositionAtTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(1, a2, *(this + 8), a3);
    v6 = *(v5 + 28);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);
    if (!v7)
    {
      v7 = *(CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ + 16);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v7, a2, a4);
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvPositionAtTime::ByteSize(CLP::LogEntry::PrivateData::SvPositionAtTime *this)
{
  v1 = *(this + 28);
  if (*(this + 28))
  {
    v2 = (v1 << 31 >> 31) & 9;
    if ((v1 & 2) != 0)
    {
      v3 = *(this + 2);
      if (!v3)
      {
        v3 = *(CLP::LogEntry::PrivateData::SvPositionAtTime::default_instance_ + 16);
      }

      v4 = *(v3 + 36);
      if (*(v3 + 36))
      {
        v5 = (v4 << 31 >> 31) & 9;
        if ((v4 & 2) != 0)
        {
          v5 += 9;
        }

        if ((v4 & 4) != 0)
        {
          v4 = v5 + 9;
        }

        else
        {
          v4 = v5;
        }
      }

      *(v3 + 32) = v4;
      v2 = (v4 + v2 + 2);
    }
  }

  else
  {
    v2 = 0;
  }

  *(this + 6) = v2;
  return v2;
}

double CLP::LogEntry::PrivateData::SvPositionAtTime::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::SvPositionAtTime *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::SvPositionAtTime::CopyFrom(CLP::LogEntry::PrivateData::SvPositionAtTime *this, const CLP::LogEntry::PrivateData::SvPositionAtTime *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::SvPositionAtTime::Swap(CLP::LogEntry::PrivateData::SvPositionAtTime *this, CLP::LogEntry::PrivateData::SvPositionAtTime *a2)
{
  if (a2 != this)
  {
    result = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = result;
    v3 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v3;
    LODWORD(v3) = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v3;
  }

  return result;
}

void *CLP::LogEntry::PrivateData::PolynomialOrbit::SharedCtor(void *this)
{
  this[9] = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

CLP::LogEntry::PrivateData::PolynomialOrbit *CLP::LogEntry::PrivateData::PolynomialOrbit::PolynomialOrbit(CLP::LogEntry::PrivateData::PolynomialOrbit *this, const CLP::LogEntry::PrivateData::PolynomialOrbit *a2)
{
  *this = &unk_285860C30;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 9) = 0;
  CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(this, a2);
  return this;
}

void sub_24552A000(_Unwind_Exception *a1)
{
  v3 = *(v1 + 7);
  if (v3)
  {
    MEMORY[0x245D6AEC0](v3, 0x1000C8000313F17);
  }

  v4 = *(v1 + 5);
  if (v4)
  {
    MEMORY[0x245D6AEC0](v4, 0x1000C8000313F17);
  }

  v5 = *(v1 + 3);
  if (v5)
  {
    MEMORY[0x245D6AEC0](v5, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

double CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(CLP::LogEntry::PrivateData::PolynomialOrbit *this, const CLP::LogEntry::PrivateData::PolynomialOrbit *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 3, *(this + 8) + v5);
    memcpy((*(this + 3) + 8 * *(this + 8)), *(a2 + 3), 8 * *(a2 + 8));
    *(this + 8) += *(a2 + 8);
  }

  v6 = *(a2 + 12);
  if (v6)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 5, *(this + 12) + v6);
    memcpy((*(this + 5) + 8 * *(this + 12)), *(a2 + 5), 8 * *(a2 + 12));
    *(this + 12) += *(a2 + 12);
  }

  v7 = *(a2 + 16);
  if (v7)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 7, *(this + 16) + v7);
    memcpy((*(this + 7) + 8 * *(this + 16)), *(a2 + 7), 8 * *(a2 + 16));
    *(this + 16) += *(a2 + 16);
  }

  LOBYTE(v8) = *(a2 + 76);
  if (v8)
  {
    if (*(a2 + 76))
    {
      result = *(a2 + 1);
      *(this + 19) |= 1u;
      *(this + 1) = result;
      v8 = *(a2 + 19);
    }

    if ((v8 & 2) != 0)
    {
      result = *(a2 + 2);
      *(this + 19) |= 2u;
      *(this + 2) = result;
    }
  }

  return result;
}

void sub_24552A1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::PolynomialOrbit::~PolynomialOrbit(CLP::LogEntry::PrivateData::PolynomialOrbit *this)
{
  *this = &unk_285860C30;
  v2 = *(this + 7);
  if (v2)
  {
    MEMORY[0x245D6AEC0](v2, 0x1000C8000313F17);
  }

  v3 = *(this + 5);
  if (v3)
  {
    MEMORY[0x245D6AEC0](v3, 0x1000C8000313F17);
  }

  v4 = *(this + 3);
  if (v4)
  {
    MEMORY[0x245D6AEC0](v4, 0x1000C8000313F17);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::PolynomialOrbit::~PolynomialOrbit(this);

  JUMPOUT(0x245D6AEE0);
}

uint64_t CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance(CLP::LogEntry::PrivateData::PolynomialOrbit *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_;
  if (!CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::PolynomialOrbit::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::PolynomialOrbit::Clear(uint64_t this)
{
  if (*(this + 76))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 32) = 0;
  *(this + 48) = 0;
  *(this + 64) = 0;
  *(this + 76) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::PolynomialOrbit::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::PolynomialOrbit *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
      if (TagFallback >> 3 > 3)
      {
        break;
      }

      if (v6 != 2)
      {
        if (v6 != 3 || v7 != 1)
        {
          goto LABEL_27;
        }

        goto LABEL_34;
      }

      if (v7 != 1)
      {
        goto LABEL_27;
      }

      v44[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v44) & 1) == 0)
      {
        return 0;
      }

      *(this + 1) = v44[0];
      *(this + 19) |= 1u;
      v9 = *(a2 + 1);
      if (v9 < *(a2 + 2) && *v9 == 25)
      {
        *(a2 + 1) = v9 + 1;
LABEL_34:
        v44[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v44) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = v44[0];
        *(this + 19) |= 2u;
        v10 = *(a2 + 1);
        if (v10 < *(a2 + 2) && *v10 == 33)
        {
LABEL_37:
          *(a2 + 1) = v10 + 1;
          goto LABEL_38;
        }
      }
    }

    if (v6 != 4)
    {
      break;
    }

    if (v7 == 1)
    {
LABEL_38:
      v44[0] = 0;
      if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v44) & 1) == 0)
      {
        return 0;
      }

      v11 = v44[0];
      v12 = *(this + 8);
      if (v12 == *(this + 9))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 3, v12 + 1);
        v12 = *(this + 8);
      }

      v13 = *(this + 3);
      v14 = v12 + 1;
      *(this + 8) = v12 + 1;
      *(v13 + 8 * v12) = v11;
      v15 = *(a2 + 1);
      v16 = *(a2 + 4) - v15;
      if (v16 >= 1)
      {
        v17 = v16 / 9u;
        v18 = v17 >= *(this + 9) - v14 ? *(this + 9) - v14 : v17;
        if (v18 >= 1)
        {
          v19 = 0;
          while (*v15 == 33)
          {
            v20 = *(v15 + 1);
            if (v14 >= *(this + 9))
            {
              wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
              wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
              wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
              wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
              v14 = *(this + 8);
              v13 = *(this + 3);
            }

            *(this + 8) = v14 + 1;
            *(v13 + 8 * v14) = v20;
            ++v19;
            v15 += 9;
            ++v14;
            if (v18 == v19)
            {
              goto LABEL_53;
            }
          }

          if (!v19)
          {
            goto LABEL_54;
          }

LABEL_53:
          wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
        }
      }

LABEL_54:
      v10 = *(a2 + 1);
      if (v10 < *(a2 + 2))
      {
        v21 = *v10;
        if (v21 == 33)
        {
          goto LABEL_37;
        }

        if (v21 == 41)
        {
          while (1)
          {
            *(a2 + 1) = v10 + 1;
LABEL_58:
            v44[0] = 0;
            if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v44) & 1) == 0)
            {
              return 0;
            }

            v22 = v44[0];
            v23 = *(this + 12);
            if (v23 == *(this + 13))
            {
              wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 5, v23 + 1);
              v23 = *(this + 12);
            }

            v24 = *(this + 5);
            v25 = v23 + 1;
            *(this + 12) = v23 + 1;
            *(v24 + 8 * v23) = v22;
            v26 = *(a2 + 1);
            v27 = *(a2 + 4) - v26;
            if (v27 >= 1)
            {
              v28 = v27 / 9u;
              v29 = v28 >= *(this + 13) - v25 ? *(this + 13) - v25 : v28;
              if (v29 >= 1)
              {
                v30 = 0;
                while (*v26 == 41)
                {
                  v31 = *(v26 + 1);
                  if (v25 >= *(this + 13))
                  {
                    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
                    v25 = *(this + 12);
                    v24 = *(this + 5);
                  }

                  *(this + 12) = v25 + 1;
                  *(v24 + 8 * v25) = v31;
                  ++v30;
                  v26 += 9;
                  ++v25;
                  if (v29 == v30)
                  {
                    goto LABEL_73;
                  }
                }

                if (!v30)
                {
                  goto LABEL_74;
                }

LABEL_73:
                wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
              }
            }

LABEL_74:
            v10 = *(a2 + 1);
            if (v10 >= *(a2 + 2))
            {
              break;
            }

            v32 = *v10;
            if (v32 != 41)
            {
              if (v32 == 49)
              {
                do
                {
                  *(a2 + 1) = v10 + 1;
LABEL_78:
                  v44[0] = 0;
                  if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v44) & 1) == 0)
                  {
                    return 0;
                  }

                  v33 = v44[0];
                  v34 = *(this + 16);
                  if (v34 == *(this + 17))
                  {
                    wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(this + 7, v34 + 1);
                    v34 = *(this + 16);
                  }

                  v35 = *(this + 7);
                  v36 = v34 + 1;
                  *(this + 16) = v34 + 1;
                  *(v35 + 8 * v34) = v33;
                  v37 = *(a2 + 1);
                  v38 = *(a2 + 4) - v37;
                  if (v38 >= 1)
                  {
                    v39 = v38 / 9u;
                    v40 = v39 >= *(this + 17) - v36 ? *(this + 17) - v36 : v39;
                    if (v40 >= 1)
                    {
                      v41 = 0;
                      while (*v37 == 49)
                      {
                        v42 = *(v37 + 1);
                        if (v36 >= *(this + 17))
                        {
                          wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
                          wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
                          wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
                          v36 = *(this + 16);
                          v35 = *(this + 7);
                        }

                        *(this + 16) = v36 + 1;
                        *(v35 + 8 * v36) = v42;
                        ++v41;
                        v37 += 9;
                        ++v36;
                        if (v40 == v41)
                        {
                          goto LABEL_93;
                        }
                      }

                      if (!v41)
                      {
                        goto LABEL_94;
                      }

LABEL_93:
                      wireless_diagnostics::google::protobuf::io::CodedInputStream::Skip(a2);
                    }
                  }

LABEL_94:
                  v10 = *(a2 + 1);
                  v43 = *(a2 + 2);
                }

                while (v10 < v43 && *v10 == 49);
                if (v10 == v43 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
                {
                  *(a2 + 8) = 0;
                  result = 1;
                  *(a2 + 36) = 1;
                  return result;
                }
              }

              goto LABEL_1;
            }
          }
        }
      }
    }

    else
    {
      if (v7 == 2)
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<double,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)1>(a2, this + 24);
        if (!result)
        {
          return result;
        }

        goto LABEL_54;
      }

LABEL_27:
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

  if (v6 == 5)
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<double,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)1>(a2, this + 40);
        if (!result)
        {
          return result;
        }

        goto LABEL_74;
      }

      goto LABEL_27;
    }

    goto LABEL_58;
  }

  if (v6 != 6)
  {
    goto LABEL_27;
  }

  if (v7 == 1)
  {
    goto LABEL_78;
  }

  if (v7 != 2)
  {
    goto LABEL_27;
  }

  result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<double,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)1>(a2, this + 56);
  if (result)
  {
    goto LABEL_94;
  }

  return result;
}

void sub_24552A94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

uint64_t wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedPrimitiveNoInline<double,(wireless_diagnostics::google::protobuf::internal::WireFormatLite::FieldType)1>(wireless_diagnostics::google::protobuf::io::CodedInputStream *this, uint64_t a2)
{
  v9 = 0;
  v4 = *(this + 1);
  if (v4 >= *(this + 2) || *v4 < 0)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(this, &v9);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v9 = *v4;
    *(this + 1) = v4 + 1;
  }

  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(this);
  if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) < 1)
  {
LABEL_10:
    wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(this);
    return 1;
  }

  else
  {
    while (1)
    {
      v10 = 0;
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(this, &v10);
      if (!result)
      {
        break;
      }

      v6 = v10;
      v7 = *(a2 + 8);
      if (v7 == *(a2 + 12))
      {
        wireless_diagnostics::google::protobuf::RepeatedField<double>::Reserve(a2, v7 + 1);
        v7 = *(a2 + 8);
      }

      v8 = *a2;
      *(a2 + 8) = v7 + 1;
      *(v8 + 8 * v7) = v6;
      if (wireless_diagnostics::google::protobuf::io::CodedInputStream::BytesUntilLimit(this) <= 0)
      {
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::PolynomialOrbit::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3)
{
  v4 = this;
  v5 = *(this + 76);
  if (v5)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(this + 8), a3);
    v5 = *(v4 + 76);
  }

  if ((v5 & 2) != 0)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(3, a2, *(v4 + 16), a3);
  }

  if (*(v4 + 32) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(4, a2, *(*(v4 + 24) + 8 * v6++), a3);
    }

    while (v6 < *(v4 + 32));
  }

  if (*(v4 + 48) >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(5, a2, *(*(v4 + 40) + 8 * v7++), a3);
    }

    while (v7 < *(v4 + 48));
  }

  if (*(v4 + 64) >= 1)
  {
    v8 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(6, a2, *(*(v4 + 56) + 8 * v8++), a3);
    }

    while (v8 < *(v4 + 64));
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::PolynomialOrbit::ByteSize(CLP::LogEntry::PrivateData::PolynomialOrbit *this)
{
  v1 = *(this + 76);
  v2 = (v1 << 31 >> 31) & 9;
  if ((v1 & 2) != 0)
  {
    v2 += 9;
  }

  if (*(this + 76))
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = (9 * (*(this + 12) + *(this + 8) + *(this + 16)) + v3);
  *(this + 18) = v4;
  return v4;
}

double CLP::LogEntry::PrivateData::PolynomialOrbit::CheckTypeAndMergeFrom(CLP::LogEntry::PrivateData::PolynomialOrbit *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    __assert_rtn("down_cast", "common.h", 348, "f == NULL || dynamic_cast<To>(f) != NULL");
  }

  return CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(this, lpsrc);
}

double CLP::LogEntry::PrivateData::PolynomialOrbit::CopyFrom(CLP::LogEntry::PrivateData::PolynomialOrbit *this, const CLP::LogEntry::PrivateData::PolynomialOrbit *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(this, a2);
  }

  return result;
}

double CLP::LogEntry::PrivateData::PolynomialOrbit::Swap(CLP::LogEntry::PrivateData::PolynomialOrbit *this, CLP::LogEntry::PrivateData::PolynomialOrbit *a2)
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
    v5 = *(a2 + 4);
    *(a2 + 3) = v4;
    v6 = *(this + 4);
    *(this + 4) = v5;
    *(a2 + 4) = v6;
    v7 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    v8 = *(a2 + 6);
    *(a2 + 5) = v7;
    v9 = *(this + 6);
    *(this + 6) = v8;
    *(a2 + 6) = v9;
    v10 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    result = *(a2 + 8);
    *(a2 + 7) = v10;
    v12 = *(this + 8);
    *(this + 8) = result;
    *(a2 + 8) = v12;
    LODWORD(v10) = *(this + 19);
    *(this + 19) = *(a2 + 19);
    *(a2 + 19) = v10;
    LODWORD(v10) = *(this + 18);
    *(this + 18) = *(a2 + 18);
    *(a2 + 18) = v10;
  }

  return result;
}

double CLP::LogEntry::PrivateData::SvInfo::SharedCtor(CLP::LogEntry::PrivateData::SvInfo *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = 0.0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  return result;
}

CLP::LogEntry::PrivateData::SvInfo *CLP::LogEntry::PrivateData::SvInfo::SvInfo(CLP::LogEntry::PrivateData::SvInfo *this, const CLP::LogEntry::PrivateData::SvInfo *a2)
{
  *this = &unk_285860CA8;
  *(this + 24) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 8) = 0u;
  *(this + 10) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 108) = 0u;
  CLP::LogEntry::PrivateData::SvInfo::MergeFrom(this, a2);
  return this;
}

void sub_24552AE5C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v1 + 13);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SvInfo::MergeFrom(CLP::LogEntry::PrivateData::SvInfo *this, const CLP::LogEntry::PrivateData::SvInfo *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
  }

  v4 = *(this + 8);
  v5 = *(a2 + 8);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
  LODWORD(v6) = *(a2 + 8);
  if (v6 >= 1)
  {
    v7 = 0;
    do
    {
      if (v7 >= v6)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
      }

      v8 = *(*(a2 + 3) + 8 * v7);
      v9 = *(this + 9);
      v10 = *(this + 8);
      if (v10 >= v9)
      {
        if (v9 == *(this + 10))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
          v9 = *(this + 9);
        }

        *(this + 9) = v9 + 1;
        operator new();
      }

      v11 = *(this + 3);
      *(this + 8) = v10 + 1;
      CLP::LogEntry::PrivateData::SvPositionAtTime::MergeFrom(*(v11 + 8 * v10), v8);
      ++v7;
      v6 = *(a2 + 8);
    }

    while (v7 < v6);
  }

  v12 = *(this + 28);
  v13 = *(a2 + 28);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
  LODWORD(v14) = *(a2 + 28);
  if (v14 >= 1)
  {
    v15 = 0;
    do
    {
      if (v15 >= v14)
      {
        wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
        wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
        wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
        wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v44);
      }

      v16 = *(*(a2 + 13) + 8 * v15);
      v17 = *(this + 29);
      v18 = *(this + 28);
      if (v18 >= v17)
      {
        if (v17 == *(this + 30))
        {
          wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
          v17 = *(this + 29);
        }

        *(this + 29) = v17 + 1;
        operator new();
      }

      v19 = *(this + 13);
      *(this + 28) = v18 + 1;
      CLP::LogEntry::PrivateData::SvBandCorrections::MergeFrom(*(v19 + 8 * v18), v16);
      ++v15;
      v14 = *(a2 + 28);
    }

    while (v15 < v14);
  }

  v20 = *(a2 + 43);
  if (!v20)
  {
    goto LABEL_32;
  }

  if (v20)
  {
    *(this + 43) |= 1u;
    v37 = *(this + 1);
    if (!v37)
    {
      operator new();
    }

    v38 = *(a2 + 1);
    if (!v38)
    {
      v38 = *(CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 8);
    }

    CLP::LogEntry::PrivateData::SvId::MergeFrom(v37, v38);
    v20 = *(a2 + 43);
    if ((v20 & 2) == 0)
    {
LABEL_26:
      if ((v20 & 4) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_84;
    }
  }

  else if ((v20 & 2) == 0)
  {
    goto LABEL_26;
  }

  v39 = *(a2 + 2);
  *(this + 43) |= 2u;
  *(this + 2) = v39;
  v20 = *(a2 + 43);
  if ((v20 & 4) == 0)
  {
LABEL_27:
    if ((v20 & 0x10) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_86;
  }

LABEL_84:
  v40 = *(a2 + 14);
  if (v40 >= 7)
  {
    __assert_rtn("set_position_source", "CLPGnssMeasApi.pb.h", 10941, "::CLP::LogEntry::PrivateData::SvPositionSource_IsValid(value)");
  }

  *(this + 43) |= 4u;
  *(this + 14) = v40;
  v20 = *(a2 + 43);
  if ((v20 & 0x10) == 0)
  {
LABEL_28:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_29;
    }

LABEL_87:
    v42 = *(a2 + 8);
    *(this + 43) |= 0x20u;
    *(this + 8) = v42;
    v20 = *(a2 + 43);
    if ((v20 & 0x40) == 0)
    {
LABEL_30:
      if ((v20 & 0x80) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    goto LABEL_88;
  }

LABEL_86:
  v41 = *(a2 + 6);
  *(this + 43) |= 0x10u;
  *(this + 6) = v41;
  v20 = *(a2 + 43);
  if ((v20 & 0x20) != 0)
  {
    goto LABEL_87;
  }

LABEL_29:
  if ((v20 & 0x40) == 0)
  {
    goto LABEL_30;
  }

LABEL_88:
  v43 = *(a2 + 9);
  *(this + 43) |= 0x40u;
  *(this + 9) = v43;
  v20 = *(a2 + 43);
  if ((v20 & 0x80) != 0)
  {
LABEL_31:
    v21 = *(a2 + 15);
    *(this + 43) |= 0x80u;
    *(this + 15) = v21;
    v20 = *(a2 + 43);
  }

LABEL_32:
  if ((v20 & 0xFF00) != 0)
  {
    if ((v20 & 0x100) != 0)
    {
      v22 = *(a2 + 20);
      *(this + 43) |= 0x100u;
      *(this + 20) = v22;
      v20 = *(a2 + 43);
    }

    if ((v20 & 0x200) != 0)
    {
      v23 = *(a2 + 21);
      if (v23 >= 5)
      {
        __assert_rtn("set_over_the_air_from_sv_health_l1", "CLPGnssMeasApi.pb.h", 11099, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x200u;
      *(this + 21) = v23;
      v20 = *(a2 + 43);
    }

    if ((v20 & 0x400) != 0)
    {
      v24 = *(a2 + 22);
      if (v24 >= 5)
      {
        __assert_rtn("set_over_the_air_from_other_sv_health_l1", "CLPGnssMeasApi.pb.h", 11122, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x400u;
      *(this + 22) = v24;
      v20 = *(a2 + 43);
    }

    if ((v20 & 0x800) != 0)
    {
      v25 = *(a2 + 23);
      if (v25 >= 5)
      {
        __assert_rtn("set_assistance_file_health_l1", "CLPGnssMeasApi.pb.h", 11145, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x800u;
      *(this + 23) = v25;
      v20 = *(a2 + 43);
    }

    if ((v20 & 0x1000) != 0)
    {
      v26 = *(a2 + 24);
      if (v26 >= 5)
      {
        __assert_rtn("set_ms_based_health_l1", "CLPGnssMeasApi.pb.h", 11168, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x1000u;
      *(this + 24) = v26;
      v20 = *(a2 + 43);
    }

    if ((v20 & 0x2000) != 0)
    {
      v27 = *(a2 + 25);
      if (v27 >= 5)
      {
        __assert_rtn("set_integrity_health_l1", "CLPGnssMeasApi.pb.h", 11191, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x2000u;
      *(this + 25) = v27;
      v20 = *(a2 + 43);
    }

    if ((v20 & 0x8000) != 0)
    {
      *(this + 43) |= 0x8000u;
      v28 = *(this + 16);
      if (!v28)
      {
        operator new();
      }

      v29 = *(a2 + 16);
      if (!v29)
      {
        v29 = *(CLP::LogEntry::PrivateData::SvInfo::default_instance_ + 128);
      }

      CLP::LogEntry::PrivateData::PolynomialOrbit::MergeFrom(v28, v29);
      v20 = *(a2 + 43);
    }
  }

  if ((v20 & 0xFF0000) != 0)
  {
    if ((v20 & 0x10000) != 0)
    {
      v30 = *(a2 + 34);
      if (v30 >= 5)
      {
        __assert_rtn("set_over_the_air_from_sv_health_l5", "CLPGnssMeasApi.pb.h", 11281, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x10000u;
      *(this + 34) = v30;
      v20 = *(a2 + 43);
    }

    if ((v20 & 0x20000) != 0)
    {
      v31 = *(a2 + 35);
      if (v31 >= 5)
      {
        __assert_rtn("set_over_the_air_from_other_sv_health_l5", "CLPGnssMeasApi.pb.h", 11304, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x20000u;
      *(this + 35) = v31;
      v20 = *(a2 + 43);
    }

    if ((v20 & 0x40000) != 0)
    {
      v32 = *(a2 + 36);
      if (v32 >= 5)
      {
        __assert_rtn("set_assistance_file_health_l5", "CLPGnssMeasApi.pb.h", 11327, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x40000u;
      *(this + 36) = v32;
      v20 = *(a2 + 43);
    }

    if ((v20 & 0x80000) != 0)
    {
      v33 = *(a2 + 37);
      if (v33 >= 5)
      {
        __assert_rtn("set_ms_based_health_l5", "CLPGnssMeasApi.pb.h", 11350, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x80000u;
      *(this + 37) = v33;
      v20 = *(a2 + 43);
    }

    if ((v20 & 0x100000) != 0)
    {
      v34 = *(a2 + 40);
      if (v34 >= 5)
      {
        __assert_rtn("set_integrity_health_l5", "CLPGnssMeasApi.pb.h", 11373, "::CLP::LogEntry::PrivateData::SvHealthIndication_IsValid(value)");
      }

      *(this + 43) |= 0x100000u;
      *(this + 40) = v34;
      v20 = *(a2 + 43);
    }

    if ((v20 & 0x200000) != 0)
    {
      v35 = *(a2 + 19);
      *(this + 43) |= 0x200000u;
      *(this + 19) = v35;
      v20 = *(a2 + 43);
    }

    if ((v20 & 0x400000) != 0)
    {
      v36 = *(a2 + 41);
      if (v36 >= 4)
      {
        __assert_rtn("set_sv_reference_point", "CLPGnssMeasApi.pb.h", 11418, "::CLP::LogEntry::PrivateData::SvReferencePoint_IsValid(value)");
      }

      *(this + 43) |= 0x400000u;
      *(this + 41) = v36;
    }
  }
}

void sub_24552B68C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLP::LogEntry::PrivateData::SvInfo::~SvInfo(CLP::LogEntry::PrivateData::SvInfo *this)
{
  *this = &unk_285860CA8;
  v2 = (this + 104);
  CLP::LogEntry::PrivateData::SvInfo::SharedDtor(this);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(v2);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Destroy<wireless_diagnostics::google::protobuf::RepeatedPtrField<proto::gnsshal::NvStoreItem>::TypeHandler>(this + 3);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLP::LogEntry::PrivateData::SvInfo::~SvInfo(this);

  JUMPOUT(0x245D6AEE0);
}

void *CLP::LogEntry::PrivateData::SvInfo::SharedDtor(void *this)
{
  if (CLP::LogEntry::PrivateData::SvInfo::default_instance_ != this)
  {
    v1 = this;
    v2 = this[1];
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    this = v1[16];
    if (this)
    {
      v3 = *(*this + 8);

      return v3();
    }
  }

  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvInfo::default_instance(CLP::LogEntry::PrivateData::SvInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = CLP::LogEntry::PrivateData::SvInfo::default_instance_;
  if (!CLP::LogEntry::PrivateData::SvInfo::default_instance_)
  {
    CLP::LogEntry::PrivateData::protobuf_AddDesc_CLPGnssMeasApi_2eproto(0, a2, a3, a4);
    return CLP::LogEntry::PrivateData::SvInfo::default_instance_;
  }

  return result;
}

uint64_t CLP::LogEntry::PrivateData::SvInfo::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 172);
  if (v2)
  {
    if (v2)
    {
      this = *(this + 8);
      if (this)
      {
        this = CLP::LogEntry::PrivateData::SvId::Clear(this);
        v2 = *(v1 + 172);
      }
    }

    *(v1 + 16) = 0;
    *(v1 + 48) = 0u;
    *(v1 + 64) = 0u;
  }

  if ((v2 & 0xFF00) != 0)
  {
    *(v1 + 80) = 0;
    *(v1 + 88) = 0;
    *(v1 + 96) = 0;
    if ((v2 & 0x8000) != 0)
    {
      v3 = *(v1 + 128);
      if (v3)
      {
        if (*(v3 + 76))
        {
          *(v3 + 8) = 0;
          *(v3 + 16) = 0;
        }

        *(v3 + 32) = 0;
        *(v3 + 48) = 0;
        *(v3 + 64) = 0;
        *(v3 + 76) = 0;
        v2 = *(v1 + 172);
      }
    }
  }

  if ((v2 & 0xFF0000) != 0)
  {
    *(v1 + 152) = 0u;
    *(v1 + 136) = 0u;
  }

  if (*(v1 + 32) >= 1)
  {
    v4 = 0;
    do
    {
      v5 = *(*(v1 + 24) + 8 * v4);
      this = (*(*v5 + 32))(v5);
      ++v4;
    }

    while (v4 < *(v1 + 32));
  }

  *(v1 + 32) = 0;
  if (*(v1 + 112) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(v1 + 104) + 8 * v6);
      this = (*(*v7 + 32))(v7);
      ++v6;
    }

    while (v6 < *(v1 + 112));
  }

  *(v1 + 112) = 0;
  *(v1 + 172) = 0;
  return this;
}

uint64_t CLP::LogEntry::PrivateData::SvInfo::MergePartialFromCodedStream(CLP::LogEntry::PrivateData::SvInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if (v6 != 2)
        {
          goto LABEL_56;
        }

        *(this + 43) |= 1u;
        v7 = *(this + 1);
        if (!v7)
        {
          operator new();
        }

        v97[0] = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97))
          {
            return 0;
          }
        }

        else
        {
          v97[0] = *v8;
          *(a2 + 1) = v8 + 1;
        }

        v33 = *(a2 + 14);
        v34 = *(a2 + 15);
        *(a2 + 14) = v33 + 1;
        if (v33 >= v34)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::SvId::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v35 = *(a2 + 14);
        v36 = __OFSUB__(v35, 1);
        v37 = v35 - 1;
        if (v37 < 0 == v36)
        {
          *(a2 + 14) = v37;
        }

        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 != 17)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
        goto LABEL_69;
      case 2u:
        if (v6 != 1)
        {
          goto LABEL_56;
        }

LABEL_69:
        *v97 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v97) & 1) == 0)
        {
          return 0;
        }

        *(this + 2) = *v97;
        *(this + 43) |= 2u;
        v39 = *(a2 + 1);
        v15 = *(a2 + 2);
        if (v39 >= v15 || *v39 != 24)
        {
          continue;
        }

        v16 = v39 + 1;
        *(a2 + 1) = v16;
LABEL_73:
        v97[0] = 0;
        if (v16 >= v15 || (v40 = *v16, (v40 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v40 = v97[0];
        }

        else
        {
          *(a2 + 1) = v16 + 1;
        }

        if (v40 <= 6)
        {
          *(this + 43) |= 4u;
          *(this + 14) = v40;
        }

        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2) || *v42 != 34)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v42 + 1;
LABEL_83:
          v43 = *(this + 9);
          v44 = *(this + 8);
          if (v44 >= v43)
          {
            if (v43 == *(this + 10))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 24));
              v43 = *(this + 9);
            }

            *(this + 9) = v43 + 1;
            operator new();
          }

          v45 = *(this + 3);
          *(this + 8) = v44 + 1;
          v46 = *(v45 + 8 * v44);
          v97[0] = 0;
          v47 = *(a2 + 1);
          if (v47 >= *(a2 + 2) || *v47 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97))
            {
              return 0;
            }
          }

          else
          {
            v97[0] = *v47;
            *(a2 + 1) = v47 + 1;
          }

          v48 = *(a2 + 14);
          v49 = *(a2 + 15);
          *(a2 + 14) = v48 + 1;
          if (v48 >= v49)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLP::LogEntry::PrivateData::SvPositionAtTime::MergePartialFromCodedStream(v46, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v50 = *(a2 + 14);
          v36 = __OFSUB__(v50, 1);
          v51 = v50 - 1;
          if (v51 < 0 == v36)
          {
            *(a2 + 14) = v51;
          }

          v42 = *(a2 + 1);
          if (v42 >= *(a2 + 2))
          {
            goto LABEL_1;
          }

          v52 = *v42;
        }

        while (v52 == 34);
        if (v52 != 41)
        {
          continue;
        }

        *(a2 + 1) = v42 + 1;
LABEL_101:
        *v97 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v97) & 1) == 0)
        {
          return 0;
        }

        *(this + 6) = *v97;
        *(this + 43) |= 0x10u;
        v53 = *(a2 + 1);
        if (v53 >= *(a2 + 2) || *v53 != 49)
        {
          continue;
        }

        *(a2 + 1) = v53 + 1;
LABEL_105:
        *v97 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v97) & 1) == 0)
        {
          return 0;
        }

        *(this + 8) = *v97;
        *(this + 43) |= 0x20u;
        v54 = *(a2 + 1);
        if (v54 >= *(a2 + 2) || *v54 != 57)
        {
          continue;
        }

        *(a2 + 1) = v54 + 1;
LABEL_109:
        *v97 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v97) & 1) == 0)
        {
          return 0;
        }

        *(this + 9) = *v97;
        *(this + 43) |= 0x40u;
        v55 = *(a2 + 1);
        if (v55 >= *(a2 + 2) || *v55 != 69)
        {
          continue;
        }

        *(a2 + 1) = v55 + 1;
LABEL_113:
        v97[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v97) & 1) == 0)
        {
          return 0;
        }

        *(this + 15) = v97[0];
        *(this + 43) |= 0x80u;
        v56 = *(a2 + 1);
        if (v56 >= *(a2 + 2) || *v56 != 77)
        {
          continue;
        }

        *(a2 + 1) = v56 + 1;
LABEL_117:
        v97[0] = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, v97) & 1) == 0)
        {
          return 0;
        }

        *(this + 20) = v97[0];
        *(this + 43) |= 0x100u;
        v57 = *(a2 + 1);
        v25 = *(a2 + 2);
        if (v57 >= v25 || *v57 != 80)
        {
          continue;
        }

        v26 = v57 + 1;
        *(a2 + 1) = v26;
LABEL_121:
        v97[0] = 0;
        if (v26 >= v25 || (v58 = *v26, (v58 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v58 = v97[0];
        }

        else
        {
          *(a2 + 1) = v26 + 1;
        }

        if (v58 <= 4)
        {
          *(this + 43) |= 0x200u;
          *(this + 21) = v58;
        }

        v59 = *(a2 + 1);
        v13 = *(a2 + 2);
        if (v59 >= v13 || *v59 != 88)
        {
          continue;
        }

        v14 = v59 + 1;
        *(a2 + 1) = v14;
LABEL_131:
        v97[0] = 0;
        if (v14 >= v13 || (v60 = *v14, (v60 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v60 = v97[0];
        }

        else
        {
          *(a2 + 1) = v14 + 1;
        }

        if (v60 <= 4)
        {
          *(this + 43) |= 0x400u;
          *(this + 22) = v60;
        }

        v61 = *(a2 + 1);
        v23 = *(a2 + 2);
        if (v61 >= v23 || *v61 != 96)
        {
          continue;
        }

        v24 = v61 + 1;
        *(a2 + 1) = v24;
LABEL_141:
        v97[0] = 0;
        if (v24 >= v23 || (v62 = *v24, (v62 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v62 = v97[0];
        }

        else
        {
          *(a2 + 1) = v24 + 1;
        }

        if (v62 <= 4)
        {
          *(this + 43) |= 0x800u;
          *(this + 23) = v62;
        }

        v63 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v63 >= v19 || *v63 != 104)
        {
          continue;
        }

        v20 = v63 + 1;
        *(a2 + 1) = v20;
LABEL_151:
        v97[0] = 0;
        if (v20 >= v19 || (v64 = *v20, (v64 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v64 = v97[0];
        }

        else
        {
          *(a2 + 1) = v20 + 1;
        }

        if (v64 <= 4)
        {
          *(this + 43) |= 0x1000u;
          *(this + 24) = v64;
        }

        v65 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v65 >= v11 || *v65 != 112)
        {
          continue;
        }

        v12 = v65 + 1;
        *(a2 + 1) = v12;
LABEL_161:
        v97[0] = 0;
        if (v12 >= v11 || (v66 = *v12, (v66 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v66 = v97[0];
        }

        else
        {
          *(a2 + 1) = v12 + 1;
        }

        if (v66 <= 4)
        {
          *(this + 43) |= 0x2000u;
          *(this + 25) = v66;
        }

        v67 = *(a2 + 1);
        if (v67 >= *(a2 + 2) || *v67 != 122)
        {
          continue;
        }

        do
        {
          *(a2 + 1) = v67 + 1;
LABEL_171:
          v68 = *(this + 29);
          v69 = *(this + 28);
          if (v69 >= v68)
          {
            if (v68 == *(this + 30))
            {
              wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 104));
              v68 = *(this + 29);
            }

            *(this + 29) = v68 + 1;
            operator new();
          }

          v70 = *(this + 13);
          *(this + 28) = v69 + 1;
          v71 = *(v70 + 8 * v69);
          v97[0] = 0;
          v72 = *(a2 + 1);
          if (v72 >= *(a2 + 2) || *v72 < 0)
          {
            if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97))
            {
              return 0;
            }
          }

          else
          {
            v97[0] = *v72;
            *(a2 + 1) = v72 + 1;
          }

          v73 = *(a2 + 14);
          v74 = *(a2 + 15);
          *(a2 + 14) = v73 + 1;
          if (v73 >= v74)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
          if (!CLP::LogEntry::PrivateData::SvBandCorrections::MergePartialFromCodedStream(v71, a2) || *(a2 + 36) != 1)
          {
            return 0;
          }

          wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
          v75 = *(a2 + 14);
          v36 = __OFSUB__(v75, 1);
          v76 = v75 - 1;
          if (v76 < 0 == v36)
          {
            *(a2 + 14) = v76;
          }

          v67 = *(a2 + 1);
          v77 = *(a2 + 2);
        }

        while (v67 < v77 && *v67 == 122);
        if (v77 - v67 < 2 || *v67 != 130 || v67[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v67 + 2;
LABEL_191:
        *(this + 43) |= 0x8000u;
        v78 = *(this + 16);
        if (!v78)
        {
          operator new();
        }

        v97[0] = 0;
        v79 = *(a2 + 1);
        if (v79 >= *(a2 + 2) || *v79 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97))
          {
            return 0;
          }
        }

        else
        {
          v97[0] = *v79;
          *(a2 + 1) = v79 + 1;
        }

        v80 = *(a2 + 14);
        v81 = *(a2 + 15);
        *(a2 + 14) = v80 + 1;
        if (v80 >= v81)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLP::LogEntry::PrivateData::PolynomialOrbit::MergePartialFromCodedStream(v78, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v82 = *(a2 + 14);
        v36 = __OFSUB__(v82, 1);
        v83 = v82 - 1;
        if (v83 < 0 == v36)
        {
          *(a2 + 14) = v83;
        }

        v84 = *(a2 + 1);
        v29 = *(a2 + 2);
        if (v29 - v84 <= 1 || *v84 != 144 || v84[1] != 1)
        {
          continue;
        }

        v30 = (v84 + 2);
        *(a2 + 1) = v30;
LABEL_206:
        v97[0] = 0;
        if (v30 >= v29 || (v85 = *v30, (v85 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v85 = v97[0];
        }

        else
        {
          *(a2 + 1) = v30 + 1;
        }

        if (v85 <= 4)
        {
          *(this + 43) |= 0x10000u;
          *(this + 34) = v85;
        }

        v86 = *(a2 + 1);
        v27 = *(a2 + 2);
        if (v27 - v86 < 2 || *v86 != 152 || v86[1] != 1)
        {
          continue;
        }

        v28 = (v86 + 2);
        *(a2 + 1) = v28;
LABEL_217:
        v97[0] = 0;
        if (v28 >= v27 || (v87 = *v28, (v87 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v87 = v97[0];
        }

        else
        {
          *(a2 + 1) = v28 + 1;
        }

        if (v87 <= 4)
        {
          *(this + 43) |= 0x20000u;
          *(this + 35) = v87;
        }

        v88 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v9 - v88 < 2 || *v88 != 160 || v88[1] != 1)
        {
          continue;
        }

        v10 = (v88 + 2);
        *(a2 + 1) = v10;
LABEL_228:
        v97[0] = 0;
        if (v10 >= v9 || (v89 = *v10, (v89 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v89 = v97[0];
        }

        else
        {
          *(a2 + 1) = v10 + 1;
        }

        if (v89 <= 4)
        {
          *(this + 43) |= 0x40000u;
          *(this + 36) = v89;
        }

        v90 = *(a2 + 1);
        v21 = *(a2 + 2);
        if (v21 - v90 < 2 || *v90 != 168 || v90[1] != 1)
        {
          continue;
        }

        v22 = (v90 + 2);
        *(a2 + 1) = v22;
LABEL_239:
        v97[0] = 0;
        if (v22 >= v21 || (v91 = *v22, (v91 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v91 = v97[0];
        }

        else
        {
          *(a2 + 1) = v22 + 1;
        }

        if (v91 <= 4)
        {
          *(this + 43) |= 0x80000u;
          *(this + 37) = v91;
        }

        v92 = *(a2 + 1);
        v31 = *(a2 + 2);
        if (v31 - v92 < 2 || *v92 != 176 || v92[1] != 1)
        {
          continue;
        }

        v32 = (v92 + 2);
        *(a2 + 1) = v32;
LABEL_250:
        v97[0] = 0;
        if (v32 >= v31 || (v93 = *v32, (v93 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
          if (!result)
          {
            return result;
          }

          v93 = v97[0];
        }

        else
        {
          *(a2 + 1) = v32 + 1;
        }

        if (v93 <= 4)
        {
          *(this + 43) |= 0x100000u;
          *(this + 40) = v93;
        }

        v94 = *(a2 + 1);
        if (*(a2 + 4) - v94 < 2 || *v94 != 185 || v94[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v94 + 2;
LABEL_261:
        *v97 = 0;
        if (wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v97))
        {
          *(this + 19) = *v97;
          *(this + 43) |= 0x200000u;
          v95 = *(a2 + 1);
          v17 = *(a2 + 2);
          if (v17 - v95 >= 2 && *v95 == 192 && v95[1] == 1)
          {
            v18 = (v95 + 2);
            *(a2 + 1) = v18;
LABEL_266:
            v97[0] = 0;
            if (v18 >= v17 || (v96 = *v18, (v96 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v97);
              if (!result)
              {
                return result;
              }

              v96 = v97[0];
            }

            else
            {
              *(a2 + 1) = v18 + 1;
            }

            if (v96 <= 3)
            {
              *(this + 43) |= 0x400000u;
              *(this + 41) = v96;
            }

            if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v16 = *(a2 + 1);
        v15 = *(a2 + 2);
        goto LABEL_73;
      case 4u:
        if (v6 == 2)
        {
          goto LABEL_83;
        }

        goto LABEL_56;
      case 5u:
        if (v6 == 1)
        {
          goto LABEL_101;
        }

        goto LABEL_56;
      case 6u:
        if (v6 == 1)
        {
          goto LABEL_105;
        }

        goto LABEL_56;
      case 7u:
        if (v6 == 1)
        {
          goto LABEL_109;
        }

        goto LABEL_56;
      case 8u:
        if (v6 == 5)
        {
          goto LABEL_113;
        }

        goto LABEL_56;
      case 9u:
        if (v6 == 5)
        {
          goto LABEL_117;
        }

        goto LABEL_56;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v26 = *(a2 + 1);
        v25 = *(a2 + 2);
        goto LABEL_121;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v14 = *(a2 + 1);
        v13 = *(a2 + 2);
        goto LABEL_131;
      case 0xCu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v24 = *(a2 + 1);
        v23 = *(a2 + 2);
        goto LABEL_141;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_151;
      case 0xEu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v12 = *(a2 + 1);
        v11 = *(a2 + 2);
        goto LABEL_161;
      case 0xFu:
        if (v6 == 2)
        {
          goto LABEL_171;
        }

        goto LABEL_56;
      case 0x10u:
        if (v6 == 2)
        {
          goto LABEL_191;
        }

        goto LABEL_56;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v30 = *(a2 + 1);
        v29 = *(a2 + 2);
        goto LABEL_206;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v28 = *(a2 + 1);
        v27 = *(a2 + 2);
        goto LABEL_217;
      case 0x14u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_228;
      case 0x15u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v22 = *(a2 + 1);
        v21 = *(a2 + 2);
        goto LABEL_239;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v32 = *(a2 + 1);
        v31 = *(a2 + 2);
        goto LABEL_250;
      case 0x17u:
        if (v6 == 1)
        {
          goto LABEL_261;
        }

        goto LABEL_56;
      case 0x18u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_56;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_266;
      default:
LABEL_56:
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