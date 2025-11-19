uint64_t CLMicroLocationProto::RetrievedLoi::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 48);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, *(this + 24), a2, a4);
    v6 = *(v5 + 48);
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

  v7 = *(v5 + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 48);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v8 = *(v5 + 16);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 48);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(5, *(v5 + 28), a2, a4);
    if ((*(v5 + 48) & 0x20) == 0)
    {
      return this;
    }

    goto LABEL_13;
  }

LABEL_11:
  v9 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBytes();
  v6 = *(v5 + 48);
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((v6 & 0x20) == 0)
  {
    return this;
  }

LABEL_13:
  v10 = *(v5 + 40);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, v10, a2, a4);
}

uint64_t CLMicroLocationProto::RetrievedLoi::ByteSize(CLMicroLocationProto::RetrievedLoi *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    if (v2)
    {
      v5 = *(this + 6);
      if ((v5 & 0x80000000) != 0)
      {
        v3 = 11;
        if ((v2 & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v5 >= 0x80)
      {
        v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
        v2 = *(this + 12);
        if ((v2 & 2) == 0)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v3 = 2;
        if ((v2 & 2) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      v3 = 0;
      if ((v2 & 2) == 0)
      {
        goto LABEL_22;
      }
    }

    v6 = *(this + 1);
    v7 = *(v6 + 23);
    v8 = v7;
    v9 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v10 = *(v6 + 23);
    }

    else
    {
      v10 = v9;
    }

    if (v10 >= 0x80)
    {
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v10);
      v7 = *(v6 + 23);
      v9 = *(v6 + 8);
      v2 = *(this + 12);
      v8 = *(v6 + 23);
    }

    else
    {
      v11 = 1;
    }

    if (v8 < 0)
    {
      v7 = v9;
    }

    v3 += v11 + v7 + 1;
LABEL_22:
    if ((v2 & 4) != 0)
    {
      v12 = *(this + 2);
      v13 = *(v12 + 23);
      v14 = v13;
      v15 = *(v12 + 8);
      if ((v13 & 0x80u) == 0)
      {
        v16 = *(v12 + 23);
      }

      else
      {
        v16 = v15;
      }

      if (v16 >= 0x80)
      {
        v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
        v13 = *(v12 + 23);
        v15 = *(v12 + 8);
        v2 = *(this + 12);
        v14 = *(v12 + 23);
      }

      else
      {
        v17 = 1;
      }

      if (v14 < 0)
      {
        v13 = v15;
      }

      v3 += v17 + v13 + 1;
      if ((v2 & 8) == 0)
      {
LABEL_24:
        if ((v2 & 0x10) == 0)
        {
LABEL_50:
          result = ((v2 >> 4) & 2) + v3;
          goto LABEL_51;
        }

LABEL_44:
        v24 = *(this + 7);
        if ((v24 & 0x80000000) != 0)
        {
          v25 = 11;
        }

        else if (v24 >= 0x80)
        {
          v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v24) + 1;
          v2 = *(this + 12);
        }

        else
        {
          v25 = 2;
        }

        v3 += v25;
        goto LABEL_50;
      }
    }

    else if ((v2 & 8) == 0)
    {
      goto LABEL_24;
    }

    v18 = *(this + 4);
    v19 = *(v18 + 23);
    v20 = v19;
    v21 = *(v18 + 8);
    if ((v19 & 0x80u) == 0)
    {
      v22 = *(v18 + 23);
    }

    else
    {
      v22 = v21;
    }

    if (v22 >= 0x80)
    {
      v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v22);
      v19 = *(v18 + 23);
      v21 = *(v18 + 8);
      v2 = *(this + 12);
      v20 = *(v18 + 23);
    }

    else
    {
      v23 = 1;
    }

    if (v20 < 0)
    {
      v19 = v21;
    }

    v3 += v23 + v19 + 1;
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_44;
  }

  result = 0;
LABEL_51:
  *(this + 11) = result;
  return result;
}

void CLMicroLocationProto::RetrievedLoi::CheckTypeAndMergeFrom(CLMicroLocationProto::RetrievedLoi *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::RetrievedLoi::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::ReceivedEvent::MergeFrom(CLMicroLocationProto::ReceivedEvent *this, const CLMicroLocationProto::ReceivedEvent *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v76);
  }

  v4 = *(a2 + 73);
  if (!v4)
  {
    goto LABEL_53;
  }

  if (v4)
  {
    *(this + 73) |= 1u;
    v5 = *(this + 1);
    if (!v5)
    {
      operator new();
    }

    v6 = *(a2 + 1);
    if (!v6)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v6 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 8);
    }

    CLMicroLocationProto::ReceivedEventAction::MergeFrom(v5, v6);
    v4 = *(a2 + 73);
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

  *(this + 73) |= 2u;
  v7 = *(this + 2);
  if (!v7)
  {
    operator new();
  }

  v8 = *(a2 + 2);
  if (!v8)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v8 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 16);
  }

  CLMicroLocationProto::AppLaunch::MergeFrom(v7, v8);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 4u;
  v9 = *(this + 3);
  if (!v9)
  {
    operator new();
  }

  v10 = *(a2 + 3);
  if (!v10)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v10 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 24);
  }

  CLMicroLocationProto::BacklightOn::MergeFrom(v9, v10);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 8u;
  v11 = *(this + 4);
  if (!v11)
  {
    operator new();
  }

  v12 = *(a2 + 4);
  if (!v12)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v12 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 32);
  }

  CLMicroLocationProto::BatteryChargerConnected::MergeFrom(v11, v12);
  v4 = *(a2 + 73);
  if ((v4 & 0x10) == 0)
  {
LABEL_9:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_10;
    }

LABEL_38:
    *(this + 73) |= 0x20u;
    v15 = *(this + 6);
    if (!v15)
    {
      operator new();
    }

    v16 = *(a2 + 6);
    if (!v16)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v16 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 48);
    }

    CLMicroLocationProto::HomeKitAccessory::MergeFrom(v15, v16);
    v4 = *(a2 + 73);
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
  *(this + 73) |= 0x10u;
  v13 = *(this + 5);
  if (!v13)
  {
    operator new();
  }

  v14 = *(a2 + 5);
  if (!v14)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v14 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 40);
  }

  CLMicroLocationProto::ForcedRecording::MergeFrom(v13, v14);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 0x40u;
  v17 = *(this + 7);
  if (!v17)
  {
    operator new();
  }

  v18 = *(a2 + 7);
  if (!v18)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v18 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 56);
  }

  CLMicroLocationProto::HomeKitScene::MergeFrom(v17, v18);
  v4 = *(a2 + 73);
  if ((v4 & 0x80) != 0)
  {
LABEL_48:
    *(this + 73) |= 0x80u;
    v19 = *(this + 8);
    if (!v19)
    {
      operator new();
    }

    v20 = *(a2 + 8);
    if (!v20)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v20 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 64);
    }

    CLMicroLocationProto::NowPlaying::MergeFrom(v19, v20);
    v4 = *(a2 + 73);
  }

LABEL_53:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_103;
  }

  if ((v4 & 0x100) != 0)
  {
    *(this + 73) |= 0x100u;
    v21 = *(this + 9);
    if (!v21)
    {
      operator new();
    }

    v22 = *(a2 + 9);
    if (!v22)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v22 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 72);
    }

    CLMicroLocationProto::RecordingRequest::MergeFrom(v21, v22);
    v4 = *(a2 + 73);
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

  *(this + 73) |= 0x200u;
  v23 = *(this + 10);
  if (!v23)
  {
    operator new();
  }

  v24 = *(a2 + 10);
  if (!v24)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v24 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 80);
  }

  CLMicroLocationProto::TruthLabelDonation::MergeFrom(v23, v24);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 0x400u;
  v25 = *(this + 11);
  if (!v25)
  {
    operator new();
  }

  v26 = *(a2 + 11);
  if (!v26)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v26 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 88);
  }

  CLMicroLocationProto::LearnModel::MergeFrom(v25, v26);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 0x800u;
  v27 = *(this + 12);
  if (!v27)
  {
    operator new();
  }

  v28 = *(a2 + 12);
  if (!v28)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v28 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 96);
  }

  CLMicroLocationProto::LearnCompleted::MergeFrom(v27, v28);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 0x1000u;
  v29 = *(this + 13);
  if (!v29)
  {
    operator new();
  }

  v30 = *(a2 + 13);
  if (!v30)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v30 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 104);
  }

  CLMicroLocationProto::SensorsScanComplete::MergeFrom(v29, v30);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 0x2000u;
  v31 = *(this + 14);
  if (!v31)
  {
    operator new();
  }

  v32 = *(a2 + 14);
  if (!v32)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v32 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 112);
  }

  CLMicroLocationProto::StartSpectating::MergeFrom(v31, v32);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 0x4000u;
  v33 = *(this + 15);
  if (!v33)
  {
    operator new();
  }

  v34 = *(a2 + 15);
  if (!v34)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v34 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 120);
  }

  CLMicroLocationProto::StopSpectating::MergeFrom(v33, v34);
  v4 = *(a2 + 73);
  if ((v4 & 0x8000) != 0)
  {
LABEL_98:
    *(this + 73) |= 0x8000u;
    v35 = *(this + 16);
    if (!v35)
    {
      operator new();
    }

    v36 = *(a2 + 16);
    if (!v36)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v36 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 128);
    }

    CLMicroLocationProto::ServiceCreate::MergeFrom(v35, v36);
    v4 = *(a2 + 73);
  }

LABEL_103:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_153;
  }

  if ((v4 & 0x10000) != 0)
  {
    *(this + 73) |= 0x10000u;
    v37 = *(this + 17);
    if (!v37)
    {
      operator new();
    }

    v38 = *(a2 + 17);
    if (!v38)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v38 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 136);
    }

    CLMicroLocationProto::ServiceDelete::MergeFrom(v37, v38);
    v4 = *(a2 + 73);
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

  *(this + 73) |= 0x20000u;
  v39 = *(this + 18);
  if (!v39)
  {
    operator new();
  }

  v40 = *(a2 + 18);
  if (!v40)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v40 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 144);
  }

  CLMicroLocationProto::ServiceConnect::MergeFrom(v39, v40);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 0x40000u;
  v41 = *(this + 19);
  if (!v41)
  {
    operator new();
  }

  v42 = *(a2 + 19);
  if (!v42)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v42 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 152);
  }

  CLMicroLocationProto::ServiceDisconnect::MergeFrom(v41, v42);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 0x80000u;
  v43 = *(this + 20);
  if (!v43)
  {
    operator new();
  }

  v44 = *(a2 + 20);
  if (!v44)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v44 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 160);
  }

  CLMicroLocationProto::ServiceStartUpdating::MergeFrom(v43, v44);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 0x100000u;
  v45 = *(this + 21);
  if (!v45)
  {
    operator new();
  }

  v46 = *(a2 + 21);
  if (!v46)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v46 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 168);
  }

  CLMicroLocationProto::ServiceStopUpdating::MergeFrom(v45, v46);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 0x200000u;
  v47 = *(this + 22);
  if (!v47)
  {
    operator new();
  }

  v48 = *(a2 + 22);
  if (!v48)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v48 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 176);
  }

  CLMicroLocationProto::RequestObservation::MergeFrom(v47, v48);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 0x400000u;
  v49 = *(this + 23);
  if (!v49)
  {
    operator new();
  }

  v50 = *(a2 + 23);
  if (!v50)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v50 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 184);
  }

  CLMicroLocationProto::RequestPrediction::MergeFrom(v49, v50);
  v4 = *(a2 + 73);
  if ((v4 & 0x800000) != 0)
  {
LABEL_148:
    *(this + 73) |= 0x800000u;
    v51 = *(this + 24);
    if (!v51)
    {
      operator new();
    }

    v52 = *(a2 + 24);
    if (!v52)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v52 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 192);
    }

    CLMicroLocationProto::MiloInit::MergeFrom(v51, v52);
    v4 = *(a2 + 73);
  }

LABEL_153:
  if (!HIBYTE(v4))
  {
    goto LABEL_203;
  }

  if ((v4 & 0x1000000) != 0)
  {
    *(this + 73) |= 0x1000000u;
    v53 = *(this + 25);
    if (!v53)
    {
      operator new();
    }

    v54 = *(a2 + 25);
    if (!v54)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v54 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 200);
    }

    CLMicroLocationProto::MotionEvent::MergeFrom(v53, v54);
    v4 = *(a2 + 73);
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

  *(this + 73) |= 0x2000000u;
  v55 = *(this + 26);
  if (!v55)
  {
    operator new();
  }

  v56 = *(a2 + 26);
  if (!v56)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v56 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 208);
  }

  CLMicroLocationProto::LegacyThrottle::MergeFrom(v55, v56);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 0x4000000u;
  v57 = *(this + 27);
  if (!v57)
  {
    operator new();
  }

  v58 = *(a2 + 27);
  if (!v58)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v58 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 216);
  }

  CLMicroLocationProto::RetrievedLoi::MergeFrom(v57, v58);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 0x8000000u;
  v59 = *(this + 28);
  if (!v59)
  {
    operator new();
  }

  v60 = *(a2 + 28);
  if (!v60)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v60 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 224);
  }

  CLMicroLocationProto::TriggerEvent::MergeFrom(v59, v60);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 0x10000000u;
  v61 = *(this + 29);
  if (!v61)
  {
    operator new();
  }

  v62 = *(a2 + 29);
  if (!v62)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v62 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 232);
  }

  CLMicroLocationProto::LegacyClientStatusUpdate::MergeFrom(v61, v62);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 0x20000000u;
  v63 = *(this + 30);
  if (!v63)
  {
    operator new();
  }

  v64 = *(a2 + 30);
  if (!v64)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v64 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 240);
  }

  CLMicroLocationProto::SpectatingMotionUpdate::MergeFrom(v63, v64);
  v4 = *(a2 + 73);
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
  *(this + 73) |= 0x40000000u;
  v65 = *(this + 31);
  if (!v65)
  {
    operator new();
  }

  v66 = *(a2 + 31);
  if (!v66)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v66 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 248);
  }

  CLMicroLocationProto::EnabledStateUpdate::MergeFrom(v65, v66);
  if ((*(a2 + 73) & 0x80000000) != 0)
  {
LABEL_198:
    *(this + 73) |= 0x80000000;
    v67 = *(this + 32);
    if (!v67)
    {
      operator new();
    }

    v68 = *(a2 + 32);
    if (!v68)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v68 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 256);
    }

    CLMicroLocationProto::ScreenStateUpdate::MergeFrom(v67, v68);
  }

LABEL_203:
  LOBYTE(v69) = *(a2 + 296);
  if (!v69)
  {
    return;
  }

  if (*(a2 + 296))
  {
    *(this + 74) |= 1u;
    v70 = *(this + 33);
    if (!v70)
    {
      operator new();
    }

    v71 = *(a2 + 33);
    if (!v71)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v71 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 264);
    }

    CLMicroLocationProto::CloudBackupExport::MergeFrom(v70, v71);
    v69 = *(a2 + 74);
    if ((v69 & 2) == 0)
    {
LABEL_206:
      if ((v69 & 4) == 0)
      {
        return;
      }

      goto LABEL_218;
    }
  }

  else if ((*(a2 + 296) & 2) == 0)
  {
    goto LABEL_206;
  }

  *(this + 74) |= 2u;
  v72 = *(this + 34);
  if (!v72)
  {
    operator new();
  }

  v73 = *(a2 + 34);
  if (!v73)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v73 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 272);
  }

  CLMicroLocationProto::CloudBackupImport::MergeFrom(v72, v73);
  if ((*(a2 + 74) & 4) != 0)
  {
LABEL_218:
    *(this + 74) |= 4u;
    v74 = *(this + 35);
    if (!v74)
    {
      operator new();
    }

    v75 = *(a2 + 35);
    if (!v75)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v75 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 280);
    }

    CLMicroLocationProto::DataMigration::MergeFrom(v74, v75);
  }
}

void sub_25910270C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ReceivedEvent::~ReceivedEvent(CLMicroLocationProto::ReceivedEvent *this)
{
  *this = &unk_286A59178;
  CLMicroLocationProto::ReceivedEvent::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::ReceivedEvent::~ReceivedEvent(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::ReceivedEvent::SharedDtor(CLMicroLocationProto::ReceivedEvent *this)
{
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::ReceivedEvent::default_instance_ != this)
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
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 7);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(this + 8);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = *(this + 9);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = *(this + 10);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = *(this + 11);
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }

    v13 = *(this + 12);
    if (v13)
    {
      (*(*v13 + 8))(v13);
    }

    v14 = *(this + 13);
    if (v14)
    {
      (*(*v14 + 8))(v14);
    }

    v15 = *(this + 14);
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }

    v16 = *(this + 15);
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    v17 = *(this + 16);
    if (v17)
    {
      (*(*v17 + 8))(v17);
    }

    v18 = *(this + 17);
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }

    v19 = *(this + 18);
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }

    v20 = *(this + 19);
    if (v20)
    {
      (*(*v20 + 8))(v20);
    }

    v21 = *(this + 20);
    if (v21)
    {
      (*(*v21 + 8))(v21);
    }

    v22 = *(this + 21);
    if (v22)
    {
      (*(*v22 + 8))(v22);
    }

    v23 = *(this + 22);
    if (v23)
    {
      (*(*v23 + 8))(v23);
    }

    v24 = *(this + 23);
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    v25 = *(this + 24);
    if (v25)
    {
      (*(*v25 + 8))(v25);
    }

    v26 = *(this + 25);
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }

    v27 = *(this + 26);
    if (v27)
    {
      (*(*v27 + 8))(v27);
    }

    v28 = *(this + 27);
    if (v28)
    {
      (*(*v28 + 8))(v28);
    }

    v29 = *(this + 28);
    if (v29)
    {
      (*(*v29 + 8))(v29);
    }

    v30 = *(this + 29);
    if (v30)
    {
      (*(*v30 + 8))(v30);
    }

    v31 = *(this + 30);
    if (v31)
    {
      (*(*v31 + 8))(v31);
    }

    v32 = *(this + 31);
    if (v32)
    {
      (*(*v32 + 8))(v32);
    }

    v33 = *(this + 32);
    if (v33)
    {
      (*(*v33 + 8))(v33);
    }

    v34 = *(this + 33);
    if (v34)
    {
      (*(*v34 + 8))(v34);
    }

    v35 = *(this + 34);
    if (v35)
    {
      (*(*v35 + 8))(v35);
    }

    v36 = *(this + 35);
    if (v36)
    {
      v37 = *(*v36 + 8);

      v37();
    }
  }
}

