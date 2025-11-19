uint64_t ot::FactoryDiags::Diags::SetOutputCallback(ot::FactoryDiags::Diags *this, void (*a2)(const char *, char *, void *), void *a3)
{
  *(this + 5) = a2;
  *(this + 6) = a3;
  Instance = ot::InstanceLocator::GetInstance(this);
  return otPlatDiagSetOutputCallback(Instance, a2, a3);
}

BOOL ot::FactoryDiags::Diags::RawPowerSetting::operator!=(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v3 = 1;
  if (a1[8] == a2[8])
  {
    return memcmp(a1, a2, a1[8]) != 0;
  }

  return v3;
}

{
  return ot::FactoryDiags::Diags::RawPowerSetting::operator!=(a1, a2);
}

uint64_t ot::ClearAllBytes<ot::FactoryDiags::Diags::Stats>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::FactoryDiags::Diags::Stats>(result);
}

uint64_t ot::Mac::ChannelMask::GetNumberOfChannels(ot::Mac::ChannelMask *this)
{
  v5 = this;
  v4 = 0;
  v3 = -1;
  while (!ot::Mac::ChannelMask::GetNextChannel(this, &v3))
  {
    ++v4;
  }

  return v4;
}

uint64_t ot::Mac::ChannelMask::GetNextChannel(ot::Mac::ChannelMask *this, unsigned __int8 *a2)
{
  v4 = 23;
  if (*a2 == 255)
  {
    *a2 = 10;
  }

  ++*a2;
  while (*a2 <= 0x19u)
  {
    if (ot::Mac::ChannelMask::ContainsChannel(this, *a2))
    {
      return 0;
    }

    ++*a2;
  }

  return v4;
}

BOOL ot::Mac::ChannelMask::ContainsChannel(ot::Mac::ChannelMask *this, unsigned __int8 a2)
{
  return a2 < 0x20uLL && ((1 << a2) & *this) != 0;
}

{
  return ot::Mac::ChannelMask::ContainsChannel(this, a2);
}

uint64_t ot::Mac::ChannelMask::GetNextChannelWithRollOver(ot::Mac::ChannelMask *this, unsigned __int8 a2)
{
  v5 = this;
  v4[1] = a2;
  v4[0] = a2;
  if (ot::Mac::ChannelMask::IsEmpty(this))
  {
    if (++v4[0] > 0x19u)
    {
      v4[0] = 11;
    }
  }

  else if (ot::Mac::ChannelMask::GetNextChannel(this, v4) == 23)
  {
    v4[0] = -1;
    ot::Mac::ChannelMask::GetNextChannel(this, v4);
    IgnoreError();
  }

  return v4[0];
}

BOOL ot::Mac::ChannelMask::IsEmpty(ot::Mac::ChannelMask *this)
{
  return *this == 0;
}

{
  return ot::Mac::ChannelMask::IsEmpty(this);
}

uint64_t ot::Mac::ChannelMask::ChooseRandomChannel(ot::Mac::ChannelMask *this)
{
  v7 = this;
  v6 = -1;
  if (!ot::Mac::ChannelMask::IsEmpty(this))
  {
    NumberOfChannels = ot::Mac::ChannelMask::GetNumberOfChannels(this);
    Uint8InRange = ot::Random::NonCrypto::GetUint8InRange(0, NumberOfChannels);
    if (!ot::Mac::ChannelMask::GetNextChannel(this, &v6))
    {
      do
      {
        v2 = Uint8InRange--;
      }

      while (v2 && !ot::Mac::ChannelMask::GetNextChannel(this, &v6));
    }
  }

  return v6;
}

ot::StringWriter *ot::Mac::ChannelMask::ToString@<X0>(ot::Mac::ChannelMask *this@<X0>, ot::StringWriter *a2@<X8>)
{
  v12 = this;
  ot::String<(unsigned short)45>::String(a2);
  v11 = -1;
  v10 = 0;
  ot::StringWriter::Append(a2, "{");
  NextChannel = ot::Mac::ChannelMask::GetNextChannel(this, &v11);
  while (!NextChannel)
  {
    v8 = v11;
    for (i = v11; ; i = v11)
    {
      NextChannel = ot::Mac::ChannelMask::GetNextChannel(this, &v11);
      if (NextChannel || v11 != i + 1)
      {
        break;
      }
    }

    v2 = ", ";
    if ((v10 & 1) == 0)
    {
      v2 = " ";
    }

    ot::StringWriter::Append(a2, "%s%d", v2, v8);
    v10 = 1;
    if (v8 < i)
    {
      v3 = ", ";
      if (i != v8 + 1)
      {
        v3 = "-";
      }

      ot::StringWriter::Append(a2, "%s%d", v3, i);
    }
  }

  return ot::StringWriter::Append(a2, " }");
}

uint64_t ot::String<(unsigned short)45>::String(uint64_t a1)
{
  ot::String<(unsigned short)45>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 45);
  return a1;
}

ot::DataPollHandler::Callbacks *ot::DataPollHandler::Callbacks::Callbacks(ot::DataPollHandler::Callbacks *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  return this;
}

{
  ot::DataPollHandler::Callbacks::Callbacks(this, a2);
  return this;
}

ot::DataPollHandler *ot::DataPollHandler::DataPollHandler(ot::DataPollHandler *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  *(this + 4) = 0;
  ot::DataPollHandler::Callbacks::Callbacks((this + 10), a2);
  return this;
}

{
  ot::DataPollHandler::DataPollHandler(this, a2);
  return this;
}

BOOL ot::DataPollHandler::Clear(ot::DataPollHandler *this)
{
  v13 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v11 = ot::ChildTable::Iterate(v1, 5);
  v12 = &v11;
  v16 = ot::ChildTable::IteratorBuilder::begin(&v11);
  v17 = v2;
  v9 = v16;
  v10 = v2;
  v14 = ot::ChildTable::IteratorBuilder::end(v12);
  v15 = v3;
  v7 = v14;
  v8 = v3;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v9, &v7);
    if (!result)
    {
      break;
    }

    v6 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v9);
    ot::DataPollHandler::ChildInfo::SetDataPollPending(v6 + 160, 0);
    ot::DataPollHandler::ChildInfo::SetFrameReplacePending(v6 + 160, 0);
    ot::DataPollHandler::ChildInfo::SetFramePurgePending(v6 + 160, 0);
    ot::DataPollHandler::ChildInfo::ResetIndirectTxAttempts(v6 + 160);
    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v9);
  }

  *this = 0;
  return result;
}

uint64_t ot::DataPollHandler::ChildInfo::SetDataPollPending(uint64_t this, char a2)
{
  *(this + 6) = *(this + 6) & 0xDF | (32 * (a2 & 1));
  return this;
}

{
  return ot::DataPollHandler::ChildInfo::SetDataPollPending(this, a2);
}

uint64_t ot::DataPollHandler::ChildInfo::SetFrameReplacePending(uint64_t this, char a2)
{
  *(this + 6) = *(this + 6) & 0x7F | ((a2 & 1) << 7);
  return this;
}

{
  return ot::DataPollHandler::ChildInfo::SetFrameReplacePending(this, a2);
}

uint64_t ot::DataPollHandler::ChildInfo::SetFramePurgePending(uint64_t this, char a2)
{
  *(this + 6) = *(this + 6) & 0xBF | ((a2 & 1) << 6);
  return this;
}

{
  return ot::DataPollHandler::ChildInfo::SetFramePurgePending(this, a2);
}

uint64_t ot::DataPollHandler::ChildInfo::ResetIndirectTxAttempts(uint64_t this)
{
  *(this + 6) &= 0xE0u;
  return this;
}

{
  return ot::DataPollHandler::ChildInfo::ResetIndirectTxAttempts(this);
}

void ot::DataPollHandler::RequestFrameChange(uint64_t a1, char a2, ot::Child *a3)
{
  if (*a1 == a3 && (v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1), ot::Mac::Mac::IsPerformingIndirectTransmit(v3)))
  {
    if (a2)
    {
      if (a2 == 1)
      {
        ot::DataPollHandler::ChildInfo::SetFrameReplacePending(a3 + 160, 1);
      }
    }

    else
    {
      ot::DataPollHandler::ChildInfo::SetFramePurgePending(a3 + 160, 1);
    }
  }

  else
  {
    ot::DataPollHandler::ResetTxAttempts(a1, a3);
    ot::DataPollHandler::Callbacks::HandleFrameChangeDone((a1 + 10), a3);
  }
}

BOOL ot::Mac::Mac::IsPerformingIndirectTransmit(ot::Mac::Mac *this)
{
  return *(this + 1) == 7;
}

{
  return ot::Mac::Mac::IsPerformingIndirectTransmit(this);
}

void ot::DataPollHandler::Callbacks::HandleFrameChangeDone(ot::DataPollHandler::Callbacks *this, ot::Child *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(this);
  ot::IndirectSender::HandleFrameChangeDone(v2, a2);
}

{
  ot::DataPollHandler::Callbacks::HandleFrameChangeDone(this, a2);
}

void ot::DataPollHandler::HandleDataPoll(ot::DataPollHandler *this, ot::Mac::RxFrame *a2)
{
  v27 = this;
  v26 = a2;
  ot::Mac::Address::Address(v25);
  if (ot::Mac::Frame::GetSecurityEnabled(v26))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    if (!ot::Mle::Mle::IsDetached(v2) && !ot::Mac::Frame::GetSrcAddr(v26, v25))
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
      ot::ChildTable::FindChild(v3, v25, 1);
      v24 = v4;
      if (v4)
      {
        Now = ot::TimerMilli::GetNow(v4);
        ot::Neighbor::SetLastHeard(v24, Now);
        ot::Neighbor::ResetLinkFailures(v24);
        IndirectMessageCount = ot::IndirectSender::ChildInfo::GetIndirectMessageCount((v24 + 144));
        ot::IndirectSender::ChildInfo::GetApplicationMessageCount((v24 + 144));
        Rloc16 = ot::Neighbor::GetRloc16(v24);
        ot::Mac::RxFrame::GetRssi(v26);
        ot::Mac::RxFrame::IsAckedWithFramePending(v26);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollHandlr", "Rx data poll, src:0x%04x, qed_msgs:%d, app_msgs:%d, rss:%d, ack-fp:%d", v12, v13, v14, v15, v16, v17, Rloc16);
        if (ot::Mac::RxFrame::IsAckedWithFramePending(v26))
        {
          if (*this)
          {
            ot::DataPollHandler::ChildInfo::SetDataPollPending(v24 + 160, 1);
          }

          else
          {
            *this = v24;
            v19 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
            ot::Mac::Mac::RequestIndirectFrameTransmission(v19);
          }
        }

        else if (IndirectMessageCount)
        {
          if (ot::Mac::Address::IsShort(v25))
          {
            matched = ot::GetProvider<ot::InstanceLocator>::Get<ot::SourceMatchController>(this);
            ot::SourceMatchController::SetSrcMatchAsShort(matched, v24, 1);
          }
        }
      }

      else
      {
        ot::Mac::Address::ToString(v25, v28);
        v5 = ot::String<(unsigned short)17>::AsCString(v28);
        ot::Logger::LogAtLevel<(ot::LogLevel)3>("DataPollHandlr", "Rx data poll, child:%s not found", v6, v7, v8, v9, v10, v11, v5);
      }
    }
  }
}

uint64_t ot::Neighbor::ResetLinkFailures(uint64_t this)
{
  *(this + 35) = 0;
  return this;
}

{
  return ot::Neighbor::ResetLinkFailures(this);
}

uint64_t ot::IndirectSender::ChildInfo::GetApplicationMessageCount(ot::IndirectSender::ChildInfo *this)
{
  return HIDWORD(*(this + 1)) & 0x3FFF;
}

{
  return ot::IndirectSender::ChildInfo::GetApplicationMessageCount(this);
}

uint64_t ot::Mac::RxFrame::GetRssi(ot::Mac::RxFrame *this)
{
  return *(this + 29);
}

{
  return ot::Mac::RxFrame::GetRssi(this);
}

uint64_t ot::Mac::RxFrame::IsAckedWithFramePending(ot::Mac::RxFrame *this)
{
  return *(this + 31) & 1;
}

{
  return ot::Mac::RxFrame::IsAckedWithFramePending(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::SourceMatchController>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::SourceMatchController>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::SourceMatchController>(a1);
}

ot::Mac::Frame *ot::DataPollHandler::HandleFrameRequest(ot::DataPollHandler *this, ot::Mac::TxFrames *a2)
{
  TxFrame = 0;
  if (*this)
  {
    TxFrame = ot::Mac::TxFrames::GetTxFrame(a2);
    if (ot::DataPollHandler::Callbacks::PrepareFrameForChild((this + 10), TxFrame, this + 4, *this))
    {
      return 0;
    }

    else if (ot::DataPollHandler::ChildInfo::GetIndirectTxAttempts((*this + 160)) <= 0 && ot::CslTxScheduler::ChildInfo::GetCslTxAttempts((*this + 168)) <= 0)
    {
      ot::Mac::TxFrame::SetIsARetransmission(TxFrame, 0);
    }

    else
    {
      ot::Mac::TxFrame::SetIsARetransmission(TxFrame, 1);
      IndirectDataSequenceNumber = ot::DataPollHandler::ChildInfo::GetIndirectDataSequenceNumber((*this + 160));
      ot::Mac::Frame::SetSequence(TxFrame, IndirectDataSequenceNumber);
      if (ot::Mac::Frame::GetSecurityEnabled(TxFrame))
      {
        IndirectFrameCounter = ot::DataPollHandler::ChildInfo::GetIndirectFrameCounter((*this + 160));
        ot::Mac::Frame::SetFrameCounter(TxFrame, IndirectFrameCounter);
        IndirectKeyId = ot::DataPollHandler::ChildInfo::GetIndirectKeyId((*this + 160));
        ot::Mac::Frame::SetKeyId(TxFrame, IndirectKeyId);
      }
    }
  }

  return TxFrame;
}

uint64_t ot::DataPollHandler::Callbacks::PrepareFrameForChild(ot::InstanceLocator *a1, ot::Mac::TxFrame *a2, _WORD *a3, uint64_t a4)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(a1);
  return ot::IndirectSender::PrepareFrameForChild(v4, a2, a3, a4);
}

{
  return ot::DataPollHandler::Callbacks::PrepareFrameForChild(a1, a2, a3, a4);
}

uint64_t ot::DataPollHandler::ChildInfo::GetIndirectTxAttempts(ot::DataPollHandler::ChildInfo *this)
{
  return *(this + 6) & 0x1F;
}

{
  return ot::DataPollHandler::ChildInfo::GetIndirectTxAttempts(this);
}

uint64_t ot::CslTxScheduler::ChildInfo::GetCslTxAttempts(ot::CslTxScheduler::ChildInfo *this)
{
  return *(this + 2) & 0x7F;
}

{
  return ot::CslTxScheduler::ChildInfo::GetCslTxAttempts(this);
}

uint64_t ot::Mac::TxFrame::SetIsARetransmission(uint64_t this, char a2)
{
  *(this + 45) = *(this + 45) & 0xFD | (2 * (a2 & 1));
  return this;
}

{
  return ot::Mac::TxFrame::SetIsARetransmission(this, a2);
}

uint64_t ot::Mac::Frame::SetSequence(ot::Mac::Frame *this, char a2)
{
  Psdu = ot::Mac::Frame::GetPsdu(this);
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  FcfSize = ot::Mac::Frame::GetFcfSize(FrameControlField);
  result = Psdu;
  *(Psdu + FcfSize) = a2;
  return result;
}

{
  return ot::Mac::Frame::SetSequence(this, a2);
}

uint64_t ot::DataPollHandler::ChildInfo::GetIndirectDataSequenceNumber(ot::DataPollHandler::ChildInfo *this)
{
  return *(this + 5);
}

{
  return ot::DataPollHandler::ChildInfo::GetIndirectDataSequenceNumber(this);
}

uint64_t ot::DataPollHandler::ChildInfo::GetIndirectFrameCounter(ot::DataPollHandler::ChildInfo *this)
{
  return *this;
}

{
  return ot::DataPollHandler::ChildInfo::GetIndirectFrameCounter(this);
}

uint64_t ot::DataPollHandler::ChildInfo::GetIndirectKeyId(ot::DataPollHandler::ChildInfo *this)
{
  return *(this + 4);
}

{
  return ot::DataPollHandler::ChildInfo::GetIndirectKeyId(this);
}

void ot::DataPollHandler::HandleSentFrame(unsigned __int16 *a1, ot::Mac::TxFrame *a2, int a3)
{
  v4 = *a1;
  if (*a1)
  {
    *a1 = 0;
    ot::DataPollHandler::HandleSentFrame(a1, a2, a3, v4);
  }

  ot::DataPollHandler::ProcessPendingPolls(a1);
}

void ot::DataPollHandler::HandleSentFrame(unsigned __int16 *a1, ot::Mac::TxFrame *a2, int a3, uint64_t a4)
{
  v19 = a1;
  v18 = a2;
  v17 = a3;
  v16 = a4;
  if (ot::DataPollHandler::ChildInfo::IsFramePurgePending((a4 + 160)))
  {
    ot::DataPollHandler::ChildInfo::SetFramePurgePending(v16 + 160, 0);
    ot::DataPollHandler::ChildInfo::SetFrameReplacePending(v16 + 160, 0);
    ot::DataPollHandler::ResetTxAttempts(a1, v16);
    ot::DataPollHandler::Callbacks::HandleFrameChangeDone((a1 + 5), v16);
    return;
  }

  if (!v17)
  {
    ot::DataPollHandler::ResetTxAttempts(a1, v16);
    ot::DataPollHandler::ChildInfo::SetFrameReplacePending(v16 + 160, 0);
LABEL_28:
    ot::DataPollHandler::Callbacks::HandleSentFrameToChild((a1 + 5), v18, a1 + 4, v17, v16);
    return;
  }

  if (v17 != 11)
  {
    if (v17 == 14)
    {
      IsHeaderUpdated = 1;
      if (ot::Mac::Frame::GetSecurityEnabled(v18))
      {
        IsHeaderUpdated = ot::Mac::TxFrame::IsHeaderUpdated(v18);
      }

      if ((IsHeaderUpdated & 1) == 0)
      {
        __assert_rtn("HandleSentFrame", "data_poll_handler.cpp", 300, "!aFrame.GetSecurityEnabled() || aFrame.IsHeaderUpdated()");
      }

      ot::DataPollHandler::ChildInfo::IncrementIndirectTxAttempts(v16 + 160);
      Rloc16 = ot::Neighbor::GetRloc16(v16);
      ot::DataPollHandler::ChildInfo::GetIndirectTxAttempts((v16 + 160));
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollHandlr", "Indirect tx to child %04x failed, attempt %d/%d", v4, v5, v6, v7, v8, v9, Rloc16);
    }

    else if (v17 != 15 && v17 != 29)
    {
      __assert_rtn("HandleSentFrame", "data_poll_handler.cpp", 347, "false");
    }
  }

  if (ot::DataPollHandler::ChildInfo::IsFrameReplacePending((v16 + 160)))
  {
    ot::DataPollHandler::ChildInfo::SetFrameReplacePending(v16 + 160, 0);
    ot::DataPollHandler::ResetTxAttempts(a1, v16);
    ot::DataPollHandler::Callbacks::HandleFrameChangeDone((a1 + 5), v16);
    return;
  }

  if (ot::DataPollHandler::ChildInfo::GetIndirectTxAttempts((v16 + 160)) >= 4 || ot::Mac::Frame::IsEmpty(v18))
  {
    ot::DataPollHandler::ChildInfo::ResetIndirectTxAttempts(v16 + 160);
    goto LABEL_28;
  }

  Sequence = ot::Mac::Frame::GetSequence(v18);
  ot::DataPollHandler::ChildInfo::SetIndirectDataSequenceNumber(v16 + 160, Sequence);
  if (ot::Mac::Frame::GetSecurityEnabled(v18) && (ot::Mac::TxFrame::IsHeaderUpdated(v18) & 1) != 0)
  {
    v15 = 0;
    v14 = 0;
    if (ot::Mac::Frame::GetFrameCounter(v18, &v15))
    {
      __assert_rtn("HandleSentFrame", "data_poll_handler.cpp", 333, "false");
    }

    ot::DataPollHandler::ChildInfo::SetIndirectFrameCounter(v16 + 40, v15);
    if (ot::Mac::Frame::GetKeyId(v18, &v14))
    {
      __assert_rtn("HandleSentFrame", "data_poll_handler.cpp", 336, "false");
    }

    ot::DataPollHandler::ChildInfo::SetIndirectKeyId(v16 + 160, v14);
  }
}

void ot::DataPollHandler::ProcessPendingPolls(ot::DataPollHandler *this)
{
  v16 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
  v14 = ot::ChildTable::Iterate(v1, 1);
  v15 = &v14;
  v19 = ot::ChildTable::IteratorBuilder::begin(&v14);
  v20 = v2;
  v12 = v19;
  v13 = v2;
  v17 = ot::ChildTable::IteratorBuilder::end(v15);
  v18 = v3;
  v10 = v17;
  v11 = v3;
  while (ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator!=(&v12, &v10))
  {
    v9 = ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator*(&v12);
    if (ot::DataPollHandler::ChildInfo::IsDataPollPending((v9 + 160)))
    {
      v5 = 1;
      if (*this)
      {
        LastHeard = ot::Neighbor::GetLastHeard(v9);
        v7 = ot::Neighbor::GetLastHeard(*this);
        v5 = ot::Time::operator<(&LastHeard, &v7);
      }

      if (v5)
      {
        *this = v9;
      }
    }

    ot::ItemPtrIterator<ot::Child,ot::ChildTable::Iterator>::operator++(&v12);
  }

  if (*this)
  {
    ot::DataPollHandler::ChildInfo::SetDataPollPending(*this + 160, 0);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    ot::Mac::Mac::RequestIndirectFrameTransmission(v4);
  }
}

uint64_t ot::DataPollHandler::ChildInfo::IsFramePurgePending(ot::DataPollHandler::ChildInfo *this)
{
  return (*(this + 6) >> 6) & 1;
}

{
  return ot::DataPollHandler::ChildInfo::IsFramePurgePending(this);
}

uint64_t ot::Mac::TxFrame::IsHeaderUpdated(ot::Mac::TxFrame *this)
{
  return *(this + 45) & 1;
}

{
  return ot::Mac::TxFrame::IsHeaderUpdated(this);
}

uint64_t ot::DataPollHandler::ChildInfo::IncrementIndirectTxAttempts(uint64_t this)
{
  *(this + 6) = *(this + 6) & 0xE0 | ((*(this + 6) & 0x1F) + 1) & 0x1F;
  return this;
}

{
  return ot::DataPollHandler::ChildInfo::IncrementIndirectTxAttempts(this);
}

uint64_t ot::DataPollHandler::ChildInfo::IsFrameReplacePending(ot::DataPollHandler::ChildInfo *this)
{
  return (*(this + 6) >> 7) & 1;
}

{
  return ot::DataPollHandler::ChildInfo::IsFrameReplacePending(this);
}

BOOL ot::Mac::Frame::IsEmpty(ot::Mac::Frame *this)
{
  return *(this + 4) == 0;
}

{
  return ot::Mac::Frame::IsEmpty(this);
}

uint64_t ot::DataPollHandler::ChildInfo::SetIndirectDataSequenceNumber(uint64_t this, char a2)
{
  *(this + 5) = a2;
  return this;
}

{
  return ot::DataPollHandler::ChildInfo::SetIndirectDataSequenceNumber(this, a2);
}

uint64_t ot::Mac::Frame::GetSequence(ot::Mac::Frame *this)
{
  Psdu = ot::Mac::Frame::GetPsdu(this);
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  return *(Psdu + ot::Mac::Frame::GetFcfSize(FrameControlField));
}

{
  return ot::Mac::Frame::GetSequence(this);
}

_DWORD *ot::DataPollHandler::ChildInfo::SetIndirectFrameCounter(_DWORD *this, int a2)
{
  *this = a2;
  return this;
}

{
  return ot::DataPollHandler::ChildInfo::SetIndirectFrameCounter(this, a2);
}

uint64_t ot::DataPollHandler::ChildInfo::SetIndirectKeyId(uint64_t this, char a2)
{
  *(this + 4) = a2;
  return this;
}

{
  return ot::DataPollHandler::ChildInfo::SetIndirectKeyId(this, a2);
}

void ot::DataPollHandler::Callbacks::HandleSentFrameToChild(ot::InstanceLocator *a1, ot::Mac::Frame *a2, unsigned __int16 *a3, int a4, uint64_t a5)
{
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(a1);
  ot::IndirectSender::HandleSentFrameToChild(v5, a2, a3, a4, a5);
}

{
  ot::DataPollHandler::Callbacks::HandleSentFrameToChild(a1, a2, a3, a4, a5);
}

uint64_t ot::DataPollHandler::ChildInfo::IsDataPollPending(ot::DataPollHandler::ChildInfo *this)
{
  return (*(this + 6) >> 5) & 1;
}

{
  return ot::DataPollHandler::ChildInfo::IsDataPollPending(this);
}

uint64_t ot::Neighbor::GetLastHeard(ot::Neighbor *this)
{
  return *(this + 2);
}

{
  return ot::Neighbor::GetLastHeard(this);
}

uint64_t ot::CslTxScheduler::ChildInfo::ResetCslTxAttempts(uint64_t this)
{
  *(this + 2) &= 0x80u;
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::ResetCslTxAttempts(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::IndirectSender>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::IndirectSender>(a1);
}

uint64_t ot::Instance::Get<ot::IndirectSender>(uint64_t a1)
{
  return a1 + 90200;
}

{
  return ot::Instance::Get<ot::IndirectSender>(a1);
}

uint64_t ot::Mac::Frame::GetPsdu(ot::Mac::Frame *this)
{
  return *this;
}

{
  return *this;
}

{
  return ot::Mac::Frame::GetPsdu(this);
}

{
  return ot::Mac::Frame::GetPsdu(this);
}

uint64_t ot::Mac::Frame::GetFcfSize(ot::Mac::Frame *this)
{
  if (ot::Mac::Frame::IsShortFcf(this))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

{
  return ot::Mac::Frame::GetFcfSize(this);
}

uint64_t ot::Instance::Get<ot::SourceMatchController>(uint64_t a1)
{
  return a1 + 90201;
}

{
  return ot::Instance::Get<ot::SourceMatchController>(a1);
}

ot::DataPollSender *ot::DataPollSender::DataPollSender(ot::DataPollSender *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Time::Time(this, 0);
  ot::Time::Time((this + 4), 0);
  ot::Time::Time((this + 8), 0);
  *(this + 4) = 0;
  *(this + 5) &= 0xFC000000;
  *(this + 5) &= 0x3FFFFFFu;
  ot::TimerMilliIn<ot::DataPollSender,&ot::DataPollSender::HandlePollTimer>::TimerMilliIn((this + 24), a2);
  result = this;
  *(this + 24) &= ~1u;
  *(this + 24) &= ~2u;
  *(this + 24) &= ~4u;
  *(this + 24) &= 0xFF87u;
  *(this + 24) &= 0xF0FFu;
  *(this + 24) &= 0xFFFu;
  return result;
}

{
  ot::DataPollSender::DataPollSender(this, a2);
  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::DataPollSender,&ot::DataPollSender::HandlePollTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::DataPollSender,&ot::DataPollSender::HandlePollTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::DataPollSender,&ot::DataPollSender::HandlePollTimer>::HandleTimer);
  return a1;
}

ot::Neighbor *ot::DataPollSender::GetParent(ot::DataPollSender *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  ParentCandidate = ot::Mle::Mle::GetParentCandidate(v1);
  if (ot::Neighbor::IsStateValid(ParentCandidate))
  {
    return ParentCandidate;
  }

  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  return ot::Mle::Mle::GetParent(v2);
}

uint64_t ot::Mle::Mle::GetParentCandidate(ot::Mle::Mle *this)
{
  return this + 368;
}

{
  return ot::Mle::Mle::GetParentCandidate(this);
}

BOOL ot::Neighbor::IsStateValid(ot::Neighbor *this)
{
  return (*(this + 30) & 0xF) == 7;
}

{
  return ot::Neighbor::IsStateValid(this);
}

void ot::DataPollSender::StartPolling(ot::DataPollSender *this)
{
  if ((*(this + 24) & 1) == 0)
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    if (ot::Mle::Mle::IsRxOnWhenIdle(v1))
    {
      __assert_rtn("StartPolling", "data_poll_sender.cpp", 86, "!Get<Mle::MleRouter>().IsRxOnWhenIdle()");
    }

    *(this + 24) = *(this + 24) & 0xFFFE | 1;
    ot::DataPollSender::ScheduleNextPoll(this, 1);
  }
}

BOOL ot::Mle::Mle::IsRxOnWhenIdle(ot::Mle::Mle *this)
{
  return ot::Mle::DeviceMode::IsRxOnWhenIdle((this + 131));
}

{
  return ot::Mle::Mle::IsRxOnWhenIdle(this);
}

void ot::DataPollSender::ScheduleNextPoll(ot::DataPollSender *a1, char a2)
{
  v16 = a1;
  v15 = a2;
  v9 = a1;
  v13 = *(a1 + 4);
  if (a2 == 1)
  {
    a1 = ot::DataPollSender::CalculatePollPeriod(a1);
    *(v9 + 4) = a1;
  }

  Now = ot::TimerMilli::GetNow(a1);
  v14 = Now;
  if (ot::Timer::IsRunning((v9 + 24)))
  {
    if (v13 != *(v9 + 4))
    {
      v11 = ot::Time::operator+(v9, *(v9 + 4));
      v10 = ot::Time::operator+(&v14, 10);
      if (ot::Time::operator<(&v11, &v10))
      {
        ot::TimerMilli::StartAt((v9 + 24), v14, 0xAu);
      }

      else
      {
        ot::TimerMilli::StartAt((v9 + 24), *v9, *(v9 + 4));
      }
    }
  }

  else
  {
    *v9 = v14;
    ot::TimerMilli::StartAt((v9 + 24), *v9, *(v9 + 4));
  }

  v8 = *(v9 + 4);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: oldPeriod: %d, mPollPeriod: %d", v2, v3, v4, v5, v6, v7, "ScheduleNextPoll");
}

uint64_t ot::DataPollSender::StopPolling(ot::DataPollSender *this)
{
  result = ot::TimerMilli::Stop((this + 24));
  *(this + 24) &= ~2u;
  *(this + 24) &= ~4u;
  *(this + 24) &= 0xFF87u;
  *(this + 24) &= 0xF0FFu;
  *(this + 24) &= 0xFFFu;
  *(this + 5) &= 0x3FFFFFFu;
  *(this + 24) &= ~1u;
  return result;
}

uint64_t ot::DataPollSender::SendDataPoll(ot::DataPollSender *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 24))
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    if (ot::Mac::Mac::GetRxOnWhenIdle(v8))
    {
      v21 = 13;
    }

    else
    {
      Parent = ot::DataPollSender::GetParent(this);
      if (ot::Neighbor::IsStateValidOrRestoring(Parent))
      {
        ot::TimerMilli::Stop((this + 24));
        v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        v21 = ot::Mac::Mac::RequestDataPollTransmission(v10);
      }

      else
      {
        v21 = 13;
      }
    }
  }

  else
  {
    v21 = 13;
  }

  if (v21)
  {
    if (v21 == 13)
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("DataPollSender", "Data poll tx requested while data polling was not enabled!", a3, a4, a5, a6, a7, a8, v19);
      ot::DataPollSender::StopPolling(this);
    }

    else
    {
      v11 = ot::ErrorToString(v21);
      ot::Logger::LogAtLevel<(ot::LogLevel)2>("DataPollSender", "Unexpected error %s requesting data poll", v12, v13, v14, v15, v16, v17, v11);
      ot::DataPollSender::ScheduleNextPoll(this, 1);
    }
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)5>("DataPollSender", "Sending data poll", a3, a4, a5, a6, a7, a8, v19);
    ot::DataPollSender::ScheduleNextPoll(this, 0);
  }

  return v21;
}

uint64_t ot::Mac::Mac::GetRxOnWhenIdle(ot::Mac::Mac *this)
{
  return (*this >> 2) & 1;
}

{
  return ot::Mac::Mac::GetRxOnWhenIdle(this);
}

uint64_t ot::DataPollSender::GetPollDestinationAddress(ot::DataPollSender *this, ot::Mac::Address *a2)
{
  v9 = 0;
  Parent = ot::DataPollSender::GetParent(this);
  if (ot::Neighbor::IsStateValidOrRestoring(Parent))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    if (ot::Mac::Mac::GetShortAddress(v2) == 65534 || (v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this), Parent == ot::Mle::Mle::GetParentCandidate(v3)))
    {
      ot::Neighbor::GetExtAddress(Parent);
      ot::Mac::Address::SetExtended(a2, v4);
    }

    else
    {
      Rloc16 = ot::Neighbor::GetRloc16(Parent);
      ot::Mac::Address::SetShort(a2, Rloc16);
    }
  }

  else
  {
    return 11;
  }

  return v9;
}

uint64_t ot::Mac::Address::SetShort(uint64_t this, __int16 a2)
{
  *this = a2;
  *(this + 8) = 1;
  return this;
}

{
  return ot::Mac::Address::SetShort(this, a2);
}

uint64_t ot::DataPollSender::SetExternalPollPeriod(ot::DataPollSender *this, unsigned int a2)
{
  v5 = a2;
  v4 = 0;
  if (a2)
  {
    if (a2 < 0xA)
    {
      return 7;
    }

    v5 = ot::Min<unsigned int>(a2, 0x3FFFFFFu);
  }

  if ((*(this + 5) & 0x3FFFFFF) != v5)
  {
    *(this + 5) = *(this + 5) & 0xFC000000 | v5 & 0x3FFFFFF;
    if (*(this + 24))
    {
      ot::DataPollSender::ScheduleNextPoll(this, 1);
    }
  }

  return v4;
}

uint64_t ot::DataPollSender::GetKeepAlivePollPeriod(ot::DataPollSender *this)
{
  DefaultPollPeriod = ot::DataPollSender::GetDefaultPollPeriod(this);
  if ((*(this + 5) & 0x3FFFFFF) != 0)
  {
    return ot::Min<unsigned int>(DefaultPollPeriod, *(this + 5) & 0x3FFFFFF);
  }

  return DefaultPollPeriod;
}

uint64_t ot::DataPollSender::GetDefaultPollPeriod(ot::DataPollSender *this)
{
  v19 = 4000;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  Timeout = ot::Mle::Mle::GetTimeout(v1);
  v2 = ot::Time::MsecToSec(0x7FFFFFFF);
  v3 = ot::Min<unsigned int>(Timeout, v2);
  v18 = ot::Time::SecToMsec(v3);
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
  if (ot::Mac::Mac::IsCslEnabled(v4))
  {
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    CslTimeout = ot::Mle::Mle::GetCslTimeout(v5);
    v7 = ot::Time::SecToMsec(CslTimeout);
    v18 = ot::Min<unsigned int>(v18, v7);
    v19 = 1000;
  }

  if (v18 > v19)
  {
    v18 -= v19;
  }

  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  ot::Mle::Mle::GetTimeout(v8);
  ot::Time::MsecToSec(0x7FFFFFFF);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: period - %u, timeout - %u, pollAhead - %u, delay = %u", v9, v10, v11, v12, v13, v14, "GetDefaultPollPeriod");
  return v18;
}

