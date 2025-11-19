uint64_t ot::String<(unsigned short)128>::String(uint64_t a1)
{
  ot::String<(unsigned short)128>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 128);
  return a1;
}

uint64_t ot::LinkQualityInfo::GetFrameErrorRatePercent(ot::LinkQualityInfo *this)
{
  return ot::SuccessRateTracker::GetFailureRatePercent((this + 4));
}

{
  return ot::LinkQualityInfo::GetFrameErrorRatePercent(this);
}

uint64_t ot::LinkQualityInfo::GetMessageErrorRatePercent(ot::LinkQualityInfo *this)
{
  return ot::SuccessRateTracker::GetFailureRatePercent((this + 6));
}

{
  return ot::LinkQualityInfo::GetMessageErrorRatePercent(this);
}

uint64_t ot::LinkQualityInfo::GetMatterMessageErrorRatePercent(ot::LinkQualityInfo *this)
{
  return ot::SuccessRateTracker::GetFailureRatePercent((this + 8));
}

{
  return ot::LinkQualityInfo::GetMatterMessageErrorRatePercent(this);
}

uint64_t ot::LinkQualityInfo::GetHapMessageErrorRatePercent(ot::LinkQualityInfo *this)
{
  return ot::SuccessRateTracker::GetFailureRatePercent((this + 10));
}

{
  return ot::LinkQualityInfo::GetHapMessageErrorRatePercent(this);
}

uint64_t ot::GetTypicalRssForLinkQuality(char a1, char a2)
{
  switch(a2)
  {
    case 1:
      v3 = 5;
      break;
    case 2:
      v3 = 15;
      break;
    case 3:
      v3 = 50;
      break;
    default:
      v3 = 0;
      break;
  }

  return (v3 + a1);
}

uint64_t ot::CostForLinkQuality(unsigned __int8 a1)
{
  v2 = 16;
  if (a1 <= 3u)
  {
    return ot::CostForLinkQuality(ot::LinkQuality)::kCostsForLinkQuality[a1];
  }

  return v2;
}

ot::Lowpan::Lowpan *ot::Lowpan::Lowpan::Lowpan(ot::Lowpan::Lowpan *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  return this;
}

{
  ot::Lowpan::Lowpan::Lowpan(this, a2);
  return this;
}

uint64_t ot::Lowpan::Lowpan::FindContextForId(ot::InstanceLocator *a1, unsigned __int8 a2, ot::Ip6::Prefix *a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
  result = ot::NetworkData::Leader::GetContext(v3, a2, a3);
  if (result)
  {
    return ot::Clearable<ot::Lowpan::Context>::Clear(a3);
  }

  return result;
}

uint64_t ot::Clearable<ot::Lowpan::Context>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::Lowpan::Context>(a1);
}

{
  return ot::Clearable<ot::Lowpan::Context>::Clear(a1);
}

uint64_t ot::Lowpan::Lowpan::FindContextToCompressAddress(ot::InstanceLocator *a1, const ot::Ip6::Address *a2, ot::Ip6::Prefix *a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
  result = ot::NetworkData::Leader::GetContext(v3, a2, a3);
  if (result || (*(a3 + 18) & 1) == 0)
  {
    return ot::Clearable<ot::Lowpan::Context>::Clear(a3);
  }

  return result;
}

uint64_t ot::Lowpan::Lowpan::ComputeIid(ot::Mac::Address *a1, const ot::Ip6::Prefix *a2, ot::Ip6::InterfaceIdentifier *a3)
{
  v7 = 0;
  Type = ot::Mac::Address::GetType(a1);
  if (Type == 1)
  {
    Short = ot::Mac::Address::GetShort(a1);
    ot::Ip6::InterfaceIdentifier::SetToLocator(a3, Short);
LABEL_6:
    ot::Ip6::InterfaceIdentifier::ApplyPrefix(a3, a2);
    return v7;
  }

  if (Type == 2)
  {
    ot::Mac::Address::GetExtended(a1);
    ot::Ip6::InterfaceIdentifier::SetFromExtAddress(a3, v4);
    goto LABEL_6;
  }

  return 6;
}

uint64_t ot::Lowpan::Lowpan::CompressSourceIid(uint64_t a1, ot::Mac::Address *a2, ot::Ip6::Address *a3, const ot::Ip6::Prefix *a4, _WORD *a5, ot::FrameBuilder *a6)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v15 = 0;
  ot::Lowpan::Lowpan::ComputeIid(a2, a4, v14);
  IgnoreError();
  Iid = ot::Ip6::Address::GetIid(v19);
  if (ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(v14, Iid))
  {
    *v17 |= 0x30u;
  }

  else
  {
    v7 = ot::Ip6::Address::GetIid(v19);
    if (ot::Ip6::InterfaceIdentifier::IsLocator(v7))
    {
      *v17 |= 0x20u;
      v13 = v16;
      v8 = ot::Ip6::Address::GetIid(v19);
      Locator = ot::Ip6::InterfaceIdentifier::GetLocator(v8);
      return ot::FrameBuilder::AppendBigEndianUint16(v13, Locator);
    }

    else
    {
      *v17 |= 0x10u;
      v12 = v16;
      v10 = ot::Ip6::Address::GetIid(v19);
      return ot::FrameBuilder::Append<ot::Ip6::InterfaceIdentifier>(v12, v10);
    }
  }

  return v15;
}

uint64_t ot::FrameBuilder::Append<ot::Ip6::InterfaceIdentifier>(ot::FrameBuilder *a1, const void *a2)
{
  return ot::FrameBuilder::AppendBytes(a1, a2, 8u);
}

{
  return ot::FrameBuilder::Append<ot::Ip6::InterfaceIdentifier>(a1, a2);
}

uint64_t ot::Lowpan::Lowpan::CompressDestinationIid(uint64_t a1, ot::Mac::Address *a2, ot::Ip6::Address *a3, const ot::Ip6::Prefix *a4, _WORD *a5, ot::FrameBuilder *a6)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v15 = 0;
  ot::Lowpan::Lowpan::ComputeIid(a2, a4, v14);
  IgnoreError();
  Iid = ot::Ip6::Address::GetIid(v19);
  if (ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(v14, Iid))
  {
    *v17 |= 3u;
  }

  else
  {
    v7 = ot::Ip6::Address::GetIid(v19);
    if (ot::Ip6::InterfaceIdentifier::IsLocator(v7))
    {
      *v17 |= 2u;
      v13 = v16;
      v8 = ot::Ip6::Address::GetIid(v19);
      Locator = ot::Ip6::InterfaceIdentifier::GetLocator(v8);
      return ot::FrameBuilder::AppendBigEndianUint16(v13, Locator);
    }

    else
    {
      *v17 |= 1u;
      v12 = v16;
      v10 = ot::Ip6::Address::GetIid(v19);
      return ot::FrameBuilder::Append<ot::Ip6::InterfaceIdentifier>(v12, v10);
    }
  }

  return v15;
}

uint64_t ot::Lowpan::Lowpan::CompressMulticast(ot::Lowpan::Lowpan *this, const ot::Ip6::Address *a2, unsigned __int16 *a3, ot::FrameBuilder *a4)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  appended = 0;
  *a3 |= 8u;
  for (i = 2; i < 0x10uLL; ++i)
  {
    if (v12[i])
    {
      if (v12[1] == 2 && i >= 0xF)
      {
        *v11 |= 3u;
        return ot::FrameBuilder::AppendUint8(v10, v12[15]);
      }

      else if (i < 0xD)
      {
        if (i < 0xB)
        {
          ot::Lowpan::Lowpan::FindContextForId(this, 0, v8);
          Length = ot::Ip6::Prefix::GetLength(v8);
          if (Length == v12[3] && (ot::Ip6::Prefix::GetBytes(v8), !memcmp(v5, v12 + 4, 8uLL)))
          {
            *v11 |= 4u;
            appended = ot::FrameBuilder::AppendBytes(v10, v12 + 1, 2u);
            if (!appended)
            {
              return ot::FrameBuilder::AppendBytes(v10, v12 + 12, 4u);
            }
          }

          else
          {
            return ot::FrameBuilder::Append<ot::Ip6::Address>(v10, v12);
          }
        }

        else
        {
          *v11 |= 1u;
          appended = ot::FrameBuilder::AppendUint8(v10, v12[1]);
          if (!appended)
          {
            return ot::FrameBuilder::AppendBytes(v10, v12 + 11, 5u);
          }
        }
      }

      else
      {
        *v11 |= 2u;
        appended = ot::FrameBuilder::AppendUint8(v10, v12[1]);
        if (!appended)
        {
          return ot::FrameBuilder::AppendBytes(v10, v12 + 13, 3u);
        }
      }

      return appended;
    }
  }

  return appended;
}

uint64_t ot::FrameBuilder::Append<ot::Ip6::Address>(ot::FrameBuilder *a1, const void *a2)
{
  return ot::FrameBuilder::AppendBytes(a1, a2, 0x10u);
}

{
  return ot::FrameBuilder::Append<ot::Ip6::Address>(a1, a2);
}

uint64_t ot::Lowpan::Lowpan::Compress(ot::Lowpan::Lowpan *this, ot::Message *a2, const ot::Mac::Addresses *a3, ot::FrameBuilder *a4)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = 0;
  v7 = -1;
  while (v7)
  {
    v6 = *v9;
    v8 = ot::Lowpan::Lowpan::Compress(this, v11, v10, v9, &v7);
    if (!v8)
    {
      break;
    }

    *v9 = v6;
  }

  return v8;
}

uint64_t ot::Lowpan::Lowpan::Compress(ot::Lowpan::Lowpan *this, ot::Message *a2, const ot::Mac::Addresses *a3, ot::FrameBuilder *a4, unsigned __int8 *a5)
{
  v58 = this;
  v57 = a2;
  v56 = a3;
  v55 = a4;
  v54 = a5;
  *&v53[4] = 0;
  *v53 = ot::Message::GetOffset(a2);
  v52 = 24576;
  Length = 0;
  v49 = v50;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v38 = *v54;
  v35 = v57;
  Offset = ot::Message::GetOffset(v57);
  *&v53[2] = ot::Message::Read<ot::Ip6::Header>(v35, Offset, v50);
  if (!*&v53[2])
  {
    Source = ot::Ip6::Header::GetSource(v50);
    ot::Lowpan::Lowpan::FindContextToCompressAddress(this, Source, v46);
    Destination = ot::Ip6::Header::GetDestination(v50);
    ot::Lowpan::Lowpan::FindContextToCompressAddress(this, Destination, v43);
    Length = ot::FrameBuilder::GetLength(v55);
    *&v53[2] = ot::FrameBuilder::AppendBigEndianUint16(v55, v52);
    if (!*&v53[2])
    {
      if (!v47 && !v44 || (v52 |= 0x80u, (*&v53[2] = ot::FrameBuilder::AppendUint8(v55, v44 | (16 * v47))) == 0))
      {
        v40 = (4 * *v49) & 0x3C | (v49[1] >> 6);
        v41 = (4 * v49[1]) & 0xC0;
        if ((v49[1] & 0xF) != 0 || v49[2] || v49[3])
        {
          if (v40)
          {
            *&v53[2] = ot::FrameBuilder::AppendUint8(v55, v41 | v40);
            if (*&v53[2])
            {
              goto LABEL_65;
            }

            *&v53[2] = ot::FrameBuilder::AppendUint8(v55, v49[1] & 0xF);
            if (*&v53[2])
            {
              goto LABEL_65;
            }

            *&v53[2] = ot::FrameBuilder::AppendBytes(v55, v49 + 2, 2u);
            if (*&v53[2])
            {
              goto LABEL_65;
            }
          }

          else
          {
            v52 |= 0x800u;
            *&v53[2] = ot::FrameBuilder::AppendUint8(v55, v41 | (v49[1] & 0xF));
            if (*&v53[2])
            {
              goto LABEL_65;
            }

            *&v53[2] = ot::FrameBuilder::AppendBytes(v55, v49 + 2, 2u);
            if (*&v53[2])
            {
              goto LABEL_65;
            }
          }
        }

        else if (v40 || v41)
        {
          v52 |= 0x1000u;
          *&v53[2] = ot::FrameBuilder::AppendUint8(v55, v41 | v40);
          if (*&v53[2])
          {
            goto LABEL_65;
          }
        }

        else
        {
          v52 |= 0x1800u;
        }

        NextHeader = ot::Ip6::Header::GetNextHeader(v50);
        if ((!NextHeader || NextHeader == 17 || NextHeader == 41) && v39 + 1 < v38)
        {
          v52 |= 0x400u;
        }

        else
        {
          v33 = v55;
          v8 = ot::Ip6::Header::GetNextHeader(v50);
          *&v53[2] = ot::FrameBuilder::AppendUint8(v33, v8);
          if (*&v53[2])
          {
            goto LABEL_65;
          }
        }

        HopLimit = ot::Ip6::Header::GetHopLimit(v50);
        switch(HopLimit)
        {
          case 1:
            v52 |= 0x100u;
            break;
          case 64:
            v52 |= 0x200u;
            break;
          case 255:
            v52 |= 0x300u;
            break;
          default:
            v31 = v55;
            v9 = ot::Ip6::Header::GetHopLimit(v50);
            appended = ot::FrameBuilder::AppendUint8(v31, v9);
            *&v53[2] = appended;
            if (appended)
            {
              goto LABEL_65;
            }

            break;
        }

        v11 = ot::Ip6::Header::GetSource(v50);
        if (ot::Ip6::Address::IsUnspecified(v11))
        {
          v52 |= 0x40u;
        }

        else
        {
          v12 = ot::Ip6::Header::GetSource(v50);
          if (ot::Ip6::Address::IsLinkLocalUnicast(v12))
          {
            v30 = v56;
            v13 = ot::Ip6::Header::GetSource(v50);
            *&v53[2] = ot::Lowpan::Lowpan::CompressSourceIid(this, v30, v13, v46, &v52, v55);
            if (*&v53[2])
            {
              goto LABEL_65;
            }
          }

          else if (v48)
          {
            v52 |= 0x40u;
            v29 = v56;
            v14 = ot::Ip6::Header::GetSource(v50);
            *&v53[2] = ot::Lowpan::Lowpan::CompressSourceIid(this, v29, v14, v46, &v52, v55);
            if (*&v53[2])
            {
              goto LABEL_65;
            }
          }

          else
          {
            v28 = v55;
            v15 = ot::Ip6::Header::GetSource(v50);
            *&v53[2] = ot::FrameBuilder::Append<ot::Ip6::Address>(v28, v15);
            if (*&v53[2])
            {
              goto LABEL_65;
            }
          }
        }

        v16 = ot::Ip6::Header::GetDestination(v50);
        if (ot::Ip6::Address::IsMulticast(v16))
        {
          v17 = ot::Ip6::Header::GetDestination(v50);
          *&v53[2] = ot::Lowpan::Lowpan::CompressMulticast(this, v17, &v52, v55);
          if (*&v53[2])
          {
            goto LABEL_65;
          }
        }

        else
        {
          v18 = ot::Ip6::Header::GetDestination(v50);
          if (ot::Ip6::Address::IsLinkLocalUnicast(v18))
          {
            v27 = (v56 + 10);
            v19 = ot::Ip6::Header::GetDestination(v50);
            *&v53[2] = ot::Lowpan::Lowpan::CompressDestinationIid(this, v27, v19, v43, &v52, v55);
            if (*&v53[2])
            {
              goto LABEL_65;
            }
          }

          else if (v45)
          {
            v52 |= 4u;
            v26 = (v56 + 10);
            v20 = ot::Ip6::Header::GetDestination(v50);
            *&v53[2] = ot::Lowpan::Lowpan::CompressDestinationIid(this, v26, v20, v43, &v52, v55);
            if (*&v53[2])
            {
              goto LABEL_65;
            }
          }

          else
          {
            v25 = v55;
            v21 = ot::Ip6::Header::GetDestination(v50);
            *&v53[2] = ot::FrameBuilder::Append<ot::Ip6::Address>(v25, v21);
            if (*&v53[2])
            {
              goto LABEL_65;
            }
          }
        }

        ++v39;
        ot::Message::MoveOffset(v57, 40);
        v42 = ot::Ip6::Header::GetNextHeader(v50);
        while (v39 < v38)
        {
          if (v42)
          {
            if (v42 == 17)
            {
              *&v53[2] = ot::Lowpan::Lowpan::CompressUdp(this, v57, v55);
            }

            else if (v42 == 41)
            {
              *&v53[2] = ot::FrameBuilder::AppendUint8(v55, 238);
              if (!*&v53[2])
              {
                *&v53[2] = ot::Lowpan::Lowpan::Compress(this, v57, v56, v55);
              }
            }

            break;
          }

          *&v53[2] = ot::Lowpan::Lowpan::CompressExtensionHeader(this, v57, v55, &v42);
          if (*&v53[2])
          {
            break;
          }

          ++v39;
        }
      }
    }
  }

LABEL_65:
  *v54 = v39;
  if (*&v53[2])
  {
    ot::Message::SetOffset(v57, *v53);
  }

  else
  {
    v24 = v55;
    v23 = Length;
    v37 = ot::BigEndian::HostSwap16(v52);
    ot::FrameBuilder::Write<unsigned short>(v24, v23, &v37);
  }

  return *&v53[2];
}

uint64_t ot::Lowpan::Lowpan::CompressExtensionHeader(ot::Lowpan::Lowpan *this, ot::Message *a2, ot::FrameBuilder *a3, unsigned __int8 *a4)
{
  v26 = this;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  *&v22[4] = 0;
  *v22 = ot::Message::GetOffset(a2);
  v20 = 0;
  v19 = 0;
  v18 = 0;
  Offset = ot::Message::GetOffset(v25);
  *&v22[2] = ot::Message::Read<ot::Ip6::ExtensionHeader>(v25, Offset, v21);
  if (!*&v22[2])
  {
    ot::Message::MoveOffset(v25, 2);
    v18 = -32;
    NextHeader = ot::Ip6::ExtensionHeader::GetNextHeader(v21);
    if (NextHeader == 17 || NextHeader == 41)
    {
      v18 |= 1u;
    }

    else
    {
      *&v22[2] = ot::FrameBuilder::AppendUint8(v24, v18);
      if (*&v22[2])
      {
        goto LABEL_24;
      }

      v18 = ot::Ip6::ExtensionHeader::GetNextHeader(v21);
    }

    *&v22[2] = ot::FrameBuilder::AppendUint8(v24, v18);
    if (!*&v22[2])
    {
      v20 = ot::Ip6::ExtensionHeader::GetSize(v21) - 2;
      if (v20 <= 0xFFu)
      {
        if (!*v23 || *v23 == 60)
        {
          v16 = 0;
          v5 = ot::Message::GetOffset(v25);
          ot::OffsetRange::Init(v17, v5, v20);
          while (!ot::OffsetRange::IsEmpty(v17))
          {
            *&v22[2] = ot::Ip6::Option::ParseFrom(v15, v25, v17);
            if (*&v22[2])
            {
              goto LABEL_24;
            }

            v16 = 1;
            Size = ot::Ip6::Option::GetSize(v15);
            ot::OffsetRange::AdvanceOffset(v17, Size);
          }

          if ((v16 & 1) != 0 && ot::Ip6::Option::IsPadding(v15))
          {
            v19 = ot::Ip6::Option::GetSize(v15);
            v20 -= v19;
          }
        }

        v7 = ot::Message::GetOffset(v25);
        v13 = v7 + v20 + v19;
        if (v13 <= ot::Message::GetLength(v25))
        {
          v8 = ot::Ip6::ExtensionHeader::GetNextHeader(v21);
          *v23 = v8;
          *&v22[2] = ot::FrameBuilder::AppendUint8(v24, v20);
          if (!*&v22[2])
          {
            v12 = v24;
            v11 = v25;
            v9 = ot::Message::GetOffset(v25);
            *&v22[2] = ot::FrameBuilder::AppendBytesFromMessage(v12, v11, v9, v20);
            if (!*&v22[2])
            {
              ot::Message::MoveOffset(v25, v20 + v19);
            }
          }
        }

        else
        {
          *&v22[2] = 6;
        }
      }

      else
      {
        *&v22[2] = 1;
      }
    }
  }

LABEL_24:
  if (*&v22[2])
  {
    ot::Message::SetOffset(v25, *v22);
  }

  return *&v22[2];
}

uint64_t ot::Lowpan::Lowpan::CompressUdp(ot::Lowpan::Lowpan *this, ot::Message *a2, ot::FrameBuilder *a3)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  *&v10[4] = 0;
  *v10 = ot::Message::GetOffset(a2);
  Offset = ot::Message::GetOffset(v12);
  *&v10[2] = ot::Message::Read<ot::Ip6::Udp::Header>(v12, Offset, v9);
  if (!*&v10[2])
  {
    *v8 = ot::Ip6::Udp::Header::GetSourcePort(v9);
    *v7 = ot::Ip6::Udp::Header::GetDestinationPort(v9);
    if ((*v8 & 0xFFF0) == 0xF0B0 && (*v7 & 0xFFF0) == 0xF0B0)
    {
      *&v10[2] = ot::FrameBuilder::AppendUint8(v11, 243);
      if (*&v10[2])
      {
        goto LABEL_21;
      }

      *&v10[2] = ot::FrameBuilder::AppendUint8(v11, v7[0] & 0xF | (16 * (v8[0] & 0xFu)));
      if (*&v10[2])
      {
        goto LABEL_21;
      }
    }

    else if ((*v8 & 0xFF00) == 0xF000)
    {
      *&v10[2] = ot::FrameBuilder::AppendUint8(v11, 242);
      if (*&v10[2])
      {
        goto LABEL_21;
      }

      *&v10[2] = ot::FrameBuilder::AppendUint8(v11, v8[0]);
      if (*&v10[2])
      {
        goto LABEL_21;
      }

      *&v10[2] = ot::FrameBuilder::AppendBigEndianUint16(v11, *v7);
      if (*&v10[2])
      {
        goto LABEL_21;
      }
    }

    else if ((*v7 & 0xFF00) == 0xF000)
    {
      *&v10[2] = ot::FrameBuilder::AppendUint8(v11, 241);
      if (*&v10[2])
      {
        goto LABEL_21;
      }

      *&v10[2] = ot::FrameBuilder::AppendBigEndianUint16(v11, *v8);
      if (*&v10[2])
      {
        goto LABEL_21;
      }

      *&v10[2] = ot::FrameBuilder::AppendUint8(v11, v7[0]);
      if (*&v10[2])
      {
        goto LABEL_21;
      }
    }

    else
    {
      *&v10[2] = ot::FrameBuilder::AppendUint8(v11, 240);
      if (*&v10[2])
      {
        goto LABEL_21;
      }

      *&v10[2] = ot::FrameBuilder::AppendBytes(v11, v9, 4u);
      if (*&v10[2])
      {
        goto LABEL_21;
      }
    }

    v6 = v11;
    Checksum = ot::Ip6::Udp::Header::GetChecksum(v9);
    *&v10[2] = ot::FrameBuilder::AppendBigEndianUint16(v6, Checksum);
    if (!*&v10[2])
    {
      ot::Message::MoveOffset(v12, 8);
    }
  }

LABEL_21:
  if (*&v10[2])
  {
    ot::Message::SetOffset(v12, *v10);
  }

  return *&v10[2];
}

void *ot::FrameBuilder::Write<unsigned short>(ot::FrameBuilder *a1, unsigned __int16 a2, const void *a3)
{
  return ot::FrameBuilder::WriteBytes(a1, a2, a3, 2u);
}

{
  return ot::FrameBuilder::Write<unsigned short>(a1, a2, a3);
}

uint64_t ot::Lowpan::Lowpan::DispatchToNextHeader(ot::Lowpan::Lowpan *this, char a2, unsigned __int8 *a3)
{
  v5 = 0;
  if ((a2 & 0xF0) == 0xE0)
  {
    v4 = a2 & 0xE;
    if ((a2 & 0xE) != 0)
    {
      switch(v4)
      {
        case 2:
          *a3 = 43;
          break;
        case 4:
          *a3 = 44;
          break;
        case 6:
          *a3 = 60;
          break;
        case 14:
          *a3 = 41;
          break;
        default:
          return 6;
      }
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {
    if ((a2 & 0xF8) != 0xF0)
    {
      return 6;
    }

    *a3 = 17;
  }

  return v5;
}

uint64_t ot::Lowpan::Lowpan::DecompressBaseHeader(ot::Lowpan::Lowpan *this, ot::Ip6::Header *a2, BOOL *a3, const ot::Mac::Addresses *a4, ot::FrameData *a5)
{
  v70 = this;
  v69 = a2;
  v68 = a3;
  v67 = a4;
  v66 = a5;
  v65 = 6;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v57 = 0;
  if (!ot::FrameData::ReadBigEndianUint16(a5, &v64) && (v64 & 0xE000) == 0x6000)
  {
    if ((v64 & 0x80) != 0)
    {
      if (ot::FrameData::ReadUint8(v66, &v63))
      {
        return v65;
      }

      v62 = v63 >> 4;
      v61 = v63 & 0xF;
    }

    ot::Lowpan::Lowpan::FindContextForId(this, v62, v60);
    ot::Lowpan::Lowpan::FindContextForId(this, v61, v58);
    ot::Clearable<ot::Ip6::Header>::Clear(v69);
    ot::Ip6::Header::InitVersionTrafficClassFlow(v69);
    if ((v64 & 0x1800) != 0x1800)
    {
      v56 = v69;
      if (ot::Data<(ot::DataLengthType)1>::GetLength(v66) <= 0)
      {
        return v65;
      }

      v56[1] |= (*ot::Data<(ot::DataLengthType)1>::GetBytes(v66) & 0xC0) >> 2;
      if ((v64 & 0x800) == 0)
      {
        ot::FrameData::ReadUint8(v66, &v63);
        IgnoreError();
        *v56 |= (v63 >> 2) & 0xF;
        v56[1] |= v63 << 6;
      }

      if ((v64 & 0x1000) == 0)
      {
        if (ot::Data<(ot::DataLengthType)1>::GetLength(v66) < 3)
        {
          return v65;
        }

        v56[1] |= *ot::Data<(ot::DataLengthType)1>::GetBytes(v66) & 0xF;
        v56[2] |= *(ot::Data<(ot::DataLengthType)1>::GetBytes(v66) + 1);
        v56[3] |= *(ot::Data<(ot::DataLengthType)1>::GetBytes(v66) + 2);
        ot::FrameData::SkipOver(v66, 3u);
      }
    }

    if ((v64 & 0x400) != 0)
    {
      *v68 = 1;
    }

    else
    {
      if (ot::FrameData::ReadUint8(v66, &v63))
      {
        return v65;
      }

      ot::Ip6::Header::SetNextHeader(v69, v63);
      *v68 = 0;
    }

    v54 = v64 & 0x300;
    switch(v54)
    {
      case 256:
        ot::Ip6::Header::SetHopLimit(v69, 1);
        break;
      case 512:
        ot::Ip6::Header::SetHopLimit(v69, 64);
        break;
      case 768:
        ot::Ip6::Header::SetHopLimit(v69, 255);
        break;
      default:
        if (ot::FrameData::ReadUint8(v66, &v63))
        {
          return v65;
        }

        ot::Ip6::Header::SetHopLimit(v69, v63);
        break;
    }

    v53 = v64 & 0x30;
    if ((v64 & 0x30) != 0)
    {
      switch(v53)
      {
        case 16:
          v51 = v66;
          Source = ot::Ip6::Header::GetSource(v69);
          Iid = ot::Ip6::Address::GetIid(Source);
          if (ot::FrameData::Read<ot::Ip6::InterfaceIdentifier>(v51, Iid))
          {
            return v65;
          }

          break;
        case 32:
          *(ot::Ip6::Header::GetSource(v69) + 11) = -1;
          *(ot::Ip6::Header::GetSource(v69) + 12) = -2;
          v50 = v66;
          v9 = ot::Ip6::Header::GetSource(v69);
          if (ot::FrameData::ReadBytes(v50, (v9 + 14), 2u))
          {
            return v65;
          }

          break;
        case 48:
          v49 = v67;
          v10 = ot::Ip6::Header::GetSource(v69);
          v11 = ot::Ip6::Address::GetIid(v10);
          ot::Lowpan::Lowpan::ComputeIid(v49, v60, v11);
          IgnoreError();
          break;
      }
    }

    else if ((v64 & 0x40) == 0)
    {
      v52 = v66;
      v6 = ot::Ip6::Header::GetSource(v69);
      if (ot::FrameData::Read<ot::Ip6::Address>(v52, v6))
      {
        return v65;
      }
    }

    if ((v64 & 0x30) != 0)
    {
      if ((v64 & 0x40) != 0)
      {
        if ((v60[19] & 1) == 0)
        {
          return v65;
        }

        v12 = ot::Ip6::Header::GetSource(v69);
        ot::Ip6::Address::SetPrefix(v12, v60);
      }

      else
      {
        v48 = ot::BigEndian::HostSwap16(0xFE80);
        *ot::Ip6::Header::GetSource(v69) = v48;
      }
    }

    if ((v64 & 8) != 0)
    {
      *ot::Ip6::Header::GetDestination(v69) = -1;
      if ((v64 & 4) != 0)
      {
        if ((v64 & 3) != 0)
        {
          return v65;
        }

        if ((v59 & 1) == 0)
        {
          return v65;
        }

        v34 = v66;
        Destination = ot::Ip6::Header::GetDestination(v69);
        if (ot::FrameData::ReadBytes(v34, (Destination + 1), 2u))
        {
          return v65;
        }

        Length = ot::Ip6::Prefix::GetLength(v58);
        *(ot::Ip6::Header::GetDestination(v69) + 3) = Length;
        v33 = ot::Ip6::Header::GetDestination(v69);
        ot::Ip6::Prefix::GetBytes(v58);
        *(v33 + 4) = *v27;
        v31 = v66;
        v28 = ot::Ip6::Header::GetDestination(v69);
        if (ot::FrameData::ReadBytes(v31, (v28 + 12), 4u))
        {
          return v65;
        }
      }

      else
      {
        v41 = v64 & 3;
        if ((v64 & 3) != 0)
        {
          switch(v41)
          {
            case 1:
              v39 = v66;
              v21 = ot::Ip6::Header::GetDestination(v69);
              if (ot::FrameData::ReadUint8(v39, (v21 + 1)))
              {
                return v65;
              }

              v38 = v66;
              v22 = ot::Ip6::Header::GetDestination(v69);
              if (ot::FrameData::ReadBytes(v38, (v22 + 11), 5u))
              {
                return v65;
              }

              break;
            case 2:
              v37 = v66;
              v23 = ot::Ip6::Header::GetDestination(v69);
              if (ot::FrameData::ReadUint8(v37, (v23 + 1)))
              {
                return v65;
              }

              v36 = v66;
              v24 = ot::Ip6::Header::GetDestination(v69);
              if (ot::FrameData::ReadBytes(v36, (v24 + 13), 3u))
              {
                return v65;
              }

              break;
            case 3:
              *(ot::Ip6::Header::GetDestination(v69) + 1) = 2;
              v35 = v66;
              v25 = ot::Ip6::Header::GetDestination(v69);
              if (ot::FrameData::ReadUint8(v35, (v25 + 15)))
              {
                return v65;
              }

              break;
          }
        }

        else
        {
          v40 = v66;
          v20 = ot::Ip6::Header::GetDestination(v69);
          if (ot::FrameData::Read<ot::Ip6::Address>(v40, v20))
          {
            return v65;
          }
        }
      }
    }

    else
    {
      v47 = v64 & 3;
      if ((v64 & 3) != 0)
      {
        switch(v47)
        {
          case 1:
            v45 = v66;
            v14 = ot::Ip6::Header::GetDestination(v69);
            v15 = ot::Ip6::Address::GetIid(v14);
            if (ot::FrameData::Read<ot::Ip6::InterfaceIdentifier>(v45, v15))
            {
              return v65;
            }

            break;
          case 2:
            *(ot::Ip6::Header::GetDestination(v69) + 11) = -1;
            *(ot::Ip6::Header::GetDestination(v69) + 12) = -2;
            v44 = v66;
            v16 = ot::Ip6::Header::GetDestination(v69);
            if (ot::FrameData::ReadBytes(v44, (v16 + 14), 2u))
            {
              return v65;
            }

            break;
          case 3:
            v43 = (v67 + 10);
            v17 = ot::Ip6::Header::GetDestination(v69);
            v18 = ot::Ip6::Address::GetIid(v17);
            if (ot::Lowpan::Lowpan::ComputeIid(v43, v58, v18))
            {
              return v65;
            }

            break;
        }
      }

      else
      {
        if ((v64 & 4) != 0)
        {
          return v65;
        }

        v46 = v66;
        v13 = ot::Ip6::Header::GetDestination(v69);
        if (ot::FrameData::Read<ot::Ip6::Address>(v46, v13))
        {
          return v65;
        }
      }

      if ((v64 & 4) != 0)
      {
        if ((v59 & 1) == 0)
        {
          return v65;
        }

        v19 = ot::Ip6::Header::GetDestination(v69);
        ot::Ip6::Address::SetPrefix(v19, v58);
      }

      else if ((v64 & 3) != 0)
      {
        v42 = ot::BigEndian::HostSwap16(0xFE80);
        *ot::Ip6::Header::GetDestination(v69) = v42;
      }
    }

    if ((v64 & 0x400) == 0)
    {
      return 0;
    }

    if (ot::Data<(ot::DataLengthType)1>::GetLength(v66) > 0)
    {
      Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v66);
      if (!ot::Lowpan::Lowpan::DispatchToNextHeader(this, *Bytes, &v57))
      {
        ot::Ip6::Header::SetNextHeader(v69, v57);
        return 0;
      }
    }
  }

  return v65;
}

void *ot::Clearable<ot::Ip6::Header>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Ip6::Header>(a1);
}

{
  return ot::Clearable<ot::Ip6::Header>::Clear(a1);
}

uint64_t ot::FrameData::Read<ot::Ip6::Address>(ot::FrameData *a1, void *a2)
{
  return ot::FrameData::ReadBytes(a1, a2, 0x10u);
}

{
  return ot::FrameData::Read<ot::Ip6::Address>(a1, a2);
}

uint64_t ot::FrameData::Read<ot::Ip6::InterfaceIdentifier>(ot::FrameData *a1, void *a2)
{
  return ot::FrameData::ReadBytes(a1, a2, 8u);
}

{
  return ot::FrameData::Read<ot::Ip6::InterfaceIdentifier>(a1, a2);
}

uint64_t ot::Lowpan::Lowpan::DecompressExtensionHeader(ot::Lowpan::Lowpan *this, ot::Message *a2, ot::FrameData *a3)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = 6;
  v14 = 0;
  v13 = 0;
  if (!ot::FrameData::ReadUint8(a3, &v13))
  {
    if (v13)
    {
      if (ot::FrameData::ReadUint8(v17, &v14))
      {
        return v16;
      }

      if (!ot::FrameData::CanRead(v17, v14 + 1))
      {
        return v16;
      }

      Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(v17);
      if (ot::Lowpan::Lowpan::DispatchToNextHeader(this, *(Bytes + v14), v15))
      {
        return v16;
      }
    }

    else if (ot::FrameData::ReadUint8(v17, v15) || ot::FrameData::ReadUint8(v17, &v14) || !ot::FrameData::CanRead(v17, v14))
    {
      return v16;
    }

    v15[1] = (v14 + 9) / 8 - 1;
    if (!ot::Message::AppendBytes(v18, v15, 2u))
    {
      ot::Message::MoveOffset(v18, 2);
      v10 = v18;
      v4 = ot::Data<(ot::DataLengthType)1>::GetBytes(v17);
      if (!ot::Message::AppendBytes(v10, v4, v14))
      {
        ot::Message::MoveOffset(v18, v14);
        ot::FrameData::SkipOver(v17, v14);
        if (ot::Ip6::PadOption::InitToPadHeaderWithSize(v12, v14 + 2))
        {
          return 0;
        }

        v9 = v18;
        Size = ot::Ip6::Option::GetSize(v12);
        if (!ot::Message::AppendBytes(v9, v12, Size))
        {
          v8 = v18;
          v6 = ot::Ip6::Option::GetSize(v12);
          ot::Message::MoveOffset(v8, v6);
          return 0;
        }
      }
    }
  }

  return v16;
}

BOOL ot::FrameData::CanRead(ot::FrameData *this, unsigned __int16 a2)
{
  return ot::Data<(ot::DataLengthType)1>::GetLength(this) >= a2;
}

{
  return ot::FrameData::CanRead(this, a2);
}

uint64_t ot::Lowpan::Lowpan::DecompressUdpHeader(ot::Lowpan::Lowpan *this, ot::Ip6::Udp::Header *a2, ot::FrameData *a3)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = 6;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  if (!ot::FrameData::ReadUint8(a3, &v9) && (v9 & 0xF8) == 0xF0)
  {
    ot::Clearable<ot::Ip6::Udp::Header>::Clear(v12);
    v4 = v9 & 3;
    if ((v9 & 3) != 0)
    {
      switch(v4)
      {
        case 1:
          if (ot::FrameData::ReadBigEndianUint16(v11, &v7) || ot::FrameData::ReadUint8(v11, &v8))
          {
            return v10;
          }

          v6 = v8 | 0xF000;
          break;
        case 2:
          if (ot::FrameData::ReadUint8(v11, &v8))
          {
            return v10;
          }

          v7 = v8 | 0xF000;
          if (ot::FrameData::ReadBigEndianUint16(v11, &v6))
          {
            return v10;
          }

          break;
        case 3:
          if (ot::FrameData::ReadUint8(v11, &v8))
          {
            return v10;
          }

          v7 = (v8 >> 4) | 0xF0B0;
          v6 = v8 & 0xF | 0xF0B0;
          break;
      }
    }

    else if (ot::FrameData::ReadBigEndianUint16(v11, &v7) || ot::FrameData::ReadBigEndianUint16(v11, &v6))
    {
      return v10;
    }

    ot::Ip6::Udp::Header::SetSourcePort(v12, v7);
    ot::Ip6::Udp::Header::SetDestinationPort(v12, v6);
    if ((v9 & 4) == 0)
    {
      v5 = 0;
      if (!ot::FrameData::ReadBigEndianUint16(v11, &v5))
      {
        ot::Ip6::Udp::Header::SetChecksum(v12, v5);
        return 0;
      }
    }
  }

  return v10;
}

void *ot::Clearable<ot::Ip6::Udp::Header>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Ip6::Udp::Header>(a1);
}

{
  return ot::Clearable<ot::Ip6::Udp::Header>::Clear(a1);
}

uint64_t ot::Lowpan::Lowpan::DecompressUdpHeader(ot::Lowpan::Lowpan *this, ot::Message *a2, ot::FrameData *a3, __int16 a4)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = 0;
  v9 = ot::Lowpan::Lowpan::DecompressUdpHeader(this, v8, a3);
  if (!v9)
  {
    if (v10)
    {
      v7 = v10;
      Offset = ot::Message::GetOffset(v12);
      ot::Ip6::Udp::Header::SetLength(v8, v7 - Offset);
    }

    else
    {
      Length = ot::Data<(ot::DataLengthType)1>::GetLength(v11);
      ot::Ip6::Udp::Header::SetLength(v8, Length + 8);
    }

    v9 = ot::Message::Append<ot::Ip6::Udp::Header>(v12, v8);
    if (!v9)
    {
      ot::Message::MoveOffset(v12, 8);
    }
  }

  return v9;
}