uint64_t CLMicroLocationProto::ReceivedEvent::Clear(uint64_t this)
{
  v1 = this;
  v2 = (this + 292);
  v3 = *(this + 292);
  if (v3)
  {
    if (v3)
    {
      this = *(this + 8);
      if (this)
      {
        this = CLMicroLocationProto::ReceivedEventAction::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 2) != 0)
    {
      this = *(v1 + 16);
      if (this)
      {
        this = CLMicroLocationProto::AppLaunch::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 4) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = CLMicroLocationProto::BacklightOn::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 8) != 0)
    {
      v4 = *(v1 + 32);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 5;
        }

        *(v4 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x10) != 0)
    {
      v5 = *(v1 + 40);
      if (v5)
      {
        if (*(v5 + 16))
        {
          *(v5 + 8) = 7;
        }

        *(v5 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20) != 0)
    {
      this = *(v1 + 48);
      if (this)
      {
        this = CLMicroLocationProto::HomeKitAccessory::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x40) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = CLMicroLocationProto::HomeKitScene::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x80) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = CLMicroLocationProto::NowPlaying::Clear(this);
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF00) != 0)
  {
    if ((v3 & 0x100) != 0)
    {
      this = *(v1 + 72);
      if (this)
      {
        this = CLMicroLocationProto::RecordingRequest::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x200) != 0)
    {
      this = *(v1 + 80);
      if (this)
      {
        this = CLMicroLocationProto::TruthLabelDonation::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x400) != 0)
    {
      v6 = *(v1 + 88);
      if (v6)
      {
        if (*(v6 + 16))
        {
          *(v6 + 8) = 31;
        }

        *(v6 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x800) != 0)
    {
      v7 = *(v1 + 96);
      if (v7)
      {
        if (*(v7 + 16))
        {
          *(v7 + 8) = 32;
        }

        *(v7 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x1000) != 0)
    {
      v8 = *(v1 + 104);
      if (v8)
      {
        if (*(v8 + 16))
        {
          *(v8 + 8) = 33;
        }

        *(v8 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x2000) != 0)
    {
      v9 = *(v1 + 112);
      if (v9)
      {
        if (*(v9 + 16))
        {
          *(v9 + 8) = 34;
        }

        *(v9 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000) != 0)
    {
      v10 = *(v1 + 120);
      if (v10)
      {
        if (*(v10 + 16))
        {
          *(v10 + 8) = 35;
        }

        *(v10 + 16) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000) != 0)
    {
      this = *(v1 + 128);
      if (this)
      {
        this = CLMicroLocationProto::ServiceCreate::Clear(this);
        v3 = *v2;
      }
    }
  }

  if ((v3 & 0xFF0000) != 0)
  {
    if ((v3 & 0x10000) != 0)
    {
      this = *(v1 + 136);
      if (this)
      {
        this = CLMicroLocationProto::ServiceDelete::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000) != 0)
    {
      this = *(v1 + 144);
      if (this)
      {
        this = CLMicroLocationProto::ServiceConnect::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000) != 0)
    {
      this = *(v1 + 152);
      if (this)
      {
        this = CLMicroLocationProto::ServiceDisconnect::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000) != 0)
    {
      this = *(v1 + 160);
      if (this)
      {
        this = CLMicroLocationProto::ServiceStartUpdating::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x100000) != 0)
    {
      this = *(v1 + 168);
      if (this)
      {
        this = CLMicroLocationProto::ServiceStopUpdating::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x200000) != 0)
    {
      this = *(v1 + 176);
      if (this)
      {
        this = CLMicroLocationProto::RequestObservation::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x400000) != 0)
    {
      this = *(v1 + 184);
      if (this)
      {
        this = CLMicroLocationProto::RequestPrediction::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x800000) != 0)
    {
      this = *(v1 + 192);
      if (this)
      {
        this = CLMicroLocationProto::MiloInit::Clear(this);
        v3 = *v2;
      }
    }
  }

  if (HIBYTE(v3))
  {
    if ((v3 & 0x1000000) != 0)
    {
      this = *(v1 + 200);
      if (this)
      {
        this = CLMicroLocationProto::MotionEvent::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x2000000) != 0)
    {
      this = *(v1 + 208);
      if (this)
      {
        this = CLMicroLocationProto::LegacyThrottle::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x4000000) != 0)
    {
      this = *(v1 + 216);
      if (this)
      {
        this = CLMicroLocationProto::RetrievedLoi::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x8000000) != 0)
    {
      this = *(v1 + 224);
      if (this)
      {
        this = CLMicroLocationProto::TriggerEvent::Clear(this);
        v3 = *v2;
      }
    }

    if ((v3 & 0x10000000) != 0)
    {
      v11 = *(v1 + 232);
      if (v11)
      {
        if (*(v11 + 24))
        {
          *(v11 + 8) = 0x100000031;
          *(v11 + 16) = 0;
        }

        *(v11 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x20000000) != 0)
    {
      v12 = *(v1 + 240);
      if (v12)
      {
        if (*(v12 + 20))
        {
          *(v12 + 8) = 50;
          *(v12 + 12) = 0;
        }

        *(v12 + 20) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x40000000) != 0)
    {
      v13 = *(v1 + 248);
      if (v13)
      {
        v14 = *(v13 + 24);
        if (v14)
        {
          *(v13 + 8) = 51;
          *(v13 + 15) = 0;
        }

        if ((v14 & 0xFF00) != 0)
        {
          *(v13 + 19) = 0;
        }

        *(v13 + 24) = 0;
        v3 = *v2;
      }
    }

    if ((v3 & 0x80000000) != 0)
    {
      v15 = *(v1 + 256);
      if (v15)
      {
        if (*(v15 + 20))
        {
          *(v15 + 8) = 52;
          *(v15 + 12) = 0;
        }

        *(v15 + 20) = 0;
      }
    }
  }

  LOBYTE(v16) = *(v1 + 296);
  if (v16)
  {
    if (*(v1 + 296))
    {
      v17 = *(v1 + 264);
      if (v17)
      {
        if (*(v17 + 16))
        {
          *(v17 + 8) = 53;
        }

        *(v17 + 16) = 0;
        v16 = *(v1 + 296);
      }
    }

    if ((v16 & 2) != 0)
    {
      v18 = *(v1 + 272);
      if (v18)
      {
        if (*(v18 + 16))
        {
          *(v18 + 8) = 54;
        }

        *(v18 + 16) = 0;
        v16 = *(v1 + 296);
      }
    }

    if ((v16 & 4) != 0)
    {
      v19 = *(v1 + 280);
      if (v19)
      {
        if (*(v19 + 16))
        {
          *(v19 + 8) = 55;
        }

        *(v19 + 16) = 0;
      }
    }
  }

  *v2 = 0;
  return this;
}

uint64_t CLMicroLocationProto::TriggerEvent::Clear(uint64_t this)
{
  v1 = *(this + 84);
  if (v1)
  {
    *(this + 24) = 48;
    *(this + 8) = 0;
    *(this + 28) = 0;
    v2 = MEMORY[0x277D82C30];
    if ((v1 & 8) != 0)
    {
      v3 = *(this + 16);
      if (v3 != MEMORY[0x277D82C30])
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

    if ((*(this + 84) & 0x10) != 0)
    {
      v4 = *(this + 32);
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

    if ((*(this + 84) & 0x20) != 0)
    {
      v5 = *(this + 40);
      if (v5 != v2)
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
    }

    if ((*(this + 84) & 0x40) != 0)
    {
      v6 = *(this + 48);
      if (v6 != v2)
      {
        if (*(v6 + 23) < 0)
        {
          **v6 = 0;
          *(v6 + 8) = 0;
        }

        else
        {
          *v6 = 0;
          *(v6 + 23) = 0;
        }
      }
    }

    *(this + 29) = 0;
    v1 = *(this + 84);
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0;
    *(this + 72) = 0;
    if ((v1 & 0x800) != 0)
    {
      v7 = *(this + 64);
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

  *(this + 84) = 0;
  return this;
}

uint64_t CLMicroLocationProto::LegacyClientStatusUpdate::Clear(uint64_t this)
{
  if (*(this + 24))
  {
    *(this + 8) = 0x100000031;
    *(this + 16) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLMicroLocationProto::SpectatingMotionUpdate::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 50;
    *(this + 12) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CLMicroLocationProto::EnabledStateUpdate::Clear(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 8) = 51;
    *(this + 15) = 0;
  }

  if ((v1 & 0xFF00) != 0)
  {
    *(this + 19) = 0;
  }

  *(this + 24) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ScreenStateUpdate::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 52;
    *(this + 12) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t CLMicroLocationProto::CloudBackupExport::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 53;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLMicroLocationProto::CloudBackupImport::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 54;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLMicroLocationProto::DataMigration::Clear(uint64_t this)
{
  if (*(this + 16))
  {
    *(this + 8) = 55;
  }

  *(this + 16) = 0;
  return this;
}

uint64_t CLMicroLocationProto::ReceivedEvent::MergePartialFromCodedStream(CLMicroLocationProto::ReceivedEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
          goto LABEL_80;
        }

        *(this + 73) |= 1u;
        v7 = *(this + 1);
        if (!v7)
        {
          operator new();
        }

        v253 = 0;
        v8 = *(a2 + 1);
        if (v8 >= *(a2 + 2) || *v8 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v8;
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
        if (!CLMicroLocationProto::ReceivedEventAction::MergePartialFromCodedStream(v7, a2) || *(a2 + 36) != 1)
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
        if (v14 >= *(a2 + 2) || *v14 != 18)
        {
          continue;
        }

        *(a2 + 1) = v14 + 1;
        goto LABEL_92;
      case 2u:
        if (v6 != 2)
        {
          goto LABEL_80;
        }

LABEL_92:
        *(this + 73) |= 2u;
        v15 = *(this + 2);
        if (!v15)
        {
          operator new();
        }

        v253 = 0;
        v16 = *(a2 + 1);
        if (v16 >= *(a2 + 2) || *v16 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v16;
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
        if (!CLMicroLocationProto::AppLaunch::MergePartialFromCodedStream(v15, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v19 = *(a2 + 14);
        v12 = __OFSUB__(v19, 1);
        v20 = v19 - 1;
        if (v20 < 0 == v12)
        {
          *(a2 + 14) = v20;
        }

        v21 = *(a2 + 1);
        if (v21 >= *(a2 + 2) || *v21 != 34)
        {
          continue;
        }

        *(a2 + 1) = v21 + 1;
LABEL_106:
        *(this + 73) |= 4u;
        v22 = *(this + 3);
        if (!v22)
        {
          operator new();
        }

        v253 = 0;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v23;
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
        if (!CLMicroLocationProto::BacklightOn::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v26 = *(a2 + 14);
        v12 = __OFSUB__(v26, 1);
        v27 = v26 - 1;
        if (v27 < 0 == v12)
        {
          *(a2 + 14) = v27;
        }

        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 != 42)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_120:
        *(this + 73) |= 8u;
        v29 = *(this + 4);
        if (!v29)
        {
          operator new();
        }

        v253 = 0;
        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v30;
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
        if (!CLMicroLocationProto::BatteryChargerConnected::MergePartialFromCodedStream(v29, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v33 = *(a2 + 14);
        v12 = __OFSUB__(v33, 1);
        v34 = v33 - 1;
        if (v34 < 0 == v12)
        {
          *(a2 + 14) = v34;
        }

        v35 = *(a2 + 1);
        if (v35 >= *(a2 + 2) || *v35 != 58)
        {
          continue;
        }

        *(a2 + 1) = v35 + 1;
LABEL_134:
        *(this + 73) |= 0x10u;
        v36 = *(this + 5);
        if (!v36)
        {
          operator new();
        }

        v253 = 0;
        v37 = *(a2 + 1);
        if (v37 >= *(a2 + 2) || *v37 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v37;
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
        if (!CLMicroLocationProto::ForcedRecording::MergePartialFromCodedStream(v36, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v40 = *(a2 + 14);
        v12 = __OFSUB__(v40, 1);
        v41 = v40 - 1;
        if (v41 < 0 == v12)
        {
          *(a2 + 14) = v41;
        }

        v42 = *(a2 + 1);
        if (v42 >= *(a2 + 2) || *v42 != 74)
        {
          continue;
        }

        *(a2 + 1) = v42 + 1;
LABEL_148:
        *(this + 73) |= 0x20u;
        v43 = *(this + 6);
        if (!v43)
        {
          operator new();
        }

        v253 = 0;
        v44 = *(a2 + 1);
        if (v44 >= *(a2 + 2) || *v44 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v44;
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
        if (!CLMicroLocationProto::HomeKitAccessory::MergePartialFromCodedStream(v43, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v47 = *(a2 + 14);
        v12 = __OFSUB__(v47, 1);
        v48 = v47 - 1;
        if (v48 < 0 == v12)
        {
          *(a2 + 14) = v48;
        }

        v49 = *(a2 + 1);
        if (v49 >= *(a2 + 2) || *v49 != 82)
        {
          continue;
        }

        *(a2 + 1) = v49 + 1;
LABEL_162:
        *(this + 73) |= 0x40u;
        v50 = *(this + 7);
        if (!v50)
        {
          operator new();
        }

        v253 = 0;
        v51 = *(a2 + 1);
        if (v51 >= *(a2 + 2) || *v51 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v51;
          *(a2 + 1) = v51 + 1;
        }

        v52 = *(a2 + 14);
        v53 = *(a2 + 15);
        *(a2 + 14) = v52 + 1;
        if (v52 >= v53)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::HomeKitScene::MergePartialFromCodedStream(v50, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v54 = *(a2 + 14);
        v12 = __OFSUB__(v54, 1);
        v55 = v54 - 1;
        if (v55 < 0 == v12)
        {
          *(a2 + 14) = v55;
        }

        v56 = *(a2 + 1);
        if (v56 >= *(a2 + 2) || *v56 != 90)
        {
          continue;
        }

        *(a2 + 1) = v56 + 1;
LABEL_176:
        *(this + 73) |= 0x80u;
        v57 = *(this + 8);
        if (!v57)
        {
          operator new();
        }

        v253 = 0;
        v58 = *(a2 + 1);
        if (v58 >= *(a2 + 2) || *v58 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v58;
          *(a2 + 1) = v58 + 1;
        }

        v59 = *(a2 + 14);
        v60 = *(a2 + 15);
        *(a2 + 14) = v59 + 1;
        if (v59 >= v60)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::NowPlaying::MergePartialFromCodedStream(v57, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v61 = *(a2 + 14);
        v12 = __OFSUB__(v61, 1);
        v62 = v61 - 1;
        if (v62 < 0 == v12)
        {
          *(a2 + 14) = v62;
        }

        v63 = *(a2 + 1);
        if (v63 >= *(a2 + 2) || *v63 != 98)
        {
          continue;
        }

        *(a2 + 1) = v63 + 1;
LABEL_190:
        *(this + 73) |= 0x100u;
        v64 = *(this + 9);
        if (!v64)
        {
          operator new();
        }

        v253 = 0;
        v65 = *(a2 + 1);
        if (v65 >= *(a2 + 2) || *v65 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v65;
          *(a2 + 1) = v65 + 1;
        }

        v66 = *(a2 + 14);
        v67 = *(a2 + 15);
        *(a2 + 14) = v66 + 1;
        if (v66 >= v67)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::RecordingRequest::MergePartialFromCodedStream(v64, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v68 = *(a2 + 14);
        v12 = __OFSUB__(v68, 1);
        v69 = v68 - 1;
        if (v69 < 0 == v12)
        {
          *(a2 + 14) = v69;
        }

        v70 = *(a2 + 1);
        if (v70 >= *(a2 + 2) || *v70 != 106)
        {
          continue;
        }

        *(a2 + 1) = v70 + 1;
LABEL_204:
        *(this + 73) |= 0x200u;
        v71 = *(this + 10);
        if (!v71)
        {
          operator new();
        }

        v253 = 0;
        v72 = *(a2 + 1);
        if (v72 >= *(a2 + 2) || *v72 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v72;
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
        if (!CLMicroLocationProto::TruthLabelDonation::MergePartialFromCodedStream(v71, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v75 = *(a2 + 14);
        v12 = __OFSUB__(v75, 1);
        v76 = v75 - 1;
        if (v76 < 0 == v12)
        {
          *(a2 + 14) = v76;
        }

        v77 = *(a2 + 1);
        if (v77 >= *(a2 + 2) || *v77 != 114)
        {
          continue;
        }

        *(a2 + 1) = v77 + 1;
LABEL_218:
        *(this + 73) |= 0x400u;
        v78 = *(this + 11);
        if (!v78)
        {
          operator new();
        }

        v253 = 0;
        v79 = *(a2 + 1);
        if (v79 >= *(a2 + 2) || *v79 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v79;
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
        if (!CLMicroLocationProto::LearnModel::MergePartialFromCodedStream(v78, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v82 = *(a2 + 14);
        v12 = __OFSUB__(v82, 1);
        v83 = v82 - 1;
        if (v83 < 0 == v12)
        {
          *(a2 + 14) = v83;
        }

        v84 = *(a2 + 1);
        if (v84 >= *(a2 + 2) || *v84 != 122)
        {
          continue;
        }

        *(a2 + 1) = v84 + 1;
LABEL_232:
        *(this + 73) |= 0x800u;
        v85 = *(this + 12);
        if (!v85)
        {
          operator new();
        }

        v253 = 0;
        v86 = *(a2 + 1);
        if (v86 >= *(a2 + 2) || *v86 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v86;
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
        if (!CLMicroLocationProto::LearnCompleted::MergePartialFromCodedStream(v85, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v89 = *(a2 + 14);
        v12 = __OFSUB__(v89, 1);
        v90 = v89 - 1;
        if (v90 < 0 == v12)
        {
          *(a2 + 14) = v90;
        }

        v91 = *(a2 + 1);
        if (*(a2 + 4) - v91 <= 1 || *v91 != 130 || v91[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v91 + 2;
LABEL_247:
        *(this + 73) |= 0x1000u;
        v92 = *(this + 13);
        if (!v92)
        {
          operator new();
        }

        v253 = 0;
        v93 = *(a2 + 1);
        if (v93 >= *(a2 + 2) || *v93 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v93;
          *(a2 + 1) = v93 + 1;
        }

        v94 = *(a2 + 14);
        v95 = *(a2 + 15);
        *(a2 + 14) = v94 + 1;
        if (v94 >= v95)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::SensorsScanComplete::MergePartialFromCodedStream(v92, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v96 = *(a2 + 14);
        v12 = __OFSUB__(v96, 1);
        v97 = v96 - 1;
        if (v97 < 0 == v12)
        {
          *(a2 + 14) = v97;
        }

        v98 = *(a2 + 1);
        if (*(a2 + 4) - v98 <= 1 || *v98 != 138 || v98[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v98 + 2;
LABEL_262:
        *(this + 73) |= 0x2000u;
        v99 = *(this + 14);
        if (!v99)
        {
          operator new();
        }

        v253 = 0;
        v100 = *(a2 + 1);
        if (v100 >= *(a2 + 2) || *v100 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v100;
          *(a2 + 1) = v100 + 1;
        }

        v101 = *(a2 + 14);
        v102 = *(a2 + 15);
        *(a2 + 14) = v101 + 1;
        if (v101 >= v102)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::StartSpectating::MergePartialFromCodedStream(v99, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v103 = *(a2 + 14);
        v12 = __OFSUB__(v103, 1);
        v104 = v103 - 1;
        if (v104 < 0 == v12)
        {
          *(a2 + 14) = v104;
        }

        v105 = *(a2 + 1);
        if (*(a2 + 4) - v105 <= 1 || *v105 != 146 || v105[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v105 + 2;
LABEL_277:
        *(this + 73) |= 0x4000u;
        v106 = *(this + 15);
        if (!v106)
        {
          operator new();
        }

        v253 = 0;
        v107 = *(a2 + 1);
        if (v107 >= *(a2 + 2) || *v107 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v107;
          *(a2 + 1) = v107 + 1;
        }

        v108 = *(a2 + 14);
        v109 = *(a2 + 15);
        *(a2 + 14) = v108 + 1;
        if (v108 >= v109)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::StopSpectating::MergePartialFromCodedStream(v106, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v110 = *(a2 + 14);
        v12 = __OFSUB__(v110, 1);
        v111 = v110 - 1;
        if (v111 < 0 == v12)
        {
          *(a2 + 14) = v111;
        }

        v112 = *(a2 + 1);
        if (*(a2 + 4) - v112 <= 1 || *v112 != 154 || v112[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v112 + 2;
LABEL_292:
        *(this + 73) |= 0x8000u;
        v113 = *(this + 16);
        if (!v113)
        {
          operator new();
        }

        v253 = 0;
        v114 = *(a2 + 1);
        if (v114 >= *(a2 + 2) || *v114 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v114;
          *(a2 + 1) = v114 + 1;
        }

        v115 = *(a2 + 14);
        v116 = *(a2 + 15);
        *(a2 + 14) = v115 + 1;
        if (v115 >= v116)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::ServiceCreate::MergePartialFromCodedStream(v113, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v117 = *(a2 + 14);
        v12 = __OFSUB__(v117, 1);
        v118 = v117 - 1;
        if (v118 < 0 == v12)
        {
          *(a2 + 14) = v118;
        }

        v119 = *(a2 + 1);
        if (*(a2 + 4) - v119 <= 1 || *v119 != 162 || v119[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v119 + 2;
LABEL_307:
        *(this + 73) |= 0x10000u;
        v120 = *(this + 17);
        if (!v120)
        {
          operator new();
        }

        v253 = 0;
        v121 = *(a2 + 1);
        if (v121 >= *(a2 + 2) || *v121 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v121;
          *(a2 + 1) = v121 + 1;
        }

        v122 = *(a2 + 14);
        v123 = *(a2 + 15);
        *(a2 + 14) = v122 + 1;
        if (v122 >= v123)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::ServiceDelete::MergePartialFromCodedStream(v120, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v124 = *(a2 + 14);
        v12 = __OFSUB__(v124, 1);
        v125 = v124 - 1;
        if (v125 < 0 == v12)
        {
          *(a2 + 14) = v125;
        }

        v126 = *(a2 + 1);
        if (*(a2 + 4) - v126 <= 1 || *v126 != 170 || v126[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v126 + 2;
LABEL_322:
        *(this + 73) |= 0x20000u;
        v127 = *(this + 18);
        if (!v127)
        {
          operator new();
        }

        v253 = 0;
        v128 = *(a2 + 1);
        if (v128 >= *(a2 + 2) || *v128 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v128;
          *(a2 + 1) = v128 + 1;
        }

        v129 = *(a2 + 14);
        v130 = *(a2 + 15);
        *(a2 + 14) = v129 + 1;
        if (v129 >= v130)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::ServiceConnect::MergePartialFromCodedStream(v127, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v131 = *(a2 + 14);
        v12 = __OFSUB__(v131, 1);
        v132 = v131 - 1;
        if (v132 < 0 == v12)
        {
          *(a2 + 14) = v132;
        }

        v133 = *(a2 + 1);
        if (*(a2 + 4) - v133 <= 1 || *v133 != 178 || v133[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v133 + 2;
LABEL_337:
        *(this + 73) |= 0x40000u;
        v134 = *(this + 19);
        if (!v134)
        {
          operator new();
        }

        v253 = 0;
        v135 = *(a2 + 1);
        if (v135 >= *(a2 + 2) || *v135 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v135;
          *(a2 + 1) = v135 + 1;
        }

        v136 = *(a2 + 14);
        v137 = *(a2 + 15);
        *(a2 + 14) = v136 + 1;
        if (v136 >= v137)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::ServiceDisconnect::MergePartialFromCodedStream(v134, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v138 = *(a2 + 14);
        v12 = __OFSUB__(v138, 1);
        v139 = v138 - 1;
        if (v139 < 0 == v12)
        {
          *(a2 + 14) = v139;
        }

        v140 = *(a2 + 1);
        if (*(a2 + 4) - v140 <= 1 || *v140 != 186 || v140[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v140 + 2;
LABEL_352:
        *(this + 73) |= 0x80000u;
        v141 = *(this + 20);
        if (!v141)
        {
          operator new();
        }

        v253 = 0;
        v142 = *(a2 + 1);
        if (v142 >= *(a2 + 2) || *v142 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v142;
          *(a2 + 1) = v142 + 1;
        }

        v143 = *(a2 + 14);
        v144 = *(a2 + 15);
        *(a2 + 14) = v143 + 1;
        if (v143 >= v144)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::ServiceStartUpdating::MergePartialFromCodedStream(v141, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v145 = *(a2 + 14);
        v12 = __OFSUB__(v145, 1);
        v146 = v145 - 1;
        if (v146 < 0 == v12)
        {
          *(a2 + 14) = v146;
        }

        v147 = *(a2 + 1);
        if (*(a2 + 4) - v147 <= 1 || *v147 != 194 || v147[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v147 + 2;
LABEL_367:
        *(this + 73) |= 0x100000u;
        v148 = *(this + 21);
        if (!v148)
        {
          operator new();
        }

        v253 = 0;
        v149 = *(a2 + 1);
        if (v149 >= *(a2 + 2) || *v149 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v149;
          *(a2 + 1) = v149 + 1;
        }

        v150 = *(a2 + 14);
        v151 = *(a2 + 15);
        *(a2 + 14) = v150 + 1;
        if (v150 >= v151)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::ServiceStopUpdating::MergePartialFromCodedStream(v148, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v152 = *(a2 + 14);
        v12 = __OFSUB__(v152, 1);
        v153 = v152 - 1;
        if (v153 < 0 == v12)
        {
          *(a2 + 14) = v153;
        }

        v154 = *(a2 + 1);
        if (*(a2 + 4) - v154 <= 1 || *v154 != 202 || v154[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v154 + 2;
LABEL_382:
        *(this + 73) |= 0x200000u;
        v155 = *(this + 22);
        if (!v155)
        {
          operator new();
        }

        v253 = 0;
        v156 = *(a2 + 1);
        if (v156 >= *(a2 + 2) || *v156 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v156;
          *(a2 + 1) = v156 + 1;
        }

        v157 = *(a2 + 14);
        v158 = *(a2 + 15);
        *(a2 + 14) = v157 + 1;
        if (v157 >= v158)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::RequestObservation::MergePartialFromCodedStream(v155, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v159 = *(a2 + 14);
        v12 = __OFSUB__(v159, 1);
        v160 = v159 - 1;
        if (v160 < 0 == v12)
        {
          *(a2 + 14) = v160;
        }

        v161 = *(a2 + 1);
        if (*(a2 + 4) - v161 <= 1 || *v161 != 210 || v161[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v161 + 2;
LABEL_397:
        *(this + 73) |= 0x400000u;
        v162 = *(this + 23);
        if (!v162)
        {
          operator new();
        }

        v253 = 0;
        v163 = *(a2 + 1);
        if (v163 >= *(a2 + 2) || *v163 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v163;
          *(a2 + 1) = v163 + 1;
        }

        v164 = *(a2 + 14);
        v165 = *(a2 + 15);
        *(a2 + 14) = v164 + 1;
        if (v164 >= v165)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::RequestPrediction::MergePartialFromCodedStream(v162, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v166 = *(a2 + 14);
        v12 = __OFSUB__(v166, 1);
        v167 = v166 - 1;
        if (v167 < 0 == v12)
        {
          *(a2 + 14) = v167;
        }

        v168 = *(a2 + 1);
        if (*(a2 + 4) - v168 <= 1 || *v168 != 218 || v168[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v168 + 2;
LABEL_412:
        *(this + 73) |= 0x800000u;
        v169 = *(this + 24);
        if (!v169)
        {
          operator new();
        }

        v253 = 0;
        v170 = *(a2 + 1);
        if (v170 >= *(a2 + 2) || *v170 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v170;
          *(a2 + 1) = v170 + 1;
        }

        v171 = *(a2 + 14);
        v172 = *(a2 + 15);
        *(a2 + 14) = v171 + 1;
        if (v171 >= v172)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::MiloInit::MergePartialFromCodedStream(v169, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v173 = *(a2 + 14);
        v12 = __OFSUB__(v173, 1);
        v174 = v173 - 1;
        if (v174 < 0 == v12)
        {
          *(a2 + 14) = v174;
        }

        v175 = *(a2 + 1);
        if (*(a2 + 4) - v175 <= 1 || *v175 != 226 || v175[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v175 + 2;
LABEL_427:
        *(this + 73) |= 0x1000000u;
        v176 = *(this + 25);
        if (!v176)
        {
          operator new();
        }

        v253 = 0;
        v177 = *(a2 + 1);
        if (v177 >= *(a2 + 2) || *v177 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v177;
          *(a2 + 1) = v177 + 1;
        }

        v178 = *(a2 + 14);
        v179 = *(a2 + 15);
        *(a2 + 14) = v178 + 1;
        if (v178 >= v179)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::MotionEvent::MergePartialFromCodedStream(v176, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v180 = *(a2 + 14);
        v12 = __OFSUB__(v180, 1);
        v181 = v180 - 1;
        if (v181 < 0 == v12)
        {
          *(a2 + 14) = v181;
        }

        v182 = *(a2 + 1);
        if (*(a2 + 4) - v182 <= 1 || *v182 != 234 || v182[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v182 + 2;
LABEL_442:
        *(this + 73) |= 0x2000000u;
        v183 = *(this + 26);
        if (!v183)
        {
          operator new();
        }

        v253 = 0;
        v184 = *(a2 + 1);
        if (v184 >= *(a2 + 2) || *v184 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v184;
          *(a2 + 1) = v184 + 1;
        }

        v185 = *(a2 + 14);
        v186 = *(a2 + 15);
        *(a2 + 14) = v185 + 1;
        if (v185 >= v186)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::LegacyThrottle::MergePartialFromCodedStream(v183, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v187 = *(a2 + 14);
        v12 = __OFSUB__(v187, 1);
        v188 = v187 - 1;
        if (v188 < 0 == v12)
        {
          *(a2 + 14) = v188;
        }

        v189 = *(a2 + 1);
        if (*(a2 + 4) - v189 <= 1 || *v189 != 242 || v189[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v189 + 2;
LABEL_457:
        *(this + 73) |= 0x4000000u;
        v190 = *(this + 27);
        if (!v190)
        {
          operator new();
        }

        v253 = 0;
        v191 = *(a2 + 1);
        if (v191 >= *(a2 + 2) || *v191 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v191;
          *(a2 + 1) = v191 + 1;
        }

        v192 = *(a2 + 14);
        v193 = *(a2 + 15);
        *(a2 + 14) = v192 + 1;
        if (v192 >= v193)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::RetrievedLoi::MergePartialFromCodedStream(v190, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v194 = *(a2 + 14);
        v12 = __OFSUB__(v194, 1);
        v195 = v194 - 1;
        if (v195 < 0 == v12)
        {
          *(a2 + 14) = v195;
        }

        v196 = *(a2 + 1);
        if (*(a2 + 4) - v196 <= 1 || *v196 != 250 || v196[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v196 + 2;
LABEL_472:
        *(this + 73) |= 0x8000000u;
        v197 = *(this + 28);
        if (!v197)
        {
          operator new();
        }

        v253 = 0;
        v198 = *(a2 + 1);
        if (v198 >= *(a2 + 2) || *v198 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v198;
          *(a2 + 1) = v198 + 1;
        }

        v199 = *(a2 + 14);
        v200 = *(a2 + 15);
        *(a2 + 14) = v199 + 1;
        if (v199 >= v200)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::TriggerEvent::MergePartialFromCodedStream(v197, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v201 = *(a2 + 14);
        v12 = __OFSUB__(v201, 1);
        v202 = v201 - 1;
        if (v202 < 0 == v12)
        {
          *(a2 + 14) = v202;
        }

        v203 = *(a2 + 1);
        if (*(a2 + 4) - v203 <= 1 || *v203 != 130 || v203[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v203 + 2;
LABEL_487:
        *(this + 73) |= 0x10000000u;
        v204 = *(this + 29);
        if (!v204)
        {
          operator new();
        }

        v253 = 0;
        v205 = *(a2 + 1);
        if (v205 >= *(a2 + 2) || *v205 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v205;
          *(a2 + 1) = v205 + 1;
        }

        v206 = *(a2 + 14);
        v207 = *(a2 + 15);
        *(a2 + 14) = v206 + 1;
        if (v206 >= v207)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::LegacyClientStatusUpdate::MergePartialFromCodedStream(v204, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v208 = *(a2 + 14);
        v12 = __OFSUB__(v208, 1);
        v209 = v208 - 1;
        if (v209 < 0 == v12)
        {
          *(a2 + 14) = v209;
        }

        v210 = *(a2 + 1);
        if (*(a2 + 4) - v210 <= 1 || *v210 != 138 || v210[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v210 + 2;
LABEL_502:
        *(this + 73) |= 0x20000000u;
        v211 = *(this + 30);
        if (!v211)
        {
          operator new();
        }

        v253 = 0;
        v212 = *(a2 + 1);
        if (v212 >= *(a2 + 2) || *v212 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v212;
          *(a2 + 1) = v212 + 1;
        }

        v213 = *(a2 + 14);
        v214 = *(a2 + 15);
        *(a2 + 14) = v213 + 1;
        if (v213 >= v214)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::SpectatingMotionUpdate::MergePartialFromCodedStream(v211, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v215 = *(a2 + 14);
        v12 = __OFSUB__(v215, 1);
        v216 = v215 - 1;
        if (v216 < 0 == v12)
        {
          *(a2 + 14) = v216;
        }

        v217 = *(a2 + 1);
        if (*(a2 + 4) - v217 <= 1 || *v217 != 146 || v217[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v217 + 2;
LABEL_517:
        *(this + 73) |= 0x40000000u;
        v218 = *(this + 31);
        if (!v218)
        {
          operator new();
        }

        v253 = 0;
        v219 = *(a2 + 1);
        if (v219 >= *(a2 + 2) || *v219 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v219;
          *(a2 + 1) = v219 + 1;
        }

        v220 = *(a2 + 14);
        v221 = *(a2 + 15);
        *(a2 + 14) = v220 + 1;
        if (v220 >= v221)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::EnabledStateUpdate::MergePartialFromCodedStream(v218, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v222 = *(a2 + 14);
        v12 = __OFSUB__(v222, 1);
        v223 = v222 - 1;
        if (v223 < 0 == v12)
        {
          *(a2 + 14) = v223;
        }

        v224 = *(a2 + 1);
        if (*(a2 + 4) - v224 <= 1 || *v224 != 154 || v224[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v224 + 2;
LABEL_532:
        *(this + 73) |= 0x80000000;
        v225 = *(this + 32);
        if (!v225)
        {
          operator new();
        }

        v253 = 0;
        v226 = *(a2 + 1);
        if (v226 >= *(a2 + 2) || *v226 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v226;
          *(a2 + 1) = v226 + 1;
        }

        v227 = *(a2 + 14);
        v228 = *(a2 + 15);
        *(a2 + 14) = v227 + 1;
        if (v227 >= v228)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::ScreenStateUpdate::MergePartialFromCodedStream(v225, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v229 = *(a2 + 14);
        v12 = __OFSUB__(v229, 1);
        v230 = v229 - 1;
        if (v230 < 0 == v12)
        {
          *(a2 + 14) = v230;
        }

        v231 = *(a2 + 1);
        if (*(a2 + 4) - v231 <= 1 || *v231 != 162 || v231[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v231 + 2;
LABEL_547:
        *(this + 74) |= 1u;
        v232 = *(this + 33);
        if (!v232)
        {
          operator new();
        }

        v253 = 0;
        v233 = *(a2 + 1);
        if (v233 >= *(a2 + 2) || *v233 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v233;
          *(a2 + 1) = v233 + 1;
        }

        v234 = *(a2 + 14);
        v235 = *(a2 + 15);
        *(a2 + 14) = v234 + 1;
        if (v234 >= v235)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::CloudBackupExport::MergePartialFromCodedStream(v232, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v236 = *(a2 + 14);
        v12 = __OFSUB__(v236, 1);
        v237 = v236 - 1;
        if (v237 < 0 == v12)
        {
          *(a2 + 14) = v237;
        }

        v238 = *(a2 + 1);
        if (*(a2 + 4) - v238 <= 1 || *v238 != 170 || v238[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v238 + 2;
LABEL_562:
        *(this + 74) |= 2u;
        v239 = *(this + 34);
        if (!v239)
        {
          operator new();
        }

        v253 = 0;
        v240 = *(a2 + 1);
        if (v240 >= *(a2 + 2) || *v240 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v240;
          *(a2 + 1) = v240 + 1;
        }

        v241 = *(a2 + 14);
        v242 = *(a2 + 15);
        *(a2 + 14) = v241 + 1;
        if (v241 >= v242)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::CloudBackupImport::MergePartialFromCodedStream(v239, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v243 = *(a2 + 14);
        v12 = __OFSUB__(v243, 1);
        v244 = v243 - 1;
        if (v244 < 0 == v12)
        {
          *(a2 + 14) = v244;
        }

        v245 = *(a2 + 1);
        if (*(a2 + 4) - v245 <= 1 || *v245 != 178 || v245[1] != 2)
        {
          continue;
        }

        *(a2 + 1) = v245 + 2;
LABEL_577:
        *(this + 74) |= 4u;
        v246 = *(this + 35);
        if (!v246)
        {
          operator new();
        }

        v253 = 0;
        v247 = *(a2 + 1);
        if (v247 >= *(a2 + 2) || *v247 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v253))
          {
            return 0;
          }
        }

        else
        {
          v253 = *v247;
          *(a2 + 1) = v247 + 1;
        }

        v248 = *(a2 + 14);
        v249 = *(a2 + 15);
        *(a2 + 14) = v248 + 1;
        if (v248 >= v249)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::DataMigration::MergePartialFromCodedStream(v246, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v250 = *(a2 + 14);
        v12 = __OFSUB__(v250, 1);
        v251 = v250 - 1;
        if (v251 < 0 == v12)
        {
          *(a2 + 14) = v251;
        }

        if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }

        break;
      case 4u:
        if (v6 == 2)
        {
          goto LABEL_106;
        }

        goto LABEL_80;
      case 5u:
        if (v6 == 2)
        {
          goto LABEL_120;
        }

        goto LABEL_80;
      case 7u:
        if (v6 == 2)
        {
          goto LABEL_134;
        }

        goto LABEL_80;
      case 9u:
        if (v6 == 2)
        {
          goto LABEL_148;
        }

        goto LABEL_80;
      case 0xAu:
        if (v6 == 2)
        {
          goto LABEL_162;
        }

        goto LABEL_80;
      case 0xBu:
        if (v6 == 2)
        {
          goto LABEL_176;
        }

        goto LABEL_80;
      case 0xCu:
        if (v6 == 2)
        {
          goto LABEL_190;
        }

        goto LABEL_80;
      case 0xDu:
        if (v6 == 2)
        {
          goto LABEL_204;
        }

        goto LABEL_80;
      case 0xEu:
        if (v6 == 2)
        {
          goto LABEL_218;
        }

        goto LABEL_80;
      case 0xFu:
        if (v6 == 2)
        {
          goto LABEL_232;
        }

        goto LABEL_80;
      case 0x10u:
        if (v6 == 2)
        {
          goto LABEL_247;
        }

        goto LABEL_80;
      case 0x11u:
        if (v6 == 2)
        {
          goto LABEL_262;
        }

        goto LABEL_80;
      case 0x12u:
        if (v6 == 2)
        {
          goto LABEL_277;
        }

        goto LABEL_80;
      case 0x13u:
        if (v6 == 2)
        {
          goto LABEL_292;
        }

        goto LABEL_80;
      case 0x14u:
        if (v6 == 2)
        {
          goto LABEL_307;
        }

        goto LABEL_80;
      case 0x15u:
        if (v6 == 2)
        {
          goto LABEL_322;
        }

        goto LABEL_80;
      case 0x16u:
        if (v6 == 2)
        {
          goto LABEL_337;
        }

        goto LABEL_80;
      case 0x17u:
        if (v6 == 2)
        {
          goto LABEL_352;
        }

        goto LABEL_80;
      case 0x18u:
        if (v6 == 2)
        {
          goto LABEL_367;
        }

        goto LABEL_80;
      case 0x19u:
        if (v6 == 2)
        {
          goto LABEL_382;
        }

        goto LABEL_80;
      case 0x1Au:
        if (v6 == 2)
        {
          goto LABEL_397;
        }

        goto LABEL_80;
      case 0x1Bu:
        if (v6 == 2)
        {
          goto LABEL_412;
        }

        goto LABEL_80;
      case 0x1Cu:
        if (v6 == 2)
        {
          goto LABEL_427;
        }

        goto LABEL_80;
      case 0x1Du:
        if (v6 == 2)
        {
          goto LABEL_442;
        }

        goto LABEL_80;
      case 0x1Eu:
        if (v6 == 2)
        {
          goto LABEL_457;
        }

        goto LABEL_80;
      case 0x1Fu:
        if (v6 == 2)
        {
          goto LABEL_472;
        }

        goto LABEL_80;
      case 0x20u:
        if (v6 == 2)
        {
          goto LABEL_487;
        }

        goto LABEL_80;
      case 0x21u:
        if (v6 == 2)
        {
          goto LABEL_502;
        }

        goto LABEL_80;
      case 0x22u:
        if (v6 == 2)
        {
          goto LABEL_517;
        }

        goto LABEL_80;
      case 0x23u:
        if (v6 == 2)
        {
          goto LABEL_532;
        }

        goto LABEL_80;
      case 0x24u:
        if (v6 != 2)
        {
          goto LABEL_80;
        }

        goto LABEL_547;
      case 0x25u:
        if (v6 == 2)
        {
          goto LABEL_562;
        }

        goto LABEL_80;
      case 0x26u:
        if (v6 == 2)
        {
          goto LABEL_577;
        }

        goto LABEL_80;
      default:
LABEL_80:
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

uint64_t CLMicroLocationProto::ReceivedEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 292);
  if (v6)
  {
    v7 = *(this + 8);
    if (!v7)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v7 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 8);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(1, v7, a2, a4);
    v6 = *(v5 + 292);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_40;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = *(v5 + 16);
  if (!v8)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v8 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, v8, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_43;
  }

LABEL_40:
  v9 = *(v5 + 24);
  if (!v9)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v9 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v9, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_46;
  }

LABEL_43:
  v10 = *(v5 + 32);
  if (!v10)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v10 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(5, v10, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_49;
  }

LABEL_46:
  v11 = *(v5 + 40);
  if (!v11)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v11 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v11, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_52;
  }

LABEL_49:
  v12 = *(v5 + 48);
  if (!v12)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v12 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v12, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_55;
  }

LABEL_52:
  v13 = *(v5 + 56);
  if (!v13)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v13 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xA, v13, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_58;
  }

LABEL_55:
  v14 = *(v5 + 64);
  if (!v14)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v14 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v14, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_61;
  }

LABEL_58:
  v15 = *(v5 + 72);
  if (!v15)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v15 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 72);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v15, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_64;
  }

LABEL_61:
  v16 = *(v5 + 80);
  if (!v16)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v16 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xD, v16, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_67;
  }

LABEL_64:
  v17 = *(v5 + 88);
  if (!v17)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v17 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v17, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_70;
  }

LABEL_67:
  v18 = *(v5 + 96);
  if (!v18)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v18 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v18, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_73;
  }

LABEL_70:
  v19 = *(v5 + 104);
  if (!v19)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v19 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 104);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x10, v19, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_76;
  }

LABEL_73:
  v20 = *(v5 + 112);
  if (!v20)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v20 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 112);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v20, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x4000) == 0)
  {
LABEL_16:
    if ((v6 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_79;
  }

LABEL_76:
  v21 = *(v5 + 120);
  if (!v21)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v21 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 120);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x12, v21, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x8000) == 0)
  {
LABEL_17:
    if ((v6 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_82;
  }

LABEL_79:
  v22 = *(v5 + 128);
  if (!v22)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v22 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 128);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x13, v22, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x10000) == 0)
  {
LABEL_18:
    if ((v6 & 0x20000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_85;
  }

LABEL_82:
  v23 = *(v5 + 136);
  if (!v23)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v23 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 136);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x14, v23, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x20000) == 0)
  {
LABEL_19:
    if ((v6 & 0x40000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_88;
  }

LABEL_85:
  v24 = *(v5 + 144);
  if (!v24)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v24 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 144);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, v24, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x40000) == 0)
  {
LABEL_20:
    if ((v6 & 0x80000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_91;
  }

LABEL_88:
  v25 = *(v5 + 152);
  if (!v25)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v25 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 152);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x16, v25, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x80000) == 0)
  {
LABEL_21:
    if ((v6 & 0x100000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_94;
  }

LABEL_91:
  v26 = *(v5 + 160);
  if (!v26)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v26 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 160);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x17, v26, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x100000) == 0)
  {
LABEL_22:
    if ((v6 & 0x200000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_97;
  }

LABEL_94:
  v27 = *(v5 + 168);
  if (!v27)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v27 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 168);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x18, v27, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x200000) == 0)
  {
LABEL_23:
    if ((v6 & 0x400000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_100;
  }

LABEL_97:
  v28 = *(v5 + 176);
  if (!v28)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v28 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 176);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x19, v28, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x400000) == 0)
  {
LABEL_24:
    if ((v6 & 0x800000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_103;
  }

LABEL_100:
  v29 = *(v5 + 184);
  if (!v29)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v29 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 184);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1A, v29, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x800000) == 0)
  {
LABEL_25:
    if ((v6 & 0x1000000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_106;
  }

LABEL_103:
  v30 = *(v5 + 192);
  if (!v30)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v30 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 192);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1B, v30, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x1000000) == 0)
  {
LABEL_26:
    if ((v6 & 0x2000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_109;
  }

LABEL_106:
  v31 = *(v5 + 200);
  if (!v31)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v31 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 200);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1C, v31, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x2000000) == 0)
  {
LABEL_27:
    if ((v6 & 0x4000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_112;
  }

LABEL_109:
  v32 = *(v5 + 208);
  if (!v32)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v32 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 208);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1D, v32, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x4000000) == 0)
  {
LABEL_28:
    if ((v6 & 0x8000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_115;
  }

LABEL_112:
  v33 = *(v5 + 216);
  if (!v33)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v33 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 216);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1E, v33, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x8000000) == 0)
  {
LABEL_29:
    if ((v6 & 0x10000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_118;
  }

LABEL_115:
  v34 = *(v5 + 224);
  if (!v34)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v34 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 224);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x1F, v34, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x10000000) == 0)
  {
LABEL_30:
    if ((v6 & 0x20000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_121;
  }

LABEL_118:
  v35 = *(v5 + 232);
  if (!v35)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v35 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 232);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x20, v35, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x20000000) == 0)
  {
LABEL_31:
    if ((v6 & 0x40000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_124;
  }

LABEL_121:
  v36 = *(v5 + 240);
  if (!v36)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v36 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 240);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x21, v36, a2, a4);
  v6 = *(v5 + 292);
  if ((v6 & 0x40000000) == 0)
  {
LABEL_32:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_130;
    }

    goto LABEL_127;
  }

LABEL_124:
  v37 = *(v5 + 248);
  if (!v37)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v37 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 248);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x22, v37, a2, a4);
  if ((*(v5 + 292) & 0x80000000) != 0)
  {
LABEL_127:
    v38 = *(v5 + 256);
    if (!v38)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v38 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 256);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x23, v38, a2, a4);
  }

LABEL_130:
  v39 = *(v5 + 296);
  if (v39)
  {
    v40 = *(v5 + 264);
    if (!v40)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v40 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 264);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x24, v40, a2, a4);
    v39 = *(v5 + 296);
    if ((v39 & 2) == 0)
    {
LABEL_132:
      if ((v39 & 4) == 0)
      {
        return this;
      }

      goto LABEL_140;
    }
  }

  else if ((v39 & 2) == 0)
  {
    goto LABEL_132;
  }

  v41 = *(v5 + 272);
  if (!v41)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v41 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 272);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x25, v41, a2, a4);
  if ((*(v5 + 296) & 4) != 0)
  {
LABEL_140:
    v42 = *(v5 + 280);
    if (!v42)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v42 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 280);
    }

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x26, v42, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::ReceivedEvent::ByteSize(CLMicroLocationProto::ReceivedEvent *this)
{
  v2 = *(this + 73);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_61;
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
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v4 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 8);
  }

  v5 = CLMicroLocationProto::ReceivedEventAction::ByteSize(v4);
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
  v2 = *(this + 73);
  if ((v2 & 2) != 0)
  {
LABEL_12:
    v8 = *(this + 2);
    if (!v8)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v8 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 16);
    }

    v9 = CLMicroLocationProto::AppLaunch::ByteSize(v8);
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
    v2 = *(this + 73);
  }

LABEL_18:
  if ((v2 & 4) != 0)
  {
    v12 = *(this + 3);
    if (!v12)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v12 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 24);
    }

    v13 = CLMicroLocationProto::BacklightOn::ByteSize(v12);
    v14 = v13;
    if (v13 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v13);
    }

    else
    {
      v15 = 1;
    }

    v3 = (v3 + v14 + v15 + 1);
    v2 = *(this + 73);
    if ((v2 & 8) == 0)
    {
LABEL_20:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_37;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_20;
  }

  v16 = *(this + 4);
  if (!v16)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v16 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 32);
  }

  v17 = CLMicroLocationProto::BatteryChargerConnected::ByteSize(v16);
  v18 = v17;
  if (v17 >= 0x80)
  {
    v19 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v17);
  }

  else
  {
    v19 = 1;
  }

  v3 = (v3 + v18 + v19 + 1);
  v2 = *(this + 73);
  if ((v2 & 0x10) == 0)
  {
LABEL_21:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_37:
  v20 = *(this + 5);
  if (!v20)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v20 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 40);
  }

  v21 = CLMicroLocationProto::ForcedRecording::ByteSize(v20);
  v22 = v21;
  if (v21 >= 0x80)
  {
    v23 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v21);
  }

  else
  {
    v23 = 1;
  }

  v3 = (v3 + v22 + v23 + 1);
  v2 = *(this + 73);
  if ((v2 & 0x20) == 0)
  {
LABEL_22:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_49;
  }

LABEL_43:
  v24 = *(this + 6);
  if (!v24)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v24 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 48);
  }

  v25 = CLMicroLocationProto::HomeKitAccessory::ByteSize(v24);
  v26 = v25;
  if (v25 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v25);
  }

  else
  {
    v27 = 1;
  }

  v3 = (v3 + v26 + v27 + 1);
  v2 = *(this + 73);
  if ((v2 & 0x40) == 0)
  {
LABEL_23:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_55;
  }

LABEL_49:
  v28 = *(this + 7);
  if (!v28)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v28 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 56);
  }

  v29 = CLMicroLocationProto::HomeKitScene::ByteSize(v28);
  v30 = v29;
  if (v29 >= 0x80)
  {
    v31 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v29);
  }

  else
  {
    v31 = 1;
  }

  v3 = (v3 + v30 + v31 + 1);
  v2 = *(this + 73);
  if ((v2 & 0x80) != 0)
  {
LABEL_55:
    v32 = *(this + 8);
    if (!v32)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v32 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 64);
    }

    v33 = CLMicroLocationProto::NowPlaying::ByteSize(v32);
    v34 = v33;
    if (v33 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v33);
    }

    else
    {
      v35 = 1;
    }

    v3 = (v3 + v34 + v35 + 1);
    v2 = *(this + 73);
  }

LABEL_61:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_119;
  }

  if ((v2 & 0x100) != 0)
  {
    v36 = *(this + 9);
    if (!v36)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v36 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 72);
    }

    v37 = CLMicroLocationProto::RecordingRequest::ByteSize(v36);
    v38 = v37;
    if (v37 >= 0x80)
    {
      v39 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v37);
    }

    else
    {
      v39 = 1;
    }

    v3 = (v3 + v38 + v39 + 1);
    v2 = *(this + 73);
    if ((v2 & 0x200) == 0)
    {
LABEL_64:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_65;
      }

      goto LABEL_83;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_64;
  }

  v40 = *(this + 10);
  if (!v40)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v40 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 80);
  }

  v41 = CLMicroLocationProto::TruthLabelDonation::ByteSize(v40);
  v42 = v41;
  if (v41 >= 0x80)
  {
    v43 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v41);
  }

  else
  {
    v43 = 1;
  }

  v3 = (v3 + v42 + v43 + 1);
  v2 = *(this + 73);
  if ((v2 & 0x400) == 0)
  {
LABEL_65:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_89;
  }

LABEL_83:
  v44 = *(this + 11);
  if (!v44)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v44 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 88);
  }

  v45 = CLMicroLocationProto::LearnModel::ByteSize(v44);
  v46 = v45;
  if (v45 >= 0x80)
  {
    v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v45);
  }

  else
  {
    v47 = 1;
  }

  v3 = (v3 + v46 + v47 + 1);
  v2 = *(this + 73);
  if ((v2 & 0x800) == 0)
  {
LABEL_66:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_95;
  }

LABEL_89:
  v48 = *(this + 12);
  if (!v48)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v48 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 96);
  }

  v49 = CLMicroLocationProto::LearnCompleted::ByteSize(v48);
  v50 = v49;
  if (v49 >= 0x80)
  {
    v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
  }

  else
  {
    v51 = 1;
  }

  v3 = (v3 + v50 + v51 + 1);
  v2 = *(this + 73);
  if ((v2 & 0x1000) == 0)
  {
LABEL_67:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_101;
  }

LABEL_95:
  v52 = *(this + 13);
  if (!v52)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v52 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 104);
  }

  v53 = CLMicroLocationProto::SensorsScanComplete::ByteSize(v52);
  v54 = v53;
  if (v53 >= 0x80)
  {
    v55 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v53);
  }

  else
  {
    v55 = 1;
  }

  v3 = (v3 + v54 + v55 + 2);
  v2 = *(this + 73);
  if ((v2 & 0x2000) == 0)
  {
LABEL_68:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_107;
  }

LABEL_101:
  v56 = *(this + 14);
  if (!v56)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v56 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 112);
  }

  v57 = CLMicroLocationProto::StartSpectating::ByteSize(v56);
  v58 = v57;
  if (v57 >= 0x80)
  {
    v59 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
  }

  else
  {
    v59 = 1;
  }

  v3 = (v3 + v58 + v59 + 2);
  v2 = *(this + 73);
  if ((v2 & 0x4000) == 0)
  {
LABEL_69:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_119;
    }

    goto LABEL_113;
  }

LABEL_107:
  v60 = *(this + 15);
  if (!v60)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v60 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 120);
  }

  v61 = CLMicroLocationProto::StopSpectating::ByteSize(v60);
  v62 = v61;
  if (v61 >= 0x80)
  {
    v63 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v61);
  }

  else
  {
    v63 = 1;
  }

  v3 = (v3 + v62 + v63 + 2);
  v2 = *(this + 73);
  if ((v2 & 0x8000) != 0)
  {
LABEL_113:
    v64 = *(this + 16);
    if (!v64)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v64 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 128);
    }

    v65 = CLMicroLocationProto::ServiceCreate::ByteSize(v64);
    v66 = v65;
    if (v65 >= 0x80)
    {
      v67 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v65);
    }

    else
    {
      v67 = 1;
    }

    v3 = (v3 + v66 + v67 + 2);
    v2 = *(this + 73);
  }

LABEL_119:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_177;
  }

  if ((v2 & 0x10000) != 0)
  {
    v68 = *(this + 17);
    if (!v68)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v68 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 136);
    }

    v69 = CLMicroLocationProto::ServiceDelete::ByteSize(v68);
    v70 = v69;
    if (v69 >= 0x80)
    {
      v71 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v69);
    }

    else
    {
      v71 = 1;
    }

    v3 = (v3 + v70 + v71 + 2);
    v2 = *(this + 73);
    if ((v2 & 0x20000) == 0)
    {
LABEL_122:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_123;
      }

      goto LABEL_141;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_122;
  }

  v72 = *(this + 18);
  if (!v72)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v72 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 144);
  }

  v73 = CLMicroLocationProto::ServiceConnect::ByteSize(v72);
  v74 = v73;
  if (v73 >= 0x80)
  {
    v75 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v73);
  }

  else
  {
    v75 = 1;
  }

  v3 = (v3 + v74 + v75 + 2);
  v2 = *(this + 73);
  if ((v2 & 0x40000) == 0)
  {
LABEL_123:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_124;
    }

    goto LABEL_147;
  }

LABEL_141:
  v76 = *(this + 19);
  if (!v76)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v76 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 152);
  }

  v77 = CLMicroLocationProto::ServiceDisconnect::ByteSize(v76);
  v78 = v77;
  if (v77 >= 0x80)
  {
    v79 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v77);
  }

  else
  {
    v79 = 1;
  }

  v3 = (v3 + v78 + v79 + 2);
  v2 = *(this + 73);
  if ((v2 & 0x80000) == 0)
  {
LABEL_124:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_125;
    }

    goto LABEL_153;
  }