void ot::DataPollSender::HandlePollSent(uint64_t a1, ot::Mac::Frame *a2, int a3)
{
  v34 = a1;
  v33 = a2;
  v32 = a3;
  ot::Mac::Address::Address(v31);
  v30 = 0;
  v29 = 4;
  ot::Time::Time(&v28, 0);
  v27 = 0;
  if (*(a1 + 48))
  {
    if (!ot::Mac::Frame::IsEmpty(v33))
    {
      ot::Mac::Frame::GetDstAddr(v33, v31);
      IgnoreError();
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
      ot::MeshForwarder::UpdateNeighborOnSentFrame(v3, v33, v32, v31, 1);
    }

    Parent = ot::DataPollSender::GetParent(a1);
    if (ot::Neighbor::IsStateInvalid(Parent))
    {
      ot::DataPollSender::StopPolling(a1);
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
      ot::Mle::Mle::BecomeDetached(v5);
      IgnoreError();
    }

    else
    {
      if (v32)
      {
        if (v32 == 11 || v32 == 15 || v32 == 29)
        {
          *(a1 + 48) = *(a1 + 48) & 0xFFFB | 4;
          v30 = 1;
        }

        else
        {
          *(a1 + 48) = *(a1 + 48) & 0xF0FF | ((((HIBYTE(*(a1 + 48)) & 0xF) + 1) & 0xF) << 8);
          ot::Mac::Frame::GetHeaderIe(v33, 0x1Au);
          v14 = 15;
          if (!v13)
          {
            v14 = 4;
          }

          v29 = v14;
          v15 = ot::ErrorToString(v32);
          v22 = HIBYTE(*(a1 + 48)) & 0xF;
          ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "Failed to send data poll, error:%s, retx:%d/%d", v16, v17, v18, v19, v20, v21, v15);
          if (v29 <= (HIBYTE(*(a1 + 48)) & 0xF))
          {
            *(a1 + 48) &= ~4u;
            *(a1 + 48) &= 0xF0FFu;
            v30 = 1;
          }

          else if ((*(a1 + 48) & 4) == 0)
          {
            *(a1 + 48) = *(a1 + 48) & 0xFFFB | 4;
            v30 = 1;
          }
        }
      }

      else
      {
        if (*(a1 + 48) >> 12)
        {
          *(a1 + 48) = *(a1 + 48) & 0xFFF | ((((*(a1 + 48) >> 12) - 1) & 0xF) << 12);
          if (!(*(a1 + 48) >> 12))
          {
            v30 = 1;
            *(a1 + 20) &= 0x3FFFFFFu;
          }
        }

        if ((*(a1 + 48) & 4) != 0)
        {
          *(a1 + 48) &= ~4u;
          *(a1 + 48) &= 0xF0FFu;
          v30 = 1;
        }

        isThreadAlwaysOnFeatureEnabled = ot::DataPollSender::isThreadAlwaysOnFeatureEnabled(a1);
        if (isThreadAlwaysOnFeatureEnabled)
        {
          Now = ot::TimerMilli::GetNow(isThreadAlwaysOnFeatureEnabled);
          v28 = Now;
          ot::Time::Time(&v25, 0);
          if (ot::Time::operator==((a1 + 8), &v25))
          {
            *(a1 + 8) = v28;
          }

          v27 = ot::Time::operator-(&v28, (a1 + 8));
          if (v27 > 0x2710)
          {
            v23 = *(a1 + 20) & 0x3FFFFFF;
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: time since last successful TX: %u, switching to slow poll period from %d to %d", v7, v8, v9, v10, v11, v12, "HandlePollSent");
            ot::DataPollSender::SetExternalPollPeriod(a1, 0x2710u);
          }
        }
      }

      if (v30)
      {
        ot::DataPollSender::ScheduleNextPoll(a1, 1);
      }
    }
  }
}

BOOL ot::Neighbor::IsStateInvalid(ot::Neighbor *this)
{
  return (*(this + 30) & 0xF) == 0;
}

{
  return ot::Neighbor::IsStateInvalid(this);
}

void ot::Mac::Frame::GetHeaderIe(ot::Mac::Frame *this, unsigned __int8 a2)
{
  ot::AsConst<ot::Mac::Frame>();
  ot::Mac::Frame::GetHeaderIe(v2, a2);
  ot::AsNonConst<unsigned char>();
}

{
  ot::Mac::Frame::GetHeaderIe(this, a2);
}

void ot::DataPollSender::HandlePollTimeout(ot::DataPollSender *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(this + 24))
  {
    *(this + 24) = *(this + 24) & 0xFF87 | (8 * ((((*(this + 24) >> 3) & 0xF) + 1) & 0xF));
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "Data poll timeout, retry:%d/%d", a3, a4, a5, a6, a7, a8, (*(this + 24) >> 3) & 0xF);
    if (((*(this + 24) >> 3) & 0xFu) < 5)
    {
      ot::DataPollSender::addB2BDataPollDelay(this, v8, v9, v10, v11, v12, v13, v14);
    }

    else
    {
      *(this + 24) &= 0xFF87u;
    }
  }
}

void ot::DataPollSender::addB2BDataPollDelay(ot::DataPollSender *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = this;
  if (*(this + 24))
  {
    v16 = *(this + 12);
    v17 = *(this + 13);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: Add delay %d, session priority %d", a3, a4, a5, a6, a7, a8, "addB2BDataPollDelay");
    Now = ot::TimerMilli::GetNow(v8);
    v22 = Now;
    ot::TimerMilli::Stop((this + 24));
    if (*(this + 12))
    {
      v20 = ot::Time::operator+(this + 1, *(this + 12));
      v19 = ot::Time::operator+(&v22, 10);
      if (ot::Time::operator<(&v20, &v19))
      {
        ot::TimerMilli::StartAt((this + 24), v22, 0xAu);
      }

      else
      {
        ot::TimerMilli::StartAt((this + 24), *(this + 1), *(this + 12));
      }
    }

    else
    {
      ot::DataPollSender::SendDataPoll(this, v9, v10, v11, v12, v13, v14, v15);
      IgnoreError();
    }
  }
}

void ot::DataPollSender::ProcessRxFrame(ot::DataPollSender *this, const ot::Mac::RxFrame *a2)
{
  if (*(this + 24))
  {
    *(this + 24) &= 0xFF87u;
    if (ot::Mac::Frame::GetFramePending(a2))
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      if (ot::Mac::Mac::IsCslEnabled(v2))
      {
        v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
        ot::Mac::Mac::IsCslEnabled(v16);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: DataPollSender::ProcessRxFrame FramePending bit set in Rx Frame, but suppressing as CSL is enabled %d", v17, v18, v19, v20, v21, v22, "ProcessRxFrame");
      }

      else
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: DataPollSender::ProcessRxFrame FramePending bit set in Rx Frame", v3, v4, v5, v6, v7, v8, "ProcessRxFrame");
        ot::DataPollSender::addB2BDataPollDelay(this, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }
}

BOOL ot::Mac::Frame::GetFramePending(ot::Mac::Frame *this)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  return ot::Mac::Frame::IsFramePending(FrameControlField);
}

{
  return ot::Mac::Frame::GetFramePending(this);
}

void ot::DataPollSender::ProcessTxDone(uint64_t a1, ot::Mac::Frame *a2, ot::Mac::Frame *a3, int a4)
{
  v44 = a1;
  v43 = a2;
  v42 = a3;
  v41 = a4;
  v40 = 0;
  if (*(a1 + 48))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
    Parent = ot::Mle::Mle::GetParent(v4);
    if (ot::Neighbor::IsEnhancedKeepAliveSupported(Parent) && ot::Mac::Frame::GetSecurityEnabled(v43))
    {
      if ((*(v43 + 45) & 2) != 0 && ot::Mac::Frame::GetHeaderIe(v43, 0x1Au))
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: For retransmission frame, use a data poll to resync its parent with correct CSL phase", v7, v8, v9, v10, v11, v12, "ProcessTxDone");
        v40 = 1;
      }

      if (!v41 && v42)
      {
        *(a1 + 48) &= 0xFF87u;
        if (ot::Mac::Frame::GetFramePending(v42))
        {
          v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
          if (ot::Mac::Mac::IsCslEnabled(v13))
          {
            v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
            ot::Mac::Mac::IsCslEnabled(v20);
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: FramePending bit set in ACK, but suppressing as CSL is enabled %d", v21, v22, v23, v24, v25, v26, "ProcessTxDone");
          }

          else
          {
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: FramePending bit set in ACK", v14, v15, v16, v17, v18, v19, "ProcessTxDone");
            v40 = 1;
          }
        }

        else
        {
          v27 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
          if (!ot::Mac::Mac::IsCslEnabled(v27))
          {
            ot::DataPollSender::SendFastPolls(a1, 0xAu);
          }

          ot::DataPollSender::ResetKeepAliveTimer(a1);
        }

        isThreadAlwaysOnFeatureEnabled = ot::DataPollSender::isThreadAlwaysOnFeatureEnabled(a1);
        if (isThreadAlwaysOnFeatureEnabled)
        {
          Now = ot::TimerMilli::GetNow(isThreadAlwaysOnFeatureEnabled);
          ot::Time::Time(&v38, 0);
          if (ot::Time::operator==((a1 + 8), &v38))
          {
            *(a1 + 8) = Now;
          }

          v29 = ot::Time::operator-(&Now, (a1 + 8));
          if ((*(a1 + 20) & 0x3FFFFFFu) > 0x1C2)
          {
            v36 = *(a1 + 20) & 0x3FFFFFF;
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: time since last successful TX: %u, switching to poll period from %d to %d", v30, v31, v32, v33, v34, v35, "ProcessTxDone");
            v29 = ot::DataPollSender::SetExternalPollPeriod(a1, 0x1C2u);
          }

          *(a1 + 8) = ot::TimerMilli::GetNow(v29);
        }
      }

      if (v40)
      {
        ot::DataPollSender::addB2BDataPollDelay(a1, v6, v7, v8, v9, v10, v11, v12);
      }
    }
  }
}

BOOL ot::Neighbor::IsEnhancedKeepAliveSupported(ot::Neighbor *this)
{
  v2 = 0;
  if ((*(this + 30) & 0xF) != 0)
  {
    return *(this + 18) >= 3u;
  }

  return v2;
}

{
  return ot::Neighbor::IsEnhancedKeepAliveSupported(this);
}

void ot::DataPollSender::SendFastPolls(ot::DataPollSender *this, unsigned __int8 a2)
{
  v4 = *(this + 24) >> 12 == 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (!ot::Mle::Mle::IsSleepyRouter(v2))
  {
    if (*(this + 5) >> 26 != 63)
    {
      *(this + 5) = *(this + 5) & 0x3FFFFFF | ((((*(this + 5) >> 26) + 1) & 0x3F) << 26);
    }

    if (!a2)
    {
      a2 = 8;
    }

    v6 = ot::Min<unsigned char>(a2, 0xFu);
    *(this + 24) = *(this + 24) & 0xFFF | ((ot::Max<unsigned char>(*(this + 24) >> 12, v6) & 0xF) << 12);
    if ((*(this + 24) & 1) != 0 && v4)
    {
      ot::DataPollSender::ScheduleNextPoll(this, 1);
    }
  }
}

uint64_t ot::DataPollSender::ResetKeepAliveTimer(ot::DataPollSender *this)
{
  result = ot::Timer::IsRunning((this + 24));
  if (result)
  {
    v2 = *(this + 4);
    result = ot::DataPollSender::GetDefaultPollPeriod(this);
    if (v2 == result)
    {
      *this = ot::TimerMilli::GetNow(result);
      return ot::TimerMilli::StartAt((this + 24), *this, *(this + 4));
    }
  }

  return result;
}

void ot::DataPollSender::RecalculatePollPeriod(ot::DataPollSender *this)
{
  if (*(this + 24))
  {
    ot::DataPollSender::ScheduleNextPoll(this, 1);
  }
}

void ot::DataPollSender::SetAttachMode(ot::DataPollSender *this, char a2)
{
  if (((*(this + 24) & 2) != 0) != (a2 & 1))
  {
    *(this + 24) = *(this + 24) & 0xFFFD | (2 * (a2 & 1));
    if (*(this + 24))
    {
      ot::DataPollSender::ScheduleNextPoll(this, 1);
    }
  }
}

BOOL ot::Mle::Mle::IsSleepyRouter(ot::Mle::Mle *this)
{
  return !ot::Mle::Mle::IsRxOnWhenIdle(this) && ot::Mle::Mle::IsFullThreadDevice(this);
}

{
  return ot::Mle::Mle::IsSleepyRouter(this);
}

uint64_t ot::Min<unsigned char>(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >= a2)
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

{
  return ot::Min<unsigned char>(a1, a2);
}

uint64_t ot::Max<unsigned char>(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >= a2)
  {
    return a1;
  }

  else
  {
    return a2;
  }
}

{
  return ot::Max<unsigned char>(a1, a2);
}

void ot::DataPollSender::StopFastPolls(ot::DataPollSender *this)
{
  if (*(this + 5) >> 26 && *(this + 5) >> 26 != 63)
  {
    *(this + 5) = *(this + 5) & 0x3FFFFFF | ((((*(this + 5) >> 26) - 1) & 0x3F) << 26);
    if (!(*(this + 5) >> 26))
    {
      *(this + 24) &= 0xFFFu;
      ot::DataPollSender::ScheduleNextPoll(this, 1);
    }
  }
}

uint64_t ot::DataPollSender::CalculatePollPeriod(ot::DataPollSender *this)
{
  DefaultPollPeriod = ot::DataPollSender::GetDefaultPollPeriod(this);
  if ((*(this + 24) & 2) != 0)
  {
    DefaultPollPeriod = ot::Min<unsigned int>(DefaultPollPeriod, 0x64u);
  }

  if ((*(this + 24) & 4) != 0)
  {
    DefaultPollPeriod = ot::Min<unsigned int>(DefaultPollPeriod, 0x3E8u);
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    if (ot::Mac::Mac::GetCslPeriodInMsec(v7))
    {
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      CslPeriodInMsec = ot::Mac::Mac::GetCslPeriodInMsec(v8);
      DefaultPollPeriod = ot::Min<unsigned int>(DefaultPollPeriod, CslPeriodInMsec);
    }
  }

  if (*(this + 24) >> 12)
  {
    DefaultPollPeriod = ot::Min<unsigned int>(DefaultPollPeriod, 0x64u);
  }

  if ((*(this + 5) & 0x3FFFFFF) != 0)
  {
    DefaultPollPeriod = ot::Min<unsigned int>(DefaultPollPeriod, *(this + 5) & 0x3FFFFFF);
  }

  if (!DefaultPollPeriod)
  {
    DefaultPollPeriod = 10;
  }

  v11 = (*(this + 24) & 2) != 0;
  v12 = (*(this + 24) & 4) != 0;
  v13 = *(this + 24) >> 12;
  v14 = *(this + 5) & 0x3FFFFFF;
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: period: %d, mAttachMode:%d/ kAttachDataPollPeriod: %d, mRetxMode:%d/ kRetxPollPeriod: %d, mRemainingFastPolls:%d/ kFastPollPeriod: %d, mExternalPollPeriod: %d, kMinPollPeriod: %d", v1, v2, v3, v4, v5, v6, "CalculatePollPeriod");
  return DefaultPollPeriod;
}

ot::Mac::Frame *ot::DataPollSender::PrepareDataRequest(ot::DataPollSender *this, ot::Mac::TxFrames *a2)
{
  v18 = this;
  v17 = a2;
  TxFrame = 0;
  ot::Mac::Addresses::Addresses(v14);
  ot::Mac::PanIds::PanIds(v13);
  if (!ot::DataPollSender::GetPollDestinationAddress(this, v15))
  {
    TxFrame = ot::Mac::TxFrames::GetTxFrame(v17);
    if (ot::Mac::Address::IsExtended(v15))
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ExtAddress = ot::Mac::Mac::GetExtAddress(v2);
      ot::Mac::Address::SetExtended(v14, ExtAddress);
    }

    else
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
      ShortAddress = ot::Mac::Mac::GetShortAddress(v4);
      ot::Mac::Address::SetShort(v14, ShortAddress);
    }

    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(this);
    PanId = ot::Mac::Mac::GetPanId(v6);
    ot::Mac::PanIds::SetBothSourceDestination(v13, PanId);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
    ot::MeshForwarder::PrepareMacHeaders(v8, TxFrame, 3, v14, v13, 5, 8, 0);
    ot::Mac::Frame::GetHeaderIe(TxFrame, 0x1Au);
    if (v9)
    {
      ot::Mac::TxFrames::SetMaxFrameRetries(v17, 0);
    }

    ot::Mac::Frame::SetCommandId(TxFrame, 4);
    IgnoreError();
    *(this + 1) = ot::TimerMilli::GetNow(v10);
  }

  return TxFrame;
}

ot::Mac::Addresses *ot::Mac::Addresses::Addresses(ot::Mac::Addresses *this)
{
  ot::Mac::Addresses::Addresses(this);
  return this;
}

{
  ot::Mac::Address::Address(this);
  ot::Mac::Address::Address((this + 10));
  return this;
}

ot::Mac::PanIds *ot::Mac::PanIds::PanIds(ot::Mac::PanIds *this)
{
  ot::Mac::PanIds::PanIds(this);
  return this;
}

{
  ot::Clearable<ot::Mac::PanIds>::Clear(this);
  return this;
}

uint64_t ot::Mac::TxFrames::SetMaxFrameRetries(ot::Mac::TxFrames *this, char a2)
{
  return ot::Mac::TxFrame::SetMaxFrameRetries(*this, a2);
}

{
  return ot::Mac::TxFrames::SetMaxFrameRetries(this, a2);
}

void ot::DataPollSender::SetB2BDataPollDelay(ot::DataPollSender *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 12) = a2;
  v8 = *(this + 12);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: Set B2BDataPollDelay as %d, %d", a3, a4, a5, a6, a7, a8, "SetB2BDataPollDelay");
}

void ot::DataPollSender::SetSessionPriority(ot::DataPollSender *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 13) = a2;
  v8 = *(this + 13);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("DataPollSender", "%s: Set SetSessionPriority as %d, %d", a3, a4, a5, a6, a7, a8, "SetSessionPriority");
}

BOOL ot::Mac::Frame::IsFramePending(ot::Mac::Frame *this)
{
  return ot::Mac::Frame::GetFcfBit(this, 16, 2048) != 0;
}

{
  return ot::Mac::Frame::IsFramePending(this);
}

BOOL ot::Mle::Mle::IsFullThreadDevice(ot::Mle::Mle *this)
{
  return ot::Mle::DeviceMode::IsFullThreadDevice((this + 131));
}

{
  return ot::Mle::Mle::IsFullThreadDevice(this);
}

BOOL ot::Mle::DeviceMode::IsFullThreadDevice(ot::Mle::DeviceMode *this)
{
  return (*this & 2) != 0;
}

{
  return ot::Mle::DeviceMode::IsFullThreadDevice(this);
}

uint64_t ot::Clearable<ot::Mac::PanIds>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::Mac::PanIds>(a1);
}

{
  return ot::Clearable<ot::Mac::PanIds>::Clear(a1);
}

uint64_t ot::ClearAllBytes<ot::Mac::PanIds>(uint64_t result)
{
  *result = 0;
  *(result + 4) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Mac::PanIds>(result);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::DataPollSender>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(a1);
}

ot::Mac::LinkRaw *ot::Mac::LinkRaw::LinkRaw(ot::Mac::LinkRaw *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 11;
  *(this + 1) = -1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = ot::Instance::Get<ot::Mac::SubMac>(a2);
  ot::Mac::LinkRaw::Init(this);
  return this;
}

{
  ot::Mac::LinkRaw::LinkRaw(this, a2);
  return this;
}

uint64_t ot::Mac::LinkRaw::Init(uint64_t this)
{
  *(this + 24) = 0;
  *(this + 16) = 0;
  *(this + 8) = 0;
  *this = 11;
  *(this + 2) = -1;
  *(this + 8) = 0;
  return this;
}