uint64_t ot::Message::Append<ot::Ip6::Udp::Header>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 8u);
}

{
  return ot::Message::Append<ot::Ip6::Udp::Header>(a1, a2);
}

uint64_t ot::Lowpan::Lowpan::Decompress(ot::Lowpan::Lowpan *this, ot::Message *a2, const ot::Mac::Addresses *a3, ot::FrameData *a4, __int16 a5)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = 6;
  v12 = 0;
  *v11 = 0;
  Offset = ot::Message::GetOffset(a2);
  if (!ot::Lowpan::Lowpan::DecompressBaseHeader(this, v13, &v12, v17, v16) && !ot::Message::Append<ot::Ip6::Header>(v18, v13))
  {
    ot::Message::MoveOffset(v18, 40);
    while (v12)
    {
      if (ot::Data<(ot::DataLengthType)1>::GetLength(v16) <= 0)
      {
        return v14;
      }

      v9 = *ot::Data<(ot::DataLengthType)1>::GetBytes(v16);
      if ((v9 & 0xF0) == 0xE0)
      {
        if ((v9 & 0xE) == 0xE)
        {
          v12 = 0;
          ot::FrameData::SkipOver(v16, 1u);
          if (ot::Lowpan::Lowpan::Decompress(this, v18, v17, v16, v15))
          {
            return v14;
          }
        }

        else
        {
          v12 = (v9 & 1) != 0;
          if (ot::Lowpan::Lowpan::DecompressExtensionHeader(this, v18, v16))
          {
            return v14;
          }
        }
      }

      else
      {
        if ((v9 & 0xF8) != 0xF0)
        {
          return v14;
        }

        v12 = 0;
        if (ot::Lowpan::Lowpan::DecompressUdpHeader(this, v18, v16, v15))
        {
          return v14;
        }
      }
    }

    if (v15)
    {
      *v11 = ot::BigEndian::HostSwap16((v15 - Offset - 40));
    }

    else
    {
      v7 = (ot::Message::GetOffset(v18) - Offset) - 40;
      Length = ot::Data<(ot::DataLengthType)1>::GetLength(v16);
      *v11 = ot::BigEndian::HostSwap16((v7 + Length));
    }

    ot::Message::Write<unsigned short>(v18, Offset + 4, v11);
    return 0;
  }

  return v14;
}

uint64_t ot::Lowpan::Lowpan::DecompressEcn(ot::Lowpan::Lowpan *this, const ot::Message *a2, unsigned __int16 a3)
{
  v6 = this;
  *&v5[3] = a2;
  v5[2] = a3;
  HIBYTE(v5[1]) = 0;
  v5[0] = 0;
  v4 = 0;
  if (!ot::Message::Read<unsigned short>(a2, a3, v5))
  {
    v5[0] = ot::BigEndian::HostSwap16(v5[0]);
    if ((v5[0] & 0xE000) == 0x6000)
    {
      v5[2] += 2;
      if ((v5[0] & 0x1800) != 0x1800 && !ot::Message::Read<unsigned char>(*&v5[3], v5[2], &v4))
      {
        HIBYTE(v5[1]) = (v4 & 0xC0) >> 6;
      }
    }
  }

  return HIBYTE(v5[1]);
}

uint64_t ot::Lowpan::Lowpan::MarkCompressedEcn(ot::Lowpan::Lowpan *this, ot::Message *a2, __int16 a3)
{
  v7 = this;
  v6 = a2;
  v4 = 0;
  v5 = a3 + 2;
  ot::Message::Read<unsigned char>(a2, a3 + 2, &v4);
  IgnoreError();
  v4 = v4 & 0x3F | 0xC0;
  return ot::Message::Write<unsigned char>(v6, v5, &v4);
}

uint64_t ot::Lowpan::MeshHeader::Init(uint64_t this, __int16 a2, __int16 a3, char a4)
{
  *this = a2;
  *(this + 2) = a3;
  *(this + 4) = a4;
  return this;
}

BOOL ot::Lowpan::MeshHeader::IsMeshHeader(ot::Lowpan::MeshHeader *this, const ot::FrameData *a2)
{
  v3 = 0;
  if (ot::Data<(ot::DataLengthType)1>::GetLength(this) >= 5)
  {
    return (*ot::Data<(ot::DataLengthType)1>::GetBytes(this) & 0xC0) == 128;
  }

  return v3;
}

uint64_t ot::Lowpan::MeshHeader::ParseFrom(ot::Lowpan::MeshHeader *this, ot::FrameData *a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(a2);
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(v8);
  v7 = ot::Lowpan::MeshHeader::ParseFrom(this, Bytes, Length, &v6);
  if (!v7)
  {
    ot::FrameData::SkipOver(v8, v6);
  }

  return v7;
}

uint64_t ot::Lowpan::MeshHeader::ParseFrom(ot::Lowpan::MeshHeader *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  v8 = 6;
  if (a3 >= 5u)
  {
    v9 = a2 + 1;
    v7 = *a2;
    if ((v7 & 0xF0) == 0xB0)
    {
      *(this + 4) = v7 & 0xF;
      if (*(this + 4) == 15)
      {
        if (a3 < 6u)
        {
          return v8;
        }

        v9 = a2 + 2;
        *(this + 4) = a2[1];
        *a4 = 6;
      }

      else
      {
        *a4 = 5;
      }

      *this = ot::BigEndian::ReadUint16(v9, a2);
      *(this + 1) = ot::BigEndian::ReadUint16((v9 + 2), v4);
      return 0;
    }
  }

  return v8;
}

uint64_t ot::Lowpan::MeshHeader::ParseFrom(ot::Lowpan::MeshHeader *this, const ot::Message *a2)
{
  v5 = this;
  v4 = a2;
  v3 = 0;
  return ot::Lowpan::MeshHeader::ParseFrom(this, a2, &v3);
}

uint64_t ot::Lowpan::MeshHeader::ParseFrom(ot::Lowpan::MeshHeader *this, const ot::Message *a2, unsigned __int16 *a3)
{
  v9 = this;
  v8 = a2;
  v7 = a3;
  Bytes = ot::Message::ReadBytes(a2, 0, v6, 6u);
  return ot::Lowpan::MeshHeader::ParseFrom(this, v6, Bytes, v7);
}

uint64_t ot::Lowpan::MeshHeader::GetHeaderLength(ot::Lowpan::MeshHeader *this)
{
  if (*(this + 4) < 0xFu)
  {
    return 5;
  }

  else
  {
    return 6;
  }
}

uint64_t ot::Lowpan::MeshHeader::DecrementHopsLeft(uint64_t this)
{
  if (*(this + 4))
  {
    --*(this + 4);
  }

  return this;
}

uint64_t ot::Lowpan::MeshHeader::AppendTo(ot::Lowpan::MeshHeader *this, ot::FrameBuilder *a2)
{
  if (*(this + 4) < 0xFu)
  {
    appended = ot::FrameBuilder::AppendUint8(a2, *(this + 4) | 0xB0u);
    if (appended)
    {
      return appended;
    }
  }

  else
  {
    v2 = ot::FrameBuilder::AppendUint8(a2, 191);
    appended = v2;
    if (v2)
    {
      return appended;
    }

    appended = ot::FrameBuilder::AppendUint8(a2, *(this + 4));
    if (appended)
    {
      return appended;
    }
  }

  appended = ot::FrameBuilder::AppendBigEndianUint16(a2, *this);
  if (!appended)
  {
    return ot::FrameBuilder::AppendBigEndianUint16(a2, *(this + 1));
  }

  return appended;
}

uint64_t ot::Lowpan::MeshHeader::AppendTo(ot::Lowpan::MeshHeader *this, ot::Message *a2)
{
  v10 = this;
  v9 = a2;
  ot::FrameBuilder::Init(v7, v8, 6);
  ot::Lowpan::MeshHeader::AppendTo(this, v7);
  IgnoreError();
  v6 = v9;
  Bytes = ot::FrameBuilder::GetBytes(v7);
  Length = ot::FrameBuilder::GetLength(v7);
  return ot::Message::AppendBytes(v6, Bytes, Length);
}

BOOL ot::Lowpan::FragmentHeader::IsFragmentHeader(ot::Lowpan::FragmentHeader *this, const ot::FrameData *a2)
{
  Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(this);
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(this);
  return ot::Lowpan::FragmentHeader::IsFragmentHeader(Bytes, Length);
}

BOOL ot::Lowpan::FragmentHeader::IsFragmentHeader(ot::Lowpan::FragmentHeader *this, const unsigned __int8 *a2)
{
  v3 = 0;
  if (a2 >= 4uLL)
  {
    return (*this & 0xD8) == 192;
  }

  return v3;
}

uint64_t ot::Lowpan::FragmentHeader::ParseFrom(ot::Lowpan::FragmentHeader *this, ot::FrameData *a2)
{
  v9 = this;
  v8 = a2;
  v7 = 0;
  v6 = 0;
  Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(a2);
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(v8);
  v7 = ot::Lowpan::FragmentHeader::ParseFrom(this, Bytes, Length, &v6);
  if (!v7)
  {
    ot::FrameData::SkipOver(v8, v6);
  }

  return v7;
}

uint64_t ot::Lowpan::FragmentHeader::ParseFrom(ot::Lowpan::FragmentHeader *this, unsigned __int8 *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  v15 = 6;
  if (ot::Lowpan::FragmentHeader::IsFragmentHeader(a2, a3))
  {
    *this = ot::BigEndian::ReadUint16(a2, v4) & 0x7FF;
    *(this + 1) = ot::BigEndian::ReadUint16((a2 + 2), v5);
    if ((*a2 & 0x20) == 0x20)
    {
      if (a3 < 5uLL)
      {
        otLogNotePlat("ParseFrom() Frame length is less than sizeof(NextFrag)", v6, v7, v8, v9, v10, v11, v12, this);
        return v15;
      }

      *(this + 2) = 8 * a2[4];
      *a4 = 5;
    }

    else
    {
      *(this + 2) = 0;
      *a4 = 4;
    }

    return 0;
  }

  return v15;
}

uint64_t ot::Lowpan::FragmentHeader::ParseFrom(ot::Lowpan::FragmentHeader *this, const ot::Message *a2, unsigned __int16 a3, unsigned __int16 *a4)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  Bytes = ot::Message::ReadBytes(a2, a3, v7, 5u);
  return ot::Lowpan::FragmentHeader::ParseFrom(this, v7, Bytes, v8);
}

uint64_t ot::ClearAllBytes<ot::Lowpan::Context>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Lowpan::Context>(result);
}

void *ot::ClearAllBytes<ot::Ip6::Header>(void *a1)
{
  return memset(a1, 0, 0x28uLL);
}

{
  return ot::ClearAllBytes<ot::Ip6::Header>(a1);
}

void *ot::ClearAllBytes<ot::Ip6::Udp::Header>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Ip6::Udp::Header>(result);
}

uint64_t ot::ThreadLinkInfo::SetFrom(ot::ThreadLinkInfo *this, const ot::Mac::RxFrame *a2)
{
  v8 = this;
  v7 = a2;
  ot::Clearable<ot::ThreadLinkInfo>::Clear(this);
  if (ot::Mac::Frame::GetSrcPanId(v7, this))
  {
    ot::Mac::Frame::GetDstPanId(v7, this);
    IgnoreError();
  }

  v6 = 0;
  if (ot::Mac::Frame::GetDstPanId(v7, &v6))
  {
    v6 = *this;
  }

  *(this + 5) = *(this + 5) & 0xFD | (2 * (v6 == 0xFFFF));
  if (ot::Mac::Frame::GetSecurityEnabled(v7))
  {
    v5 = 0;
    ot::Mac::Frame::GetKeyIdMode(v7, &v5);
    IgnoreError();
    v3 = 1;
    if (v5)
    {
      v3 = v5 == 8;
    }

    *(this + 5) = *(this + 5) & 0xFE | v3;
  }

  else
  {
    *(this + 5) &= ~1u;
  }

  *(this + 2) = ot::Mac::Frame::GetChannel(v7);
  *(this + 3) = ot::Mac::RxFrame::GetRssi(v7);
  result = ot::Mac::RxFrame::GetLqi(v7);
  *(this + 4) = result;
  return result;
}

ot::MeshForwarder *ot::MeshForwarder::MeshForwarder(ot::MeshForwarder *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 127;
  ot::PriorityQueue::PriorityQueue((this + 8));
  ot::Coap::MessageQueue::MessageQueue((this + 40));
  *(this + 25) = 0;
  *(this + 7) = 0;
  ot::Mac::Addresses::Addresses((this + 64));
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 88) &= ~1u;
  *(this + 88) &= ~2u;
  *(this + 88) &= ~4u;
  *(this + 88) &= ~8u;
  *(this + 88) &= ~0x10u;
  ot::TimerMilliIn<ot::MeshForwarder,&ot::MeshForwarder::HandleTxDelayTimer>::TimerMilliIn((this + 96), a2);
  ot::TaskletIn<ot::MeshForwarder,&ot::MeshForwarder::ScheduleTransmissionTask>::TaskletIn((this + 120), a2);
  ot::IndirectSender::IndirectSender((this + 296), a2);
  v2 = ot::DataPollSender::DataPollSender((this + 352), a2);
  *(this + 24) = ot::Random::NonCrypto::GetUint16(v2);
  ot::MeshForwarder::ResetCounters(this);
  ot::MeshForwarder::ResetTriggerBasedCounters(this);
  ot::Clearable<ot::MeshForwarder::FragmentPriorityList>::Clear(this + 248);
  ot::Clearable<ot::MeshForwarder::TxQueueStats>::Clear(this + 408);
  return this;
}

{
  ot::MeshForwarder::MeshForwarder(this, a2);
  return this;
}

void ot::MeshForwarder::HandleTxDelayTimer(ot::MeshForwarder *this)
{
  *(this + 88) &= ~0x10u;
  ot::Tasklet::Post((this + 120));
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "Tx delay timer expired", v1, v2, v3, v4, v5, v6, v7);
}

void ot::MeshForwarder::ScheduleTransmissionTask(ot::MeshForwarder *this)
{
  if ((*(this + 88) & 8) == 0 && (*(this + 88) & 4) == 0 && (*(this + 88) & 0x10) == 0)
  {
    *(this + 7) = ot::MeshForwarder::PrepareNextDirectTransmission(this);
    if (*(this + 7))
    {
      if (!ot::Message::GetOffset(*(this + 7)))
      {
        ot::Message::SetTxSuccess(*(this + 7), 1);
      }

      v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ot::Mac::Mac::RequestDirectFrameTransmission(v1);
    }
  }
}

ot::TimerMilli *ot::TimerMilliIn<ot::MeshForwarder,&ot::MeshForwarder::HandleTxDelayTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::MeshForwarder,&ot::MeshForwarder::HandleTxDelayTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::MeshForwarder,&ot::MeshForwarder::HandleTxDelayTimer>::HandleTimer);
  return a1;
}

ot::InstanceLocator *ot::TaskletIn<ot::MeshForwarder,&ot::MeshForwarder::ScheduleTransmissionTask>::TaskletIn(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::TaskletIn<ot::MeshForwarder,&ot::MeshForwarder::ScheduleTransmissionTask>::TaskletIn(a1, a2);
  return a1;
}

{
  ot::Tasklet::Tasklet(a1, a2, ot::TaskletIn<ot::MeshForwarder,&ot::MeshForwarder::ScheduleTransmissionTask>::HandleTasklet);
  return a1;
}

void *ot::Clearable<ot::MeshForwarder::FragmentPriorityList>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::MeshForwarder::FragmentPriorityList>(a1);
}

{
  return ot::Clearable<ot::MeshForwarder::FragmentPriorityList>::Clear(a1);
}

_BYTE *ot::MeshForwarder::Start(_BYTE *this)
{
  v8 = this;
  if ((this[88] & 2) == 0)
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    ot::Mac::Mac::SetRxOnWhenIdle(v1, 1, v2, v3, v4, v5, v6, v7);
    this = ot::IndirectSender::Start(v8 + 296);
    v8[88] = v8[88] & 0xFD | 2;
  }

  return this;
}

_BYTE *ot::IndirectSender::Start(_BYTE *this)
{
  *this = 1;
  return this;
}

{
  return ot::IndirectSender::Start(this);
}

void ot::MeshForwarder::Stop(ot::MeshForwarder *this)
{
  if ((*(this + 88) & 2) != 0)
  {
    ot::DataPollSender::StopPolling((this + 352));
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
    ot::TimeTicker::UnregisterReceiver(v1, 0);
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::DiscoverScanner>(this);
    ot::Mle::DiscoverScanner::Stop(v2);
    ot::PriorityQueue::DequeueAndFreeAll((this + 8));
    ot::MessageQueue::DequeueAndFreeAll((this + 40));
    ot::IndirectSender::Stop((this + 296));
    ot::Clearable<ot::MeshForwarder::FragmentPriorityList>::Clear(this + 248);
    ot::TimerMilli::Stop((this + 96));
    *(this + 88) &= ~0x10u;
    *(this + 88) &= ~2u;
    *(this + 7) = 0;
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    ot::Mac::Mac::SetRxOnWhenIdle(v3, 0, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t ot::Mle::DiscoverScanner::Stop(ot::Mle::DiscoverScanner *this)
{
  return ot::Mle::DiscoverScanner::HandleDiscoverComplete(this);
}

{
  return ot::Mle::DiscoverScanner::Stop(this);
}

uint64_t ot::MeshForwarder::PrepareEmptyFrame(ot::MeshForwarder *this, ot::Mac::TxFrame *a2, const ot::Mac::Address *a3, char a4)
{
  v19 = this;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  ot::Mac::Addresses::Addresses(v13);
  ot::Mac::PanIds::PanIds(v12);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ShortAddress = ot::Mac::Mac::GetShortAddress(v4);
  ot::Mac::Address::SetShort(v13, ShortAddress);
  if (ot::Mac::Address::IsShortAddrInvalid(v13) || ot::Mac::Address::IsExtended(v17))
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    ExtAddress = ot::Mac::Mac::GetExtAddress(v6);
    ot::Mac::Address::SetExtended(v13, ExtAddress);
  }

  v14 = *v17;
  v15 = *(v17 + 8);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  PanId = ot::Mac::Mac::GetPanId(v8);
  ot::Mac::PanIds::SetBothSourceDestination(v12, PanId);
  ot::MeshForwarder::PrepareMacHeaders(this, v18, 1, v13, v12, 5, 8, 0);
  ot::Mac::Frame::SetAckRequest(v18, v16 & 1);
  return ot::Mac::Frame::SetPayloadLength(v18, 0);
}

BOOL ot::Mac::Address::IsShortAddrInvalid(ot::Mac::Address *this)
{
  v2 = 0;
  if (*(this + 8) == 1)
  {
    return ot::Mac::Address::GetShort(this) == 65534;
  }

  return v2;
}

{
  return ot::Mac::Address::IsShortAddrInvalid(this);
}

void ot::MeshForwarder::PrepareMacHeaders(ot::MeshForwarder *a1, ot::Mac::Frame *a2, __int16 a3, uint64_t a4, ot::Mac::PanIds *a5, char a6, char a7, const ot::Message *a8)
{
  v12 = ot::MeshForwarder::CalcIePresent(a1, a8, (a4 + 10));
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(a1);
  Neighbor = ot::NeighborTable::FindNeighbor(v8, (a4 + 10), 1);
  v11 = ot::MeshForwarder::CalcFrameVersion(a1, Neighbor, v12);
  ot::Mac::Frame::InitMacHeader(a2, a3, v11, a4, a5, a6, a7);
  if (v12)
  {
    ot::MeshForwarder::AppendHeaderIe(a1, a8, a2);
  }
}

void ot::MeshForwarder::EvictMessage(ot::MeshForwarder *this, ot::Message *a2)
{
  v15 = this;
  v14 = a2;
  PriorityQueue = ot::Message::GetPriorityQueue(a2);
  if (!PriorityQueue)
  {
    __assert_rtn("EvictMessage", "mesh_forwarder.cpp", 233, "queue != nullptr");
  }

  ot::MeshForwarder::LogMessage(this, 5u, v14, 3);
  if (PriorityQueue == (this + 8))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    v11 = ot::ChildTable::Iterate(v2, 5);
    v12 = &v11;
    v18 = ot::ChildTable::IteratorBuilder::begin(&v11);
    v19 = v3;
    v9 = v18;
    v10 = v3;
    v16 = ot::ChildTable::IteratorBuilder::end(v12);
    v17 = v4;
    v7 = v16;
    v8 = v4;
    while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v9, &v7))
    {
      v6 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v9);
      ot::IndirectSender::RemoveMessageFromSleepyChild((this + 296), v14, v6);
      IgnoreError();
      ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v9);
    }

    ot::MeshForwarder::FinalizeMessageDirectTx(this, v14, 3, 0);
    ot::MeshForwarder::RemoveMessageIfNoPendingTx(this, v14);
  }

  else
  {
    ot::PriorityQueue::DequeueAndFree(PriorityQueue, v14);
  }
}

void ot::MeshForwarder::FinalizeMessageDirectTx(ot::TimerMilli *a1, void *a2, int a3, ot::Neighbor *a4)
{
  v19 = a1;
  __src = a2;
  v17 = a3;
  v16 = a4;
  if (ot::Message::IsDirectTransmission(a2))
  {
    ot::Message::ClearDirectTransmission(__src);
    ot::Message::SetOffset(__src, 0);
    if (v17)
    {
      ot::Message::SetTxSuccess(__src, 0);
    }

    if (!ot::Message::GetType(__src))
    {
      if (ot::Message::GetTxSuccess(__src))
      {
        ++*(a1 + 34);
        ++*(a1 + 48);
        memcpy(__dst, __src, sizeof(__dst));
        if (!ot::MeshForwarder::IsTxThreadControl(a1, __dst))
        {
          ++*(a1 + 45);
          ++*(a1 + 59);
        }

        Timestamp = ot::Message::GetTimestamp(__src);
        Value = ot::Time::GetValue(&Timestamp);
        ot::MeshForwarder::UpdateTxDelayStats(a1, Value);
      }

      else
      {
        ++*(a1 + 50);
        memcpy(v22, __src, sizeof(v22));
        if (!ot::MeshForwarder::IsTxThreadControl(a1, v22))
        {
          ++*(a1 + 46);
          ++*(a1 + 60);
        }

        v14 = ot::Message::GetTimestamp(__src);
        v5 = ot::Time::GetValue(&v14);
        ot::MeshForwarder::UpdateTxDelayStats(a1, v5);
      }

      v10 = v16;
      memcpy(v21, __src, sizeof(v21));
      IsTxThreadControl = ot::MeshForwarder::IsTxThreadControl(a1, v21);
      memcpy(v20, __src, sizeof(v20));
      IsTxIcmpError = ot::MeshForwarder::IsTxIcmpError(a1, v20);
      TxSuccess = ot::Message::GetTxSuccess(__src);
      ot::MeshForwarder::UpdateTriggerBasedNeighborInfo(a1, v10, IsTxThreadControl, IsTxIcmpError, TxSuccess);
    }

    SubType = ot::Message::GetSubType(__src);
    if (SubType == 2)
    {
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::DiscoverScanner>(a1);
      ot::Mle::DiscoverScanner::HandleDiscoveryRequestFrameTxDone(v7, __src, v17);
    }

    else if (SubType == 10)
    {
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      ot::Mle::Mle::HandleChildIdRequestTxDone(v8, __src);
    }
  }
}

uint64_t ot::MeshForwarder::RemoveMessageIfNoPendingTx(ot::MeshForwarder *this, ot::Message *a2)
{
  v4 = 0;
  if ((ot::Message::IsDirectTransmission(a2) & 1) == 0 && (ot::Message::IsChildPending(a2) & 1) == 0)
  {
    if (*(this + 7) == a2)
    {
      *(this + 7) = 0;
      *(this + 25) = 0;
    }

    ot::PriorityQueue::DequeueAndFree((this + 8), a2);
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t ot::MeshForwarder::ResumeMessageTransmissions(uint64_t this)
{
  if ((*(this + 88) & 4) != 0)
  {
    *(this + 88) &= ~4u;
    return ot::Tasklet::Post((this + 120));
  }

  return this;
}

uint64_t ot::MeshForwarder::TxQueueStats::GetHistogram(ot::MeshForwarder::TxQueueStats *this, unsigned __int16 *a2, unsigned int *a3)
{
  *a2 = 210;
  *a3 = 10;
  return this + 4;
}

uint64_t ot::MeshForwarder::TxQueueStats::UpdateFor(ot::MeshForwarder::TxQueueStats *this, const ot::Message *a2)
{
  v9 = this;
  v8 = a2;
  Now = ot::TimerMilli::GetNow(this);
  Timestamp = ot::Message::GetTimestamp(v8);
  v7 = ot::Time::operator-(&Now, &Timestamp);
  v2 = ot::Min<unsigned int>(v7 / 0xA, 0xD1u);
  ++*(this + v2 + 1);
  result = ot::Max<unsigned int>(*this, v7);
  *this = result;
  return result;
}

ot::Message *ot::MeshForwarder::PrepareNextDirectTransmission(ot::MeshForwarder *this)
{
  ot::PriorityQueue::GetHead((this + 8));
  for (i = v1; i; i = Next)
  {
    Next = ot::Message::GetNext(i);
    if ((ot::Message::IsDirectTransmission(i) & 1) != 0 && (ot::Message::IsResolvingAddress(i) & 1) == 0)
    {
      ot::Message::SetDoNotEvict(i, 1);
      Type = ot::Message::GetType(i);
      if (Type)
      {
        if (Type == 1)
        {
          updated = ot::MeshForwarder::UpdateMeshRoute(this, i);
        }

        else
        {
          updated = 2;
        }
      }

      else
      {
        updated = ot::MeshForwarder::UpdateIp6Route(this, i);
      }

      ot::Message::SetDoNotEvict(i, 0);
      Next = ot::Message::GetNext(i);
      if (updated)
      {
        if (updated == 9)
        {
          ot::Message::SetResolvingAddress(i, 1);
        }

        else
        {
          ot::MeshForwarder::TxQueueStats::UpdateFor((this + 408), i);
          ot::MeshForwarder::LogMessage(this, 3u, i, updated);
          ot::MeshForwarder::FinalizeMessageDirectTx(this, i, updated, 0);
          ot::MeshForwarder::RemoveMessageIfNoPendingTx(this, i);
        }
      }

      else if (ot::Message::IsDirectTransmission(i))
      {
        ot::MeshForwarder::TxQueueStats::UpdateFor((this + 408), i);
        return i;
      }
    }
  }

  return i;
}

uint64_t ot::Message::SetTxSuccess(ot::Message *this, char a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) = *(result + 70) & 0xFFFFEFFF | ((a2 & 1) << 12);
  return result;
}

{
  return ot::Message::SetTxSuccess(this, a2);
}

uint64_t ot::Message::IsDirectTransmission(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 7) & 1;
}

{
  return ot::Message::IsDirectTransmission(this);
}

uint64_t ot::Message::IsResolvingAddress(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 15) & 1;
}

{
  return ot::Message::IsResolvingAddress(this);
}

uint64_t ot::Message::SetDoNotEvict(ot::Message *this, char a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) = *(result + 70) & 0xFFFFDFFF | ((a2 & 1) << 13);
  return result;
}

{
  return ot::Message::SetDoNotEvict(this, a2);
}

uint64_t ot::MeshForwarder::UpdateIp6Route(ot::MeshForwarder *this, ot::Message *a2)
{
  v15 = this;
  v14 = a2;
  v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  v12 = 0;
  *(this + 88) &= ~1u;
  ot::Message::Read<ot::Ip6::Header>(v14, 0, v11);
  IgnoreError();
  Source = ot::Ip6::Header::GetSource(v11);
  if (!ot::Ip6::Address::IsMulticast(Source))
  {
    v3 = ot::Ip6::Header::GetSource(v11);
    ot::MeshForwarder::GetMacSourceAddress(this, v3, (this + 64));
    if (ot::Mle::Mle::IsDisabled(v13) || ot::Mle::Mle::IsDetached(v13))
    {
      Destination = ot::Ip6::Header::GetDestination(v11);
      if (!ot::Ip6::Address::IsLinkLocalUnicastOrMulticast(Destination))
      {
        return 2;
      }

      goto LABEL_6;
    }

    v6 = ot::Ip6::Header::GetDestination(v11);
    if (ot::Ip6::Address::IsMulticast(v6))
    {
      if (!ot::Mle::Mle::IsChild(v13) || (ot::Message::IsLinkSecurityEnabled(v14) & 1) == 0 || ot::Message::IsSubTypeMle(v14))
      {
        ot::Mac::Address::SetShort(this + 74, 0xFFFF);
        return v12;
      }
    }

    else
    {
      v8 = ot::Ip6::Header::GetDestination(v11);
      if (ot::Ip6::Address::IsLinkLocalUnicast(v8))
      {
LABEL_6:
        v5 = ot::Ip6::Header::GetDestination(v11);
        ot::MeshForwarder::GetMacDestinationAddress(this, v5, (this + 74));
        return v12;
      }

      if (!ot::Mle::Mle::IsMinimalEndDevice(v13))
      {
        return ot::MeshForwarder::UpdateIp6RouteFtd(this, v11, v14);
      }
    }

    ParentRloc16 = ot::Mle::Mle::GetParentRloc16(v13);
    ot::Mac::Address::SetShort(this + 74, ParentRloc16);
    return v12;
  }

  return 2;
}

uint64_t ot::Message::SetResolvingAddress(ot::Message *this, char a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) = *(result + 70) & 0xFFFF7FFF | ((a2 & 1) << 15);
  return result;
}

{
  return ot::Message::SetResolvingAddress(this, a2);
}

uint64_t ot::MeshForwarder::GetMacSourceAddress(ot::MeshForwarder *this, const ot::Ip6::Address *a2, ot::Mac::Address *a3)
{
  Iid = ot::Ip6::Address::GetIid(a2);
  ot::Ip6::InterfaceIdentifier::ConvertToMacAddress(Iid, a3);
  ot::Mac::Address::GetExtended(a3);
  v11 = v4;
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ExtAddress = ot::Mac::Mac::GetExtAddress(v5);
  result = ot::Unequatable<ot::Mac::ExtAddress>::operator!=(v11, ExtAddress);
  if (result)
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    ShortAddress = ot::Mac::Mac::GetShortAddress(v8);
    return ot::Mac::Address::SetShort(a3, ShortAddress);
  }

  return result;
}

_BYTE *ot::MeshForwarder::GetMacDestinationAddress(ot::MeshForwarder *this, const ot::Ip6::Address *a2, ot::Mac::Address *a3)
{
  if (ot::Ip6::Address::IsMulticast(a2))
  {
    return ot::Mac::Address::SetShort(a3, 0xFFFF);
  }

  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsRoutingLocator(v4, a2))
  {
    Iid = ot::Ip6::Address::GetIid(a2);
    Locator = ot::Ip6::InterfaceIdentifier::GetLocator(Iid);
    return ot::Mac::Address::SetShort(a3, Locator);
  }

  else
  {
    v7 = ot::Ip6::Address::GetIid(a2);
    return ot::Ip6::InterfaceIdentifier::ConvertToMacAddress(v7, a3);
  }
}

uint64_t ot::MeshForwarder::SetRxOnWhenIdle(ot::MeshForwarder *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "%s: %d", a3, a4, a5, a6, a7, a8, "SetRxOnWhenIdle");
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::SetRxOnWhenIdle(v8, a2 & 1, v9, v10, v11, v12, v13, v14);
  if (a2)
  {
    ot::DataPollSender::StopPolling((this + 352));
  }

  else
  {
    ot::DataPollSender::StartPolling((this + 352));
  }

  v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SupervisionListener>(this);
  if (a2)
  {
    return ot::SupervisionListener::Stop(v15);
  }

  else
  {
    return ot::SupervisionListener::Start(v15);
  }
}

ot::Mac::TxFrame *ot::MeshForwarder::HandleFrameRequest(ot::MeshForwarder *this, ot::Mac::TxFrames *a2)
{
  TxFrame = 0;
  if ((*(this + 88) & 2) != 0 && *(this + 7))
  {
    TxFrame = ot::Mac::TxFrames::GetTxFrame(a2);
    *(this + 88) = *(this + 88) & 0xF7 | 8;
    Type = ot::Message::GetType(*(this + 7));
    if (Type)
    {
      if (Type != 1)
      {
        *(this + 25) = ot::Message::GetLength(*(this + 7));
        return 0;
      }

      ot::MeshForwarder::SendMesh(this, *(this + 7), TxFrame);
    }

    else
    {
      if (ot::Message::GetSubType(*(this + 7)) == 2)
      {
        v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::DiscoverScanner>(this);
        TxFrame = ot::Mle::DiscoverScanner::PrepareDiscoveryRequestFrame(v2, TxFrame);
        if (!TxFrame)
        {
          return TxFrame;
        }
      }

      else
      {
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        if (ot::Mac::Mac::IsCslEnabled(v3) && ot::Message::IsSubTypeMle(*(this + 7)))
        {
          v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
          if (!ot::Mac::Mac::IsCstEnabled(v4))
          {
            ot::Message::SetLinkSecurityEnabled(*(this + 7), 1);
          }
        }
      }

      *(this + 25) = ot::MeshForwarder::PrepareDataFrame(this, TxFrame, *(this + 7), (this + 64), *(this + 88) & 1, *(this + 42), *(this + 43), 0);
      if (ot::Message::GetSubType(*(this + 7)) == 10 && (ot::Message::IsLinkSecurityEnabled(*(this + 7)) & 1) != 0)
      {
        ot::Mac::Address::ToString((this + 64), v19);
        v14 = ot::String<(unsigned short)17>::AsCString(v19);
        ot::Mac::Address::ToString((this + 74), v18);
        ot::String<(unsigned short)17>::AsCString(v18);
        v12 = *(this + 42);
        v13 = *(this + 43);
        ot::Logger::LogAtLevel<(ot::LogLevel)2>("MeshForwarder", "Child ID Request requires fragmentation, aborting tx src:%s dst:%s mMeshSource:0x%x mMeshDest:0x%x", v5, v6, v7, v8, v9, v10, v14);
        *(this + 25) = ot::Message::GetLength(*(this + 7));
        return 0;
      }
    }

    ot::Mac::TxFrame::SetIsARetransmission(TxFrame, 0);
  }

  return TxFrame;
}

uint64_t ot::MeshForwarder::PrepareDataFrame(ot::MeshForwarder *this, ot::Mac::TxFrame *a2, ot::Message *a3, const ot::Mac::Addresses *a4, char a5, unsigned __int16 a6, unsigned __int16 a7, char a8)
{
  v86 = this;
  v85 = a2;
  v84 = a3;
  v83 = a4;
  v82 = a5;
  v81 = a6;
  v80 = a7;
  v79 = a8;
  v78 = 0;
  v77 = 0;
  ot::Mac::PanIds::PanIds(v76);
  v75 = 0;
  Offset = 0;
  v73 = 0;
  v71 = 0;
  v70 = 0;
  while (1)
  {
    v78 = 0;
    v77 = 8;
    if (ot::Message::IsLinkSecurityEnabled(v84))
    {
      v78 = 5;
      SubType = ot::Message::GetSubType(v84);
      if (SubType == 1)
      {
        v77 = 16;
      }

      else if (SubType == 4)
      {
        v77 = 0;
      }
    }

    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    PanId = ot::Mac::Mac::GetPanId(v8);
    ot::Mac::PanIds::SetBothSourceDestination(v76, PanId);
    v58 = ot::Message::GetSubType(v84);
    if (v58 == 1)
    {
      v56 = v85;
      Channel = ot::Message::GetChannel(v84);
      ot::Mac::TxFrame::SetChannel(v56, Channel);
      v57 = v85;
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      PanChannel = ot::Mac::Mac::GetPanChannel(v11);
      ot::Mac::TxFrame::SetRxChannelAfterTxDone(v57, PanChannel);
      ot::Mac::PanIds::SetDestination(v76, 0xFFFF);
    }

    else if (v58 == 3 || v58 == 2)
    {
      v13 = ot::Message::GetPanId(v84);
      ot::Mac::PanIds::SetDestination(v76, v13);
    }

    ot::MeshForwarder::PrepareMacHeaders(this, v85, 1, v83, v76, v78, v77, v84);
    MaxPayloadLength = 0;
    if (ot::Message::GetSubType(v84))
    {
      MaxPayloadLength = ot::Mac::Frame::GetMaxPayloadLength(v85);
    }

    else
    {
      v54 = *this;
      HeaderLength = ot::Mac::Frame::GetHeaderLength(v85);
      FooterLength = ot::Mac::Frame::GetFooterLength(v85);
      MaxPayloadLength = v54 - (HeaderLength + FooterLength);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("MeshForwarder", "Apply Fragmentation Size Limit %d ", v15, v16, v17, v18, v19, v20, v54 - (HeaderLength + FooterLength));
    }

    ot::Mac::Frame::GetPayload(v85);
    ot::FrameBuilder::Init(v72, v21, MaxPayloadLength);
    if (v82)
    {
      v67 = 0;
      v52 = 127 - ot::Mac::Frame::GetHeaderLength(v85);
      v53 = ot::Mac::Frame::GetFooterLength(v85);
      v67 = v52 - (v53 - ot::Mac::Frame::GetFcsSize(v85) + 2);
      ot::Mac::Frame::GetPayload(v85);
      ot::FrameBuilder::Init(v72, v22, v67);
      ot::Lowpan::MeshHeader::Init(v68, v81, v80, 19);
      ot::Lowpan::MeshHeader::AppendTo(v68, v72);
      IgnoreError();
    }

    Offset = ot::Message::GetOffset(v84);
    if (ot::Message::GetOffset(v84))
    {
      break;
    }

    Length = 0;
    MaxLength = 0;
    ot::Mac::Addresses::Addresses(&v63);
    Length = ot::FrameBuilder::GetLength(v72);
    MaxLength = ot::FrameBuilder::GetMaxLength(v72);
    ot::FrameBuilder::SetMaxLength(v72, MaxLength - 4);
    if (v82)
    {
      ot::Mac::Address::SetShort(&v63, v81);
      ot::Mac::Address::SetShort(&v63 + 10, v80);
    }

    else
    {
      v63 = *v83;
      v64 = *(v83 + 4);
    }

    v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Lowpan::Lowpan>(this);
    if (ot::Lowpan::Lowpan::Compress(v23, v84, &v63, v72))
    {
      __assert_rtn("PrepareDataFrame", "mesh_forwarder.cpp", 1105, "false");
    }

    ot::FrameBuilder::SetMaxLength(v72, MaxLength);
    v51 = ot::Message::GetLength(v84);
    v75 = v51 - ot::Message::GetOffset(v84);
    if ((v79 & 1) == 0)
    {
      v50 = v75;
      if (v50 <= ot::FrameBuilder::GetRemainingLength(v72))
      {
        goto LABEL_39;
      }
    }

    v71 = 1;
    if ((ot::Message::IsLinkSecurityEnabled(v84) & 1) != 0 || !ot::Message::IsSubTypeMle(v84))
    {
      if (!ot::Message::GetDatagramTag(v84))
      {
        if (!*(this + 24))
        {
          ++*(this + 24);
        }

        v24 = v84;
        v25 = *(this + 24);
        *(this + 24) = v25 + 1;
        ot::Message::SetDatagramTag(v24, v25);
      }

      v49 = ot::Message::GetLength(v84);
      DatagramTag = ot::Message::GetDatagramTag(v84);
      ot::Lowpan::FragmentHeader::FirstFrag::Init(v62, v49, DatagramTag);
      if (ot::FrameBuilder::Insert<ot::Lowpan::FragmentHeader::FirstFrag>(v72, Length, v62))
      {
        __assert_rtn("PrepareDataFrame", "mesh_forwarder.cpp", 1142, "false");
      }

      v70 = 4;
      goto LABEL_39;
    }

    ot::Message::SetOffset(v84, 0);
    ot::Message::SetLinkSecurityEnabled(v84, 1);
  }

  v71 = 1;
  v46 = ot::Message::GetLength(v84);
  v75 = v46 - ot::Message::GetOffset(v84);
  v47 = ot::Message::GetLength(v84);
  v48 = ot::Message::GetDatagramTag(v84);
  v27 = ot::Message::GetOffset(v84);
  ot::Lowpan::FragmentHeader::NextFrag::Init(v61, v47, v48, v27);
  if (ot::FrameBuilder::Append<ot::Lowpan::FragmentHeader::NextFrag>(v72, v61))
  {
    __assert_rtn("PrepareDataFrame", "mesh_forwarder.cpp", 1159, "false");
  }

  v70 = 5;
  v45 = ot::Message::GetLength(v84);
  v75 = v45 - ot::Message::GetOffset(v84);
LABEL_39:
  v44 = v75;
  if (v44 > ot::FrameBuilder::GetRemainingLength(v72))
  {
    v75 = ot::FrameBuilder::GetRemainingLength(v72) & 0xFFF8;
  }

  v43 = v84;
  v28 = ot::Message::GetOffset(v84);
  if (ot::FrameBuilder::AppendBytesFromMessage(v72, v43, v28, v75))
  {
    __assert_rtn("PrepareDataFrame", "mesh_forwarder.cpp", 1173, "false");
  }

  v41 = v85;
  v29 = ot::FrameBuilder::GetLength(v72);
  ot::Mac::Frame::SetPayloadLength(v41, v29);
  v30 = ot::Message::GetOffset(v84);
  v73 = v30 + v75;
  v42 = (v30 + v75);
  if (v42 < ot::Message::GetLength(v84))
  {
    ot::Mac::Frame::SetFramePending(v85, 1);
  }

  if (v71)
  {
    bzero(v89, 0x400uLL);
    v31 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
    if (ot::MessagePool::GetIsBufferStatsEnabled(v31))
    {
      ot::Message::GetBufferIDs(v84, Offset, v73 - Offset, v89);
    }

    PayloadLength = ot::Mac::Frame::GetPayloadLength(v85);
    v40 = PayloadLength - v70;
    ot::Mac::Address::ToString(v83, v88);
    ot::String<(unsigned short)17>::AsCString(v88);
    ot::Mac::Address::ToString((v83 + 10), v87);
    ot::String<(unsigned short)17>::AsCString(v87);
    ot::Message::GetDatagramTag(v84);
    ot::Message::GetLength(v84);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "tx frag frame, len:%d, src:%s, dst:%s, tag:%d, offset:%d, dglen:%d%s", v33, v34, v35, v36, v37, v38, v40);
  }

  ot::Message::SetOffset(v84, Offset);
  return v73;
}