LABEL_147:
  v80 = *(this + 20);
  if (!v80)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v80 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 160);
  }

  v81 = CLMicroLocationProto::ServiceStartUpdating::ByteSize(v80);
  v82 = v81;
  if (v81 >= 0x80)
  {
    v83 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v81);
  }

  else
  {
    v83 = 1;
  }

  v3 = (v3 + v82 + v83 + 2);
  v2 = *(this + 73);
  if ((v2 & 0x100000) == 0)
  {
LABEL_125:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_126;
    }

    goto LABEL_159;
  }

LABEL_153:
  v84 = *(this + 21);
  if (!v84)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v84 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 168);
  }

  v85 = CLMicroLocationProto::ServiceStopUpdating::ByteSize(v84);
  v86 = v85;
  if (v85 >= 0x80)
  {
    v87 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v85);
  }

  else
  {
    v87 = 1;
  }

  v3 = (v3 + v86 + v87 + 2);
  v2 = *(this + 73);
  if ((v2 & 0x200000) == 0)
  {
LABEL_126:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_127;
    }

    goto LABEL_165;
  }

LABEL_159:
  v88 = *(this + 22);
  if (!v88)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v88 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 176);
  }

  v89 = CLMicroLocationProto::RequestObservation::ByteSize(v88);
  v90 = v89;
  if (v89 >= 0x80)
  {
    v91 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v89);
  }

  else
  {
    v91 = 1;
  }

  v3 = (v3 + v90 + v91 + 2);
  v2 = *(this + 73);
  if ((v2 & 0x400000) == 0)
  {
LABEL_127:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_171;
  }