uint64_t ot::Mac::LinkRaw::SetReceiveDone(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13[4] = 0;
  *v13 = a2 != 0;
  v8 = "true";
  if (!a2)
  {
    v8 = "false";
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkRaw", "Enabled(%s)", a3, a4, a5, a6, a7, a8, v8);
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
  if (ot::ThreadNetif::IsUp(v9))
  {
    *&v13[1] = 13;
  }

  else if ((v13[0] & 1) != 0 || !ot::Mac::SubMac::IsTransmittingOrScanning(*(a1 + 32)))
  {
    v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mac::Mac>(a1);
    ot::Mac::Mac::SetEnabled(v10, (v13[0] ^ 1) & 1);
    *(a1 + 8) = a2;
  }

  else
  {
    *&v13[1] = 5;
  }

  return *&v13[1];
}

BOOL ot::Mac::SubMac::IsTransmittingOrScanning(ot::Mac::SubMac *this)
{
  v2 = 1;
  if (*(this + 2) != 4)
  {
    return *(this + 2) == 5;
  }

  return v2;
}

{
  return ot::Mac::SubMac::IsTransmittingOrScanning(this);
}

uint64_t ot::Mac::LinkRaw::SetPanId(ot::Mac::SubMac **this, __int16 a2)
{
  v4 = 0;
  if (ot::Mac::LinkRaw::IsEnabled(this))
  {
    ot::Mac::SubMac::SetPanId(this[4], a2);
    *(this + 1) = a2;
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Mac::LinkRaw::SetChannel(ot::Mac::LinkRaw *this, char a2)
{
  v4 = 0;
  if (ot::Mac::LinkRaw::IsEnabled(this))
  {
    *this = a2;
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Mac::LinkRaw::SetExtAddress(ot::Mac::SubMac **this, const ot::Mac::ExtAddress *a2)
{
  v4 = 0;
  if (ot::Mac::LinkRaw::IsEnabled(this))
  {
    ot::Mac::SubMac::SetExtAddress(this[4], a2);
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Mac::LinkRaw::SetShortAddress(ot::Mac::SubMac **this, __int16 a2)
{
  v4 = 0;
  if (ot::Mac::LinkRaw::IsEnabled(this))
  {
    ot::Mac::SubMac::SetShortAddress(this[4], a2);
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Mac::LinkRaw::SetAlternateShortAddress(ot::Mac::SubMac **this, unsigned __int16 a2)
{
  v4 = 0;
  if (ot::Mac::LinkRaw::IsEnabled(this))
  {
    ot::Mac::SubMac::SetAlternateShortAddress(this[4], a2);
  }

  else
  {
    return 13;
  }

  return v4;
}

uint64_t ot::Mac::LinkRaw::Receive(ot::Mac::SubMac **this)
{
  if (ot::Mac::LinkRaw::IsEnabled(this))
  {
    return ot::Mac::SubMac::Receive(this[4], *this);
  }

  else
  {
    return 13;
  }
}

void ot::Mac::LinkRaw::InvokeReceiveDone(ot::InstanceLocator *a1, uint64_t a2, int a3)
{
  if (a2)
  {
    v11 = *(a2 + 8);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  ot::ErrorToString(a3);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkRaw", "ReceiveDone(%d bytes), error:%s", v3, v4, v5, v6, v7, v8, v11);
  if (*(a1 + 1))
  {
    if (!a3)
    {
      v10 = *(a1 + 1);
      Instance = ot::InstanceLocator::GetInstance(a1);
      v10(Instance, a2, 0);
    }
  }
}

uint64_t ot::Mac::LinkRaw::Transmit(uint64_t a1, uint64_t a2)
{
  if (ot::Mac::LinkRaw::IsEnabled(a1))
  {
    v4 = ot::Mac::SubMac::Send(*(a1 + 32));
    if (!v4)
    {
      *(a1 + 16) = a2;
    }
  }

  else
  {
    return 13;
  }

  return v4;
}

void ot::Mac::LinkRaw::InvokeTransmitDone(ot::InstanceLocator *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v12 = *(a2 + 8);
  ot::ErrorToString(a4);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("LinkRaw", "LinkRaw::TransmitDone(%d bytes), error:%s", v4, v5, v6, v7, v8, v9, v12);
  if (*(a1 + 2))
  {
    v11 = *(a1 + 2);
    Instance = ot::InstanceLocator::GetInstance(a1);
    v11(Instance, a2, a3, a4);
    *(a1 + 2) = 0;
  }
}

uint64_t ot::Mac::LinkRaw::EnergyScan(uint64_t a1, unsigned __int8 a2, unsigned __int16 a3, uint64_t a4)
{
  if (ot::Mac::LinkRaw::IsEnabled(a1))
  {
    v6 = ot::Mac::SubMac::EnergyScan(*(a1 + 32), a2, a3);
    if (!v6)
    {
      *(a1 + 24) = a4;
    }
  }

  else
  {
    return 13;
  }

  return v6;
}

uint64_t ot::Mac::LinkRaw::InvokeEnergyScanDone(ot::Mac::LinkRaw *this, char a2)
{
  result = ot::Mac::LinkRaw::IsEnabled(this);
  if (result)
  {
    if (*(this + 3))
    {
      v4 = *(this + 3);
      Instance = ot::InstanceLocator::GetInstance(this);
      result = v4(Instance, a2);
      *(this + 3) = 0;
    }
  }

  return result;
}

uint64_t ot::Mac::LinkRaw::SetMacKey(ot::Mac::SubMac **this, unsigned __int8 a2, unsigned __int8 a3, __n128 *a4, __n128 *a5, __n128 *a6)
{
  v8 = 0;
  ot::Mac::KeyMaterial::KeyMaterial(&v16);
  ot::Mac::KeyMaterial::KeyMaterial(&v15);
  ot::Mac::KeyMaterial::KeyMaterial(&v14);
  if (ot::Mac::LinkRaw::IsEnabled(this))
  {
    ot::Mac::KeyMaterial::SetFrom(&v16, a4);
    ot::Mac::KeyMaterial::SetFrom(&v15, a5);
    ot::Mac::KeyMaterial::SetFrom(&v14, a6);
    ot::Mac::SubMac::SetMacKey(this[4], a2, a3, &v16, &v15, &v14);
  }

  else
  {
    return 13;
  }

  return v8;
}

ot::Mac::KeyMaterial *ot::Mac::KeyMaterial::KeyMaterial(ot::Mac::KeyMaterial *this)
{
  ot::Mac::KeyMaterial::KeyMaterial(this);
  return this;
}

{
  ot::Mac::KeyMaterial::GetKey(this);
  ot::Clearable<ot::Mac::Key>::Clear(v1);
  return this;
}

uint64_t ot::Mac::LinkRaw::SetMacFrameCounter(ot::Mac::SubMac **this, unsigned int a2, char a3)
{
  v5 = 0;
  if (ot::Mac::LinkRaw::IsEnabled(this))
  {
    ot::Mac::SubMac::SetFrameCounter(this[4], a2, a3 & 1);
  }

  else
  {
    return 13;
  }

  return v5;
}

void ot::Mac::LinkRaw::RecordFrameTransmitStatus(uint64_t a1, ot::Mac::TxFrame *a2, int a3)
{
  if (a3)
  {
    v9 = ot::ErrorToString(a3);
    ot::Mac::TxFrame::GetMaxFrameRetries(a2);
    ot::Mac::Frame::ToInfoString(a2, v11);
    ot::String<(unsigned short)150>::AsCString(v11);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("LinkRaw", "Frame tx failed, error:%s, retries:%d/%d, %s", v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t ot::Mac::TxFrame::GetMaxFrameRetries(ot::Mac::TxFrame *this)
{
  return *(this + 41);
}

{
  return ot::Mac::TxFrame::GetMaxFrameRetries(this);
}

void ot::Mac::KeyMaterial::GetKey(ot::Mac::KeyMaterial *this)
{
  ;
}

{
  ;
}

{
  ot::Mac::KeyMaterial::GetKey(this);
}

{
  ot::Mac::KeyMaterial::GetKey(this);
}

void *ot::Clearable<ot::Mac::Key>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Mac::Key>(a1);
}

{
  return ot::Clearable<ot::Mac::Key>::Clear(a1);
}

void *ot::ClearAllBytes<ot::Mac::Key>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Mac::Key>(result);
}

void ot::Mac::Mac::RequestWakeupFrameTransmission(ot::Mac::Mac *this)
{
  if (ot::Mac::Mac::IsEnabled(this))
  {
    ot::Mac::Mac::StartOperation(this, 9);
  }
}

void ot::Mac::Mac::PerformNextOperation(ot::Mac::Mac *this)
{
  if (!*(this + 1))
  {
    if ((ot::Mac::Mac::IsEnabled(this) & 1) == 0)
    {
      *(this + 1) = 0;
      ot::TimerMilli::Stop((this + 312));
      return;
    }

    if (ot::Mac::Mac::IsPending(this, 6))
    {
      *(this + 1) = 6;
    }

    else if (ot::Mac::Mac::IsPending(this, 9))
    {
      *(this + 1) = 9;
    }

    else if (ot::Mac::Mac::IsPending(this, 8))
    {
      *(this + 1) = 8;
    }

    else if (ot::Mac::Mac::IsPending(this, 1))
    {
      *(this + 1) = 1;
    }

    else if (ot::Mac::Mac::IsPending(this, 2))
    {
      *(this + 1) = 2;
    }

    else if (ot::Mac::Mac::IsPending(this, 3))
    {
      *(this + 1) = 3;
    }

    else if (ot::Mac::Mac::IsPending(this, 7))
    {
      *(this + 1) = 7;
    }

    else if (ot::Mac::Mac::IsPending(this, 5) && (!ot::Mac::Mac::IsPending(this, 4) || (*this & 2) != 0))
    {
      *(this + 1) = 5;
    }

    else if (ot::Mac::Mac::IsPending(this, 4))
    {
      *(this + 1) = 4;
      if (ot::Mac::Mac::IsPending(this, 5))
      {
        *this = *this & 0xFD | 2;
      }
    }

    if (*(this + 1))
    {
      ot::Mac::Mac::ClearPending(this, *(this + 1));
      v1 = ot::Mac::Mac::OperationToString(*(this + 1));
      v14 = *(this + 1);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Starting operation %s pendOp:0x%x", v2, v3, v4, v5, v6, v7, v1);
      ot::TimerMilli::Stop((this + 312));
    }

    v15 = *(this + 1);
    if (!*(this + 1))
    {
      ot::Mac::Mac::UpdateIdleMode(this);
      return;
    }

    if (v15 == 1)
    {
      ot::Mac::Mac::PerformActiveScan(this);
      return;
    }

    if (v15 == 2)
    {
      ot::Mac::Mac::PerformEnergyScan(this);
      return;
    }

    if ((v15 - 3) <= 2)
    {
      goto LABEL_37;
    }

    if (v15 == 6)
    {
      ot::Mac::Links::Receive((this + 56), *(this + 11));
      ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mac::kLogModuleName, "DataPollTimeout:%d Timer start", v8, v9, v10, v11, v12, v13, ot::Mac::kDataPollTimeoutCoex);
      ot::TimerMilli::Start((this + 312), ot::Mac::kDataPollTimeoutCoex);
      return;
    }

    if ((v15 - 7) <= 2)
    {
LABEL_37:
      ot::Mac::Mac::BeginTransmit(this);
    }
  }
}

void ot::Mac::Mac::HandleTimer(ot::Mac::Mac *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *(this + 1);
  if (*(this + 1))
  {
    if (v19 == 1)
    {
      ot::Mac::Mac::PerformActiveScan(this);
    }

    else
    {
      if (v19 != 6)
      {
        __assert_rtn("HandleTimer", "mac.cpp", 2073, "false");
      }

      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Data poll timeout", a3, a4, a5, a6, a7, a8, v17);
      ot::Mac::Mac::FinishOperation(this);
      v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
      ot::DataPollSender::HandlePollTimeout(v8, v9, v10, v11, v12, v13, v14, v15);
      ot::Mac::Mac::PerformNextOperation(this);
    }
  }

  else
  {
    v16 = *this;
    if (ot::Mac::Mac::IsPending(this, 8))
    {
      ot::Mac::Mac::PerformNextOperation(this);
    }
  }
}

ot::Mac::Mac *ot::Mac::Mac::Mac(ot::Mac::Mac *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this &= ~1u;
  *this &= ~2u;
  *this &= ~4u;
  *this &= ~8u;
  *this &= ~0x10u;
  *this &= ~0x20u;
  *(this + 1) = 0;
  *(this + 1) = 0;
  Uint8 = ot::Random::NonCrypto::GetUint8(v2);
  *(this + 4) = Uint8;
  *(this + 5) = ot::Random::NonCrypto::GetUint8(Uint8);
  *(this + 6) = 0;
  *(this + 4) = -1;
  *(this + 10) = 11;
  *(this + 11) = 11;
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  SupportedChannelMask = ot::Radio::GetSupportedChannelMask(v4);
  ot::Mac::ChannelMask::ChannelMask((this + 12), SupportedChannelMask);
  *(this + 16) = 11;
  *(this + 9) = 0;
  ot::Mac::ChannelMask::ChannelMask((this + 20));
  *(this + 24) = 15;
  *(this + 25) = 0;
  *(this + 26) = 1;
  ot::Time::Time((this + 28), -1);
  *(this + 32) = 0;
  *(this + 17) = 0;
  *(this + 36) = 11;
  *(this + 5) = 0;
  *(this + 6) = 0;
  ot::Mac::Links::Links((this + 56), a2);
  ot::TaskletIn<ot::Mac::Mac,&ot::Mac::Mac::PerformNextOperation>::TaskletIn((this + 296), a2);
  ot::TimerMilliIn<ot::Mac::Mac,&ot::Mac::Mac::HandleTimer>::TimerMilliIn((this + 312), a2);
  *(this + 130) = 0;
  *(this + 263) = 0;
  ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::CountHistogram(this + 732);
  ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::CountHistogram(this + 836);
  ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::CountHistogram(this + 940);
  ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::CountHistogram(this + 1196);
  ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::CountHistogram(this + 1252);
  ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::CountHistogram(this + 1308);
  ot::Mac::Filter::Filter((this + 1364));
  ot::Mac::KeyMaterial::KeyMaterial((this + 1688));
  v20[7] = 21;
  v20[6] = -95;
  v20[5] = 87;
  v20[4] = -19;
  v20[3] = 94;
  v20[2] = -18;
  v20[1] = -1;
  v20[0] = -64;
  ot::Mac::ExtAddress::SetGroup(v20, 0);
  ot::Mac::ExtAddress::SetLocal(v20, 1);
  ot::Clearable<ot::SuccessRateTracker>::Clear(this + 262);
  ot::Mac::Mac::ResetCounters(this);
  ot::Mac::Mac::SetEnabled(this, 1);
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  ot::KeyManager::UpdateKeyMaterial(v6);
  ot::Mac::Mac::SetPanId(this, *(this + 4));
  ot::Mac::ExtAddress::ToString(v20, v19);
  v7 = ot::String<(unsigned short)17>::AsCString(v19);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Random Generated RadioExtAddress: %s", v8, v9, v10, v11, v12, v13, v7);
  ot::Mac::Mac::SetExtAddress(this, v20);
  ShortAddress = ot::Mac::Mac::GetShortAddress(this);
  ot::Mac::Mac::SetShortAddress(this, ShortAddress);
  ot::Mac::Mac::SetAlternateShortAddress(this, 0xFFFEu);
  v15 = ot::AsCoreType<otMacKey>(&ot::Mac::Mac::Mac(ot::Instance &)::sMode2Key);
  ot::Mac::KeyMaterial::SetFrom((this + 1688), v15);
  return this;
}

{
  ot::Mac::Mac::Mac(this, a2);
  return this;
}

uint64_t ot::Radio::GetSupportedChannelMask(ot::Radio *this)
{
  ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetSupportedChannelMask();
}

{
  return ot::Radio::GetSupportedChannelMask(this);
}

ot::InstanceLocator *ot::TaskletIn<ot::Mac::Mac,&ot::Mac::Mac::PerformNextOperation>::TaskletIn(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::TaskletIn<ot::Mac::Mac,&ot::Mac::Mac::PerformNextOperation>::TaskletIn(a1, a2);
  return a1;
}

{
  ot::Tasklet::Tasklet(a1, a2, ot::TaskletIn<ot::Mac::Mac,&ot::Mac::Mac::PerformNextOperation>::HandleTasklet);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Mac::Mac,&ot::Mac::Mac::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Mac::Mac,&ot::Mac::Mac::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Mac::Mac,&ot::Mac::Mac::HandleTimer>::HandleTimer);
  return a1;
}

void *ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::CountHistogram(void *a1)
{
  ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::CountHistogram(a1);
  return a1;
}

{
  ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::Clear(a1);
  return a1;
}

void *ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::CountHistogram(void *a1)
{
  ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::CountHistogram(a1);
  return a1;
}

{
  ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::Clear(a1);
  return a1;
}

void *ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::CountHistogram(void *a1)
{
  ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::CountHistogram(a1);
  return a1;
}

{
  ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::Clear(a1);
  return a1;
}

_BYTE *ot::Mac::ExtAddress::SetGroup(_BYTE *this, char a2)
{
  if (a2)
  {
    *this |= 1u;
  }

  else
  {
    *this &= ~1u;
  }

  return this;
}

{
  return ot::Mac::ExtAddress::SetGroup(this, a2);
}

_BYTE *ot::Mac::ExtAddress::SetLocal(_BYTE *this, char a2)
{
  if (a2)
  {
    *this |= 2u;
  }

  else
  {
    *this &= ~2u;
  }

  return this;
}

{
  return ot::Mac::ExtAddress::SetLocal(this, a2);
}

_WORD *ot::Clearable<ot::SuccessRateTracker>::Clear(_WORD *a1)
{
  return ot::ClearAllBytes<ot::SuccessRateTracker>(a1);
}

{
  return ot::Clearable<ot::SuccessRateTracker>::Clear(a1);
}

void ot::Mac::Mac::SetEnabled(ot::Mac::Mac *this, char a2)
{
  *this = *this & 0xFE | a2 & 1;
  if (a2)
  {
    ot::Mac::Links::Enable((this + 56));
  }

  else
  {
    ot::Mac::Links::Disable((this + 56));
  }
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::KeyManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(a1);
}

void ot::Mac::Mac::SetPanId(ot::Mac::Mac *this, __int16 a2)
{
  v5 = this;
  v4 = a2;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
  if (!ot::Notifier::Update<unsigned short>(v2, this + 4, &v4, 0x8000))
  {
    ot::Mac::Links::SetPanId((this + 56), *(this + 4));
  }
}

void ot::Mac::Mac::SetShortAddress(ot::Mac::Mac *this, __int16 a2)
{
  ot::Mac::Links::SetShortAddress((this + 56), a2);
}

{
  ot::Mac::Mac::SetShortAddress(this, a2);
}

void ot::Mac::Mac::SetAlternateShortAddress(ot::Mac::Mac *this, unsigned __int16 a2)
{
  ot::Mac::Links::SetAlternateShortAddress((this + 56), a2);
}

{
  ot::Mac::Mac::SetAlternateShortAddress(this, a2);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otMacKey>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

void ot::Mac::Mac::RegenerateExtAddr(ot::Mac::Mac *this)
{
  ot::Mac::ExtAddress::GenerateRandom(v10);
  ot::Mac::ExtAddress::ToString(v10, v9);
  v1 = ot::String<(unsigned short)17>::AsCString(v9);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Random Regenerated RadioExtAddress: %s", v2, v3, v4, v5, v6, v7, v1);
  ot::Mac::Mac::SetExtAddress(this, v10);
}

void ot::Mac::Links::Enable(ot::Mac::Links *this)
{
  ot::Mac::SubMac::Enable((this + 8));
  IgnoreError();
}

{
  ot::Mac::Links::Enable(this);
}

void ot::Mac::Links::Disable(ot::Mac::Links *this)
{
  ot::Mac::SubMac::Disable((this + 8));
  IgnoreError();
}

{
  ot::Mac::Links::Disable(this);
}

uint64_t ot::Mac::Mac::ActiveScan(ot::Mac::Mac *a1, unsigned int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  if (ot::Mac::Mac::IsEnabled(a1))
  {
    if (ot::Mac::Mac::IsActiveScanInProgress(a1) || ot::Mac::Mac::IsEnergyScanInProgress(a1))
    {
      return 5;
    }

    else
    {
      *(a1 + 5) = a4;
      *(a1 + 6) = a5;
      if (!a3)
      {
        a3 = 300;
      }

      ot::Mac::Mac::Scan(a1, 1, a2, a3);
    }
  }

  else
  {
    return 13;
  }

  return v7;
}

void ot::Mac::Mac::Scan(uint64_t a1, char a2, unsigned int a3, __int16 a4)
{
  Mask = a3;
  *(a1 + 18) = a4;
  *(a1 + 16) = -1;
  if (!a3)
  {
    Mask = ot::Mac::ChannelMask::GetMask((a1 + 12));
  }

  ot::Mac::ChannelMask::SetMask((a1 + 20), Mask);
  ot::Mac::ChannelMask::Intersect((a1 + 20), (a1 + 12));
  ot::Mac::Mac::StartOperation(a1, a2);
}

uint64_t ot::Mac::Mac::EnergyScan(ot::Mac::Mac *a1, unsigned int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  if (ot::Mac::Mac::IsEnabled(a1))
  {
    if (ot::Mac::Mac::IsActiveScanInProgress(a1) || ot::Mac::Mac::IsEnergyScanInProgress(a1))
    {
      return 5;
    }

    else
    {
      *(a1 + 5) = a4;
      *(a1 + 6) = a5;
      ot::Mac::Mac::Scan(a1, 2, a2, a3);
    }
  }

  else
  {
    return 13;
  }

  return v7;
}

_DWORD *ot::Mac::ChannelMask::SetMask(_DWORD *this, int a2)
{
  *this = a2;
  return this;
}

{
  return ot::Mac::ChannelMask::SetMask(this, a2);
}

_DWORD *ot::Mac::ChannelMask::Intersect(_DWORD *this, const ot::Mac::ChannelMask *a2)
{
  *this &= *a2;
  return this;
}

{
  return ot::Mac::ChannelMask::Intersect(this, a2);
}

void ot::Mac::Mac::StartOperation(uint64_t a1, char a2)
{
  if (a2)
  {
    ot::Mac::Mac::SetPending(a1, a2);
    v2 = ot::Mac::Mac::OperationToString(a2);
    v9 = *(a1 + 2);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Requesting operation %s pendOp:0x%x", v3, v4, v5, v6, v7, v8, v2);
  }

  if (!*(a1 + 1))
  {
    ot::Tasklet::Post((a1 + 296));
  }
}

uint64_t ot::Mac::Mac::IsInTransmitState(ot::Mac::Mac *this)
{
  v3 = 0;
  v2 = *(this + 1);
  if (v2 <= 2)
  {
    goto LABEL_6;
  }

  if (v2 - 3 <= 2)
  {
LABEL_5:
    v3 = 1;
    return v3 & 1;
  }

  if (v2 == 6)
  {
LABEL_6:
    v3 = 0;
    return v3 & 1;
  }

  if (v2 - 7 <= 2)
  {
    goto LABEL_5;
  }

  return v3 & 1;
}

uint64_t ot::Mac::Mac::ConvertBeaconToActiveScanResult(ot::Mac::Mac *a1, ot::Mac::Frame *a2, char *a3)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  SrcAddr = 0;
  ot::Mac::Address::Address(v26);
  v25 = 0;
  Payload = 0;
  PayloadLength = 0;
  ot::ClearAllBytes<otActiveScanResult>(v28);
  if (v29)
  {
    if (ot::Mac::Frame::GetType(v29))
    {
      return 6;
    }

    else
    {
      SrcAddr = ot::Mac::Frame::GetSrcAddr(v29, v26);
      if (!SrcAddr)
      {
        if (ot::Mac::Address::IsExtended(v26))
        {
          ot::Mac::Address::GetExtended(v26);
          *v28 = *v3;
          if (ot::Mac::Frame::GetSrcPanId(v29, v28 + 25))
          {
            ot::Mac::Frame::GetDstPanId(v29, v28 + 25);
            IgnoreError();
          }

          Channel = ot::Mac::Frame::GetChannel(v29);
          v28[54] = Channel;
          Rssi = ot::Mac::RxFrame::GetRssi(v29);
          v28[55] = Rssi;
          Lqi = ot::Mac::RxFrame::GetLqi(v29);
          v28[56] = Lqi;
          PayloadLength = ot::Mac::Frame::GetPayloadLength(v29);
          Payload = ot::Mac::Frame::GetPayload(v29);
          v25 = ot::Mac::Beacon::GetPayload(Payload);
          if (PayloadLength >= 0x1EuLL && ot::Mac::Beacon::IsValid(Payload) && ot::Mac::BeaconPayload::IsValid(v25))
          {
            ProtocolVersion = ot::Mac::BeaconPayload::GetProtocolVersion(v25);
            v28[57] = v28[57] & 0xF0 | ProtocolVersion & 0xF;
            IsJoiningPermitted = ot::Mac::BeaconPayload::IsJoiningPermitted(v25);
            v28[57] = v28[57] & 0xBF | (IsJoiningPermitted << 6);
            IsNative = ot::Mac::BeaconPayload::IsNative(v25);
            v28[57] = v28[57] & 0xEF | (16 * IsNative);
            v20 = ot::AsCoreType<otNetworkName>((v28 + 8));
            v22[0] = ot::Mac::BeaconPayload::GetNetworkName(v25);
            v22[1] = v16;
            ot::MeshCoP::NetworkName::Set(v20, v22);
            IgnoreError();
            if ((ot::IsValidUtf8String((v28 + 8), v17) & 1) == 0)
            {
              return 6;
            }

            ExtendedPanId = ot::Mac::BeaconPayload::GetExtendedPanId(v25);
            *(v28 + 25) = *ExtendedPanId;
          }

          ot::Mac::Mac::LogBeacon(a1, "Received", v7, v8, v9, v10, v11, v12);
          return SrcAddr;
        }

        return 6;
      }
    }
  }

  else
  {
    return 7;
  }

  return SrcAddr;
}

void *ot::ClearAllBytes<otActiveScanResult>(void *a1)
{
  return memset(a1, 0, 0x3CuLL);
}

{
  return ot::ClearAllBytes<otActiveScanResult>(a1);
}

uint64_t ot::Mac::Frame::GetType(ot::Mac::Frame *this)
{
  return *ot::Mac::Frame::GetPsdu(this) & 7;
}

{
  return ot::Mac::Frame::GetType(this);
}

void ot::Mac::Address::GetExtended(ot::Mac::Address *this)
{
  ;
}

{
  ;
}

{
  ot::Mac::Address::GetExtended(this);
}

{
  ot::Mac::Address::GetExtended(this);
}

uint64_t ot::Mac::Frame::GetChannel(ot::Mac::Frame *this)
{
  return *(this + 10);
}

{
  return ot::Mac::Frame::GetChannel(this);
}

uint64_t ot::Mac::RxFrame::GetLqi(ot::Mac::RxFrame *this)
{
  return *(this + 30);
}

{
  return ot::Mac::RxFrame::GetLqi(this);
}

uint64_t ot::Mac::Beacon::GetPayload(ot::Mac::Beacon *this)
{
  return this + 4;
}

{
  return this + 4;
}

{
  return ot::Mac::Beacon::GetPayload(this);
}

{
  return ot::Mac::Beacon::GetPayload(this);
}

BOOL ot::Mac::Beacon::IsValid(ot::Mac::Beacon *this)
{
  v3 = *this;
  v4 = 0;
  if (v3 == ot::LittleEndian::HostSwap16(4095))
  {
    v4 = 0;
    if (!*(this + 2))
    {
      return *(this + 3) == 0;
    }
  }

  return v4;
}

{
  return ot::Mac::Beacon::IsValid(this);
}

BOOL ot::Mac::BeaconPayload::IsValid(ot::Mac::BeaconPayload *this)
{
  return *this == 3;
}

{
  return ot::Mac::BeaconPayload::IsValid(this);
}

uint64_t ot::Mac::BeaconPayload::GetProtocolVersion(ot::Mac::BeaconPayload *this)
{
  return *(this + 1) >> 4;
}

{
  return ot::Mac::BeaconPayload::GetProtocolVersion(this);
}

BOOL ot::Mac::BeaconPayload::IsJoiningPermitted(ot::Mac::BeaconPayload *this)
{
  return (*(this + 1) & 1) != 0;
}

{
  return ot::Mac::BeaconPayload::IsJoiningPermitted(this);
}

BOOL ot::Mac::BeaconPayload::IsNative(ot::Mac::BeaconPayload *this)
{
  return (*(this + 1) & 8) != 0;
}

{
  return ot::Mac::BeaconPayload::IsNative(this);
}

uint64_t ot::Mac::BeaconPayload::GetNetworkName(ot::Mac::BeaconPayload *this)
{
  ot::MeshCoP::NameData::NameData(&v2, this + 2, 16);
  return v2;
}

{
  return ot::Mac::BeaconPayload::GetNetworkName(this);
}

uint64_t ot::Mac::BeaconPayload::GetExtendedPanId(ot::Mac::BeaconPayload *this)
{
  return this + 18;
}

{
  return ot::Mac::BeaconPayload::GetExtendedPanId(this);
}

uint64_t ot::Mac::Mac::UpdateScanChannel(ot::Mac::Mac *this)
{
  if (ot::Mac::Mac::IsEnabled(this))
  {
    return ot::Mac::ChannelMask::GetNextChannel((this + 20), this + 16);
  }

  else
  {
    return 11;
  }
}

uint64_t ot::Mac::Mac::PerformActiveScan(ot::Mac::Mac *this)
{
  if (!ot::Mac::Mac::UpdateScanChannel(this))
  {
    return ot::Mac::Mac::BeginTransmit(this);
  }

  ot::Mac::Links::SetPanId((this + 56), *(this + 4));
  ot::Mac::Mac::FinishOperation(this);
  ot::Mac::Mac::ReportActiveScanResult(this, 0);
  return ot::Mac::Mac::PerformNextOperation(this);
}

uint64_t ot::Mac::Mac::BeginTransmit(ot::Mac::Mac *this)
{
  v43 = this;
  BroadcastTxFrame = 0;
  TxFrames = ot::Mac::Links::GetTxFrames((this + 56));
  ot::Mac::Address::Address(v40);
  ot::Mac::Address::Address(v39);
  v38 = 0;
  v37 = 0;
  v36[11] = 0;
  v36[10] = 0;
  ot::Mac::Address::Address(v36);
  ot::Mac::TxFrames::Clear(TxFrames);
  result = ot::Mac::Mac::IsEnabled(this);
  if ((result & 1) == 0)
  {
    goto LABEL_50;
  }

  v29 = *(this + 1);
  switch(v29)
  {
    case 1:
      ot::Mac::Links::SetPanId((this + 56), 0xFFFF);
      result = ot::Mac::Mac::PrepareBeaconRequest(this);
      BroadcastTxFrame = result;
      if (!result)
      {
        goto LABEL_50;
      }

      ot::Mac::TxFrame::SetChannel(BroadcastTxFrame, *(this + 16));
      ot::Mac::Frame::SetSequence(BroadcastTxFrame, 0);
      ot::Mac::TxFrame::SetMaxCsmaBackoffs(BroadcastTxFrame, 4);
      ot::Mac::TxFrame::SetMaxFrameRetries(BroadcastTxFrame, *(this + 24));
      goto LABEL_47;
    case 3:
      result = ot::Mac::Mac::PrepareBeacon(this);
      BroadcastTxFrame = result;
      if (!result)
      {
        goto LABEL_50;
      }

      ot::Mac::TxFrame::SetChannel(BroadcastTxFrame, *(this + 11));
      v2 = BroadcastTxFrame;
      v3 = *(this + 4);
      *(this + 4) = v3 + 1;
      ot::Mac::Frame::SetSequence(v2, v3);
      ot::Mac::TxFrame::SetMaxCsmaBackoffs(BroadcastTxFrame, 4);
      ot::Mac::TxFrame::SetMaxFrameRetries(BroadcastTxFrame, *(this + 24));
      goto LABEL_47;
    case 4:
      ot::Mac::TxFrames::SetChannel(TxFrames, *(this + 11));
      if (enablebackoff)
      {
        ot::Mac::TxFrames::SetMaxCsmaBackoffs(TxFrames, 4);
      }

      else
      {
        ot::Mac::TxFrames::SetMaxCsmaBackoffs(TxFrames, 0);
      }

      ot::Mac::TxFrames::SetMaxFrameRetries(TxFrames, *(this + 24));
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
      result = ot::MeshForwarder::HandleFrameRequest(v7, TxFrames);
      BroadcastTxFrame = result;
      if (!result)
      {
        goto LABEL_50;
      }

      v8 = BroadcastTxFrame;
      v9 = *(this + 5);
      *(this + 5) = v9 + 1;
      ot::Mac::Frame::SetSequence(v8, v9);
      ot::Mac::Frame::GetDstAddr(BroadcastTxFrame, v40);
      IgnoreError();
      ot::Mac::Frame::GetSrcAddr(BroadcastTxFrame, v39);
      IgnoreError();
      v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
      ot::ChildTable::FindChild(v10, v40, 0);
      v38 = v11;
      if (v11)
      {
        DeviceMode = ot::Neighbor::GetDeviceMode(v38);
        IsMinimalEndDevice = 1;
        if (ot::Mle::DeviceMode::IsRxOnWhenIdle(&DeviceMode))
        {
          v34 = ot::Neighbor::GetDeviceMode(v38);
          IsMinimalEndDevice = ot::Mle::DeviceMode::IsMinimalEndDevice(&v34);
        }

        if (IsMinimalEndDevice)
        {
          v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(this);
          SendMessage = ot::MeshForwarder::GetSendMessage(v12);
          if (SendMessage)
          {
            if (ot::Message::GetSubType(SendMessage) != 13)
            {
              ot::Mac::Address::ToString(v39, v45);
              v27 = ot::String<(unsigned short)17>::AsCString(v45);
              ot::Mac::Address::ToString(v40, v44);
              ot::String<(unsigned short)17>::AsCString(v44);
              v32 = ot::Neighbor::GetDeviceMode(v38);
              ot::Mle::DeviceMode::IsRxOnWhenIdle(&v32);
              v31 = ot::Neighbor::GetDeviceMode(v38);
              ot::Mle::DeviceMode::IsMinimalEndDevice(&v31);
              ot::Neighbor::GetVersion(v38);
              State = ot::Neighbor::GetState(v38);
              ot::Neighbor::StateToString(State);
              ot::Message::GetSubType(SendMessage);
              ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mac::kLogModuleName, "Tx frame to SED as direct transmission src:%s dst:%s isRxOnWhenIdle:%d isMinimalEndDevice:%d child_ver:%d child_state:%s msgType:%d", v14, v15, v16, v17, v18, v19, v27);
            }
          }
        }
      }

      goto LABEL_47;
    case 5:
      ot::Mac::TxFrames::SetChannel(TxFrames, *(this + 11));
      if (enablebackoff)
      {
        ot::Mac::TxFrames::SetMaxCsmaBackoffs(TxFrames, 4);
      }

      else
      {
        ot::Mac::TxFrames::SetMaxCsmaBackoffs(TxFrames, 0);
      }

      ot::Mac::TxFrames::SetMaxFrameRetries(TxFrames, *(this + 24));
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
      result = ot::DataPollSender::PrepareDataRequest(v4, TxFrames);
      BroadcastTxFrame = result;
      if (!result)
      {
        goto LABEL_50;
      }

      v5 = BroadcastTxFrame;
      v6 = *(this + 5);
      *(this + 5) = v6 + 1;
      ot::Mac::Frame::SetSequence(v5, v6);
      goto LABEL_47;
    case 7:
      ot::Mac::TxFrames::SetChannel(TxFrames, *(this + 11));
      if (enablebackoff)
      {
        ot::Mac::TxFrames::SetMaxCsmaBackoffs(TxFrames, 4);
      }

      else
      {
        ot::Mac::TxFrames::SetMaxCsmaBackoffs(TxFrames, 0);
      }

      ot::Mac::TxFrames::SetMaxFrameRetries(TxFrames, *(this + 25));
      v20 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollHandler>(this);
      result = ot::DataPollHandler::HandleFrameRequest(v20, TxFrames);
      BroadcastTxFrame = result;
      if (!result)
      {
        goto LABEL_50;
      }

      if ((ot::Mac::TxFrame::IsARetransmission(BroadcastTxFrame) & 1) == 0)
      {
        v21 = BroadcastTxFrame;
        v22 = *(this + 5);
        *(this + 5) = v22 + 1;
        ot::Mac::Frame::SetSequence(v21, v22);
      }

      goto LABEL_47;
    case 8:
      ot::Mac::TxFrames::SetChannel(TxFrames, *(this + 11));
      if (enablebackoff)
      {
        ot::Mac::TxFrames::SetMaxCsmaBackoffs(TxFrames, 2);
      }

      else
      {
        ot::Mac::TxFrames::SetMaxCsmaBackoffs(TxFrames, 0);
      }

      ot::Mac::TxFrames::SetMaxFrameRetries(TxFrames, 0);
      v23 = ot::GetProvider<ot::InstanceLocator>::Get<ot::CslTxScheduler>(this);
      result = ot::CslTxScheduler::HandleFrameRequest(v23, TxFrames);
      BroadcastTxFrame = result;
      if (!result)
      {
        goto LABEL_50;
      }

      if ((ot::Mac::TxFrame::IsARetransmission(BroadcastTxFrame) & 1) == 0)
      {
        v24 = BroadcastTxFrame;
        v25 = *(this + 5);
        *(this + 5) = v25 + 1;
        ot::Mac::Frame::SetSequence(v24, v25);
      }

      goto LABEL_47;
  }

  if (v29 != 9)
  {
    __assert_rtn("BeginTransmit", "mac.cpp", 1372, "false");
  }

  v26 = ot::GetProvider<ot::InstanceLocator>::Get<ot::WakeupTxScheduler>(this);
  result = ot::WakeupTxScheduler::PrepareWakeupFrame(v26, TxFrames);
  BroadcastTxFrame = result;
  if (result)
  {
    ot::Mac::TxFrame::SetChannel(BroadcastTxFrame, *(this + 36));
    ot::Mac::TxFrame::SetRxChannelAfterTxDone(BroadcastTxFrame, *(this + 11));
LABEL_47:
    if ((ot::Mac::TxFrame::IsSecurityProcessed(BroadcastTxFrame) & 1) == 0)
    {
      ot::Mac::Mac::ProcessTransmitSecurity(this, BroadcastTxFrame);
    }

    *(this + 6) = 0;
    result = ot::Mac::Links::Send((this + 56));
  }

LABEL_50:
  if (!BroadcastTxFrame)
  {
    BroadcastTxFrame = ot::Mac::TxFrames::GetBroadcastTxFrame(TxFrames);
    ot::Mac::Frame::SetLength(BroadcastTxFrame, 0);
    return ot::Mac::Mac::HandleTransmitDone(this, BroadcastTxFrame, 0, 11);
  }

  return result;
}

void ot::Mac::Links::SetPanId(ot::Mac::Links *this, __int16 a2)
{
  ot::Mac::SubMac::SetPanId((this + 8), a2);
}

{
  ot::Mac::Links::SetPanId(this, a2);
}

void ot::Mac::Mac::FinishOperation(ot::Mac::Mac *this)
{
  v1 = ot::Mac::Mac::OperationToString(*(this + 1));
  v8 = *(this + 1);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Finishing operation %s pendOp:0x%x", v2, v3, v4, v5, v6, v7, v1);
  *(this + 1) = 0;
}

uint64_t ot::Mac::Mac::ReportActiveScanResult(uint64_t this, const ot::Mac::RxFrame *a2)
{
  v2 = this;
  if (*(this + 40))
  {
    if (a2)
    {
      this = ot::Mac::Mac::ConvertBeaconToActiveScanResult(this, a2, v3);
      if (!this)
      {
        return (*(v2 + 40))(v3, *(v2 + 48));
      }
    }

    else
    {
      return (*(this + 40))(0, *(this + 48));
    }
  }

  return this;
}

uint64_t ot::Mac::Mac::PerformEnergyScan(ot::Mac::Mac *this)
{
  result = ot::Mac::Mac::UpdateScanChannel(this);
  v4 = result;
  if (!result)
  {
    if (*(this + 9))
    {
      if ((*this & 4) == 0)
      {
        ot::Mac::Links::Receive((this + 56), *(this + 16));
      }

      result = ot::Mac::Links::EnergyScan((this + 56), *(this + 16), *(this + 9));
      v4 = result;
    }

    else
    {
      do
      {
        ot::Mac::Links::Receive((this + 56), *(this + 16));
        Rssi = ot::Mac::Links::GetRssi((this + 56));
        ot::Mac::Mac::ReportEnergyScanResult(this, Rssi);
        result = ot::Mac::Mac::UpdateScanChannel(this);
        v4 = result;
      }

      while (!result);
    }
  }

  if (v4)
  {
    ot::Mac::Mac::FinishOperation(this);
    if (*(this + 5))
    {
      (*(this + 5))(0, *(this + 6));
    }

    return ot::Mac::Mac::PerformNextOperation(this);
  }

  return result;
}

void ot::Mac::Links::Receive(ot::Mac::Links *this, unsigned __int8 a2)
{
  ot::Mac::SubMac::Receive((this + 8), a2);
  IgnoreError();
}

{
  ot::Mac::Links::Receive(this, a2);
}

uint64_t ot::Mac::Mac::ReportEnergyScanResult(uint64_t this, char a2)
{
  v4 = this;
  v3 = a2;
  if (*(this + 40))
  {
    if (v3 != 127)
    {
      v2[0] = *(this + 16);
      v2[1] = v3;
      return (*(this + 40))(v2, *(this + 48));
    }
  }

  return this;
}

uint64_t ot::Mac::Links::GetRssi(ot::Mac::Links *this)
{
  return ot::Mac::SubMac::GetRssi((this + 8));
}

{
  return ot::Mac::Links::GetRssi(this);
}

uint64_t ot::Mac::Links::EnergyScan(ot::Mac::Links *this, unsigned __int8 a2, unsigned __int16 a3)
{
  return ot::Mac::SubMac::EnergyScan((this + 8), a2, a3);
}

{
  return ot::Mac::Links::EnergyScan(this, a2, a3);
}

void ot::Mac::Mac::SetRxOnWhenIdle(ot::Mac::Mac *this, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = (*this & 4) != 0;
  ot::Logger::LogAtLevel<(ot::LogLevel)3>(&ot::Mac::kLogModuleName, "%s: aRxOnWhenIdle = %d, mRxOnWhenIdle = %d", a3, a4, a5, a6, a7, a8, "SetRxOnWhenIdle");
  if (((*this & 4) != 0) != (a2 & 1))
  {
    *this = *this & 0xFB | (4 * (a2 & 1));
    if ((*this & 4) != 0)
    {
      if (ot::Mac::Mac::IsPending(this, 6))
      {
        ot::TimerMilli::Stop((this + 312));
        ot::Mac::Mac::ClearPending(this, 6);
      }

      if (*(this + 1) == 6)
      {
        ot::TimerMilli::Stop((this + 312));
        ot::Mac::Mac::FinishOperation(this);
        ot::Tasklet::Post((this + 296));
      }
    }

    LOBYTE(v9) = 1;
    if ((*this & 4) == 0)
    {
      v9 = (*this >> 3) & 1;
    }

    ot::Mac::Links::SetRxOnWhenIdle((this + 56), v9 & 1);
    ot::Mac::Mac::UpdateIdleMode(this);
  }
}

BOOL ot::Mac::Mac::IsPending(uint64_t a1, char a2)
{
  return (*(a1 + 2) & (1 << a2)) != 0;
}

{
  return ot::Mac::Mac::IsPending(a1, a2);
}

uint64_t ot::Mac::Mac::ClearPending(uint64_t result, char a2)
{
  *(result + 2) &= ~(1 << a2);
  return result;
}

{
  return ot::Mac::Mac::ClearPending(result, a2);
}

void ot::Mac::Links::SetRxOnWhenIdle(ot::Mac::Links *this, char a2)
{
  ot::Mac::SubMac::SetRxOnWhenIdle((this + 8), a2 & 1);
}

{
  ot::Mac::Links::SetRxOnWhenIdle(this, a2);
}

void ot::Mac::Mac::UpdateIdleMode(ot::Mac::Mac *this)
{
  v16 = 0;
  if ((*this & 4) == 0)
  {
    v16 = (*this & 8) == 0;
  }

  if (!*(this + 1))
  {
    v1 = *this;
    if (ot::Mac::Mac::IsPending(this, 8))
    {
      ot::TimerMilli::FireAt((this + 312), *(this + 7));
    }

    if (v16)
    {
      ot::Mac::Links::Sleep((this + 56));
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Idle mode: Radio sleeping pendOp:0x%x", v2, v3, v4, v5, v6, v7, *(this + 1));
    }

    else
    {
      ot::Mac::Links::Receive((this + 56), *(this + 11));
      v14 = *(this + 1);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Idle mode: Radio receiving on channel %u pendOp:0x%x", v8, v9, v10, v11, v12, v13, *(this + 11));
    }
  }
}

uint64_t ot::Mac::Mac::SetPanChannel(ot::Mac::Mac *this, unsigned __int8 a2)
{
  v7 = this;
  v6 = a2;
  v5 = 0;
  if (ot::Mac::ChannelMask::ContainsChannel((this + 12), a2))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    if (!ot::Notifier::Update<unsigned char>(v2, this + 10, &v6, 0x4000))
    {
      ot::Clearable<ot::SuccessRateTracker>::Clear(this + 262);
      if ((*this & 0x20) == 0)
      {
        *(this + 11) = *(this + 10);
        ot::Mac::Mac::UpdateCsl(this, 0);
        ot::Mac::Mac::UpdateIdleMode(this);
      }
    }
  }

  else
  {
    return 7;
  }

  return v5;
}

uint64_t ot::Notifier::Update<unsigned char>(void *a1, _BYTE *a2, _BYTE *a3, uint64_t a4)
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
  return ot::Notifier::Update<unsigned char>(a1, a2, a3, a4);
}

void ot::Mac::Mac::UpdateCsl(ot::Mac::Mac *this, ot::Neighbor *a2)
{
  v32 = this;
  v31 = a2;
  v30 = 0;
  CslPeripheral = a2;
  if (ot::Mac::Mac::IsCslEnabled(this))
  {
    CslPeriod = ot::Mac::Mac::GetCslPeriod(this);
  }

  else
  {
    CslPeriod = 0;
  }

  EcslPeriod = CslPeriod;
  if (ot::Mac::Mac::GetCslChannel(this))
  {
    CslChannel = ot::Mac::Mac::GetCslChannel(this);
  }

  else
  {
    CslChannel = *(this + 11);
  }

  v27 = CslChannel;
  v26 = 0;
  if (!CslPeripheral)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    CslPeripheral = ot::Mle::Mle::GetCslPeripheral(v2);
    ot::Mac::Links::WedPresent((this + 56), CslPeripheral != 0);
  }

  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsSleepyRouter(v3))
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    if (ot::Mle::Mle::IsCslPeripheralDetached(v4))
    {
      EcslPeriod = 0;
    }

    else
    {
      Instance = ot::InstanceLocator::GetInstance(this);
      EcslPeriod = otThreadWedGetEcslPeriod(Instance);
    }

    *(this + 17) = EcslPeriod;
  }

  if (CslPeripheral)
  {
    Parent = CslPeripheral;
  }

  else
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    Parent = ot::Mle::Mle::GetParent(v6);
  }

  CslPeripheral = Parent;
  if (ot::Neighbor::GetRloc16(Parent))
  {
    Rloc16 = ot::Neighbor::GetRloc16(CslPeripheral);
  }

  else
  {
    Rloc16 = -2;
  }

  v30 = Rloc16;
  ot::Neighbor::GetExtAddress(CslPeripheral);
  if (ot::Mac::Links::UpdateCsl(this + 56, EcslPeriod, v27, Rloc16, v7, &v26))
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (ot::Mle::Mle::IsChild(v8))
    {
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(this);
      ot::DataPollSender::RecalculatePollPeriod(v9);
      if (EcslPeriod)
      {
        v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        ot::Mle::Mle::ScheduleChildUpdateRequest(v10);
      }
    }

    v14 = CslPeripheral;
    v11 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    if (v14 == ot::Mle::Mle::GetCslPeripheral(v11))
    {
      v25 = CslPeripheral;
      ot::InstanceLocator::GetInstance(this);
      Now = otPlatRadioGetNow();
      v23 = 0;
      ot::Time::Time(&v23, Now);
      v22 = 0;
      ot::Time::Time(&v20, v26);
      v21 = ot::Time::operator-(&v20, 240 * EcslPeriod);
      v22 = ot::Time::operator-(&v21, 32);
      if (ot::Time::operator>(&v23, &v22))
      {
        v12 = ot::Time::operator-(&v23, &v22);
        Now -= v12;
      }

      else
      {
        v13 = ot::Time::operator-(&v22, &v23);
        Now += v13;
      }

      ot::CslTxScheduler::ChildInfo::SetCslPeriod(v25 + 168, EcslPeriod);
      ot::CslTxScheduler::ChildInfo::SetCslPhase(v25 + 168, 0);
      ot::CslTxScheduler::ChildInfo::SetLastRxTimestamp(v25 + 168, Now);
      ot::CslTxScheduler::ChildInfo::SetCslChannel(v25 + 168, v27);
      ot::CslTxScheduler::ChildInfo::SetCslSynchronized(v25 + 168, 1);
    }

    ot::Mac::Mac::UpdateIdleMode(this);
  }
}

uint64_t ot::Mac::Mac::SetTemporaryChannel(ot::Mac::Mac *this, unsigned __int8 a2)
{
  v4 = 0;
  if (ot::Mac::ChannelMask::ContainsChannel((this + 12), a2))
  {
    *this = *this & 0xDF | 0x20;
    *(this + 11) = a2;
    ot::Mac::Mac::UpdateIdleMode(this);
  }

  else
  {
    return 7;
  }

  return v4;
}

void ot::Mac::Mac::ClearTemporaryChannel(ot::Mac::Mac *this)
{
  if ((*this & 0x20) != 0)
  {
    *this &= ~0x20u;
    *(this + 11) = *(this + 10);
    ot::Mac::Mac::UpdateIdleMode(this);
  }
}

void ot::Mac::Mac::SetSupportedChannelMask(ot::Mac::Mac *this, const ot::Mac::ChannelMask *a2)
{
  v6 = this;
  v5 = a2;
  v4 = *a2;
  ot::Mac::ChannelMask::Intersect(&v4, (this + 12));
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
  ot::Notifier::Update<ot::Mac::ChannelMask>(v2, this + 3, &v4, 0x400000);
  IgnoreError();
}

uint64_t ot::Notifier::Update<ot::Mac::ChannelMask>(void *a1, _DWORD *a2, _DWORD *a3, uint64_t a4)
{
  v6 = 0;
  if (ot::Mac::ChannelMask::operator==(a2, a3))
  {
    ot::Notifier::SignalIfFirst(a1, a4);
    return 24;
  }

  else
  {
    *a2 = *a3;
    ot::Notifier::Signal(a1, a4);
  }

  return v6;
}

{
  return ot::Notifier::Update<ot::Mac::ChannelMask>(a1, a2, a3, a4);
}

uint64_t ot::Notifier::Update<unsigned short>(void *a1, _WORD *a2, _WORD *a3, uint64_t a4)
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
  return ot::Notifier::Update<unsigned short>(a1, a2, a3, a4);
}