BOOL ot::MeshForwarder::CalcIePresent(ot::MeshForwarder *this, const ot::Message *a2, const ot::Mac::Address *a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
  v10 = ot::NeighborTable::FindNeighbor(v3, a3, 5) != 0;
  IsCslEnabled = 0;
  if (v10)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    IsCslEnabled = ot::Mac::Mac::IsCslEnabled(v4);
  }

  IsCstEnabled = 0;
  if (v10)
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    IsCstEnabled = ot::Mac::Mac::IsCstEnabled(v5);
  }

  return IsCslEnabled || IsCstEnabled;
}

uint64_t ot::MeshForwarder::CalcFrameVersion(ot::MeshForwarder *this, const ot::Neighbor *a2, char a3)
{
  v5 = 4096;
  if (a3)
  {
    return 0x2000;
  }

  else if (a2 && (v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this), ot::ChildTable::Contains(v3, a2)) && ot::CslTxScheduler::ChildInfo::IsCslSynchronized((a2 + 168)))
  {
    return 0x2000;
  }

  else if (a2 && ot::Neighbor::IsEnhAckProbingActive(a2))
  {
    return 0x2000;
  }

  else if (a2 && (ot::Neighbor::IsEnhacedAckEnabled(a2) & 1) != 0)
  {
    return 0x2000;
  }

  return v5;
}

void ot::MeshForwarder::AppendHeaderIe(ot::MeshForwarder *this, const ot::Message *a2, ot::Mac::TxFrame *a3)
{
  v16 = this;
  v15 = a2;
  v14 = a3;
  v13 = 0;
  v12 = 0;
  v9 = 1;
  if (ot::Mac::Frame::GetType(a3) != 3)
  {
    v7 = 0;
    if (v15)
    {
      v7 = ot::Message::GetLength(v15) != 0;
    }

    v9 = v7;
  }

  v11 = v9;
  ot::Mac::Address::Address(v10);
  v6 = 0;
  if (!ot::Mac::Frame::GetDstAddr(v14, v10))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    v6 = ot::NeighborTable::FindNeighbor(v3, v10, 5) != 0;
  }

  if (v6)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    if (ot::Mac::Mac::IsCslEnabled(v4))
    {
      ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::CslIe>(v14, &v13);
      IgnoreError();
      ot::Mac::TxFrame::SetCslIePresent(v14, 1);
      v12 = 1;
    }
  }

  if (v6)
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    if (ot::Mac::Mac::IsCstEnabled(v5))
    {
      ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::CstIe>(v14, &v13);
      IgnoreError();
      v12 = 1;
    }
  }

  if (v12 & 1) != 0 && (v11)
  {
    ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::Termination2Ie>(v14, &v13);
    IgnoreError();
  }
}

uint64_t ot::FrameBuilder::GetMaxLength(ot::FrameBuilder *this)
{
  return *(this + 5);
}

{
  return ot::FrameBuilder::GetMaxLength(this);
}

uint64_t ot::FrameBuilder::SetMaxLength(uint64_t this, __int16 a2)
{
  *(this + 10) = a2;
  return this;
}

{
  return ot::FrameBuilder::SetMaxLength(this, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Lowpan::Lowpan>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Lowpan::Lowpan>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Lowpan::Lowpan>(a1);
}

uint64_t ot::FrameBuilder::GetRemainingLength(ot::FrameBuilder *this)
{
  return (*(this + 5) - *(this + 4));
}

{
  return ot::FrameBuilder::GetRemainingLength(this);
}

uint64_t ot::Message::GetDatagramTag(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 32);
}

{
  return ot::Message::GetDatagramTag(this);
}

uint64_t ot::Message::SetDatagramTag(ot::Message *this, int a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 32) = a2;
  return result;
}

{
  return ot::Message::SetDatagramTag(this, a2);
}

uint64_t ot::Lowpan::FragmentHeader::FirstFrag::Init(ot::Lowpan::FragmentHeader::FirstFrag *this, __int16 a2, unsigned __int16 a3)
{
  *this = ot::BigEndian::HostSwap16((a2 & 0x7FF | 0xC000u));
  result = ot::BigEndian::HostSwap16(a3);
  *(this + 1) = result;
  return result;
}

{
  return ot::Lowpan::FragmentHeader::FirstFrag::Init(this, a2, a3);
}

uint64_t ot::FrameBuilder::Insert<ot::Lowpan::FragmentHeader::FirstFrag>(ot::FrameBuilder *a1, unsigned __int16 a2, const void *a3)
{
  return ot::FrameBuilder::InsertBytes(a1, a2, a3, 4u);
}

{
  return ot::FrameBuilder::Insert<ot::Lowpan::FragmentHeader::FirstFrag>(a1, a2, a3);
}

uint64_t ot::Lowpan::FragmentHeader::NextFrag::Init(ot::Lowpan::FragmentHeader::NextFrag *this, __int16 a2, unsigned __int16 a3, unsigned __int16 a4)
{
  *this = ot::BigEndian::HostSwap16((a2 & 0x7FF | 0xE000u));
  result = ot::BigEndian::HostSwap16(a3);
  *(this + 1) = result;
  *(this + 4) = a4 >> 3;
  return result;
}

{
  return ot::Lowpan::FragmentHeader::NextFrag::Init(this, a2, a3, a4);
}

uint64_t ot::FrameBuilder::Append<ot::Lowpan::FragmentHeader::NextFrag>(ot::FrameBuilder *a1, const void *a2)
{
  return ot::FrameBuilder::AppendBytes(a1, a2, 5u);
}

{
  return ot::FrameBuilder::Append<ot::Lowpan::FragmentHeader::NextFrag>(a1, a2);
}

ot::Neighbor *ot::MeshForwarder::UpdateNeighborOnSentFrame(ot::InstanceLocator *a1, ot::Mac::Frame *a2, int a3, ot::Mac::Address *a4, char a5)
{
  Neighbor = 0;
  v9 = 4;
  if ((*(a1 + 88) & 2) != 0)
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(a1);
    Neighbor = ot::NeighborTable::FindNeighbor(v5, a4, 1);
    if (Neighbor)
    {
      if (ot::Mac::Frame::GetAckRequest(a2))
      {
        ot::Mac::Frame::GetHeaderIe(a2, 0x1Au);
        if (v6 && (a5 & 1) != 0)
        {
          v9 = 15;
        }

        ot::MeshForwarder::UpdateNeighborLinkFailures(a1, Neighbor, a3, 1, v9);
      }
    }
  }

  return Neighbor;
}

void ot::MeshForwarder::UpdateNeighborLinkFailures(ot::InstanceLocator *a1, ot::Neighbor *a2, int a3, char a4, unsigned __int8 a5)
{
  if (a3)
  {
    if (a3 == 14)
    {
      ot::Neighbor::IncrementLinkFailures(a2);
      if (a4)
      {
        Rloc16 = ot::Neighbor::GetRloc16(a2);
        if (ot::Mle::IsRouterRloc16(Rloc16) && ot::Neighbor::GetLinkFailures(a2) >= a5)
        {
          v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
          ot::Mle::MleRouter::RemoveRouterLink(v6, a2);
        }
      }
    }
  }

  else
  {
    ot::Neighbor::ResetLinkFailures(a2);
  }
}

uint64_t ot::Neighbor::IncrementLinkFailures(uint64_t this)
{
  ++*(this + 35);
  return this;
}

{
  return ot::Neighbor::IncrementLinkFailures(this);
}

uint64_t ot::MeshForwarder::GetTxDelayStats(ot::MeshForwarder *this, int a2)
{
  v6 = this;
  v5 = a2;
  if (a2)
  {
    Now = ot::TimerMilli::GetNow(this);
    Value = ot::Time::GetValue(&Now);
    return (Value - v5);
  }

  else
  {
    return 0;
  }
}

uint64_t ot::MeshForwarder::GetAddressAndPortInfo(uint64_t a1, ot::Message *a2, char *a3, char a4)
{
  v49 = a1;
  v48 = a2;
  __s = a3;
  v46[119] = a4;
  v45 = 6;
  if (!ot::Message::GetType(a2) && !ot::Ip6::Headers::ParseFrom(v46, a2))
  {
    v45 = 0;
    if (ot::Ip6::Headers::IsIcmp6(v46))
    {
      __str = &__s[strlen(__s)];
      __size = 256 - strlen(__s);
      SourceAddress = ot::Ip6::Headers::GetSourceAddress(v46);
      ot::Ip6::Address::ToString(SourceAddress, v57);
      v40 = ot::String<(unsigned short)40>::AsCString(v57);
      DestinationAddress = ot::Ip6::Headers::GetDestinationAddress(v46);
      ot::Ip6::Address::ToString(DestinationAddress, v56);
      v41 = ot::String<(unsigned short)40>::AsCString(v56);
      Checksum = ot::Ip6::Headers::GetChecksum(v46);
      snprintf(__str, __size, "IPv6 ICMP src=[%s], dst=[%s], chksum:%04x", v40, v41, Checksum);
    }

    else if (ot::Ip6::Headers::IsUdp(v46))
    {
      v39 = &__s[strlen(__s)];
      v38 = 256 - strlen(__s);
      v7 = ot::Ip6::Headers::GetSourceAddress(v46);
      ot::Ip6::Address::ToString(v7, v55);
      v34 = ot::String<(unsigned short)40>::AsCString(v55);
      SourcePort = ot::Ip6::Headers::GetSourcePort(v46);
      v8 = ot::Ip6::Headers::GetDestinationAddress(v46);
      ot::Ip6::Address::ToString(v8, v54);
      v36 = ot::String<(unsigned short)40>::AsCString(v54);
      DestinationPort = ot::Ip6::Headers::GetDestinationPort(v46);
      v9 = ot::Ip6::Headers::GetChecksum(v46);
      snprintf(v39, v38, "IPv6 UDP src=[%s]:%d, dst=[%s]:%d,  chksum:%04x", v34, SourcePort, v36, DestinationPort, v9);
    }

    else if (ot::Ip6::Headers::IsTcp(v46))
    {
      v33 = &__s[strlen(__s)];
      v32 = 256 - strlen(__s);
      v10 = ot::Ip6::Headers::GetSourceAddress(v46);
      ot::Ip6::Address::ToString(v10, v53);
      v28 = ot::String<(unsigned short)40>::AsCString(v53);
      v29 = ot::Ip6::Headers::GetSourcePort(v46);
      v11 = ot::Ip6::Headers::GetDestinationAddress(v46);
      ot::Ip6::Address::ToString(v11, v52);
      v30 = ot::String<(unsigned short)40>::AsCString(v52);
      v31 = ot::Ip6::Headers::GetDestinationPort(v46);
      v12 = ot::Ip6::Headers::GetChecksum(v46);
      snprintf(v33, v32, "IPv6 TCP src=[%s]:%d, dst=[%s]:%d, chksum:%04x", v28, v29, v30, v31, v12);
    }

    else if (ot::Ip6::Headers::IsHopOpts(v46))
    {
      v27 = &__s[strlen(__s)];
      v26 = 256 - strlen(__s);
      v19 = ot::Ip6::Headers::GetSourceAddress(v46);
      ot::Ip6::Address::ToString(v19, v51);
      v24 = ot::String<(unsigned short)40>::AsCString(v51);
      v20 = ot::Ip6::Headers::GetDestinationAddress(v46);
      ot::Ip6::Address::ToString(v20, v50);
      v25 = ot::String<(unsigned short)40>::AsCString(v50);
      v21 = ot::Ip6::Headers::GetChecksum(v46);
      snprintf(v27, v26, "IPv6 HopOpts src=[%s], dst=[%s], chksum:%04x", v24, v25, v21);
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("MeshForwarder", "MeshForwarder::GetAddressAndPortInfo packet type is unknown ", v13, v14, v15, v16, v17, v18, v23);
      return 6;
    }
  }

  return v45;
}

BOOL ot::Ip6::Headers::IsTcp(ot::Ip6::Headers *this)
{
  return ot::Ip6::Headers::GetIpProto(this) == 6;
}

{
  return ot::Ip6::Headers::IsTcp(this);
}

BOOL ot::Ip6::Headers::IsHopOpts(ot::Ip6::Headers *this)
{
  return ot::Ip6::Headers::GetIpProto(this) == 0;
}

{
  return ot::Ip6::Headers::IsHopOpts(this);
}

BOOL ot::MeshForwarder::IsTxThreadControl(uint64_t a1, ot::Message *a2)
{
  v7 = a1;
  v6 = a2;
  if (ot::Message::GetType(a2) != 2 && ot::Message::GetType(a2) != 3)
  {
    return !ot::Message::GetType(a2) && !ot::Ip6::Headers::ParseFrom(v5, a2) && ot::Ip6::Headers::IsUdp(v5) && ((DestinationPort = ot::Ip6::Headers::GetDestinationPort(v5), DestinationPort == 19788) || DestinationPort == 61631);
  }

  return 1;
}

BOOL ot::MeshForwarder::IsTxIcmpError(uint64_t a1, ot::Message *a2)
{
  v14 = a1;
  v13 = a2;
  if (ot::Message::GetType(a2) || ot::Ip6::Headers::ParseFrom(v12, a2) || !ot::Ip6::Headers::IsIcmp6(v12) || ot::Message::Read<ot::Ip6::Icmp::Header>(a2, 0x28u, v11))
  {
    return 0;
  }

  else
  {
    Type = ot::Ip6::Icmp::Header::GetType(v11);
    ot::Ip6::Icmp::Header::IsError(v11);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "IxTxIcmpError type=%d isError=%d", v2, v3, v4, v5, v6, v7, Type);
    return ot::Ip6::Icmp::Header::IsError(v11);
  }
}

_DWORD *ot::MeshForwarder::UpdateTriggerBasedNeighborInfo(_DWORD *this, ot::Neighbor *a2, char a3, char a4, char a5)
{
  if (a2)
  {
    this = ot::Neighbor::GetTriggerBasedStatsInfo(a2);
    if (a5)
    {
      ++this[2];
      if (a3)
      {
        ++this[13];
      }
    }

    else
    {
      ++this[4];
      if (a3)
      {
        ++this[14];
      }
    }

    if (a4)
    {
      ++*this;
    }
  }

  return this;
}

uint64_t ot::Neighbor::GetTriggerBasedStatsInfo(ot::Neighbor *this)
{
  return this + 72;
}

{
  return ot::Neighbor::GetTriggerBasedStatsInfo(this);
}

uint64_t ot::MeshForwarder::UpdateTxDelayTriggerBasedStats(uint64_t this, unsigned int a2)
{
  *(this + 224) += a2;
  ++*(this + 232);
  if (a2 > *(this + 208))
  {
    *(this + 208) = a2;
  }

  if (a2 < *(this + 212) || *(this + 232) == 1)
  {
    *(this + 212) = a2;
  }

  *(this + 216) = *(this + 224) / *(this + 232);
  if (*(this + 224) % *(this + 232) > *(this + 232) / 2u)
  {
    ++*(this + 216);
  }

  return this;
}

ot::TimerMilli *ot::MeshForwarder::UpdateTxDelayStats(ot::TimerMilli *this, int a2)
{
  v7 = this;
  v6 = a2;
  v3 = this;
  if (a2)
  {
    Now = ot::TimerMilli::GetNow(this);
    Value = ot::Time::GetValue(&Now);
    v5 = Value - v6;
    *(v3 + 21) += (Value - v6);
    ++*(v3 + 44);
    if (v5 > *(v3 + 38))
    {
      *(v3 + 38) = v5;
    }

    if (v5 < *(v3 + 39) || *(v3 + 44) == 1)
    {
      *(v3 + 39) = v5;
    }

    *(v3 + 40) = *(v3 + 21) / *(v3 + 44);
    if (*(v3 + 21) % *(v3 + 44) > *(v3 + 44) / 2u)
    {
      ++*(v3 + 40);
    }

    return ot::MeshForwarder::UpdateTxDelayTriggerBasedStats(v3, v5);
  }

  return this;
}

void ot::MeshForwarder::HandleSentFrame(uint64_t a1, ot::Mac::Frame *a2, int a3)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  updated = 0;
  ot::Mac::Address::Address(v15);
  v13 = 1;
  if (v17)
  {
    v13 = 1;
    if (v17 != 15)
    {
      v13 = 1;
      if (v17 != 11)
      {
        v13 = 1;
        if (v17 != 14)
        {
          v13 = v17 == 29;
        }
      }
    }
  }

  if (!v13)
  {
    __assert_rtn("HandleSentFrame", "mesh_forwarder.cpp", 1568, "(aError == kErrorNone) || (aError == kErrorChannelAccessFailure) || (aError == kErrorAbort) || (aError == kErrorNoAck) || (aError == kErrorDuplicated)");
  }

  if (v17)
  {
    if (*(a1 + 56))
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(a1);
      if (ot::AppMetricsManager::IsAppPacket(v3, *(a1 + 56), v14, 1))
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(a1);
        ot::AppMetricsManager::UpdateAppMapWithPerPacketThreadTXReachabilityStatus(v4, v17, v14);
      }
    }
  }

  *(a1 + 88) &= ~8u;
  if ((*(a1 + 88) & 2) != 0)
  {
    if ((*(a1 + 88) & 0x10) == 0 || v17)
    {
      *(a1 + 88) &= ~0x10u;
    }

    else
    {
      ot::TimerMilli::Start((a1 + 96), 8u);
      v5 = ot::ToUlong(8);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "Start tx delay timer for %lu msec", v6, v7, v8, v9, v10, v11, v5);
    }

    if (!ot::Mac::Frame::IsEmpty(v18))
    {
      ot::Mac::Frame::GetDstAddr(v18, v15);
      IgnoreError();
      updated = ot::MeshForwarder::UpdateNeighborOnSentFrame(a1, v18, v17, v15, 0);
    }

    ot::MeshForwarder::UpdateSendMessage(a1, v17, v15, updated);
  }
}

uint64_t ot::MeshForwarder::UpdateSendMessage(uint64_t a1, int a2, ot::Mac::Address *a3, ot::Neighbor *a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a2;
  if (*(a1 + 56))
  {
    if ((ot::Message::IsDirectTransmission(*(a1 + 56)) & 1) == 0)
    {
      __assert_rtn("UpdateSendMessage", "mesh_forwarder.cpp", 1612, "mSendMessage->IsDirectTransmission()");
    }

    if (v18)
    {
      ot::Message::SetTxSuccess(*(a1 + 56), 0);
      *(a1 + 50) = ot::Message::GetLength(*(a1 + 56));
    }

    v12 = *(a1 + 50);
    if (v12 >= ot::Message::GetLength(*(a1 + 56)))
    {
      v15 = v18;
      if (v16)
      {
        LinkInfo = ot::Neighbor::GetLinkInfo(v16);
        TxSuccess = ot::Message::GetTxSuccess(*(a1 + 56));
        ot::LinkQualityInfo::AddMessageTxStatus(LinkInfo, TxSuccess);
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(a1);
        if (ot::AppMetricsManager::IsAppPacket(v5, *(a1 + 56), v14, 1))
        {
          v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(a1);
          v9 = v16;
          v6 = ot::Message::GetTxSuccess(*(a1 + 56));
          ot::AppMetricsManager::AddAppMessageTxStatus(v10, v14, v9, v6);
        }
      }

      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(a1);
      ot::Utils::HistoryTracker::RecordTxMessage(v7, *(a1 + 56), v17);
      ot::MeshForwarder::LogMessage(a1, 1u, *(a1 + 56), v15, v17);
      ot::MeshForwarder::FinalizeMessageDirectTx(a1, *(a1 + 56), v15, v16);
      ot::MeshForwarder::RemoveMessageIfNoPendingTx(a1, *(a1 + 56));
    }

    else
    {
      ot::Message::SetOffset(*(a1 + 56), *(a1 + 50));
    }
  }

  return ot::Tasklet::Post((a1 + 120));
}

uint64_t ot::Utils::HistoryTracker::RecordTxMessage(ot::Utils::HistoryTracker *this, const ot::Message *a2, const ot::Mac::Address *a3)
{
  return ot::Utils::HistoryTracker::RecordMessage(this, a2, a3, 1);
}

{
  return ot::Utils::HistoryTracker::RecordTxMessage(this, a2, a3);
}

void ot::MeshForwarder::LogMessage(ot::MeshForwarder *a1, unsigned __int8 a2, ot::Message *a3, int a4, ot::Mac::Address *a5)
{
  v8 = 4;
  if (a2 <= 2u)
  {
    if (a4)
    {
      v5 = 3;
    }

    else
    {
      v5 = 4;
    }

    v8 = v5;
  }

  else if (a2 - 3 <= 2)
  {
    v8 = 2;
  }

  if (ot::Instance::GetLogLevel(a1) >= v8)
  {
    Type = ot::Message::GetType(a3);
    if (Type)
    {
      if (Type == 1)
      {
        ot::MeshForwarder::LogMeshMessage(a1, a2, a3, a5, a4, v8);
      }
    }

    else
    {
      ot::MeshForwarder::LogIp6Message(a1, a2, a3, a5, a4, v8);
    }
  }
}

uint64_t ot::MeshForwarder::RxInfo::ParseIp6Headers(ot::MeshForwarder::RxInfo *this)
{
  v4 = 0;
  if ((*(this + 176) & 1) == 0)
  {
    Instance = ot::InstanceLocator::GetInstance(this);
    v4 = ot::Ip6::Headers::DecompressFrom((this + 64), this, (this + 40), Instance);
    if (!v4)
    {
      *(this + 176) = 1;
    }
  }

  return v4;
}

void ot::MeshForwarder::HandleReceivedFrame(ot::MeshForwarder *this, ot::Mac::RxFrame *a2)
{
  v32 = this;
  v31 = a2;
  SrcAddr = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::MeshForwarder::RxInfo::RxInfo(v26, Instance);
  if ((*(this + 88) & 2) != 0)
  {
    ot::Mac::Frame::GetPayload(v31);
    v24 = v3;
    PayloadLength = ot::Mac::Frame::GetPayloadLength(v31);
    ot::Data<(ot::DataLengthType)1>::Init(v26, v24, PayloadLength);
    SrcAddr = ot::Mac::Frame::GetSrcAddr(v31, v28);
    if (!SrcAddr)
    {
      SrcAddr = ot::Mac::Frame::GetDstAddr(v31, v29);
      if (!SrcAddr)
      {
        ot::ThreadLinkInfo::SetFrom(&v27, v31);
        v22 = ot::GetProvider<ot::InstanceLocator>::Get<ot::SupervisionListener>(this);
        IsLinkSecurityEnabled = ot::MeshForwarder::RxInfo::IsLinkSecurityEnabled(v26);
        ot::SupervisionListener::UpdateOnReceive(v22, v28, IsLinkSecurityEnabled);
        Type = ot::Mac::Frame::GetType(v31);
        if (Type)
        {
          if (Type == 1)
          {
            if (ot::Lowpan::MeshHeader::IsMeshHeader(v26, v6))
            {
              v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
              if (ot::Mle::Mle::IsMinimalEndDevice(v8))
              {
                ot::Logger::LogAtLevel<(ot::LogLevel)2>("MeshForwarder", "Frame with Mesh Header received in SED/SSED Mode, dropping", v9, v10, v11, v12, v13, v14, v26);
                SrcAddr = 2;
              }

              else
              {
                ot::MeshForwarder::HandleMesh(this, v26);
              }
            }

            else if (ot::Lowpan::FragmentHeader::IsFragmentHeader(v26, v7))
            {
              ot::MeshForwarder::HandleFragment(this, v26);
            }

            else if (ot::Lowpan::Lowpan::IsLowpanHc(v26, v15))
            {
              ot::MeshForwarder::HandleLowpanHc(this, v26);
            }

            else if (ot::Data<(ot::DataLengthType)1>::GetLength(v26))
            {
              SrcAddr = 32;
            }

            else
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshForwarder", "Possibly a Supervision Frame", v16, v17, v18, v19, v20, v21, v26);
              ot::MeshForwarder::LogFrame(this, "Received empty payload frame", v31, 0);
            }
          }

          else
          {
            SrcAddr = 2;
          }
        }
      }
    }
  }

  else
  {
    SrcAddr = 13;
  }

  if (SrcAddr)
  {
    ot::MeshForwarder::LogFrame(this, "Dropping rx frame", v31, SrcAddr);
  }

  else
  {
    ot::MeshForwarder::LogFrame(this, "rx frame", v31, 0);
  }
}

ot::MeshForwarder::RxInfo *ot::MeshForwarder::RxInfo::RxInfo(ot::MeshForwarder::RxInfo *this, ot::Instance *a2)
{
  ot::MeshForwarder::RxInfo::RxInfo(this, a2);
  return this;
}

{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Mac::Addresses::Addresses((this + 40));
  result = this;
  *(this + 176) = 0;
  return result;
}

uint64_t ot::MeshForwarder::RxInfo::IsLinkSecurityEnabled(ot::MeshForwarder::RxInfo *this)
{
  return ot::ThreadLinkInfo::IsLinkSecurityEnabled((this + 16));
}

{
  return ot::MeshForwarder::RxInfo::IsLinkSecurityEnabled(this);
}

void ot::MeshForwarder::HandleFragment(ot::MeshForwarder *this, ot::MeshForwarder::RxInfo *a2)
{
  v82 = this;
  v81 = a2;
  v80 = 0;
  v78 = 0;
  Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(a2);
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(v81);
  v80 = ot::Lowpan::FragmentHeader::ParseFrom(v79, v81);
  if (v80)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "Error while converting frame to packet fragment", v2, v3, v4, v5, v6, v7, v52);
  }

  else if (ot::Lowpan::FragmentHeader::GetDatagramOffset(v79))
  {
    v74[2] = this + 40;
    v74[0] = ot::MessageQueue::begin((this + 40));
    v74[1] = v35;
    v73[0] = ot::MessageQueue::end((this + 40));
    v73[1] = v36;
    while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v74, v73))
    {
      v72 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v74);
      v69 = ot::Message::GetLength(v72);
      if (v69 == ot::Lowpan::FragmentHeader::GetDatagramSize(v79))
      {
        DatagramTag = ot::Message::GetDatagramTag(v72);
        if (DatagramTag == ot::Lowpan::FragmentHeader::GetDatagramTag(v79))
        {
          Offset = ot::Message::GetOffset(v72);
          if (Offset == ot::Lowpan::FragmentHeader::GetDatagramOffset(v79))
          {
            v65 = ot::Message::GetOffset(v72);
            v66 = v65 + ot::Data<(ot::DataLengthType)1>::GetLength(v81);
            if (v66 <= ot::Lowpan::FragmentHeader::GetDatagramSize(v79))
            {
              IsLinkSecurityEnabled = ot::Message::IsLinkSecurityEnabled(v72);
              if (IsLinkSecurityEnabled == ot::MeshForwarder::RxInfo::IsLinkSecurityEnabled(v81))
              {
                v78 = v72;
                break;
              }
            }
          }
        }
      }

      ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v74, v37);
    }

    if (ot::MeshForwarder::GetRxOnWhenIdle(this) & 1) == 0 && !v78 && (ot::MeshForwarder::RxInfo::IsLinkSecurityEnabled(v81))
    {
      ot::MeshForwarder::ClearReassemblyList(this);
    }

    if (v78)
    {
      v60 = v78;
      v44 = ot::Message::GetOffset(v78);
      ot::Message::WriteData<(ot::DataLengthType)1>(v60, v44, v81);
      v61 = v78;
      v45 = ot::Data<(ot::DataLengthType)1>::GetLength(v81);
      ot::Message::MoveOffset(v61, v45);
      v62 = v78;
      Rss = ot::ThreadLinkInfo::GetRss((v81 + 16));
      ot::Message::AddRss(v62, Rss);
      v63 = v78;
      Lqi = ot::ThreadLinkInfo::GetLqi((v81 + 16));
      ot::Message::AddLqi(v63, Lqi);
      ot::Message::SetTimestampToNow(v78);
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "Received fragment with a non-matching fragmentation offset, tag and security", v38, v39, v40, v41, v42, v43, v52);
      v80 = 2;
    }
  }

  else
  {
    DatagramSize = ot::Lowpan::FragmentHeader::GetDatagramSize(v79);
    ot::MeshForwarder::UpdateRoutes(this, v81);
    v80 = ot::MeshForwarder::FrameToMessage(this, v81, DatagramSize, &v78);
    if (v80)
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "HandleFragment() Error while converting frame to message", v8, v9, v10, v11, v12, v13, v52);
    }

    else if (DatagramSize >= ot::Message::GetLength(v78))
    {
      v80 = ot::Message::SetLength(v78, DatagramSize);
      if (v80)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "HandleFragment() Failed to set message's length", v20, v21, v22, v23, v24, v25, v52);
      }

      else
      {
        v70 = v78;
        v26 = ot::Lowpan::FragmentHeader::GetDatagramTag(v79);
        ot::Message::SetDatagramTag(v70, v26);
        ot::Message::SetTimestampToNow(v78);
        ot::Message::SetFirstFragTimestampToNow(v78);
        ot::Message::UpdateLinkInfoFrom(v78, (v81 + 16));
        v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(this);
        if (ot::Ip6::Filter::Accept(v27, v78))
        {
          ot::MeshForwarder::SendIcmpErrorIfDstUnreach(this, v78, (v81 + 40));
          if (ot::MeshForwarder::GetRxOnWhenIdle(this) & 1) == 0 && (ot::Message::IsLinkSecurityEnabled(v78))
          {
            ot::MeshForwarder::ClearReassemblyList(this);
          }

          ot::MessageQueue::Enqueue((this + 40), v78);
          v34 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
          ot::TimeTicker::RegisterReceiver(v34, 0);
        }

        else
        {
          ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "Received fragment was filtered out by IPv6 filter", v28, v29, v30, v31, v32, v33, v52);
          v80 = 2;
        }
      }
    }

    else
    {
      v80 = 6;
      ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "HandleFragment() Datagram size less than message", v14, v15, v16, v17, v18, v19, v52);
    }
  }

  if (v80)
  {
    ot::MeshForwarder::LogFragmentFrameDrop(this, v80, v81, v79);
    otDumpNotePlat("[Dropped frame]", Bytes, Length);
  }

  else
  {
    bzero(v83, 0x400uLL);
    v48 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
    if (ot::MessagePool::GetIsBufferStatsEnabled(v48))
    {
      v59 = v78;
      DatagramOffset = ot::Lowpan::FragmentHeader::GetDatagramOffset(v79);
      v49 = ot::Data<(ot::DataLengthType)1>::GetLength(v81);
      ot::Message::GetBufferIDs(v59, DatagramOffset, v49, v83);
    }

    v55 = v80;
    v56 = ot::Data<(ot::DataLengthType)1>::GetLength(v81);
    v57 = (v81 + 40);
    v50 = ot::ThreadLinkInfo::IsLinkSecurityEnabled((v81 + 16));
    ot::MeshForwarder::LogFragmentFrame(this, v55, v56, v57, v79, v50, v83);
    v54 = ot::Message::GetOffset(v78);
    if (v54 >= ot::Message::GetLength(v78))
    {
      ot::MessageQueue::Dequeue((this + 40), v78);
      v53 = v78;
      SrcAddr = ot::MeshForwarder::RxInfo::GetSrcAddr(v81);
      ot::MeshForwarder::HandleDatagram(this, v53, SrcAddr);
      IgnoreError();
    }
  }
}

void ot::MeshForwarder::HandleLowpanHc(ot::MeshForwarder *this, ot::MeshForwarder::RxInfo *a2)
{
  v17 = this;
  v16 = a2;
  v15 = 0;
  v14 = 0;
  ot::MeshForwarder::UpdateRoutes(this, a2);
  v15 = ot::MeshForwarder::FrameToMessage(this, v16, 0, &v14);
  if (!v15)
  {
    ot::Message::UpdateLinkInfoFrom(v14, (v16 + 16));
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(this);
    if (ot::Ip6::Filter::Accept(v2, v14))
    {
      ot::Message::SetTimestampToNow(v14);
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(this);
      if (ot::Ip6::Filter::Accept(v3, v14))
      {
        ot::MeshForwarder::SendIcmpErrorIfDstUnreach(this, v14, (v16 + 40));
      }

      else
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "Received lowpan HC was filtered out by IPv6 filter", v4, v5, v6, v7, v8, v9, v11);
        v15 = 2;
      }
    }

    else
    {
      v15 = 2;
    }
  }

  if (v15)
  {
    ot::MeshForwarder::LogLowpanHcFrameDrop(this, v15, v16);
    if (v14)
    {
      ot::Message::Free(v14);
    }
  }

  else
  {
    v12 = v14;
    SrcAddr = ot::MeshForwarder::RxInfo::GetSrcAddr(v16);
    ot::MeshForwarder::HandleDatagram(this, v12, SrcAddr);
    IgnoreError();
  }
}

void ot::MeshForwarder::LogFrame(uint64_t a1, char a2, ot::Mac::Frame *a3, int a4)
{
  if (a4)
  {
    ot::ErrorToString(a4);
    ot::Mac::Frame::ToInfoString(a3, v19);
    ot::String<(unsigned short)150>::AsCString(v19);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "%s, aError:%s, %s", v4, v5, v6, v7, v8, v9, a2);
  }

  else
  {
    ot::Mac::Frame::ToInfoString(a3, v18);
    ot::String<(unsigned short)150>::AsCString(v18);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshForwarder", "%s, %s", v10, v11, v12, v13, v14, v15, a2);
  }
}

uint64_t ot::Lowpan::FragmentHeader::GetDatagramSize(ot::Lowpan::FragmentHeader *this)
{
  return *this;
}

{
  return ot::Lowpan::FragmentHeader::GetDatagramSize(this);
}

uint64_t ot::MeshForwarder::FrameToMessage(ot::MeshForwarder *this, ot::MeshForwarder::RxInfo *a2, __int16 a3, ot::Message **a4)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  FramePriority = 0;
  v13 = *a2;
  v12 = 0;
  FramePriority = ot::MeshForwarder::GetFramePriority(this, a2, &v12);
  if (!FramePriority)
  {
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
    ot::Message::Settings::Settings(v11, v12);
    v4 = ot::MessagePool::Allocate(v9, 0, 0, v11);
    *v15 = v4;
    if (*v15)
    {
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Lowpan::Lowpan>(this);
      FramePriority = ot::Lowpan::Lowpan::Decompress(v5, *v15, (v17 + 40), &v13, v16);
      if (!FramePriority)
      {
        FramePriority = ot::Message::AppendData<(ot::DataLengthType)1>(*v15, &v13);
        if (!FramePriority)
        {
          v8 = *v15;
          Length = ot::Data<(ot::DataLengthType)1>::GetLength(&v13);
          ot::Message::MoveOffset(v8, Length);
        }
      }
    }

    else
    {
      return 3;
    }
  }

  return FramePriority;
}

uint64_t ot::Lowpan::FragmentHeader::GetDatagramTag(ot::Lowpan::FragmentHeader *this)
{
  return *(this + 1);
}

{
  return ot::Lowpan::FragmentHeader::GetDatagramTag(this);
}

uint64_t ot::Message::SetFirstFragTimestampToNow(ot::Message *this)
{
  Now = ot::TimerMilli::GetNow(this);
  return ot::Message::SetFirstFragTimestamp(this, Now);
}