LABEL_165:
  v92 = *(this + 23);
  if (!v92)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v92 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 184);
  }

  v93 = CLMicroLocationProto::RequestPrediction::ByteSize(v92);
  v94 = v93;
  if (v93 >= 0x80)
  {
    v95 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v93);
  }

  else
  {
    v95 = 1;
  }

  v3 = (v3 + v94 + v95 + 2);
  v2 = *(this + 73);
  if ((v2 & 0x800000) != 0)
  {
LABEL_171:
    v96 = *(this + 24);
    if (!v96)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v96 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 192);
    }

    v97 = CLMicroLocationProto::MiloInit::ByteSize(v96);
    v98 = v97;
    if (v97 >= 0x80)
    {
      v99 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v97);
    }

    else
    {
      v99 = 1;
    }

    v3 = (v3 + v98 + v99 + 2);
    v2 = *(this + 73);
  }

LABEL_177:
  if (!HIBYTE(v2))
  {
    goto LABEL_235;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v100 = *(this + 25);
    if (!v100)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v100 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 200);
    }

    v101 = CLMicroLocationProto::MotionEvent::ByteSize(v100);
    v102 = v101;
    if (v101 >= 0x80)
    {
      v103 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v101);
    }

    else
    {
      v103 = 1;
    }

    v3 = (v3 + v102 + v103 + 2);
    v2 = *(this + 73);
    if ((v2 & 0x2000000) == 0)
    {
LABEL_180:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_181;
      }

      goto LABEL_199;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_180;
  }

  v104 = *(this + 26);
  if (!v104)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v104 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 208);
  }

  v105 = CLMicroLocationProto::LegacyThrottle::ByteSize(v104);
  v106 = v105;
  if (v105 >= 0x80)
  {
    v107 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v105);
  }

  else
  {
    v107 = 1;
  }

  v3 = (v3 + v106 + v107 + 2);
  v2 = *(this + 73);
  if ((v2 & 0x4000000) == 0)
  {
LABEL_181:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_182;
    }

    goto LABEL_205;
  }