void ot::Mac::Mac::RequestDirectFrameTransmission(ot::Mac::Mac *this)
{
  if ((ot::Mac::Mac::IsEnabled(this) & 1) != 0 && !ot::Mac::Mac::IsActiveOrPending(this, 4u))
  {
    ot::Mac::Mac::StartOperation(this, 4);
  }
}

BOOL ot::Mac::Mac::IsActiveOrPending(uint64_t a1, unsigned __int8 a2)
{
  v3 = 1;
  if (*(a1 + 1) != a2)
  {
    return ot::Mac::Mac::IsPending(a1, a2);
  }

  return v3;
}

void ot::Mac::Mac::RequestIndirectFrameTransmission(ot::Mac::Mac *this)
{
  if ((ot::Mac::Mac::IsEnabled(this) & 1) != 0 && !ot::Mac::Mac::IsActiveOrPending(this, 7u))
  {
    ot::Mac::Mac::StartOperation(this, 7);
  }
}

void ot::Mac::Mac::RequestCslFrameTransmission(ot::Mac::Mac *this, int a2)
{
  v6 = this;
  v5 = a2;
  if (*this)
  {
    Now = ot::TimerMilli::GetNow(this);
    v4 = ot::Time::operator+(&Now, v5);
    *(this + 7) = v4;
    ot::Mac::Mac::StartOperation(this, 8);
  }
}

uint64_t ot::Mac::Mac::RequestDataPollTransmission(ot::Mac::Mac *this)
{
  v3 = 0;
  if (ot::Mac::Mac::IsEnabled(this))
  {
    if (!ot::Mac::Mac::IsActiveOrPending(this, 5u))
    {
      *this = *this & 0xFD | (2 * !ot::Mac::Mac::IsPending(this, 4));
      ot::Mac::Mac::StartOperation(this, 5);
    }
  }

  else
  {
    return 13;
  }

  return v3;
}

void ot::Mac::Links::Sleep(ot::Mac::Links *this)
{
  ot::Mac::SubMac::Sleep((this + 8));
  IgnoreError();
}

{
  ot::Mac::Links::Sleep(this);
}

uint64_t ot::Mac::Mac::SetPending(uint64_t result, char a2)
{
  *(result + 2) |= 1 << a2;
  return result;
}

{
  return ot::Mac::Mac::SetPending(result, a2);
}

ot::Mac::Frame *ot::Mac::Mac::PrepareBeaconRequest(ot::Mac::Mac *this)
{
  v14 = this;
  TxFrames = ot::Mac::Links::GetTxFrames((this + 56));
  BroadcastTxFrame = ot::Mac::TxFrames::GetBroadcastTxFrame(TxFrames);
  ot::Mac::Addresses::Addresses(v11);
  ot::Mac::PanIds::PanIds(v10);
  ot::Mac::Address::SetNone(v11);
  ot::Mac::Address::SetShort(&v12, 0xFFFF);
  ot::Mac::PanIds::SetDestination(v10, 0xFFFF);
  ot::Mac::Frame::InitMacHeader(BroadcastTxFrame, 3, 0, v11, v10, 0, 0);
  ot::Mac::Frame::SetCommandId(BroadcastTxFrame, 7);
  IgnoreError();
  ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mac::kLogModuleName, "Sending Beacon Request", v2, v3, v4, v5, v6, v7, v9);
  return BroadcastTxFrame;
}

uint64_t ot::Mac::Links::GetTxFrames(ot::Mac::Links *this)
{
  return this + 232;
}

{
  return ot::Mac::Links::GetTxFrames(this);
}

uint64_t ot::Mac::TxFrames::GetBroadcastTxFrame(ot::Mac::TxFrames *this)
{
  return ot::Mac::TxFrames::GetTxFrame(this);
}

{
  return ot::Mac::TxFrames::GetBroadcastTxFrame(this);
}

uint64_t ot::Mac::Address::SetNone(uint64_t this)
{
  *(this + 8) = 0;
  return this;
}

{
  return ot::Mac::Address::SetNone(this);
}

ot::Mac::Frame *ot::Mac::Mac::PrepareBeacon(ot::Mac::Mac *this)
{
  v26 = this;
  BroadcastTxFrame = 0;
  v24 = 0;
  ot::Mac::Addresses::Addresses(v22);
  ot::Mac::PanIds::PanIds(v21);
  v20 = 0;
  Payload = 0;
  TxFrames = ot::Mac::Links::GetTxFrames((this + 56));
  BroadcastTxFrame = ot::Mac::TxFrames::GetBroadcastTxFrame(TxFrames);
  ExtAddress = ot::Mac::Mac::GetExtAddress(this);
  ot::Mac::Address::SetExtended(v22, ExtAddress);
  ot::Mac::PanIds::SetSource(v21, *(this + 4));
  ot::Mac::Address::SetNone(&v23);
  ot::Mac::Frame::InitMacHeader(BroadcastTxFrame, 0, 0, v22, v21, 0, 0);
  ot::Mac::Frame::GetPayload(BroadcastTxFrame);
  v24 = v3;
  ot::Mac::Beacon::Init(v3);
  v20 = 4;
  Payload = ot::Mac::Beacon::GetPayload(v24);
  ot::Mac::BeaconPayload::Init(Payload);
  if (ot::Mac::Mac::IsJoinable(this))
  {
    ot::Mac::BeaconPayload::SetJoiningPermitted(Payload);
  }

  else
  {
    ot::Mac::BeaconPayload::ClearJoiningPermitted(Payload);
  }

  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::NetworkNameManager>(this);
  ot::MeshCoP::NetworkNameManager::GetNetworkName(v4);
  v18[0] = ot::MeshCoP::NetworkName::GetAsData(v5);
  v18[1] = v6;
  ot::Mac::BeaconPayload::SetNetworkName(Payload, v18);
  v16 = Payload;
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ExtendedPanIdManager>(this);
  ot::MeshCoP::ExtendedPanIdManager::GetExtPanId(v7);
  ot::Mac::BeaconPayload::SetExtendedPanId(v16, v8);
  v20 += 26;
  ot::Mac::Frame::SetPayloadLength(BroadcastTxFrame, v20);
  ot::Mac::Mac::LogBeacon(this, "Sending", v9, v10, v11, v12, v13, v14);
  return BroadcastTxFrame;
}

void ot::Mac::Frame::GetPayload(ot::Mac::Frame *this)
{
  ot::AsConst<ot::Mac::Frame>();
  ot::Mac::Frame::GetPayload(v1);
  ot::AsNonConst<unsigned char>();
}

{
  ot::Mac::Frame::GetPayload(this);
}

uint64_t ot::Mac::Beacon::Init(ot::Mac::Beacon *this)
{
  result = ot::LittleEndian::HostSwap16(4095);
  *this = result;
  *(this + 2) = 0;
  *(this + 3) = 0;
  return result;
}

{
  return ot::Mac::Beacon::Init(this);
}

_BYTE *ot::Mac::BeaconPayload::Init(_BYTE *this)
{
  *this = 3;
  this[1] = 32;
  return this;
}

{
  return ot::Mac::BeaconPayload::Init(this);
}

BOOL ot::Mac::Mac::IsJoinable(ot::Mac::Mac *this)
{
  v4 = this;
  v3 = 0;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(this);
  ot::Ip6::Filter::GetUnsecurePorts(v1, &v3);
  return v3 != 0;
}

uint64_t ot::Mac::BeaconPayload::SetJoiningPermitted(uint64_t this)
{
  *(this + 1) |= 1u;
  *(this + 1) &= 0xFu;
  *(this + 1) |= 0x40u;
  return this;
}

{
  return ot::Mac::BeaconPayload::SetJoiningPermitted(this);
}

uint64_t ot::Mac::BeaconPayload::ClearJoiningPermitted(uint64_t this)
{
  *(this + 1) &= ~1u;
  return this;
}

{
  return ot::Mac::BeaconPayload::ClearJoiningPermitted(this);
}

uint64_t ot::Mac::BeaconPayload::SetNetworkName(ot::Mac::BeaconPayload *this, const ot::MeshCoP::NameData *a2)
{
  return ot::MeshCoP::NameData::CopyTo(a2, this + 2, 16);
}

{
  return ot::Mac::BeaconPayload::SetNetworkName(this, a2);
}

uint64_t ot::Mac::BeaconPayload::SetExtendedPanId(uint64_t result, void *a2)
{
  *(result + 18) = *a2;
  return result;
}

{
  return ot::Mac::BeaconPayload::SetExtendedPanId(result, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ExtendedPanIdManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::ExtendedPanIdManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::ExtendedPanIdManager>(a1);
}

uint64_t ot::Mac::Mac::ShouldSendBeacon(ot::Mac::Mac *this)
{
  IsBeaconEnabled = 0;
  if (ot::Mac::Mac::IsEnabled(this))
  {
    IsBeaconEnabled = ot::Mac::Mac::IsBeaconEnabled(this);
  }

  return IsBeaconEnabled & 1;
}

uint64_t ot::Mac::Mac::IsBeaconEnabled(ot::Mac::Mac *this)
{
  return (*this >> 4) & 1;
}

{
  return ot::Mac::Mac::IsBeaconEnabled(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Ip6::Filter>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Filter>(a1);
}

void ot::Mac::Mac::ProcessTransmitSecurity(ot::Mac::Mac *this, ot::Mac::TxFrame *a2)
{
  v14 = this;
  v13 = a2;
  v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  v11 = 0;
  ExtAddress = 0;
  if (ot::Mac::Frame::GetSecurityEnabled(v13))
  {
    ot::Mac::Frame::GetKeyIdMode(v13, &v11);
    IgnoreError();
    if (v11)
    {
      if (v11 == 8)
      {
        return;
      }

      if (v11 != 16)
      {
        __assert_rtn("ProcessTransmitSecurity", "mac.cpp", 1166, "false");
      }

      *v9 = -1;
      if (ot::Mac::Frame::IsWakeupFrame(v13))
      {
        CurrentKeySequence = ot::KeyManager::GetCurrentKeySequence(v12);
        ot::BigEndian::WriteUint32(CurrentKeySequence, v9, v5);
        ot::Mac::Frame::SetKeySource(v13, v9);
        return;
      }

      ot::Mac::TxFrame::SetAesKey(v13, (this + 1688));
      ot::Mac::Frame::SetFrameCounter(v13, ++*(this + 130));
      ot::Mac::Frame::SetKeySource(v13, v9);
      ot::Mac::Frame::SetKeyId(v13, 255);
      ExtAddress = ot::AsCoreType<otExtAddress>(&ot::Mac::Mac::sMode2ExtAddress);
    }

    else
    {
      v7 = v13;
      Kek = ot::KeyManager::GetKek(v12);
      ot::Mac::TxFrame::SetAesKey(v7, Kek);
      ExtAddress = ot::Mac::Mac::GetExtAddress(this);
      if ((ot::Mac::TxFrame::IsHeaderUpdated(v13) & 1) == 0)
      {
        v6 = v13;
        KekFrameCounter = ot::KeyManager::GetKekFrameCounter(v12);
        ot::Mac::Frame::SetFrameCounter(v6, KekFrameCounter);
        ot::KeyManager::IncrementKekFrameCounter(v12);
      }
    }

    if ((ot::Mac::TxFrame::IsCslIePresent(v13) & 1) == 0)
    {
      ot::Mac::TxFrame::ProcessTransmitAesCcm(v13, ExtAddress);
    }
  }
}

uint64_t ot::Mac::TxFrame::SetAesKey(uint64_t this, const ot::Mac::KeyMaterial *a2)
{
  *(this + 16) = a2;
  return this;
}

{
  return ot::Mac::TxFrame::SetAesKey(this, a2);
}

uint64_t ot::KeyManager::GetKek(ot::KeyManager *this)
{
  return this + 120;
}

{
  return ot::KeyManager::GetKek(this);
}

uint64_t ot::KeyManager::GetKekFrameCounter(ot::KeyManager *this)
{
  return *(this + 34);
}

{
  return ot::KeyManager::GetKekFrameCounter(this);
}

uint64_t ot::KeyManager::IncrementKekFrameCounter(uint64_t this)
{
  ++*(this + 136);
  return this;
}

{
  return ot::KeyManager::IncrementKekFrameCounter(this);
}

uint64_t ot::Mac::TxFrame::IsCslIePresent(ot::Mac::TxFrame *this)
{
  return (*(this + 45) >> 3) & 1;
}

{
  return ot::Mac::TxFrame::IsCslIePresent(this);
}

uint64_t ot::Mac::TxFrames::Clear(ot::Mac::TxFrames *this)
{
  ot::Mac::Frame::SetLength(*this, 0);
  ot::Mac::TxFrame::SetIsARetransmission(*this, 0);
  ot::Mac::TxFrame::SetIsSecurityProcessed(*this, 0);
  ot::Mac::TxFrame::SetCsmaCaEnabled(*this, 1);
  ot::Mac::TxFrame::SetIsHeaderUpdated(*this, 0);
  ot::Mac::TxFrame::SetTxDelay(*this, 0);
  ot::Mac::TxFrame::SetTxDelayBaseTime(*this, 0);
  ot::Mac::TxFrame::SetTxPower(*this, 127);
  return ot::Mac::TxFrame::SetCslIePresent(*this, 0);
}

{
  return ot::Mac::TxFrames::Clear(this);
}

uint64_t ot::Mac::TxFrame::SetChannel(ot::Mac::TxFrame *this, char a2)
{
  *(this + 10) = a2;
  return ot::Mac::TxFrame::SetRxChannelAfterTxDone(this, a2);
}

{
  return ot::Mac::TxFrame::SetChannel(this, a2);
}

uint64_t ot::Mac::TxFrames::SetChannel(ot::Mac::TxFrame **this, char a2)
{
  return ot::Mac::TxFrame::SetChannel(*this, a2);
}

{
  return ot::Mac::TxFrames::SetChannel(this, a2);
}

uint64_t ot::Mac::TxFrames::SetMaxCsmaBackoffs(ot::Mac::TxFrames *this, char a2)
{
  return ot::Mac::TxFrame::SetMaxCsmaBackoffs(*this, a2);
}

{
  return ot::Mac::TxFrames::SetMaxCsmaBackoffs(this, a2);
}

BOOL ot::Mle::DeviceMode::IsMinimalEndDevice(ot::Mle::DeviceMode *this)
{
  return !ot::Mle::DeviceMode::IsFullThreadDevice(this);
}

{
  return ot::Mle::DeviceMode::IsMinimalEndDevice(this);
}

uint64_t ot::MeshForwarder::GetSendMessage(ot::MeshForwarder *this)
{
  return *(this + 7);
}

{
  return ot::MeshForwarder::GetSendMessage(this);
}

uint64_t ot::Neighbor::GetVersion(ot::Neighbor *this)
{
  return *(this + 18);
}

{
  return ot::Neighbor::GetVersion(this);
}

uint64_t ot::Neighbor::GetState(ot::Neighbor *this)
{
  return *(this + 30) & 0xF;
}

{
  return ot::Neighbor::GetState(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollHandler>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::DataPollHandler>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollHandler>(a1);
}

uint64_t ot::Mac::TxFrame::IsARetransmission(ot::Mac::TxFrame *this)
{
  return (*(this + 45) >> 1) & 1;
}

{
  return ot::Mac::TxFrame::IsARetransmission(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::CslTxScheduler>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::CslTxScheduler>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::CslTxScheduler>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::WakeupTxScheduler>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::WakeupTxScheduler>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::WakeupTxScheduler>(a1);
}

uint64_t ot::Mac::TxFrame::SetRxChannelAfterTxDone(uint64_t this, char a2)
{
  *(this + 43) = a2;
  return this;
}

{
  return ot::Mac::TxFrame::SetRxChannelAfterTxDone(this, a2);
}

uint64_t ot::Mac::TxFrame::IsSecurityProcessed(ot::Mac::TxFrame *this)
{
  return (*(this + 45) >> 4) & 1;
}

{
  return ot::Mac::TxFrame::IsSecurityProcessed(this);
}

uint64_t ot::Mac::Links::Send(ot::Mac::Links *this)
{
  result = ot::Mac::SubMac::Send((this + 8));
  if (result)
  {
    __assert_rtn("Send", "mac_links.hpp", 616, "false");
  }

  return result;
}

{
  return ot::Mac::Links::Send(this);
}

uint64_t ot::Mac::Frame::SetLength(uint64_t this, __int16 a2)
{
  *(this + 8) = a2;
  return this;
}

{
  return ot::Mac::Frame::SetLength(this, a2);
}

uint64_t ot::Mac::Mac::HandleTransmitDone(uint64_t a1, ot::Mac::TxFrame *a2, ot::Mac::Frame *a3, int a4)
{
  v64 = a1;
  v63 = a2;
  v62 = a3;
  v61 = a4;
  if (!a4)
  {
    Length = ot::Mac::Frame::GetLength(v63);
    ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::Update(a1 + 836, Length);
  }

  AckRequest = ot::Mac::Frame::GetAckRequest(v63);
  if (!ot::Mac::Frame::IsEmpty(v63))
  {
    ot::Mac::Address::Address(v59);
    ot::Mac::Frame::GetDstAddr(v63, v59);
    IgnoreError();
    if (ot::Mac::Address::IsBroadcast(v59))
    {
      ++*(a1 + 6);
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
      SendMessage = ot::MeshForwarder::GetSendMessage(v5);
      if (SendMessage && ot::Message::GetSubType(SendMessage) == 12)
      {
        if (*(a1 + 6) < *(a1 + 26))
        {
          ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "ReTx MLE Advertisement, current tx count=%d", v6, v7, v8, v9, v10, v11, *(a1 + 6));
          return ot::Mac::Links::Send((a1 + 56));
        }
      }

      else if (!*(a1 + 6))
      {
        return ot::Mac::Links::Send((a1 + 56));
      }

      *(a1 + 6) = 0;
    }

    if (AckRequest && v62)
    {
      v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(a1);
      Neighbor = ot::NeighborTable::FindNeighbor(v13, v59, 1);
      if (!v61)
      {
        if (Neighbor)
        {
          v54 = v62;
          ot::Neighbor::GetExtAddress(Neighbor);
          if (ot::Mac::Filter::ApplyToRxFrame((a1 + 1364), v54, v14, Neighbor))
          {
            v61 = 14;
          }
        }
      }

      if (!v61 && ot::Mac::Mac::ProcessEnhAckSecurity(a1, v63, v62))
      {
        v61 = 14;
      }

      if (!v61 && Neighbor)
      {
        ot::Mac::Mac::UpdateNeighborLinkInfo(a1, Neighbor, v62);
        ot::Mac::Mac::ProcessEnhAckProbing(a1, v62, Neighbor);
        if (ot::Mac::Frame::GetVersion(v62) == 0x2000)
        {
          ot::Mac::Mac::ProcessCsl(a1, v62, v59);
        }

        if ((*a1 & 4) == 0)
        {
          ot::Mac::Frame::GetHeaderIe(v63, 0x1Au);
          if (v15)
          {
            v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(a1);
            ot::DataPollSender::ResetKeepAliveTimer(v16);
          }
        }
      }
    }
  }

  v53 = *(a1 + 1);
  switch(v53)
  {
    case 1:
      ++*(a1 + 372);
      return ot::TimerMilli::Start((a1 + 312), *(a1 + 18));
    case 3:
      ++*(a1 + 368);
      ot::Mac::Mac::FinishOperation(a1);
      return ot::Mac::Mac::PerformNextOperation(a1);
    case 4:
      ++*(a1 + 360);
      if (v61)
      {
        ++*(a1 + 384);
      }

      else if (ot::Mac::Links::GetTransmitRetries((a1 + 56)) < 16)
      {
        TransmitRetries = ot::Mac::Links::GetTransmitRetries((a1 + 56));
        ++*(a1 + 528 + 4 * TransmitRetries);
      }

      SubMac = ot::Mac::Links::GetSubMac((a1 + 56));
      if (ot::Mac::SubMac::GetTransmitErrorsNoAck(SubMac) < 17)
      {
        v27 = ot::Mac::Links::GetSubMac((a1 + 56));
        TransmitErrorsNoAck = ot::Mac::SubMac::GetTransmitErrorsNoAck(v27);
        ++*(a1 + 596 + 4 * TransmitErrorsNoAck);
      }

      v29 = ot::Mac::Links::GetSubMac((a1 + 56));
      if (ot::Mac::SubMac::GetTransmitErrorsChannelAccessFailure(v29) < 17)
      {
        v30 = ot::Mac::Links::GetSubMac((a1 + 56));
        TransmitErrorsChannelAccessFailure = ot::Mac::SubMac::GetTransmitErrorsChannelAccessFailure(v30);
        ++*(a1 + 664 + 4 * TransmitErrorsChannelAccessFailure);
      }

      ot::Mac::Mac::FinishOperation(a1);
      v32 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
      ot::MeshForwarder::HandleSentFrame(v32, v63, v61);
      v33 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(a1);
      ot::DataPollSender::ProcessTxDone(v33, v63, v62, v61);
      return ot::Mac::Mac::PerformNextOperation(a1);
    case 5:
      v52 = 1;
      if (!ot::Mac::Frame::IsEmpty(v63))
      {
        v52 = AckRequest;
      }

      if ((v52 & 1) == 0)
      {
        __assert_rtn("HandleTransmitDone", "mac.cpp", 1855, "aFrame.IsEmpty() || ackRequested");
      }

      if (!v61 && v62)
      {
        FramePending = ot::Mac::Frame::GetFramePending(v62);
        if ((ot::Mac::Mac::IsEnabled(a1) & 1) != 0 && FramePending)
        {
          ot::Mac::Mac::StartOperation(a1, 6);
        }

        v17 = ot::ToYesNo(FramePending);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mac::kLogModuleName, "Sent data poll, fp:%s", v18, v19, v20, v21, v22, v23, v17);
      }

      ++*(a1 + 364);
      ot::Mac::Mac::FinishOperation(a1);
      v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(a1);
      ot::DataPollSender::HandlePollSent(v24, v63, v61);
      return ot::Mac::Mac::PerformNextOperation(a1);
    case 7:
      ++*(a1 + 360);
      if (v61)
      {
        ++*(a1 + 388);
      }

      else if (ot::Mac::Links::GetTransmitRetries((a1 + 56)) < 1)
      {
        v35 = ot::Mac::Links::GetTransmitRetries((a1 + 56));
        ++*(a1 + 592 + 4 * v35);
      }

      ot::Mac::Mac::FinishOperation(a1);
      v36 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollHandler>(a1);
      ot::DataPollHandler::HandleSentFrame(v36, v63, v61);
      return ot::Mac::Mac::PerformNextOperation(a1);
    case 8:
      ++*(a1 + 360);
      ot::Mac::Mac::FinishOperation(a1);
      v34 = ot::GetProvider<ot::InstanceLocator>::Get<ot::CslTxScheduler>(a1);
      ot::CslTxScheduler::HandleSentFrame(v34, v63, v61);
      return ot::Mac::Mac::PerformNextOperation(a1);
    case 9:
      ot::Mac::Mac::FinishOperation(a1);
      v37 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      if (!ot::Mle::Mle::isThreadRegulatoryCertEnabled(v37))
      {
        ot::InstanceLocator::GetInstance(a1);
        if (otPlatRadioGetRcp2Vendor2Enabled())
        {
          v38 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
          if (!ot::Mle::Mle::IsCslPeripheralAttached(v38))
          {
            v51 = *(a1 + 1);
            ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "%s:kOperationTransmitWakeup complete,stop Wakeup explicitly in mOperation = %d", v39, v40, v41, v42, v43, v44, "HandleTransmitDone");
            ot::InstanceLocator::GetInstance(a1);
            otPlatRadioStopWakeup();
            ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "%s:Stop wakeup completed", v45, v46, v47, v48, v49, v50, "HandleTransmitDone");
          }
        }
      }

      return ot::Mac::Mac::PerformNextOperation(a1);
    default:
      __assert_rtn("HandleTransmitDone", "mac.cpp", 1984, "false");
  }
}

uint64_t ot::Mac::Mac::RecordCcaStatus(ot::Mac::Mac *this, char a2, char a3)
{
  if ((a2 & 1) == 0)
  {
    ++*(this + 98);
    if (ot::Mac::Mac::IsPerformingCslTransmit(this))
    {
      ++*(this + 103);
    }
  }

  if (a3 == *(this + 10) || (result = ot::Mac::Mac::IsCslEnabled(this), (result & 1) != 0) && a3 == *(this + 32))
  {
    if (*(this + 263) < 0x200u)
    {
      ++*(this + 263);
    }

    return ot::SuccessRateTracker::AddSample(this + 262, a2 & 1, *(this + 263));
  }

  return result;
}

BOOL ot::Mac::Mac::IsPerformingCslTransmit(ot::Mac::Mac *this)
{
  return *(this + 1) == 8;
}

{
  return ot::Mac::Mac::IsPerformingCslTransmit(this);
}

BOOL ot::Mac::Mac::IsCslEnabled(ot::Mac::Mac *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  v4 = 0;
  if (!ot::Mle::Mle::IsRxOnWhenIdle(v1))
  {
    return ot::Mac::Mac::IsCslCapable(this);
  }

  return v4;
}

uint64_t ot::Mac::Mac::RecordFrameTransmitStatus(ot::InstanceLocator *a1, ot::Mac::Frame *a2, int a3, unsigned __int8 a4, char a5)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  AckRequest = ot::Mac::Frame::GetAckRequest(a2);
  ot::Mac::Address::Address(v14);
  v12 = "";
  result = ot::Mac::Frame::IsEmpty(v19);
  if (result)
  {
    return result;
  }

  ot::Mac::Frame::GetDstAddr(v19, v14);
  IgnoreError();
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(a1);
  Neighbor = ot::NeighborTable::FindNeighbor(v6, v14, 1);
  if (Neighbor && AckRequest)
  {
    v11 = 1;
    if (!v18)
    {
LABEL_7:
      LinkInfo = ot::Neighbor::GetLinkInfo(Neighbor);
      ot::LinkQualityInfo::AddFrameTxStatus(LinkInfo, v11 & 1);
      goto LABEL_8;
    }

    if (v18 == 14)
    {
      v11 = 0;
      goto LABEL_7;
    }
  }

LABEL_8:
  if (Neighbor)
  {
    v8 = ot::Neighbor::GetLinkInfo(Neighbor);
    ot::LinkQualityInfo::ToErrorRateInfoString(v8, v21);
    v12 = ot::String<(unsigned short)128>::AsCString(v21);
  }

  if (v18)
  {
    ot::Mac::Mac::LogFrameTxFailure(a1, v19, v18, v17, v16 & 1, v12);
    Header = ot::Mac::Frame::GetHeader(v19);
    result = ot::Logger::Dump<(ot::LogLevel)5,&ot::Mac::kLogModuleName>("TX ERR", Header, 16);
    if (v16)
    {
      ++*(a1 + 95);
      return result;
    }
  }

  else
  {
    ot::Mac::Mac::LogFrameTx(a1, v19, v12);
  }

  ++*(a1 + 84);
  if (v18 == 11)
  {
    ++*(a1 + 99);
  }

  if (v18 == 15)
  {
    ++*(a1 + 100);
  }

  if (AckRequest)
  {
    ++*(a1 + 87);
    if (!v18)
    {
      ++*(a1 + 88);
    }
  }

  else
  {
    ++*(a1 + 89);
  }

  result = ot::Mac::Address::IsBroadcast(v14);
  if (result)
  {
    ++*(a1 + 86);
  }

  else
  {
    ++*(a1 + 85);
  }

  return result;
}

BOOL ot::Mac::Frame::GetAckRequest(ot::Mac::Frame *this)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  return ot::Mac::Frame::IsAckRequest(FrameControlField);
}

{
  return ot::Mac::Frame::GetAckRequest(this);
}

_WORD *ot::LinkQualityInfo::AddFrameTxStatus(ot::LinkQualityInfo *this, char a2)
{
  return ot::SuccessRateTracker::AddSample(this + 2, a2 & 1, 0x80u);
}

{
  return ot::LinkQualityInfo::AddFrameTxStatus(this, a2);
}

uint64_t ot::String<(unsigned short)128>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)128>::AsCString(a1);
}

void ot::Mac::Mac::LogFrameTx(ot::Mac::Mac *this, const ot::Mac::TxFrame *a2, const char *a3)
{
  v122 = this;
  v121 = a2;
  v120 = a3;
  v116 = this;
  Airtime = ot::Mac::TxFrame::GetAirtime(a2);
  v114 = ot::Mac::TxFrame::GetAirtime(v121);
  v118 = v114 + ot::Mac::TxFrame::GetIFS(v121);
  LODWORD(v3) = Airtime;
  *&v4 = v3;
  LODWORD(v4) = v118;
  *&v3 = 100.0 * v3 / v4;
  v117 = *&v3;
  Rcp2FrameVersion = ot::Mac::TxFrame::GetRcp2FrameVersion(v121);
  switch(Rcp2FrameVersion)
  {
    case 1:
      goto LABEL_11;
    case 2:
      Channel = ot::Mac::Frame::GetChannel(v121);
      v106 = 0.25 * ot::Mac::TxFrame::GetTxPower(v121);
      TxRetryCount = ot::Mac::TxFrame::GetTxRetryCount(v121);
      v103 = v127;
      ot::Mac::Frame::ToInfoString(v121, v127);
      v108 = ot::String<(unsigned short)150>::AsCString(v127);
      v104 = 100;
      v109 = ot::Mac::Mac::GetCcaFailureRatePercent(v116) / 0x64;
      v110 = ot::Mac::Mac::GetCcaFailureRatePercent(v116) % 0x64;
      v111 = v120;
      Antenna = ot::Mac::TxFrame::GetAntenna(v121);
      v113 = &v48;
      v49 = v106;
      v50 = TxRetryCount;
      v51 = v108;
      v52 = v109;
      v53 = v110;
      v54 = v120;
      v55 = Antenna;
      IFS = ot::Mac::TxFrame::GetIFS(v121);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Frame tx on channel %d, txPower=%f, retryCount=%d, %s, ccaFailureRate:%d.%02d%%%s antenna=%d, ifs=%d microSec", v5, v6, v7, v8, v9, v10, Channel);
      return;
    case 4:
    case 3:
      v93 = ot::Mac::Frame::GetChannel(v121);
      v94 = 0.25 * ot::Mac::TxFrame::GetTxPower(v121);
      v95 = ot::Mac::TxFrame::GetTxRetryCount(v121);
      v91 = v126;
      ot::Mac::Frame::ToInfoString(v121, v126);
      v96 = ot::String<(unsigned short)150>::AsCString(v126);
      v92 = 100;
      v97 = ot::Mac::Mac::GetCcaFailureRatePercent(v116) / 0x64;
      v98 = ot::Mac::Mac::GetCcaFailureRatePercent(v116) % 0x64;
      v99 = v120;
      v100 = ot::Mac::TxFrame::GetAntenna(v121);
      v101 = ot::Mac::TxFrame::GetIFS(v121);
      v102 = &v48;
      v49 = v94;
      v50 = v95;
      v51 = v96;
      v52 = v97;
      v53 = v98;
      v54 = v120;
      v55 = v100;
      IFS = v101;
      v57 = ot::Mac::TxFrame::GetAirtime(v121);
      v58 = v117;
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Frame tx on channel %d, txPower=%f, retryCount=%d, %s, ccaFailureRate:%d.%02d%%%s antenna=%d, ifs=%d microSec, airtime=%d microSec, DutyCycle=%2.3f%%", v11, v12, v13, v14, v15, v16, v93);
      return;
    case 5:
      v79 = ot::Mac::Frame::GetChannel(v121);
      v80 = 0.25 * ot::Mac::TxFrame::GetTxPower(v121);
      v81 = ot::Mac::TxFrame::GetTxRetryCount(v121);
      v77 = v125;
      ot::Mac::Frame::ToInfoString(v121, v125);
      v82 = ot::String<(unsigned short)150>::AsCString(v125);
      v78 = 100;
      v83 = ot::Mac::Mac::GetCcaFailureRatePercent(v116) / 0x64;
      v84 = ot::Mac::Mac::GetCcaFailureRatePercent(v116) % 0x64;
      v85 = v120;
      v86 = ot::Mac::TxFrame::GetAntenna(v121);
      v87 = ot::Mac::TxFrame::GetIFS(v121);
      v88 = ot::Mac::TxFrame::GetAirtime(v121);
      v89 = v117;
      v90 = &v48;
      v49 = v80;
      v50 = v81;
      v51 = v82;
      v52 = v83;
      v53 = v84;
      v54 = v120;
      v55 = v86;
      IFS = v87;
      v57 = v88;
      v58 = v117;
      v59 = COERCE_DOUBLE(ot::Mac::TxFrame::GetPcapMode(v121));
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Frame tx on channel %d, txPower=%f, retryCount=%d, %s, ccaFailureRate:%d.%02d%%%s antenna=%d, ifs=%d microSec, airtime=%d microSec, DutyCycle=%2.3f%%, pcap mode=%d", v17, v18, v19, v20, v21, v22, v79);
      PcapMode = ot::Mac::TxFrame::GetPcapMode(v121);
      ot::Mac::Mac::UpdatePcapStats(v116, PcapMode, v24, v25, v26, v27, v28, v29);
      return;
    case 6:
      v64 = ot::Mac::Frame::GetChannel(v121);
      v65 = 0.25 * ot::Mac::TxFrame::GetTxPower(v121);
      v66 = ot::Mac::TxFrame::GetTxRetryCount(v121);
      RCPTimeStamp = ot::Mac::TxFrame::GetRCPTimeStamp(v121);
      v62 = v124;
      ot::Mac::Frame::ToInfoString(v121, v124);
      v68 = ot::String<(unsigned short)150>::AsCString(v124);
      v63 = 100;
      v69 = ot::Mac::Mac::GetCcaFailureRatePercent(v116) / 0x64;
      v70 = ot::Mac::Mac::GetCcaFailureRatePercent(v116) % 0x64;
      v71 = v120;
      v72 = ot::Mac::TxFrame::GetAntenna(v121);
      v73 = ot::Mac::TxFrame::GetIFS(v121);
      v74 = ot::Mac::TxFrame::GetAirtime(v121);
      v75 = v117;
      v76 = &v48;
      v49 = v65;
      v50 = v66;
      v51 = RCPTimeStamp;
      v52 = v68;
      v53 = v69;
      v54 = v70;
      v55 = v120;
      IFS = v72;
      v57 = v73;
      *&v58 = v74;
      v59 = v117;
      v60 = ot::Mac::TxFrame::GetPcapMode(v121);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Frame tx on channel %d, txPower=%f, retryCount=%d, rcpTs:%u, %s, ccaFailureRate:%d.%02d%%%s antenna=%d, ifs=%d microSec, airtime=%d microSec, DutyCycle=%2.3f%%, pcap mode=%d", v64, v30, v31, v32, v33, v34, v64);
      v35 = ot::Mac::TxFrame::GetPcapMode(v121);
      ot::Mac::Mac::UpdatePcapStats(v116, v35, v36, v37, v38, v39, v40, v41);
      break;
    default:
LABEL_11:
      LOBYTE(v61) = ot::Mac::Frame::GetChannel(v121);
      ot::Mac::TxFrame::GetTxPower(v121);
      ot::Mac::TxFrame::GetTxRetryCount(v121);
      ot::Mac::Frame::ToInfoString(v121, v123);
      ot::String<(unsigned short)150>::AsCString(v123);
      ot::Mac::Mac::GetCcaFailureRatePercent(v116);
      ot::Mac::Mac::GetCcaFailureRatePercent(v116);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Frame tx on channel %d, txPower=%f, retryCount=%d, %s, ccaFailureRate:%d.%02d%%%s", v42, v43, v44, v45, v46, v47, v61);
      break;
  }
}