{
  return ot::Message::SetFirstFragTimestampToNow(this);
}

BOOL ot::MeshForwarder::ClearReassemblyList(ot::MeshForwarder *this)
{
  v10 = this;
  v9 = (this + 40);
  v8[0] = ot::MessageQueue::begin((this + 40));
  v8[1] = v1;
  v7[0] = ot::MessageQueue::end(v9);
  v7[1] = v2;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v8, v7);
    if (!result)
    {
      break;
    }

    v6 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v8);
    ot::MeshForwarder::LogMessage(this, 4u, v6, 18);
    if (!ot::Message::GetType(v6))
    {
      ++*(this + 37);
      ++*(this + 51);
    }

    ot::MessageQueue::DequeueAndFree((this + 40), v6);
    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v8, v4);
  }

  return result;
}

uint64_t ot::Message::WriteData<(ot::DataLengthType)1>(ot::Message *a1, unsigned __int16 a2, uint64_t a3)
{
  Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(a3);
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(a3);
  return ot::Message::WriteBytes(a1, a2, Bytes, Length);
}

{
  return ot::Message::WriteData<(ot::DataLengthType)1>(a1, a2, a3);
}

uint64_t ot::ThreadLinkInfo::GetRss(ot::ThreadLinkInfo *this)
{
  return *(this + 3);
}

{
  return ot::ThreadLinkInfo::GetRss(this);
}

uint64_t ot::ThreadLinkInfo::GetLqi(ot::ThreadLinkInfo *this)
{
  return *(this + 4);
}

{
  return ot::ThreadLinkInfo::GetLqi(this);
}

void ot::MeshForwarder::LogFragmentFrame(uint64_t a1, int a2, unsigned __int16 a3, ot::Mac::Address *a4, ot::Lowpan::FragmentHeader *a5, char a6, uint64_t a7)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v14 = a3;
  v13[10] = v30;
  ot::Mac::Address::ToString(a4, v30);
  v15 = ot::String<(unsigned short)17>::AsCString(v30);
  v13[11] = v29;
  ot::Mac::Address::ToString((v25 + 10), v29);
  v16 = ot::String<(unsigned short)17>::AsCString(v29);
  DatagramTag = ot::Lowpan::FragmentHeader::GetDatagramTag(v24);
  DatagramOffset = ot::Lowpan::FragmentHeader::GetDatagramOffset(v24);
  DatagramSize = ot::Lowpan::FragmentHeader::GetDatagramSize(v24);
  v20 = ot::ErrorToString(v27);
  v21 = v13;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = DatagramTag;
  v13[4] = DatagramOffset;
  v13[5] = DatagramSize;
  v13[6] = v20;
  v13[7] = ot::ToYesNo((v23 & 1));
  v13[8] = v22;
  ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "rx frag frame, len:%d, src:%s, dst:%s, tag:%d, offset:%d, dglen:%d, error:%s, sec:%s%s", v7, v8, v9, v10, v11, v12, v14);
}

uint64_t ot::ThreadLinkInfo::IsLinkSecurityEnabled(ot::ThreadLinkInfo *this)
{
  return *(this + 5) & 1;
}

{
  return ot::ThreadLinkInfo::IsLinkSecurityEnabled(this);
}

uint64_t ot::MeshForwarder::HandleDatagram(ot::MeshForwarder *this, ot::Message *a2, const ot::Mac::Address *a3)
{
  v14 = this;
  v13 = a2;
  v12 = a3;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(this);
  ot::Utils::HistoryTracker::RecordRxMessage(v3, v13, v12);
  ot::MeshForwarder::LogMessage(this, 0, v13, 0, v12);
  if (!ot::Message::GetType(v13))
  {
    ++*(this + 35);
    ++*(this + 49);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    Neighbor = ot::NeighborTable::FindNeighbor(v4, v12, 5);
    if (Neighbor)
    {
      TriggerBasedStatsInfo = ot::Neighbor::GetTriggerBasedStatsInfo(Neighbor);
      ++*(TriggerBasedStatsInfo + 12);
    }
  }

  ot::Message::SetLoopbackToHostAllowed(v13, 1);
  ot::Message::SetOrigin(v13, 0);
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(this);
  ot::OwnedPtr<ot::Message>::OwnedPtr(&v10, v13);
  v8 = ot::Ip6::Ip6::HandleDatagram(v7, &v10, 0);
  ot::OwnedPtr<ot::Message>::~OwnedPtr(&v10);
  return v8;
}

uint64_t ot::MeshForwarder::RxInfo::GetSrcAddr(ot::MeshForwarder::RxInfo *this)
{
  return this + 40;
}

{
  return ot::MeshForwarder::RxInfo::GetSrcAddr(this);
}

void ot::MeshForwarder::LogFragmentFrameDrop(uint64_t a1, int a2, ot::MeshForwarder::RxInfo *a3, ot::Lowpan::FragmentHeader *a4)
{
  v10 = ot::ErrorToString(a2);
  ot::MeshForwarder::RxInfo::ToString(a3, v13);
  ot::String<(unsigned short)70>::AsCString(v13);
  ot::Lowpan::FragmentHeader::GetDatagramTag(a4);
  ot::Lowpan::FragmentHeader::GetDatagramOffset(a4);
  ot::Lowpan::FragmentHeader::GetDatagramSize(a4);
  ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "Dropping rx frag frame, error:%s, %s, tag:%d, offset:%d, dglen:%d", v4, v5, v6, v7, v8, v9, v10);
}

uint64_t ot::MeshForwarder::HandleTimeTick(ot::MeshForwarder *this)
{
  v5 = ot::MeshForwarder::FragmentPriorityList::UpdateOnTimeTick((this + 248));
  result = ot::MeshForwarder::UpdateReassemblyList(this);
  v4 = 1;
  if ((result & 1) == 0)
  {
    v4 = v5;
  }

  if ((v4 & 1) == 0)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
    return ot::TimeTicker::UnregisterReceiver(v2, 0);
  }

  return result;
}

BOOL ot::MeshForwarder::UpdateReassemblyList(ot::MeshForwarder *this)
{
  v30 = this;
  Now = ot::TimerMilli::GetNow(this);
  v28[2] = this + 40;
  v28[0] = ot::MessageQueue::begin((this + 40));
  v28[1] = v1;
  v27[0] = ot::MessageQueue::end((this + 40));
  v27[1] = v2;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v28, v27))
  {
    v26 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v28);
    Timestamp = ot::Message::GetTimestamp(v26);
    v22 = ot::Time::operator-(&Now, &Timestamp);
    if (v22 >= ot::Time::SecToMsec(3))
    {
      ot::MeshForwarder::LogMessage(this, 4u, v26, 30);
      if (!ot::Message::GetType(v26))
      {
        ++*(this + 37);
        ++*(this + 51);
      }

      ot::MessageQueue::DequeueAndFree((this + 40), v26);
    }

    else
    {
      v24 = ot::Message::GetTimestamp(v26);
      v21 = ot::Time::operator-(&Now, &v24);
      v3 = ot::Time::SecToMsec(1);
      if (v21 >= v3)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "SendDataPoll before reassembly timer expires", v5, v6, v7, v8, v9, v10, v20);
        v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
        ot::DataPollSender::SendDataPoll(v11, v12, v13, v14, v15, v16, v17, v18);
        IgnoreError();
      }
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v28, v4);
  }

  return ot::MessageQueue::GetHead((this + 40)) != 0;
}

uint64_t ot::MeshForwarder::GetFramePriority(ot::InstanceLocator *a1, uint64_t a2, _BYTE *a3)
{
  v15 = ot::MeshForwarder::RxInfo::ParseIp6Headers(a2);
  if (!v15)
  {
    ot::Ip6::Headers::GetIp6Header((a2 + 64));
    Dscp = ot::Ip6::Header::GetDscp(v3);
    *a3 = ot::Ip6::Ip6::DscpToPriority(Dscp);
    if (ot::Ip6::Headers::IsIcmp6((a2 + 64)))
    {
      IcmpHeader = ot::Ip6::Headers::GetIcmpHeader((a2 + 64));
      if (ot::Ip6::Icmp::Header::IsError(IcmpHeader))
      {
        *a3 = 3;
      }
    }

    if (ot::Ip6::Headers::IsUdp((a2 + 64)))
    {
      UdpHeader = ot::Ip6::Headers::GetUdpHeader((a2 + 64));
      DestinationPort = ot::Ip6::Udp::Header::GetDestinationPort(UdpHeader);
      if (DestinationPort == 19788)
      {
        *a3 = 3;
      }

      else
      {
        v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
        SourceAddress = ot::Ip6::Headers::GetSourceAddress((a2 + 64));
        DestinationAddress = ot::Ip6::Headers::GetDestinationAddress((a2 + 64));
        if (ot::Tmf::Agent::IsTmfMessage(v12, SourceAddress, DestinationAddress, DestinationPort))
        {
          ot::Ip6::Headers::GetIp6Header((a2 + 64));
          v9 = ot::Ip6::Header::GetDscp(v8);
          *a3 = ot::Tmf::Agent::DscpToPriority(v9);
        }
      }
    }
  }

  return v15;
}

uint64_t ot::Message::AppendData<(ot::DataLengthType)1>(ot::Message *a1, uint64_t a2)
{
  Bytes = ot::Data<(ot::DataLengthType)1>::GetBytes(a2);
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(a2);
  return ot::Message::AppendBytes(a1, Bytes, Length);
}

{
  return ot::Message::AppendData<(ot::DataLengthType)1>(a1, a2);
}

void ot::MeshForwarder::LogLowpanHcFrameDrop(uint64_t a1, int a2, ot::MeshForwarder::RxInfo *a3)
{
  v9 = ot::ErrorToString(a2);
  ot::MeshForwarder::RxInfo::ToString(a3, v11);
  ot::String<(unsigned short)70>::AsCString(v11);
  ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "Dropping rx lowpan HC frame, error:%s, %s", v3, v4, v5, v6, v7, v8, v9);
}

uint64_t ot::Utils::HistoryTracker::RecordRxMessage(ot::Utils::HistoryTracker *this, const ot::Message *a2, const ot::Mac::Address *a3)
{
  return ot::Utils::HistoryTracker::RecordMessage(this, a2, a3, 0);
}

{
  return ot::Utils::HistoryTracker::RecordRxMessage(this, a2, a3);
}

uint64_t ot::Ip6::Headers::GetUdpHeader(ot::Ip6::Headers *this)
{
  return this + 40;
}

{
  return ot::Ip6::Headers::GetUdpHeader(this);
}

BOOL ot::ChildTable::Contains(ot::ChildTable *this, const ot::Neighbor *a2)
{
  v3 = 0;
  if ((this + 8) <= a2)
  {
    return a2 < ot::GetArrayEnd<ot::Child,(unsigned short)64>(this + 8);
  }

  return v3;
}

{
  return ot::ChildTable::Contains(this, a2);
}

BOOL ot::Neighbor::IsEnhAckProbingActive(ot::Neighbor *this)
{
  v2 = 1;
  if ((*(this + 64) & 2) == 0)
  {
    v2 = 1;
    if ((*(this + 64) & 4) == 0)
    {
      return (*(this + 64) & 8) != 0;
    }
  }

  return v2;
}

{
  return ot::Neighbor::IsEnhAckProbingActive(this);
}

char *ot::MeshForwarder::MessageActionToString(uint64_t a1, unsigned __int8 a2, int a3)
{
  v4 = ot::MeshForwarder::MessageActionToString(ot::MeshForwarder::MessageAction,otError)::kMessageActionStrings[a2];
  if (a3)
  {
    return ot::MeshForwarder::MessageActionToString(ot::MeshForwarder::MessageAction,otError)::kMessageFailedActionStrings[a2];
  }

  return v4;
}

uint64_t ot::MeshForwarder::LogIp6SourceDestAddresses(uint64_t a1, ot::Ip6::Headers *a2, uint64_t a3, const char *a4)
{
  SourcePort = ot::Ip6::Headers::GetSourcePort(a2);
  DestinationPort = ot::Ip6::Headers::GetDestinationPort(a2);
  if (SourcePort)
  {
    __str = &a4[strlen(a4)];
    __size = 2048 - strlen(a4);
    SourceAddress = ot::Ip6::Headers::GetSourceAddress(a2);
    ot::Ip6::Address::ToString(SourceAddress, v28);
    v5 = ot::String<(unsigned short)40>::AsCString(v28);
    snprintf(__str, __size, " src:[%s]:%d", v5, SourcePort);
  }

  else
  {
    v18 = &a4[strlen(a4)];
    v17 = 2048 - strlen(a4);
    v6 = ot::Ip6::Headers::GetSourceAddress(a2);
    ot::Ip6::Address::ToString(v6, v27);
    v7 = ot::String<(unsigned short)40>::AsCString(v27);
    snprintf(v18, v17, " src:[%s]", v7);
  }

  if (DestinationPort)
  {
    v16 = &a4[strlen(a4)];
    v15 = 2048 - strlen(a4);
    DestinationAddress = ot::Ip6::Headers::GetDestinationAddress(a2);
    ot::Ip6::Address::ToString(DestinationAddress, v26);
    v9 = ot::String<(unsigned short)40>::AsCString(v26);
    return snprintf(v16, v15, " dst:[%s]:%d", v9, DestinationPort);
  }

  else
  {
    v14 = &a4[strlen(a4)];
    v13 = 2048 - strlen(a4);
    v11 = ot::Ip6::Headers::GetDestinationAddress(a2);
    ot::Ip6::Address::ToString(v11, v25);
    v12 = ot::String<(unsigned short)40>::AsCString(v25);
    return snprintf(v14, v13, " dst:[%s]", v12);
  }
}

uint64_t ot::MeshForwarder::GetIp6SourceDestAddresses(ot::MeshForwarder *this, const ot::Ip6::Headers *a2, const ot::Mac::Address *a3, char *a4, uint64_t a5)
{
  v32 = this;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  v28 = a5;
  SourcePort = ot::Ip6::Headers::GetSourcePort(a2);
  DestinationPort = ot::Ip6::Headers::GetDestinationPort(v31);
  v25 = 0;
  Neighbor = 0;
  if (v30)
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    Neighbor = ot::NeighborTable::FindNeighbor(v5, v30, 7);
  }

  SourceAddress = ot::Ip6::Headers::GetSourceAddress(v31);
  if (SourcePort)
  {
    ot::Ip6::Address::ToString(SourceAddress, v37);
    v7 = ot::String<(unsigned short)40>::AsCString(v37);
    v25 += snprintf(&v29[v25], v28 - v25, " src=[%s]:%d,", v7, SourcePort);
  }

  else
  {
    ot::Ip6::Address::ToString(SourceAddress, v36);
    v8 = ot::String<(unsigned short)40>::AsCString(v36);
    v25 += snprintf(&v29[v25], v28 - v25, " src=[%s],", v8);
  }

  DestinationAddress = ot::Ip6::Headers::GetDestinationAddress(v31);
  if (DestinationPort)
  {
    ot::Ip6::Address::ToString(DestinationAddress, v35);
    v10 = ot::String<(unsigned short)40>::AsCString(v35);
    v25 += snprintf(&v29[v25], v28 - v25, " dst=[%s]:%d,", v10, DestinationPort);
  }

  else
  {
    ot::Ip6::Address::ToString(DestinationAddress, v34);
    v11 = ot::String<(unsigned short)40>::AsCString(v34);
    v25 += snprintf(&v29[v25], v28 - v25, " dst=[%s],", v11);
  }

  if (Neighbor)
  {
    v20 = &v29[v25];
    v19 = v28 - v25;
    ot::Neighbor::GetExtAddress(Neighbor);
    ot::Mac::ExtAddress::ToString(v12, v33);
    v17 = ot::String<(unsigned short)17>::AsCString(v33);
    Rloc16 = ot::Neighbor::GetRloc16(Neighbor);
    v18 = Rloc16;
    Now = ot::TimerMilli::GetNow(Rloc16);
    LastHeard = ot::Neighbor::GetLastHeard(Neighbor);
    v14 = ot::Time::operator-(&Now, &LastHeard);
    v15 = ot::Time::MsecToSec(v14);
    result = snprintf(v20, v19, " nbr_ext=%s, nbr_rloc=0x%04x, nbr_age=%d", v17, v18, v15);
  }

  else
  {
    result = snprintf(&v29[v25], v28 - v25, " nbr_ext=nil, nbr_rloc=nil, nbr_age=nil");
  }

  v25 += result;
  return result;
}

void ot::MeshForwarder::LogIp6Message(ot::MeshForwarder *a1, unsigned __int8 a2, ot::Message *a3, ot::Mac::Address *a4, int a5, unsigned __int8 a6)
{
  v111 = a1;
  v110 = a2;
  v109 = a3;
  v108 = a4;
  v107 = a5;
  v106 = a6;
  v81 = a1;
  v104 = 0;
  v103 = 0;
  v82 = "";
  v102 = "";
  v101 = 0;
  strcpy(__format, ", offset=%hu, tag=%u");
  v100 = 5;
  *__str = 0;
  v118 = 0;
  v119[0] = 0;
  *(v119 + 7) = 0;
  memset(__b, 0, sizeof(__b));
  IsAppPacket = 0;
  bzero(v115, 0x400uLL);
  v98 = 1500;
  bzero(v114, 0x5DCuLL);
  std::string::basic_string[abi:dn200100]<0>(&v97, "");
  std::string::basic_string[abi:dn200100]<0>(&v96, "");
  std::string::basic_string[abi:dn200100]<0>(&v95, "");
  Timestamp = ot::Message::GetTimestamp(v109);
  if (ot::Time::GetValue(&Timestamp) > 0)
  {
    v91 = ot::Message::GetTimestamp(v109);
    Value = ot::Time::GetValue(&v91);
    TxDelayStats = ot::MeshForwarder::GetTxDelayStats(v81, Value);
    v78 = &v92;
    std::to_string(&v92, TxDelayStats);
    v77 = &v93;
    std::operator+[abi:dn200100]<char,std::char_traits<char>,std::allocator<char>>(", txdelay=", &v92, &v93);
    std::string::operator=[abi:dn200100](&v97, &v93);
    std::string::~string(&v93);
    std::string::~string(&v92);
    v88 = ot::Message::GetTimestamp(v109);
    v8 = ot::Time::GetValue(&v88);
    v9 = ot::MeshForwarder::GetTxDelayStats(v81, v8);
    v80 = &v89;
    std::to_string(&v89, v9);
    v79 = &v90;
    std::operator+[abi:dn200100]<char,std::char_traits<char>,std::allocator<char>>(", rxdelayprevfrag=", &v89, &v90);
    std::string::operator=[abi:dn200100](&v96, &v90);
    std::string::~string(&v90);
    std::string::~string(&v89);
  }

  FirstFragTimestamp = ot::Message::GetFirstFragTimestamp(v109);
  if (ot::Time::GetValue(&FirstFragTimestamp) > 0)
  {
    v84 = ot::Message::GetTimestamp(v109);
    v74 = ot::Time::GetValue(&v84);
    v83 = ot::Message::GetFirstFragTimestamp(v109);
    v10 = ot::Time::GetValue(&v83);
    v76 = &v85;
    std::to_string(&v85, v74 - v10);
    v75 = &v86;
    std::operator+[abi:dn200100]<char,std::char_traits<char>,std::allocator<char>>(", rxdelayfirstfrag=", &v85, &v86);
    std::string::operator=[abi:dn200100](&v95, &v86);
    std::string::~string(&v86);
    std::string::~string(&v85);
  }

  if (!ot::Ip6::Headers::ParseFrom(v105, v109))
  {
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v81);
    IsAppPacket = ot::AppMetricsManager::IsAppPacket(v11, v109, v105, 0);
    if (IsAppPacket)
    {
      v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v81);
      ot::AppMetricsManager::GetAppHeaderString(v12, v105, __b);
      if (!v110 || v110 == 4)
      {
        v73 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v81);
        v72 = v109;
        HopsLft = ot::Message::GetHopsLft(v109);
        ot::AppMetricsManager::CountAppDuplicates(v73, v72, v105, 1, HopsLft);
      }

      if (v110 == 1)
      {
        v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v81);
        ot::AppMetricsManager::UpdateMatterSubscriptionInfoMap(v14, v109, v105, v108);
      }
    }

    if (v110 == 4)
    {
      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v81);
      ot::AppMetricsManager::UpdateSystemWideThreadRXReachabilityStatusLastTimestamp(v15, 30, v105);
    }

    v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(v81);
    if (ot::MessagePool::GetIsBufferStatsEnabled(v16))
    {
      ot::Message::GetBufferIDs(v109, v115);
    }

    v71 = 1;
    if (v110)
    {
      v71 = v110 == 4;
    }

    v104 = v71;
    v70 = 1;
    if (v110 != 4)
    {
      v70 = v110 == 0;
    }

    v101 = v70;
    if (v70)
    {
      Offset = ot::Message::GetOffset(v109);
      DatagramTag = ot::Message::GetDatagramTag(v109);
      snprintf(__str, 0x1FuLL, __format, Offset, DatagramTag);
    }

    if (v110 == 2)
    {
      v114[0] = 0;
    }

    else
    {
      ot::MeshForwarder::GetIp6SourceDestAddresses(v81, v105, v108, v114, 1500);
    }

    v62 = v106;
    v63 = ot::MeshForwarder::MessageActionToString(v81, v110, v107);
    v66 = v105;
    IpProto = ot::Ip6::Headers::GetIpProto(v105);
    v64 = ot::Ip6::Ip6::IpProtoToString(IpProto, v19, v20, v21, v22, v23);
    Length = ot::Message::GetLength(v109);
    Checksum = ot::Ip6::Headers::GetChecksum(v105);
    Ecn = ot::Ip6::Headers::GetEcn(v105);
    v68 = ot::Ip6::Ip6::EcnToString(Ecn);
    if (v108)
    {
      v25 = ", from=";
      if (v110)
      {
        v25 = ", to=";
      }

      v61 = v25;
    }

    else
    {
      v61 = "";
    }

    v60 = v61;
    if (v108)
    {
      v58 = v113;
      ot::Mac::Address::ToString(v108, v113);
      v59 = ot::String<(unsigned short)17>::AsCString(v113);
    }

    else
    {
      v59 = "";
    }

    v55 = v59;
    IsLinkSecurityEnabled = ot::Message::IsLinkSecurityEnabled(v109);
    v56 = ot::ToYesNo(IsLinkSecurityEnabled);
    v27 = "";
    if (v107)
    {
      v27 = ", error=";
    }

    v57 = v27;
    if (v107)
    {
      v54 = ot::ErrorToString(v107);
    }

    else
    {
      v54 = "";
    }

    v51 = v54;
    v52 = ot::MeshForwarder::MessagePriorityToString(v81, v109);
    v28 = ", rss=";
    if (!v104)
    {
      v28 = "";
    }

    v53 = v28;
    if (v104)
    {
      RssAverager = ot::Message::GetRssAverager(v109);
      v49 = v112;
      ot::RssAverager::ToString(RssAverager, v112);
      v50 = ot::String<(unsigned short)10>::AsCString(v112);
    }

    else
    {
      v50 = "";
    }

    v45 = v50;
    v30 = ", radio=";
    if ((v103 & 1) == 0)
    {
      v30 = "";
    }

    v46 = v30;
    v47 = v102;
    ot::Ip6::Headers::GetIp6Header(v105);
    HopLimit = ot::Ip6::Header::GetHopLimit(v31);
    if (v101)
    {
      v44 = __str;
    }

    else
    {
      v44 = "";
    }

    v42 = v44;
    v32 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(v81);
    FreeBufferCount = ot::MessagePool::GetFreeBufferCount(v32);
    if (v110 && v110 != 4)
    {
      std::string::c_str[abi:dn200100](&v97);
      v41 = v34;
    }

    else
    {
      std::string::c_str[abi:dn200100](&v96);
      v41 = v33;
    }

    v40 = v41;
    if (v110 && v110 != 4)
    {
      v39 = "";
    }

    else
    {
      std::string::c_str[abi:dn200100](&v95);
      v39 = v35;
    }

    v38 = v39;
    if (IsAppPacket)
    {
      v37 = __b;
    }

    else
    {
      v37 = "";
    }

    v36[23] = v36;
    v36[1] = v64;
    v36[2] = v114;
    v36[3] = Length;
    v36[4] = Checksum;
    v36[5] = v68;
    v36[6] = v60;
    v36[7] = v55;
    v36[8] = v56;
    v36[9] = v57;
    v36[10] = v51;
    v36[11] = v52;
    v36[12] = v53;
    v36[13] = v45;
    v36[14] = v46;
    v36[15] = v47;
    v36[16] = HopLimit;
    v36[17] = v42;
    v36[18] = FreeBufferCount;
    v36[19] = v40;
    v36[20] = v38;
    v36[21] = v37;
    ot::Logger::LogInModule("MeshForwarder", v62, "ITMD: %s IPv6 %s msg,%s, len=%d, chksum=%04x, ecn=%s%s%s, sec=%s%s%s, prio=%s%s%s%s%s, hlim=%u%s, free_buf=%d%s%s%s", v51, v57, v56, v55, v60, v63);
  }

  std::string::~string(&v95);
  std::string::~string(&v96);
  std::string::~string(&v97);
}

uint64_t ot::Message::GetFirstFragTimestamp(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 40);
}

{
  return ot::Message::GetFirstFragTimestamp(this);
}

uint64_t ot::Ip6::Headers::GetEcn(ot::Ip6::Headers *this)
{
  return ot::Ip6::Header::GetEcn(this);
}

{
  return ot::Ip6::Headers::GetEcn(this);
}

ot::StringWriter *ot::MeshForwarder::RxInfo::ToString@<X0>(ot::MeshForwarder::RxInfo *this@<X0>, ot::StringWriter *a2@<X8>)
{
  ot::String<(unsigned short)70>::String(a2);
  Length = ot::Data<(ot::DataLengthType)1>::GetLength(this);
  SrcAddr = ot::MeshForwarder::RxInfo::GetSrcAddr(this);
  ot::Mac::Address::ToString(SrcAddr, v13);
  v9 = ot::String<(unsigned short)17>::AsCString(v13);
  DstAddr = ot::MeshForwarder::RxInfo::GetDstAddr(this);
  ot::Mac::Address::ToString(DstAddr, v12);
  v10 = ot::String<(unsigned short)17>::AsCString(v12);
  IsLinkSecurityEnabled = ot::MeshForwarder::RxInfo::IsLinkSecurityEnabled(this);
  v5 = ot::ToYesNo(IsLinkSecurityEnabled);
  return ot::StringWriter::Append(a2, "len:%d, src:%s, dst:%s, sec:%s", Length, v9, v10, v5);
}

uint64_t ot::String<(unsigned short)70>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)70>::AsCString(a1);
}

uint64_t ot::String<(unsigned short)70>::String(uint64_t a1)
{
  ot::String<(unsigned short)70>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 70);
  return a1;
}

uint64_t ot::MeshForwarder::RxInfo::GetDstAddr(ot::MeshForwarder::RxInfo *this)
{
  return this + 50;
}

{
  return ot::MeshForwarder::RxInfo::GetDstAddr(this);
}

uint64_t ot::Message::SetFirstFragTimestamp(ot::Buffer *a1, int a2)
{
  result = ot::Buffer::GetMetadata(a1);
  *(result + 40) = a2;
  return result;
}

{
  return ot::Message::SetFirstFragTimestamp(a1, a2);
}

uint64_t ot::GetArrayEnd<ot::Child,(unsigned short)64>(uint64_t a1)
{
  return a1 + 29696;
}

{
  return ot::GetArrayEnd<ot::Child,(unsigned short)64>(a1);
}

void *ot::ClearAllBytes<ot::MeshForwarder::FragmentPriorityList>(void *a1)
{
  return memset(a1, 0, 0x30uLL);
}

{
  return ot::ClearAllBytes<ot::MeshForwarder::FragmentPriorityList>(a1);
}

uint64_t std::string::basic_string[abi:dn200100](uint64_t a1, uint64_t a2)
{
  std::string::basic_string[abi:dn200100](a1, a2);
  return a1;
}

{
  v8 = a1;
  v7 = a2;
  v9 = a1;
  v2 = std::string::basic_string[abi:dn200100](std::string&&)::{lambda(std::string&)#1}::operator()(&v6, a2);
  *a1 = *v2;
  *(a1 + 16) = *(v2 + 16);
  v3 = v7;
  *v7 = 0uLL;
  *(v3 + 2) = 0;
  std::string::__annotate_shrink[abi:dn200100]();
  if (!std::string::__is_long[abi:dn200100](a1))
  {
    std::string::size[abi:dn200100](a1);
    std::string::__annotate_shrink[abi:dn200100]();
  }

  return v9;
}

uint64_t std::string::basic_string[abi:dn200100](std::string&&)::{lambda(std::string&)#1}::operator()(uint64_t a1, uint64_t a2)
{
  if (!std::string::__is_long[abi:dn200100](a2))
  {
    std::string::__annotate_delete[abi:dn200100]();
  }

  return a2;
}

char *ot::BinarySearch::Find(ot::BinarySearch *this, char *a2, const void *a3, unsigned __int16 a4, uint64_t (*a5)(ot::BinarySearch *, char *), int (*a6)(const void *, const void *))
{
  v10 = 0;
  v9 = a3;
  while (v10 < v9)
  {
    v8 = (v10 + v9) / 2;
    v11 = &a2[a4 * v8];
    v7 = a5(this, v11);
    if (!v7)
    {
      return v11;
    }

    if (v7 <= 0)
    {
      v9 = (v10 + v9) / 2;
    }

    else
    {
      v10 = v8 + 1;
    }
  }

  return 0;
}

void ot::MeshForwarder::SendMessage(ot::InstanceLocator *a1, uint64_t *a2)
{
  v84 = a2;
  v115 = a1;
  v114 = a2;
  v85 = a1;
  v113 = ot::OwnedPtr<ot::Message>::Release(a2);
  v86 = 0;
  ot::Message::SetOffset(v113, 0);
  ot::Message::SetDatagramTag(v113, 0);
  ot::Message::SetTimestampToNow(v113);
  UriPathOptions = 0;
  v111 = -3905;
  Length = ot::Message::GetLength(v113);
  v88 = Length;
  v109[15] = v63;
  v87 = (Length + 15) & 0x1FFF0;
  __chkstk_darwin();
  v89 = &v63[-v87];
  v109[14] = v88;
  v122[32] = v2;
  memset(v122, 0, 32);
  if (!ot::Message::GetType(v113))
  {
    UriPathOptions = ot::Ip6::Headers::ParseFrom(v109, v113);
    if (UriPathOptions)
    {
      v3 = ot::ErrorToString(UriPathOptions);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "Failed to parse Ip6::Headers, error = %s", v4, v5, v6, v7, v8, v9, v3);
      v108 = 1;
      return;
    }

    if (ot::Ip6::Headers::IsUdp(v109) && ot::Ip6::Headers::GetDestinationPort(v109) == 61631 && ot::Ip6::Headers::GetSourcePort(v109) == 61631)
    {
      v107 = 594;
      Bytes = ot::Message::ReadBytes(v113, 0, v89, v88);
      v80 = Bytes;
      v81 = v109;
      UdpHeader = ot::Ip6::Headers::GetUdpHeader(v109);
      v11 = ot::Ip6::Udp::Header::GetLength(UdpHeader);
      v105 = v80 - v11 + 8;
      v83 = v105;
      v82 = Bytes;
      v12 = ot::Ip6::Headers::GetUdpHeader(v81);
      v61 = 8;
      v60 = ot::Ip6::Udp::Header::GetLength(v12);
      v59 = v82;
      v58 = v83;
      ot::Logger::LogAtLevel<(ot::LogLevel)5>("MeshForwarder", "MeshForwarder::%s:coapOffset = %d, raw totalBytes = %d, Udp total packet Length = %d, udp header size = %lu", v13, v14, v15, v16, v17, v18, "SendMessage");
      if (v89[v105] == v107 && v89[v105 + 1] == HIBYTE(v107))
      {
        v104 = 0;
        v79 = v113;
        v19 = ot::Message::GetLength(v113);
        v104 = ot::Message::Clone(v79, v19);
        if (!v104)
        {
          UriPathOptions = 3;
          v62 = 3;
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("MeshForwarder", "MeshForwarder::%s[BMLR]:Message Clone failed, error = %d", v20, v21, v22, v23, v24, v25, "SendMessage");
          v108 = 1;
          return;
        }

        v103 = v104;
        ot::Message::RemoveHeader(v104, v105);
        if (ot::Coap::Message::ParseHeader(v103))
        {
          v62 = UriPathOptions;
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("MeshForwarder", "MeshForwarder::%s[BMLR]:Failed to parse CoAP header, error = %d", v26, v27, v28, v29, v30, v31, "SendMessage");
          ot::Message::Free(v104);
          v108 = 1;
          return;
        }

        UriPathOptions = ot::Coap::Message::ReadUriPathOptions(v103, v122);
        if (!UriPathOptions)
        {
          v102 = ot::UriFromPath(v122, v32, v33, v34, v35, v36);
          if (v102 == 8)
          {
            v76 = Length;
            v71 = v109;
            SourceAddress = ot::Ip6::Headers::GetSourceAddress(v109);
            v70 = v121;
            ot::Ip6::Address::ToString(SourceAddress, v121);
            v77 = ot::String<(unsigned short)40>::AsCString(v70);
            DestinationAddress = ot::Ip6::Headers::GetDestinationAddress(v71);
            v72 = v120;
            ot::Ip6::Address::ToString(DestinationAddress, v120);
            v75 = ot::String<(unsigned short)40>::AsCString(v72);
            IsNonConfirmablePostRequest = ot::Coap::Message::IsNonConfirmablePostRequest(v103);
            v73 = ot::Message::GetLength(v103);
            MessageId = ot::Coap::Message::GetMessageId(v103);
            v78 = v57;
            v62 = MessageId;
            v61 = v122;
            v60 = v73;
            v59 = IsNonConfirmablePostRequest;
            v58 = v75;
            v57[2] = v77;
            v57[1] = v76;
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshForwarder", "MeshForwarder::%s[BMLR]: Ipv6 rawFrameLength = %d, src[%s] => dst[%s], coap NonConfirmablePost = %d, MessageLength=%d, URI= %s, coapMessageId = %d", v73, MessageId, v40, v41, v42, v43, "SendMessage");
            ot::Message::Free(v104);
            platformSendPacketToBackBone(v89, Length);
            v108 = 1;
            return;
          }
        }

        ot::Message::Free(v104);
      }
    }
  }

  ot::PriorityQueue::Enqueue((v85 + 8), v113);
  Type = ot::Message::GetType(v113);
  if (Type)
  {
    if (Type == 2)
    {
      v56 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildSupervisor>(v85);
      Destination = ot::ChildSupervisor::GetDestination(v56, v113);
      v64 = 0;
      if (Destination)
      {
        v64 = !ot::Neighbor::IsRxOnWhenIdle(Destination);
      }

      if (!v64)
      {
        __assert_rtn("SendMessage", "mesh_forwarder_ftd.cpp", 203, "(child != nullptr) && !child->IsRxOnWhenIdle()");
      }

      ot::IndirectSender::AddMessageForSleepyChild((v85 + 296), v113, Destination);
      goto LABEL_45;
    }

    goto LABEL_19;
  }

  v68 = v101;
  v100 = ot::Ip6::Header::GetDestination(v101);
  ot::Message::Read<ot::Ip6::Header>(v113, 0, v68);
  IgnoreError();
  if (ot::Ip6::Address::IsMulticast(v100))
  {
    if (!ot::Ip6::Address::IsMulticastLargerThanRealmLocal(v100))
    {
      ot::Message::SetDirectTransmission(v113);
    }

    if (ot::Message::GetSubType(v113) != 5)
    {
      v66 = v100;
      v44 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(v85);
      LinkLocalAllThreadNodesAddress = ot::Mle::Mle::GetLinkLocalAllThreadNodesAddress(v44);
      v46 = ot::Equatable<ot::Ip6::Address>::operator==(v66, LinkLocalAllThreadNodesAddress);
      v67 = 1;
      if (!v46)
      {
        v65 = v100;
        v47 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(v85);
        RealmLocalAllThreadNodesAddress = ot::Mle::Mle::GetRealmLocalAllThreadNodesAddress(v47);
        v67 = ot::Equatable<ot::Ip6::Address>::operator==(v65, RealmLocalAllThreadNodesAddress);
      }

      v99 = v67;
      v49 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(v85);
      v97 = ot::ChildTable::Iterate(v49, 1);
      v98 = &v97;
      v50 = ot::ChildTable::IteratorBuilder::begin(&v97);
      v119 = v51;
      v118 = v50;
      v96 = v51;
      v95 = v50;
      v52 = ot::ChildTable::IteratorBuilder::end(v98);
      v117 = v53;
      v116 = v52;
      v94 = v53;
      v93 = v52;
      while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v95, &v93))
      {
        v92 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v95);
        if (!ot::Neighbor::IsRxOnWhenIdle(v92) && (v99 || ot::Child::HasIp6Address(v92, v100)))
        {
          ot::IndirectSender::AddMessageForSleepyChild((v85 + 296), v113, v92);
        }

        ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v95);
      }
    }

    goto LABEL_45;
  }

  v54 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(v85);
  Neighbor = ot::NeighborTable::FindNeighbor(v54, v100, 1);
  if (!Neighbor || ot::Neighbor::IsRxOnWhenIdle(Neighbor) || (ot::Message::IsDirectTransmission(v113) & 1) != 0 || (v55 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(v85), !ot::ChildTable::Contains(v55, Neighbor)))
  {
LABEL_19:
    ot::Message::SetDirectTransmission(v113);
    goto LABEL_45;
  }

  ot::IndirectSender::AddMessageForSleepyChild((v85 + 296), v113, Neighbor);
LABEL_45:
  if (!ot::MeshForwarder::RemoveMessageIfNoPendingTx(v85, v113))
  {
    ot::Tasklet::Post((v85 + 120));
  }
}

uint64_t ot::Ip6::Udp::Header::GetLength(ot::Ip6::Udp::Header *this)
{
  return ot::BigEndian::HostSwap16(*(this + 2));
}

{
  return ot::Ip6::Udp::Header::GetLength(this);
}