LABEL_199:
  v108 = *(this + 27);
  if (!v108)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v108 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 216);
  }

  v109 = CLMicroLocationProto::RetrievedLoi::ByteSize(v108);
  v110 = v109;
  if (v109 >= 0x80)
  {
    v111 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v109);
  }

  else
  {
    v111 = 1;
  }

  v3 = (v3 + v110 + v111 + 2);
  v2 = *(this + 73);
  if ((v2 & 0x8000000) == 0)
  {
LABEL_182:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_183;
    }

    goto LABEL_211;
  }

LABEL_205:
  v112 = *(this + 28);
  if (!v112)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v112 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 224);
  }

  v113 = CLMicroLocationProto::TriggerEvent::ByteSize(v112);
  v114 = v113;
  if (v113 >= 0x80)
  {
    v115 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v113);
  }

  else
  {
    v115 = 1;
  }

  v3 = (v3 + v114 + v115 + 2);
  v2 = *(this + 73);
  if ((v2 & 0x10000000) == 0)
  {
LABEL_183:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_184;
    }

    goto LABEL_217;
  }

LABEL_211:
  v116 = *(this + 29);
  if (!v116)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v116 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 232);
  }

  v117 = CLMicroLocationProto::LegacyClientStatusUpdate::ByteSize(v116);
  v118 = v117;
  if (v117 >= 0x80)
  {
    v119 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v117);
  }

  else
  {
    v119 = 1;
  }

  v3 = (v3 + v118 + v119 + 2);
  v2 = *(this + 73);
  if ((v2 & 0x20000000) == 0)
  {
LABEL_184:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_185;
    }

    goto LABEL_223;
  }

LABEL_217:
  v120 = *(this + 30);
  if (!v120)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v120 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 240);
  }

  v121 = CLMicroLocationProto::SpectatingMotionUpdate::ByteSize(v120);
  v122 = v121;
  if (v121 >= 0x80)
  {
    v123 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v121);
  }

  else
  {
    v123 = 1;
  }

  v3 = (v3 + v122 + v123 + 2);
  v2 = *(this + 73);
  if ((v2 & 0x40000000) == 0)
  {
LABEL_185:
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_235;
    }

    goto LABEL_229;
  }

LABEL_223:
  v124 = *(this + 31);
  if (!v124)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v124 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 248);
  }

  v125 = CLMicroLocationProto::EnabledStateUpdate::ByteSize(v124);
  v126 = v125;
  if (v125 >= 0x80)
  {
    v127 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v125);
  }

  else
  {
    v127 = 1;
  }

  v3 = (v3 + v126 + v127 + 2);
  if ((*(this + 73) & 0x80000000) != 0)
  {
LABEL_229:
    v128 = *(this + 32);
    if (!v128)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v128 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 256);
    }

    v129 = CLMicroLocationProto::ScreenStateUpdate::ByteSize(v128);
    v130 = v129;
    if (v129 >= 0x80)
    {
      v131 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v129);
    }

    else
    {
      v131 = 1;
    }

    v3 = (v3 + v130 + v131 + 2);
  }

LABEL_235:
  LOBYTE(v132) = *(this + 296);
  if (!v132)
  {
    goto LABEL_258;
  }

  if (*(this + 296))
  {
    v133 = *(this + 33);
    if (!v133)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v133 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 264);
    }

    v134 = CLMicroLocationProto::CloudBackupExport::ByteSize(v133);
    v135 = v134;
    if (v134 >= 0x80)
    {
      v136 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v134);
    }

    else
    {
      v136 = 1;
    }

    v3 = (v3 + v135 + v136 + 2);
    v132 = *(this + 74);
    if ((v132 & 2) == 0)
    {
LABEL_238:
      if ((v132 & 4) == 0)
      {
        goto LABEL_258;
      }

      goto LABEL_252;
    }
  }

  else if ((*(this + 296) & 2) == 0)
  {
    goto LABEL_238;
  }

  v137 = *(this + 34);
  if (!v137)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v137 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 272);
  }

  v138 = CLMicroLocationProto::CloudBackupImport::ByteSize(v137);
  v139 = v138;
  if (v138 >= 0x80)
  {
    v140 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v138);
  }

  else
  {
    v140 = 1;
  }

  v3 = (v3 + v139 + v140 + 2);
  if ((*(this + 74) & 4) != 0)
  {
LABEL_252:
    v141 = *(this + 35);
    if (!v141)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v141 = *(CLMicroLocationProto::ReceivedEvent::default_instance_ + 280);
    }

    v142 = CLMicroLocationProto::DataMigration::ByteSize(v141);
    v143 = v142;
    if (v142 >= 0x80)
    {
      v144 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v142);
    }

    else
    {
      v144 = 1;
    }

    v3 = (v3 + v143 + v144 + 2);
  }

LABEL_258:
  *(this + 72) = v3;
  return v3;
}

void CLMicroLocationProto::ReceivedEvent::CheckTypeAndMergeFrom(CLMicroLocationProto::ReceivedEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::ReceivedEvent::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::TriggerEvent::MergeFrom(CLMicroLocationProto::TriggerEvent *this, const CLMicroLocationProto::TriggerEvent *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v4 = *(a2 + 21);
  if (!v4)
  {
    goto LABEL_19;
  }

  if (v4)
  {
    v5 = *(a2 + 6);
    if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
    {
      CLMicroLocationProto::TriggerEvent::MergeFrom();
    }

    *(this + 21) |= 1u;
    *(this + 6) = v5;
    v4 = *(a2 + 21);
  }

  if ((v4 & 2) != 0)
  {
    v6 = *(a2 + 1);
    *(this + 21) |= 2u;
    *(this + 1) = v6;
    v4 = *(a2 + 21);
  }

  if ((v4 & 4) != 0)
  {
    v7 = *(a2 + 28);
    *(this + 21) |= 4u;
    *(this + 28) = v7;
    v4 = *(a2 + 21);
  }

  v8 = MEMORY[0x277D82C30];
  if ((v4 & 8) != 0)
  {
    v16 = *(a2 + 2);
    *(this + 21) |= 8u;
    v17 = *(this + 2);
    if (v17 == v8)
    {
      operator new();
    }

    std::string::operator=(v17, v16);
    v4 = *(a2 + 21);
    if ((v4 & 0x10) == 0)
    {
LABEL_15:
      if ((v4 & 0x20) == 0)
      {
        goto LABEL_16;
      }

LABEL_43:
      v20 = *(a2 + 5);
      *(this + 21) |= 0x20u;
      v21 = *(this + 5);
      if (v21 == v8)
      {
        operator new();
      }

      std::string::operator=(v21, v20);
      v4 = *(a2 + 21);
      if ((v4 & 0x40) == 0)
      {
LABEL_17:
        if ((v4 & 0x80) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_18;
      }

      goto LABEL_46;
    }
  }

  else if ((v4 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  v18 = *(a2 + 4);
  *(this + 21) |= 0x10u;
  v19 = *(this + 4);
  if (v19 == v8)
  {
    operator new();
  }

  std::string::operator=(v19, v18);
  v4 = *(a2 + 21);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_43;
  }

LABEL_16:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_46:
  v22 = *(a2 + 6);
  *(this + 21) |= 0x40u;
  v23 = *(this + 6);
  if (v23 == v8)
  {
    operator new();
  }

  std::string::operator=(v23, v22);
  v4 = *(a2 + 21);
  if ((v4 & 0x80) != 0)
  {
LABEL_18:
    v9 = *(a2 + 29);
    *(this + 21) |= 0x80u;
    *(this + 29) = v9;
    v4 = *(a2 + 21);
  }

LABEL_19:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v10 = *(a2 + 14);
      if (v10 >= 2)
      {
        CLMicroLocationProto::TriggerEvent::MergeFrom();
      }

      *(this + 21) |= 0x100u;
      *(this + 14) = v10;
      v4 = *(a2 + 21);
    }

    if ((v4 & 0x200) != 0)
    {
      v11 = *(a2 + 15);
      if (v11 >= 6)
      {
        CLMicroLocationProto::TriggerEvent::MergeFrom();
      }

      *(this + 21) |= 0x200u;
      *(this + 15) = v11;
      v4 = *(a2 + 21);
    }

    if ((v4 & 0x400) != 0)
    {
      v12 = *(a2 + 18);
      if (v12 >= 6)
      {
        CLMicroLocationProto::TriggerEvent::MergeFrom();
      }

      *(this + 21) |= 0x400u;
      *(this + 18) = v12;
      v4 = *(a2 + 21);
    }

    if ((v4 & 0x800) != 0)
    {
      v13 = *(a2 + 8);
      *(this + 21) |= 0x800u;
      v14 = *(this + 8);
      if (v14 == MEMORY[0x277D82C30])
      {
        operator new();
      }

      std::string::operator=(v14, v13);
      v4 = *(a2 + 21);
    }

    if ((v4 & 0x1000) != 0)
    {
      v15 = *(a2 + 19);
      if (v15 >= 4)
      {
        CLMicroLocationProto::TriggerEvent::MergeFrom();
      }

      *(this + 21) |= 0x1000u;
      *(this + 19) = v15;
    }
  }
}

void sub_25910760C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::LegacyClientStatusUpdate::MergeFrom(CLMicroLocationProto::LegacyClientStatusUpdate *this, const CLMicroLocationProto::LegacyClientStatusUpdate *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
  }

  LOBYTE(v4) = *(a2 + 24);
  if (v4)
  {
    if (*(a2 + 24))
    {
      v5 = *(a2 + 2);
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::LegacyClientStatusUpdate::MergeFrom();
      }

      *(this + 6) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 6);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      if ((v6 - 1) >= 2 && v6 != 255)
      {
        CLMicroLocationProto::LegacyClientStatusUpdate::MergeFrom();
      }

      *(this + 6) |= 2u;
      *(this + 3) = v6;
      v4 = *(a2 + 6);
    }

    if ((v4 & 4) != 0)
    {
      v7 = *(a2 + 4);
      *(this + 6) |= 4u;
      *(this + 4) = v7;
    }
  }
}

void sub_259107730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::SpectatingMotionUpdate::MergeFrom(CLMicroLocationProto::SpectatingMotionUpdate *this, const CLMicroLocationProto::SpectatingMotionUpdate *a2)
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
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::SpectatingMotionUpdate::MergeFrom();
      }

      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      *(this + 5) |= 2u;
      *(this + 12) = v6;
    }
  }
}

void sub_259107820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::EnabledStateUpdate::MergeFrom(CLMicroLocationProto::EnabledStateUpdate *this, const CLMicroLocationProto::EnabledStateUpdate *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
  }

  v4 = *(a2 + 6);
  if (!v4)
  {
    goto LABEL_17;
  }

  if (v4)
  {
    v5 = *(a2 + 2);
    if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
    {
      CLMicroLocationProto::EnabledStateUpdate::MergeFrom();
    }

    *(this + 6) |= 1u;
    *(this + 2) = v5;
    v4 = *(a2 + 6);
  }

  if ((v4 & 2) != 0)
  {
    v8 = *(a2 + 12);
    *(this + 6) |= 2u;
    *(this + 12) = v8;
    v4 = *(a2 + 6);
    if ((v4 & 4) == 0)
    {
LABEL_11:
      if ((v4 & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_22;
    }
  }

  else if ((v4 & 4) == 0)
  {
    goto LABEL_11;
  }

  v9 = *(a2 + 13);
  *(this + 6) |= 4u;
  *(this + 13) = v9;
  v4 = *(a2 + 6);
  if ((v4 & 8) == 0)
  {
LABEL_12:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_23;
  }

LABEL_22:
  v10 = *(a2 + 14);
  *(this + 6) |= 8u;
  *(this + 14) = v10;
  v4 = *(a2 + 6);
  if ((v4 & 0x10) == 0)
  {
LABEL_13:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_14;
    }

LABEL_24:
    v12 = *(a2 + 16);
    *(this + 6) |= 0x20u;
    *(this + 16) = v12;
    v4 = *(a2 + 6);
    if ((v4 & 0x40) == 0)
    {
LABEL_15:
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_23:
  v11 = *(a2 + 15);
  *(this + 6) |= 0x10u;
  *(this + 15) = v11;
  v4 = *(a2 + 6);
  if ((v4 & 0x20) != 0)
  {
    goto LABEL_24;
  }

LABEL_14:
  if ((v4 & 0x40) == 0)
  {
    goto LABEL_15;
  }

LABEL_25:
  v13 = *(a2 + 17);
  *(this + 6) |= 0x40u;
  *(this + 17) = v13;
  v4 = *(a2 + 6);
  if ((v4 & 0x80) != 0)
  {
LABEL_16:
    v6 = *(a2 + 18);
    *(this + 6) |= 0x80u;
    *(this + 18) = v6;
    v4 = *(a2 + 6);
  }

LABEL_17:
  if ((v4 & 0x100) != 0)
  {
    v7 = *(a2 + 19);
    *(this + 6) |= 0x100u;
    *(this + 19) = v7;
  }
}

void sub_2591079F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::ScreenStateUpdate::MergeFrom(CLMicroLocationProto::ScreenStateUpdate *this, const CLMicroLocationProto::ScreenStateUpdate *a2)
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
      if (v5 - 31 >= 0x19 && (v5 > 0xE || ((1 << v5) & 0x76B6) == 0))
      {
        CLMicroLocationProto::ScreenStateUpdate::MergeFrom();
      }

      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 12);
      *(this + 5) |= 2u;
      *(this + 12) = v6;
    }
  }
}