void ot::Mac::Mac::LogFrameTxFailure(ot::InstanceLocator *a1, ot::Mac::TxFrame *a2, int a3, unsigned __int8 a4, char a5, const char *a6)
{
  v41 = a1;
  v40 = a2;
  v39 = a3;
  v38 = a4;
  v37 = a5;
  v36 = a6;
  v33 = a1;
  v35 = ot::Mac::TxFrame::GetMaxFrameRetries(a2) + 1;
  if (v37)
  {
    v32 = v38 + 1;
  }

  else
  {
    v32 = v35;
  }

  v34 = v32;
  ot::InstanceLocator::GetInstance(v33);
  if (otPlatRadioGetRcp2Vendor2Enabled())
  {
    v19 = v34;
    v20 = v35;
    TxPower = ot::Mac::TxFrame::GetTxPower(v40);
    TxRetryCount = ot::Mac::TxFrame::GetTxRetryCount(v40);
    v23 = otThreadErrorToString(v39);
    RCPTimeStamp = ot::Mac::TxFrame::GetRCPTimeStamp(v40);
    v17[13] = v42;
    ot::Mac::Frame::ToInfoString(v40, v42);
    v25 = ot::String<(unsigned short)150>::AsCString(v42);
    v18 = 100;
    v26 = ot::Mac::Mac::GetCcaFailureRatePercent(v33) / 0x64;
    v27 = ot::Mac::Mac::GetCcaFailureRatePercent(v33) % 0x64;
    v28 = v36;
    v29 = *(v40 + 57);
    Antenna = ot::Mac::TxFrame::GetAntenna(v40);
    v31 = v17;
    v17[1] = v35;
    *&v17[2] = TxPower;
    v17[3] = TxRetryCount;
    v17[4] = v23;
    v17[5] = RCPTimeStamp;
    v17[6] = v25;
    v17[7] = v26;
    v17[8] = v27;
    v17[9] = v36;
    v17[10] = v29;
    v17[11] = Antenna;
    v17[12] = ot::Mac::TxFrame::GetPcapMode(v40);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mac::kLogModuleName, "Frame tx attempt %d/%d failed, txPower=%f, retryCount=%d, error:%s, rcpTs:%u, %s, ccaFailureRate:%d.%02d%%%s, RCP2Status=%d antenna=%d, pcap mode=%d", v35, v34, v6, v7, v8, v9, v34);
    PcapMode = ot::Mac::TxFrame::GetPcapMode(v40);
    ot::Mac::Mac::UpdatePcapStats(v33, PcapMode, v11, v12, v13, v14, v15, v16);
  }

  else
  {
    ot::Mac::Mac::LogVendorRCP2(v33, v40, v36, v34, v35, v39);
  }
}

uint64_t ot::Mac::Frame::GetHeader(ot::Mac::Frame *this)
{
  return ot::Mac::Frame::GetPsdu(this);
}

{
  return ot::Mac::Frame::GetPsdu(this);
}

{
  return ot::Mac::Frame::GetHeader(this);
}

{
  return ot::Mac::Frame::GetHeader(this);
}

BOOL ot::Mac::Address::IsBroadcast(ot::Mac::Address *this)
{
  v2 = 0;
  if (*(this + 8) == 1)
  {
    return ot::Mac::Address::GetShort(this) == 0xFFFF;
  }

  return v2;
}

{
  return ot::Mac::Address::IsBroadcast(this);
}

uint64_t ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::Update(uint64_t a1, __int16 a2)
{
  v3 = 0;
  if (a2 > 0)
  {
    v3 = a2 / 5;
  }

  return ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::IncrementRange(a1, v3);
}

{
  return ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::Update(a1, a2);
}

uint64_t ot::Mac::Frame::GetLength(ot::Mac::Frame *this)
{
  return *(this + 4);
}

{
  return ot::Mac::Frame::GetLength(this);
}

uint64_t ot::Mac::Mac::ProcessEnhAckSecurity(ot::Mac::Mac *this, ot::Mac::TxFrame *a2, ot::Mac::RxFrame *a3)
{
  v44 = this;
  v43 = a2;
  v42 = a3;
  v41 = 8;
  v40 = 0;
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  ot::Mac::Address::Address(v35);
  ot::Mac::Address::Address(v34);
  Neighbor = 0;
  v32 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  if (!ot::Mac::Frame::GetSecurityEnabled(v42))
  {
    v41 = 0;
    goto LABEL_30;
  }

  if (ot::Mac::Frame::IsVersion2015(v42) && !ot::Mac::Frame::ValidatePsdu(v42))
  {
    ot::Mac::Frame::GetSecurityLevel(v42, &v40);
    IgnoreError();
    if (v40 == 5)
    {
      ot::Mac::Frame::GetKeyIdMode(v42, &v37);
      IgnoreError();
      if (v37 == 8)
      {
        ot::Mac::Frame::GetKeyId(v43, &v39);
        IgnoreError();
        ot::Mac::Frame::GetKeyId(v42, &v38);
        IgnoreError();
        if (v39 == v38)
        {
          ot::Mac::Frame::GetFrameCounter(v42, &v36);
          IgnoreError();
          v9 = ot::ToUlong(v36);
          ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Rx security - Ack frame counter %lu", v10, v11, v12, v13, v14, v15, v9);
          ot::Mac::Frame::GetSrcAddr(v42, v35);
          IgnoreError();
          if (ot::Mac::Address::IsNone(v35))
          {
            ot::Mac::Frame::GetDstAddr(v43, v34);
            IgnoreError();
            if (!ot::Mac::Address::IsNone(v34))
            {
              v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
              Neighbor = ot::NeighborTable::FindNeighbor(v17, v34, 1);
            }
          }

          else
          {
            v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
            Neighbor = ot::NeighborTable::FindNeighbor(v16, v35, 1);
          }

          if (!ot::Mac::Address::IsExtended(v35) && Neighbor)
          {
            ot::Neighbor::GetExtAddress(Neighbor);
            ot::Mac::Address::SetExtended(v35, v18);
          }

          if (ot::Mac::Address::IsExtended(v35) && Neighbor)
          {
            v29 = --v38;
            if (v29 == (ot::KeyManager::GetCurrentKeySequence(v32) & 0x7F))
            {
              SubMac = ot::Mac::Links::GetSubMac((this + 56));
              CurrentMacKey = ot::Mac::SubMac::GetCurrentMacKey(SubMac);
            }

            else
            {
              v28 = v38;
              if (v28 == ((ot::KeyManager::GetCurrentKeySequence(v32) - 1) & 0x7F))
              {
                v20 = ot::Mac::Links::GetSubMac((this + 56));
                CurrentMacKey = ot::Mac::SubMac::GetPreviousMacKey(v20);
              }

              else
              {
                v27 = v38;
                if (v27 != ((ot::KeyManager::GetCurrentKeySequence(v32) + 1) & 0x7F))
                {
                  goto LABEL_30;
                }

                v21 = ot::Mac::Links::GetSubMac((this + 56));
                CurrentMacKey = ot::Mac::SubMac::GetNextMacKey(v21);
              }
            }

            if (!ot::Neighbor::IsStateValid(Neighbor) || (v26 = v36, v26 >= ot::Neighbor::GetLinkAckFrameCounter(Neighbor)))
            {
              v25 = v42;
              ot::Mac::Address::GetExtended(v35);
              v41 = ot::Mac::RxFrame::ProcessReceiveAesCcm(v25, v22, CurrentMacKey);
              if (!v41 && ot::Neighbor::IsStateValid(Neighbor))
              {
                ot::Neighbor::SetLinkAckFrameCounter(Neighbor, v36 + 1);
              }
            }
          }
        }
      }
    }
  }

LABEL_30:
  if (v41)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mac::kLogModuleName, "Frame tx attempt failed, error: Enh-ACK security check fail", v3, v4, v5, v6, v7, v8, v24);
  }

  return v41;
}

uint64_t ot::Mac::Mac::UpdateNeighborLinkInfo(ot::Mac::Mac *this, ot::Neighbor *a2, const ot::Mac::RxFrame *a3)
{
  LinkInfo = ot::Neighbor::GetLinkInfo(a2);
  LinkQuality = ot::LinkQualityInfo::GetLinkQuality(LinkInfo);
  v12 = ot::Neighbor::GetLinkInfo(a2);
  Rssi = ot::Mac::RxFrame::GetRssi(a3);
  ot::LinkQualityInfo::AddRss(v12, Rssi);
  Type = ot::Mac::Frame::GetType(a3);
  Lqi = ot::Mac::RxFrame::GetLqi(a3);
  v5 = ot::Mac::RxFrame::GetRssi(a3);
  ot::Neighbor::AggregateLinkMetrics(a2, 0, Type, Lqi, v5);
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
  result = ot::Mle::Mle::IsChild(v6);
  if (result)
  {
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    result = ot::Mle::Mle::GetParent(v8);
    if (a2 == result)
    {
      v9 = ot::Neighbor::GetLinkInfo(a2);
      result = ot::LinkQualityInfo::GetLinkQuality(v9);
      if (result != LinkQuality)
      {
        v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
        return ot::Notifier::Signal(v10, 0x80000000);
      }
    }
  }

  return result;
}

ot::Mac::HeaderIe *ot::Mac::Mac::ProcessEnhAckProbing(ot::Mac::Mac *this, const ot::Mac::RxFrame *a2, const ot::Neighbor *a3)
{
  result = ot::Mac::Frame::GetThreadIe(a2, 0);
  v7 = result + 6;
  if (result)
  {
    result = ot::Mac::HeaderIe::GetLength(result);
    v6 = result - 4;
    if ((result - 4) <= 2u)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Initiator>(this);
      return ot::LinkMetrics::Initiator::ProcessEnhAckIeData(v4, v7, v6, a3);
    }
  }

  return result;
}

uint64_t ot::Mac::Frame::GetVersion(ot::Mac::Frame *this)
{
  return ot::Mac::Frame::GetFrameControlField(this) & 0x3000;
}

{
  return ot::Mac::Frame::GetVersion(this);
}

uint64_t ot::Mac::Mac::ProcessCsl(ot::Mac::Mac *this, const ot::Mac::RxFrame *a2, const ot::Mac::Address *a3)
{
  v45 = 0;
  v42 = 0;
  if (ot::Mac::Frame::IsVersion2015(a2) && ot::Mac::Frame::GetSecurityEnabled(a2))
  {
    HeaderIe = ot::Mac::Frame::GetHeaderIe(a2, 0x1Au);
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(this);
    ot::ChildTable::FindChild(v3, a3, 5);
    v43 = v4;
    if (v4)
    {
      if (HeaderIe)
      {
        v42 = (HeaderIe + 2);
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
        if (ot::Mle::Mle::IsCslPeripheralPresent(v5))
        {
          if (ot::CslTxScheduler::ChildInfo::GetCslPeriod((v43 + 168)))
          {
            CslPeriod = ot::CslTxScheduler::ChildInfo::GetCslPeriod((v43 + 168));
            if (CslPeriod != ot::Mac::CslIe::GetPeriod(v42))
            {
              Short = ot::Mac::Address::GetShort(a3);
              ot::CslTxScheduler::ChildInfo::GetCslPeriod((v43 + 168));
              ot::Mac::CslIe::GetPeriod(v42);
              ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Child %x sent CSL period with error %d", v6, v7, v8, v9, v10, v11, Short);
            }
          }

          v33 = *ot::Mac::RxFrame::GetTimestamp(a2);
          v34 = v33 - ot::CslTxScheduler::ChildInfo::GetLastRxTimestamp((v43 + 168));
          v35 = v34 + 160 * ot::Mac::CslIe::GetPhase(v42);
          v41 = v35 % (160 * ot::CslTxScheduler::ChildInfo::GetCslPeriod((v43 + 168)));
          if (v41 > (160 * ot::CslTxScheduler::ChildInfo::GetCslPeriod((v43 + 168)) / 2))
          {
            ot::CslTxScheduler::ChildInfo::GetCslPeriod((v43 + 168));
          }

          v12 = ot::Mac::Address::GetShort(a3);
          ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Child %x sent CSL phase with error %d us", v13, v14, v15, v16, v17, v18, v12);
        }

        else if (ot::Mac::CslIe::GetPeriod(v42) >= 10)
        {
          Period = ot::Mac::CslIe::GetPeriod(v42);
          ot::CslTxScheduler::ChildInfo::SetCslPeriod(v43 + 168, Period);
          Phase = ot::Mac::CslIe::GetPhase(v42);
          ot::CslTxScheduler::ChildInfo::SetCslPhase(v43 + 168, Phase);
          v21 = ot::CslTxScheduler::ChildInfo::SetCslSynchronized(v43 + 168, 1);
          Now = ot::TimerMilli::GetNow(v21);
          ot::CslTxScheduler::ChildInfo::SetCslLastHeard(v43 + 168, Now);
          Timestamp = ot::Mac::RxFrame::GetTimestamp(a2);
          ot::CslTxScheduler::ChildInfo::SetLastRxTimestamp(v43 + 168, *Timestamp);
          v23 = ot::Mac::RxFrame::GetTimestamp(a2);
          v32 = ot::ToUlong(*v23);
          ot::Mac::Frame::GetSequence(a2);
          ot::Mac::CslIe::GetPeriod(v42);
          ot::Mac::CslIe::GetPhase(v42);
          ot::CslTxScheduler::ChildInfo::GetCslPhase((v43 + 168));
          ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Timestamp=%lu Sequence=%u CslPeriod=%u CslPhase=%u TransmitPhase=%u", v24, v25, v26, v27, v28, v29, v32);
          v30 = ot::GetProvider<ot::InstanceLocator>::Get<ot::CslTxScheduler>(this);
          ot::CslTxScheduler::Update(v30);
        }
      }

      if (!ot::Mac::Frame::IsAck(a2) && ot::Mac::Frame::GetSecurityEnabled(a2))
      {
        if (ot::Mac::Frame::GetType(a2) == 1 && v42)
        {
          Sequence = ot::Mac::Frame::GetSequence(a2);
          if ((ot::CslTxScheduler::ChildInfo::IsCslPrevSnValid((v43 + 168)) & 1) != 0 && ot::CslTxScheduler::ChildInfo::GetCslPrevSn((v43 + 168)) == Sequence)
          {
            return 29;
          }

          else
          {
            ot::CslTxScheduler::ChildInfo::SetCslPrevSnValid((v43 + 168), 1);
            ot::CslTxScheduler::ChildInfo::SetCslPrevSn(v43 + 168, Sequence);
          }
        }

        else
        {
          ot::CslTxScheduler::ChildInfo::SetCslPrevSnValid((v43 + 168), 0);
        }
      }
    }
  }

  return v45;
}

uint64_t ot::Mac::Links::GetTransmitRetries(ot::Mac::Links *this)
{
  return ot::Mac::SubMac::GetTransmitRetries((this + 8));
}

{
  return ot::Mac::Links::GetTransmitRetries(this);
}

uint64_t ot::Mac::SubMac::GetTransmitErrorsNoAck(ot::Mac::SubMac *this)
{
  return *(this + 4);
}

{
  return ot::Mac::SubMac::GetTransmitErrorsNoAck(this);
}

uint64_t ot::Mac::SubMac::GetTransmitErrorsChannelAccessFailure(ot::Mac::SubMac *this)
{
  return *(this + 5);
}

{
  return ot::Mac::SubMac::GetTransmitErrorsChannelAccessFailure(this);
}

uint64_t ot::Mac::Mac::ProcessReceiveSecurity(ot::Mac::Mac *this, ot::Mac::RxFrame *a2, const ot::Mac::Address *a3, ot::Neighbor *a4)
{
  v160 = this;
  v159 = a2;
  v158 = a3;
  v157 = a4;
  v146 = this;
  v156 = ot::GetProvider<ot::InstanceLocator>::Get<ot::KeyManager>(this);
  v155 = 8;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v151 = 0;
  CurrentMacKey = 0;
  v149 = 0;
  v148 = 0;
  if (ot::Mac::Frame::GetSecurityEnabled(v159))
  {
    ot::Mac::Frame::GetSecurityLevel(v159, &v154 + 1);
    IgnoreError();
    if (HIBYTE(v154) == 5)
    {
      ot::Mac::Frame::GetFrameCounter(v159, &v153);
      IgnoreError();
      ot::Mac::Frame::GetKeyIdMode(v159, &v154);
      IgnoreError();
      if (v157)
      {
        v138 = ot::ToUlong(v153);
        v139 = v154;
        v140 = HIBYTE(v154);
        Rloc16 = ot::Neighbor::GetRloc16(v157);
        ot::Neighbor::GetExtAddress(v157);
        v137 = v167;
        ot::Mac::ExtAddress::ToString(v10, v167);
        v142 = ot::String<(unsigned short)17>::AsCString(v167);
        State = ot::Neighbor::GetState(v157);
        IsStateValid = ot::Neighbor::IsStateValid(v157);
        v145 = &v86;
        v87 = v139;
        v88 = v140;
        v89 = Rloc16;
        v90 = v142;
        v91 = State;
        v92 = IsStateValid;
        KeySequence = ot::Neighbor::GetKeySequence(v157);
        ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Rx security - frame counter %lu keyIdMode:%u securityLevel:%d nbr.rloc:0x%x nbr.ext:%s nbr.state:%d nbr.isStateValid:%d nbr.keSeq:%d", v11, v12, v13, v14, v15, v16, v138);
      }

      else
      {
        v87 = v154;
        v88 = HIBYTE(v154);
        ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Rx security - frame counter %u keyIdMode:%u securityLevel:%d", v4, v5, v6, v7, v8, v9, v153);
      }

      v136 = v154;
      if (v154)
      {
        if (v136 == 8)
        {
          if (!v157)
          {
            goto LABEL_45;
          }

          v148 = ot::Neighbor::IsStateValid(v157);
          ot::Mac::Frame::GetKeyId(v159, &v152);
          IgnoreError();
          v135 = --v152;
          CurrentKeySequence = ot::KeyManager::GetCurrentKeySequence(v156);
          if (v135 == (CurrentKeySequence & 0x7F))
          {
            v151 = ot::KeyManager::GetCurrentKeySequence(v156);
            CurrentMacKey = ot::Mac::Links::GetCurrentMacKey((v146 + 56), v159);
          }

          else
          {
            v134 = v152;
            v19 = ot::KeyManager::GetCurrentKeySequence(v156);
            if (v134 == ((v19 - 1) & 0x7F))
            {
              v151 = ot::KeyManager::GetCurrentKeySequence(v156) - 1;
              CurrentMacKey = ot::Mac::Links::GetTemporaryMacKey((v146 + 56), v159, v151);
            }

            else
            {
              v133 = v152;
              v20 = ot::KeyManager::GetCurrentKeySequence(v156);
              if (v133 != ((v20 + 1) & 0x7F))
              {
                v129 = ot::ErrorToString(v155);
                v130 = v151;
                v131 = CurrentMacKey;
                v132 = v152;
                v21 = ot::KeyManager::GetCurrentKeySequence(v156);
                v87 = v130;
                v88 = v131;
                v89 = v132;
                v90 = v21;
                v91 = v153;
                ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Rx security error exit:%s keySequence(%d) macKey(%d) keyId(%d) keyManager.CurrentKeySeq:%d frameCounter:%u", v22, v23, v24, v25, v26, v27, v129);
                goto LABEL_45;
              }

              v151 = ot::KeyManager::GetCurrentKeySequence(v156) + 1;
              CurrentMacKey = ot::Mac::Links::GetTemporaryMacKey((v146 + 56), v159, v151);
            }
          }

          if (v148)
          {
            v128 = v151;
            v28 = ot::Neighbor::GetKeySequence(v157);
            if (v128 < v28)
            {
              v123 = ot::ErrorToString(v155);
              v124 = v154;
              v125 = v151;
              v126 = ot::Neighbor::GetKeySequence(v157);
              v127 = ot::Neighbor::GetRloc16(v157);
              ot::Neighbor::GetExtAddress(v157);
              v122 = v166;
              ot::Mac::ExtAddress::ToString(v29, v166);
              v30 = ot::String<(unsigned short)17>::AsCString(v122);
              v87 = v124;
              v88 = v125;
              v89 = v126;
              v90 = v127;
              v91 = v30;
              ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Rx security error exit seqnum mismatch error:%s keyIdMode:%d keySequence:%u nbr.keySequence:%u nbr.rloc16:0x%x nbr.extAddr:%s", v31, v32, v33, v34, v35, v36, v123);
              goto LABEL_45;
            }

            v121 = v151;
            v37 = ot::Neighbor::GetKeySequence(v157);
            if (v121 == v37)
            {
              v147 = 0;
              LinkFrameCounters = ot::Neighbor::GetLinkFrameCounters(v157);
              v147 = ot::Mac::LinkFrameCounters::Get(LinkFrameCounters);
              if (v153 + 1 == v147)
              {
                v116 = ot::ErrorToString(29);
                v117 = v154;
                v118 = v153;
                v119 = v147;
                v120 = ot::Neighbor::GetRloc16(v157);
                ot::Neighbor::GetExtAddress(v157);
                v115 = v165;
                ot::Mac::ExtAddress::ToString(v39, v165);
                v40 = ot::String<(unsigned short)17>::AsCString(v115);
                v87 = v117;
                v88 = v118;
                v89 = v119;
                v90 = v120;
                v91 = v40;
                ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Rx error: %s keyIdMode:%d frameCounter:%u nbr.FrameCounter:%u nbr.rloc16:0x%x nbr.extAddr:%s", v41, v42, v43, v44, v45, v46, v116);
              }

              else if (v153 < v147)
              {
                v110 = ot::ErrorToString(8);
                v111 = v154;
                v112 = v153;
                v113 = v147;
                v114 = ot::Neighbor::GetRloc16(v157);
                ot::Neighbor::GetExtAddress(v157);
                v109 = v164;
                ot::Mac::ExtAddress::ToString(v47, v164);
                v48 = ot::String<(unsigned short)17>::AsCString(v109);
                v87 = v111;
                v88 = v112;
                v89 = v113;
                v90 = v114;
                v91 = v48;
                ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Rx error: %s frame counter mismatch, keyIdMode:%d frameCounter:%u nbr.FrameCounter:%u nbr.rloc16:0x%x nbr.extAddr:%s", v49, v50, v51, v52, v53, v54, v110);
              }

              if (v153 + 1 == v147)
              {
                v155 = 29;
                goto LABEL_45;
              }

              if (v153 < v147)
              {
                goto LABEL_45;
              }
            }
          }

          ot::Mac::Address::GetExtended(v158);
          v149 = v55;
        }

        else
        {
          if (v136 != 16)
          {
            goto LABEL_45;
          }

          CurrentMacKey = (v146 + 1688);
          v149 = ot::AsCoreType<otExtAddress>(&ot::Mac::Mac::sMode2ExtAddress);
        }
      }

      else
      {
        CurrentMacKey = ot::KeyManager::GetKek(v156);
        ot::Mac::Address::GetExtended(v158);
        v149 = v17;
      }

      if (!ot::Mac::RxFrame::ProcessReceiveAesCcm(v159, v149, CurrentMacKey))
      {
        if (v154 == 8 && v148)
        {
          v56 = ot::Neighbor::GetKeySequence(v157);
          if (v56 != v151)
          {
            v108 = v151;
            v57 = ot::Neighbor::GetKeySequence(v157);
            if (v108 < v57)
            {
              v104 = ot::Neighbor::GetRloc16(v157);
              ot::Neighbor::GetExtAddress(v157);
              v103 = v163;
              ot::Mac::ExtAddress::ToString(v58, v163);
              v105 = ot::String<(unsigned short)17>::AsCString(v103);
              v106 = ot::KeyManager::GetCurrentKeySequence(v156);
              v107 = v151;
              v59 = ot::Neighbor::GetKeySequence(v157);
              v87 = v104;
              v88 = v105;
              v89 = v106;
              v90 = v107;
              v91 = v59;
              ot::Logger::LogAtLevel<(ot::LogLevel)2>(&ot::Mac::kLogModuleName, "%s Neighbor KeySequence is lower than previous RLOC16: 0x%x, ExtAddr: %s, ourKeySeq:%u, nbrCurKeySeq:%u, nbrPrevKeySeq:%u", v60, v61, v62, v63, v64, v65, "ProcessReceiveSecurity");
            }

            ot::Neighbor::SetKeySequence(v157, v151);
            ot::Neighbor::SetMleFrameCounter(v157, 0);
            v66 = ot::Neighbor::GetLinkFrameCounters(v157);
            ot::Mac::LinkFrameCounters::Reset(v66);
          }

          v67 = ot::Neighbor::GetLinkFrameCounters(v157);
          ot::Mac::LinkFrameCounters::Set(v67, v153 + 1);
          v102 = v153 + 1;
          LinkAckFrameCounter = ot::Neighbor::GetLinkAckFrameCounter(v157);
          if (v102 > LinkAckFrameCounter)
          {
            ot::Neighbor::SetLinkAckFrameCounter(v157, v153 + 1);
          }

          v101 = v151;
          v69 = ot::KeyManager::GetCurrentKeySequence(v156);
          if (v101 > v69)
          {
            v97 = ot::Neighbor::GetRloc16(v157);
            ot::Neighbor::GetExtAddress(v157);
            v96 = v162;
            ot::Mac::ExtAddress::ToString(v70, v162);
            v98 = ot::String<(unsigned short)17>::AsCString(v96);
            v99 = ot::KeyManager::GetCurrentKeySequence(v156);
            v100 = v151;
            v71 = ot::Neighbor::GetKeySequence(v157);
            v87 = v97;
            v88 = v98;
            v89 = v99;
            v90 = v100;
            v91 = v71;
            ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mac::kLogModuleName, "%s Neighbor KeySequence changed RLOC16: 0x%x, ExtAddr: %s, ourKeySeq:%u, nbrCurKeySeq:%u, nbrTableKeySeq:%u", v72, v73, v74, v75, v76, v77, "ProcessReceiveSecurity");
            ot::KeyManager::SetCurrentKeySequence(v156, v151, 3);
          }
        }

        v155 = 0;
      }
    }
  }

  else
  {
    v155 = 0;
  }

LABEL_45:
  if (v155 && v157)
  {
    v95 = ot::Neighbor::GetRloc16(v157);
    ot::Neighbor::GetExtAddress(v157);
    v94 = v161;
    ot::Mac::ExtAddress::ToString(v78, v161);
    v87 = ot::String<(unsigned short)17>::AsCString(v94);
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "RX security error: Neighbor's RLOC16: 0x%x, ExtAddr: %s", v79, v80, v81, v82, v83, v84, v95);
  }

  return v155;
}

uint64_t ot::Neighbor::GetKeySequence(ot::Neighbor *this)
{
  return *(this + 6);
}

{
  return ot::Neighbor::GetKeySequence(this);
}

uint64_t ot::Neighbor::GetLinkFrameCounters(ot::Neighbor *this)
{
  return this + 12;
}

{
  return ot::Neighbor::GetLinkFrameCounters(this);
}

uint64_t ot::Mac::LinkFrameCounters::Get(ot::Mac::LinkFrameCounters *this)
{
  return *this;
}

{
  return ot::Mac::LinkFrameCounters::Get(this);
}

uint64_t ot::Neighbor::SetKeySequence(uint64_t this, int a2)
{
  *(this + 24) = a2;
  return this;
}

{
  return ot::Neighbor::SetKeySequence(this, a2);
}

uint64_t ot::Neighbor::SetMleFrameCounter(uint64_t this, int a2)
{
  *(this + 16) = a2;
  return this;
}

{
  return ot::Neighbor::SetMleFrameCounter(this, a2);
}

_DWORD *ot::Mac::LinkFrameCounters::Reset(ot::Mac::LinkFrameCounters *this)
{
  return ot::Mac::LinkFrameCounters::SetAll(this, 0);
}

{
  return ot::Mac::LinkFrameCounters::Reset(this);
}

_DWORD *ot::Mac::LinkFrameCounters::Set(_DWORD *this, int a2)
{
  *this = a2;
  return this;
}

{
  return ot::Mac::LinkFrameCounters::Set(this, a2);
}

uint64_t ot::Neighbor::GetLinkAckFrameCounter(ot::Neighbor *this)
{
  return *(this + 5);
}

{
  return ot::Neighbor::GetLinkAckFrameCounter(this);
}

uint64_t ot::Neighbor::SetLinkAckFrameCounter(uint64_t this, int a2)
{
  *(this + 20) = a2;
  return this;
}

{
  return ot::Neighbor::SetLinkAckFrameCounter(this, a2);
}

BOOL ot::Mac::Frame::IsVersion2015(ot::Mac::Frame *this)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  return ot::Mac::Frame::IsVersion2015(FrameControlField);
}

{
  return (this & 0x3000) == 0x2000;
}

{
  return ot::Mac::Frame::IsVersion2015(this);
}

{
  return ot::Mac::Frame::IsVersion2015(this);
}

BOOL ot::Mac::Address::IsNone(ot::Mac::Address *this)
{
  return *(this + 8) == 0;
}

{
  return ot::Mac::Address::IsNone(this);
}

uint64_t ot::Mac::SubMac::GetCurrentMacKey(ot::Mac::SubMac *this)
{
  return this + 80;
}

{
  return ot::Mac::SubMac::GetCurrentMacKey(this);
}

uint64_t ot::Mac::SubMac::GetPreviousMacKey(ot::Mac::SubMac *this)
{
  return this + 64;
}

{
  return ot::Mac::SubMac::GetPreviousMacKey(this);
}

uint64_t ot::Mac::SubMac::GetNextMacKey(ot::Mac::SubMac *this)
{
  return this + 96;
}

{
  return ot::Mac::SubMac::GetNextMacKey(this);
}

uint64_t ot::Mac::Mac::FilterDestShortAddress(ot::Mac::Mac *this, unsigned __int16 a2)
{
  v4 = 0;
  if (a2 != ot::Mac::Mac::GetShortAddress(this) && (ot::Mac::Mac::GetAlternateShortAddress(this) == 65534 || a2 != ot::Mac::Mac::GetAlternateShortAddress(this)) && ((*this & 4) == 0 || a2 != 0xFFFF))
  {
    return 22;
  }

  return v4;
}

void ot::Mac::Mac::HandleReceivedFrame(uint64_t a1, ot::Mac::Frame *a2, int a3)
{
  v62 = a1;
  v61 = a2;
  v60 = a3;
  ot::Mac::Address::Address(v59);
  ot::Mac::Address::Address(v58);
  v57 = 0;
  RxOnlyNeighborRouter = 0;
  v55 = v60;
  ++*(a1 + 432);
  if (v55)
  {
    goto LABEL_97;
  }

  if (!v61)
  {
    v55 = 18;
    goto LABEL_97;
  }

  if ((ot::Mac::Mac::IsEnabled(a1) & 1) == 0)
  {
    v55 = 13;
    goto LABEL_97;
  }

  v55 = ot::Mac::Frame::ValidatePsdu(v61);
  if (v55)
  {
    goto LABEL_97;
  }

  ot::Mac::Frame::GetSrcAddr(v61, v59);
  IgnoreError();
  ot::Mac::Frame::GetDstAddr(v61, v58);
  IgnoreError();
  if (ot::Mac::Address::IsNone(v59))
  {
    Neighbor = 0;
  }

  else
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(a1);
    Neighbor = ot::NeighborTable::FindNeighbor(v3, v59, 1);
  }

  RxOnlyNeighborRouter = Neighbor;
  Type = ot::Mac::Address::GetType(v58);
  if (Type)
  {
    if (Type == 1)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
      if (ot::Mle::Mle::IsSleepyRouter(v4))
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
        IsSleepyRouter = ot::Mle::Mle::IsSleepyRouter(v5);
        ot::Mac::Address::IsBroadcast(v58);
        ot::Mac::Address::GetShort(v59);
        ot::Mac::Address::GetShort(v58);
        ot::Mac::Mac::GetShortAddress(a1);
        ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Received frame , isSleepyRouter = [%d], isBroadcast = [%d], srcaddr = [0x%04x], dstaddr = [0x%04x], GetShortAddress = [0x%04x]", v6, v7, v8, v9, v10, v11, IsSleepyRouter);
        v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
        if (!ot::Mle::Mle::IsFullThreadDevice(v12))
        {
          goto LABEL_97;
        }

        Short = ot::Mac::Address::GetShort(v58);
        v55 = ot::Mac::Mac::FilterDestShortAddress(a1, Short);
        if (v55)
        {
          goto LABEL_97;
        }
      }

      else
      {
        v14 = ot::Mac::Address::GetShort(v58);
        v55 = ot::Mac::Mac::FilterDestShortAddress(a1, v14);
        if (v55)
        {
          goto LABEL_97;
        }
      }

      if (!RxOnlyNeighborRouter && ot::Mac::Address::IsBroadcast(v58))
      {
        v15 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
        if (ot::Mle::Mle::IsFullThreadDevice(v15))
        {
          v16 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(a1);
          RxOnlyNeighborRouter = ot::NeighborTable::FindRxOnlyNeighborRouter(v16, v59);
        }
      }
    }

    else if (Type == 2)
    {
      ot::Mac::Address::GetExtended(v58);
      v46 = v17;
      ExtAddress = ot::Mac::Mac::GetExtAddress(a1);
      if (!ot::Equatable<ot::Mac::ExtAddress>::operator==(v46, ExtAddress))
      {
        v55 = 22;
        goto LABEL_97;
      }
    }
  }

  if (!ot::Mac::Frame::GetDstPanId(v61, &v57) && v57 != 0xFFFF && v57 != *(a1 + 8))
  {
    v55 = 22;
    goto LABEL_97;
  }

  v45 = ot::Mac::Address::GetType(v59);
  if (v45)
  {
    if (v45 == 1)
    {
      v19 = ot::Mac::Address::GetShort(v59);
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Received frame from short address 0x%04x", v20, v21, v22, v23, v24, v25, v19);
      if (!RxOnlyNeighborRouter)
      {
        v55 = 19;
        goto LABEL_97;
      }

      ot::Neighbor::GetExtAddress(RxOnlyNeighborRouter);
      ot::Mac::Address::SetExtended(v59, v26);
    }

    else if (v45 != 2)
    {
      goto LABEL_42;
    }

    ot::Mac::Address::GetExtended(v59);
    v44 = v27;
    v28 = ot::Mac::Mac::GetExtAddress(a1);
    if (!ot::Unequatable<ot::Mac::ExtAddress>::operator!=(v44, v28))
    {
      v55 = 20;
      goto LABEL_97;
    }

    v43 = v61;
    ot::Mac::Address::GetExtended(v59);
    v55 = ot::Mac::Filter::ApplyToRxFrame((a1 + 1364), v43, v29, RxOnlyNeighborRouter);
    if (v55)
    {
      goto LABEL_97;
    }
  }