uint64_t ot::MeshForwarder::HandleResolved(uint64_t a1, const void *a2, int a3)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v20 = 0;
  v19 = (a1 + 8);
  v18[0] = ot::PriorityQueue::begin((a1 + 8));
  v18[1] = v3;
  v17[0] = ot::PriorityQueue::end(v19);
  v17[1] = v4;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v18, v17);
    if ((result & 1) == 0)
    {
      break;
    }

    v16 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v18);
    if (ot::Message::IsResolvingAddress(v16))
    {
      ot::Message::Read<ot::Ip6::Address>(v16, 0x18u, v21);
      IgnoreError();
      if (!ot::Unequatable<ot::Ip6::Address>::operator!=(v21, v23))
      {
        if (v22)
        {
          ot::MeshForwarder::LogMessage(a1, 3u, v16, 9);
          ot::MeshForwarder::FinalizeMessageDirectTx(a1, v16, 9, 0);
          ot::MeshForwarder::RemoveMessageIfNoPendingTx(a1, v16);
        }

        else
        {
          v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(a1);
          if (ot::BackboneRouter::Local::IsPrimary(v7) && (v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1), ot::BackboneRouter::Leader::IsDomainUnicast(v8, v21)) && (v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1), v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(a1), v10 = ot::AddressResolver::LookUp(v9, v21), ot::Mle::Mle::HasRloc16(v12, v10)))
          {
            v15 = 0;
            ot::PriorityQueue::Dequeue((a1 + 8), v16);
            ot::Message::Read<unsigned char>(v16, 7u, &v15);
            IgnoreError();
            ++v15;
            ot::Message::Write<unsigned char>(v16, 7u, &v15);
            ot::Message::SetLoopbackToHostAllowed(v16, 1);
            ot::Message::SetOrigin(v16, 1);
            v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(a1);
            ot::OwnedPtr<ot::Message>::OwnedPtr(&v14, v16);
            ot::Ip6::Ip6::HandleDatagram(v11, &v14, 0);
            IgnoreError();
            ot::OwnedPtr<ot::Message>::~OwnedPtr(&v14);
          }

          else
          {
            ot::Message::SetResolvingAddress(v16, 0);
            v20 = 1;
          }
        }
      }
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v18, v6);
  }

  if (v20)
  {
    return ot::Tasklet::Post((a1 + 120));
  }

  return result;
}

uint64_t ot::Message::Read<ot::Ip6::Address>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 0x10u);
}

{
  return ot::Message::Read<ot::Ip6::Address>(a1, a2, a3);
}

uint64_t ot::MeshForwarder::EvictMessage(ot::MeshForwarder *a1, unsigned __int8 a2)
{
  v11 = 23;
  v10 = 0;
  for (i = 0; i < a2; ++i)
  {
    ot::PriorityQueue::GetHeadForPriority(a1 + 8, i);
    for (j = v2; j && ot::Message::GetPriority(j) == i; j = ot::Message::GetNext(j))
    {
      if ((ot::Message::GetDoNotEvict(j) & 1) == 0)
      {
        v10 = j;
        v11 = 0;
        goto LABEL_20;
      }
    }
  }

  for (k = a2; k < 4u; ++k)
  {
    ot::PriorityQueue::GetHeadForPriority(a1 + 8, a2);
    for (m = v3; m && ot::Message::GetPriority(m) == k; m = ot::Message::GetNext(m))
    {
      if (ot::Message::GetDoNotEvict(m) & 1) == 0 && (ot::Message::IsChildPending(m))
      {
        v10 = m;
        v11 = 0;
        goto LABEL_20;
      }
    }
  }

LABEL_20:
  if (!v11 && v10)
  {
    ot::MeshForwarder::EvictMessage(a1, v10);
  }

  return v11;
}

void ot::PriorityQueue::GetHeadForPriority(uint64_t a1, unsigned __int8 a2)
{
  ot::AsConst<ot::PriorityQueue>();
  ot::PriorityQueue::GetHeadForPriority(v2, a2);
  ot::AsNonConst<ot::Message>();
}

{
  ot::PriorityQueue::GetHeadForPriority(a1, a2);
}

uint64_t ot::Message::GetDoNotEvict(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 13) & 1;
}

{
  return ot::Message::GetDoNotEvict(this);
}

BOOL ot::MeshForwarder::RemoveMessagesForChild(ot::MeshForwarder *this, ot::Child *a2, BOOL (*a3)(const ot::Message *))
{
  v21 = this;
  v20 = a2;
  v19 = a3;
  v18 = (this + 8);
  v17[0] = ot::PriorityQueue::begin((this + 8));
  v17[1] = v3;
  v16[0] = ot::PriorityQueue::end(v18);
  v16[1] = v4;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v17, v16);
    if (!result)
    {
      break;
    }

    v15 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v17);
    if ((v19)(v15))
    {
      if (ot::IndirectSender::RemoveMessageFromSleepyChild((this + 296), v15, v20))
      {
        Neighbor = 0;
        if (ot::Message::GetType(v15))
        {
          if (ot::Message::GetType(v15) == 1)
          {
            ot::Lowpan::MeshHeader::ParseFrom(v12, v15);
            IgnoreError();
            v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
            Destination = ot::Lowpan::MeshHeader::GetDestination(v12);
            Neighbor = ot::NeighborTable::FindNeighbor(v9, Destination, 1);
          }
        }

        else
        {
          ot::Message::Read<ot::Ip6::Header>(v15, 0, v13);
          IgnoreError();
          v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
          v7 = ot::Ip6::Header::GetDestination(v13);
          Neighbor = ot::NeighborTable::FindNeighbor(v10, v7, 1);
        }

        if (v20 == Neighbor)
        {
          ot::Message::ClearDirectTransmission(v15);
        }
      }

      ot::MeshForwarder::RemoveMessageIfNoPendingTx(this, v15);
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v17, v6);
  }

  return result;
}

BOOL ot::MeshForwarder::RemoveDataResponseMessages(ot::MeshForwarder *this)
{
  v22 = this;
  v20 = (this + 8);
  v19[0] = ot::PriorityQueue::begin((this + 8));
  v19[1] = v1;
  v18[0] = ot::PriorityQueue::end(v20);
  v18[1] = v2;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v19, v18);
    if (!result)
    {
      break;
    }

    v17 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v19);
    if (ot::Message::GetSubType(v17) == 9)
    {
      ot::Message::Read<ot::Ip6::Header>(v17, 0, v21);
      IgnoreError();
      Destination = ot::Ip6::Header::GetDestination(v21);
      if (!ot::Ip6::Address::IsMulticast(Destination))
      {
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
        v15 = ot::ChildTable::Iterate(v6, 5);
        v16 = &v15;
        v25 = ot::ChildTable::IteratorBuilder::begin(&v15);
        v26 = v7;
        v13 = v25;
        v14 = v7;
        v23 = ot::ChildTable::IteratorBuilder::end(v16);
        v24 = v8;
        v11 = v23;
        v12 = v8;
        while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v13, &v11))
        {
          v10 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v13);
          ot::IndirectSender::RemoveMessageFromSleepyChild((this + 296), v17, v10);
          IgnoreError();
          ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v13);
        }
      }

      ot::MeshForwarder::LogMessage(this, 3u, v17);
      ot::MeshForwarder::FinalizeMessageDirectTx(this, v17, 2, 0);
      ot::MeshForwarder::RemoveMessageIfNoPendingTx(this, v17);
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v19, v4);
  }

  return result;
}

uint64_t ot::MeshForwarder::SendMesh(ot::MeshForwarder *this, ot::Message *a2, ot::Mac::TxFrame *a3)
{
  v20 = this;
  v19 = a2;
  v18 = a3;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(this);
  if (ot::AppMetricsManager::IsAppPacket(v3, v19, v17, 1))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(this);
    ot::AppMetricsManager::CountAppDuplicates(v4, v19, v17, 0, 0);
  }

  ot::Mac::PanIds::PanIds(v16);
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  PanId = ot::Mac::Mac::GetPanId(v5);
  ot::Mac::PanIds::SetBothSourceDestination(v16, PanId);
  ot::MeshForwarder::PrepareMacHeaders(this, v18, 1, this + 64, v16, 5, 8, v19);
  Length = ot::Message::GetLength(v19);
  if (Length > ot::Mac::Frame::GetMaxPayloadLength(v18))
  {
    __assert_rtn("SendMesh", "mesh_forwarder_ftd.cpp", 455, "aMessage.GetLength() <= aFrame.GetMaxPayloadLength()");
  }

  v12 = v19;
  ot::Mac::Frame::GetPayload(v18);
  v11 = v7;
  v8 = ot::Message::GetLength(v19);
  ot::Message::ReadBytes(v12, 0, v11, v8);
  v13 = v18;
  v9 = ot::Message::GetLength(v19);
  ot::Mac::Frame::SetPayloadLength(v13, v9);
  result = ot::Message::GetLength(v19);
  *(this + 25) = result;
  return result;
}

uint64_t ot::MeshForwarder::UpdateMeshRoute(ot::MeshForwarder *this, ot::Message *a2)
{
  v17 = this;
  v16 = a2;
  v15 = 0;
  ot::Lowpan::MeshHeader::ParseFrom(v14, a2);
  IgnoreError();
  v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
  Destination = ot::Lowpan::MeshHeader::GetDestination(v14);
  NextHop = ot::RouterTable::GetNextHop(v11, Destination);
  if (NextHop == 65534)
  {
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    v4 = ot::Lowpan::MeshHeader::GetDestination(v14);
    Neighbor = ot::NeighborTable::FindNeighbor(v9, v4, 1);
  }

  else
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
    Neighbor = ot::NeighborTable::FindNeighbor(v3, NextHop, 1);
  }

  if (Neighbor)
  {
    Rloc16 = ot::Neighbor::GetRloc16(Neighbor);
    ot::Mac::Address::SetShort(this + 74, Rloc16);
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    v7 = ot::Mle::Mle::GetRloc16(v6);
    ot::Mac::Address::SetShort(this + 64, v7);
    *(this + 88) = *(this + 88) & 0xFE | 1;
    *(this + 43) = ot::Lowpan::MeshHeader::GetDestination(v14);
    *(this + 42) = ot::Lowpan::MeshHeader::GetSource(v14);
    if (ot::Mac::Address::GetShort((this + 74)) != *(this + 43))
    {
      *(this + 88) = *(this + 88) & 0xEF | 0x10;
    }
  }

  else
  {
    return 2;
  }

  return v15;
}

uint64_t ot::MeshForwarder::UpdateIp6RouteFtd(ot::MeshForwarder *this, const ot::Ip6::Header *a2, ot::Message *a3)
{
  v47 = this;
  v46 = a2;
  v45 = a3;
  v44 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  v43 = 0;
  *(this + 43) = -2;
  if (ot::Message::GetOffset(v45) <= 0)
  {
    Destination = ot::Ip6::Header::GetDestination(v46);
    if (ot::Mle::Mle::IsRoutingLocator(v44, Destination))
    {
      v4 = ot::Ip6::Header::GetDestination(v46);
      Iid = ot::Ip6::Address::GetIid(v4);
      Locator = ot::Ip6::InterfaceIdentifier::GetLocator(Iid);
      v6 = ot::Mle::RouterIdFromRloc16(Locator);
      if (!ot::Mle::IsRouterIdValid(v6))
      {
        v43 = 2;
        goto LABEL_28;
      }

      *(this + 43) = Locator;
    }

    else
    {
      v7 = ot::Ip6::Header::GetDestination(v46);
      if (ot::Mle::Mle::IsAnycastLocator(v44, v7))
      {
        v8 = ot::Ip6::Header::GetDestination(v46);
        v9 = ot::Ip6::Address::GetIid(v8);
        v40 = ot::Ip6::InterfaceIdentifier::GetLocator(v9);
        v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        v43 = ot::NetworkData::Leader::AnycastLookup(v10, v40, this + 43);
        if (v43)
        {
          goto LABEL_28;
        }

        if (ot::Mle::Mle::IsRouterOrLeader(v44) && ot::Mle::IsChildRloc16(*(this + 43)) && ot::Mle::Mle::HasMatchingRouterIdWith(v44, *(this + 43)))
        {
          v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
          ot::ChildTable::FindChild(v11, *(this + 43), 0);
          v39 = v12;
          if (!v12)
          {
            v43 = 2;
            goto LABEL_28;
          }

          if (!ot::Neighbor::IsRxOnWhenIdle(v12))
          {
            ot::IndirectSender::AddMessageForSleepyChild((this + 296), v45, v39);
            ot::Message::ClearDirectTransmission(v45);
          }
        }
      }

      else
      {
        v37 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
        v13 = ot::Ip6::Header::GetDestination(v46);
        Neighbor = ot::NeighborTable::FindNeighbor(v37, v13, 1);
        if (Neighbor)
        {
          *(this + 43) = ot::Neighbor::GetRloc16(Neighbor);
        }

        else
        {
          v36 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(this);
          v14 = ot::Ip6::Header::GetDestination(v46);
          if (ot::Ip6::Ip6::IsOnLink(v36, v14))
          {
            v35 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
            v15 = ot::Ip6::Header::GetDestination(v46);
            v43 = ot::AddressResolver::Resolve(v35, v15, this + 43);
            if (v43)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v34 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
            Source = ot::Ip6::Header::GetSource(v46);
            v16 = ot::Ip6::Header::GetDestination(v46);
            v43 = ot::NetworkData::Leader::RouteLookup(v34, Source, v16, this + 43);
            if (v43)
            {
              goto LABEL_28;
            }
          }
        }
      }
    }
  }

  else
  {
    *(this + 43) = ot::Message::GetMeshDest(v45);
  }

  if (*(this + 43) == 65534)
  {
    v43 = 2;
  }

  else
  {
    v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    *(this + 42) = ot::Mle::Mle::GetRloc16(v17);
    v43 = ot::MeshForwarder::CheckReachability(this, *(this + 43), v46);
    if (!v43)
    {
      ot::Message::SetMeshDest(v45, *(this + 43));
      v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
      NextHop = ot::RouterTable::GetNextHop(v18, *(this + 43));
      ot::Mac::Address::SetShort(this + 74, NextHop);
      if (ot::Mac::Address::GetShort((this + 74)) != *(this + 43))
      {
        ot::Mac::Address::SetShort(this + 64, *(this + 42));
        *(this + 88) = *(this + 88) & 0xFE | 1;
        *(this + 88) = *(this + 88) & 0xEF | 0x10;
      }
    }
  }

LABEL_28:
  if (v43)
  {
    if (v43 == 4)
    {
      v26 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(this);
      ot::AppMetricsManager::UpdateRouteCostFromTxMsg(v26, v45, 16, &v43, v27, v28, v29, v30);
    }
  }

  else
  {
    v32 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(this);
    v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    PathCost = ot::RouterTable::GetPathCost(v20, *(this + 43));
    ot::AppMetricsManager::UpdateRouteCostFromTxMsg(v32, v45, PathCost, &v43, v22, v23, v24, v25);
  }

  return v43;
}

BOOL ot::Mle::IsRouterIdValid(ot::Mle *this)
{
  return this <= 0x3Eu;
}

{
  return ot::Mle::IsRouterIdValid(this);
}

BOOL ot::Mle::IsChildRloc16(ot::Mle *this)
{
  return ot::Mle::ChildIdFromRloc16(this) != 0;
}

{
  return ot::Mle::IsChildRloc16(this);
}

uint64_t ot::MeshForwarder::CheckReachability(ot::MeshForwarder *this, __int16 a2, const ot::Ip6::Header *a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  if (ot::Mle::Mle::IsChild(v3))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::HasRloc16(v4, a2))
    {
      v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
      Destination = ot::Ip6::Header::GetDestination(a3);
      HasUnicastAddress = ot::Ip6::Netif::HasUnicastAddress(v17, Destination);
    }

    else
    {
      HasUnicastAddress = 1;
    }
  }

  else
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::HasRloc16(v6, a2))
    {
      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
      v7 = ot::Ip6::Header::GetDestination(a3);
      v16 = 1;
      if (!ot::Ip6::Netif::HasUnicastAddress(v15, v7))
      {
        v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
        v8 = ot::Ip6::Header::GetDestination(a3);
        v16 = ot::NeighborTable::FindNeighbor(v14, v8, 1) != 0;
      }

      HasUnicastAddress = v16;
    }

    else
    {
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      if (ot::Mle::Mle::HasMatchingRouterIdWith(v9, a2))
      {
        v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
        ot::ChildTable::FindChild(v10, a2, 1);
        HasUnicastAddress = v11 != 0;
      }

      else
      {
        v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
        HasUnicastAddress = ot::RouterTable::GetNextHop(v12, a2) != 65534;
      }
    }
  }

  if (HasUnicastAddress)
  {
    return 0;
  }

  else
  {
    return 4;
  }
}

void ot::MeshForwarder::SendIcmpErrorIfDstUnreach(ot::MeshForwarder *this, const ot::Message *a2, const ot::Mac::Addresses *a3)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = 0;
  if (ot::Mac::Address::IsShort(a3) && ot::Mac::Address::IsShort((v16 + 10)))
  {
    v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    Short = ot::Mac::Address::GetShort(v16);
    ot::ChildTable::FindChild(v12, Short, 5);
    if ((!v4 || ot::Neighbor::IsFullThreadDevice(v4)) && !ot::Ip6::Headers::ParseFrom(v14, v17))
    {
      DestinationAddress = ot::Ip6::Headers::GetDestinationAddress(v14);
      if (!ot::Ip6::Address::IsMulticast(DestinationAddress))
      {
        v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        v6 = ot::Ip6::Headers::GetDestinationAddress(v14);
        if (ot::NetworkData::Leader::IsOnMesh(v11, v6))
        {
          v10 = ot::Mac::Address::GetShort((v16 + 10));
          ot::Ip6::Headers::GetIp6Header(v14);
          v15 = ot::MeshForwarder::CheckReachability(this, v10, v7);
          if (v15 == 4)
          {
            v9 = ot::Mac::Address::GetShort(v16);
            v8 = ot::Mac::Address::GetShort((v16 + 10));
            ot::MeshForwarder::SendDestinationUnreachable(this, v9, v8, v14);
          }
        }
      }
    }
  }
}

void ot::MeshForwarder::SendDestinationUnreachable(ot::MeshForwarder *this, unsigned __int16 a2, unsigned __int16 a3, const ot::Ip6::Headers *a4)
{
  v18 = this;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  ot::Ip6::MessageInfo::MessageInfo(v14);
  ot::Ip6::MessageInfo::MessageInfo(v13);
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v14);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v4);
  ot::Ip6::Address::SetToRoutingLocator(PeerAddr, MeshLocalPrefix, v17);
  memcpy(v13, v14, sizeof(v13));
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  MeshLocalRloc = ot::Mle::Mle::GetMeshLocalRloc(v6);
  *ot::Ip6::MessageInfo::GetSockAddr(v13) = *MeshLocalRloc;
  SockAddr = ot::Ip6::MessageInfo::GetSockAddr(v13);
  Iid = ot::Ip6::Address::GetIid(SockAddr);
  ot::Ip6::InterfaceIdentifier::SetLocator(Iid, v16);
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Icmp>(this);
  ot::Ip6::Icmp::SendError(v9, 1, 0, v14, v15, v13);
  IgnoreError();
}

uint64_t ot::MeshForwarder::CheckReachability(ot::MeshForwarder *this, ot::MeshForwarder::RxInfo *a2)
{
  v12 = ot::MeshForwarder::RxInfo::ParseIp6Headers(a2);
  if (v12)
  {
    if (v12 == 23)
    {
      return 0;
    }
  }

  else
  {
    DstAddr = ot::MeshForwarder::RxInfo::GetDstAddr(a2);
    Short = ot::Mac::Address::GetShort(DstAddr);
    ot::Ip6::Headers::GetIp6Header((a2 + 64));
    v4 = ot::MeshForwarder::CheckReachability(this, Short, v3);
    v12 = v4;
    if (v4 == 4)
    {
      SrcAddr = ot::MeshForwarder::RxInfo::GetSrcAddr(a2);
      v9 = ot::Mac::Address::GetShort(SrcAddr);
      v6 = ot::MeshForwarder::RxInfo::GetDstAddr(a2);
      v7 = ot::Mac::Address::GetShort(v6);
      ot::MeshForwarder::SendDestinationUnreachable(this, v9, v7, (a2 + 64));
    }
  }

  return v12;
}

uint64_t ot::Ip6::InterfaceIdentifier::SetLocator(ot::Ip6::InterfaceIdentifier *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 3) = result;
  return result;
}

{
  return ot::Ip6::InterfaceIdentifier::SetLocator(this, a2);
}

void ot::MeshForwarder::HandleMesh(ot::MeshForwarder *this, ot::MeshForwarder::RxInfo *a2)
{
  v52 = this;
  v51 = a2;
  v50 = 0;
  ot::Mac::Address::Address(&v47);
  if (ot::MeshForwarder::RxInfo::IsLinkSecurityEnabled(v51))
  {
    v50 = ot::Lowpan::MeshHeader::ParseFrom(v49, v51);
    if (!v50)
    {
      SrcAddr = ot::MeshForwarder::RxInfo::GetSrcAddr(v51);
      v47 = *SrcAddr;
      v48 = *(SrcAddr + 8);
      v39 = (v51 + 40);
      Source = ot::Lowpan::MeshHeader::GetSource(v49);
      ot::Mac::Address::SetShort(v39, Source);
      v40 = (v51 + 50);
      Destination = ot::Lowpan::MeshHeader::GetDestination(v49);
      ot::Mac::Address::SetShort(v40, Destination);
      ot::MeshForwarder::UpdateRoutes(this, v51);
      v41 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
      DstAddr = ot::MeshForwarder::RxInfo::GetDstAddr(v51);
      Short = ot::Mac::Address::GetShort(DstAddr);
      if (ot::Mle::Mle::HasRloc16(v41, Short) || (v38 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this), v7 = ot::MeshForwarder::RxInfo::GetDstAddr(v51), v8 = ot::Mac::Address::GetShort(v7), ot::ChildTable::HasMinimalChild(v38, v8)))
      {
        if (ot::Lowpan::MeshHeader::GetHopsLeft(v49) > 19 || (19 - ot::Lowpan::MeshHeader::GetHopsLeft(v49)) >= 17)
        {
          HopsLeft = ot::Lowpan::MeshHeader::GetHopsLeft(v49);
          ot::Logger::LogAtLevel<(ot::LogLevel)2>("MeshForwarder", "HandleMesh:: numHops not set as it is out of bounds hopsLft:%d maxbound:%d", v12, v13, v14, v15, v16, v17, HopsLeft);
        }

        else
        {
          v37 = (v51 + 16);
          v9 = ot::Lowpan::MeshHeader::GetHopsLeft(v49);
          ot::ThreadLinkInfo::SetHopsLft(v37, 19 - v9);
        }

        if (ot::Lowpan::FragmentHeader::IsFragmentHeader(v51, v10))
        {
          ot::MeshForwarder::HandleFragment(this, v51);
        }

        else if (ot::Lowpan::Lowpan::IsLowpanHc(v51, v18))
        {
          ot::MeshForwarder::HandleLowpanHc(this, v51);
        }

        else
        {
          v50 = 6;
        }
      }

      else if (ot::Lowpan::MeshHeader::GetHopsLeft(v49) > 0)
      {
        ot::OwnedPtr<ot::Message>::OwnedPtr(&v46);
        v45 = 1;
        v36 = ot::Mac::Address::GetShort(&v47);
        v19 = ot::MeshForwarder::RxInfo::GetDstAddr(v51);
        v20 = ot::Mac::Address::GetShort(v19);
        ot::MeshForwarder::ResolveRoutingLoops(this, v36, v20);
        v50 = ot::MeshForwarder::CheckReachability(this, v51);
        if (!v50)
        {
          ot::Lowpan::MeshHeader::DecrementHopsLeft(v49);
          ot::MeshForwarder::GetForwardFramePriority(this, v51, &v45);
          v35 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(this);
          ot::Message::Settings::Settings(v44, v45);
          v21 = ot::MessagePool::Allocate(v35, 1, 0, v44);
          ot::OwnedPtr<ot::Message>::Reset(&v46, v21);
          if (ot::Ptr<ot::Message>::operator!=(&v46, 0))
          {
            v22 = ot::Ptr<ot::Message>::operator*(&v46);
            v50 = ot::Lowpan::MeshHeader::AppendTo(v49, v22);
            if (!v50)
            {
              v23 = ot::Ptr<ot::Message>::operator->(&v46);
              v50 = ot::Message::AppendData<(ot::DataLengthType)1>(v23, v51);
              if (!v50)
              {
                v24 = ot::Ptr<ot::Message>::operator->(&v46);
                ot::Message::UpdateLinkInfoFrom(v24, (v51 + 16));
                v25 = ot::Ptr<ot::Message>::operator*(&v46);
                ot::MeshForwarder::LogMessage(this, 0, v25, 0, &v47);
                ot::OwnedPtr<ot::Message>::PassOwnership();
                ot::OwnedPtr<ot::Message>::OwnedPtr(&v43, v26);
                ot::MeshForwarder::SendMessage(this, &v43);
                ot::OwnedPtr<ot::Message>::~OwnedPtr(&v43);
              }
            }
          }

          else
          {
            v50 = 3;
          }
        }

        ot::OwnedPtr<ot::Message>::~OwnedPtr(&v46);
      }
    }
  }

  else
  {
    v50 = 8;
  }

  if (v50)
  {
    v34 = ot::ErrorToString(v50);
    ot::Data<(ot::DataLengthType)1>::GetLength(v51);
    ot::Mac::Address::ToString(&v47, v53);
    ot::String<(unsigned short)17>::AsCString(v53);
    IsLinkSecurityEnabled = ot::MeshForwarder::RxInfo::IsLinkSecurityEnabled(v51);
    ot::ToYesNo(IsLinkSecurityEnabled);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("MeshForwarder", "Dropping rx mesh frame, error:%s, len:%d, src:%s, sec:%s", v28, v29, v30, v31, v32, v33, v34);
  }
}

void ot::MeshForwarder::UpdateRoutes(ot::MeshForwarder *this, ot::MeshForwarder::RxInfo *a2)
{
  DstAddr = ot::MeshForwarder::RxInfo::GetDstAddr(a2);
  if (!ot::Mac::Address::IsBroadcast(DstAddr))
  {
    SrcAddr = ot::MeshForwarder::RxInfo::GetSrcAddr(a2);
    if (ot::Mac::Address::IsShort(SrcAddr) && !ot::MeshForwarder::RxInfo::ParseIp6Headers(a2))
    {
      SourceAddress = ot::Ip6::Headers::GetSourceAddress((a2 + 64));
      Iid = ot::Ip6::Address::GetIid(SourceAddress);
      if (!ot::Ip6::InterfaceIdentifier::IsLocator(Iid))
      {
        v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
        v6 = ot::Ip6::Headers::GetSourceAddress((a2 + 64));
        if (ot::NetworkData::Leader::IsOnMesh(v19, v6))
        {
          v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
          v16 = ot::Ip6::Headers::GetSourceAddress((a2 + 64));
          v7 = ot::MeshForwarder::RxInfo::GetSrcAddr(a2);
          Short = ot::Mac::Address::GetShort(v7);
          v8 = ot::MeshForwarder::RxInfo::GetDstAddr(a2);
          v9 = ot::Mac::Address::GetShort(v8);
          ot::AddressResolver::UpdateSnoopedCacheEntry(v18, v16, Short, v9);
        }
      }

      v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
      v10 = ot::Ip6::Headers::GetSourceAddress((a2 + 64));
      Neighbor = ot::NeighborTable::FindNeighbor(v15, v10, 1);
      if (Neighbor && !ot::Neighbor::IsFullThreadDevice(Neighbor))
      {
        v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        v11 = ot::MeshForwarder::RxInfo::GetSrcAddr(a2);
        v12 = ot::Mac::Address::GetShort(v11);
        if (!ot::Mle::Mle::HasMatchingRouterIdWith(v14, v12))
        {
          v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          ot::Mle::MleRouter::RemoveNeighbor(v13, Neighbor);
        }
      }
    }
  }
}

uint64_t ot::Lowpan::MeshHeader::GetHopsLeft(ot::Lowpan::MeshHeader *this)
{
  return *(this + 4);
}

{
  return ot::Lowpan::MeshHeader::GetHopsLeft(this);
}

uint64_t ot::ThreadLinkInfo::SetHopsLft(uint64_t this, char a2)
{
  *(this + 17) = a2;
  return this;
}

{
  return ot::ThreadLinkInfo::SetHopsLft(this, a2);
}

void ot::MeshForwarder::ResolveRoutingLoops(ot::MeshForwarder *this, unsigned __int16 a2, unsigned __int16 a3)
{
  v8 = a2;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
  if (v8 == ot::RouterTable::GetNextHop(v3, a3))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(this);
    ot::RouterTable::FindRouterByRloc16(v4, a3);
    if (v5)
    {
      ot::Router::SetNextHopToInvalid(v5);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      ot::Mle::MleRouter::ResetAdvertiseInterval(v6);
    }
  }
}

double ot::MeshForwarder::GetForwardFramePriority(ot::InstanceLocator *a1, ot::MeshForwarder::RxInfo *a2, char *a3)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  FramePriority = 0;
  v19 = 0;
  v17 = *a2;
  if (ot::Lowpan::FragmentHeader::ParseFrom(v18, a2) || (v19 = 1, ot::Lowpan::FragmentHeader::GetDatagramOffset(v18) <= 0))
  {
    FramePriority = ot::MeshForwarder::GetFramePriority(a1, v22, v21);
  }

  else
  {
    SrcAddr = ot::MeshForwarder::RxInfo::GetSrcAddr(v22);
    Short = ot::Mac::Address::GetShort(SrcAddr);
    FramePriority = ot::MeshForwarder::GetFragmentPriority(a1, v18, Short, v21);
  }

  if (FramePriority)
  {
    v15 = ot::ErrorToString(FramePriority);
    ot::MeshForwarder::RxInfo::ToString(v22, v24);
    ot::String<(unsigned short)70>::AsCString(v24);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>("MeshForwarder", "Failed to get forwarded frame priority, error:%s, %s", v5, v6, v7, v8, v9, v10, v15);
  }

  else if (v19)
  {
    Length = ot::Data<(ot::DataLengthType)1>::GetLength(v22);
    v11 = ot::MeshForwarder::RxInfo::GetSrcAddr(v22);
    v12 = ot::Mac::Address::GetShort(v11);
    ot::MeshForwarder::UpdateFragmentPriority(a1, v18, Length, v12, *v21);
  }

  result = *&v17;
  *v22 = v17;
  return result;
}

void ot::RouterTable::FindRouterByRloc16(ot::RouterTable *this, unsigned __int16 a2)
{
  ot::AsConst<ot::RouterTable>();
  ot::RouterTable::FindRouterByRloc16(v2, a2);
  ot::AsNonConst<ot::Router>();
}

{
  ot::RouterTable::FindRouterByRloc16(this, a2);
}

uint64_t ot::MeshForwarder::FragmentPriorityList::UpdateOnTimeTick(ot::MeshForwarder::FragmentPriorityList *this)
{
  v4 = 0;
  v3 = this;
  v2 = (this + 48);
  while (v3 != v2)
  {
    if (!ot::MeshForwarder::FragmentPriorityList::Entry::IsExpired(v3))
    {
      ot::MeshForwarder::FragmentPriorityList::Entry::DecrementLifetime(v3);
      if (!ot::MeshForwarder::FragmentPriorityList::Entry::IsExpired(v3))
      {
        v4 = 1;
      }
    }

    v3 = (v3 + 6);
  }

  return v4 & 1;
}

BOOL ot::MeshForwarder::FragmentPriorityList::Entry::IsExpired(ot::MeshForwarder::FragmentPriorityList::Entry *this)
{
  return *(this + 4) == 0;
}

{
  return ot::MeshForwarder::FragmentPriorityList::Entry::IsExpired(this);
}

uint64_t ot::MeshForwarder::FragmentPriorityList::Entry::DecrementLifetime(uint64_t this)
{
  --*(this + 4);
  return this;
}

{
  return ot::MeshForwarder::FragmentPriorityList::Entry::DecrementLifetime(this);
}

uint64_t ot::MeshForwarder::UpdateFragmentPriority(uint64_t a1, ot::Lowpan::FragmentHeader *a2, unsigned __int16 a3, __int16 a4, char a5)
{
  DatagramTag = ot::Lowpan::FragmentHeader::GetDatagramTag(a2);
  Entry = ot::MeshForwarder::FragmentPriorityList::FindEntry((a1 + 248), a4, DatagramTag);
  if (Entry)
  {
    v9 = ot::Lowpan::FragmentHeader::GetDatagramOffset(a2) + a3;
    if (v9 < ot::Lowpan::FragmentHeader::GetDatagramSize(a2))
    {
      return ot::MeshForwarder::FragmentPriorityList::Entry::ResetLifetime(Entry);
    }

    else
    {
      return ot::Clearable<ot::MeshForwarder::FragmentPriorityList::Entry>::Clear(Entry);
    }
  }

  else
  {
    result = ot::Lowpan::FragmentHeader::GetDatagramOffset(a2);
    if (!result)
    {
      v7 = ot::Lowpan::FragmentHeader::GetDatagramTag(a2);
      ot::MeshForwarder::FragmentPriorityList::AllocateEntry(a1 + 248, a4, v7, a5);
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(a1);
      return ot::TimeTicker::RegisterReceiver(v8, 0);
    }
  }

  return result;
}

ot::MeshForwarder::FragmentPriorityList::Entry *ot::MeshForwarder::FragmentPriorityList::FindEntry(ot::MeshForwarder::FragmentPriorityList *this, unsigned __int16 a2, unsigned __int16 a3)
{
  v6 = 0;
  v5 = this;
  v4 = (this + 48);
  while (v5 != v4)
  {
    if (!ot::MeshForwarder::FragmentPriorityList::Entry::IsExpired(v5) && ot::MeshForwarder::FragmentPriorityList::Entry::Matches(v5, a2, a3))
    {
      return v5;
    }

    v5 = (v5 + 6);
  }

  return v6;
}

uint64_t ot::MeshForwarder::FragmentPriorityList::AllocateEntry(uint64_t a1, __int16 a2, __int16 a3, char a4)
{
  v7 = 0;
  v6 = a1;
  v5 = a1 + 48;
  while (v6 != v5)
  {
    if (ot::MeshForwarder::FragmentPriorityList::Entry::IsExpired(v6))
    {
      ot::Clearable<ot::MeshForwarder::FragmentPriorityList::Entry>::Clear(v6);
      *v6 = a2;
      *(v6 + 2) = a3;
      *(v6 + 5) = *(v6 + 5) & 0xFC | a4 & 3;
      ot::MeshForwarder::FragmentPriorityList::Entry::ResetLifetime(v6);
      return v6;
    }

    v6 += 6;
  }

  return v7;
}

uint64_t ot::Clearable<ot::MeshForwarder::FragmentPriorityList::Entry>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::MeshForwarder::FragmentPriorityList::Entry>(a1);
}

{
  return ot::Clearable<ot::MeshForwarder::FragmentPriorityList::Entry>::Clear(a1);
}

uint64_t ot::MeshForwarder::FragmentPriorityList::Entry::ResetLifetime(uint64_t this)
{
  *(this + 4) = 3;
  return this;
}

{
  return ot::MeshForwarder::FragmentPriorityList::Entry::ResetLifetime(this);
}

BOOL ot::MeshForwarder::FragmentPriorityList::Entry::Matches(ot::MeshForwarder::FragmentPriorityList::Entry *this, unsigned __int16 a2, unsigned __int16 a3)
{
  v4 = 0;
  if (*this == a2)
  {
    return *(this + 1) == a3;
  }

  return v4;
}

{
  return ot::MeshForwarder::FragmentPriorityList::Entry::Matches(this, a2, a3);
}

uint64_t ot::MeshForwarder::GetFragmentPriority(uint64_t a1, ot::Lowpan::FragmentHeader *a2, unsigned __int16 a3, _BYTE *a4)
{
  v9 = 0;
  DatagramTag = ot::Lowpan::FragmentHeader::GetDatagramTag(a2);
  Entry = ot::MeshForwarder::FragmentPriorityList::FindEntry((a1 + 248), a3, DatagramTag);
  if (Entry)
  {
    *a4 = ot::MeshForwarder::FragmentPriorityList::Entry::GetPriority(Entry);
  }

  else
  {
    return 23;
  }

  return v9;
}

uint64_t ot::MeshForwarder::FragmentPriorityList::Entry::GetPriority(ot::MeshForwarder::FragmentPriorityList::Entry *this)
{
  return *(this + 5) & 3;
}

{
  return ot::MeshForwarder::FragmentPriorityList::Entry::GetPriority(this);
}

uint64_t ot::MeshForwarder::LogMeshFragmentHeader(uint64_t a1, unsigned __int8 a2, ot::Message *a3, ot::Mac::Address *a4, int a5, unsigned __int16 *a6, ot::Mac::Address *a7, char a8, const char *a9)
{
  v69 = a1;
  v68 = a2;
  v67 = a3;
  v66 = a4;
  v65 = a5;
  v64 = a6;
  v63 = a7;
  v62 = a8;
  v61 = a9;
  v52 = a1;
  v60 = 1;
  v59 = 0;
  v58 = 0;
  v55 = 0;
  v54 = 0;
  v53 = "";
  if (!ot::Lowpan::MeshHeader::ParseFrom(v57, a3, &v55))
  {
    v49 = v63;
    v50 = v57;
    Source = ot::Lowpan::MeshHeader::GetSource(v57);
    ot::Mac::Address::SetShort(v49, Source);
    v51 = (v63 + 10);
    Destination = ot::Lowpan::MeshHeader::GetDestination(v57);
    ot::Mac::Address::SetShort(v51, Destination);
    *v64 = v55;
    if (!ot::Lowpan::FragmentHeader::ParseFrom(v56, v67, *v64, &v55))
    {
      v59 = 1;
      *v64 += v55;
    }

    v48 = 1;
    if (v68)
    {
      v48 = v68 == 4;
    }

    v58 = v48;
    __str = v61;
    v46 = ot::MeshForwarder::MessageActionToString(v52, v68, v65);
    Length = ot::Message::GetLength(v67);
    if (v66)
    {
      v11 = ", from:";
      if (v68)
      {
        v11 = ", to:";
      }

      v44 = v11;
    }

    else
    {
      v44 = "";
    }

    v43 = v44;
    if (v66)
    {
      v41 = v73;
      ot::Mac::Address::ToString(v66, v73);
      v42 = ot::String<(unsigned short)17>::AsCString(v73);
    }

    else
    {
      v42 = "";
    }

    v32 = v42;
    v33 = v72;
    ot::Mac::Address::ToString(v63, v72);
    v34 = ot::String<(unsigned short)17>::AsCString(v72);
    v35 = v71;
    ot::Mac::Address::ToString((v63 + 10), v71);
    v36 = ot::String<(unsigned short)17>::AsCString(v71);
    HopsLeft = ot::Lowpan::MeshHeader::GetHopsLeft(v57);
    v37 = HopsLeft + (v68 == 0);
    v38 = ot::ToYesNo((v59 & 1));
    IsLinkSecurityEnabled = ot::Message::IsLinkSecurityEnabled(v67);
    v39 = ot::ToYesNo(IsLinkSecurityEnabled);
    v14 = "";
    if (v65)
    {
      v14 = ", error:";
    }

    v40 = v14;
    if (v65)
    {
      v31 = ot::ErrorToString(v65);
    }

    else
    {
      v31 = "";
    }

    v29 = v31;
    v15 = ", rss:";
    if (!v58)
    {
      v15 = "";
    }

    v30 = v15;
    if (v58)
    {
      RssAverager = ot::Message::GetRssAverager(v67);
      v27 = v70;
      ot::RssAverager::ToString(RssAverager, v70);
      v28 = ot::String<(unsigned short)10>::AsCString(v70);
    }

    else
    {
      v28 = "";
    }

    if (v54)
    {
      v17 = ", radio:";
    }

    else
    {
      v17 = "";
    }

    v26 = v20;
    snprintf(__str, 0x800uLL, "%s mesh frame, len:%d%s%s, msrc:%s, mdst:%s, hops:%d, frag:%s, sec:%s%s%s%s%s%s%s", v46, Length, v43, v32, v34, v36, v37, v38, v39, v40, v29, v30, v28, v17, v53);
    if ((v59 & 1) == 0)
    {
      return 0;
    }

    v20[16] = v61;
    v25 = &v61[strlen(v61)];
    __size = 2048 - strlen(v61);
    v21 = v56;
    DatagramTag = ot::Lowpan::FragmentHeader::GetDatagramTag(v56);
    DatagramOffset = ot::Lowpan::FragmentHeader::GetDatagramOffset(v21);
    DatagramSize = ot::Lowpan::FragmentHeader::GetDatagramSize(v21);
    snprintf(v25, __size, " Frag tag:%04x, offset:%d, size:%d", DatagramTag, DatagramOffset, DatagramSize);
    if (!ot::Lowpan::FragmentHeader::GetDatagramOffset(v56))
    {
      return 0;
    }
  }

  return v60;
}