void sub_259107AE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::CloudBackupExport::MergeFrom(CLMicroLocationProto::CloudBackupExport *this, const CLMicroLocationProto::CloudBackupExport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      CLMicroLocationProto::CloudBackupExport::MergeFrom();
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_259107BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::CloudBackupImport::MergeFrom(CLMicroLocationProto::CloudBackupImport *this, const CLMicroLocationProto::CloudBackupImport *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      CLMicroLocationProto::CloudBackupImport::MergeFrom();
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_259107C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::DataMigration::MergeFrom(CLMicroLocationProto::DataMigration *this, const CLMicroLocationProto::DataMigration *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v6);
  }

  if (*(a2 + 16))
  {
    v4 = *(a2 + 2);
    if (v4 - 31 >= 0x19 && (v4 > 0xE || ((1 << v4) & 0x76B6) == 0))
    {
      CLMicroLocationProto::DataMigration::MergeFrom();
    }

    *(this + 4) |= 1u;
    *(this + 2) = v4;
  }
}

void sub_259107D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

CLMicroLocationProto::AssociatedAccessPointInfo *CLMicroLocationProto::AssociatedAccessPointInfo::AssociatedAccessPointInfo(CLMicroLocationProto::AssociatedAccessPointInfo *this, const CLMicroLocationProto::AssociatedAccessPointInfo *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_286A591F0;
  *(this + 6) = 0;
  CLMicroLocationProto::AssociatedAccessPointInfo::MergeFrom(this, a2);
  return this;
}

void CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(CLMicroLocationProto::AssociatedAccessPointInfo *this)
{
  *this = &unk_286A591F0;
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::AssociatedAccessPointInfo::~AssociatedAccessPointInfo(this);

  JUMPOUT(0x259CA1F90);
}

uint64_t CLMicroLocationProto::AssociatedAccessPointInfo::MergePartialFromCodedStream(CLMicroLocationProto::AssociatedAccessPointInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

      *(this + 6) |= 1u;
      if (v10 < v7 && *v10 == 21)
      {
        *(a2 + 1) = v10 + 1;
LABEL_21:
        v12 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian32Fallback(a2, &v12) & 1) == 0)
        {
          return 0;
        }

        *(this + 4) = v12;
        *(this + 6) |= 2u;
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

uint64_t CLMicroLocationProto::AssociatedAccessPointInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 24);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 24);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 16);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteFloat(2, a2, v7, a3);
  }

  return this;
}

uint64_t CLMicroLocationProto::AssociatedAccessPointInfo::ByteSize(CLMicroLocationProto::AssociatedAccessPointInfo *this)
{
  LOBYTE(v2) = *(this + 24);
  if (v2)
  {
    if (*(this + 24))
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
      v2 = *(this + 6);
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
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

  *(this + 5) = result;
  return result;
}

float CLMicroLocationProto::AssociatedAccessPointInfo::CheckTypeAndMergeFrom(CLMicroLocationProto::AssociatedAccessPointInfo *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  return CLMicroLocationProto::AssociatedAccessPointInfo::MergeFrom(this, lpsrc);
}

float CLMicroLocationProto::AssociatedAccessPointInfo::CopyFrom(CLMicroLocationProto::AssociatedAccessPointInfo *this, const CLMicroLocationProto::AssociatedAccessPointInfo *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    return CLMicroLocationProto::AssociatedAccessPointInfo::MergeFrom(this, a2);
  }

  return result;
}

CLMicroLocationProto::RecordingEvent *CLMicroLocationProto::RecordingEvent::RecordingEvent(CLMicroLocationProto::RecordingEvent *this, const CLMicroLocationProto::RecordingEvent *a2)
{
  *this = &unk_286A59268;
  *(this + 13) = 0;
  *(this + 18) = 1;
  *(this + 38) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  CLMicroLocationProto::RecordingEvent::MergeFrom(this, a2);
  return this;
}

void sub_259108288(_Unwind_Exception *a1)
{
  v3 = v2;
  if (*v3)
  {
    MEMORY[0x259CA1F70](*v3, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::RecordingEvent::MergeFrom(CLMicroLocationProto::RecordingEvent *this, const CLMicroLocationProto::RecordingEvent *a2)
{
  v3 = this;
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v34);
  }

  v4 = *(a2 + 28);
  if (v4)
  {
    wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(v3 + 13, *(v3 + 28) + v4);
    this = memcpy((*(v3 + 13) + 4 * *(v3 + 28)), *(a2 + 13), 4 * *(a2 + 28));
    *(v3 + 28) += *(a2 + 28);
  }

  v5 = *(a2 + 35);
  if (!v5)
  {
    goto LABEL_50;
  }

  if (v5)
  {
    v6 = *(a2 + 18);
    if (v6 - 31 >= 0x19 && (v6 > 0xE || ((1 << v6) & 0x76B6) == 0))
    {
      CLMicroLocationProto::RecordingEvent::MergeFrom();
    }

    *(v3 + 35) |= 1u;
    *(v3 + 18) = v6;
    v5 = *(a2 + 35);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(a2 + 1);
    *(v3 + 35) |= 2u;
    *(v3 + 1) = v7;
    v5 = *(a2 + 35);
    if ((v5 & 4) == 0)
    {
LABEL_13:
      if ((v5 & 8) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_25;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_13;
  }

  *(v3 + 35) |= 4u;
  v8 = *(v3 + 2);
  if (!v8)
  {
    operator new();
  }

  v9 = *(a2 + 2);
  if (!v9)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v9 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 16);
  }

  CLMicroLocationProto::ReceivedEventAction::MergeFrom(v8, v9);
  v5 = *(a2 + 35);
  if ((v5 & 8) == 0)
  {
LABEL_14:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_30;
  }

LABEL_25:
  *(v3 + 35) |= 8u;
  v10 = *(v3 + 3);
  if (!v10)
  {
    operator new();
  }

  v11 = *(a2 + 3);
  if (!v11)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v11 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 24);
  }

  CLMicroLocationProto::AppLaunch::MergeFrom(v10, v11);
  v5 = *(a2 + 35);
  if ((v5 & 0x10) == 0)
  {
LABEL_15:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_16;
    }

LABEL_35:
    *(v3 + 35) |= 0x20u;
    v14 = *(v3 + 5);
    if (!v14)
    {
      operator new();
    }

    v15 = *(a2 + 5);
    if (!v15)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v15 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 40);
    }

    CLMicroLocationProto::BatteryChargerConnected::MergeFrom(v14, v15);
    v5 = *(a2 + 35);
    if ((v5 & 0x40) == 0)
    {
LABEL_17:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_45;
    }

    goto LABEL_40;
  }

LABEL_30:
  *(v3 + 35) |= 0x10u;
  v12 = *(v3 + 4);
  if (!v12)
  {
    operator new();
  }

  v13 = *(a2 + 4);
  if (!v13)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v13 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 32);
  }

  CLMicroLocationProto::BacklightOn::MergeFrom(v12, v13);
  v5 = *(a2 + 35);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_35;
  }

LABEL_16:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_17;
  }

LABEL_40:
  *(v3 + 35) |= 0x40u;
  v16 = *(v3 + 6);
  if (!v16)
  {
    operator new();
  }

  v17 = *(a2 + 6);
  if (!v17)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v17 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 48);
  }

  CLMicroLocationProto::ForcedRecording::MergeFrom(v16, v17);
  v5 = *(a2 + 35);
  if ((v5 & 0x80) != 0)
  {
LABEL_45:
    *(v3 + 35) |= 0x80u;
    v18 = *(v3 + 7);
    if (!v18)
    {
      operator new();
    }

    v19 = *(a2 + 7);
    if (!v19)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v19 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 56);
    }

    CLMicroLocationProto::HomeKitAccessory::MergeFrom(v18, v19);
    v5 = *(a2 + 35);
  }

LABEL_50:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_83;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 35) |= 0x100u;
    v20 = *(v3 + 8);
    if (!v20)
    {
      operator new();
    }

    v21 = *(a2 + 8);
    if (!v21)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v21 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 64);
    }

    CLMicroLocationProto::HomeKitScene::MergeFrom(v20, v21);
    v5 = *(a2 + 35);
    if ((v5 & 0x200) == 0)
    {
LABEL_53:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_69;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  *(v3 + 35) |= 0x200u;
  v22 = *(v3 + 10);
  if (!v22)
  {
    operator new();
  }

  v23 = *(a2 + 10);
  if (!v23)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v23 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 80);
  }

  CLMicroLocationProto::NowPlaying::MergeFrom(v22, v23);
  v5 = *(a2 + 35);
  if ((v5 & 0x400) == 0)
  {
LABEL_54:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_74;
  }

LABEL_69:
  *(v3 + 35) |= 0x400u;
  v24 = *(v3 + 11);
  if (!v24)
  {
    operator new();
  }

  v25 = *(a2 + 11);
  if (!v25)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v25 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 88);
  }

  CLMicroLocationProto::RecordingRequest::MergeFrom(v24, v25);
  v5 = *(a2 + 35);
  if ((v5 & 0x800) == 0)
  {
LABEL_55:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_75;
  }

LABEL_74:
  v26 = *(a2 + 76);
  *(v3 + 35) |= 0x800u;
  *(v3 + 76) = v26;
  v5 = *(a2 + 35);
  if ((v5 & 0x1000) == 0)
  {
LABEL_56:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_80;
  }

LABEL_75:
  *(v3 + 35) |= 0x1000u;
  v27 = *(v3 + 12);
  if (!v27)
  {
    operator new();
  }

  v28 = *(a2 + 12);
  if (!v28)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v28 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 96);
  }

  CLMicroLocationProto::TruthLabelDonation::MergeFrom(v27, v28);
  v5 = *(a2 + 35);
  if ((v5 & 0x2000) == 0)
  {
LABEL_57:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_81;
  }

LABEL_80:
  v29 = *(a2 + 77);
  *(v3 + 35) |= 0x2000u;
  *(v3 + 77) = v29;
  v5 = *(a2 + 35);
  if ((v5 & 0x4000) == 0)
  {
    goto LABEL_83;
  }

LABEL_81:
  v30 = *(a2 + 30);
  if (v30 >= 4 && v30 != 15)
  {
    CLMicroLocationProto::RecordingEvent::MergeFrom();
  }

  *(v3 + 35) |= 0x4000u;
  *(v3 + 30) = v30;
  v5 = *(a2 + 35);
LABEL_83:
  if ((v5 & 0xFF0000) != 0)
  {
    if ((v5 & 0x10000) != 0)
    {
      *(v3 + 35) |= 0x10000u;
      v31 = *(v3 + 16);
      if (!v31)
      {
        operator new();
      }

      v32 = *(a2 + 16);
      if (!v32)
      {
        CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
        v32 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 128);
      }

      CLMicroLocationProto::AssociatedAccessPointInfo::MergeFrom(v31, v32);
      v5 = *(a2 + 35);
    }

    if ((v5 & 0x20000) != 0)
    {
      v33 = *(a2 + 31);
      if (v33 >= 4)
      {
        CLMicroLocationProto::RecordingEvent::MergeFrom();
      }

      *(v3 + 35) |= 0x20000u;
      *(v3 + 31) = v33;
    }
  }
}

void sub_259108B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void CLMicroLocationProto::RecordingEvent::~RecordingEvent(CLMicroLocationProto::RecordingEvent *this)
{
  *this = &unk_286A59268;
  CLMicroLocationProto::RecordingEvent::SharedDtor(this);
  v2 = *(this + 13);
  if (v2)
  {
    MEMORY[0x259CA1F70](v2, 0x1000C8052888210);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::RecordingEvent::~RecordingEvent(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::RecordingEvent::SharedDtor(CLMicroLocationProto::RecordingEvent *this)
{
  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
  if (CLMicroLocationProto::RecordingEvent::default_instance_ != this)
  {
    v2 = *(this + 2);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v3 = *(this + 3);
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    v4 = *(this + 4);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    v5 = *(this + 5);
    if (v5)
    {
      (*(*v5 + 8))(v5);
    }

    v6 = *(this + 6);
    if (v6)
    {
      (*(*v6 + 8))(v6);
    }

    v7 = *(this + 7);
    if (v7)
    {
      (*(*v7 + 8))(v7);
    }

    v8 = *(this + 8);
    if (v8)
    {
      (*(*v8 + 8))(v8);
    }

    v9 = *(this + 10);
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }

    v10 = *(this + 11);
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }

    v11 = *(this + 12);
    if (v11)
    {
      (*(*v11 + 8))(v11);
    }

    v12 = *(this + 16);
    if (v12)
    {
      v13 = *(*v12 + 8);

      v13();
    }
  }
}

uint64_t CLMicroLocationProto::RecordingEvent::Clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 140);
  if (v2)
  {
    *(this + 72) = 1;
    *(this + 8) = 0;
    if ((v2 & 4) != 0)
    {
      this = *(this + 16);
      if (this)
      {
        this = CLMicroLocationProto::ReceivedEventAction::Clear(this);
        v2 = *(v1 + 140);
      }
    }

    if ((v2 & 8) != 0)
    {
      this = *(v1 + 24);
      if (this)
      {
        this = CLMicroLocationProto::AppLaunch::Clear(this);
        v2 = *(v1 + 140);
      }
    }

    if ((v2 & 0x10) != 0)
    {
      this = *(v1 + 32);
      if (this)
      {
        this = CLMicroLocationProto::BacklightOn::Clear(this);
        v2 = *(v1 + 140);
      }
    }

    if ((v2 & 0x20) != 0)
    {
      v3 = *(v1 + 40);
      if (v3)
      {
        if (*(v3 + 16))
        {
          *(v3 + 8) = 5;
        }

        *(v3 + 16) = 0;
        v2 = *(v1 + 140);
      }
    }

    if ((v2 & 0x40) != 0)
    {
      v4 = *(v1 + 48);
      if (v4)
      {
        if (*(v4 + 16))
        {
          *(v4 + 8) = 7;
        }

        *(v4 + 16) = 0;
        v2 = *(v1 + 140);
      }
    }

    if ((v2 & 0x80) != 0)
    {
      this = *(v1 + 56);
      if (this)
      {
        this = CLMicroLocationProto::HomeKitAccessory::Clear(this);
        v2 = *(v1 + 140);
      }
    }
  }

  if ((v2 & 0xFF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      this = *(v1 + 64);
      if (this)
      {
        this = CLMicroLocationProto::HomeKitScene::Clear(this);
        v2 = *(v1 + 140);
      }
    }

    if ((v2 & 0x200) != 0)
    {
      this = *(v1 + 80);
      if (this)
      {
        this = CLMicroLocationProto::NowPlaying::Clear(this);
        v2 = *(v1 + 140);
      }
    }

    if ((v2 & 0x400) != 0)
    {
      this = *(v1 + 88);
      if (this)
      {
        this = CLMicroLocationProto::RecordingRequest::Clear(this);
        v2 = *(v1 + 140);
      }
    }

    *(v1 + 76) = 0;
    if ((v2 & 0x1000) != 0)
    {
      this = *(v1 + 96);
      if (this)
      {
        this = CLMicroLocationProto::TruthLabelDonation::Clear(this);
        v2 = *(v1 + 140);
      }
    }

    *(v1 + 77) = 0;
    *(v1 + 120) = 0;
  }

  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v5 = *(v1 + 128);
      if (v5)
      {
        if (*(v5 + 24))
        {
          *(v5 + 8) = 0;
          *(v5 + 16) = 0;
        }

        *(v5 + 24) = 0;
      }
    }

    *(v1 + 124) = 0;
  }

  *(v1 + 112) = 0;
  *(v1 + 140) = 0;
  return this;
}