LABEL_42:
  Length = ot::Mac::Frame::GetLength(v61);
  ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::Update(a1 + 732, Length);
  Lqi = ot::Mac::RxFrame::GetLqi(v61);
  ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::Update(a1 + 940, Lqi);
  if (ot::Mac::Address::IsBroadcast(v58))
  {
    ++*(a1 + 440);
  }

  else
  {
    ++*(a1 + 436);
  }

  v55 = ot::Mac::Mac::ProcessReceiveSecurity(a1, v61, v59, RxOnlyNeighborRouter);
  if (v55 && (v55 != 29 || *(a1 + 1) != 6))
  {
    goto LABEL_97;
  }

  if (!*(a1 + 1) && ot::Mac::Mac::IsCslEnabled(a1))
  {
    v54 = *ot::Mac::RxFrame::GetTimestamp(v61) + 32;
    SubMac = ot::Mac::Links::GetSubMac((a1 + 56));
    v53 = v54 - ot::Mac::SubMac::GetLastCslSampleTime(SubMac);
    if (*(a1 + 508))
    {
      v42 = ot::Min<int>(*(a1 + 500), v53);
    }

    else
    {
      v42 = v53;
    }

    *(a1 + 500) = v42;
    *(a1 + 504) = ot::Max<int>(*(a1 + 504), v53);
    *(a1 + 512) += v53;
    ++*(a1 + 508);
  }

  if (ot::Mac::Frame::GetVersion(v61) == 0x2000)
  {
    v55 = ot::Mac::Mac::ProcessCsl(a1, v61, v59);
    if (v55)
    {
      goto LABEL_97;
    }
  }

  v33 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollSender>(a1);
  ot::DataPollSender::ProcessRxFrame(v33, v61);
  if (RxOnlyNeighborRouter)
  {
    ot::Mac::Mac::UpdateNeighborLinkInfo(a1, RxOnlyNeighborRouter, v61);
    if (ot::Mac::Frame::GetSecurityEnabled(v61))
    {
      v52 = 0;
      ot::Mac::Frame::GetKeyIdMode(v61, &v52);
      IgnoreError();
      if (v52 == 8)
      {
        State = ot::Neighbor::GetState(RxOnlyNeighborRouter);
        if (State == 1 || State == 6)
        {
          if (!ot::Mac::Frame::IsDataRequestCommand(v61))
          {
            v55 = 2;
            goto LABEL_97;
          }
        }

        else
        {
          if (State != 7)
          {
            v55 = 19;
            goto LABEL_97;
          }

          if ((ot::Neighbor::GetRloc16(RxOnlyNeighborRouter) & 0x3FF) != 0)
          {
            Rssi = ot::Mac::RxFrame::GetRssi(v61);
            ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::Update(a1 + 1252, Rssi);
          }

          else
          {
            v35 = ot::Mac::RxFrame::GetRssi(v61);
            ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::Update(a1 + 1196, v35);
          }
        }

        if (ot::Mac::Frame::GetType(v61) == 1 && !ot::Neighbor::IsRxOnWhenIdle(RxOnlyNeighborRouter))
        {
          IsEnhancedKeepAliveSupported = ot::Neighbor::IsEnhancedKeepAliveSupported(RxOnlyNeighborRouter);
          if (IsEnhancedKeepAliveSupported)
          {
            v40 = RxOnlyNeighborRouter;
            Now = ot::TimerMilli::GetNow(IsEnhancedKeepAliveSupported);
            ot::Neighbor::SetLastHeard(v40, Now);
          }
        }
      }
    }
  }

  v39 = *(a1 + 1);
  if (v39 == 1)
  {
    if (!ot::Mac::Frame::GetType(v61))
    {
      ++*(a1 + 452);
      ot::Mac::Mac::ReportActiveScanResult(a1, v61);
      goto LABEL_97;
    }
  }

  else if (v39 != 2)
  {
    if (v39 == 6)
    {
      if (!ot::Mac::Address::IsNone(v58))
      {
        ot::TimerMilli::Stop((a1 + 312));
        ot::Mac::Mac::FinishOperation(a1);
        ot::Mac::Mac::PerformNextOperation(a1);
      }

      if (v55)
      {
        goto LABEL_97;
      }
    }

    goto LABEL_87;
  }

  if (*(a1 + 16) != *(a1 + 10))
  {
    ++*(a1 + 460);
    goto LABEL_97;
  }

LABEL_87:
  v38 = ot::Mac::Frame::GetType(v61);
  if (v38)
  {
    if (v38 == 1)
    {
      ++*(a1 + 444);
    }

    else
    {
      if (v38 != 3)
      {
        ++*(a1 + 460);
        goto LABEL_97;
      }

      if (ot::Mac::Mac::HandleMacCommand(a1, v61))
      {
        v55 = 0;
        goto LABEL_97;
      }
    }
  }

  else
  {
    ++*(a1 + 452);
  }

  ot::Mac::Mac::LogFrameRx(a1, v61);
  v37 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshForwarder>(a1);
  ot::MeshForwarder::HandleReceivedFrame(v37, v61);
  ot::Mac::Mac::UpdateIdleMode(a1);
LABEL_97:
  if (v55)
  {
    ot::Mac::Mac::LogFrameRxFailure(a1, v61, v55);
    switch(v55)
    {
      case 8:
        ++*(a1 + 488);
        break;
      case 17:
        ++*(a1 + 492);
        break;
      case 18:
        ++*(a1 + 476);
        break;
      case 19:
        ++*(a1 + 480);
        break;
      case 20:
        ++*(a1 + 484);
        break;
      case 21:
        ++*(a1 + 464);
        break;
      case 22:
        ++*(a1 + 468);
        break;
      case 29:
        ++*(a1 + 472);
        break;
      default:
        ++*(a1 + 496);
        break;
    }
  }
}

uint64_t ot::Mac::Address::GetType(ot::Mac::Address *this)
{
  return *(this + 8);
}

{
  return ot::Mac::Address::GetType(this);
}

BOOL ot::Equatable<ot::Mac::ExtAddress>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 8uLL) == 0;
}

{
  return ot::Equatable<ot::Mac::ExtAddress>::operator==(a1, a2);
}

BOOL ot::Unequatable<ot::Mac::ExtAddress>::operator!=(const void *a1, const void *a2)
{
  return !ot::Equatable<ot::Mac::ExtAddress>::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::Mac::ExtAddress>::operator!=(a1, a2);
}

uint64_t ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::Update(uint64_t a1, __int16 a2)
{
  v3 = 0;
  if (a2 > 0)
  {
    v3 = a2 / 4;
  }

  return ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::IncrementRange(a1, v3);
}

{
  return ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::Update(a1, a2);
}

uint64_t ot::Mac::RxFrame::GetTimestamp(ot::Mac::RxFrame *this)
{
  return this + 16;
}

{
  return ot::Mac::RxFrame::GetTimestamp(this);
}

uint64_t ot::Mac::SubMac::GetLastCslSampleTime(ot::Mac::SubMac *this)
{
  return ot::Time::GetValue((this + 176)) - 160 * *(this + 80);
}

{
  return ot::Mac::SubMac::GetLastCslSampleTime(this);
}

uint64_t ot::Min<int>(unsigned int a1, unsigned int a2)
{
  if (a1 >= a2)
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

{
  return ot::Min<int>(a1, a2);
}

uint64_t ot::Max<int>(unsigned int a1, unsigned int a2)
{
  if (a1 >= a2)
  {
    return a1;
  }

  else
  {
    return a2;
  }
}

{
  return ot::Max<int>(a1, a2);
}

uint64_t ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::Update(uint64_t a1, __int16 a2)
{
  v3 = 0;
  if (a2 < -41)
  {
    v3 = -(a2 + 41) / 5;
  }

  return ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::IncrementRange(a1, v3);
}

{
  return ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::Update(a1, a2);
}

uint64_t ot::Mac::Mac::HandleMacCommand(ot::Mac::Mac *this, ot::Mac::RxFrame *a2)
{
  v15 = this;
  v14 = a2;
  v13 = 0;
  v12 = 0;
  ot::Mac::Frame::GetCommandId(a2, &v12);
  IgnoreError();
  if (v12 == 4)
  {
    ++*(this + 112);
    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DataPollHandler>(this);
    ot::DataPollHandler::HandleDataPoll(v8, v14);
    v13 = 1;
  }

  else if (v12 == 7)
  {
    ++*(this + 114);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>(&ot::Mac::kLogModuleName, "Received Beacon Request", v2, v3, v4, v5, v6, v7, this);
    if (ot::Mac::Mac::ShouldSendBeacon(v11))
    {
      ot::Mac::Mac::StartOperation(v11, 3);
    }

    v13 = 1;
  }

  else
  {
    ++*(this + 115);
  }

  return v13 & 1;
}

void ot::Mac::Mac::LogFrameRx(ot::Mac::Mac *this, const ot::Mac::RxFrame *a2)
{
  v8 = *ot::Mac::RxFrame::GetTimestamp(a2);
  ot::Mac::Frame::ToInfoString(a2, v10);
  ot::String<(unsigned short)150>::AsCString(v10);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Frame rx, ts:%llu, %s", v2, v3, v4, v5, v6, v7, v8);
}

unint64_t ot::Mac::Mac::LogFrameRxFailure(ot::InstanceLocator *a1, ot::Mac::RxFrame *a2, int a3)
{
  if (a3 == 11 || a3 == 18 || a3 == 22 || a3 == 21)
  {
    v19 = 5;
  }

  else
  {
    v19 = 4;
  }

  if (a3 != 17)
  {
    if (a2)
    {
      v16 = ot::ErrorToString(a3);
      v17 = *ot::Mac::RxFrame::GetTimestamp(a2);
      ot::Mac::Frame::ToInfoString(a2, v22);
      ot::String<(unsigned short)150>::AsCString(v22);
      ot::Logger::LogInModule(&ot::Mac::kLogModuleName, v19, "Frame rx failed, error:%s, ts:%llu, %s", v9, v10, v11, v12, v13, v16);
    }

    else
    {
      v3 = ot::ErrorToString(a3);
      ot::Logger::LogInModule(&ot::Mac::kLogModuleName, v19, "Frame rx failed, error:%s", v4, v5, v6, v7, v8, v3);
    }
  }

  v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(a1);
  return ot::AppMetricsManager::UpdateSystemWideThreadRXReachabilityStatusLastTimestamp(v14, a3, 0);
}

uint64_t ot::LinkQualityInfo::GetLinkQuality(ot::LinkQualityInfo *this)
{
  return *(this + 2);
}

{
  return ot::LinkQualityInfo::GetLinkQuality(this);
}

void ot::Mac::Mac::SetPromiscuous(ot::Mac::Mac *this, char a2)
{
  *this = *this & 0xF7 | (8 * (a2 & 1));
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  ot::Radio::SetPromiscuous(v2, a2 & 1);
  LOBYTE(v4) = 1;
  if ((*this & 4) == 0)
  {
    v4 = (*this >> 3) & 1;
  }

  ot::Mac::Links::SetRxOnWhenIdle((this + 56), v4 & 1);
  ot::Mac::Mac::UpdateIdleMode(this);
}

uint64_t ot::Mac::Mac::SetRegion(ot::Mac::Mac *this, unsigned __int16 a2)
{
  v11 = this;
  v10 = a2;
  v9 = 0;
  v8 = *(this + 3);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
  v9 = ot::Radio::SetRegion(v2, v10);
  if (!v9)
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Radio>(this);
    SupportedChannelMask = ot::Radio::GetSupportedChannelMask(v3);
    ot::Mac::ChannelMask::SetMask(this + 3, SupportedChannelMask);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
    ot::Notifier::Update<ot::Mac::ChannelMask>(v5, &v8, this + 3, 0x400000);
    IgnoreError();
  }

  return v9;
}

uint64_t ot::Radio::SetRegion(ot::Radio *this, unsigned __int16 a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioSetRegion(InstancePtr, a2);
}

{
  return ot::Radio::SetRegion(this, a2);
}

uint64_t ot::Radio::GetRegion(ot::Radio *this, unsigned __int16 *a2)
{
  InstancePtr = ot::Radio::GetInstancePtr(this);
  return otPlatRadioGetRegion(InstancePtr, a2);
}

{
  return ot::Radio::GetRegion(this, a2);
}

uint64_t ot::Mac::Mac::GetDirectRetrySuccessHistogram(ot::Mac::Mac *this, unsigned __int8 *a2)
{
  if (*(this + 24) < 0x10u)
  {
    *a2 = *(this + 24) + 1;
  }

  else
  {
    *a2 = 16;
  }

  return this + 528;
}

uint64_t ot::Mac::Mac::GetIndirectRetrySuccessHistogram(ot::Mac::Mac *this, unsigned __int8 *a2)
{
  if (*(this + 25))
  {
    *a2 = 1;
  }

  else
  {
    *a2 = *(this + 25) + 1;
  }

  return this + 592;
}

void *ot::ClearAllBytes<ot::Mac::Mac::RetryHistogram>(void *a1)
{
  return memset(a1, 0, 0x44uLL);
}

{
  return ot::ClearAllBytes<ot::Mac::Mac::RetryHistogram>(a1);
}

uint64_t ot::Mac::Mac::GetDirectErrorNoAckHistogram(ot::Mac::Mac *this, unsigned __int8 *a2)
{
  if (*(this + 24) < 0x11u)
  {
    *a2 = *(this + 24) + 2;
  }

  else
  {
    *a2 = 17;
  }

  return this + 596;
}

uint64_t ot::Mac::Mac::GetDirectErrorChannelAccessFailureHistogram(ot::Mac::Mac *this, unsigned __int8 *a2)
{
  if (*(this + 24) < 0x11u)
  {
    *a2 = *(this + 24) + 2;
  }

  else
  {
    *a2 = 17;
  }

  return this + 664;
}

uint64_t ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::GetCount()
{
  return 26;
}

{
  return ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::GetCount();
}

void ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::GetData()
{
  ;
}

{
  ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::GetData();
}

uint64_t ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::GetCount()
{
  return 64;
}

{
  return ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::GetCount();
}

void ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::GetData()
{
  ;
}

{
  ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::GetData();
}

uint64_t ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::GetCount()
{
  return 14;
}

{
  return ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::GetCount();
}

void ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::GetData()
{
  ;
}

{
  ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::GetData();
}

void *ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::Clear(void *a1)
{
  return memset(a1, 0, 0x38uLL);
}

{
  return ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::Clear(a1);
}

void *ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::Clear(void *a1)
{
  return memset(a1, 0, 0x68uLL);
}

{
  return ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::Clear(a1);
}

void *ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::Clear(void *a1)
{
  return memset(a1, 0, 0x100uLL);
}

{
  return ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::Clear(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::AppMetricsManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::AppMetricsManager>(a1);
}

uint64_t ot::Mac::TxFrame::GetAirtime(ot::Mac::TxFrame *this)
{
  return *(this + 13);
}

{
  return ot::Mac::TxFrame::GetAirtime(this);
}

uint64_t ot::Mac::TxFrame::GetIFS(ot::Mac::TxFrame *this)
{
  return *(this + 12);
}

{
  return ot::Mac::TxFrame::GetIFS(this);
}

void ot::Mac::Mac::UpdatePcapStats(ot::Mac::Mac *this, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 < 13)
  {
    if (ot::Mac::mPcapModeCount[a2] == 0x7FFF)
    {
      ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "pcap mode count overflow", a3, a4, a5, a6, a7, a8, v8);
    }

    else
    {
      ++ot::Mac::mPcapModeCount[a2];
    }
  }

  else
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)5>(&ot::Mac::kLogModuleName, "Invalid pcap mode", a3, a4, a5, a6, a7, a8, v8);
  }
}

uint64_t ot::Mac::Mac::SetMleAdvTxNum(ot::Mac::Mac *this, unsigned __int8 a2)
{
  v3 = 0;
  if (a2)
  {
    if (a2 <= 0xFu)
    {
      *(this + 26) = a2;
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return 7;
  }

  return v3;
}

uint64_t ot::Mac::Links::WedPresent(ot::Mac::Links *this, char a2)
{
  return ot::Mac::SubMac::WedPresent(this + 8, a2 & 1);
}

{
  return ot::Mac::Links::WedPresent(this, a2);
}

BOOL ot::Mle::Mle::IsCslPeripheralDetached(ot::Mle::Mle *this)
{
  return *(this + 128) == 0;
}

{
  return ot::Mle::Mle::IsCslPeripheralDetached(this);
}

uint64_t ot::Mac::Links::UpdateCsl(uint64_t a1, unsigned __int16 a2, unsigned __int8 a3, unsigned __int16 a4, uint64_t *a5, int *a6)
{
  return ot::Mac::SubMac::UpdateCsl(a1 + 8, a2, a3, a4, a5, a6) & 1;
}

{
  return ot::Mac::Links::UpdateCsl(a1, a2, a3, a4, a5, a6);
}

uint64_t ot::CslTxScheduler::ChildInfo::SetCslPeriod(uint64_t this, __int16 a2)
{
  *(this + 8) = a2;
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::SetCslPeriod(this, a2);
}

uint64_t ot::CslTxScheduler::ChildInfo::SetCslPhase(uint64_t this, __int16 a2)
{
  *(this + 10) = a2;
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::SetCslPhase(this, a2);
}

uint64_t ot::CslTxScheduler::ChildInfo::SetLastRxTimestamp(uint64_t this, uint64_t a2)
{
  *(this + 16) = a2;
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::SetLastRxTimestamp(this, a2);
}

uint64_t ot::CslTxScheduler::ChildInfo::SetCslChannel(uint64_t this, char a2)
{
  *(this + 3) = a2;
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::SetCslChannel(this, a2);
}

uint64_t ot::CslTxScheduler::ChildInfo::SetCslSynchronized(uint64_t this, char a2)
{
  *(this + 2) = *(this + 2) & 0x7F | ((a2 & 1) << 7);
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::SetCslSynchronized(this, a2);
}

void ot::Mac::Mac::SetCslParentAccuracy(ot::Mac::Mac *this, const ot::Mac::CslAccuracy *a2)
{
  SubMac = ot::Mac::Links::GetSubMac((this + 56));
  ot::Mac::SubMac::SetCslParentAccuracy(SubMac, a2);
  ot::Mac::Mac::UpdateCsl(this, 0);
}

uint64_t ot::Mac::SubMac::SetCslParentAccuracy(ot::Mac::SubMac *this, const ot::Mac::CslAccuracy *a2)
{
  *(this + 92) = *a2;
  Instance = ot::InstanceLocator::GetInstance(this);
  ClockAccuracy = ot::Mac::CslAccuracy::GetClockAccuracy((this + 184));
  otPlatRadioSetCslParentClockAccuracy(Instance, ClockAccuracy, v3, v4, v5, v6, v7, v8);
  v19 = ot::InstanceLocator::GetInstance(this);
  Uncertainty = ot::Mac::CslAccuracy::GetUncertainty((this + 184));
  return otPlatRadioSetCslParentUncertainty(v19, Uncertainty, v10, v11, v12, v13, v14, v15);
}

{
  return ot::Mac::SubMac::SetCslParentAccuracy(this, a2);
}

uint64_t ot::Mac::Mac::GetCslPeriodInMsec(ot::Mac::Mac *this)
{
  CslPeriod = ot::Mac::Mac::GetCslPeriod(this);
  v2 = ot::Mac::Mac::CslPeriodToUsec(CslPeriod);
  return ot::DivideAndRoundToClosest<unsigned int>(v2, 0x3E8u);
}

uint64_t ot::DivideAndRoundToClosest<unsigned int>(int a1, unsigned int a2)
{
  return (a1 + a2 / 2) / a2;
}

{
  return ot::DivideAndRoundToClosest<unsigned int>(a1, a2);
}

BOOL ot::Mac::Mac::IsCslCapable(ot::Mac::Mac *this)
{
  v3 = 0;
  if (ot::Mac::Mac::GetCslPeriod(this) > 0)
  {
    return ot::Mac::Mac::IsCslSupported(this);
  }

  return v3;
}

BOOL ot::Mac::Mac::IsCslSupported(ot::Mac::Mac *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (ot::Mle::Mle::IsChild(v1))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    Parent = ot::Mle::Mle::GetParent(v2);
    return ot::Neighbor::IsEnhancedKeepAliveSupported(Parent);
  }

  else
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    return ot::Mle::Mle::IsCslPeripheralAttached(v4);
  }
}

BOOL ot::Mac::Mac::IsCstEnabled(ot::Mac::Mac *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  v4 = 0;
  if (ot::Mle::Mle::IsRouterOrLeader(v1))
  {
    return ot::Mac::Mac::IsCslEnabled(this);
  }

  return v4;
}

uint64_t ot::CslTxScheduler::ChildInfo::GetCslPeriod(ot::CslTxScheduler::ChildInfo *this)
{
  return *(this + 4);
}

{
  return ot::CslTxScheduler::ChildInfo::GetCslPeriod(this);
}

uint64_t ot::Mac::CslIe::GetPeriod(ot::Mac::CslIe *this)
{
  return ot::LittleEndian::HostSwap16(*(this + 1));
}

{
  return ot::Mac::CslIe::GetPeriod(this);
}

uint64_t ot::CslTxScheduler::ChildInfo::GetLastRxTimestamp(ot::CslTxScheduler::ChildInfo *this)
{
  return *(this + 2);
}

{
  return ot::CslTxScheduler::ChildInfo::GetLastRxTimestamp(this);
}

uint64_t ot::Mac::CslIe::GetPhase(ot::Mac::CslIe *this)
{
  return ot::LittleEndian::HostSwap16(*this);
}

{
  return ot::Mac::CslIe::GetPhase(this);
}

uint64_t ot::CslTxScheduler::ChildInfo::SetCslLastHeard(uint64_t result, int a2)
{
  *(result + 12) = a2;
  return result;
}

{
  return ot::CslTxScheduler::ChildInfo::SetCslLastHeard(result, a2);
}

uint64_t ot::CslTxScheduler::ChildInfo::GetCslPhase(ot::CslTxScheduler::ChildInfo *this)
{
  return *(this + 5);
}

{
  return ot::CslTxScheduler::ChildInfo::GetCslPhase(this);
}

BOOL ot::Mac::Frame::IsAck(ot::Mac::Frame *this)
{
  return ot::Mac::Frame::GetType(this) == 2;
}

{
  return ot::Mac::Frame::IsAck(this);
}

uint64_t ot::CslTxScheduler::ChildInfo::IsCslPrevSnValid(ot::CslTxScheduler::ChildInfo *this)
{
  return *this & 1;
}

{
  return ot::CslTxScheduler::ChildInfo::IsCslPrevSnValid(this);
}

uint64_t ot::CslTxScheduler::ChildInfo::GetCslPrevSn(ot::CslTxScheduler::ChildInfo *this)
{
  return *(this + 1);
}

{
  return ot::CslTxScheduler::ChildInfo::GetCslPrevSn(this);
}

_BYTE *ot::CslTxScheduler::ChildInfo::SetCslPrevSnValid(_BYTE *this, char a2)
{
  *this = *this & 0xFE | a2 & 1;
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::SetCslPrevSnValid(this, a2);
}

uint64_t ot::CslTxScheduler::ChildInfo::SetCslPrevSn(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::CslTxScheduler::ChildInfo::SetCslPrevSn(this, a2);
}

uint64_t ot::Mac::HeaderIe::GetLength(ot::Mac::HeaderIe *this)
{
  return *this & 0x7F;
}

{
  return ot::Mac::HeaderIe::GetLength(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Initiator>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::LinkMetrics::Initiator>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::LinkMetrics::Initiator>(a1);
}

void ot::Mac::Mac::SetRadioFilterEnabled(ot::Mac::Mac *this, char a2)
{
  SubMac = ot::Mac::Links::GetSubMac((this + 56));
  ot::Mac::SubMac::SetRadioFilterEnabled(SubMac, a2 & 1);
  ot::Mac::Mac::UpdateIdleMode(this);
}

uint64_t ot::Mac::SubMac::SetRadioFilterEnabled(uint64_t this, char a2)
{
  *(this + 20) = *(this + 20) & 0xFD | (2 * (a2 & 1));
  return this;
}

{
  return ot::Mac::SubMac::SetRadioFilterEnabled(this, a2);
}

void ot::Mac::Mac::ResetPcapStats(ot::Mac::Mac *this)
{
  for (i = 0; i < 13; ++i)
  {
    ot::Mac::mPcapModeCount[i] = 0;
  }
}

void ot::Mac::Links::SetShortAddress(ot::Mac::Links *this, __int16 a2)
{
  ot::Mac::SubMac::SetShortAddress((this + 8), a2);
}

{
  ot::Mac::Links::SetShortAddress(this, a2);
}

void ot::Mac::Links::SetAlternateShortAddress(ot::Mac::Links *this, unsigned __int16 a2)
{
  ot::Mac::SubMac::SetAlternateShortAddress((this + 8), a2);
}

{
  ot::Mac::Links::SetAlternateShortAddress(this, a2);
}

ot::MeshCoP::NameData *ot::MeshCoP::NameData::NameData(ot::MeshCoP::NameData *this, const char *a2, char a3)
{
  ot::MeshCoP::NameData::NameData(this, a2, a3);
  return this;
}

{
  ot::Data<(ot::DataLengthType)0>::Init(this, a2, a3);
  return this;
}

uint64_t ot::Mac::TxFrame::SetIsSecurityProcessed(uint64_t this, char a2)
{
  *(this + 45) = *(this + 45) & 0xEF | (16 * (a2 & 1));
  return this;
}

{
  return ot::Mac::TxFrame::SetIsSecurityProcessed(this, a2);
}

uint64_t ot::Mac::TxFrame::SetTxPower(uint64_t this, char a2)
{
  *(this + 44) = a2;
  return this;
}

{
  return ot::Mac::TxFrame::SetTxPower(this, a2);
}

uint64_t ot::Mac::TxFrame::SetCslIePresent(uint64_t this, char a2)
{
  *(this + 45) = *(this + 45) & 0xF7 | (8 * (a2 & 1));
  return this;
}

{
  return ot::Mac::TxFrame::SetCslIePresent(this, a2);
}

BOOL ot::Mac::Frame::IsAckRequest(ot::Mac::Frame *this)
{
  return ot::Mac::Frame::GetFcfBit(this, 32, 0x4000) != 0;
}

{
  return ot::Mac::Frame::IsAckRequest(this);
}

uint64_t ot::Mac::SubMac::GetTransmitRetries(ot::Mac::SubMac *this)
{
  return *(this + 6);
}

{
  return ot::Mac::SubMac::GetTransmitRetries(this);
}

uint64_t ot::Mac::CslAccuracy::GetClockAccuracy(ot::Mac::CslAccuracy *this)
{
  return *this;
}

{
  return ot::Mac::CslAccuracy::GetClockAccuracy(this);
}

uint64_t ot::Mac::CslAccuracy::GetUncertainty(ot::Mac::CslAccuracy *this)
{
  return *(this + 1);
}

{
  return ot::Mac::CslAccuracy::GetUncertainty(this);
}

_WORD *ot::ClearAllBytes<ot::SuccessRateTracker>(_WORD *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::SuccessRateTracker>(result);
}

BOOL ot::Mac::ChannelMask::operator==(_DWORD *a1, _DWORD *a2)
{
  return *a1 == *a2;
}

{
  return ot::Mac::ChannelMask::operator==(a1, a2);
}

uint64_t ot::Instance::Get<ot::DataPollHandler>(uint64_t a1)
{
  return a1 + 90208;
}

{
  return ot::Instance::Get<ot::DataPollHandler>(a1);
}

uint64_t ot::Instance::Get<ot::WakeupTxScheduler>(uint64_t a1)
{
  return a1 + 91232;
}

{
  return ot::Instance::Get<ot::WakeupTxScheduler>(a1);
}

uint64_t ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::IncrementRange(uint64_t result, unsigned __int16 a2)
{
  if (a2 >= 0x1Au)
  {
    v2 = 25;
  }

  else
  {
    v2 = a2;
  }

  ++*(result + 4 * v2);
  return result;
}

{
  return ot::Utils::CountHistogram<(short)0,(short)127,(short)5>::IncrementRange(result, a2);
}

uint64_t ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::IncrementRange(uint64_t result, unsigned __int16 a2)
{
  if (a2 >= 0x40u)
  {
    v2 = 63;
  }

  else
  {
    v2 = a2;
  }

  ++*(result + 4 * v2);
  return result;
}

{
  return ot::Utils::CountHistogram<(short)0,(short)255,(short)4>::IncrementRange(result, a2);
}

uint64_t ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::IncrementRange(uint64_t result, unsigned __int16 a2)
{
  if (a2 >= 0xEu)
  {
    v2 = 13;
  }

  else
  {
    v2 = a2;
  }

  ++*(result + 4 * v2);
  return result;
}

{
  return ot::Utils::CountHistogram<(short)-41,(short)-110,(short)5>::IncrementRange(result, a2);
}

uint64_t otMeshDiagDiscoverTopology(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    __assert_rtn("otMeshDiagDiscoverTopology", "mesh_diag_api.cpp", 51, "(aConfig) != nullptr");
  }

  v4 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Utils::MeshDiag>(v4);
  return ot::Utils::MeshDiag::DiscoverTopology(v5, a2, a3, a4);
}

uint64_t otMeshDiagCancel(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::MeshDiag>(v1);
  return ot::Utils::MeshDiag::Cancel(v2);
}

uint64_t otMeshDiagGetNextIp6Address(uint64_t a1, uint64_t a2)
{
  v4 = ot::AsCoreType<otMeshDiagIp6AddrIterator>(a1);
  v2 = ot::AsCoreType<otIp6Address>(a2);
  return ot::Utils::MeshDiag::Ip6AddrIterator::GetNextAddress(v4, v2);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otMeshDiagIp6AddrIterator>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otMeshDiagGetNextChildInfo(uint64_t a1, uint64_t a2)
{
  v4 = ot::AsCoreType<otMeshDiagChildIterator>(a1);
  v2 = ot::AsCoreType<otMeshDiagChildInfo>(a2);
  return ot::Utils::MeshDiag::ChildIterator::GetNextChildInfo(v4, v2);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otMeshDiagChildIterator>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otMeshDiagChildInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otMeshDiagQueryChildTable(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Utils::MeshDiag>(v4);
  return ot::Utils::MeshDiag::QueryChildTable(v5, a2, a3, a4);
}

uint64_t otMeshDiagQueryChildrenIp6Addrs(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Utils::MeshDiag>(v4);
  return ot::Utils::MeshDiag::QueryChildrenIp6Addrs(v5, a2, a3, a4);
}

uint64_t otMeshDiagQueryRouterNeighborTable(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Utils::MeshDiag>(v4);
  return ot::Utils::MeshDiag::QueryRouterNeighborTable(v5, a2, a3, a4);
}

uint64_t ot::Ip6::Hap::Header::ParseFrom(ot::Ip6::Hap::Header *this, const ot::Message *a2, unsigned __int16 a3)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  v9 = 0;
  *(this + 24) = 0;
  v8 = 0;
  v9 = ot::Message::Read<unsigned char>(v11, v10, &v8);
  if (!v9)
  {
    ++v10;
    *this = (v8 >> 4) & 3;
    *(this + 1) = v8 & 0xF;
    v9 = ot::Message::Read<unsigned char>(v11, v10, &v8);
    if (!v9)
    {
      ++v10;
      *(this + 1) = ((v8 >> 5) & 7) + ((v8 & 0x1F) / 100.0);
      v9 = ot::Message::Read<unsigned short>(v11, v10, this + 8);
      if (!v9)
      {
        v10 += 2;
        *(this + 2) = 0;
        for (i = 0; i < *(this + 1); ++i)
        {
          v9 = ot::Message::Read<unsigned char>(v11, v10, &v8);
          if (v9)
          {
            break;
          }

          ++v10;
          *(this + 2) = v8 + (*(this + 2) << 8);
        }
      }
    }
  }

  if (v9)
  {
    *(this + 24) = 1;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(4) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        v3 = ot::ErrorToString(v9);
        __os_log_helper_16_2_1_8_32(v14, v3);
        _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "Hap header can not be parsed (MsgType:kTypeIp6), error=%s", v14, 0xCu);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v13, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v13, 0x16u);
    }
  }

  return v9;
}

uint64_t ot::Message::Read<unsigned char>(ot::Message *a1, unsigned __int16 a2, char *a3)
{
  return ot::Message::Read(a1, a2, a3, 1u);
}

{
  return ot::Message::Read<unsigned char>(a1, a2, a3);
}