uint64_t ot::MeshForwarder::LogMeshIpHeader(ot::MeshForwarder *a1, char a2, const ot::Message *a3, unsigned __int16 a4, const ot::Mac::Addresses *a5, unsigned __int8 a6, char *a7)
{
  v36 = &v43;
  v47 = a1;
  v46 = a2;
  v45 = a3;
  v44 = a4;
  v43 = a5;
  v42 = a6;
  __s = a7;
  v37 = a1;
  memset(__b, 0, sizeof(__b));
  IsAppPacket = 0;
  bzero(v48, 0x400uLL);
  v38 = 0;
  result = ot::Ip6::Headers::DecompressFrom(v40, v45, v44, v43);
  if (!result)
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v37);
    IsAppPacket = ot::AppMetricsManager::IsAppPacket(v8, v36[2], v40, 0);
    if (IsAppPacket)
    {
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v37);
      ot::AppMetricsManager::GetAppHeaderString(v9, v40, __b);
      if (!v46 || v46 == 4)
      {
        v35 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(v37);
        v34 = v36[2];
        HopsLft = ot::Message::GetHopsLft(v36[2]);
        ot::AppMetricsManager::CountAppDuplicates(v35, v34, v40, 1, HopsLft);
      }
    }

    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(v37);
    if (ot::MessagePool::GetIsBufferStatsEnabled(v11))
    {
      ot::Message::GetBufferIDs(v36[2], v48);
    }

    v38 = strlen(__s);
    __str = &__s[v38];
    __size = 2048 - v38;
    v30 = v40;
    IpProto = ot::Ip6::Headers::GetIpProto(v40);
    v29 = ot::Ip6::Ip6::IpProtoToString(IpProto, v13, v14, v15, v16, v17);
    Checksum = ot::Ip6::Headers::GetChecksum(v40);
    Ecn = ot::Ip6::Headers::GetEcn(v40);
    v32 = ot::Ip6::Ip6::EcnToString(Ecn);
    v33 = ot::MeshForwarder::MessagePriorityToString(v37, v36[2]);
    if (IsAppPacket)
    {
      v26 = __b;
    }

    else
    {
      v26 = "";
    }

    v22[9] = v26;
    v23 = v36[2];
    v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(v37);
    TotalBufferCount = ot::MessagePool::GetTotalBufferCount(v19);
    v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(v37);
    FreeBufferCount = ot::MessagePool::GetFreeBufferCount(v20);
    v25 = v22;
    snprintf(__str, __size, " IPv6 %s msg, chksum:%04x, ecn:%s, prio:%s%s, buffer=%p%s, tot_buf=%d, free_buf=%d,", v29, Checksum, v32, v33, v26, v23, v48, TotalBufferCount, FreeBufferCount);
    return ot::MeshForwarder::LogIp6SourceDestAddresses(v37, v40, v42, __s);
  }

  return result;
}

void ot::MeshForwarder::LogMeshMessage(ot::MeshForwarder *a1, unsigned __int8 a2, ot::Message *a3, ot::Mac::Address *a4, int a5, unsigned __int8 a6)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  v15 = a5;
  v14 = a6;
  v13 = 0;
  ot::Mac::Addresses::Addresses(v12);
  bzero(v20, 0x800uLL);
  if (!ot::MeshForwarder::LogMeshFragmentHeader(a1, v18, v17, v16, v15, &v13, v12, v14, v20))
  {
    ot::MeshForwarder::LogMeshIpHeader(a1, v18, v17, v13, v12, v14, v20);
    ot::Logger::LogInModule("MeshForwarder", v14, "ITMD: %s", v6, v7, v8, v9, v10, v20);
  }
}

void ot::AsNonConst<ot::Router>()
{
  ;
}

{
  ot::AsNonConst<ot::Router>();
}

void ot::AsConst<ot::RouterTable>()
{
  ;
}

{
  ot::AsConst<ot::RouterTable>();
}

uint64_t ot::ClearAllBytes<ot::MeshForwarder::FragmentPriorityList::Entry>(uint64_t result)
{
  *result = 0;
  *(result + 4) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::MeshForwarder::FragmentPriorityList::Entry>(result);
}

void ot::Mle::Mle::HandleCslPeripheralAttachRetryTimer(ot::Mle::Mle *this)
{
  v8 = ot::Mle::Mle::AttachCslPeripheral(this, (this + 858), *(this + 217), *(this + 872), 1, 0, 1u);
  v1 = otThreadErrorToString(v8);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Mle::HandleCslPeripheralAttachRetryTimer Retry Status = %s", v2, v3, v4, v5, v6, v7, v1);
}

uint64_t ot::Mle::Mle::HandleUdpReceive(ot::Mle::Mle *this, ot::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v69 = this;
  v68 = a2;
  v67 = a3;
  v66 = 0;
  ot::Mle::Mle::RxInfo::RxInfo(v62, a2, a3);
  v61 = 0;
  KeyId = 0;
  *&v58[4] = 0;
  *v58 = ot::Message::GetLength(v68);
  v57 = -1;
  v55 = 0;
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Receive MLE message", v3, v4, v5, v6, v7, v8, v41);
  if (ot::Message::GetOrigin(v68))
  {
    goto LABEL_68;
  }

  if (ot::Ip6::MessageInfo::GetHopLimit(v67) != 255)
  {
    v66 = 6;
    goto LABEL_68;
  }

  v53 = v68;
  Offset = ot::Message::GetOffset(v68);
  v66 = ot::Message::Read<unsigned char>(v53, Offset, &v61);
  if (!v66)
  {
    ot::Message::MoveOffset(v68, 1);
    if (v61 == 255)
    {
      v52 = v68;
      v10 = ot::Message::GetOffset(v68);
      v66 = ot::Message::Read<unsigned char>(v52, v10, &v57);
      if (!v66)
      {
        ot::Message::MoveOffset(v68, 1);
        if (v57 == 16)
        {
          v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          ot::Mle::MleRouter::HandleDiscoveryRequest(v11, v62);
        }

        else if (v57 == 17)
        {
          v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::DiscoverScanner>(this);
          ot::Mle::DiscoverScanner::HandleDiscoveryResponse(v12, v62);
        }
      }
    }

    else
    {
      if (ot::Mle::Mle::IsDisabled(this))
      {
        v66 = 13;
        goto LABEL_68;
      }

      if (v61)
      {
        v66 = 6;
        goto LABEL_68;
      }

      v51 = v68;
      v13 = ot::Message::GetOffset(v68);
      v66 = ot::Message::Read<ot::Mle::Mle::SecurityHeader>(v51, v13, v60);
      if (!v66)
      {
        ot::Message::MoveOffset(v68, 10);
        if (!ot::Mle::Mle::SecurityHeader::IsSecurityControlValid(v60))
        {
          v66 = 6;
          goto LABEL_68;
        }

        KeyId = ot::Mle::Mle::SecurityHeader::GetKeyId(v60);
        *&v58[2] = ot::Mle::Mle::SecurityHeader::GetFrameCounter(v60);
        v49 = v68;
        v50 = v67;
        v14 = ot::Message::GetOffset(v68);
        v66 = ot::Mle::Mle::ProcessMessageSecurity(this, 1, v49, v50, v14, v60);
        if (!v66)
        {
          v48 = v68;
          v15 = ot::Message::GetOffset(v68);
          ot::Message::Read<unsigned char>(v48, v15, &v57);
          IgnoreError();
          ot::Message::MoveOffset(v68, 1);
          PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v67);
          Iid = ot::Ip6::Address::GetIid(PeerAddr);
          ot::Ip6::InterfaceIdentifier::ConvertToExtAddress(Iid, v70);
          if (v57 == 12)
          {
            Parent = ot::NeighborTable::FindParent((this + 344), v70, 1);
          }

          else
          {
            Parent = ot::NeighborTable::FindNeighbor((this + 344), v70, 1);
          }

          RxOnlyNeighborRouter = Parent;
          if (!Parent)
          {
            RxOnlyNeighborRouter = ot::NeighborTable::FindRxOnlyNeighborRouter((this + 344), v70);
            v55 = 1;
          }

          if (RxOnlyNeighborRouter && ot::Neighbor::IsStateValid(RxOnlyNeighborRouter))
          {
            v46 = KeyId;
            if (v46 == ot::Neighbor::GetKeySequence(RxOnlyNeighborRouter))
            {
              v45 = *&v58[2];
              if (v45 < ot::Neighbor::GetMleFrameCounter(RxOnlyNeighborRouter))
              {
                v44 = v58[2];
                ot::Neighbor::GetMleFrameCounter(RxOnlyNeighborRouter);
                ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Frame counter (%d) smaller than expected (%d) mle-command(%u)", v18, v19, v20, v21, v22, v23, v44);
                v66 = 29;
                goto LABEL_68;
              }
            }

            else
            {
              v43 = KeyId;
              if (v43 <= ot::Neighbor::GetKeySequence(RxOnlyNeighborRouter))
              {
                v42 = KeyId;
                ot::Neighbor::GetKeySequence(RxOnlyNeighborRouter);
                ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Key sequence (%d) smaller than expected (%d) mle-command(%u)", v24, v25, v26, v27, v28, v29, v42);
                v66 = 29;
                goto LABEL_68;
              }

              ot::Neighbor::SetKeySequence(RxOnlyNeighborRouter, KeyId);
              LinkFrameCounters = ot::Neighbor::GetLinkFrameCounters(RxOnlyNeighborRouter);
              ot::Mac::LinkFrameCounters::Reset(LinkFrameCounters);
              ot::Neighbor::SetLinkAckFrameCounter(RxOnlyNeighborRouter, 0);
            }

            ot::Neighbor::SetMleFrameCounter(RxOnlyNeighborRouter, *&v58[2] + 1);
          }

          if ((v55 & 1) != 0 && v57 > 2u && v57 != 4)
          {
            RxOnlyNeighborRouter = 0;
          }

          v64 = KeyId;
          v63 = *&v58[2];
          v65 = RxOnlyNeighborRouter;
          switch(v57)
          {
            case 0u:
              if (ot::Mle::Mle::IsRxOnWhenIdle(this))
              {
                v33 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
                ot::Mle::MleRouter::HandleLinkRequest(v33, v62);
              }

              goto LABEL_67;
            case 1u:
              v34 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
              ot::Mle::MleRouter::HandleLinkAccept(v34, v62);
              goto LABEL_67;
            case 2u:
              v35 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
              ot::Mle::MleRouter::HandleLinkAcceptAndRequest(v35, v62);
              goto LABEL_67;
            case 4u:
              ot::Mle::Mle::HandleAdvertisement(this, v62);
              goto LABEL_67;
            case 7u:
              v36 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
              ot::Mle::MleRouter::HandleDataRequest(v36, v62);
              goto LABEL_67;
            case 8u:
              ot::Mle::Mle::HandleDataResponse(this, v62);
              goto LABEL_67;
            case 9u:
              if (ot::Mle::Mle::IsRxOnWhenIdle(this) || *(this + 128))
              {
                v37 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
                ot::Mle::MleRouter::HandleParentRequest(v37, v62);
              }

              goto LABEL_67;
            case 0xAu:
              ot::Mle::Mle::HandleParentResponse(this, v62);
              goto LABEL_67;
            case 0xBu:
              v38 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
              ot::Mle::MleRouter::HandleChildIdRequest(v38, v62);
              goto LABEL_67;
            case 0xCu:
              ot::Mle::Mle::HandleChildIdResponse(this, v62);
              goto LABEL_67;
            case 0xDu:
              if (ot::Mle::Mle::IsRouterOrLeader(this))
              {
                v31 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
                ot::Mle::MleRouter::HandleChildUpdateRequest(v31, v62);
              }

              else
              {
                ot::Mle::Mle::HandleChildUpdateRequest(this, v62);
              }

              goto LABEL_67;
            case 0xEu:
              if (ot::Mle::Mle::IsRouterOrLeader(this))
              {
                v32 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
                ot::Mle::MleRouter::HandleChildUpdateResponse(v32, v62);
              }

              else
              {
                ot::Mle::Mle::HandleChildUpdateResponse(this, v62);
              }

              goto LABEL_67;
            case 0xFu:
              ot::Mle::Mle::HandleAnnounce(this, v62);
              goto LABEL_67;
            case 0x12u:
              ot::Mle::Mle::HandleLinkMetricsManagementRequest(this, v62);
              goto LABEL_67;
            case 0x13u:
              ot::Mle::Mle::HandleLinkMetricsManagementResponse(this, v62);
              goto LABEL_67;
            case 0x14u:
              ot::Mle::Mle::HandleLinkProbe(this, v62);
LABEL_67:
              ot::Mle::Mle::ProcessKeySequence(this, v62);
              break;
            default:
              v66 = 2;
              break;
          }
        }
      }
    }
  }

LABEL_68:
  SockAddr = ot::Ip6::MessageInfo::GetSockAddr(v67);
  result = ot::Ip6::Address::IsMulticast(SockAddr);
  if (result)
  {
    return ot::Message::IsDstPanIdBroadcast(v68);
  }

  return result;
}

void ot::Mle::Mle::HandleCslPeripheralAttachTimer(ot::Mle::Mle *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = this;
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Mle::HandleCslPeripheralAttachTimer", a3, a4, a5, a6, a7, a8, v54);
  v60 = *(this + 128);
  if (v60 == 1)
  {
    *(this + 128) = 2;
    v8 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, %s", v9, v10, v11, v12, v13, v14, v8);
    TxEndTime = ot::WakeupTxScheduler::GetTxEndTime((this + 72));
    ConnectionWindowUs = ot::WakeupTxScheduler::GetConnectionWindowUs((this + 72));
    v62 = ot::Time::operator+(&TxEndTime, ConnectionWindowUs);
    ot::TimerMicro::FireAt((this + 832), v62);
    v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    ot::MeshForwarder::SetRxOnWhenIdle(v16, 1, v17, v18, v19, v20, v21, v22);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Connection window open", v23, v24, v25, v26, v27, v28, v55);
  }

  else if (v60 == 2)
  {
    *(this + 128) = 0;
    v58 = ot::Mle::Mle::WorAttachStateToString(this, *(this + 128));
    ot::Mle::Mle::IsRxOnWhenIdle(this);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "mCslPeripheralAttachState = %s, IsRxOnWhenIdle= %d, %s", v29, v30, v31, v32, v33, v34, v58);
    if (!ot::Mle::Mle::IsRxOnWhenIdle(this))
    {
      v41 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
      ot::MeshForwarder::SetRxOnWhenIdle(v41, 0, v42, v43, v44, v45, v46, v47);
    }

    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Connection window closed", v35, v36, v37, v38, v39, v40, v56);
    ot::Mle::Mle::SetThreadCoexConfig(this, 0, *(this + 130), *(this + 132));
    if (!ot::Mle::Mle::isThreadRegulatoryCertEnabled(this))
    {
      ot::TimerMicro::Start((this + 8), 0x3E8u);
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "Starting Attach Retry timer", v48, v49, v50, v51, v52, v53, v57);
    }
  }
}

void ot::Mle::Mle::HandleAttachTimer(ot::Mle::Mle *this)
{
  v28 = this;
  v27 = 0;
  v26 = 1;
  v25 = 0;
  if ((ot::Mle::Mle::HasAcceptableParentCandidate(this) & 1) != 0 && !ot::Mle::Mle::SendChildIdRequest(this))
  {
    ot::Mle::Mle::SetAttachState(this, 5u);
    v27 = 1250;
    goto LABEL_25;
  }

  v23 = *(this + 132);
  if (!*(this + 132))
  {
    ot::Mle::Mle::ResetAttachCounter(this);
    goto LABEL_25;
  }

  switch(v23)
  {
    case 1:
      ot::Mle::Mle::ProcessAnnounce(this, v1, v2, v3, v4, v5, v6, v7);
      goto LABEL_25;
    case 2:
      v22 = *(this + 74);
      ot::Mle::Mle::AttachModeToString(*(this + 134));
      ot::Mle::Mle::ReattachStateToString(*(this + 133));
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Attach attempt %d, %s %s", v8, v9, v10, v11, v12, v13, v22);
      ot::Mle::Mle::SetAttachState(this, 3u);
      ot::Neighbor::SetState(this + 368, 0);
      *(this + 129) &= ~8u;
      *(this + 138) = 0;
      v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
      ot::MeshForwarder::SetRxOnWhenIdle(v14, 1, v15, v16, v17, v18, v19, v20);
      break;
    case 3:
      break;
    case 4:
LABEL_21:
      if ((v26 & 1) != 0 && !ot::Mle::Mle::GetNextAnnounceChannel(this, this + 141))
      {
        ot::Mle::Mle::SendAnnounce(this, *(this + 141), 1);
        v27 = *(this + 75);
        goto LABEL_25;
      }

      goto LABEL_24;
    case 5:
LABEL_24:
      ot::Mle::Mle::SetAttachState(this, 0);
      ot::Mle::Mle::ParentCandidate::Clear((this + 368));
      v27 = ot::Mle::Mle::Reattach(this);
      goto LABEL_25;
    default:
      goto LABEL_25;
  }

  ++*(this + 138);
  if (ot::Mle::Mle::DetermineParentRequestType(this, &v25, 0))
  {
    v26 = ot::Mle::Mle::PrepareAnnounceState(this);
    if (v26)
    {
      ot::Mle::Mle::SetAttachState(this, 4u);
      ot::Mle::Mle::SendParentRequest(this, 1);
      *(this + 141) = -1;
      v27 = *(this + 75);
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  ot::Mle::Mle::SendParentRequest(this, v25);
  if (v25)
  {
    v21 = 1250;
  }

  else
  {
    v21 = 750;
  }

  v27 = v21;
LABEL_25:
  if (v27)
  {
    ot::TimerMilli::Start((this + 888), v27);
  }
}

uint64_t ot::Mle::Mle::HandleDelayedResponseTimer(ot::Mle::Mle *this)
{
  v13 = this;
  ot::NextFireTime::NextFireTime(&v12);
  v11[2] = this + 352;
  v11[0] = ot::MessageQueue::begin((this + 352));
  v11[1] = v1;
  v10[0] = ot::MessageQueue::end((this + 352));
  v10[1] = v2;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v11, v10))
  {
    v9 = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(v11);
    ot::Mle::Mle::DelayedResponseMetadata::ReadFrom(v7, v9);
    Now = ot::NextFireTime::GetNow(&v12);
    if (ot::Time::operator<(&Now, &v8))
    {
      ot::NextFireTime::UpdateIfEarlier(&v12, v8);
    }

    else
    {
      ot::MessageQueue::Dequeue((this + 352), v9);
      ot::Mle::Mle::SendDelayedResponse(this, v9, v7);
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v11, v3);
  }

  return ot::TimerMilli::FireAt((this + 912), &v12);
}

void ot::Mle::Mle::HandleMessageTransmissionTimer(ot::Mle::Mle *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = this;
  if (*(this + 130) == 1 && *(this + 143))
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::MleRouter::SendLinkRequest(v8, 0);
    IgnoreError();
    --*(this + 143);
    ot::Mle::Mle::ScheduleMessageTransmissionTimer(this);
    return;
  }

  if (*(this + 137))
  {
    if (*(this + 137) == 1)
    {
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
      if (ot::Notifier::IsPending(v10))
      {
        ot::Mle::Mle::ScheduleMessageTransmissionTimer(this);
        return;
      }

      *(this + 139) = 0;
    }

    goto LABEL_20;
  }

  if (*(this + 135) == 1)
  {
    if (*(this + 140) < 4u)
    {
      ot::Neighbor::GetExtAddress((this + 192));
      ot::Ip6::Address::SetToLinkLocalAddress(v12, v9);
      if (!ot::Mle::Mle::SendDataRequest(this, v12))
      {
        ++*(this + 140);
      }
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Device becomes detached - reached max data request attempts dataReqAttempts(%d) reached maxChildKeepAliveAttempts(%d)", a3, a4, a5, a6, a7, a8, *(this + 140));
      ot::Mle::Mle::BecomeDetached(this);
      IgnoreError();
    }
  }

  else if (ot::Mle::Mle::IsChild(this) && ot::Mle::Mle::IsRxOnWhenIdle(this))
  {
LABEL_20:
    if (*(this + 139) < 4u)
    {
      if (!ot::Mle::Mle::SendChildUpdateRequest(this))
      {
        ++*(this + 139);
      }
    }

    else
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Device becomes detached - reached max child update attempts childUpdateAttempts(%d) reached maxChildKeepAliveAttempts(%d)", a3, a4, a5, a6, a7, a8, *(this + 139));
      ot::Mle::Mle::BecomeDetached(this);
      IgnoreError();
    }
  }
}

ot::Mle::Mle *ot::Mle::Mle::Mle(ot::Mle::Mle *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::TimerMicroIn<ot::Mle::Mle,&ot::Mle::Mle::HandleCslPeripheralAttachRetryTimer>::TimerMicroIn((this + 8), a2);
  *(this + 64) = 0;
  *(this + 65) = 0;
  ot::WakeupTxScheduler::WakeupTxScheduler((this + 72), a2);
  *(this + 128) = 0;
  *(this + 129) &= ~1u;
  *(this + 129) &= ~2u;
  *(this + 129) &= ~4u;
  *(this + 129) &= ~8u;
  *(this + 129) &= ~0x10u;
  *(this + 129) &= ~0x20u;
  *(this + 130) = 0;
  ot::Mle::DeviceMode::DeviceMode((this + 131), 8);
  *(this + 132) = 0;
  *(this + 133) = 0;
  *(this + 134) = 0;
  *(this + 135) = 0;
  *(this + 136) = 0;
  *(this + 137) = 0;
  *(this + 138) = 0;
  *(this + 139) = 0;
  *(this + 140) = 0;
  *(this + 141) = 0;
  *(this + 142) = 0;
  *(this + 143) = 0;
  *(this + 72) = -2;
  *(this + 73) = -2;
  *(this + 74) = 0;
  *(this + 75) = 1400;
  *(this + 76) = -1;
  *(this + 39) = 30;
  *(this + 40) = 100;
  *(this + 21) = 0;
  ot::Parent::Parent((this + 192));
  ot::NeighborTable::NeighborTable((this + 344), a2);
  ot::Coap::MessageQueue::MessageQueue((this + 352));
  ot::Mle::Mle::ParentCandidate::ParentCandidate((this + 368));
  ot::Ip6::Udp::SocketIn<ot::Mle::Mle,&ot::Mle::Mle::HandleUdpReceive>::SocketIn((this + 544), a2, this);
  v16 = (this + 688);
  do
  {
    ot::Mle::Mle::ServiceAloc::ServiceAloc(v16);
    v16 = (v16 + 32);
  }

  while (v16 != (this + 784));
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 101);
  *(this + 103) = 0;
  ot::TimerMicroIn<ot::Mle::Mle,&ot::Mle::Mle::HandleCslPeripheralAttachTimer>::TimerMicroIn((this + 832), a2);
  *(this + 857) = 0;
  *(this + 872) = 2;
  *(this + 110) = 0;
  ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleAttachTimer>::TimerMilliIn((this + 888), a2);
  ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleDelayedResponseTimer>::TimerMilliIn((this + 912), a2);
  ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleMessageTransmissionTimer>::TimerMilliIn((this + 936), a2);
  ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleDetachGracefullyTimer>::TimerMilliIn((this + 960), a2);
  ot::Parent::Init((this + 192), a2);
  ot::Mle::Mle::ParentCandidate::Init((this + 368), a2);
  ot::Clearable<ot::Mle::LeaderData>::Clear(this + 23);
  ot::Parent::Clear((this + 192));
  ot::Mle::Mle::ParentCandidate::Clear((this + 368));
  ot::Mle::Mle::ResetCounters(this);
  ot::Mle::Mle::ResetLinkLossCounters(this);
  ot::Mle::Mle::ResetMleTriggerBasedCounters(this);
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOrigin((this + 992));
  Address = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 992));
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ExtAddress = ot::Mac::Mac::GetExtAddress(v2);
  ot::Ip6::Address::SetToLinkLocalAddress(Address, ExtAddress);
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginMeshLocal((this + 1024));
  v4 = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1024));
  Iid = ot::Ip6::Address::GetIid(v4);
  ot::Ip6::InterfaceIdentifier::GenerateRandom(Iid);
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginMeshLocal((this + 1056));
  v6 = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1056));
  v7 = ot::Ip6::Address::GetIid(v6);
  ot::Ip6::InterfaceIdentifier::SetToLocator(v7, 0);
  *(this + 537) = *(this + 537) & 0xFF7F | 0x80;
  ot::Clearable<ot::Ip6::Netif::MulticastAddress>::Clear(this + 136);
  v11 = ot::BigEndian::HostSwap16(0xFF32);
  *ot::Ip6::Netif::MulticastAddress::GetAddress((this + 1088)) = v11;
  v12 = ot::BigEndian::HostSwap16(1);
  *(ot::Ip6::Netif::MulticastAddress::GetAddress((this + 1088)) + 14) = v12;
  ot::Clearable<ot::Ip6::Netif::MulticastAddress>::Clear(this + 139);
  v13 = ot::BigEndian::HostSwap16(0xFF33);
  *ot::Ip6::Netif::MulticastAddress::GetAddress((this + 1112)) = v13;
  v14 = ot::BigEndian::HostSwap16(1);
  *(ot::Ip6::Netif::MulticastAddress::GetAddress((this + 1112)) + 14) = v14;
  ot::Clearable<ot::Ip6::NetworkPrefix>::Clear(this + 123);
  v8 = ot::AsCoreType<otIp6NetworkPrefix>(&ot::Mle::Mle::kMeshLocalPrefixInit);
  ot::Mle::Mle::SetMeshLocalPrefix(this, v8);
  return this;
}

{
  ot::Mle::Mle::Mle(this, a2);
  return this;
}

ot::TimerMilli *ot::TimerMicroIn<ot::Mle::Mle,&ot::Mle::Mle::HandleCslPeripheralAttachRetryTimer>::TimerMicroIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMicroIn<ot::Mle::Mle,&ot::Mle::Mle::HandleCslPeripheralAttachRetryTimer>::TimerMicroIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMicroIn<ot::Mle::Mle,&ot::Mle::Mle::HandleCslPeripheralAttachRetryTimer>::HandleTimer);
  return a1;
}

ot::Parent *ot::Parent::Parent(ot::Parent *this)
{
  ot::Parent::Parent(this);
  return this;
}

{
  ot::Router::Router(this);
  return this;
}

ot::Mle::Mle::ParentCandidate *ot::Mle::Mle::ParentCandidate::ParentCandidate(ot::Mle::Mle::ParentCandidate *this)
{
  ot::Mle::Mle::ParentCandidate::ParentCandidate(this);
  return this;
}

{
  ot::Parent::Parent(this);
  ot::Mle::RxChallenge::RxChallenge((this + 145));
  return this;
}

ot::InstanceLocator *ot::Ip6::Udp::SocketIn<ot::Mle::Mle,&ot::Mle::Mle::HandleUdpReceive>::SocketIn(ot::InstanceLocator *a1, ot::Instance *a2, uint64_t a3)
{
  ot::Ip6::Udp::SocketIn<ot::Mle::Mle,&ot::Mle::Mle::HandleUdpReceive>::SocketIn(a1, a2, a3);
  return a1;
}

{
  ot::Ip6::Udp::Socket::Socket(a1, a2, ot::Ip6::Udp::SocketIn<ot::Mle::Mle,&ot::Mle::Mle::HandleUdpReceive>::HandleUdpReceive, a3);
  return a1;
}

ot::Mle::Mle::ServiceAloc *ot::Mle::Mle::ServiceAloc::ServiceAloc(ot::Mle::Mle::ServiceAloc *this)
{
  ot::Mle::Mle::ServiceAloc::ServiceAloc(this);
  return this;
}

{
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginMeshLocal(this);
  Address = ot::Ip6::Netif::UnicastAddress::GetAddress(this);
  Iid = ot::Ip6::Address::GetIid(Address);
  ot::Ip6::InterfaceIdentifier::SetToLocator(Iid, 0xFFFEu);
  return this;
}

ot::TimerMilli *ot::TimerMicroIn<ot::Mle::Mle,&ot::Mle::Mle::HandleCslPeripheralAttachTimer>::TimerMicroIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMicroIn<ot::Mle::Mle,&ot::Mle::Mle::HandleCslPeripheralAttachTimer>::TimerMicroIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMicroIn<ot::Mle::Mle,&ot::Mle::Mle::HandleCslPeripheralAttachTimer>::HandleTimer);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleAttachTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleAttachTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleAttachTimer>::HandleTimer);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleDelayedResponseTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleDelayedResponseTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleDelayedResponseTimer>::HandleTimer);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleMessageTransmissionTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleMessageTransmissionTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleMessageTransmissionTimer>::HandleTimer);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleDetachGracefullyTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleDetachGracefullyTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Mle::Mle,&ot::Mle::Mle::HandleDetachGracefullyTimer>::HandleTimer);
  return a1;
}

_BYTE *ot::Parent::Init(ot::Parent *this, ot::Instance *a2)
{
  ot::Neighbor::Init(this, a2);
  return ot::Mac::CslAccuracy::Init(this + 143);
}

{
  return ot::Parent::Init(this, a2);
}

_BYTE *ot::Mle::Mle::ParentCandidate::Init(ot::Mle::Mle::ParentCandidate *this, ot::Instance *a2)
{
  return ot::Parent::Init(this, a2);
}

{
  return ot::Mle::Mle::ParentCandidate::Init(this, a2);
}

void *ot::Clearable<ot::Mle::LeaderData>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Mle::LeaderData>(a1);
}

{
  return ot::Clearable<ot::Mle::LeaderData>::Clear(a1);
}

_BYTE *ot::Mle::Mle::ParentCandidate::Clear(ot::Mle::Mle::ParentCandidate *this)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::ClearAllBytes<ot::Mle::Mle::ParentCandidate>(this);
  return ot::Mle::Mle::ParentCandidate::Init(this, Instance);
}

unint64_t ot::Mle::Mle::ResetCounters(ot::Mle::Mle *this)
{
  ot::ClearAllBytes<otMleCounters>(this + 616);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Uptime>(this);
  result = ot::Uptime::GetUptime(v1);
  *(this + 22) = result;
  return result;
}

void *ot::Clearable<ot::Ip6::Netif::MulticastAddress>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Ip6::Netif::MulticastAddress>(a1);
}

{
  return ot::Clearable<ot::Ip6::Netif::MulticastAddress>::Clear(a1);
}

void *ot::Clearable<ot::Ip6::NetworkPrefix>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Ip6::NetworkPrefix>(a1);
}

{
  return ot::Clearable<ot::Ip6::NetworkPrefix>::Clear(a1);
}

uint64_t ot::Mle::Mle::SetMeshLocalPrefix(ot::Mle::Mle *this, const ot::Ip6::NetworkPrefix *a2)
{
  result = ot::Unequatable<ot::Ip6::NetworkPrefix>::operator!=(this + 984, a2);
  if (result)
  {
    *(this + 123) = *a2;
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    ot::Ip6::Netif::ApplyNewMeshLocalPrefix(v3);
    Address = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1024));
    ot::Ip6::Address::SetPrefix(Address, this + 123);
    v5 = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1056));
    ot::Ip6::Address::SetPrefix(v5, this + 123);
    v6 = ot::Ip6::Netif::MulticastAddress::GetAddress((this + 1088));
    ot::Ip6::Address::SetMulticastNetworkPrefix(v6, this + 984);
    v7 = ot::Ip6::Netif::MulticastAddress::GetAddress((this + 1112));
    ot::Ip6::Address::SetMulticastNetworkPrefix(v7, this + 984);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
    ot::BackboneRouter::Local::ApplyNewMeshLocalPrefix(v8);
    v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    return ot::Notifier::Signal(v9, 16);
  }

  return result;
}

uint64_t ot::Mle::Mle::Enable(ot::Mle::Mle *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Enabled", a3, a4, a5, a6, a7, a8, v9);
  ot::Mle::Mle::UpdateLinkLocalAddress(this);
  v11 = ot::Ip6::Udp::Socket::Open((this + 544));
  if (!v11)
  {
    return ot::Ip6::Udp::Socket::Bind((this + 544), 19788, 1);
  }

  return v11;
}

uint64_t ot::Mle::Mle::UpdateLinkLocalAddress(ot::Mle::Mle *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  ot::Ip6::Netif::RemoveUnicastAddress(v1, (this + 992));
  Address = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 992));
  Iid = ot::Ip6::Address::GetIid(Address);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ExtAddress = ot::Mac::Mac::GetExtAddress(v3);
  ot::Ip6::InterfaceIdentifier::SetFromExtAddress(Iid, ExtAddress);
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  ot::Ip6::Netif::AddUnicastAddress(v5, (this + 992));
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
  return ot::Notifier::Signal(v6, 8);
}

uint64_t ot::Mle::Mle::ScheduleMessageTransmissionTimer(ot::Mle::Mle *this)
{
  Uint32InRange = 0;
  if (*(this + 130) == 1 && *(this + 143))
  {
    Uint32InRange = ot::Random::NonCrypto::GetUint32InRange(0x1194, 0x157Cu);
    goto LABEL_21;
  }

  v4 = *(this + 137);
  if (*(this + 137))
  {
    if (v4 == 1)
    {
      Uint32InRange = 100;
      goto LABEL_21;
    }

    if (v4 == 2)
    {
      v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      if (ot::Mac::Mac::IsCslEnabled(v1))
      {
        v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        Uint32InRange = ot::Mac::Mac::GetCslPeriodInMsec(v2) + 1000;
      }

      else
      {
        Uint32InRange = 1000;
      }

      goto LABEL_21;
    }
  }

  if (*(this + 135) && *(this + 135) == 1)
  {
    Uint32InRange = 1000;
  }

  else if (ot::Mle::Mle::IsChild(this) && ot::Mle::Mle::IsRxOnWhenIdle(this))
  {
    Uint32InRange = ot::Time::SecToMsec(*(this + 39)) - 4000;
  }

LABEL_21:
  if (Uint32InRange)
  {
    return ot::TimerMilli::Start((this + 936), Uint32InRange);
  }

  else
  {
    return ot::TimerMilli::Stop((this + 936));
  }
}

uint64_t ot::Mle::Mle::Disable(ot::Mle::Mle *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Disabled", a3, a4, a5, a6, a7, a8, v10);
  ot::Mle::Mle::Stop(this, 0);
  v12 = ot::Ip6::Udp::Socket::Close((this + 544));
  if (!v12)
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    ot::Ip6::Netif::RemoveUnicastAddress(v8, (this + 992));
  }

  return v12;
}

void *ot::Mle::Mle::Stop(void *a1, char a2)
{
  if (a2 == 1)
  {
    active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
    ot::MeshCoP::DatasetManager::Restore(active);
    IgnoreError();
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(a1);
    ot::MeshCoP::DatasetManager::Restore(v3);
    IgnoreError();
  }

  if (!ot::Mle::Mle::IsDisabled(a1))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(a1);
    ot::KeyManager::Stop(v4);
    ot::Mle::Mle::SetStateDetached(a1);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
    ot::Ip6::Netif::UnsubscribeMulticast(v5, (a1 + 139));
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
    ot::Ip6::Netif::UnsubscribeMulticast(v6, (a1 + 136));
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
    ot::Ip6::Netif::RemoveUnicastAddress(v7, (a1 + 132));
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
    ot::Ip6::Netif::RemoveUnicastAddress(v8, (a1 + 128));
    if (ot::Mle::Mle::GetCslPeripheral(a1))
    {
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      CslPeripheral = ot::Mle::Mle::GetCslPeripheral(a1);
      ot::Mle::MleRouter::RemoveNeighbor(v11, CslPeripheral);
    }

    ot::Mle::Mle::SetRole(a1, 0);
  }

  ot::TimerMilli::Stop((a1 + 120));
  return ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::InvokeAndClearIfSet<>(a1 + 101);
}

uint64_t ot::Mle::Mle::Start(_BYTE *a1, char a2)
{
  v16 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(a1);
  if (ot::Radio::GetPromiscuous(v2))
  {
    return 13;
  }

  else
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
    if (ot::ThreadNetif::IsUp(v3))
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
      if (ot::Mac::Mac::GetPanId(v4) == 0xFFFF)
      {
        v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
        RandomPanId = ot::Mac::GenerateRandomPanId(v14);
        ot::Mac::Mac::SetPanId(v14, RandomPanId);
      }

      ot::Mle::Mle::SetStateDetached(a1);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
      ot::Ip6::Netif::AddUnicastAddress(v6, (a1 + 1024));
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
      ot::Ip6::Netif::SubscribeMulticast(v7, (a1 + 1088));
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
      ot::Ip6::Netif::SubscribeMulticast(v8, (a1 + 1112));
      Rloc16 = ot::Mle::Mle::GetRloc16(a1);
      ot::Mle::Mle::SetRloc16(a1, Rloc16);
      ot::Mle::Mle::ResetAttachCounter(a1);
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(a1);
      ot::KeyManager::Start(v10);
      if (!a2)
      {
        a1[133] = 1;
      }

      if (a2 == 1 || ot::Mle::Mle::GetRloc16(a1) == 65534)
      {
        ot::Mle::Mle::Attach(a1, 0);
      }

      else
      {
        v11 = ot::Mle::Mle::GetRloc16(a1);
        if (ot::Mle::IsRouterRloc16(v11))
        {
          v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
          if (ot::Mle::MleRouter::BecomeRouter(v12, 2u))
          {
            ot::Mle::Mle::Attach(a1, 0);
          }
        }

        else
        {
          a1[139] = 0;
          ot::Mle::Mle::SendChildUpdateRequest(a1);
          IgnoreError();
        }
      }
    }

    else
    {
      return 13;
    }
  }

  return v16;
}