uint64_t CLMicroLocationProto::RecordingEvent::MergePartialFromCodedStream(CLMicroLocationProto::RecordingEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v114[0] = 0;
        v7 = *(a2 + 1);
        if (v7 >= *(a2 + 2) || (v8 = *v7, (v8 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
          if (!result)
          {
            return result;
          }

          v8 = v114[0];
        }

        else
        {
          *(a2 + 1) = v7 + 1;
        }

        if (v8 - 31 < 0x19 || (v8 <= 0xE ? (v21 = ((1 << v8) & 0x76B6) == 0) : (v21 = 1), !v21))
        {
          if (v8 - 31 >= 0x19 && (v8 > 0xE || ((1 << v8) & 0x76B6) == 0))
          {
            CLMicroLocationProto::RecordingEvent::MergeFrom();
          }

          *(this + 35) |= 1u;
          *(this + 18) = v8;
        }

        v22 = *(a2 + 1);
        if (v22 < *(a2 + 2) && *v22 == 17)
        {
          *(a2 + 1) = v22 + 1;
          goto LABEL_64;
        }

        continue;
      case 2u:
        if (v6 != 1)
        {
          goto LABEL_46;
        }

LABEL_64:
        *v114 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v114) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v114;
        v14 = *(this + 35) | 2;
        *(this + 35) = v14;
        v23 = *(a2 + 1);
        if (v23 >= *(a2 + 2) || *v23 != 26)
        {
          continue;
        }

        *(a2 + 1) = v23 + 1;
LABEL_68:
        *(this + 35) = v14 | 4;
        v24 = *(this + 2);
        if (!v24)
        {
          operator new();
        }

        v114[0] = 0;
        v25 = *(a2 + 1);
        if (v25 >= *(a2 + 2) || *v25 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
          {
            return 0;
          }
        }

        else
        {
          v114[0] = *v25;
          *(a2 + 1) = v25 + 1;
        }

        v26 = *(a2 + 14);
        v27 = *(a2 + 15);
        *(a2 + 14) = v26 + 1;
        if (v26 >= v27)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::ReceivedEventAction::MergePartialFromCodedStream(v24, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v28 = *(a2 + 14);
        v29 = __OFSUB__(v28, 1);
        v30 = v28 - 1;
        if (v30 < 0 == v29)
        {
          *(a2 + 14) = v30;
        }

        v31 = *(a2 + 1);
        if (v31 >= *(a2 + 2) || *v31 != 34)
        {
          continue;
        }

        *(a2 + 1) = v31 + 1;
LABEL_82:
        *(this + 35) |= 8u;
        v32 = *(this + 3);
        if (!v32)
        {
          operator new();
        }

        v114[0] = 0;
        v33 = *(a2 + 1);
        if (v33 >= *(a2 + 2) || *v33 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
          {
            return 0;
          }
        }

        else
        {
          v114[0] = *v33;
          *(a2 + 1) = v33 + 1;
        }

        v34 = *(a2 + 14);
        v35 = *(a2 + 15);
        *(a2 + 14) = v34 + 1;
        if (v34 >= v35)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::AppLaunch::MergePartialFromCodedStream(v32, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v36 = *(a2 + 14);
        v29 = __OFSUB__(v36, 1);
        v37 = v36 - 1;
        if (v37 < 0 == v29)
        {
          *(a2 + 14) = v37;
        }

        v38 = *(a2 + 1);
        if (v38 >= *(a2 + 2) || *v38 != 50)
        {
          continue;
        }

        *(a2 + 1) = v38 + 1;
LABEL_96:
        *(this + 35) |= 0x10u;
        v39 = *(this + 4);
        if (!v39)
        {
          operator new();
        }

        v114[0] = 0;
        v40 = *(a2 + 1);
        if (v40 >= *(a2 + 2) || *v40 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
          {
            return 0;
          }
        }

        else
        {
          v114[0] = *v40;
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
        if (!CLMicroLocationProto::BacklightOn::MergePartialFromCodedStream(v39, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v43 = *(a2 + 14);
        v29 = __OFSUB__(v43, 1);
        v44 = v43 - 1;
        if (v44 < 0 == v29)
        {
          *(a2 + 14) = v44;
        }

        v45 = *(a2 + 1);
        if (v45 >= *(a2 + 2) || *v45 != 58)
        {
          continue;
        }

        *(a2 + 1) = v45 + 1;
LABEL_110:
        *(this + 35) |= 0x20u;
        v46 = *(this + 5);
        if (!v46)
        {
          operator new();
        }

        v114[0] = 0;
        v47 = *(a2 + 1);
        if (v47 >= *(a2 + 2) || *v47 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
          {
            return 0;
          }
        }

        else
        {
          v114[0] = *v47;
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
        if (!CLMicroLocationProto::BatteryChargerConnected::MergePartialFromCodedStream(v46, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v50 = *(a2 + 14);
        v29 = __OFSUB__(v50, 1);
        v51 = v50 - 1;
        if (v51 < 0 == v29)
        {
          *(a2 + 14) = v51;
        }

        v52 = *(a2 + 1);
        if (v52 >= *(a2 + 2) || *v52 != 74)
        {
          continue;
        }

        *(a2 + 1) = v52 + 1;
LABEL_124:
        *(this + 35) |= 0x40u;
        v53 = *(this + 6);
        if (!v53)
        {
          operator new();
        }

        v114[0] = 0;
        v54 = *(a2 + 1);
        if (v54 >= *(a2 + 2) || *v54 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
          {
            return 0;
          }
        }

        else
        {
          v114[0] = *v54;
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
        if (!CLMicroLocationProto::ForcedRecording::MergePartialFromCodedStream(v53, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v57 = *(a2 + 14);
        v29 = __OFSUB__(v57, 1);
        v58 = v57 - 1;
        if (v58 < 0 == v29)
        {
          *(a2 + 14) = v58;
        }

        v59 = *(a2 + 1);
        if (v59 >= *(a2 + 2) || *v59 != 90)
        {
          continue;
        }

        *(a2 + 1) = v59 + 1;
LABEL_138:
        *(this + 35) |= 0x80u;
        v60 = *(this + 7);
        if (!v60)
        {
          operator new();
        }

        v114[0] = 0;
        v61 = *(a2 + 1);
        if (v61 >= *(a2 + 2) || *v61 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
          {
            return 0;
          }
        }

        else
        {
          v114[0] = *v61;
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
        if (!CLMicroLocationProto::HomeKitAccessory::MergePartialFromCodedStream(v60, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v64 = *(a2 + 14);
        v29 = __OFSUB__(v64, 1);
        v65 = v64 - 1;
        if (v65 < 0 == v29)
        {
          *(a2 + 14) = v65;
        }

        v66 = *(a2 + 1);
        if (v66 >= *(a2 + 2) || *v66 != 98)
        {
          continue;
        }

        *(a2 + 1) = v66 + 1;
LABEL_152:
        *(this + 35) |= 0x100u;
        v67 = *(this + 8);
        if (!v67)
        {
          operator new();
        }

        v114[0] = 0;
        v68 = *(a2 + 1);
        if (v68 >= *(a2 + 2) || *v68 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
          {
            return 0;
          }
        }

        else
        {
          v114[0] = *v68;
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
        if (!CLMicroLocationProto::HomeKitScene::MergePartialFromCodedStream(v67, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v71 = *(a2 + 14);
        v29 = __OFSUB__(v71, 1);
        v72 = v71 - 1;
        if (v72 < 0 == v29)
        {
          *(a2 + 14) = v72;
        }

        v73 = *(a2 + 1);
        if (v73 >= *(a2 + 2) || *v73 != 114)
        {
          continue;
        }

        *(a2 + 1) = v73 + 1;
LABEL_166:
        *(this + 35) |= 0x200u;
        v74 = *(this + 10);
        if (!v74)
        {
          operator new();
        }

        v114[0] = 0;
        v75 = *(a2 + 1);
        if (v75 >= *(a2 + 2) || *v75 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
          {
            return 0;
          }
        }

        else
        {
          v114[0] = *v75;
          *(a2 + 1) = v75 + 1;
        }

        v76 = *(a2 + 14);
        v77 = *(a2 + 15);
        *(a2 + 14) = v76 + 1;
        if (v76 >= v77)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::NowPlaying::MergePartialFromCodedStream(v74, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v78 = *(a2 + 14);
        v29 = __OFSUB__(v78, 1);
        v79 = v78 - 1;
        if (v79 < 0 == v29)
        {
          *(a2 + 14) = v79;
        }

        v80 = *(a2 + 1);
        if (v80 >= *(a2 + 2) || *v80 != 122)
        {
          continue;
        }

        *(a2 + 1) = v80 + 1;
LABEL_180:
        *(this + 35) |= 0x400u;
        v81 = *(this + 11);
        if (!v81)
        {
          operator new();
        }

        v114[0] = 0;
        v82 = *(a2 + 1);
        if (v82 >= *(a2 + 2) || *v82 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
          {
            return 0;
          }
        }

        else
        {
          v114[0] = *v82;
          *(a2 + 1) = v82 + 1;
        }

        v83 = *(a2 + 14);
        v84 = *(a2 + 15);
        *(a2 + 14) = v83 + 1;
        if (v83 >= v84)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::RecordingRequest::MergePartialFromCodedStream(v81, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v85 = *(a2 + 14);
        v29 = __OFSUB__(v85, 1);
        v86 = v85 - 1;
        if (v86 < 0 == v29)
        {
          *(a2 + 14) = v86;
        }

        v87 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v12 - v87 <= 1 || *v87 != 128 || v87[1] != 1)
        {
          continue;
        }

        v13 = (v87 + 2);
        *(a2 + 1) = v13;
LABEL_195:
        v114[0] = 0;
        if (v13 >= v12 || (v88 = *v13, (v88 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
          if (!result)
          {
            return result;
          }

          v88 = v114[0];
          v89 = *(a2 + 1);
          v12 = *(a2 + 2);
        }

        else
        {
          v89 = (v13 + 1);
          *(a2 + 1) = v89;
        }

        *(this + 76) = v88 != 0;
        v11 = *(this + 35) | 0x800;
        *(this + 35) = v11;
        if (v12 - v89 < 2 || *v89 != 138 || v89[1] != 1)
        {
          continue;
        }

        *(a2 + 1) = v89 + 2;
LABEL_204:
        *(this + 35) = v11 | 0x1000;
        v90 = *(this + 12);
        if (!v90)
        {
          operator new();
        }

        v114[0] = 0;
        v91 = *(a2 + 1);
        if (v91 >= *(a2 + 2) || *v91 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
          {
            return 0;
          }
        }

        else
        {
          v114[0] = *v91;
          *(a2 + 1) = v91 + 1;
        }

        v92 = *(a2 + 14);
        v93 = *(a2 + 15);
        *(a2 + 14) = v92 + 1;
        if (v92 >= v93)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!CLMicroLocationProto::TruthLabelDonation::MergePartialFromCodedStream(v90, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v94 = *(a2 + 14);
        v29 = __OFSUB__(v94, 1);
        v95 = v94 - 1;
        if (v95 < 0 == v29)
        {
          *(a2 + 14) = v95;
        }

        v96 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v9 - v96 <= 1 || *v96 != 144 || v96[1] != 1)
        {
          continue;
        }

        v10 = (v96 + 2);
        *(a2 + 1) = v10;
LABEL_219:
        v114[0] = 0;
        if (v10 >= v9 || (v97 = *v10, (v97 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
          if (!result)
          {
            return result;
          }

          v97 = v114[0];
          v98 = *(a2 + 1);
          v9 = *(a2 + 2);
        }

        else
        {
          v98 = (v10 + 1);
          *(a2 + 1) = v98;
        }

        *(this + 77) = v97 != 0;
        *(this + 35) |= 0x2000u;
        if (v9 - v98 < 2 || *v98 != 152 || v98[1] != 1)
        {
          continue;
        }

        v15 = (v98 + 2);
        *(a2 + 1) = v15;
LABEL_228:
        v114[0] = 0;
        if (v15 >= v9 || (v99 = *v15, (v99 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
          if (!result)
          {
            return result;
          }

          v99 = v114[0];
        }

        else
        {
          *(a2 + 1) = v15 + 1;
        }

        if (v99 < 4 || v99 == 15)
        {
          *(this + 35) |= 0x4000u;
          *(this + 30) = v99;
        }

        v101 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v19 - v101 >= 2 && *v101 == 160 && v101[1] == 1)
        {
          goto LABEL_242;
        }

        continue;
      case 3u:
        if (v6 != 2)
        {
          goto LABEL_46;
        }

        v14 = *(this + 35);
        goto LABEL_68;
      case 4u:
        if (v6 == 2)
        {
          goto LABEL_82;
        }

        goto LABEL_46;
      case 6u:
        if (v6 == 2)
        {
          goto LABEL_96;
        }

        goto LABEL_46;
      case 7u:
        if (v6 == 2)
        {
          goto LABEL_110;
        }

        goto LABEL_46;
      case 9u:
        if (v6 == 2)
        {
          goto LABEL_124;
        }

        goto LABEL_46;
      case 0xBu:
        if (v6 == 2)
        {
          goto LABEL_138;
        }

        goto LABEL_46;
      case 0xCu:
        if (v6 == 2)
        {
          goto LABEL_152;
        }

        goto LABEL_46;
      case 0xEu:
        if (v6 == 2)
        {
          goto LABEL_166;
        }

        goto LABEL_46;
      case 0xFu:
        if (v6 == 2)
        {
          goto LABEL_180;
        }

        goto LABEL_46;
      case 0x10u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_195;
      case 0x11u:
        if (v6 != 2)
        {
          goto LABEL_46;
        }

        v11 = *(this + 35);
        goto LABEL_204;
      case 0x12u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_219;
      case 0x13u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v15 = *(a2 + 1);
        v9 = *(a2 + 2);
        goto LABEL_228;
      case 0x14u:
        if ((TagFallback & 7) == 0)
        {
          v20 = *(a2 + 1);
          v19 = *(a2 + 2);
          while (1)
          {
            v114[0] = 0;
            if (v20 >= v19 || (v102 = *v20, (v102 & 0x80000000) != 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
              if (!result)
              {
                return result;
              }

              v102 = v114[0];
            }

            else
            {
              *(a2 + 1) = v20 + 1;
            }

            if (v102 <= 7)
            {
              v103 = *(this + 28);
              if (v103 == *(this + 29))
              {
                wireless_diagnostics::google::protobuf::RepeatedField<float>::Reserve(this + 13, v103 + 1);
                v103 = *(this + 28);
              }

              v104 = *(this + 13);
              *(this + 28) = v103 + 1;
              *(v104 + 4 * v103) = v102;
            }

LABEL_252:
            v101 = *(a2 + 1);
            v19 = *(a2 + 2);
            if (v19 - v101 < 2)
            {
              goto LABEL_1;
            }

            v105 = *v101;
            if (v105 == 170)
            {
              break;
            }

            if (v105 != 160 || v101[1] != 1)
            {
              goto LABEL_1;
            }

LABEL_242:
            v20 = (v101 + 2);
            *(a2 + 1) = v20;
          }

          if (v101[1] == 1)
          {
            *(a2 + 1) = v101 + 2;
LABEL_259:
            *(this + 35) |= 0x10000u;
            v106 = *(this + 16);
            if (!v106)
            {
              operator new();
            }

            v114[0] = 0;
            v107 = *(a2 + 1);
            if (v107 >= *(a2 + 2) || *v107 < 0)
            {
              if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114))
              {
                return 0;
              }
            }

            else
            {
              v114[0] = *v107;
              *(a2 + 1) = v107 + 1;
            }

            v108 = *(a2 + 14);
            v109 = *(a2 + 15);
            *(a2 + 14) = v108 + 1;
            if (v108 >= v109)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
            if (!CLMicroLocationProto::AssociatedAccessPointInfo::MergePartialFromCodedStream(v106, a2) || *(a2 + 36) != 1)
            {
              return 0;
            }

            wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
            v110 = *(a2 + 14);
            v29 = __OFSUB__(v110, 1);
            v111 = v110 - 1;
            if (v111 < 0 == v29)
            {
              *(a2 + 14) = v111;
            }

            v112 = *(a2 + 1);
            v17 = *(a2 + 2);
            if (v17 - v112 > 1 && *v112 == 176 && v112[1] == 1)
            {
              v18 = (v112 + 2);
              *(a2 + 1) = v18;
LABEL_274:
              v114[0] = 0;
              if (v18 >= v17 || (v113 = *v18, (v113 & 0x80000000) != 0))
              {
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v114);
                if (!result)
                {
                  return result;
                }

                v113 = v114[0];
              }

              else
              {
                *(a2 + 1) = v18 + 1;
              }

              if (v113 <= 3)
              {
                *(this + 35) |= 0x20000u;
                *(this + 31) = v113;
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

          continue;
        }

        if (v6 == 2)
        {
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadPackedEnumNoInline();
          if (!result)
          {
            return result;
          }

          goto LABEL_252;
        }

LABEL_46:
        if (v6 != 4)
        {
          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }

          continue;
        }

        return 1;
      case 0x15u:
        if (v6 != 2)
        {
          goto LABEL_46;
        }

        goto LABEL_259;
      case 0x16u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_46;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_274;
      default:
        goto LABEL_46;
    }
  }
}

unsigned int *CLMicroLocationProto::RecordingEvent::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[35];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(1, this[18], a2, a4);
    v6 = v5[35];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteDouble(2, a2, *(v5 + 1), a3);
  v6 = v5[35];
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_31;
  }

LABEL_28:
  v10 = *(v5 + 2);
  if (!v10)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v10 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 16);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, v10, a2, a4);
  v6 = v5[35];
  if ((v6 & 8) == 0)
  {
LABEL_5:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_31:
  v11 = *(v5 + 3);
  if (!v11)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v11 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 24);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(4, v11, a2, a4);
  v6 = v5[35];
  if ((v6 & 0x10) == 0)
  {
LABEL_6:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_37;
  }

LABEL_34:
  v12 = *(v5 + 4);
  if (!v12)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v12 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 32);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(6, v12, a2, a4);
  v6 = v5[35];
  if ((v6 & 0x20) == 0)
  {
LABEL_7:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

LABEL_37:
  v13 = *(v5 + 5);
  if (!v13)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v13 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 40);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(7, v13, a2, a4);
  v6 = v5[35];
  if ((v6 & 0x40) == 0)
  {
LABEL_8:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_43;
  }

LABEL_40:
  v14 = *(v5 + 6);
  if (!v14)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v14 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 48);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(9, v14, a2, a4);
  v6 = v5[35];
  if ((v6 & 0x80) == 0)
  {
LABEL_9:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_46;
  }

LABEL_43:
  v15 = *(v5 + 7);
  if (!v15)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v15 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 56);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xB, v15, a2, a4);
  v6 = v5[35];
  if ((v6 & 0x100) == 0)
  {
LABEL_10:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_49;
  }

LABEL_46:
  v16 = *(v5 + 8);
  if (!v16)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v16 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 64);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xC, v16, a2, a4);
  v6 = v5[35];
  if ((v6 & 0x200) == 0)
  {
LABEL_11:
    if ((v6 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_52;
  }

LABEL_49:
  v17 = *(v5 + 10);
  if (!v17)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v17 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 80);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xE, v17, a2, a4);
  v6 = v5[35];
  if ((v6 & 0x400) == 0)
  {
LABEL_12:
    if ((v6 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_55;
  }

LABEL_52:
  v18 = *(v5 + 11);
  if (!v18)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v18 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 88);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0xF, v18, a2, a4);
  v6 = v5[35];
  if ((v6 & 0x800) == 0)
  {
LABEL_13:
    if ((v6 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_56;
  }

LABEL_55:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x10, *(v5 + 76), a2, a4);
  v6 = v5[35];
  if ((v6 & 0x1000) == 0)
  {
LABEL_14:
    if ((v6 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_59;
  }

LABEL_56:
  v19 = *(v5 + 12);
  if (!v19)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
    v19 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 96);
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x11, v19, a2, a4);
  v6 = v5[35];
  if ((v6 & 0x2000) == 0)
  {
LABEL_15:
    if ((v6 & 0x4000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_59:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(0x12, *(v5 + 77), a2, a4);
  if ((v5[35] & 0x4000) != 0)
  {
LABEL_16:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x13, v5[30], a2, a4);
  }

LABEL_17:
  if (v5[28] >= 1)
  {
    v7 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x14, *(*(v5 + 13) + 4 * v7++), a2, a4);
    }

    while (v7 < v5[28]);
  }

  v8 = v5[35];
  if ((v8 & 0x10000) != 0)
  {
    v9 = *(v5 + 16);
    if (!v9)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
      v9 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 128);
    }

    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(0x15, v9, a2, a4);
    v8 = v5[35];
  }

  if ((v8 & 0x20000) != 0)
  {
    v20 = v5[31];

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteEnum(0x16, v20, a2, a4);
  }

  return this;
}

uint64_t CLMicroLocationProto::RecordingEvent::ByteSize(CLMicroLocationProto::RecordingEvent *this)
{
  v2 = *(this + 35);
  if (!v2)
  {
    v4 = 0;
    goto LABEL_56;
  }

  if (v2)
  {
    v5 = *(this + 18);
    if ((v5 & 0x80000000) != 0)
    {
      v3 = 11;
    }

    else if (v5 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 35);
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
    v4 = v3 + 9;
  }

  else
  {
    v4 = v3;
  }

  if ((v2 & 4) != 0)
  {
    v6 = *(this + 2);
    if (!v6)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v6 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 16);
    }

    v7 = CLMicroLocationProto::ReceivedEventAction::ByteSize(v6);
    v8 = v7;
    if (v7 >= 0x80)
    {
      v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    }

    else
    {
      v9 = 1;
    }

    v4 += v8 + v9 + 1;
    v2 = *(this + 35);
    if ((v2 & 8) == 0)
    {
LABEL_15:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_32;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_15;
  }

  v10 = *(this + 3);
  if (!v10)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v10 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 24);
  }

  v11 = CLMicroLocationProto::AppLaunch::ByteSize(v10);
  v12 = v11;
  if (v11 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11);
  }

  else
  {
    v13 = 1;
  }

  v4 += v12 + v13 + 1;
  v2 = *(this + 35);
  if ((v2 & 0x10) == 0)
  {
LABEL_16:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_32:
  v14 = *(this + 4);
  if (!v14)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v14 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 32);
  }

  v15 = CLMicroLocationProto::BacklightOn::ByteSize(v14);
  v16 = v15;
  if (v15 >= 0x80)
  {
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
  }

  else
  {
    v17 = 1;
  }

  v4 += v16 + v17 + 1;
  v2 = *(this + 35);
  if ((v2 & 0x20) == 0)
  {
LABEL_17:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_38:
  v18 = *(this + 5);
  if (!v18)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v18 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 40);
  }

  v19 = CLMicroLocationProto::BatteryChargerConnected::ByteSize(v18);
  v20 = v19;
  if (v19 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v19);
  }

  else
  {
    v21 = 1;
  }

  v4 += v20 + v21 + 1;
  v2 = *(this + 35);
  if ((v2 & 0x40) == 0)
  {
LABEL_18:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

LABEL_44:
  v22 = *(this + 6);
  if (!v22)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v22 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 48);
  }

  v23 = CLMicroLocationProto::ForcedRecording::ByteSize(v22);
  v24 = v23;
  if (v23 >= 0x80)
  {
    v25 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v23);
  }

  else
  {
    v25 = 1;
  }

  v4 += v24 + v25 + 1;
  v2 = *(this + 35);
  if ((v2 & 0x80) != 0)
  {
LABEL_50:
    v26 = *(this + 7);
    if (!v26)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v26 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 56);
    }

    v27 = CLMicroLocationProto::HomeKitAccessory::ByteSize(v26);
    v28 = v27;
    if (v27 >= 0x80)
    {
      v29 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v27);
    }

    else
    {
      v29 = 1;
    }

    v4 += v28 + v29 + 1;
    v2 = *(this + 35);
  }