uint64_t ot::Ip6::Hap::Header::ParseFrom(ot::Ip6::Hap::Header *this, ot::FrameData *a2)
{
  v10 = this;
  v9 = a2;
  v8 = 0;
  *(this + 24) = 0;
  v7 = 0;
  v8 = ot::FrameData::Read<unsigned char>(v9, &v7);
  if (!v8)
  {
    *this = (v7 >> 4) & 3;
    *(this + 1) = v7 & 0xF;
    v8 = ot::FrameData::Read<unsigned char>(v9, &v7);
    if (!v8)
    {
      *(this + 1) = ((v7 >> 5) & 7) + ((v7 & 0x1F) / 100.0);
      v8 = ot::FrameData::Read<unsigned short>(v9, this + 8);
      if (!v8)
      {
        *(this + 2) = 0;
        for (i = 0; i < *(this + 1); ++i)
        {
          v8 = ot::FrameData::Read<unsigned char>(v9, &v7);
          if (v8)
          {
            break;
          }

          *(this + 2) = v7 + (*(this + 2) << 8);
        }
      }
    }
  }

  if (v8)
  {
    *(this + 24) = 1;
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(4) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        v2 = ot::ErrorToString(v8);
        __os_log_helper_16_2_1_8_32(v12, v2);
        _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "Hap header can not be parsed (MsgType:kType6lowpan), error=%s", v12, 0xCu);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v11, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v11, 0x16u);
    }
  }

  return v8;
}

uint64_t ot::FrameData::Read<unsigned char>(ot::FrameData *a1, void *a2)
{
  return ot::FrameData::ReadBytes(a1, a2, 1u);
}

{
  return ot::FrameData::Read<unsigned char>(a1, a2);
}

uint64_t ot::FrameData::Read<unsigned short>(ot::FrameData *a1, void *a2)
{
  return ot::FrameData::ReadBytes(a1, a2, 2u);
}

{
  return ot::FrameData::Read<unsigned short>(a1, a2);
}

_BYTE *ot::Mac::Filter::Filter(_BYTE *this)
{
  *this = 0;
  this[1] = 127;
  for (i = this + 2; i != this + 322; i += 10)
  {
    *i = 0;
    i[1] = 127;
  }

  return this;
}

char *ot::Mac::Filter::FindEntry(ot::Mac::Filter *this, const ot::Mac::ExtAddress *a2)
{
  v5 = 0;
  v4 = this + 2;
  v3 = this + 322;
  while (v4 != v3)
  {
    if (ot::Mac::Filter::FilterEntry::IsInUse(v4) && ot::Equatable<ot::Mac::ExtAddress>::operator==(a2, v4 + 2))
    {
      return v4;
    }

    v4 += 10;
  }

  return v5;
}

BOOL ot::Mac::Filter::FilterEntry::IsInUse(ot::Mac::Filter::FilterEntry *this)
{
  v2 = 1;
  if ((*this & 1) == 0)
  {
    return *(this + 1) != 127;
  }

  return v2;
}

{
  return ot::Mac::Filter::FilterEntry::IsInUse(this);
}

ot::Mac::Filter::FilterEntry *ot::Mac::Filter::FindAvailableEntry(ot::Mac::Filter *this)
{
  v4 = 0;
  v3 = (this + 2);
  v2 = (this + 322);
  while (v3 != v2)
  {
    if (!ot::Mac::Filter::FilterEntry::IsInUse(v3))
    {
      return v3;
    }

    v3 = (v3 + 10);
  }

  return v4;
}

uint64_t ot::Mac::Filter::AddAddress(ot::Mac::Filter *this, const ot::Mac::ExtAddress *a2)
{
  v6 = 0;
  ot::Mac::Filter::FindEntry(this, a2);
  AvailableEntry = v2;
  if (v2)
  {
    goto LABEL_5;
  }

  AvailableEntry = ot::Mac::Filter::FindAvailableEntry(this);
  if (AvailableEntry)
  {
    *(AvailableEntry + 2) = *a2;
LABEL_5:
    *AvailableEntry = 1;
    return v6;
  }

  return 3;
}

void ot::Mac::Filter::FindEntry(ot::Mac::Filter *this, const ot::Mac::ExtAddress *a2)
{
  ot::AsConst<ot::Mac::Filter>();
  ot::Mac::Filter::FindEntry(v2, a2);
  ot::AsNonConst<ot::Mac::Filter::FilterEntry>();
}

{
  ot::Mac::Filter::FindEntry(this, a2);
}

void ot::Mac::Filter::RemoveAddress(ot::Mac::Filter *this, const ot::Mac::ExtAddress *a2)
{
  ot::Mac::Filter::FindEntry(this, a2);
  if (v2)
  {
    *v2 = 0;
  }
}

uint64_t ot::Mac::Filter::ClearAddresses(uint64_t this)
{
  for (i = (this + 2); i != (this + 322); i += 10)
  {
    *i = 0;
  }

  return this;
}

uint64_t ot::Mac::Filter::GetNextAddress(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = 23;
  while (1)
  {
    v4 = *a2;
    if (v4 >= ot::GetArrayLength<ot::Mac::Filter::FilterEntry,(unsigned short)32>())
    {
      break;
    }

    v6 = a1 + 2 + 10 * *a2;
    if (*v6)
    {
      *a3 = *(v6 + 2);
      *(a3 + 8) = *(v6 + 1);
      v7 = 0;
      ++*a2;
      return v7;
    }

    ++*a2;
  }

  return v7;
}

uint64_t ot::GetArrayLength<ot::Mac::Filter::FilterEntry,(unsigned short)32>()
{
  return 32;
}

{
  return ot::GetArrayLength<ot::Mac::Filter::FilterEntry,(unsigned short)32>();
}

uint64_t ot::Mac::Filter::AddRssIn(ot::Mac::Filter *this, const ot::Mac::ExtAddress *a2, char a3)
{
  v7 = 0;
  ot::Mac::Filter::FindEntry(this, a2);
  AvailableEntry = v3;
  if (v3)
  {
    goto LABEL_5;
  }

  AvailableEntry = ot::Mac::Filter::FindAvailableEntry(this);
  if (AvailableEntry)
  {
    *(AvailableEntry + 2) = *a2;
LABEL_5:
    *(AvailableEntry + 1) = a3;
    return v7;
  }

  return 3;
}

void ot::Mac::Filter::RemoveRssIn(ot::Mac::Filter *this, const ot::Mac::ExtAddress *a2)
{
  ot::Mac::Filter::FindEntry(this, a2);
  if (v2)
  {
    *(v2 + 1) = 127;
  }
}

uint64_t ot::Mac::Filter::ClearAllRssIn(uint64_t this)
{
  for (i = this + 2; i != this + 322; i += 10)
  {
    *(i + 1) = 127;
  }

  *(this + 1) = 127;
  return this;
}

uint64_t ot::Mac::Filter::GetNextRssIn(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v9 = 23;
  while (1)
  {
    v6 = *a2;
    if (v6 >= ot::GetArrayLength<ot::Mac::Filter::FilterEntry,(unsigned short)32>())
    {
      break;
    }

    v8 = a1 + 2 + 10 * *a2;
    if (*(v8 + 1) != 127)
    {
      *a3 = *(v8 + 2);
      *(a3 + 8) = *(v8 + 1);
      v9 = 0;
      ++*a2;
      return v9;
    }

    ++*a2;
  }

  v5 = *a2;
  if (v5 == ot::GetArrayLength<ot::Mac::Filter::FilterEntry,(unsigned short)32>() && *(a1 + 1) != 127)
  {
    v3 = ot::AsCoreType<otExtAddress>(a3);
    ot::Mac::ExtAddress::Fill(v3, 0xFFu);
    *(a3 + 8) = *(a1 + 1);
    v9 = 0;
    ++*a2;
  }

  return v9;
}

void *ot::Mac::ExtAddress::Fill(void *this, unsigned __int8 a2)
{
  *this = 0x101010101010101 * a2;
  return this;
}

{
  return ot::Mac::ExtAddress::Fill(this, a2);
}

uint64_t ot::Mac::Filter::Apply(ot::Mac::Filter *this, const ot::Mac::ExtAddress *a2, signed __int8 *a3)
{
  v8 = 0;
  Entry = ot::Mac::Filter::FindEntry(this, a2);
  *a3 = *(this + 1);
  v6 = 0;
  if (Entry)
  {
    v6 = *Entry;
  }

  v4 = *this;
  if (*this)
  {
    if (v4 == 1)
    {
      if ((v6 & 1) == 0)
      {
        return 21;
      }
    }

    else if (v4 == 2 && (v6 & 1) != 0)
    {
      return 21;
    }
  }

  if (Entry && Entry[1] != 127)
  {
    *a3 = Entry[1];
  }

  return v8;
}

uint64_t ot::Mac::Filter::ApplyToRxFrame(ot::Mac::Filter *this, ot::Mac::RxFrame *a2, const ot::Mac::ExtAddress *a3, ot::Neighbor *a4)
{
  v11 = this;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = 0;
  v6 = 0;
  v7 = ot::Mac::Filter::Apply(this, a3, &v6);
  if (!v7 && v6 != 127)
  {
    ot::Mac::RxFrame::SetRssi(v10, v6);
    if (v8)
    {
      LinkInfo = ot::Neighbor::GetLinkInfo(v8);
      ot::LinkQualityInfo::ClearAverageRss(LinkInfo);
    }
  }

  return v7;
}

uint64_t ot::Mac::RxFrame::SetRssi(uint64_t this, char a2)
{
  *(this + 29) = a2;
  return this;
}

{
  return ot::Mac::RxFrame::SetRssi(this, a2);
}

_WORD *ot::LinkQualityInfo::ClearAverageRss(ot::LinkQualityInfo *this)
{
  return ot::Clearable<ot::RssAverager>::Clear(this);
}

{
  return ot::LinkQualityInfo::ClearAverageRss(this);
}

void ot::AsNonConst<ot::Mac::Filter::FilterEntry>()
{
  ;
}

{
  ot::AsNonConst<ot::Mac::Filter::FilterEntry>();
}

void ot::AsConst<ot::Mac::Filter>()
{
  ;
}

{
  ot::AsConst<ot::Mac::Filter>();
}

_WORD *ot::Clearable<ot::RssAverager>::Clear(_WORD *a1)
{
  return ot::ClearAllBytes<ot::RssAverager>(a1);
}

{
  return ot::Clearable<ot::RssAverager>::Clear(a1);
}

_WORD *ot::ClearAllBytes<ot::RssAverager>(_WORD *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::RssAverager>(result);
}

uint64_t ot::String<(unsigned short)17>::String(uint64_t a1)
{
  ot::String<(unsigned short)17>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 17);
  return a1;
}

ot::MeshCoP::ExtendedPanIdManager *ot::MeshCoP::ExtendedPanIdManager::ExtendedPanIdManager(ot::MeshCoP::ExtendedPanIdManager *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Clearable<ot::MeshCoP::ExtendedPanId>::Clear(this);
  v2 = ot::AsCoreType<otExtendedPanId>(&ot::MeshCoP::ExtendedPanIdManager::sExtendedPanidInit);
  ot::MeshCoP::ExtendedPanIdManager::SetExtPanId(this, v2);
  return this;
}

{
  ot::MeshCoP::ExtendedPanIdManager::ExtendedPanIdManager(this, a2);
  return this;
}

void *ot::Clearable<ot::MeshCoP::ExtendedPanId>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::MeshCoP::ExtendedPanId>(a1);
}

{
  return ot::Clearable<ot::MeshCoP::ExtendedPanId>::Clear(a1);
}

void ot::MeshCoP::ExtendedPanIdManager::SetExtPanId(ot::MeshCoP::ExtendedPanIdManager *this, const ot::MeshCoP::ExtendedPanId *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
  ot::Notifier::Update<ot::MeshCoP::ExtendedPanId>(v2, this, a2, 0x20000);
  IgnoreError();
}

uint64_t ot::Notifier::Update<ot::MeshCoP::ExtendedPanId>(void *a1, void *a2, void *a3, uint64_t a4)
{
  v6 = 0;
  if (ot::Equatable<ot::MeshCoP::ExtendedPanId>::operator==(a2, a3))
  {
    ot::Notifier::SignalIfFirst(a1, a4);
    return 24;
  }

  else
  {
    *a2 = *a3;
    ot::Notifier::Signal(a1, a4);
  }

  return v6;
}

{
  return ot::Notifier::Update<ot::MeshCoP::ExtendedPanId>(a1, a2, a3, a4);
}

void *ot::ClearAllBytes<ot::MeshCoP::ExtendedPanId>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::MeshCoP::ExtendedPanId>(result);
}

BOOL ot::Equatable<ot::MeshCoP::ExtendedPanId>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 8uLL) == 0;
}

{
  return ot::Equatable<ot::MeshCoP::ExtendedPanId>::operator==(a1, a2);
}

uint64_t ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::CstIe>(ot::Mac::Frame *a1, unsigned __int8 *a2)
{
  inited = ot::Mac::Frame::InitIeHeaderAt(a1, a2, 0, 8u);
  if (!inited)
  {
    ot::Mac::Frame::InitIeContentAt<ot::Mac::CstIe>(a1, a2, v2);
  }

  return inited;
}

{
  return ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::CstIe>(a1, a2);
}

uint64_t ot::Mac::Frame::InitIeHeaderAt(ot::Mac::Frame *this, unsigned __int8 *a2, unsigned __int8 a3, unsigned __int8 a4)
{
  v6 = 0;
  ot::Mac::Frame::SetIePresent(this, 1);
  if (!*a2)
  {
    *a2 = ot::Mac::Frame::FindHeaderIeIndex(this);
  }

  if (*a2 == 255)
  {
    return 23;
  }

  else
  {
    ot::Mac::HeaderIe::Init((*this + *a2), a3, a4);
    *a2 += 2;
    *(this + 4) += a4 + 2;
  }

  return v6;
}

uint64_t ot::Mac::Frame::InitIeContentAt<ot::Mac::CstIe>(void *a1, _BYTE *a2, unsigned __int8 *a3)
{
  v4 = (*a1 + *a2);
  ot::Mac::VendorIeHeader::SetVendorOui(v4, 0xEAB89Bu, a3);
  result = ot::Mac::VendorIeHeader::SetSubType(v4, 2);
  *a2 += 8;
  return result;
}

uint64_t ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::RendezvousTimeIe>(ot::Mac::Frame *a1, unsigned __int8 *a2)
{
  inited = ot::Mac::Frame::InitIeHeaderAt(a1, a2, 0x1Du, 2u);
  if (!inited)
  {
    ot::Mac::Frame::InitIeContentAt<ot::Mac::RendezvousTimeIe>(a1, a2);
  }

  return inited;
}

{
  return ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::RendezvousTimeIe>(a1, a2);
}

uint64_t ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::ConnectionIe>(ot::Mac::Frame *a1, unsigned __int8 *a2)
{
  inited = ot::Mac::Frame::InitIeHeaderAt(a1, a2, 0, 5u);
  if (!inited)
  {
    ot::Mac::Frame::InitIeContentAt<ot::Mac::ConnectionIe>(a1, a2, v2);
  }

  return inited;
}

{
  return ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::ConnectionIe>(a1, a2);
}

uint64_t ot::Mac::Frame::InitIeContentAt<ot::Mac::ConnectionIe>(void *a1, _BYTE *a2, unsigned __int8 *a3)
{
  result = ot::Mac::ConnectionIe::Init((*a1 + *a2), a2, a3);
  *a2 += 5;
  return result;
}

uint64_t ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::CslIe>(ot::Mac::Frame *a1, unsigned __int8 *a2)
{
  inited = ot::Mac::Frame::InitIeHeaderAt(a1, a2, 0x1Au, 4u);
  if (!inited)
  {
    ot::Mac::Frame::InitIeContentAt<ot::Mac::CslIe>(a1, a2);
  }

  return inited;
}

{
  return ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::CslIe>(a1, a2);
}

uint64_t ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::Termination2Ie>(ot::Mac::Frame *a1, unsigned __int8 *a2)
{
  inited = ot::Mac::Frame::InitIeHeaderAt(a1, a2, 0x7Fu, 0);
  if (!inited)
  {
    ot::Mac::Frame::InitIeContentAt<ot::Mac::Termination2Ie>();
  }

  return inited;
}

{
  return ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::Termination2Ie>(a1, a2);
}

_BYTE *ot::Mac::HeaderIe::Init(ot::Mac::HeaderIe *this, __int16 a2, char a3)
{
  ot::Mac::HeaderIe::Init(this);
  ot::Mac::HeaderIe::SetId(this, a2);
  return ot::Mac::HeaderIe::SetLength(this, a3);
}

_WORD *ot::Mac::HeaderIe::Init(_WORD *this)
{
  *this = 0;
  return this;
}

{
  return ot::Mac::HeaderIe::Init(this);
}

uint64_t ot::Mac::HeaderIe::SetId(ot::Mac::HeaderIe *this, __int16 a2)
{
  v2 = ot::LittleEndian::HostSwap16(*this);
  result = ot::LittleEndian::HostSwap16(v2 & 0x807F | (a2 << 7) & 0x7F80u);
  *this = result;
  return result;
}

{
  return ot::Mac::HeaderIe::SetId(this, a2);
}

_BYTE *ot::Mac::HeaderIe::SetLength(_BYTE *this, char a2)
{
  *this = *this & 0x80 | a2 & 0x7F;
  return this;
}

{
  return ot::Mac::HeaderIe::SetLength(this, a2);
}

uint64_t ot::Mac::Frame::InitMacHeader(ot::Mac::Frame *a1, __int16 a2, __int16 a3, ot::Mac::Address *a4, ot::Mac::PanIds *a5, char a6, char a7)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  v24 = a5;
  v23 = a6;
  v22 = a7;
  v21 = a2 | a3;
  Type = ot::Mac::Address::GetType(a4);
  if (Type)
  {
    if (Type == 1)
    {
      v21 |= 0x8000u;
    }

    else if (Type == 2)
    {
      v21 |= 0xC000u;
    }
  }

  v16 = ot::Mac::Address::GetType((v25 + 10));
  if (v16)
  {
    if (v16 == 1)
    {
      v21 |= 0x800u;
      if (ot::Mac::Address::GetShort((v25 + 10)) == 0xFFFF)
      {
        v7 = 0;
      }

      else
      {
        v7 = 32;
      }

      v21 |= v7;
    }

    else if (v16 == 2)
    {
      v21 |= 0xC20u;
    }
  }

  if (v27 == 2)
  {
    v21 &= ~0x20u;
  }

  if (v23)
  {
    v8 = 8;
  }

  else
  {
    v8 = 0;
  }

  v21 |= v8;
  if (!v26 || v26 == 4096)
  {
    if (!ot::Mac::Address::IsNone(v25) && !ot::Mac::Address::IsNone((v25 + 10)))
    {
      Source = ot::Mac::PanIds::GetSource(v24);
      if (Source == ot::Mac::PanIds::GetDestination(v24))
      {
        v21 |= 0x40u;
      }
    }
  }

  else if (v26 == 0x2000)
  {
    if (ot::Mac::Address::IsNone((v25 + 10)))
    {
      if (ot::Mac::Address::IsNone(v25) && (ot::Mac::PanIds::IsDestinationPresent(v24) & 1) != 0 || !ot::Mac::Address::IsNone(v25) && (ot::Mac::PanIds::IsDestinationPresent(v24) & 1) == 0 && (ot::Mac::PanIds::IsSourcePresent(v24) & 1) == 0)
      {
        v21 |= 0x40u;
      }
    }

    else if (ot::Mac::Address::IsNone(v25))
    {
      if ((ot::Mac::PanIds::IsDestinationPresent(v24) & 1) == 0)
      {
        v21 |= 0x40u;
      }
    }

    else
    {
      if (ot::Mac::Address::IsExtended(v25) && ot::Mac::Address::IsExtended((v25 + 10)))
      {
        if (ot::Mac::PanIds::IsDestinationPresent(v24))
        {
          goto LABEL_50;
        }
      }

      else
      {
        v14 = ot::Mac::PanIds::GetSource(v24);
        if (v14 != ot::Mac::PanIds::GetDestination(v24))
        {
          goto LABEL_50;
        }
      }

      v21 |= 0x40u;
    }
  }

LABEL_50:
  v13 = *a1;
  Mtu = ot::Mac::Frame::GetMtu(a1);
  ot::FrameBuilder::Init(v20, v13, Mtu);
  ot::FrameBuilder::AppendLittleEndianUint16(v20, v21);
  IgnoreError();
  ot::FrameBuilder::AppendUint8(v20, 0);
  IgnoreError();
  if (ot::Mac::Frame::IsDstPanIdPresent(v21))
  {
    Destination = ot::Mac::PanIds::GetDestination(v24);
    ot::FrameBuilder::AppendLittleEndianUint16(v20, Destination);
    IgnoreError();
  }

  ot::FrameBuilder::AppendMacAddress(v20, (v25 + 10));
  IgnoreError();
  if (ot::Mac::Frame::IsSrcPanIdPresent(v21))
  {
    v11 = ot::Mac::PanIds::GetSource(v24);
    ot::FrameBuilder::AppendLittleEndianUint16(v20, v11);
    IgnoreError();
  }

  ot::FrameBuilder::AppendMacAddress(v20, v25);
  IgnoreError();
  *(a1 + 4) = ot::FrameBuilder::GetLength(v20);
  if (v23)
  {
    v19 = v23 | v22;
    ot::FrameBuilder::AppendUint8(v20, v23 | v22);
    IgnoreError();
    *(a1 + 4) += ot::Mac::Frame::CalculateSecurityHeaderSize(v19);
    *(a1 + 4) += ot::Mac::Frame::CalculateMicSize(v19);
  }

  if (v27 == 3)
  {
    ++*(a1 + 4);
  }

  result = ot::Mac::Frame::GetFcsSize(a1);
  *(a1 + 4) += result;
  return result;
}

uint64_t ot::Mac::PanIds::GetSource(ot::Mac::PanIds *this)
{
  return *this;
}

{
  return ot::Mac::PanIds::GetSource(this);
}

uint64_t ot::Mac::PanIds::GetDestination(ot::Mac::PanIds *this)
{
  return *(this + 1);
}

{
  return ot::Mac::PanIds::GetDestination(this);
}

uint64_t ot::Mac::PanIds::IsDestinationPresent(ot::Mac::PanIds *this)
{
  return *(this + 5) & 1;
}

{
  return ot::Mac::PanIds::IsDestinationPresent(this);
}

uint64_t ot::Mac::PanIds::IsSourcePresent(ot::Mac::PanIds *this)
{
  return *(this + 4) & 1;
}

{
  return ot::Mac::PanIds::IsSourcePresent(this);
}

uint64_t ot::Mac::Frame::GetMtu(ot::Mac::Frame *this)
{
  return 127;
}

{
  return ot::Mac::Frame::GetMtu(this);
}

BOOL ot::Mac::Frame::IsDstPanIdPresent(ot::Mac::Frame *this)
{
  v4 = this;
  v3 = 1;
  if (ot::Mac::Frame::IsMultipurpose(this))
  {
    return (v4 & 0x100) != 0;
  }

  else if (ot::Mac::Frame::IsVersion2015(v4))
  {
    v2 = v4 & 0xCC40;
    if ((v4 & 0xCC40) == 0 || v2 == 2112 || v2 == 3136 || v2 == 0x8000 || v2 == 32832 || v2 == 49152 || v2 == 49216 || v2 == 52288)
    {
      return 0;
    }
  }

  else
  {
    return ot::Mac::Frame::IsDstAddrPresent(v4);
  }

  return v3;
}

{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  return ot::Mac::Frame::IsDstPanIdPresent(FrameControlField);
}

{
  return ot::Mac::Frame::IsDstPanIdPresent(this);
}

BOOL ot::Mac::Frame::IsSrcPanIdPresent(ot::Mac::Frame *this)
{
  v4 = this;
  v2 = 0;
  if (ot::Mac::Frame::IsSrcAddrPresent(this))
  {
    v2 = (v4 & 0x40) == 0;
  }

  v3 = v2;
  if (ot::Mac::Frame::IsMultipurpose(v4))
  {
    return 0;
  }

  else if (ot::Mac::Frame::IsVersion2015(v4) && (v4 & 0xCC00) == 0xCC00)
  {
    return 0;
  }

  return v3;
}

{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  return ot::Mac::Frame::IsSrcPanIdPresent(FrameControlField);
}

{
  return ot::Mac::Frame::IsSrcPanIdPresent(this);
}

uint64_t ot::FrameBuilder::GetLength(ot::FrameBuilder *this)
{
  return *(this + 4);
}

{
  return ot::FrameBuilder::GetLength(this);
}

uint64_t ot::Mac::Frame::CalculateSecurityHeaderSize(ot::Mac::Frame *this)
{
  v3 = 5;
  if ((this & 7) != 0)
  {
    v2 = this & 0x18;
    if ((this & 0x18) != 0)
    {
      switch(v2)
      {
        case 8:
          return 6;
        case 16:
          return 10;
        case 24:
          return 14;
      }
    }
  }

  else
  {
    return -1;
  }

  return v3;
}

uint64_t ot::Mac::Frame::CalculateMicSize(ot::Mac::Frame *this)
{
  v3 = 0;
  v2 = this & 7;
  if ((this & 7) != 0)
  {
    switch(v2)
    {
      case 1:
        return 4;
      case 2:
        return 8;
      case 3:
        return 16;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        if (v2 != 6)
        {
          if (v2 != 7)
          {
            return v3;
          }

          return 16;
        }

        return 8;
      }

      return 4;
    }
  }

  return 0;
}

uint64_t ot::Mac::Frame::GetFcsSize(ot::Mac::Frame *this)
{
  return 2;
}

{
  return ot::Mac::Frame::GetFcsSize(this);
}

uint64_t ot::Mac::Frame::ValidatePsdu(ot::Mac::Frame *this)
{
  v3[4] = 0;
  *v3 = ot::Mac::Frame::FindPayloadIndex(this);
  if (v3[0] == 255)
  {
    *&v3[1] = 6;
  }

  else if ((v3[0] + ot::Mac::Frame::GetFooterLength(this)) > *(this + 4))
  {
    *&v3[1] = 6;
  }

  return *&v3[1];
}

uint64_t ot::Mac::Frame::FindPayloadIndex(ot::Mac::Frame *this)
{
  v5 = ot::Mac::Frame::SkipSecurityHeaderIndex(this);
  if (v5 != 255)
  {
    if (ot::Mac::Frame::IsIePresent(this))
    {
      FooterLength = ot::Mac::Frame::GetFooterLength(this);
      while (1)
      {
        v3 = (*this + v5);
        v6 = v5 + 2;
        if (v6 + FooterLength > *(this + 4))
        {
          LOBYTE(v5) = -1;
          return v5;
        }

        v5 = v6 + ot::Mac::HeaderIe::GetLength(v3);
        if (v5 + FooterLength > *(this + 4))
        {
          break;
        }

        if (ot::Mac::HeaderIe::GetId(v3) == 127 || v5 + FooterLength >= *(this + 4))
        {
          goto LABEL_10;
        }
      }

      LOBYTE(v5) = -1;
    }

    else
    {
LABEL_10:
      if (!ot::Mac::Frame::IsVersion2015(this) && (ot::Mac::Frame::GetFrameControlField(this) & 7) == 3)
      {
        LOBYTE(v5) = v5 + 1;
      }
    }
  }

  return v5;
}

uint64_t ot::Mac::Frame::GetFooterLength(ot::Mac::Frame *this)
{
  FcsSize = ot::Mac::Frame::GetFcsSize(this);
  SecurityHeaderIndex = ot::Mac::Frame::FindSecurityHeaderIndex(this);
  if (SecurityHeaderIndex != 255)
  {
    FcsSize += ot::Mac::Frame::CalculateMicSize(*(*this + SecurityHeaderIndex));
  }

  return FcsSize;
}

uint64_t ot::Mac::Frame::IsWakeupFrame(ot::Mac::Frame *this)
{
  v11 = this;
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  v9 = 0;
  v8 = 0;
  HeaderIeIndex = 0;
  HeaderIe = 0;
  ThreadIe = 0;
  ot::Mac::Address::Address(v4);
  if (!ot::Mac::Frame::GetKeyIdMode(this, &v8) && v8 == 16 && (FrameControlField & 7) == 5 && (FrameControlField & 0x4000) == 0)
  {
    HeaderIe = ot::Mac::Frame::GetHeaderIe(this, 0x1Du);
    if (HeaderIe)
    {
      ThreadIe = ot::Mac::Frame::GetThreadIe(this, 1u);
      if (ThreadIe)
      {
        HeaderIeIndex = ot::Mac::Frame::FindHeaderIeIndex(this);
        v2 = *this + HeaderIeIndex + 11;
        if (v2 == ot::Mac::Frame::GetFooter(this) && !ot::Mac::Frame::GetSrcAddr(this, v4) && ot::Mac::Address::IsExtended(v4))
        {
          v9 = 1;
        }
      }
    }
  }

  return v9 & 1;
}

uint64_t ot::Mac::Frame::GetKeyIdMode(ot::Mac::Frame *this, unsigned __int8 *a2)
{
  v4[4] = 0;
  *v4 = ot::Mac::Frame::FindSecurityHeaderIndex(this);
  if (v4[0] == 255)
  {
    *&v4[1] = 6;
  }

  else
  {
    *a2 = *(*this + v4[0]) & 0x18;
  }

  return *&v4[1];
}

uint64_t ot::Mac::Frame::GetHeaderIe(ot::Mac::Frame *this, unsigned __int8 a2)
{
  HeaderIeIndex = ot::Mac::Frame::FindHeaderIeIndex(this);
  PayloadIndex = ot::Mac::Frame::FindPayloadIndex(this);
  v5 = 0;
  if (HeaderIeIndex != 255 && PayloadIndex != 255)
  {
    while (HeaderIeIndex <= PayloadIndex)
    {
      v4 = (*this + HeaderIeIndex);
      if (ot::Mac::HeaderIe::GetId(v4) == a2)
      {
        return *this + HeaderIeIndex;
      }

      HeaderIeIndex += ot::Mac::HeaderIe::GetLength(v4) + 2;
    }
  }

  return v5;
}

uint64_t ot::Mac::Frame::GetThreadIe(ot::Mac::Frame *this, unsigned __int8 a2)
{
  HeaderIeIndex = ot::Mac::Frame::FindHeaderIeIndex(this);
  PayloadIndex = ot::Mac::Frame::FindPayloadIndex(this);
  v6 = 0;
  if (HeaderIeIndex != 255 && PayloadIndex != 255)
  {
    while (HeaderIeIndex <= PayloadIndex)
    {
      v5 = (*this + HeaderIeIndex);
      if (!ot::Mac::HeaderIe::GetId(v5) && ot::Mac::VendorIeHeader::GetVendorOui((v5 + 2), v2) == 15382683 && ot::Mac::VendorIeHeader::GetSubType((v5 + 2)) == a2)
      {
        return *this + HeaderIeIndex;
      }

      HeaderIeIndex += ot::Mac::HeaderIe::GetLength(v5) + 2;
    }
  }

  return v6;
}

uint64_t ot::Mac::Frame::FindHeaderIeIndex(ot::Mac::Frame *this)
{
  if (ot::Mac::Frame::IsIePresent(this))
  {
    return ot::Mac::Frame::SkipSecurityHeaderIndex(this);
  }

  else
  {
    return -1;
  }
}

uint64_t ot::Mac::Frame::GetFooter(ot::Mac::Frame *this)
{
  v2 = *this;
  v3 = *(this + 4);
  return v2 + v3 - ot::Mac::Frame::GetFooterLength(this);
}

uint64_t ot::Mac::Frame::GetSrcAddr(ot::Mac::Frame *this, ot::Mac::Address *a2)
{
  v8[4] = 0;
  *v8 = ot::Mac::Frame::FindSrcAddrIndex(this);
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  if (v8[0] == 255)
  {
    *&v8[1] = 6;
  }

  else
  {
    FcfSrcAddr = ot::Mac::Frame::GetFcfSrcAddr(FrameControlField);
    if (FcfSrcAddr)
    {
      if (FcfSrcAddr == 2)
      {
        Uint16 = ot::LittleEndian::ReadUint16((*this + v8[0]), v2);
        ot::Mac::Address::SetShort(a2, Uint16);
      }

      else if (FcfSrcAddr == 3)
      {
        ot::Mac::Address::SetExtended(a2, (*this + v8[0]), 1);
      }

      else
      {
        *&v8[1] = 6;
      }
    }

    else
    {
      ot::Mac::Address::SetNone(a2);
    }
  }

  return *&v8[1];
}

BOOL ot::Mac::Frame::SetAckRequest(ot::Mac::Frame *this, char a2)
{
  result = ot::Mac::Frame::IsMultipurpose(**this);
  if (result)
  {
    if ((**this & 8) == 0)
    {
      __assert_rtn("SetAckRequest", "mac_frame.cpp", 303, "mPsdu[0] & kMpFcfLongFrame");
    }

    if (a2)
    {
      *(*this + 1) |= 0x40u;
    }

    else
    {
      *(*this + 1) &= ~0x40u;
    }
  }

  else if (a2)
  {
    **this |= 0x20u;
  }

  else
  {
    **this &= ~0x20u;
  }

  return result;
}

BOOL ot::Mac::Frame::SetFramePending(ot::Mac::Frame *this, char a2)
{
  result = ot::Mac::Frame::IsMultipurpose(**this);
  if (result)
  {
    if ((**this & 8) == 0)
    {
      __assert_rtn("SetFramePending", "mac_frame.cpp", 333, "mPsdu[0] & kMpFcfLongFrame");
    }

    if (a2)
    {
      *(*this + 1) |= 8u;
    }

    else
    {
      *(*this + 1) &= ~8u;
    }
  }

  else if (a2)
  {
    **this |= 0x10u;
  }

  else
  {
    **this &= ~0x10u;
  }

  return result;
}

uint64_t ot::Mac::Frame::SetIePresent(ot::Mac::Frame *this, char a2)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  if (a2)
  {
    v6 = FrameControlField | 0x200;
  }

  else
  {
    v6 = FrameControlField & 0xFDFF;
  }

  return ot::Mac::Frame::SetFrameControlField(this, v6, v2);
}

uint64_t ot::Mac::Frame::SkipDsnIndex(ot::Mac::Frame *this)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  FcfSize = ot::Mac::Frame::GetFcfSize(FrameControlField);
  if (ot::Mac::Frame::IsDsnPresent(FrameControlField))
  {
    ++FcfSize;
  }

  return FcfSize;
}

BOOL ot::Mac::Frame::IsDsnPresent(ot::Mac::Frame *this)
{
  return ot::Mac::Frame::GetFcfBit(this, 256, 1024) == 0;
}

{
  return ot::Mac::Frame::IsDsnPresent(this);
}

uint64_t ot::Mac::Frame::FindDstPanIdIndex(ot::Mac::Frame *this)
{
  if (ot::Mac::Frame::IsDstPanIdPresent(this))
  {
    return ot::Mac::Frame::SkipDsnIndex(this);
  }

  else
  {
    return -1;
  }
}

BOOL ot::Mac::Frame::IsDstAddrPresent(ot::Mac::Frame *this)
{
  return ot::Mac::Frame::GetFcfBit(this, 3072, 48) != 0;
}

{
  return ot::Mac::Frame::IsDstAddrPresent(this);
}