uint64_t ot::Radio::GetPromiscuous(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetPromiscuous();
}

{
  return ot::Radio::GetPromiscuous(this);
}

void ot::Mle::Mle::SetStateDetached(ot::Mle::Mle *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
  ot::BackboneRouter::Local::Reset(v1);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
  ot::BackboneRouter::Leader::Reset(v2);
  if (ot::Mle::Mle::IsAttached(this))
  {
    ot::Mle::Mle::UpdateLastDetachTime(this);
    ot::Mle::Mle::Store(this);
  }

  if (ot::Mle::Mle::IsLeader(this))
  {
    v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Ip6::Netif::RemoveUnicastAddress(v15, (v3 + 35712));
  }

  ot::Mle::Mle::SetRole(this, 1);
  ot::Mle::Mle::SetAttachState(this, 0);
  ot::TimerMilli::Stop((this + 888));
  ot::TimerMilli::Stop((this + 936));
  *(this + 137) = 0;
  *(this + 139) = 0;
  *(this + 135) = 0;
  *(this + 140) = 0;
  *(this + 129) &= ~0x10u;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
  ot::MeshForwarder::SetRxOnWhenIdle(v4, 1, v5, v6, v7, v8, v9, v10);
  v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::SetBeaconEnabled(v11, 0);
  v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  ot::Mle::MleRouter::ClearAlternateRloc16(v12);
  v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  ot::Mle::MleRouter::HandleDetachStart(v13);
  v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::UpdateCsl(v14, 0);
}

void ot::Mle::Mle::SetRloc16(ot::Mle::Mle *this, unsigned __int16 a2)
{
  Rloc16 = ot::Mle::Mle::GetRloc16(this);
  if (a2 != Rloc16)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "RLOC16 %04x -> %04x", v2, v3, v4, v5, v6, v7, Rloc16);
  }

  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  if (ot::Ip6::Netif::HasUnicastAddress(v8, (this + 1056)))
  {
    Address = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1056));
    Iid = ot::Ip6::Address::GetIid(Address);
    if (ot::Ip6::InterfaceIdentifier::GetLocator(Iid) != a2)
    {
      v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
      ot::Ip6::Netif::RemoveUnicastAddress(v11, (this + 1056));
      v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(this);
      v12 = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1056));
      ot::Coap::CoapBase::ClearRequests(v19, v12);
    }
  }

  v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::SetShortAddress(v13, a2);
  *(this + 72) = a2;
  if (a2 == 65534)
  {
    v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::MleRouter::ClearAlternateRloc16(v18);
  }

  else
  {
    v14 = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1056));
    v15 = ot::Ip6::Address::GetIid(v14);
    ot::Ip6::InterfaceIdentifier::SetLocator(v15, a2);
    v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    ot::Ip6::Netif::AddUnicastAddress(v16, (this + 1056));
    v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
    ot::AddressResolver::RestartAddressQueries(v17);
  }
}

void ot::Mle::Mle::Attach(uint64_t a1, char a2)
{
  if (!ot::Mle::Mle::IsDisabled(a1) && !ot::Mle::Mle::IsAttaching(a1))
  {
    if (!ot::Mle::Mle::IsDetached(a1))
    {
      ot::Mle::Mle::ResetAttachCounter(a1);
    }

    if (*(a1 + 133) == 1)
    {
      active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(a1);
      if (ot::MeshCoP::DatasetManager::Restore(active))
      {
        *(a1 + 133) = 0;
      }

      else
      {
        *(a1 + 133) = 2;
      }
    }

    ot::Mle::Mle::SetAttachState(a1, 2u);
    *(a1 + 134) = a2;
    if (a2 == 2)
    {
      ++*(a1 + 630);
      ++*(a1 + 802);
    }

    else if (ot::Mle::Mle::IsFullThreadDevice(a1))
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      ot::Mle::MleRouter::StopAdvertiseTrickleTimer(v3);
    }

    AttachStartDelay = ot::Mle::Mle::GetAttachStartDelay(a1);
    ot::TimerMilli::Start((a1 + 888), AttachStartDelay);
    if (ot::Mle::Mle::IsDetached(a1))
    {
      ot::Mle::Mle::IncrementAttachCounter(a1);
      ++*(a1 + 798);
      if (!ot::Mle::Mle::IsRxOnWhenIdle(a1))
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
        ot::Mac::Mac::SetRxOnWhenIdle(v5, 0, v6, v7, v8, v9, v10, v11);
      }
    }
  }
}

void ot::Mle::Mle::SetRole(uint64_t a1, char a2)
{
  v24 = a1;
  v23 = a2;
  v22 = *(a1 + 130);
  v21 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Uptime>(a1);
  ot::Uptime::GetUptime(v2, v25, 24);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(a1);
  ot::AppMetricsManager::UpdateSystemWideThreadMeshReachabilityStatusLastTimestamp(v3, 8u);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
  if (!ot::Notifier::Update<ot::Mle::DeviceRole>(v4, (a1 + 130), &v23, 4))
  {
    ot::Mle::RoleToString(v22);
    ot::Mle::RoleToString(*(a1 + 130));
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s Role %s -> %s", v5, v6, v7, v8, v9, v10, v25);
    ot::Mle::Mle::UpdateRoleTimeCounters(a1, v22);
    v18 = *(a1 + 130);
    if (*(a1 + 130))
    {
      switch(v18)
      {
        case 1:
          ++*(a1 + 618);
          ++*(a1 + 790);
          break;
        case 2:
          ++*(a1 + 620);
          ++*(a1 + 792);
          ot::Mle::Mle::SignalChildConnectionSuccess(a1);
          *(a1 + 64) = 1;
          break;
        case 3:
          ++*(a1 + 622);
          ++*(a1 + 794);
          break;
        case 4:
          ++*(a1 + 624);
          ++*(a1 + 796);
          break;
      }
    }

    else
    {
      ++*(a1 + 616);
      ++*(a1 + 788);
    }

    ot::Mle::Mle::SetThreadCoexConfig(a1, 0, *(a1 + 130), *(a1 + 132));
    if (!ot::Mle::Mle::IsChild(a1) && v22)
    {
      ot::Neighbor::SetState(a1 + 192, 0);
    }

    if (v22 == 1 && ot::Mle::Mle::IsChild(a1))
    {
      DeviceMode = ot::Mle::Mle::GetDeviceMode(a1);
      *(a1 + 129) = *(a1 + 129) & 0xEF | (16 * !ot::Mle::DeviceMode::IsRxOnWhenIdle(&DeviceMode));
    }
  }

  if (v21)
  {
    v11 = otThreadErrorToString(v21);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Error %s while configuring the role", v12, v13, v14, v15, v16, v17, v11);
  }
}

void *ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::InvokeAndClearIfSet<>(void *a1)
{
  v3 = a1;
  v2 = *a1;
  ot::CallbackBase<void (*)(void *)>::Clear(a1);
  return ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::InvokeIfSet<>(&v2);
}

{
  return ot::Callback<void (*)(void *),(ot::CallbackContextPosition)0>::InvokeAndClearIfSet<>(a1);
}

void *ot::ClearAllBytes<otMleCounters>(void *a1)
{
  return memset(a1, 0, 0x48uLL);
}

{
  return ot::ClearAllBytes<otMleCounters>(a1);
}

unint64_t ot::Mle::Mle::UpdateRoleTimeCounters(ot::InstanceLocator *a1, char a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Uptime>(a1);
  result = ot::Uptime::GetUptime(v2);
  v5 = result - *(a1 + 22);
  *(a1 + 22) = result;
  *(a1 + 84) += v5;
  if (a2)
  {
    switch(a2)
    {
      case 1:
        *(a1 + 80) += v5;
        break;
      case 2:
        *(a1 + 81) += v5;
        break;
      case 3:
        *(a1 + 82) += v5;
        break;
      case 4:
        *(a1 + 83) += v5;
        break;
    }
  }

  else
  {
    *(a1 + 79) += v5;
  }

  return result;
}

uint64_t ot::Mle::Mle::setFirmwareUpdate(ot::Mle::Mle *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Mle::fwUpdateEnabled = a2 & 1;
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s: fwUpdateEnabled=[%d]", a3, a4, a5, a6, a7, a8, "setFirmwareUpdate");
  if (ot::Mle::Mle::IsFullRouter(this))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s: In Full router mode:fwUpdateEnabled=[%d]", v8, v9, v10, v11, v12, v13, "setFirmwareUpdate");
    ot::Mle::Mle::SetThreadCoexConfig(this, 0, *(this + 130), *(this + 132));
    return 0;
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s: Not Full router mode failed to set Coex Priority: fwUpdateEnabled=[%d]: error=[%d]", v8, v9, v10, v11, v12, v13, "setFirmwareUpdate");
    return 13;
  }
}

BOOL ot::Mle::Mle::IsFullRouter(ot::Mle::Mle *this)
{
  return ot::Mle::Mle::IsRxOnWhenIdle(this) && ot::Mle::Mle::IsFullThreadDevice(this);
}

{
  return ot::Mle::Mle::IsFullRouter(this);
}

void ot::Mle::Mle::SetThreadCoexConfig(ot::InstanceLocator *a1, unsigned __int8 a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v133 = a1;
  v132 = a2;
  v131 = a3;
  v130 = a4;
  v116 = a1;
  v129 = 0;
  v128 = 3;
  v127 = 0;
  v126 = 0;
  v125 = 0;
  v124 = 0;
  v123 = 0;
  AudioTaskId = ot::Mle::Mle::getAudioTaskId(a1);
  hasHIDConnected = ot::Mle::Mle::hasHIDConnected(v116);
  v120 = 0;
  v117 = v132;
  v118 = ot::Mle::RoleToString(v131);
  v105 = (v132 & 1);
  IsCslEnabled = v118;
  v107 = ot::Mle::Mle::AttachStateToString(v130);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s: Attach state change:%d role:%s, Attach state:%s", v4, v5, v6, v7, v8, v9, "SetThreadCoexConfig");
  v119 = v131;
  if (!v131)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s Thread will go to OFFLINE, reset Thread priority/fragment size/data poll timeout/duty cycle.", v10, v11, v12, v13, v14, v15, "SetThreadCoexConfig");
    Instance = ot::InstanceLocator::GetInstance(v116);
    v129 = otPlatVendorCoexThreadClear(Instance);
    goto LABEL_45;
  }

  switch(v119)
  {
    case 1:
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s During Detached role, ChildupdateReq/Attach State change will happen, config the Thread Coex setting", v10, v11, v12, v13, v14, v15, "SetThreadCoexConfig");
      v120 = ot::Mle::Mle::getHIDEqual1125Count(v116) > 0;
      v17 = ot::InstanceLocator::GetInstance(v116);
      v129 = otPlatVendorCoexThreadDetached(v17, v132 & 1, v130, AudioTaskId, hasHIDConnected, v120);
      break;
    case 2:
      v115 = ot::Mle::RoleToString(v131);
      v18 = ot::InstanceLocator::GetInstance(v116);
      v105 = v115;
      IsCslEnabled = otLinkIsCslEnabled(v18);
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Device role is Child, we will adjust the coex config base on BT task, new role=%s, CslEnabled = %d", v19, v20, v21, v22, v23, v24, "SetThreadCoexConfig");
      v25 = ot::InstanceLocator::GetInstance(v116);
      if (otLinkIsCslEnabled(v25))
      {
        v26 = ot::InstanceLocator::GetInstance(v116);
        v129 = otLinkSetPollPeriod(v26, 0x3E8u);
        if (v129)
        {
          break;
        }
      }

      else
      {
        v27 = ot::InstanceLocator::GetInstance(v116);
        v129 = otLinkSetPollPeriod(v27, 0x1C2u);
        if (v129)
        {
          break;
        }
      }

      v129 = ot::Mle::Mle::adjustPriorityAndFragmentToBTLoad(v116, ot::Mle::current_coex_radioload);
      if (!v129)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: Attach procedure is complete, set RX on IDLE use QOS Percentage Policy config to FALSE", v28, v29, v30, v31, v32, v33, v104);
        ot::InstanceLocator::GetInstance(v116);
        if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) == 0)
        {
          v34 = ot::InstanceLocator::GetInstance(v116);
          v129 = otPlatVendorSetRxOnIdleUseQOSPercentagePolicyConfig(v34, 0);
        }
      }

      break;
    case 4:
    case 3:
      IsSleepyRouter = ot::Mle::Mle::IsSleepyRouter(v116);
      v105 = ot::Mle::Mle::WorAttachStateToString(v116, *(v116 + 128));
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: Device role is Router/Leader, and Sleepy Router Config: %d, Peripheral Attach State: %s", v35, v36, v37, v38, v39, v40, IsSleepyRouter);
      if (ot::Mle::Mle::IsSleepyRouter(v116))
      {
        if (*(v116 + 128))
        {
          v128 = 4;
        }

        else
        {
          v127 = 1;
          if (*(v116 + 65))
          {
            v128 = 3;
          }

          else
          {
            v128 = 5;
          }

          if (!ot::Mle::Mle::isThreadAlwaysOnFeatureEnabled(v116))
          {
            v82 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(v116);
            ot::MeshForwarder::SetRxOnWhenIdle(v82, 1, v83, v84, v85, v86, v87, v88);
          }
        }
      }

      else
      {
        if (ot::Mle::Mle::isThreadAlwaysOnFeatureEnabled(v116))
        {
          v48 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(v116);
          ot::MeshForwarder::SetRxOnWhenIdle(v48, 1, v49, v50, v51, v52, v53, v54);
        }

        if (ot::Mle::fwUpdateEnabled)
        {
          v55 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v116);
          if (ot::Mle::MleRouter::HasChildrenInStateAnyExceptInvalid(v55))
          {
            ot::InstanceLocator::GetInstance(v116);
            if (otPlatRadioGetRcp2Vendor2Enabled())
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: fwUpdate enabled, Device role is Router/Leader:COEX_THREAD_PRIORITY_HAS_ANY_CHILD_OR_NEIGHBOR", v62, v63, v64, v65, v66, v67, v104);
              v128 = 6;
            }

            else
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: fwUpdate enabled, Device role is Router/Leader:COEX_THREAD_PRIORITY_HIGH", v62, v63, v64, v65, v66, v67, v104);
              v128 = 3;
            }

            ot::Mle::Mle::adjustDutyCycleForFR(v116, ot::Mle::current_coex_radioload, &v125, &v124, &v123);
          }

          else
          {
            ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: fwUpdate enabled, Device role is Router/Leader: Default COEX_THREAD_SCAN_PRIORITY", v56, v57, v58, v59, v60, v61, v104);
            v128 = 5;
            v127 = 1;
          }
        }

        else
        {
          ot::InstanceLocator::GetInstance(v116);
          if (otPlatRadioGetRcp2Vendor2Enabled())
          {
            v74 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(v116);
            if (ot::ChildTable::HasChildren(v74, 0) || (v81 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(v116), ot::RouterTable::GetNeighborCount(v81, 1u)))
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: fwUpdate disabled, Device role is Router/Leader: COEX_THREAD_PRIORITY_HAS_ANY_CHILD_OR_NEIGHBOR", v75, v76, v77, v78, v79, v80, v104);
              v128 = 6;
              ot::Mle::Mle::adjustDutyCycleForFR(v116, ot::Mle::current_coex_radioload, &v125, &v124, &v123);
            }

            else
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: fwUpdate disabled, Device role is Router/Leader: COEX_THREAD_PRIORITY_HIGH", v75, v76, v77, v78, v79, v80, v104);
              v128 = 3;
              ot::Mle::Mle::adjustDutyCycleForFR(v116, ot::Mle::current_coex_radioload, &v125, &v124, &v123);
            }
          }

          else
          {
            ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: fwUpdate disabled, Device role is Router/Leader: Default COEX_THREAD_PRIORITY_HIGH", v68, v69, v70, v71, v72, v73, v104);
            v128 = 3;
            ot::Mle::Mle::adjustDutyCycleForFR(v116, ot::Mle::current_coex_radioload, &v125, &v124, &v123);
          }
        }
      }

      v113 = &v104;
      v105 = v128;
      IsCslEnabled = v127;
      v107 = v126;
      v108 = 127;
      v109 = 100;
      v110 = v125;
      v111 = v124;
      v112 = v123;
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Set Thread coex config: priority to %d, OverridePriority to %d, OverridePriorityDuration to %d us, max fragment size to %d, data poll timeout to %d, and DutyCycleHigh(x) %u, DutyCycleInterval(y) %u, DatapollAlign %u and Qos percentage Policy", v42, v43, v44, v45, v46, v47, "SetThreadCoexConfig");
      v89 = ot::InstanceLocator::GetInstance(v116);
      v129 = otPlatVendorSetPriority(v89, v128, v127, v126);
      if (!v129)
      {
        v90 = ot::InstanceLocator::GetInstance(v116);
        otLinkSetFragmentSize(v90, 0x7Fu);
        v91 = ot::InstanceLocator::GetInstance(v116);
        otLinkSetDataPollTimeoutCoex(v91, 100);
        ot::InstanceLocator::GetInstance(v116);
        if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) == 0)
        {
          v92 = ot::InstanceLocator::GetInstance(v116);
          v129 = otPlatVendorSetRxOnIdleUseQOSPercentagePolicyConfig(v92, 0);
          if (!v129)
          {
            v93 = ot::InstanceLocator::GetInstance(v116);
            v129 = otPlatVendorSetDutyCycle(v93, v125, v124, v123, v94, v95, v96, v97);
          }
        }
      }

      break;
  }

LABEL_45:
  if (v129)
  {
    v105 = otThreadErrorToString(v129);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "BT Load: %s Error %s while configuring the thread coex setting.", v98, v99, v100, v101, v102, v103, "SetThreadCoexConfig");
  }
}

uint64_t ot::Mle::Mle::SignalChildConnectionSuccess(ot::Mle::Mle *this)
{
  ot::InstanceLocator::GetInstance(this);
  result = otPlatVendorGetThreadJoinSession();
  if ((result & 1) == 0)
  {
    result = ot::Mle::Mle::isThreadStateMachineEnabled(this);
    if (result)
    {
      ot::Mle::Mle::GetDeviceMode(this);
      result = ot::Mle::Mle::IsMinimalEndDevice(this);
      if (result)
      {
        v15 = *(this + 74);
        ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: ThreadConnection: Attach attempt %d successful in SED/SSED mode", v2, v3, v4, v5, v6, v7, "SignalChildConnectionSuccess");
        ot::Mle::Mle::ResetAttachCounter(this);
        v16 = *(this + 74);
        ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: ThreadConnection: On successful Attach, reset mAttachCounter=%d", v8, v9, v10, v11, v12, v13, "SignalChildConnectionSuccess");
        v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
        return ot::Notifier::Signal(v14, &_mh_execute_header);
      }
    }
  }

  return result;
}

uint64_t ot::Mle::Mle::adjustPriorityAndFragmentToBTLoad(ot::Mle::Mle *this, uint64_t a2)
{
  v86 = this;
  v85 = a2;
  v68 = this;
  v84 = 0;
  v83 = a2;
  AudioTaskId = ot::Mle::Mle::getAudioTaskId(this);
  HIDLess1125Count = ot::Mle::Mle::getHIDLess1125Count(v68);
  HIDEqual1125Count = ot::Mle::Mle::getHIDEqual1125Count(v68);
  HIDGreater1125Count = ot::Mle::Mle::getHIDGreater1125Count(v68);
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v75 = 127;
  v74 = 100;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v70 = 0;
  WiFiStateId = ot::Mle::Mle::getWiFiStateId(v68);
  v60 = v83;
  v61 = HIDLess1125Count;
  v62 = HIDEqual1125Count;
  v63 = HIDGreater1125Count;
  v64 = ot::Mle::Mle::BTAudioTaskIDToStrings(v68, AudioTaskId);
  v65 = ot::Mle::Mle::WifiAssotiatedTypeToStrings(v68, WiFiStateId);
  v66 = ot::Mle::RoleToString(*(v68 + 130));
  v2 = ot::Mle::Mle::AttachStateToString(*(v68 + 132));
  v67 = &v42;
  v43 = v83;
  v44 = HIDLess1125Count;
  v45 = HIDEqual1125Count;
  v46 = HIDGreater1125Count;
  v47 = v64;
  v48 = v65;
  v49 = v66;
  v50 = v2;
  ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Load is %x, # HID < 11.25 is %d, # HID = 11.25 is %d, # HID > 11.25 is %d, btAudioTask is %s, wifiAssociatedType is %s, current node_role is %s, current attach_state is %s", v3, v4, v5, v6, v7, v8, "adjustPriorityAndFragmentToBTLoad");
  if (!*(v68 + 130) || *(v68 + 130) == 1)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Thread is not associated yet. Don't/No need to change priority/fragment size.", v9, v10, v11, v12, v13, v14, "adjustPriorityAndFragmentToBTLoad");
    return v84;
  }

  if (*(v68 + 130) == 3 || *(v68 + 130) == 4)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Device is sleepy router, will tune the priority/frament setting for it later", v9, v10, v11, v12, v13, v14, "adjustPriorityAndFragmentToBTLoad");
    return v84;
  }

  v43 = AudioTaskId;
  ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s BT audio task change to %d", v9, v10, v11, v12, v13, v14, "adjustPriorityAndFragmentToBTLoad");
  v59 = AudioTaskId;
  if (AudioTaskId)
  {
    if (v59 == 2 || v59 == 1)
    {
      goto LABEL_22;
    }

    if (v59 != 4 && v59 != 3)
    {
      if ((v59 - 5) <= 2)
      {
LABEL_22:
        v78 = 2;
        v75 = 63;
        v74 = 100;
        Instance = ot::InstanceLocator::GetInstance(v68);
        if (!otLinkIsCslEnabled(Instance))
        {
          ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s X/Y will kick in and alignment will enable for priority 2 case.", v15, v16, v17, v18, v19, v20, "adjustPriorityAndFragmentToBTLoad");
          v72 = 2500;
          v71 = 60000;
          v70 = 1;
        }

        if (AudioTaskId == 2 || AudioTaskId == 5 || AudioTaskId == 1 || AudioTaskId == 6)
        {
          v73 = 60;
        }

        else
        {
          v73 = 60;
        }

        goto LABEL_43;
      }

      if (v59 != 8)
      {
        if (v59 != 10 && v59 != 9)
        {
          goto LABEL_43;
        }

        goto LABEL_22;
      }
    }

    v78 = 1;
    v77 = 1;
    v76 = 15000;
    v75 = 127;
    v74 = 100;
    if (ot::Mle::Mle::hasHIDConnected(v68))
    {
      if (WiFiStateId == 2)
      {
        v75 = 63;
      }

      v70 = 1;
      v73 = 60;
      v72 = 2500;
      v71 = 60000;
    }
  }

  else if (ot::Mle::Mle::hasHIDConnected(v68))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s There is no audio task, but the HID is connected.", v22, v23, v24, v25, v26, v27, "adjustPriorityAndFragmentToBTLoad");
    v78 = 1;
    v74 = 100;
    v70 = 1;
    v73 = 60;
    v72 = 2500;
    v71 = 60000;
    if (HIDEqual1125Count)
    {
      v71 = 90000;
    }

    if (WiFiStateId == 2)
    {
      v75 = 63;
      v77 = 1;
    }

    else
    {
      v77 = 2;
    }

    v76 = 15000;
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s There is no BT audio/non-audio activity, config coex based on SED/SSED.", v22, v23, v24, v25, v26, v27, "adjustPriorityAndFragmentToBTLoad");
    v28 = ot::InstanceLocator::GetInstance(v68);
    if (otLinkIsCslEnabled(v28))
    {
      v78 = 2;
    }

    else
    {
      v78 = 1;
      if (WiFiStateId == 2)
      {
        v77 = 1;
      }

      else
      {
        v77 = 2;
      }

      v76 = 40000;
    }
  }

LABEL_43:
  v53 = &v78;
  v54 = &v75;
  v55 = &v74;
  v56 = &v72;
  v57 = &v71;
  v58 = &v70;
  v52 = &v42;
  v43 = v78;
  v44 = v77;
  v45 = v76;
  v46 = v75;
  v47 = v74;
  v48 = v72;
  v49 = v71;
  v50 = (v70 & 1);
  v51 = v73;
  ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Set Thread coex config: priority to %d, overridePriority to %d, overridePriorityDuration to %d us, max fragment size to %d, data poll timeout to %d, dt_high(x) %u, dt_interval(y) %u, dt_datapoll_align %u, B2BDataPollDelay %d ms", v15, v16, v17, v18, v19, v20, "adjustPriorityAndFragmentToBTLoad");
  v29 = ot::InstanceLocator::GetInstance(v68);
  otPlatVendorCoexConfigTest(v29, v53, v54, v55, v56, v57, v58);
  ot::InstanceLocator::GetInstance(v68);
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    if (!ot::Mle::Mle::IsFullRouter(v68))
    {
      v78 = 1;
      v30 = ot::InstanceLocator::GetInstance(v68);
      v84 = otPlatVendorSetPriority(v30, v78, v77, v76);
      if (v84)
      {
        return v84;
      }
    }
  }

  else
  {
    v31 = ot::InstanceLocator::GetInstance(v68);
    v84 = otPlatVendorSetPriority(v31, v78, v77, v76);
    if (v84)
    {
      return v84;
    }
  }

  v32 = ot::InstanceLocator::GetInstance(v68);
  otLinkSetFragmentSize(v32, v75);
  v33 = ot::InstanceLocator::GetInstance(v68);
  otLinkSetDataPollTimeoutCoex(v33, v74);
  ot::InstanceLocator::GetInstance(v68);
  if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 || (v34 = ot::InstanceLocator::GetInstance(v68), !otPlatVendorSetDutyCycle(v34, v72, v71, v70 & 1, v35, v36, v37, v38)))
  {
    v39 = ot::InstanceLocator::GetInstance(v68);
    otLinkSetB2BDataPollDelay(v39, v73);
    v40 = ot::InstanceLocator::GetInstance(v68);
    otLinkSetSessionPriority(v40, v78);
  }

  return v84;
}

void ot::Mle::Mle::adjustDutyCycleForFR(ot::Mle::Mle *this, unint64_t a2, unsigned int *a3, unsigned int *a4, BOOL *a5)
{
  AudioTaskId = ot::Mle::Mle::getAudioTaskId(this);
  *a5 = 0;
  if (ot::Mle::Mle::hasHIDConnected(this))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s There is HID connected, don't config the x/y setting for FR.", v5, v6, v7, v8, v9, v10, "adjustDutyCycleForFR");
  }

  else if (AudioTaskId)
  {
    ot::Mle::Mle::BTAudioTaskIDToStrings(this, AudioTaskId);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s There is BT audio task %s, config the x/y setting as %d/%d for FR.", v11, v12, v13, v14, v15, v16, "adjustDutyCycleForFR");
    *a3 = 10000;
    *a4 = 120000;
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s There is no BT audio task, config the x/y setting as %d/%d for FR.", v5, v6, v7, v8, v9, v10, "adjustDutyCycleForFR");
    *a3 = 10000;
    *a4 = 60000;
  }
}

const char *ot::Mle::Mle::BTAudioTaskIDToStrings(ot::Mle::Mle *this, unsigned __int8 a2)
{
  if (a2 >= ot::GetArrayLength<char const*,(unsigned short)11>())
  {
    return "invalid BTAudioTaskID";
  }

  else
  {
    return ot::Mle::Mle::BTAudioTaskIDToStrings(unsigned char)::BTAudioTaskIDStrings[a2];
  }
}

{
  return ot::Mle::Mle::BTAudioTaskIDToStrings(this, a2);
}

uint64_t ot::Mle::Mle::adjustDutyCycleForSRDiscoverScan(ot::Mle::Mle *this, char a2)
{
  v29[4] = 0;
  *v29 = ot::Mle::Mle::getAudioTaskId(this);
  v28 = 0;
  v27 = 0;
  if (a2)
  {
    if (ot::Mle::Mle::hasHIDConnected(this) || v29[0])
    {
      v28 = 5000;
      v27 = 60000;
      ot::Mle::Mle::BTAudioTaskIDToStrings(this, v29[0]);
      ot::Mle::Mle::hasHIDConnected(this);
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s There is BT audio task: %s or HID is connected: %d, config the x/y setting as %d/%d for SR discovery scan.", v14, v15, v16, v17, v18, v19, "adjustDutyCycleForSRDiscoverScan");
    }

    else
    {
      v28 = 10000;
      v27 = 60000;
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s There is no BT activity, config the x/y setting as %d/%d for SR discovery scan.", v8, v9, v10, v11, v12, v13, "adjustDutyCycleForSRDiscoverScan");
    }
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s SR discovery scan is done, config the x/y setting as %d/%d to remove it.", v2, v3, v4, v5, v6, v7, "adjustDutyCycleForSRDiscoverScan");
  }

  ot::InstanceLocator::GetInstance(this);
  if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) == 0)
  {
    Instance = ot::InstanceLocator::GetInstance(this);
    otPlatVendorSetDutyCycle(Instance, v28, v27, 0, v21, v22, v23, v24);
  }

  return *&v29[1];
}

const char *ot::Mle::Mle::WifiAssotiatedTypeToStrings(ot::Mle::Mle *this, unsigned __int8 a2)
{
  if (a2 >= ot::GetArrayLength<char const*,(unsigned short)5>())
  {
    return "invalid WifiAssotiatedType";
  }

  else
  {
    return ot::Mle::Mle::WifiAssotiatedTypeToStrings(unsigned char)::WifiAssotiatedTypeStrings[a2];
  }
}

{
  return ot::Mle::Mle::WifiAssotiatedTypeToStrings(this, a2);
}

uint64_t ot::Mle::Mle::getPrioritizedWindowSize(ot::Mle::Mle *this)
{
  if (ot::Mle::Mle::hasHIDConnected(this) || ot::Mle::Mle::getAudioEscoLeaScoAosStatus(this))
  {
    return 5;
  }

  else
  {
    return 10;
  }
}

void ot::Mle::Mle::SetCoexLoadMapValue(ot::Mle::Mle *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Setting Coex Load from: %llx -> to :%llx", a3, a4, a5, a6, a7, a8, "SetCoexLoadMapValue");
  if (ot::Mle::current_coex_radioload == a2)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s New load is same as current load, hence ignoring this event", v8, v9, v10, v11, v12, v13, "SetCoexLoadMapValue");
  }

  else
  {
    ot::Mle::current_coex_radioload = a2;
    if (ot::Mle::Mle::isThreadSessionEnabled(this))
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Thread is On, change Coex Config based on new coex radioload", v14, v15, v16, v17, v18, v19, "SetCoexLoadMapValue");
      ot::Mle::Mle::SetThreadCoexConfig(this, 0, *(this + 130), *(this + 132));
    }

    otThreadErrorToString(0);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s SetCoexLoadMapValue returend %s", v20, v21, v22, v23, v24, v25, "SetCoexLoadMapValue");
  }

  ot::Mle::Mle::LogCoExLoad(this);
  if (ot::Mle::Mle::IsSleepyRouter(this))
  {
    ot::Mle::Mle::HandleDynamicCSLPeriod(this);
  }
}

void ot::Mle::Mle::LogCoExLoad(ot::Mle::Mle *this)
{
  AudioTaskId = ot::Mle::Mle::getAudioTaskId(this);
  ot::Mle::Mle::getBTLoad(this);
  ot::Mle::Mle::getHIDLess1125Count(this);
  ot::Mle::Mle::getHIDEqual1125Count(this);
  ot::Mle::Mle::getHIDGreater1125Count(this);
  WiFiStateId = ot::Mle::Mle::getWiFiStateId(this);
  ot::Mle::Mle::getWiFiP2PStatus(this);
  ot::Mle::Mle::BTAudioTaskIDToStrings(this, AudioTaskId);
  ot::Mle::Mle::WifiAssotiatedTypeToStrings(this, WiFiStateId);
  ot::Mle::RoleToString(*(this + 130));
  ot::Mle::Mle::AttachStateToString(*(this + 132));
  ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "BT Load: %s Load is %x, # HID < 11.25 is %d, # HID = 11.25 is %d, # HID > 11.25 is %d, btAudioTask is %s, Wifi Associated type is %s, wifi p2p status is %d, current node_role is %s, current attach_state is %s", v1, v2, v3, v4, v5, v6, "LogCoExLoad");
}

void ot::Mle::Mle::HandleDynamicCSLPeriod(ot::Mle::Mle *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  CslPeriod = ot::Mac::Mac::GetCslPeriod(v1);
  if (ot::Mle::Mle::isThreadStateMachineEnabled(this) && (ot::Mle::Mle::getAudioTaskId(this) || ot::Mle::Mle::hasHIDConnected(this)) && ot::Mle::Mle::IsCslPeripheralAttached(this) && CslPeriod == 250 && (ot::Mle::Mle::getAudioTaskId(this) > 0 || ot::Mle::Mle::hasHIDConnected(this)))
  {
    AudioTaskId = ot::Mle::Mle::getAudioTaskId(this);
    ot::Mle::Mle::BTAudioTaskIDToStrings(this, AudioTaskId);
    ot::Mle::Mle::hasHIDConnected(this);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: %s WED stays at same eCSL period after change in BT Load. Audio Task ID is %s, %s HID connected", v3, v4, v5, v6, v7, v8, "HandleDynamicCSLPeriod");
  }
}

uint64_t ot::Notifier::Update<ot::Mle::DeviceRole>(void *a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
{
  v5 = 0;
  if (*a2 == *a3)
  {
    ot::Notifier::SignalIfFirst(a1, a4);
    return 24;
  }

  else
  {
    *a2 = *a3;
    ot::Notifier::Signal(a1, a4);
  }

  return v5;
}

{
  return ot::Notifier::Update<ot::Mle::DeviceRole>(a1, a2, a3, a4);
}

void ot::Mle::Mle::SetAttachState(unsigned __int8 *a1, unsigned __int8 a2)
{
  if (a2 != a1[132])
  {
    v14 = ot::Mle::Mle::AttachStateToString(a1[132]);
    ot::Mle::Mle::AttachStateToString(a2);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "AttachState %s -> %s", v2, v3, v4, v5, v6, v7, v14);
    ot::Mle::RoleToString(a1[130]);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mle::kLogModuleName, "BT Load: In %s, mRole is %s", v8, v9, v10, v11, v12, v13, "SetAttachState");
    ot::Mle::Mle::SetThreadCoexConfig(a1, 1u, a1[130], a2);
    a1[132] = a2;
  }
}

uint64_t ot::Mle::Mle::IncrementAttachCounter(uint64_t this)
{
  if (!++*(this + 148))
  {
    --*(this + 148);
  }

  ++*(this + 626);
  return this;
}

uint64_t ot::Mle::Mle::GenerateMleIid(ot::Mle::Mle *this)
{
  Address = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1024));
  Iid = ot::Ip6::Address::GetIid(Address);
  return ot::Ip6::InterfaceIdentifier::GenerateRandom(Iid);
}