LABEL_56:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_97;
  }

  if ((v2 & 0x100) == 0)
  {
    if ((v2 & 0x200) == 0)
    {
      goto LABEL_59;
    }

LABEL_67:
    v34 = *(this + 10);
    if (!v34)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v34 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 80);
    }

    v35 = CLMicroLocationProto::NowPlaying::ByteSize(v34);
    v36 = v35;
    if (v35 >= 0x80)
    {
      v37 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v35);
    }

    else
    {
      v37 = 1;
    }

    v4 += v36 + v37 + 1;
    v2 = *(this + 35);
    if ((v2 & 0x400) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_73;
  }

  v30 = *(this + 8);
  if (!v30)
  {
    CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
    v30 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 64);
  }

  v31 = CLMicroLocationProto::HomeKitScene::ByteSize(v30);
  v32 = v31;
  if (v31 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v31);
  }

  else
  {
    v33 = 1;
  }

  v4 += v32 + v33 + 1;
  v2 = *(this + 35);
  if ((v2 & 0x200) != 0)
  {
    goto LABEL_67;
  }

LABEL_59:
  if ((v2 & 0x400) != 0)
  {
LABEL_73:
    v38 = *(this + 11);
    if (!v38)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v38 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 88);
    }

    v39 = CLMicroLocationProto::RecordingRequest::ByteSize(v38);
    v40 = v39;
    if (v39 >= 0x80)
    {
      v41 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v39);
    }

    else
    {
      v41 = 1;
    }

    v4 += v40 + v41 + 1;
    v2 = *(this + 35);
  }

LABEL_79:
  if ((v2 & 0x800) != 0)
  {
    v4 += 3;
  }

  if ((v2 & 0x1000) != 0)
  {
    v42 = *(this + 12);
    if (!v42)
    {
      CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
      v42 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 96);
    }

    v43 = CLMicroLocationProto::TruthLabelDonation::ByteSize(v42);
    v44 = v43;
    if (v43 >= 0x80)
    {
      v45 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v43);
    }

    else
    {
      v45 = 1;
    }

    v4 += v44 + v45 + 2;
    v2 = *(this + 35);
  }

  if ((v2 & 0x2000) != 0)
  {
    v4 += 3;
  }

  if ((v2 & 0x4000) != 0)
  {
    v46 = *(this + 30);
    if ((v46 & 0x80000000) != 0)
    {
      v47 = 12;
    }

    else if (v46 >= 0x80)
    {
      v47 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v46) + 2;
      v2 = *(this + 35);
    }

    else
    {
      v47 = 3;
    }

    v4 += v47;
  }

LABEL_97:
  if ((v2 & 0xFF0000) != 0)
  {
    if ((v2 & 0x10000) != 0)
    {
      v48 = *(this + 16);
      if (!v48)
      {
        CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(0);
        v48 = *(CLMicroLocationProto::RecordingEvent::default_instance_ + 128);
      }

      v49 = CLMicroLocationProto::AssociatedAccessPointInfo::ByteSize(v48);
      v50 = v49;
      if (v49 >= 0x80)
      {
        v51 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v49);
      }

      else
      {
        v51 = 1;
      }

      v4 += v50 + v51 + 2;
      v2 = *(this + 35);
    }

    if ((v2 & 0x20000) != 0)
    {
      v52 = *(this + 31);
      if ((v52 & 0x80000000) != 0)
      {
        v53 = 12;
      }

      else if (v52 >= 0x80)
      {
        v53 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v52) + 2;
      }

      else
      {
        v53 = 3;
      }

      v4 += v53;
    }
  }

  v54 = *(this + 28);
  if (v54 < 1)
  {
    v56 = 0;
  }

  else
  {
    v55 = 0;
    v56 = 0;
    do
    {
      v57 = *(*(this + 13) + 4 * v55);
      if ((v57 & 0x80000000) != 0)
      {
        v58 = 10;
      }

      else if (v57 >= 0x80)
      {
        v58 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v57);
        v54 = *(this + 28);
      }

      else
      {
        v58 = 1;
      }

      v56 += v58;
      ++v55;
    }

    while (v55 < v54);
  }

  result = (v56 + v4 + 2 * v54);
  *(this + 34) = result;
  return result;
}

void CLMicroLocationProto::RecordingEvent::CheckTypeAndMergeFrom(CLMicroLocationProto::RecordingEvent *this, const wireless_diagnostics::google::protobuf::MessageLite *lpsrc)
{
  v4 = **lpsrc;
  {
    CLMicroLocationProto::BleLeechedBeacons::CheckTypeAndMergeFrom();
  }

  CLMicroLocationProto::RecordingEvent::MergeFrom(this, lpsrc);
}

void CLMicroLocationProto::RecordingEvent::CopyFrom(CLMicroLocationProto::RecordingEvent *this, const CLMicroLocationProto::RecordingEvent *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))(this);

    CLMicroLocationProto::RecordingEvent::MergeFrom(this, a2);
  }
}

void CLMicroLocationProto::TriggerEvent::~TriggerEvent(CLMicroLocationProto::TriggerEvent *this)
{
  *this = &unk_286A592E0;
  CLMicroLocationProto::TriggerEvent::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  CLMicroLocationProto::TriggerEvent::~TriggerEvent(this);

  JUMPOUT(0x259CA1F90);
}

void CLMicroLocationProto::TriggerEvent::SharedDtor(CLMicroLocationProto::TriggerEvent *this)
{
  v1 = this;
  v2 = *(this + 2);
  v3 = MEMORY[0x277D82C30];
  if (v2 != MEMORY[0x277D82C30] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    this = MEMORY[0x259CA1F90](v2, 0x1012C40EC159624);
  }

  v5 = *(v1 + 4);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    this = MEMORY[0x259CA1F90](v5, 0x1012C40EC159624);
  }

  v7 = *(v1 + 5);
  if (v7 != v3 && v7 != 0)
  {
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    this = MEMORY[0x259CA1F90](v7, 0x1012C40EC159624);
  }

  v9 = *(v1 + 6);
  if (v9 != v3 && v9 != 0)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    this = MEMORY[0x259CA1F90](v9, 0x1012C40EC159624);
  }

  v11 = *(v1 + 8);
  if (v11 != v3 && v11)
  {
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    this = MEMORY[0x259CA1F90](v11, 0x1012C40EC159624);
  }

  CLMicroLocationProto::protobuf_AddDesc_microlocation_2eproto(this);
}

uint64_t CLMicroLocationProto::TriggerEvent::MergePartialFromCodedStream(CLMicroLocationProto::TriggerEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v42[0] = 0;
        v8 = *(a2 + 1);
        if (v8 < *(a2 + 2))
        {
          v9 = *v8;
          if ((v9 & 0x80000000) == 0)
          {
            *(a2 + 1) = v8 + 1;
LABEL_41:
            if (v9 - 31 < 0x19 || (v9 <= 0xE ? (v23 = ((1 << v9) & 0x76B6) == 0) : (v23 = 1), !v23))
            {
              if (v9 - 31 >= 0x19 && (v9 > 0xE || ((1 << v9) & 0x76B6) == 0))
              {
                CLMicroLocationProto::TriggerEvent::MergeFrom();
              }

              *(this + 21) |= 1u;
              *(this + 6) = v9;
            }

            v24 = *(a2 + 1);
            if (v24 < *(a2 + 2) && *v24 == 17)
            {
              *(a2 + 1) = v24 + 1;
              goto LABEL_53;
            }

            continue;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v42);
        if (result)
        {
          v9 = v42[0];
          goto LABEL_41;
        }

        break;
      case 2u:
        if (v7 != 1)
        {
          goto LABEL_35;
        }

LABEL_53:
        *v42 = 0;
        if ((wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadLittleEndian64Fallback(a2, v42) & 1) == 0)
        {
          return 0;
        }

        *(this + 1) = *v42;
        *(this + 21) |= 2u;
        v25 = *(a2 + 1);
        v14 = *(a2 + 2);
        if (v25 >= v14 || *v25 != 24)
        {
          continue;
        }

        v15 = v25 + 1;
        *(a2 + 1) = v15;
LABEL_57:
        v42[0] = 0;
        if (v15 >= v14 || (v26 = *v15, (v26 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v42);
          if (!result)
          {
            return result;
          }

          v26 = v42[0];
          v27 = *(a2 + 1);
          v14 = *(a2 + 2);
        }

        else
        {
          v27 = v15 + 1;
          *(a2 + 1) = v27;
        }

        *(this + 28) = v26 != 0;
        v16 = *(this + 21) | 4;
        *(this + 21) = v16;
        if (v27 >= v14 || *v27 != 34)
        {
          continue;
        }

        *(a2 + 1) = v27 + 1;
LABEL_65:
        *(this + 21) = v16 | 8;
        if (*(this + 2) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v28 = *(a2 + 1);
        if (v28 >= *(a2 + 2) || *v28 != 42)
        {
          continue;
        }

        *(a2 + 1) = v28 + 1;
LABEL_71:
        *(this + 21) |= 0x10u;
        if (*(this + 4) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v29 = *(a2 + 1);
        if (v29 >= *(a2 + 2) || *v29 != 50)
        {
          continue;
        }

        *(a2 + 1) = v29 + 1;
LABEL_77:
        *(this + 21) |= 0x20u;
        if (*(this + 5) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v30 = *(a2 + 1);
        if (v30 >= *(a2 + 2) || *v30 != 58)
        {
          continue;
        }

        *(a2 + 1) = v30 + 1;
LABEL_83:
        *(this + 21) |= 0x40u;
        if (*(this + 6) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v31 = *(a2 + 1);
        v17 = *(a2 + 2);
        if (v31 >= v17 || *v31 != 64)
        {
          continue;
        }

        v18 = v31 + 1;
        *(a2 + 1) = v18;
LABEL_89:
        v42[0] = 0;
        if (v18 >= v17 || (v32 = *v18, (v32 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v42);
          if (!result)
          {
            return result;
          }

          v32 = v42[0];
          v33 = *(a2 + 1);
          v17 = *(a2 + 2);
        }

        else
        {
          v33 = v18 + 1;
          *(a2 + 1) = v33;
        }

        *(this + 29) = v32 != 0;
        *(this + 21) |= 0x80u;
        if (v33 >= v17 || *v33 != 72)
        {
          continue;
        }

        v21 = v33 + 1;
        *(a2 + 1) = v21;
LABEL_97:
        v42[0] = 0;
        if (v21 >= v17 || (v34 = *v21, (v34 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v42);
          if (!result)
          {
            return result;
          }

          v34 = v42[0];
        }

        else
        {
          *(a2 + 1) = v21 + 1;
        }

        if (v34 <= 1)
        {
          *(this + 21) |= 0x100u;
          *(this + 14) = v34;
        }

        v35 = *(a2 + 1);
        v12 = *(a2 + 2);
        if (v35 >= v12 || *v35 != 80)
        {
          continue;
        }

        v13 = v35 + 1;
        *(a2 + 1) = v13;
LABEL_107:
        v42[0] = 0;
        if (v13 >= v12 || (v36 = *v13, (v36 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v42);
          if (!result)
          {
            return result;
          }

          v36 = v42[0];
        }

        else
        {
          *(a2 + 1) = v13 + 1;
        }

        if (v36 <= 5)
        {
          *(this + 21) |= 0x200u;
          *(this + 15) = v36;
        }

        v37 = *(a2 + 1);
        v19 = *(a2 + 2);
        if (v37 >= v19 || *v37 != 88)
        {
          continue;
        }

        v20 = v37 + 1;
        *(a2 + 1) = v20;
LABEL_117:
        v42[0] = 0;
        if (v20 >= v19 || (v38 = *v20, (v38 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v42);
          if (!result)
          {
            return result;
          }

          v38 = v42[0];
        }

        else
        {
          *(a2 + 1) = v20 + 1;
        }

        if (v38 <= 5)
        {
          *(this + 21) |= 0x400u;
          *(this + 18) = v38;
        }

        v39 = *(a2 + 1);
        if (v39 >= *(a2 + 2) || *v39 != 98)
        {
          continue;
        }

        *(a2 + 1) = v39 + 1;
LABEL_127:
        *(this + 21) |= 0x800u;
        if (*(this + 8) == v4)
        {
          operator new();
        }

        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadBytes();
        if (!result)
        {
          return result;
        }

        v40 = *(a2 + 1);
        v10 = *(a2 + 2);
        if (v40 >= v10 || *v40 != 104)
        {
          continue;
        }

        v11 = v40 + 1;
        *(a2 + 1) = v11;
LABEL_133:
        v42[0] = 0;
        if (v11 >= v10 || (v41 = *v11, (v41 & 0x80000000) != 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, v42);
          if (!result)
          {
            return result;
          }

          v41 = v42[0];
        }

        else
        {
          *(a2 + 1) = v11 + 1;
        }

        if (v41 <= 3)
        {
          *(this + 21) |= 0x1000u;
          *(this + 19) = v41;
        }

        if (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10))
        {
          continue;
        }

        *(a2 + 8) = 0;
        result = 1;
        *(a2 + 36) = 1;
        return result;
      case 3u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v15 = *(a2 + 1);
        v14 = *(a2 + 2);
        goto LABEL_57;
      case 4u:
        if (v7 != 2)
        {
          goto LABEL_35;
        }

        v16 = *(this + 21);
        goto LABEL_65;
      case 5u:
        if (v7 == 2)
        {
          goto LABEL_71;
        }

        goto LABEL_35;
      case 6u:
        if (v7 == 2)
        {
          goto LABEL_77;
        }

        goto LABEL_35;
      case 7u:
        if (v7 == 2)
        {
          goto LABEL_83;
        }

        goto LABEL_35;
      case 8u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v18 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_89;
      case 9u:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v21 = *(a2 + 1);
        v17 = *(a2 + 2);
        goto LABEL_97;
      case 0xAu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v13 = *(a2 + 1);
        v12 = *(a2 + 2);
        goto LABEL_107;
      case 0xBu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v20 = *(a2 + 1);
        v19 = *(a2 + 2);
        goto LABEL_117;
      case 0xCu:
        if (v7 == 2)
        {
          goto LABEL_127;
        }

        goto LABEL_35;
      case 0xDu:
        if ((TagFallback & 7) != 0)
        {
          goto LABEL_35;
        }

        v11 = *(a2 + 1);
        v10 = *(a2 + 2);
        goto LABEL_133;
      default:
LABEL_35:
        if (v7 == 4)
        {
          return 1;
        }

        if (wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback))
        {
          continue;
        }

        return 0;
    }

    return result;
  }
}