uint64_t ot::Mac::Frame::GetDstPanId(ot::Mac::Frame *this, unsigned __int16 *a2)
{
  v5[4] = 0;
  *v5 = ot::Mac::Frame::FindDstPanIdIndex(this);
  if (v5[0] == 255)
  {
    *&v5[1] = 6;
  }

  else
  {
    *a2 = ot::LittleEndian::ReadUint16((*this + v5[0]), v2);
  }

  return *&v5[1];
}

uint64_t ot::LittleEndian::ReadUint16(ot::LittleEndian *this, const unsigned __int8 *a2)
{
  return (*this | (*(this + 1) << 8));
}

{
  return ot::LittleEndian::ReadUint16(this, a2);
}

uint64_t ot::Mac::Frame::SetDstPanId(ot::Mac::Frame *this, unsigned __int16 a2)
{
  DstPanIdIndex = ot::Mac::Frame::FindDstPanIdIndex(this);
  if (DstPanIdIndex == 255)
  {
    __assert_rtn("SetDstPanId", "mac_frame.cpp", 475, "index != kInvalidIndex");
  }

  return ot::LittleEndian::WriteUint16(a2, (*this + DstPanIdIndex), v2);
}

uint64_t ot::Mac::Frame::FindDstAddrIndex(ot::Mac::Frame *this)
{
  v5 = ot::Mac::Frame::SkipDsnIndex(this);
  IsDstPanIdPresent = ot::Mac::Frame::IsDstPanIdPresent(this);
  v2 = 2;
  if (!IsDstPanIdPresent)
  {
    v2 = 0;
  }

  return (v2 + v5);
}

uint64_t ot::Mac::Frame::GetDstAddr(ot::Mac::Frame *this, ot::Mac::Address *a2)
{
  v8[4] = 0;
  *v8 = ot::Mac::Frame::FindDstAddrIndex(this);
  if (v8[0] == 255)
  {
    *&v8[1] = 6;
  }

  else
  {
    FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
    FcfDstAddr = ot::Mac::Frame::GetFcfDstAddr(FrameControlField);
    if (FcfDstAddr == 2)
    {
      Uint16 = ot::LittleEndian::ReadUint16((*this + v8[0]), v3);
      ot::Mac::Address::SetShort(a2, Uint16);
    }

    else if (FcfDstAddr == 3)
    {
      ot::Mac::Address::SetExtended(a2, (*this + v8[0]), 1);
    }

    else
    {
      ot::Mac::Address::SetNone(a2);
    }
  }

  return *&v8[1];
}

uint64_t ot::Mac::Frame::GetFcfDstAddr(ot::Mac::Frame *this)
{
  v2 = this;
  if (ot::Mac::Frame::IsMultipurpose(this))
  {
    return (v2 & 0x30) >> 4;
  }

  else
  {
    return (v2 & 0xC00) >> 10;
  }
}

{
  return ot::Mac::Frame::GetFcfDstAddr(this);
}

char *ot::Mac::Address::SetExtended(char *a1, void *a2, char a3)
{
  result = ot::Mac::ExtAddress::Set(a1, a2, a3);
  a1[8] = 2;
  return result;
}

{
  return ot::Mac::Address::SetExtended(a1, a2, a3);
}

uint64_t ot::Mac::Frame::SetDstAddr(ot::Mac::Frame *this, unsigned __int16 a2)
{
  if ((ot::Mac::Frame::GetFrameControlField(this) & 0xC00) != 0x800)
  {
    __assert_rtn("SetDstAddr", "mac_frame.cpp", 513, "(GetFrameControlField() & kFcfDstAddrMask) == kFcfDstAddrShort");
  }

  v5 = *this;
  DstAddrIndex = ot::Mac::Frame::FindDstAddrIndex(this);
  return ot::LittleEndian::WriteUint16(a2, (v5 + DstAddrIndex), v3);
}

char *ot::Mac::Frame::SetDstAddr(ot::Mac::Frame *this, const ot::Mac::ExtAddress *a2)
{
  DstAddrIndex = ot::Mac::Frame::FindDstAddrIndex(this);
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  if (ot::Mac::Frame::GetFcfDstAddr(FrameControlField) != 3)
  {
    __assert_rtn("SetDstAddr", "mac_frame.cpp", 521, "GetFcfDstAddr(GetFrameControlField()) == kFcfAddrExt");
  }

  if (DstAddrIndex == 255)
  {
    __assert_rtn("SetDstAddr", "mac_frame.cpp", 522, "index != kInvalidIndex");
  }

  return ot::Mac::ExtAddress::CopyTo(a2, (*this + DstAddrIndex), 1);
}

char *ot::Mac::ExtAddress::CopyTo(void *a1, char *a2, char a3)
{
  return ot::Mac::ExtAddress::CopyAddress(a2, a1, a3);
}

{
  return ot::Mac::ExtAddress::CopyTo(a1, a2, a3);
}

char *ot::Mac::Frame::SetDstAddr(ot::Mac::Frame *this, const ot::Mac::Address *a2)
{
  Type = ot::Mac::Address::GetType(a2);
  if (Type == 1)
  {
    Short = ot::Mac::Address::GetShort(a2);
    return ot::Mac::Frame::SetDstAddr(this, Short);
  }

  else
  {
    if (Type != 2)
    {
      __assert_rtn("SetDstAddr", "mac_frame.cpp", 540, "false");
    }

    ot::Mac::Address::GetExtended(a2);
    return ot::Mac::Frame::SetDstAddr(this, v4);
  }
}

uint64_t ot::Mac::Frame::FindSrcPanIdIndex(ot::Mac::Frame *this)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  if (ot::Mac::Frame::IsSrcPanIdPresent(FrameControlField))
  {
    v4 = ot::Mac::Frame::SkipDsnIndex(this);
    if (ot::Mac::Frame::IsDstPanIdPresent(FrameControlField))
    {
      v4 += 2;
    }

    FcfDstAddr = ot::Mac::Frame::GetFcfDstAddr(FrameControlField);
    if (FcfDstAddr == 2)
    {
      v4 += 2;
    }

    else if (FcfDstAddr == 3)
    {
      v4 += 8;
    }
  }

  else
  {
    return -1;
  }

  return v4;
}

BOOL ot::Mac::Frame::IsSrcAddrPresent(ot::Mac::Frame *this)
{
  return ot::Mac::Frame::GetFcfBit(this, 49152, 192) != 0;
}

{
  return ot::Mac::Frame::IsSrcAddrPresent(this);
}

uint64_t ot::Mac::Frame::GetSrcPanId(ot::Mac::Frame *this, unsigned __int16 *a2)
{
  v5[4] = 0;
  *v5 = ot::Mac::Frame::FindSrcPanIdIndex(this);
  if (v5[0] == 255)
  {
    *&v5[1] = 6;
  }

  else
  {
    *a2 = ot::LittleEndian::ReadUint16((*this + v5[0]), v2);
  }

  return *&v5[1];
}

uint64_t ot::Mac::Frame::SetSrcPanId(ot::Mac::Frame *this, unsigned __int16 a2)
{
  v5[4] = 0;
  *v5 = ot::Mac::Frame::FindSrcPanIdIndex(this);
  if (v5[0] == 255)
  {
    *&v5[1] = 6;
  }

  else
  {
    ot::LittleEndian::WriteUint16(a2, (*this + v5[0]), v2);
  }

  return *&v5[1];
}

uint64_t ot::Mac::Frame::FindSrcAddrIndex(ot::Mac::Frame *this)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  v4 = ot::Mac::Frame::SkipDsnIndex(this);
  if (ot::Mac::Frame::IsDstPanIdPresent(FrameControlField))
  {
    v4 += 2;
  }

  FcfDstAddr = ot::Mac::Frame::GetFcfDstAddr(FrameControlField);
  if (FcfDstAddr == 2)
  {
    v4 += 2;
  }

  else if (FcfDstAddr == 3)
  {
    v4 += 8;
  }

  if (ot::Mac::Frame::IsSrcPanIdPresent(FrameControlField))
  {
    v4 += 2;
  }

  return v4;
}

uint64_t ot::Mac::Frame::GetFcfSrcAddr(ot::Mac::Frame *this)
{
  v2 = this;
  if (ot::Mac::Frame::IsMultipurpose(this))
  {
    return (v2 & 0xC0) >> 6;
  }

  else
  {
    return (v2 & 0xC000) >> 14;
  }
}

{
  return ot::Mac::Frame::GetFcfSrcAddr(this);
}

uint64_t ot::Mac::Frame::SetSrcAddr(ot::Mac::Frame *this, unsigned __int16 a2)
{
  SrcAddrIndex = ot::Mac::Frame::FindSrcAddrIndex(this);
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  if (ot::Mac::Frame::GetFcfSrcAddr(FrameControlField) != 2)
  {
    __assert_rtn("SetSrcAddr", "mac_frame.cpp", 711, "GetFcfSrcAddr(GetFrameControlField()) == kFcfAddrShort");
  }

  if (SrcAddrIndex == 255)
  {
    __assert_rtn("SetSrcAddr", "mac_frame.cpp", 712, "index != kInvalidIndex");
  }

  return ot::LittleEndian::WriteUint16(a2, (*this + SrcAddrIndex), v3);
}

char *ot::Mac::Frame::SetSrcAddr(ot::Mac::Frame *this, const ot::Mac::ExtAddress *a2)
{
  SrcAddrIndex = ot::Mac::Frame::FindSrcAddrIndex(this);
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  if (ot::Mac::Frame::GetFcfSrcAddr(FrameControlField) != 3)
  {
    __assert_rtn("SetSrcAddr", "mac_frame.cpp", 721, "GetFcfSrcAddr(GetFrameControlField()) == kFcfAddrExt");
  }

  if (SrcAddrIndex == 255)
  {
    __assert_rtn("SetSrcAddr", "mac_frame.cpp", 722, "index != kInvalidIndex");
  }

  return ot::Mac::ExtAddress::CopyTo(a2, (*this + SrcAddrIndex), 1);
}

char *ot::Mac::Frame::SetSrcAddr(ot::Mac::Frame *this, const ot::Mac::Address *a2)
{
  Type = ot::Mac::Address::GetType(a2);
  if (Type == 1)
  {
    Short = ot::Mac::Address::GetShort(a2);
    return ot::Mac::Frame::SetSrcAddr(this, Short);
  }

  else
  {
    if (Type != 2)
    {
      __assert_rtn("SetSrcAddr", "mac_frame.cpp", 740, "false");
    }

    ot::Mac::Address::GetExtended(a2);
    return ot::Mac::Frame::SetSrcAddr(this, v4);
  }
}

uint64_t ot::Mac::Frame::GetSecurityControlField(ot::Mac::Frame *this, unsigned __int8 *a2)
{
  v4[4] = 0;
  *v4 = ot::Mac::Frame::FindSecurityHeaderIndex(this);
  if (v4[0] == 255)
  {
    *&v4[1] = 6;
  }

  else
  {
    *a2 = *(*this + v4[0]);
  }

  return *&v4[1];
}

uint64_t ot::Mac::Frame::FindSecurityHeaderIndex(ot::Mac::Frame *this)
{
  if (*(this + 4) > 2u)
  {
    if (ot::Mac::Frame::GetSecurityEnabled(this))
    {
      return ot::Mac::Frame::SkipAddrFieldIndex(this);
    }

    else
    {
      return -1;
    }
  }

  else
  {
    return -1;
  }
}

uint64_t ot::Mac::Frame::SetSecurityControlField(ot::Mac::Frame *this, char a2)
{
  result = ot::Mac::Frame::FindSecurityHeaderIndex(this);
  if (result == 255)
  {
    __assert_rtn("SetSecurityControlField", "mac_frame.cpp", 761, "index != kInvalidIndex");
  }

  *(*this + result) = a2;
  return result;
}

uint64_t ot::Mac::Frame::SkipAddrFieldIndex(ot::Mac::Frame *this)
{
  if ((ot::Mac::Frame::GetFcsSize(this) + 2) <= *(this + 4))
  {
    FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
    return ot::Mac::Frame::CalculateAddrFieldSize(FrameControlField);
  }

  else
  {
    return -1;
  }
}

uint64_t ot::Mac::Frame::GetSecurityLevel(ot::Mac::Frame *this, unsigned __int8 *a2)
{
  v4[4] = 0;
  *v4 = ot::Mac::Frame::FindSecurityHeaderIndex(this);
  if (v4[0] == 255)
  {
    *&v4[1] = 6;
  }

  else
  {
    *a2 = *(*this + v4[0]) & 7;
  }

  return *&v4[1];
}

uint64_t ot::Mac::Frame::GetFrameCounter(ot::Mac::Frame *this, unsigned int *a2)
{
  v5[4] = 0;
  *v5 = ot::Mac::Frame::FindSecurityHeaderIndex(this);
  if (v5[0] == 255)
  {
    *&v5[1] = 6;
  }

  else
  {
    *a2 = ot::LittleEndian::ReadUint32((*this + (v5[0] + 1)), v2);
  }

  return *&v5[1];
}

uint64_t ot::LittleEndian::ReadUint32(ot::LittleEndian *this, const unsigned __int8 *a2)
{
  return (*(this + 1) << 8) | *this | (*(this + 2) << 16) | (*(this + 3) << 24);
}

{
  return ot::LittleEndian::ReadUint32(this, a2);
}

uint64_t ot::Mac::Frame::SetFrameCounter(ot::Mac::Frame *this, unsigned int a2)
{
  SecurityHeaderIndex = ot::Mac::Frame::FindSecurityHeaderIndex(this);
  if (SecurityHeaderIndex == 255)
  {
    __assert_rtn("SetFrameCounter", "mac_frame.cpp", 824, "index != kInvalidIndex");
  }

  ot::LittleEndian::WriteUint32(a2, *this + (SecurityHeaderIndex + 1), v2);
  return ot::Mac::TxFrame::SetIsHeaderUpdated(this, 1);
}

uint64_t ot::LittleEndian::WriteUint32(uint64_t this, uint64_t a2, unsigned __int8 *a3)
{
  *a2 = this;
  *(a2 + 1) = this >> 8;
  *(a2 + 3) = BYTE3(this);
  return this;
}

{
  return ot::LittleEndian::WriteUint32(this, a2, a3);
}

uint64_t ot::Mac::Frame::GetKeySource(ot::Mac::Frame *this)
{
  SecurityHeaderIndex = ot::Mac::Frame::FindSecurityHeaderIndex(this);
  if (SecurityHeaderIndex == 255)
  {
    __assert_rtn("GetKeySource", "mac_frame.cpp", 838, "index != kInvalidIndex");
  }

  return *this + SecurityHeaderIndex + 5;
}

uint64_t ot::Mac::Frame::GetKeySourceLength(ot::Mac::Frame *this)
{
  v2 = 0;
  if (this)
  {
    switch(this)
    {
      case 8u:
        return 0;
      case 0x10u:
        return 4;
      case 0x18u:
        return 8;
    }
  }

  else
  {
    return 0;
  }

  return v2;
}

void *ot::Mac::Frame::SetKeySource(ot::Mac::Frame *this, const unsigned __int8 *a2)
{
  SecurityHeaderIndex = ot::Mac::Frame::FindSecurityHeaderIndex(this);
  if (SecurityHeaderIndex == 255)
  {
    __assert_rtn("SetKeySource", "mac_frame.cpp", 874, "index != kInvalidIndex");
  }

  KeySourceLength = ot::Mac::Frame::GetKeySourceLength((*(*this + SecurityHeaderIndex) & 0x18));
  return memcpy((*this + SecurityHeaderIndex + 5), a2, KeySourceLength);
}

uint64_t ot::Mac::Frame::GetKeyId(ot::Mac::Frame *this, unsigned __int8 *a2)
{
  v5 = 0;
  SecurityHeaderIndex = ot::Mac::Frame::FindSecurityHeaderIndex(this);
  if (SecurityHeaderIndex == 255)
  {
    return 6;
  }

  else
  {
    *a2 = *(*this + SecurityHeaderIndex + 5 + ot::Mac::Frame::GetKeySourceLength((*(*this + SecurityHeaderIndex) & 0x18)));
  }

  return v5;
}

uint64_t ot::Mac::Frame::SetKeyId(ot::Mac::Frame *this, char a2)
{
  SecurityHeaderIndex = ot::Mac::Frame::FindSecurityHeaderIndex(this);
  if (SecurityHeaderIndex == 255)
  {
    __assert_rtn("SetKeyId", "mac_frame.cpp", 902, "index != kInvalidIndex");
  }

  result = ot::Mac::Frame::GetKeySourceLength((*(*this + SecurityHeaderIndex) & 0x18));
  *(*this + SecurityHeaderIndex + 5 + result) = a2;
  return result;
}

uint64_t ot::Mac::Frame::GetCommandId(ot::Mac::Frame *this, unsigned __int8 *a2)
{
  v6[4] = 0;
  *v6 = ot::Mac::Frame::FindPayloadIndex(this);
  if (v6[0] == 255)
  {
    *&v6[1] = 6;
  }

  else
  {
    v4 = *this;
    if (ot::Mac::Frame::IsVersion2015(this))
    {
      v3 = v6[0];
    }

    else
    {
      v3 = v6[0] - 1;
    }

    *a2 = *(v4 + v3);
  }

  return *&v6[1];
}

uint64_t ot::Mac::Frame::SetCommandId(ot::Mac::Frame *this, char a2)
{
  v6[4] = 0;
  *v6 = ot::Mac::Frame::FindPayloadIndex(this);
  if (v6[0] == 255)
  {
    *&v6[1] = 6;
  }

  else
  {
    v4 = *this;
    if (ot::Mac::Frame::IsVersion2015(this))
    {
      v3 = v6[0];
    }

    else
    {
      v3 = v6[0] - 1;
    }

    *(v4 + v3) = a2;
  }

  return *&v6[1];
}

BOOL ot::Mac::Frame::IsDataRequestCommand(ot::Mac::Frame *this)
{
  v5 = this;
  v4 = 0;
  v3 = 0;
  if (ot::Mac::Frame::GetType(this) == 3 && !ot::Mac::Frame::GetCommandId(this, &v3))
  {
    return v3 == 4;
  }

  return v4;
}

uint64_t ot::Mac::Frame::GetHeaderLength(ot::Mac::Frame *this)
{
  Payload = ot::Mac::Frame::GetPayload(this);
  v2 = __OFSUB__(Payload, *this);
  return (Payload - *this);
}

uint64_t ot::Mac::Frame::GetPayload(ot::Mac::Frame *this)
{
  PayloadIndex = ot::Mac::Frame::FindPayloadIndex(this);
  if (PayloadIndex == 255)
  {
    return 0;
  }

  else
  {
    return *this + PayloadIndex;
  }
}

uint64_t ot::Mac::Frame::GetMaxPayloadLength(ot::Mac::Frame *this)
{
  Mtu = ot::Mac::Frame::GetMtu(this);
  HeaderLength = ot::Mac::Frame::GetHeaderLength(this);
  return (Mtu - (HeaderLength + ot::Mac::Frame::GetFooterLength(this)));
}

uint64_t ot::Mac::Frame::GetPayloadLength(ot::Mac::Frame *this)
{
  v3 = *(this + 4);
  HeaderLength = ot::Mac::Frame::GetHeaderLength(this);
  return (v3 - (HeaderLength + ot::Mac::Frame::GetFooterLength(this)));
}

uint64_t ot::Mac::Frame::SetPayloadLength(ot::Mac::Frame *this, __int16 a2)
{
  HeaderLength = ot::Mac::Frame::GetHeaderLength(this);
  FooterLength = ot::Mac::Frame::GetFooterLength(this);
  result = HeaderLength;
  *(this + 4) = HeaderLength + FooterLength + a2;
  return result;
}

uint64_t ot::Mac::Frame::SkipSecurityHeaderIndex(ot::Mac::Frame *this)
{
  v4 = ot::Mac::Frame::SkipAddrFieldIndex(this);
  if (v4 != 255 && ot::Mac::Frame::GetSecurityEnabled(this))
  {
    if (v4 < *(this + 4))
    {
      v3 = ot::Mac::Frame::CalculateSecurityHeaderSize(*(*this + v4));
      if (v3 == 255)
      {
        return -1;
      }

      else
      {
        v4 += v3;
        if (v4 > *(this + 4))
        {
          return -1;
        }
      }
    }

    else
    {
      return -1;
    }
  }

  return v4;
}

uint64_t ot::Mac::Frame::CalculateAddrFieldSize(ot::Mac::Frame *this)
{
  v6 = this;
  FcfSize = ot::Mac::Frame::GetFcfSize(this);
  v5 = FcfSize + ot::Mac::Frame::IsDsnPresent(v6);
  if (ot::Mac::Frame::IsDstPanIdPresent(v6))
  {
    v5 += 2;
  }

  FcfDstAddr = ot::Mac::Frame::GetFcfDstAddr(v6);
  if (FcfDstAddr)
  {
    if (FcfDstAddr == 2)
    {
      v5 += 2;
    }

    else
    {
      if (FcfDstAddr != 3)
      {
        return -1;
      }

      v5 += 8;
    }
  }

  if (ot::Mac::Frame::IsSrcPanIdPresent(v6))
  {
    v5 += 2;
  }

  FcfSrcAddr = ot::Mac::Frame::GetFcfSrcAddr(v6);
  if (FcfSrcAddr)
  {
    if (FcfSrcAddr == 2)
    {
      v5 += 2;
    }

    else if (FcfSrcAddr == 3)
    {
      v5 += 8;
    }

    else
    {
      return -1;
    }
  }

  return v5;
}

BOOL ot::Mac::Frame::IsIePresent(ot::Mac::Frame *this)
{
  FrameControlField = ot::Mac::Frame::GetFrameControlField(this);
  return ot::Mac::Frame::IsIePresent(FrameControlField);
}

{
  return ot::Mac::Frame::GetFcfBit(this, 512, 0x8000) != 0;
}

{
  return ot::Mac::Frame::IsIePresent(this);
}

{
  return ot::Mac::Frame::IsIePresent(this);
}

uint64_t ot::Mac::HeaderIe::GetId(ot::Mac::HeaderIe *this)
{
  return (ot::LittleEndian::HostSwap16(*this) & 0x7F80) >> 7;
}

{
  return ot::Mac::HeaderIe::GetId(this);
}

uint64_t ot::Mac::VendorIeHeader::SetVendorOui(ot::Mac::VendorIeHeader *this, unsigned int a2, unsigned __int8 *a3)
{
  return ot::LittleEndian::WriteUint24(a2, this, a3);
}

{
  return ot::Mac::VendorIeHeader::SetVendorOui(this, a2, a3);
}

uint64_t ot::Mac::VendorIeHeader::SetSubType(uint64_t this, char a2)
{
  *(this + 3) = a2;
  return this;
}

{
  return ot::Mac::VendorIeHeader::SetSubType(this, a2);
}

uint64_t ot::Mac::ConnectionIe::Init(ot::Mac::ConnectionIe *this, uint64_t a2, unsigned __int8 *a3)
{
  ot::Mac::VendorIeHeader::SetVendorOui(this, 0xEAB89Bu, a3);
  result = ot::Mac::VendorIeHeader::SetSubType(this, 1);
  *(this + 4) = 0;
  return result;
}

{
  return ot::Mac::ConnectionIe::Init(this, a2, a3);
}

uint64_t ot::Mac::VendorIeHeader::GetVendorOui(ot::Mac::VendorIeHeader *this, const unsigned __int8 *a2)
{
  return ot::LittleEndian::ReadUint24(this, a2);
}

{
  return ot::Mac::VendorIeHeader::GetVendorOui(this, a2);
}

uint64_t ot::Mac::VendorIeHeader::GetSubType(ot::Mac::VendorIeHeader *this)
{
  return *(this + 3);
}

{
  return ot::Mac::VendorIeHeader::GetSubType(this);
}

void ot::Mac::Frame::SetCslIe(ot::Mac::Frame *this, unsigned __int16 a2, unsigned __int16 a3)
{
  ot::Mac::Frame::GetHeaderIe(this, 0x1Au);
  v4 = v3;
  if (v3)
  {
    ot::Mac::CslIe::SetPeriod((v3 + 2), a2);
    ot::Mac::CslIe::SetPhase((v4 + 2), a3);
  }
}

uint64_t ot::Mac::CslIe::SetPeriod(ot::Mac::CslIe *this, unsigned __int16 a2)
{
  result = ot::LittleEndian::HostSwap16(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::Mac::CslIe::SetPeriod(this, a2);
}

uint64_t ot::Mac::CslIe::SetPhase(ot::Mac::CslIe *this, unsigned __int16 a2)
{
  result = ot::LittleEndian::HostSwap16(a2);
  *this = result;
  return result;
}

{
  return ot::Mac::CslIe::SetPhase(this, a2);
}

void ot::Mac::Frame::SetEnhAckProbingIe(ot::Mac::Frame *this, const unsigned __int8 *a2, unsigned __int8 a3)
{
  ot::Mac::Frame::GetThreadIe(this, 0);
  if (v3)
  {
    memcpy((v3 + 6), a2, a3);
  }
}

void ot::Mac::Frame::GetThreadIe(ot::Mac::Frame *this, unsigned __int8 a2)
{
  ot::AsConst<ot::Mac::Frame>();
  ot::Mac::Frame::GetThreadIe(v2, a2);
  ot::AsNonConst<unsigned char>();
}

{
  ot::Mac::Frame::GetThreadIe(this, a2);
}

void *ot::Mac::TxFrame::CopyFrom(ot::Mac::TxFrame *this, const void **a2)
{
  v5 = *this;
  v4 = *(this + 3);
  memcpy(this, a2, 0x40uLL);
  *this = v5;
  *(this + 3) = v4;
  return memcpy(*this, *a2, *(a2 + 4));
}

void ot::Mac::TxFrame::ProcessTransmitAesCcm(ot::Mac::TxFrame *this, const ot::Mac::ExtAddress *a2)
{
  v18 = this;
  *&v17[5] = a2;
  *&v17[1] = 0;
  v17[0] = 0;
  ot::Crypto::AesCcm::AesCcm(v19);
  if (ot::Mac::Frame::GetSecurityEnabled(this) && !ot::Mac::Frame::GetSecurityLevel(this, v17) && !ot::Mac::Frame::GetFrameCounter(this, &v17[1]))
  {
    ot::Crypto::AesCcm::GenerateNonce(*&v17[5], *&v17[1], v17[0], v20, v2);
    AesKey = ot::Mac::TxFrame::GetAesKey(this);
    ot::Crypto::AesCcm::SetKey(v19, AesKey);
    FooterLength = ot::Mac::Frame::GetFooterLength(this);
    v16 = FooterLength - ot::Mac::Frame::GetFcsSize(this);
    HeaderLength = ot::Mac::Frame::GetHeaderLength(this);
    PayloadLength = ot::Mac::Frame::GetPayloadLength(this);
    ot::Crypto::AesCcm::Init(v19, HeaderLength, PayloadLength, v16, v20, 0xDu);
    Header = ot::Mac::Frame::GetHeader(this);
    v5 = ot::Mac::Frame::GetHeaderLength(this);
    ot::Crypto::AesCcm::Header(v19, Header, v5);
    ot::Mac::Frame::GetPayload(this);
    v13 = v6;
    ot::Mac::Frame::GetPayload(this);
    v14 = v7;
    v8 = ot::Mac::Frame::GetPayloadLength(this);
    ot::Crypto::AesCcm::Payload(v19, v13, v14, v8, 0);
    ot::Mac::Frame::GetFooter(this);
    ot::Crypto::AesCcm::Finalize(v19, v9);
    ot::Mac::TxFrame::SetIsSecurityProcessed(this, 1);
  }

  ot::Crypto::AesCcm::~AesCcm(v19);
}

ot::Crypto::AesCcm *ot::Crypto::AesCcm::AesCcm(ot::Crypto::AesCcm *this)
{
  ot::Crypto::AesCcm::AesCcm(this);
  return this;
}

{
  ot::Crypto::AesEcb::AesEcb(this);
  return this;
}

uint64_t ot::Mac::TxFrame::GetAesKey(ot::Mac::TxFrame *this)
{
  return *(this + 2);
}

{
  return ot::Mac::TxFrame::GetAesKey(this);
}

void ot::Mac::Frame::GetFooter(ot::Mac::Frame *this)
{
  ot::AsConst<ot::Mac::Frame>();
  ot::Mac::Frame::GetFooter(v1);
  ot::AsNonConst<unsigned char>();
}

{
  ot::Mac::Frame::GetFooter(this);
}

void ot::Crypto::AesCcm::~AesCcm(ot::Crypto::AesCcm *this)
{
  ot::Crypto::AesCcm::~AesCcm(this);
}

{
  ot::Crypto::AesEcb::~AesEcb(this);
}

uint64_t ot::Mac::TxFrame::GenerateImmAck(ot::Mac::TxFrame *this, const ot::Mac::RxFrame *a2, char a3)
{
  v6 = ot::Mac::Frame::GetVersion(a2) | 2;
  *(this + 10) = *(a2 + 10);
  ot::ClearAllBytes<otRadioFrame::{unnamed type#1}::{unnamed type#1}>(this + 16);
  if (a3)
  {
    v6 |= 0x10u;
  }

  ot::LittleEndian::WriteUint16(v6, *this, v3);
  result = ot::Mac::Frame::GetSequence(a2);
  *(*this + 2) = result;
  *(this + 4) = 5;
  return result;
}

void *ot::ClearAllBytes<otRadioFrame::{unnamed type#1}::{unnamed type#1}>(void *a1)
{
  return memset(a1, 0, 0x30uLL);
}

{
  return ot::ClearAllBytes<otRadioFrame::{unnamed type#1}::{unnamed type#1}>(a1);
}

uint64_t ot::Mac::TxFrame::GenerateEnhAck(ot::Mac::TxFrame *this, const ot::Mac::RxFrame *a2, char a3, const unsigned __int8 *a4, unsigned __int8 a5)
{
  v23 = this;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  DstAddr = 0;
  ot::Mac::Address::Address(v17);
  v16 = 0;
  ot::Mac::Addresses::Addresses(v14);
  ot::Mac::PanIds::PanIds(v13);
  v12 = 0;
  v11 = 0;
  if (!ot::Mac::Frame::IsVersion2015(v22))
  {
    return 6;
  }

  if (!ot::Mac::Frame::GetAckRequest(v22))
  {
    return 6;
  }

  DstAddr = ot::Mac::Frame::GetDstAddr(v22, v17);
  if (DstAddr)
  {
    return DstAddr;
  }

  if (ot::Mac::Address::IsNone(v17) || ot::Mac::Address::IsBroadcast(v17))
  {
    return 6;
  }

  DstAddr = ot::Mac::Frame::GetSrcAddr(v22, v15);
  if (DstAddr)
  {
    return DstAddr;
  }

  if (ot::Mac::Address::IsNone(v15))
  {
    return 6;
  }

  if (ot::Mac::Frame::GetSecurityEnabled(v22))
  {
    DstAddr = ot::Mac::Frame::GetSecurityLevel(v22, &v12);
    if (DstAddr)
    {
      return DstAddr;
    }

    if (v12 != 5)
    {
      return 6;
    }

    DstAddr = ot::Mac::Frame::GetKeyIdMode(v22, &v11);
    if (DstAddr)
    {
      return DstAddr;
    }
  }

  if (ot::Mac::Frame::IsSrcPanIdPresent(v22))
  {
    DstAddr = ot::Mac::Frame::GetSrcPanId(v22, &v16);
    if (DstAddr)
    {
      return DstAddr;
    }

    goto LABEL_22;
  }

  if (ot::Mac::Frame::IsDstPanIdPresent(v22))
  {
    DstAddr = ot::Mac::Frame::GetDstPanId(v22, &v16);
    if (DstAddr)
    {
      return DstAddr;
    }

LABEL_22:
    ot::Mac::PanIds::SetDestination(v13, v16);
  }

  *(this + 10) = *(v22 + 10);
  ot::ClearAllBytes<otRadioFrame::{unnamed type#1}::{unnamed type#1}>(this + 16);
  ot::Mac::Frame::InitMacHeader(this, 2, 0x2000, v14, v13, v12, v11);
  ot::Mac::Frame::SetFramePending(this, v21 & 1);
  ot::Mac::Frame::SetIePresent(this, v19 != 0);
  Sequence = ot::Mac::Frame::GetSequence(v22);
  ot::Mac::Frame::SetSequence(this, Sequence);
  if (ot::Mac::Frame::GetSecurityEnabled(v22))
  {
    v10 = 0;
    DstAddr = ot::Mac::Frame::GetKeyId(v22, &v10);
    if (DstAddr)
    {
      return DstAddr;
    }

    ot::Mac::Frame::SetKeyId(this, v10);
  }

  if (v19)
  {
    if (!v20)
    {
      __assert_rtn("GenerateEnhAck", "mac_frame.cpp", 1614, "aIeData != nullptr");
    }

    v8 = *this;
    HeaderIeIndex = ot::Mac::Frame::FindHeaderIeIndex(this);
    memcpy((v8 + HeaderIeIndex), v20, v19);
    *(this + 4) += v19;
  }

  return DstAddr;
}

uint64_t ot::Mac::TxFrame::GenerateWakeupFrame(ot::Mac::TxFrame *this, unsigned __int16 a2, const ot::Mac::Address *a3, const ot::Mac::Address *a4)
{
  v13 = this;
  v12 = a2;
  v11 = a3;
  *&v10[3] = a4;
  *&v10[1] = 0;
  v10[0] = -30963;
  v9 = 0;
  Type = ot::Mac::Address::GetType(a3);
  if (Type == 1)
  {
    v10[0] |= 0x20u;
  }

  else
  {
    if (Type != 2)
    {
      *&v10[1] = 7;
      return *&v10[1];
    }

    v10[0] |= 0x30u;
  }

  v6 = ot::Mac::Address::GetType(*&v10[3]);
  if (v6 == 1)
  {
    v10[0] |= 0x80u;
  }

  else
  {
    if (v6 != 2)
    {
      *&v10[1] = 7;
      return *&v10[1];
    }

    v10[0] |= 0xC0u;
  }

  *(this + 4) = ot::Mac::Frame::CalculateAddrFieldSize(v10[0]);
  if (*(this + 4) == 255)
  {
    __assert_rtn("GenerateWakeupFrame", "mac_frame.cpp", 1660, "mLength != kInvalidSize");
  }

  ot::LittleEndian::WriteUint16(v10[0], *this, v4);
  *(*this + *(this + 4)) = 21;
  *(this + 4) += ot::Mac::Frame::CalculateSecurityHeaderSize(0x15);
  *(this + 4) += ot::Mac::Frame::CalculateMicSize(0x15);
  *(this + 4) += ot::Mac::Frame::GetFcsSize(this);
  ot::Mac::Frame::SetDstPanId(this, v12);
  ot::Mac::Frame::SetDstAddr(this, v11);
  ot::Mac::Frame::SetSrcAddr(this, *&v10[3]);
  *&v10[1] = ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::RendezvousTimeIe>(this, &v9);
  if (!*&v10[1])
  {
    *&v10[1] = ot::Mac::Frame::AppendHeaderIeAt<ot::Mac::ConnectionIe>(this, &v9);
  }

  return *&v10[1];
}