void ot::Mle::Mle::Restore(ot::Mle::Mle *this)
{
  v128 = this;
  active = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ActiveDatasetManager>(this);
  ot::MeshCoP::DatasetManager::Restore(active);
  IgnoreError();
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
  ot::MeshCoP::DatasetManager::Restore(v2);
  IgnoreError();
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(this);
  ot::DuaManager::Restore(v3);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(this);
  v127 = ot::Settings::Read<ot::SettingsBase::NetworkInfo>(v4, v130);
  if (v127)
  {
    ot::ErrorToString(v127);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "%s: Read NetworkInfo failed, error=%s.", v5, v6, v7, v8, v9, v10, "Restore");
    if (v127 == 23)
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "%s: Clear mWasChild for new home setting file.", v11, v12, v13, v14, v15, v16, "Restore");
      *(this + 64) = 0;
    }
  }

  else
  {
    v109 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
    KeySequence = ot::SettingsBase::NetworkInfo::GetKeySequence(v130);
    ot::KeyManager::SetCurrentKeySequence(v109, KeySequence, 0);
    v110 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
    MleFrameCounter = ot::SettingsBase::NetworkInfo::GetMleFrameCounter(v130);
    ot::KeyManager::SetMleFrameCounter(v110, MleFrameCounter);
    v111 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
    MacFrameCounter = ot::SettingsBase::NetworkInfo::GetMacFrameCounter(v130);
    ot::KeyManager::SetAllMacFrameCounters(v111, MacFrameCounter, 0);
    ot::SettingsBase::NetworkInfo::GetKeySequence(v130);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: Setting Key Sequence: %u", v20, v21, v22, v23, v24, v25, "Restore");
    ot::SettingsBase::NetworkInfo::GetMleFrameCounter(v130);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: Setting MLE Frame Counter: %u", v26, v27, v28, v29, v30, v31, "Restore");
    ot::SettingsBase::NetworkInfo::GetMacFrameCounter(v130);
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: Setting All MAC Frame Counter: %u", v32, v33, v34, v35, v36, v37, "Restore");
    if (ot::SettingsBase::NetworkInfo::GetVersion(v130) == 4)
    {
      v107 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ExtAddress = ot::SettingsBase::NetworkInfo::GetExtAddress(v130);
      ot::Mac::Mac::SetExtAddress(v107, ExtAddress);
      Address = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1024));
      MeshLocalIid = ot::SettingsBase::NetworkInfo::GetMeshLocalIid(v130);
      ot::Ip6::Address::SetIid(Address, MeshLocalIid);
      if (ot::SettingsBase::NetworkInfo::GetRole(v130) - 2 <= 2)
      {
        *(this + 64) = ot::SettingsBase::NetworkInfo::GetWasChildStatus(v130);
        v101 = *(this + 64) & 1;
        ot::SettingsBase::NetworkInfo::GetWasChildStatus(v130);
        ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: Setting mWasChild to: %d, settings value: %d", v40, v41, v42, v43, v44, v45, "Restore");
        Role = ot::SettingsBase::NetworkInfo::GetRole(v130);
        if (Role == 3 || ot::SettingsBase::NetworkInfo::GetRole(v130) == 4)
        {
          rep = std::chrono::system_clock::now().__d_.__rep_;
          v125 = std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>::time_since_epoch[abi:dn200100](&rep);
          v122 = 1;
          std::chrono::duration<long long,std::ratio<1l,1000l>>::duration[abi:dn200100]<int,0>(&v123, &v122);
          v126 = std::chrono::operator/[abi:dn200100]<long long,std::ratio<1l,1000000l>,long long,std::ratio<1l,1000l>>(&v125, &v123);
          LastDetachTime = ot::SettingsBase::NetworkInfo::GetLastDetachTime(v130);
          if (v126 > LastDetachTime)
          {
            ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Router Restore: now(%llu), last detach time (%llu) diff_ms(%llu),routerRestoreThreshold(%u)", v47, v48, v49, v50, v51, v52, v126);
            if (v126 - LastDetachTime > 0x1D4C0)
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Router Restore: now is greater than last detach time, reset RLOC and exit restore", v53, v54, v55, v56, v57, v58, v99);
              v59 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
              ot::Mac::Mac::SetShortAddress(v59, 65534);
              *(this + 72) = -2;
              return;
            }
          }
        }

        v104 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        Rloc16 = ot::SettingsBase::NetworkInfo::GetRloc16(v130);
        ot::Mac::Mac::SetShortAddress(v104, Rloc16);
        *(this + 72) = ot::SettingsBase::NetworkInfo::GetRloc16(v130);
        v105 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        v61 = ot::SettingsBase::NetworkInfo::GetExtAddress(v130);
        ot::Mac::Mac::SetExtAddress(v105, v61);
        v106 = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1024));
        v62 = ot::SettingsBase::NetworkInfo::GetMeshLocalIid(v130);
        ot::Ip6::Address::SetIid(v106, v62);
        if (ot::SettingsBase::NetworkInfo::GetRloc16(v130) != 65534)
        {
          v63 = ot::SettingsBase::NetworkInfo::GetRloc16(v130);
          if (ot::Mle::IsChildRloc16(v63))
          {
            v64 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(this);
            if (ot::Settings::Read<ot::SettingsBase::ParentInfo>(v64, v129))
            {
              v65 = ot::SettingsBase::NetworkInfo::GetRloc16(v130);
              ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Invalid settings - no saved parent info with valid end-device RLOC16 0x%04x", v66, v67, v68, v69, v70, v71, v65);
              return;
            }

            ot::Parent::Clear((this + 192));
            v72 = ot::SettingsBase::ParentInfo::GetExtAddress(v129);
            ot::Neighbor::SetExtAddress(this + 24, v72);
            Version = ot::SettingsBase::ParentInfo::GetVersion(v129);
            ot::Neighbor::SetVersion(this + 192, Version);
            ot::Mle::DeviceMode::DeviceMode(&v120, 11);
            ot::Neighbor::SetDeviceMode(this + 192, v120);
            v74 = ot::SettingsBase::NetworkInfo::GetRloc16(v130);
            v75 = ot::Mle::RouterIdFromRloc16(v74);
            v76 = ot::Mle::Rloc16FromRouterId(v75);
            ot::Neighbor::SetRloc16(this + 192, v76);
            v117 = std::chrono::system_clock::now().__d_.__rep_;
            v118 = std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>::time_since_epoch[abi:dn200100](&v117);
            v115 = 1;
            std::chrono::duration<long long,std::ratio<1l,1000l>>::duration[abi:dn200100]<int,0>(&v116, &v115);
            v119 = std::chrono::operator/[abi:dn200100]<long long,std::ratio<1l,1000000l>,long long,std::ratio<1l,1000l>>(&v118, &v116);
            LastHeardTime = ot::SettingsBase::ParentInfo::GetLastHeardTime(v129);
            if (v119 > LastHeardTime)
            {
              if (ot::Mle::Mle::isThreadCertEnabled(this))
              {
                v113 = 240000;
              }

              else
              {
                ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "%s: Cert Flag disabled", v83, v84, v85, v86, v87, v88, "Restore");
                v113 = 30000;
              }

              ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Parent Restore: now(%llu), last heard time (%llu) diff_ms(%llu),kParentRestoreThreshold_ms(%u)", v83, v84, v85, v86, v87, v88, v119);
              if (v119 - LastHeardTime > v113)
              {
                ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Parent Restore: now is greater than last heard time, reset RLOC", v89, v90, v91, v92, v93, v94, v100);
                ot::Neighbor::SetState(this + 192, 0);
                ot::Neighbor::SetRloc16(this + 192, 65534);
              }

              else
              {
                ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Parent Restore now(%llu) is less than last heard time(%llu), dont reset RLOC ", v89, v90, v91, v92, v93, v94, v119);
                ot::Neighbor::SetState(this + 192, 1);
              }
            }

            else
            {
              ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Parent Restore now(%llu) is less than last heard time(%llu), dont reset RLOC,possible wrap around", v77, v78, v79, v80, v81, v82, v119);
              ot::Neighbor::SetState(this + 192, 1);
            }

            *(this + 73) = ot::Neighbor::GetRloc16((this + 192));
          }

          else
          {
            v102 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
            v95 = ot::Mle::Mle::GetRloc16(this);
            v96 = ot::Mle::RouterIdFromRloc16(v95);
            ot::Mle::MleRouter::SetRouterId(v102, v96);
            v103 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
            PreviousPartitionId = ot::SettingsBase::NetworkInfo::GetPreviousPartitionId(v130);
            ot::Mle::MleRouter::SetPreviousPartitionId(v103, PreviousPartitionId);
            v98 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
            ot::ChildTable::Restore(v98);
          }

          *(this + 129) = *(this + 129) & 0xDF | (32 * (ot::SettingsBase::NetworkInfo::GetRole(v130) == 4));
          *(this + 129) = *(this + 129) & 0xFB | 4;
        }
      }
    }
  }
}

uint64_t ot::Settings::Read<ot::SettingsBase::NetworkInfo>(ot::InstanceLocator *a1, ot::SettingsBase::NetworkInfo *a2)
{
  ot::SettingsBase::NetworkInfo::Init(a2);
  return ot::Settings::ReadEntry(a1, 3u, a2, 0x2Fu);
}

{
  return ot::Settings::Read<ot::SettingsBase::NetworkInfo>(a1, a2);
}

uint64_t ot::KeyManager::SetMleFrameCounter(uint64_t this, int a2)
{
  *(this + 56) = a2;
  return this;
}

{
  return ot::KeyManager::SetMleFrameCounter(this, a2);
}

uint64_t std::chrono::operator/[abi:dn200100]<long long,std::ratio<1l,1000000l>,long long,std::ratio<1l,1000l>>(void *a1, uint64_t a2)
{
  v7 = a1;
  v6 = a2;
  v5 = *a1;
  v3 = std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>::__get_np[abi:dn200100](&v5);
  std::chrono::duration<long long,std::ratio<1l,1000000l>>::duration[abi:dn200100]<long long,std::ratio<1l,1000l>,0>(&v4, v6);
  return v3 / std::__tree_iterator<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,std::__tree_node<std::__value_type<ot::Ip6::InterfaceIdentifier,ot::matterSubscriptionInfo>,void *> *,long>::__get_np[abi:dn200100](&v4);
}

uint64_t ot::SettingsBase::NetworkInfo::GetLastDetachTime(ot::SettingsBase::NetworkInfo *this)
{
  return *(this + 38);
}

{
  return ot::SettingsBase::NetworkInfo::GetLastDetachTime(this);
}

uint64_t ot::Settings::Read<ot::SettingsBase::ParentInfo>(ot::InstanceLocator *a1, ot::SettingsBase::ParentInfo *a2)
{
  ot::SettingsBase::ParentInfo::Init(a2);
  return ot::Settings::ReadEntry(a1, 4u, a2, 0x16u);
}

{
  return ot::Settings::Read<ot::SettingsBase::ParentInfo>(a1, a2);
}

uint64_t ot::Mle::MleRouter::SetPreviousPartitionId(uint64_t this, int a2)
{
  *(this + 35696) = a2;
  return this;
}

{
  return ot::Mle::MleRouter::SetPreviousPartitionId(this, a2);
}

uint64_t ot::Mle::Mle::StoreParentInfo(ot::Mle::Mle *this)
{
  v33 = this;
  v32 = 0;
  v31 = 0;
  if (!ot::Mle::Mle::IsAttached(this) || !ot::Mle::Mle::IsChild(this))
  {
    goto LABEL_7;
  }

  ot::SettingsBase::ParentInfo::Init(v34);
  ot::Neighbor::GetExtAddress((this + 192));
  ot::SettingsBase::ParentInfo::SetExtAddress(v34, v1);
  Version = ot::Neighbor::GetVersion((this + 192));
  ot::SettingsBase::ParentInfo::SetVersion(v34, Version);
  ot::Neighbor::GetExtAddress((this + 192));
  Parent = ot::NeighborTable::FindParent((this + 344), v3, 1);
  v30 = Parent;
  if (!Parent)
  {
    v32 = 23;
    goto LABEL_8;
  }

  Now = ot::TimerMilli::GetNow(Parent);
  LastHeard = ot::Neighbor::GetLastHeard(v30);
  v31 = ot::Time::operator-(&Now, &LastHeard);
  rep = std::chrono::system_clock::now().__d_.__rep_;
  v26 = std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>::time_since_epoch[abi:dn200100](&rep);
  v23 = 1;
  std::chrono::duration<long long,std::ratio<1l,1000l>>::duration[abi:dn200100]<int,0>(&v24, &v23);
  v27 = std::chrono::operator/[abi:dn200100]<long long,std::ratio<1l,1000000l>,long long,std::ratio<1l,1000l>>(&v26, &v24);
  v31 = v27 - v31;
  ot::SettingsBase::ParentInfo::SetLastHeardTime(v34, v31);
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(this);
  v6 = ot::Settings::Save<ot::SettingsBase::ParentInfo>(v5, v34);
  v32 = v6;
  if (!v6)
  {
LABEL_7:
    IsAttached = ot::Mle::Mle::IsAttached(this);
    ot::Mle::Mle::IsChild(this);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Store Parent Information isAttached=%d isChild=%d lastTransactionTime=%llu", v7, v8, v9, v10, v11, v12, IsAttached);
  }

LABEL_8:
  if (v32)
  {
    v13 = ot::ErrorToString(v32);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mle::kLogModuleName, "Store Parent Information failed error=%s", v14, v15, v16, v17, v18, v19, v13);
  }

  return v32;
}

BOOL ot::Mle::Mle::IsAttached(ot::Mle::Mle *this)
{
  v3 = 1;
  if (!ot::Mle::Mle::IsChild(this))
  {
    v3 = 1;
    if (!ot::Mle::Mle::IsRouter(this))
    {
      return ot::Mle::Mle::IsLeader(this);
    }
  }

  return v3;
}

uint64_t ot::SettingsBase::ParentInfo::Init(ot::SettingsBase::ParentInfo *this)
{
  ot::Clearable<ot::SettingsBase::ParentInfo>::Clear(this);
  return ot::SettingsBase::ParentInfo::SetVersion(this, 2u);
}

{
  return ot::SettingsBase::ParentInfo::Init(this);
}

uint64_t ot::SettingsBase::ParentInfo::SetExtAddress(uint64_t this, const ot::Mac::ExtAddress *a2)
{
  *(this + 12) = *a2;
  return this;
}

{
  return ot::SettingsBase::ParentInfo::SetExtAddress(this, a2);
}

uint64_t ot::SettingsBase::ParentInfo::SetVersion(ot::SettingsBase::ParentInfo *this, unsigned __int16 a2)
{
  result = ot::LittleEndian::HostSwap16(a2);
  *(this + 10) = result;
  return result;
}

{
  return ot::SettingsBase::ParentInfo::SetVersion(this, a2);
}

uint64_t ot::SettingsBase::ParentInfo::SetLastHeardTime(uint64_t this, uint64_t a2)
{
  *(this + 4) = a2;
  return this;
}

{
  return ot::SettingsBase::ParentInfo::SetLastHeardTime(this, a2);
}

uint64_t ot::Settings::Save<ot::SettingsBase::ParentInfo>(ot::InstanceLocator *a1, ot::SettingsBase::NetworkInfo *a2)
{
  return ot::Settings::SaveEntry(a1, 4, a2, v3, 0x16u);
}

{
  return ot::Settings::Save<ot::SettingsBase::ParentInfo>(a1, a2);
}

uint64_t ot::Mle::Mle::Store(ot::Mle::Mle *this)
{
  v35 = 0;
  if (!ot::Mle::Mle::IsCslPeripheralAttaching(this))
  {
    ot::SettingsBase::NetworkInfo::Init(v36);
    if (ot::Mle::Mle::IsAttached(this))
    {
      ot::SettingsBase::NetworkInfo::SetRole(v36, *(this + 130));
      Rloc16 = ot::Mle::Mle::GetRloc16(this);
      ot::SettingsBase::NetworkInfo::SetRloc16(v36, Rloc16);
      PartitionId = ot::Mle::LeaderData::GetPartitionId((this + 184));
      ot::SettingsBase::NetworkInfo::SetPreviousPartitionId(v36, PartitionId);
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ExtAddress = ot::Mac::Mac::GetExtAddress(v3);
      ot::SettingsBase::NetworkInfo::SetExtAddress(v36, ExtAddress);
      Address = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1024));
      Iid = ot::Ip6::Address::GetIid(Address);
      ot::SettingsBase::NetworkInfo::SetMeshLocalIid(v36, Iid);
      ot::SettingsBase::NetworkInfo::SetVersion(v36, 4u);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Store Last detach time=%llu", v7, v8, v9, v10, v11, v12, *(this + 110));
      ot::SettingsBase::NetworkInfo::SetLastDetachTime(v36, *(this + 110));
      ot::SettingsBase::NetworkInfo::SetWasChildStatus(v36, *(this + 64) & 1);
      if (ot::Mle::Mle::IsChild(this))
      {
        ot::Mle::Mle::StoreParentInfo(this);
      }
    }

    else
    {
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(this);
      if (ot::Settings::Read<ot::SettingsBase::NetworkInfo>(v13, v36))
      {
        return v35;
      }
    }

    v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
    CurrentKeySequence = ot::KeyManager::GetCurrentKeySequence(v14);
    ot::SettingsBase::NetworkInfo::SetKeySequence(v36, CurrentKeySequence);
    v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
    MleFrameCounter = ot::KeyManager::GetMleFrameCounter(v16);
    ot::SettingsBase::NetworkInfo::SetMleFrameCounter(v36, MleFrameCounter + 1000);
    v18 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
    MaximumMacFrameCounter = ot::KeyManager::GetMaximumMacFrameCounter(v18);
    ot::SettingsBase::NetworkInfo::SetMacFrameCounter(v36, MaximumMacFrameCounter + 1000);
    v20 = ot::Mle::DeviceMode::Get((this + 131));
    ot::SettingsBase::NetworkInfo::SetDeviceMode(v36, v20);
    v21 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Settings>(this);
    v35 = ot::Settings::Save<ot::SettingsBase::NetworkInfo>(v21, v36);
    if (!v35)
    {
      v32 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
      v22 = ot::SettingsBase::NetworkInfo::GetMleFrameCounter(v36);
      ot::KeyManager::SetStoredMleFrameCounter(v32, v22);
      v33 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
      MacFrameCounter = ot::SettingsBase::NetworkInfo::GetMacFrameCounter(v36);
      ot::KeyManager::SetStoredMacFrameCounter(v33, MacFrameCounter);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mle::kLogModuleName, "Store Network Information", v24, v25, v26, v27, v28, v29, v31);
    }
  }

  return v35;
}

uint64_t ot::SettingsBase::NetworkInfo::Init(ot::SettingsBase::NetworkInfo *this)
{
  ot::Clearable<ot::SettingsBase::NetworkInfo>::Clear(this);
  return ot::SettingsBase::NetworkInfo::SetVersion(this, 2u);
}

{
  return ot::SettingsBase::NetworkInfo::Init(this);
}

_BYTE *ot::SettingsBase::NetworkInfo::SetRole(_BYTE *this, char a2)
{
  *this = a2;
  return this;
}

{
  return ot::SettingsBase::NetworkInfo::SetRole(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetRloc16(ot::SettingsBase::NetworkInfo *this, unsigned __int16 a2)
{
  result = ot::LittleEndian::HostSwap16(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::SettingsBase::NetworkInfo::SetRloc16(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetPreviousPartitionId(ot::SettingsBase::NetworkInfo *this, unsigned int a2)
{
  result = ot::LittleEndian::HostSwap32(a2);
  *(this + 4) = result;
  return result;
}

{
  return ot::SettingsBase::NetworkInfo::SetPreviousPartitionId(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetExtAddress(uint64_t this, const ot::Mac::ExtAddress *a2)
{
  *(this + 20) = *a2;
  return this;
}

{
  return ot::SettingsBase::NetworkInfo::SetExtAddress(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetMeshLocalIid(uint64_t this, const ot::Ip6::InterfaceIdentifier *a2)
{
  *(this + 28) = *a2;
  return this;
}

{
  return ot::SettingsBase::NetworkInfo::SetMeshLocalIid(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetVersion(ot::SettingsBase::NetworkInfo *this, unsigned __int16 a2)
{
  result = ot::LittleEndian::HostSwap16(a2);
  *(this + 18) = result;
  return result;
}

{
  return ot::SettingsBase::NetworkInfo::SetVersion(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetLastDetachTime(uint64_t this, uint64_t a2)
{
  *(this + 38) = a2;
  return this;
}

{
  return ot::SettingsBase::NetworkInfo::SetLastDetachTime(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetWasChildStatus(uint64_t this, char a2)
{
  *(this + 46) = a2 & 1;
  return this;
}

{
  return ot::SettingsBase::NetworkInfo::SetWasChildStatus(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetKeySequence(ot::SettingsBase::NetworkInfo *this, unsigned int a2)
{
  result = ot::LittleEndian::HostSwap32(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::SettingsBase::NetworkInfo::SetKeySequence(this, a2);
}

uint64_t ot::SettingsBase::NetworkInfo::SetMleFrameCounter(ot::SettingsBase::NetworkInfo *this, unsigned int a2)
{
  result = ot::LittleEndian::HostSwap32(a2);
  *(this + 2) = result;
  return result;
}

{
  return ot::SettingsBase::NetworkInfo::SetMleFrameCounter(this, a2);
}

uint64_t ot::KeyManager::GetMleFrameCounter(ot::KeyManager *this)
{
  return *(this + 14);
}

{
  return ot::KeyManager::GetMleFrameCounter(this);
}

uint64_t ot::SettingsBase::NetworkInfo::SetMacFrameCounter(ot::SettingsBase::NetworkInfo *this, unsigned int a2)
{
  result = ot::LittleEndian::HostSwap32(a2);
  *(this + 3) = result;
  return result;
}

{
  return ot::SettingsBase::NetworkInfo::SetMacFrameCounter(this, a2);
}

uint64_t ot::KeyManager::GetMaximumMacFrameCounter(ot::KeyManager *this)
{
  return ot::Mac::LinkFrameCounters::GetMaximum((this + 52));
}

{
  return ot::KeyManager::GetMaximumMacFrameCounter(this);
}

uint64_t ot::SettingsBase::NetworkInfo::SetDeviceMode(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::SettingsBase::NetworkInfo::SetDeviceMode(this, a2);
}

uint64_t ot::Settings::Save<ot::SettingsBase::NetworkInfo>(ot::InstanceLocator *a1, ot::SettingsBase::NetworkInfo *a2)
{
  return ot::Settings::SaveEntry(a1, 3, a2, v3, 0x2Fu);
}

{
  return ot::Settings::Save<ot::SettingsBase::NetworkInfo>(a1, a2);
}

uint64_t ot::KeyManager::SetStoredMleFrameCounter(uint64_t this, int a2)
{
  *(this + 64) = a2;
  return this;
}

{
  return ot::KeyManager::SetStoredMleFrameCounter(this, a2);
}

uint64_t ot::KeyManager::SetStoredMacFrameCounter(uint64_t this, int a2)
{
  *(this + 60) = a2;
  return this;
}

{
  return ot::KeyManager::SetStoredMacFrameCounter(this, a2);
}

uint64_t ot::Mle::Mle::UpdateLastDetachTime(ot::Mle::Mle *this)
{
  v8 = this;
  rep = std::chrono::system_clock::now().__d_.__rep_;
  v6 = std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>::time_since_epoch[abi:dn200100](&rep);
  v3 = 1;
  std::chrono::duration<long long,std::ratio<1l,1000l>>::duration[abi:dn200100]<int,0>(&v4, &v3);
  v7 = std::chrono::operator/[abi:dn200100]<long long,std::ratio<1l,1000000l>,long long,std::ratio<1l,1000l>>(&v6, &v4);
  return ot::Mle::Mle::SetLastDetachTime(this, v7);
}

uint64_t ot::Mle::Mle::SetLastDetachTime(uint64_t this, uint64_t a2)
{
  *(this + 880) = a2;
  return this;
}

{
  return ot::Mle::Mle::SetLastDetachTime(this, a2);
}

uint64_t ot::Mle::Mle::BecomeDetached(ot::Mle::Mle *this)
{
  v12 = 0;
  if (ot::Mle::Mle::IsDisabled(this))
  {
    return 13;
  }

  else if (!ot::Mle::Mle::IsDetached(this) || *(this + 132) != 2)
  {
    if (!*(this + 133))
    {
      v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::PendingDatasetManager>(this);
      ot::MeshCoP::DatasetManager::Restore(v1);
      IgnoreError();
    }

    ot::Mle::Mle::SetStateDetached(this);
    ot::Neighbor::SetState(this + 192, 0);
    ot::Mle::Mle::SetRloc16(this, 0xFFFEu);
    isThreadStateMachineEnabled = ot::Mle::Mle::isThreadStateMachineEnabled(this);
    ot::InstanceLocator::GetInstance(this);
    if (!otPlatVendorGetThreadJoinSession() && isThreadStateMachineEnabled && (ot::Mle::Mle::GetDeviceMode(this), ot::Mle::Mle::IsMinimalEndDevice(this)))
    {
      if (*(this + 74))
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "ThreadConnection: Attach SED/SSED attempt %d unsuccessful, stop retries", v2, v3, v4, v5, v6, v7, *(this + 74));
        *(this + 74) = 0;
        v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
        ot::Notifier::Signal(v8, 0x200000000);
      }

      else
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "ThreadConnection: Attach SED/SSED attempt %d unsuccessful, will continue more retries", v2, v3, v4, v5, v6, v7, *(this + 74));
        ot::Mle::Mle::Attach(this, 0);
      }
    }

    else
    {
      ot::Mle::Mle::Attach(this, 0);
    }
  }

  return v12;
}

uint64_t ot::Mle::Mle::BecomeChild(ot::Mle::Mle *this)
{
  v3 = 0;
  if (ot::Mle::Mle::IsDisabled(this))
  {
    return 13;
  }

  else if (ot::Mle::Mle::IsAttaching(this))
  {
    return 5;
  }

  else
  {
    ot::Mle::Mle::Attach(this, 0);
  }

  return v3;
}

BOOL ot::Mle::Mle::IsAttaching(ot::Mle::Mle *this)
{
  return *(this + 132) != 0;
}

{
  return ot::Mle::Mle::IsAttaching(this);
}

uint64_t ot::Mle::Mle::SearchForBetterParent(ot::Mle::Mle *this)
{
  v3 = 0;
  if (ot::Mle::Mle::IsChild(this))
  {
    ot::Mle::Mle::Attach(this, 4);
  }

  else
  {
    return 13;
  }

  return v3;
}

uint64_t ot::Mle::Mle::GetAttachStartDelay(ot::Mle::Mle *this)
{
  v18 = 1;
  if (ot::Mle::Mle::IsDetached(this))
  {
    if (*(this + 74))
    {
      v16 = *(this + 74) - 1;
      if (v16 >= 0x20uLL || (1 << v16) > 0x27)
      {
        v18 = ot::Random::NonCrypto::AddJitter(0x2710, 0x7D0u);
      }

      else
      {
        v18 = 251 << v16;
      }

      Uint32InRange = ot::Random::NonCrypto::GetUint32InRange(0, 0x32u);
      if (Uint32InRange != 0 && Uint32InRange + v18 >= v18)
      {
        v18 += Uint32InRange;
      }

      v14 = *(this + 74);
      ot::ToUlong(v18 / 0x3E8);
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Attach attempt %u unsuccessful, will try again in %lu.%03u seconds", v7, v8, v9, v10, v11, v12, v14);
    }

    else
    {
      v18 = 20;
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Delay before 1st Attach Attempt: %d", v1, v2, v3, v4, v5, v6, 20);
    }
  }

  return v18;
}

BOOL ot::Mle::Mle::IsRouterOrLeader(ot::Mle::Mle *this)
{
  v3 = 1;
  if (!ot::Mle::Mle::IsRouter(this))
  {
    return ot::Mle::Mle::IsLeader(this);
  }

  return v3;
}

_BYTE *ot::Mac::Mac::SetBeaconEnabled(_BYTE *this, char a2)
{
  *this = *this & 0xEF | (16 * (a2 & 1));
  return this;
}

{
  return ot::Mac::Mac::SetBeaconEnabled(this, a2);
}

void ot::Mle::Mle::SetStateChild(ot::Mle::Mle *this, unsigned __int16 a2)
{
  if (ot::Mle::Mle::IsLeader(this))
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Ip6::Netif::RemoveUnicastAddress(v7, (v2 + 35712));
  }

  ot::Mle::Mle::SetRloc16(this, a2);
  ot::Mle::Mle::SetRole(this, 2);
  ot::Mle::Mle::SetAttachState(this, 0);
  ot::TimerMilli::Start((this + 888), 0x4E20u);
  *(this + 133) = 0;
  *(this + 139) = 0;
  *(this + 140) = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::SetBeaconEnabled(v3, 0);
  ot::Mle::Mle::ScheduleMessageTransmissionTimer(this);
  if (ot::Mle::Mle::IsFullThreadDevice(this))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::MleRouter::HandleChildStart(v4, *(this + 134));
  }

  ot::Mle::Mle::InformPreviousChannel(this);
  if (*(this + 73) != 65534)
  {
    v6 = *(this + 73);
    if (v6 != ot::Neighbor::GetRloc16((this + 192)))
    {
      ++*(this + 340);
      ++*(this + 402);
      ot::Mle::Mle::InformPreviousParent(this);
    }
  }

  *(this + 73) = ot::Neighbor::GetRloc16((this + 192));
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  ot::Mac::Mac::UpdateCsl(v5, 0);
}

uint64_t ot::Mle::Mle::InformPreviousChannel(uint64_t this)
{
  v3 = this;
  if (*(this + 152) != 0xFFFF)
  {
    if (ot::Mle::Mle::IsChild(this) || (this = ot::Mle::Mle::IsRouter(v3), (this & 1) != 0))
    {
      if (!ot::Mle::Mle::IsFullThreadDevice(v3) || ot::Mle::Mle::IsRouter(v3) || (v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v3), this = ot::Mle::MleRouter::IsRouterRoleTransitionPending(v1), (this & 1) == 0))
      {
        *(v3 + 76) = -1;
        v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AnnounceBeginServer>(v3);
        return ot::AnnounceBeginServer::SendAnnounce(v2, 1 << *(v3 + 142), 3, 0x3E8u);
      }
    }
  }

  return this;
}

void ot::Mle::Mle::InformPreviousParent(ot::Mle::Mle *this)
{
  v15 = this;
  v14 = 0;
  v13 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v12);
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(this);
  v13 = ot::Ip6::Ip6::NewMessage(v1, 0);
  if (v13)
  {
    v14 = ot::Message::SetLength(v13, 0);
    if (!v14)
    {
      MeshLocalEid = ot::Mle::Mle::GetMeshLocalEid(this);
      ot::Ip6::MessageInfo::SetSockAddr(v12, MeshLocalEid);
      PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v12);
      ot::Ip6::Address::SetToRoutingLocator(PeerAddr, this + 123, *(this + 73));
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Ip6>(this);
      v14 = ot::Ip6::Ip6::SendDatagram(v4, v13, v12, 0x3Bu);
      if (!v14)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Sending message to inform previous parent 0x%04x", v5, v6, v7, v8, v9, v10, *(this + 73));
      }
    }
  }

  else
  {
    v14 = 3;
  }

  ot::Logger::LogOnError(&ot::Mle::kLogModuleName, v14, "inform previous parent");
  if (v14)
  {
    if (v13)
    {
      ot::Message::Free(v13);
    }
  }
}

void ot::Mle::Mle::SetTimeout(ot::Mle::Mle *this, unsigned int a2)
{
  v4 = ot::Max<unsigned int>(a2, 5u);
  if (*(this + 39) != v4)
  {
    *(this + 39) = v4;
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
    ot::DataPollSender::RecalculatePollPeriod(v2);
    if (ot::Mle::Mle::IsChild(this))
    {
      ot::Mle::Mle::SendChildUpdateRequest(this);
      IgnoreError();
    }
  }
}

uint64_t ot::Mle::Mle::SetDeviceMode(_BYTE *a1, char a2)
{
  v33 = a2;
  v32 = a1;
  v31 = 0;
  v30 = a1[131];
  if (ot::Mle::DeviceMode::IsValid(&v33))
  {
    if (ot::Unequatable<ot::Mle::DeviceMode>::operator!=(a1 + 131, &v33))
    {
      a1[131] = v33;
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(a1);
      ot::Utils::HistoryTracker::RecordNetworkInfo(v2);
      v27 = ot::Mle::DeviceMode::Get(&v30);
      ot::Mle::DeviceMode::Get((a1 + 131));
      ot::Mle::DeviceMode::ToString((a1 + 131), v34);
      ot::String<(unsigned short)45>::AsCString(v34);
      ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "Mode 0x%02x -> 0x%02x [%s]", v3, v4, v5, v6, v7, v8, v27);
      ot::Mle::Mle::Store(a1);
      IgnoreError();
      if (!ot::Mle::DeviceMode::IsFullThreadDevice(&v33))
      {
        v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
        ot::Mle::MleRouter::ClearAlternateRloc16(v9);
      }

      if (!ot::Mle::Mle::IsAttached(a1))
      {
        goto LABEL_17;
      }

      v29 = 0;
      if (ot::Mle::Mle::IsFullRouter(a1))
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: Node type is Full Router", v10, v11, v12, v13, v14, v15, "SetDeviceMode");
        ot::Mle::Mle::SetThreadCoexConfig(a1, 0, 4u, 0);
      }

      IsFullThreadDevice = ot::Mle::DeviceMode::IsFullThreadDevice(&v30);
      if (IsFullThreadDevice != ot::Mle::DeviceMode::IsFullThreadDevice((a1 + 131)))
      {
        v29 = 1;
      }

      if ((a1[129] & 0x10) == 0 && ot::Mle::DeviceMode::IsRxOnWhenIdle(&v30) && !ot::Mle::DeviceMode::IsRxOnWhenIdle((a1 + 131)))
      {
        v29 = 1;
      }

      if (v29)
      {
        ot::Mle::Mle::ResetAttachCounter(a1);
        ot::Mle::Mle::BecomeDetached(a1);
        IgnoreError();
      }

      else
      {
LABEL_17:
        if (ot::Mle::Mle::IsDetached(a1))
        {
          ot::Mle::Mle::ResetAttachCounter(a1);
          ot::Mle::Mle::SetStateDetached(a1);
          ot::Mle::Mle::Attach(a1, 0);
        }

        else if (ot::Mle::Mle::IsChild(a1))
        {
          Rloc16 = ot::Mle::Mle::GetRloc16(a1);
          ot::Mle::Mle::SetStateChild(a1, Rloc16);
          ot::Mle::Mle::SendChildUpdateRequest(a1);
          IgnoreError();
        }
      }
    }
  }

  else
  {
    v31 = 7;
  }

  if (ot::Mle::Mle::IsSleepyRouter(a1) || ot::Mle::Mle::IsMinimalEndDevice(a1))
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mle::kLogModuleName, "%s: Remove any children before transitioning to Sleepy Router or SED Role", v17, v18, v19, v20, v21, v22, "SetDeviceMode");
    v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
    ot::Mle::MleRouter::RemoveChildren(v23);
    v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MessagePool>(a1);
    ot::MessagePool::ReclaimAllBuffers(v24);
  }

  return v31;
}

uint64_t ot::Mle::DeviceMode::IsValid(ot::Mle::DeviceMode *this)
{
  return 1;
}

{
  return ot::Mle::DeviceMode::IsValid(this);
}

BOOL ot::Unequatable<ot::Mle::DeviceMode>::operator!=(const void *a1, const void *a2)
{
  return !ot::Equatable<ot::Mle::DeviceMode>::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::Mle::DeviceMode>::operator!=(a1, a2);
}

uint64_t ot::Mle::Mle::SetLeaderData(ot::Mle::Mle *this, const ot::Mle::LeaderData *a2)
{
  PartitionId = ot::Mle::LeaderData::GetPartitionId(a2);
  Weighting = ot::Mle::LeaderData::GetWeighting(a2);
  LeaderRouterId = ot::Mle::LeaderData::GetLeaderRouterId(a2);
  return ot::Mle::Mle::SetLeaderData(this, PartitionId, Weighting, LeaderRouterId);
}

uint64_t ot::Mle::Mle::SetLeaderData(ot::Mle::Mle *this, int a2, char a3, char a4)
{
  if (ot::Mle::LeaderData::GetPartitionId((this + 184)) == a2)
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    ot::Notifier::SignalIfFirst(v7, 128);
  }

  else
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    ot::Mle::MleRouter::HandlePartitionChange(v4);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    ot::Notifier::Signal(v5, 128);
    ++*(this + 314);
    ++*(this + 400);
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(this);
    ot::AppMetricsManager::UpdateSystemWideThreadMeshReachabilityStatusLastTimestamp(v6, 9u);
  }

  ot::Mle::LeaderData::SetPartitionId(this + 46, a2);
  ot::Mle::LeaderData::SetWeighting(this + 184, a3);
  return ot::Mle::LeaderData::SetLeaderRouterId(this + 184, a4);
}

_DWORD *ot::Mle::LeaderData::SetPartitionId(_DWORD *this, int a2)
{
  *this = a2;
  return this;
}

{
  return ot::Mle::LeaderData::SetPartitionId(this, a2);
}

uint64_t ot::Mle::LeaderData::SetWeighting(uint64_t this, char a2)
{
  *(this + 4) = a2;
  return this;
}

{
  return ot::Mle::LeaderData::SetWeighting(this, a2);
}

uint64_t ot::Mle::LeaderData::SetLeaderRouterId(uint64_t this, char a2)
{
  *(this + 7) = a2;
  return this;
}

{
  return ot::Mle::LeaderData::SetLeaderRouterId(this, a2);
}

uint64_t ot::Mle::Mle::GetLeaderRloc16(ot::Mle::Mle *this)
{
  LeaderId = ot::Mle::Mle::GetLeaderId(this);
  return ot::Mle::Rloc16FromRouterId(LeaderId);
}

{
  return ot::Mle::Mle::GetLeaderRloc16(this);
}

uint64_t ot::Mle::CommissionerAloc16FromId(ot::Mle *this)
{
  return ((this & 7) - 976);
}

{
  return ot::Mle::CommissionerAloc16FromId(this);
}

uint64_t ot::Mle::ServiceAlocFromId(ot::Mle *this)
{
  return this + 64528;
}

{
  return ot::Mle::ServiceAlocFromId(this);
}

uint64_t ot::Mle::Mle::GetLeaderData(ot::Mle::Mle *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  Version = ot::NetworkData::Leader::GetVersion(v1, 0);
  ot::Mle::LeaderData::SetDataVersion(this + 184, Version);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  v4 = ot::NetworkData::Leader::GetVersion(v3, 1);
  ot::Mle::LeaderData::SetStableDataVersion(this + 184, v4);
  return this + 184;
}

uint64_t ot::Mle::LeaderData::SetDataVersion(uint64_t this, char a2)
{
  *(this + 5) = a2;
  return this;
}

{
  return ot::Mle::LeaderData::SetDataVersion(this, a2);
}

uint64_t ot::NetworkData::Leader::GetVersion(uint64_t a1, char a2)
{
  if (a2)
  {
    return *(a1 + 10);
  }

  else
  {
    return *(a1 + 11);
  }
}

{
  return ot::NetworkData::Leader::GetVersion(a1, a2);
}

uint64_t ot::Mle::LeaderData::SetStableDataVersion(uint64_t this, char a2)
{
  *(this + 6) = a2;
  return this;
}

{
  return ot::Mle::LeaderData::SetStableDataVersion(this, a2);
}

BOOL ot::Mle::Mle::HasUnregisteredAddress(ot::Mle::Mle *this)
{
  v15 = this;
  v14 = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
  ot::Ip6::Netif::GetUnicastAddresses(v1);
  v13[1] = v2;
  v13[0] = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::begin(v2);
  v12 = ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::end();
  while (ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator!=(v13, &v12))
  {
    v11 = ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator*(v13);
    Address = ot::Ip6::Netif::UnicastAddress::GetAddress(v11);
    if (!ot::Ip6::Address::IsLinkLocalUnicast(Address))
    {
      v4 = ot::Ip6::Netif::UnicastAddress::GetAddress(v11);
      if (!ot::Mle::Mle::IsRoutingLocator(this, v4))
      {
        v5 = ot::Ip6::Netif::UnicastAddress::GetAddress(v11);
        if (!ot::Mle::Mle::IsAnycastLocator(this, v5))
        {
          v9 = ot::Ip6::Netif::UnicastAddress::GetAddress(v11);
          MeshLocalEid = ot::Mle::Mle::GetMeshLocalEid(this);
          if (ot::Unequatable<ot::Ip6::Address>::operator!=(v9, MeshLocalEid))
          {
            return 1;
          }
        }
      }
    }

    ot::ItemPtrIterator<ot::Ip6::Netif::UnicastAddress,ot::LinkedList<ot::Ip6::Netif::UnicastAddress>::Iterator>::operator++(v13);
  }

  if (!ot::Mle::Mle::IsRxOnWhenIdle(this))
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(this);
    return ot::Ip6::Netif::HasAnyExternalMulticastAddress(v7);
  }

  return v14;
}

BOOL ot::Mle::Mle::IsRoutingLocator(ot::Mle::Mle *this, const ot::Ip6::Address *a2)
{
  v4 = 0;
  if (ot::Mle::Mle::IsMeshLocalAddress(this, a2))
  {
    Iid = ot::Ip6::Address::GetIid(a2);
    return ot::Ip6::InterfaceIdentifier::IsRoutingLocator(Iid);
  }

  return v4;
}

BOOL ot::Mle::Mle::IsAnycastLocator(ot::Mle::Mle *this, const ot::Ip6::Address *a2)
{
  v4 = 0;
  if (ot::Mle::Mle::IsMeshLocalAddress(this, a2))
  {
    Iid = ot::Ip6::Address::GetIid(a2);
    return ot::Ip6::InterfaceIdentifier::IsAnycastLocator(Iid);
  }

  return v4;
}

BOOL ot::Ip6::Netif::HasAnyExternalMulticastAddress(ot::Ip6::Netif *this)
{
  v2[3] = this;
  ot::Ip6::Netif::ExternalMulticastAddress::Iterator::Iterator(v2, this, 0);
  return !ot::ItemPtrIterator<ot::Ip6::Netif::ExternalMulticastAddress,ot::Ip6::Netif::ExternalMulticastAddress::Iterator>::IsDone(v2);
}

{
  return ot::Ip6::Netif::HasAnyExternalMulticastAddress(this);
}

uint64_t ot::Mle::Mle::SetCslTimeout(uint64_t this, int a2)
{
  v4 = this;
  if (*(this + 160) != a2)
  {
    *(this + 160) = a2;
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
    ot::DataPollSender::RecalculatePollPeriod(v2);
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(v4);
    this = ot::Mac::Mac::IsCslEnabled(v3);
    if (this)
    {
      return ot::Mle::Mle::ScheduleChildUpdateRequest(v4);
    }
  }

  return this;
}