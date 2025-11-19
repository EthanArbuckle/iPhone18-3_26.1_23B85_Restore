uint64_t otPlatCryptoHkdfDeinit(uint64_t *a1)
{
  v3 = 0;
  if (a1)
  {
    if (*(a1 + 4) >= 0x20uLL)
    {
      v2 = *a1;
      *a1 = 0;
      *(a1 + 4) = 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v3;
}

uint64_t otPlatCryptoSha256Init(uint64_t *a1)
{
  v3 = 0;
  if (a1)
  {
    v2 = *a1;
    mbedtls_sha256_init();
  }

  else
  {
    return 7;
  }

  return v3;
}

uint64_t otPlatCryptoSha256Deinit(uint64_t a1)
{
  v2 = 0;
  if (a1)
  {
    if (*(a1 + 8) >= 0x68uLL)
    {
      mbedtls_sha256_free(*a1);
      *a1 = 0;
      *(a1 + 8) = 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v2;
}

uint64_t otPlatCryptoSha256Start(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 8) < 0x68uLL || mbedtls_sha256_starts(*a1, 0) != 0;
  }

  else
  {
    return 7;
  }
}

uint64_t otPlatCryptoSha256Update(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  if (a1)
  {
    return *(a1 + 8) < 0x68uLL || mbedtls_sha256_update(*a1, a2, a3) != 0;
  }

  else
  {
    return 7;
  }
}

uint64_t otPlatCryptoSha256Finish(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 8) < 0x68uLL || mbedtls_sha256_finish(*a1) != 0;
  }

  else
  {
    return 7;
  }
}

uint64_t otPlatCryptoRandomInit()
{
  mbedtls_entropy_init(&sEntropyContext);
  mbedtls_entropy_add_source(&sEntropyContext, handleMbedtlsEntropyPoll, 0, 16, 1);
  mbedtls_ctr_drbg_init(sCtrDrbgContext);
  result = mbedtls_ctr_drbg_seed(sCtrDrbgContext, mbedtls_entropy_func, &sEntropyContext, 0, 0);
  if (result)
  {
    __assert_rtn("otPlatCryptoRandomInit", "crypto_platform.cpp", 482, "rval == 0");
  }

  return result;
}

uint64_t handleMbedtlsEntropyPoll(void *a1, unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v5 = -60;
  if (!otPlatEntropyGet(a2, a3))
  {
    v5 = 0;
    if (a4)
    {
      *a4 = a3;
    }
  }

  return v5;
}

uint64_t otPlatCryptoPbkdf2GenerateKey(__int128 *a1, unsigned __int16 a2, const void *a3, unsigned __int16 a4, unsigned int a5, unsigned __int16 a6, char *a7)
{
  v16 = 0;
  v12 = 0;
  if (a4 > 0x22uLL)
  {
    __assert_rtn("otPlatCryptoPbkdf2GenerateKey", "crypto_platform.cpp", 695, "aSaltLen <= sizeof(prfInput)");
  }

  memcpy(__dst, a3, a4);
  if (a5 % 2)
  {
    __assert_rtn("otPlatCryptoPbkdf2GenerateKey", "crypto_platform.cpp", 697, "aIterationCounter % 2 == 0");
  }

  v18 = a5 / 2;
  while (a6)
  {
    ++v16;
    __dst[a4] = HIBYTE(v16);
    __dst[a4 + 1] = BYTE2(v16);
    __dst[a4 + 2] = BYTE1(v16);
    __dst[a4 + 3] = v16;
    v11 = mbedtls_aes_cmac_prf_128(a1, a2, __dst, a4 + 4, __src);
    if (v11)
    {
      return ot::Crypto::MbedTls::MapError(v11);
    }

    v11 = mbedtls_aes_cmac_prf_128(a1, a2, __src, 0x10uLL, v24);
    if (v11)
    {
      return ot::Crypto::MbedTls::MapError(v11);
    }

    for (i = 0; i < 2uLL; ++i)
    {
      __src[i] ^= v24[i];
    }

    for (j = 1; j < v18; ++j)
    {
      v11 = mbedtls_aes_cmac_prf_128(a1, a2, v24, 0x10uLL, v23);
      if (v11)
      {
        return ot::Crypto::MbedTls::MapError(v11);
      }

      v11 = mbedtls_aes_cmac_prf_128(a1, a2, v23, 0x10uLL, v24);
      if (v11)
      {
        return ot::Crypto::MbedTls::MapError(v11);
      }

      for (k = 0; k < 2uLL; ++k)
      {
        __src[k] ^= v24[k] ^ v23[k];
      }
    }

    v13 = ot::Min<unsigned short>(a6, 0x10u);
    memcpy(a7, __src, v13);
    a7 += v13;
    a6 -= v13;
  }

  return v12;
}

uint64_t ot::Instance::GetLogLevel(ot::Instance *this)
{
  return ot::Instance::sLogLevel;
}

{
  return ot::Instance::GetLogLevel(this);
}

uint64_t otLoggingSetLevel(int a1)
{
  v2 = 0;
  if (a1 > 5 || a1 < 0)
  {
    return 7;
  }

  else
  {
    ot::Instance::SetLogLevel(a1);
  }

  return v2;
}

void otLogPlatArgs(int a1, const char *a2, const char *a3, va_list a4)
{
  ot::String<(unsigned short)14>::String(v10);
  v5 = 0;
  if ((a1 & 0x80000000) == 0)
  {
    v5 = a1 <= 5;
  }

  if (!v5)
  {
    __assert_rtn("otLogPlatArgs", "logging_api.cpp", 203, "aLogLevel >= kLogLevelNone && aLogLevel <= kLogLevelDebg");
  }

  ot::StringWriter::Append(v10, "P-%s", a2);
  v4 = ot::String<(unsigned short)14>::AsCString(v10);
  ot::Logger::LogVarArgs(v4, a1, a3, a4);
}

uint64_t ot::String<(unsigned short)14>::String(uint64_t a1)
{
  ot::String<(unsigned short)14>::String(a1);
  return a1;
}

{
  ot::StringWriter::StringWriter(a1, (a1 + 12), 14);
  return a1;
}

uint64_t ot::String<(unsigned short)14>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)14>::AsCString(a1);
}

void otLogCli(int a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v9 = 0;
  if ((a1 & 0x80000000) == 0)
  {
    v9 = a1 <= 5;
  }

  if (!v9)
  {
    __assert_rtn("otLogCli", "logging_api.cpp", 222, "aLogLevel >= kLogLevelNone && aLogLevel <= kLogLevelDebg");
  }

  if ((a1 & 0x80000000) == 0 && a1 <= 5)
  {
    ot::Logger::LogVarArgs("Cli", a1, a2, &a9);
  }
}

uint64_t otLogGenerateNextHexDumpLine(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("otLogGenerateNextHexDumpLine", "logging_api.cpp", 305, "(aInfo) != nullptr");
  }

  return ot::GenerateNextHexDumpLine(a1);
}

uint64_t ot::Message::GetLength(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 48);
}

{
  return ot::Message::GetLength(this);
}

uint64_t ot::Message::GetOffset(ot::Message *this)
{
  return *(ot::Buffer::GetMetadata(this) + 50);
}

{
  return ot::Message::GetOffset(this);
}

uint64_t ot::Message::IsLinkSecurityEnabled(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 8) & 1;
}

{
  return ot::Message::IsLinkSecurityEnabled(this);
}

uint64_t ot::Message::IsLoopbackToHostAllowed(ot::Message *this)
{
  return HIWORD(*(ot::Buffer::GetMetadata(this) + 70)) & 1;
}

{
  return ot::Message::IsLoopbackToHostAllowed(this);
}

uint64_t ot::Message::SetLoopbackToHostAllowed(ot::Message *this, char a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) = *(result + 70) & 0xFFFEFFFF | ((a2 & 1) << 16);
  return result;
}

{
  return ot::Message::SetLoopbackToHostAllowed(this, a2);
}

uint64_t ot::Message::GetMulticastLoop(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 14) & 1;
}

{
  return ot::Message::GetMulticastLoop(this);
}

uint64_t ot::Message::SetMulticastLoop(ot::Message *this, char a2)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) = *(result + 70) & 0xFFFFBFFF | ((a2 & 1) << 14);
  return result;
}

{
  return ot::Message::SetMulticastLoop(this, a2);
}

uint64_t otMessageGetOrigin(uint64_t a1)
{
  v1 = ot::AsCoreType<otMessage>(a1);
  Origin = ot::Message::GetOrigin(v1);
  return ot::MapEnum<ot::Message::Origin>(Origin);
}

uint64_t ot::MapEnum<ot::Message::Origin>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::Message::Origin>(result);
}

uint64_t otMessageSetOrigin(uint64_t a1, unsigned int a2)
{
  v4 = ot::AsCoreType<otMessage>(a1);
  v2 = ot::MapEnum<otMessageOrigin>(a2);
  return ot::Message::SetOrigin(v4, v2);
}

uint64_t ot::Message::SetOrigin(ot::Buffer *a1, char a2)
{
  result = ot::Buffer::GetMetadata(a1);
  *(result + 70) = *(result + 70) & 0xFFF3FFFF | ((a2 & 3) << 18);
  return result;
}

{
  return ot::Message::SetOrigin(a1, a2);
}

uint64_t ot::MapEnum<otMessageOrigin>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<otMessageOrigin>(result);
}

uint64_t otMessageSetDirectTransmission(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = ot::AsCoreType<otMessage>(a1);
    return ot::Message::SetDirectTransmission(v2);
  }

  else
  {
    v4 = ot::AsCoreType<otMessage>(a1);
    return ot::Message::ClearDirectTransmission(v4);
  }
}

uint64_t ot::Message::SetDirectTransmission(ot::Message *this)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) = *(result + 70) & 0xFFFFFF7F | 0x80;
  return result;
}

{
  return ot::Message::SetDirectTransmission(this);
}

uint64_t ot::Message::ClearDirectTransmission(ot::Message *this)
{
  result = ot::Buffer::GetMetadata(this);
  *(result + 70) &= ~0x80u;
  return result;
}

{
  return ot::Message::ClearDirectTransmission(this);
}

uint64_t ot::Message::GetAverageRss(ot::Message *this)
{
  Metadata = ot::Buffer::GetMetadata(this);
  return ot::RssAverager::GetAverage((Metadata + 58));
}

{
  return ot::Message::GetAverageRss(this);
}

uint64_t otMessageSetTimestamp(uint64_t a1)
{
  v2 = ot::AsCoreType<otMessage>(a1);
  Now = ot::TimerMilli::GetNow(v2);
  return ot::Message::SetTimestamp(v2, Now);
}

uint64_t ot::Message::SetTimestamp(ot::Buffer *a1, int a2)
{
  result = ot::Buffer::GetMetadata(a1);
  *(result + 36) = a2;
  return result;
}

{
  return ot::Message::SetTimestamp(a1, a2);
}

uint64_t otMessageGetThreadLinkInfo(uint64_t a1, uint64_t a2)
{
  v4 = ot::AsCoreType<otMessage>(a1);
  v2 = ot::AsCoreType<otThreadLinkInfo>(a2);
  return ot::Message::GetLinkInfo(v4, v2);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otThreadLinkInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otMessageAppend(uint64_t a1, char *a2, unsigned __int16 a3)
{
  if (!a2)
  {
    __assert_rtn("otMessageAppend", "message_api.cpp", 107, "(aBuf) != nullptr");
  }

  v3 = ot::AsCoreType<otMessage>(a1);
  return ot::Message::AppendBytes(v3, a2, a3);
}

uint64_t otMessageRead(uint64_t a1, unsigned __int16 a2, char *a3, unsigned __int16 a4)
{
  if (!a3)
  {
    __assert_rtn("otMessageRead", "message_api.cpp", 114, "(aBuf) != nullptr");
  }

  v4 = ot::AsCoreType<otMessage>(a1);
  return ot::Message::ReadBytes(v4, a2, a3, a4);
}

uint64_t otMessageWrite(uint64_t a1, unsigned __int16 a2, char *a3, unsigned __int16 a4)
{
  if (!a3)
  {
    __assert_rtn("otMessageWrite", "message_api.cpp", 121, "(aBuf) != nullptr");
  }

  v4 = ot::AsCoreType<otMessage>(a1);
  ot::Message::WriteBytes(v4, a2, a3, a4);
  return a4;
}

void *otMessageQueueInit(void *result)
{
  if (!result)
  {
    __assert_rtn("otMessageQueueInit", "message_api.cpp", 130, "(aQueue) != nullptr");
  }

  *result = 0;
  return result;
}

ot::Message **otMessageQueueEnqueue(uint64_t a1, uint64_t a2)
{
  v4 = ot::AsCoreType<otMessageQueue>(a1);
  v2 = ot::AsCoreType<otMessage>(a2);
  return ot::MessageQueue::Enqueue(v4, v2);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otMessageQueue>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

ot::Message **ot::MessageQueue::Enqueue(ot::MessageQueue *this, ot::Message *a2)
{
  return ot::MessageQueue::Enqueue(this, a2, 1);
}

{
  return ot::MessageQueue::Enqueue(this, a2);
}

ot::Message **otMessageQueueEnqueueAtHead(uint64_t a1, uint64_t a2)
{
  v4 = ot::AsCoreType<otMessageQueue>(a1);
  v2 = ot::AsCoreType<otMessage>(a2);
  return ot::MessageQueue::Enqueue(v4, v2, 0);
}

uint64_t otMessageQueueDequeue(uint64_t a1, uint64_t a2)
{
  v4 = ot::AsCoreType<otMessageQueue>(a1);
  v2 = ot::AsCoreType<otMessage>(a2);
  return ot::MessageQueue::Dequeue(v4, v2);
}

uint64_t ot::MessageQueue::GetHead(ot::MessageQueue *this)
{
  Tail = ot::MessageQueue::GetTail(this);
  return ot::Message::NextOf(Tail, v2);
}

{
  Tail = ot::MessageQueue::GetTail(this);
  return ot::Message::NextOf(Tail, v2);
}

{
  return ot::MessageQueue::GetHead(this);
}

{
  return ot::MessageQueue::GetHead(this);
}

uint64_t otMessageQueueGetNext(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = ot::AsCoreType<otMessage>(a2);
  if (ot::Message::GetMessageQueue(v2) != a1)
  {
    return 0;
  }

  v3 = ot::AsCoreType<otMessage>(a2);
  return ot::Message::GetNext(v3);
}

uint64_t ot::Message::GetMessageQueue(ot::Message *this)
{
  if ((*(ot::Buffer::GetMetadata(this) + 70) & 0x800) != 0)
  {
    return 0;
  }

  else
  {
    return *(ot::Buffer::GetMetadata(this) + 24);
  }
}

{
  return ot::Message::GetMessageQueue(this);
}

uint64_t otMessageGetIsBufferStatsEnabled(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MessagePool>(v1);
  return ot::MessagePool::GetIsBufferStatsEnabled(v2);
}

uint64_t ot::MessagePool::GetIsBufferStatsEnabled(ot::MessagePool *this)
{
  return *(this + 85012) & 1;
}

{
  return ot::MessagePool::GetIsBufferStatsEnabled(this);
}

uint64_t otMessageSetIsBufferStatsEnabled(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MessagePool>(v2);
  return ot::MessagePool::SetIsBufferStatsEnabled(v3, a2 & 1);
}

uint64_t ot::MessagePool::SetIsBufferStatsEnabled(uint64_t this, char a2)
{
  *(this + 85012) = a2 & 1;
  return this;
}

{
  return ot::MessagePool::SetIsBufferStatsEnabled(this, a2);
}

unint64_t otMessageGetBufferAt(uint64_t a1, unsigned __int16 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MessagePool>(v2);
  return ot::MessagePool::GetBufferAt(v3, a2);
}

unint64_t ot::MessagePool::GetBufferAt(ot::MessagePool *this, unsigned __int16 a2)
{
  return ot::Pool<ot::Buffer,(unsigned short)256>::GetEntryAt(this + 8, a2);
}

{
  return ot::MessagePool::GetBufferAt(this, a2);
}

uint64_t otMessageResetBufferStats(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MessagePool>(v1);
  return ot::MessagePool::ResetBufferStats(v2);
}

uint64_t otMessageGetBufferStats(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MessagePool>(v1);
  return ot::MessagePool::GetBufferStats(v2);
}

uint64_t ot::MessagePool::GetBufferStats(ot::MessagePool *this)
{
  return this + 65556;
}

{
  return ot::MessagePool::GetBufferStats(this);
}

uint64_t otMessageGetTotalBufferCount(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MessagePool>(v1);
  return ot::MessagePool::GetTotalBufferCount(v2);
}

uint64_t otMessageGetFreeBufferCount(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MessagePool>(v1);
  return ot::MessagePool::GetFreeBufferCount(v2);
}

BOOL otMessageGetBufferInfo(uint64_t a1, uint64_t a2)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::AsCoreType<otBufferInfo>(a2);
  return ot::Instance::GetBufferInfo(v4, v2);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otBufferInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

BOOL otMessageIsIcmpError(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::MeshForwarder>(v2);
  v3 = ot::AsCoreType<otMessage>(a2);
  memcpy(__dst, v3, sizeof(__dst));
  return ot::MeshForwarder::IsTxIcmpError(v5, __dst);
}

uint64_t ot::Message::NextOf(ot::Message *this, ot::Message *a2)
{
  if (this)
  {
    return *ot::Message::Next(this);
  }

  else
  {
    return 0;
  }
}

{
  return ot::Message::NextOf(this, a2);
}

uint64_t ot::MessageQueue::GetTail(ot::MessageQueue *this)
{
  return *this;
}

{
  return *this;
}

{
  return ot::MessageQueue::GetTail(this);
}

{
  return ot::MessageQueue::GetTail(this);
}

uint64_t ot::Message::Next(ot::Message *this)
{
  return ot::Buffer::GetMetadata(this);
}

{
  return ot::Buffer::GetMetadata(this);
}

{
  return ot::Message::Next(this);
}

{
  return ot::Message::Next(this);
}

unint64_t ot::Pool<ot::Buffer,(unsigned short)256>::GetEntryAt(uint64_t a1, unsigned __int16 a2)
{
  return a1 + 8 + (a2 << 8);
}

{
  return ot::Pool<ot::Buffer,(unsigned short)256>::GetEntryAt(a1, a2);
}

uint64_t otNetDataGet(uint64_t a1, char a2, unsigned __int8 *a3, char *a4)
{
  if (!a3)
  {
    __assert_rtn("otNetDataGet", "netdata_api.cpp", 47, "(aData) != nullptr");
  }

  if (!a4)
  {
    __assert_rtn("otNetDataGet", "netdata_api.cpp", 48, "(aDataLength) != nullptr");
  }

  v4 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::NetworkData::Leader>(v4);
  return ot::NetworkData::NetworkData::CopyNetworkData(v5, (a2 & 1) != 0, a3, a4);
}

uint64_t otNetDataGetLength(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkData::Leader>(v1);
  return ot::NetworkData::NetworkData::GetLength(v2);
}

uint64_t ot::NetworkData::NetworkData::GetLength(ot::NetworkData::NetworkData *this)
{
  return *(this + 8);
}

{
  return ot::NetworkData::NetworkData::GetLength(this);
}

uint64_t otNetDataGetMaxLength(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkData::Leader>(v1);
  return ot::NetworkData::Leader::GetMaxLength(v2);
}

uint64_t ot::NetworkData::Leader::GetMaxLength(ot::NetworkData::Leader *this)
{
  return *(this + 266);
}

{
  return ot::NetworkData::Leader::GetMaxLength(this);
}

uint64_t otNetDataResetMaxLength(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkData::Leader>(v1);
  return ot::NetworkData::Leader::ResetMaxLength(v2);
}

uint64_t ot::NetworkData::Leader::ResetMaxLength(ot::NetworkData::Leader *this)
{
  result = ot::NetworkData::NetworkData::GetLength(this);
  *(this + 266) = result;
  return result;
}

{
  return ot::NetworkData::Leader::ResetMaxLength(this);
}

ot::NetworkData::Leader::ContextIds *otNetDataReset(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkData::Leader>(v1);
  return ot::NetworkData::Leader::Reset(v2);
}

uint64_t otNetDataGetNextOnMeshPrefix(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otNetDataGetNextOnMeshPrefix", "netdata_api.cpp", 89, "(aIterator) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NetworkData::Leader>(v3);
  v4 = ot::AsCoreType<otBorderRouterConfig>(a3);
  return ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v6, a2, v4);
}

uint64_t otSetNetData(uint64_t a1, char *a2, size_t a3, char a4, char a5)
{
  v5 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NetworkData::Leader>(v5);
  return ot::NetworkData::Leader::setStringAsNetworkData(v6, a2, a3, a4, a5);
}

uint64_t otNetDataGetNextRoute(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otNetDataGetNextRoute", "netdata_api.cpp", 115, "(aIterator) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NetworkData::Leader>(v3);
  v4 = ot::AsCoreType<otExternalRouteConfig>(a3);
  return ot::NetworkData::NetworkData::GetNextExternalRoute(v6, a2, v4);
}

uint64_t otNetDataGetNextService(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otNetDataGetNextService", "netdata_api.cpp", 122, "(aIterator) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NetworkData::Leader>(v3);
  v4 = ot::AsCoreType<otServiceConfig>(a3);
  return ot::NetworkData::NetworkData::GetNextService(v6, a2, v4);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otServiceConfig>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otNetDataGetNextLowpanContextInfo(uint64_t a1, ot::NetworkData::OnMeshPrefixConfig *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otNetDataGetNextLowpanContextInfo", "netdata_api.cpp", 131, "(aIterator) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NetworkData::Leader>(v3);
  v4 = ot::AsCoreType<otLowpanContextInfo>(a3);
  return ot::NetworkData::NetworkData::GetNextLowpanContextInfo(v6, a2, v4);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otLowpanContextInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

void otNetDataGetCommissioningDataset(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::NetworkData::Leader>(v2);
  v3 = ot::AsCoreType<otCommissioningDataset>(a2);
  ot::NetworkData::Leader::GetCommissioningDataset(v4, v3);
}

uint64_t otNetDataGetVersion(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  LeaderData = ot::Mle::Mle::GetLeaderData(v2);
  return ot::Mle::LeaderData::GetDataVersion(LeaderData, 0);
}

uint64_t ot::Mle::LeaderData::GetDataVersion(uint64_t a1, char a2)
{
  if (a2)
  {
    return *(a1 + 6);
  }

  else
  {
    return *(a1 + 5);
  }
}

{
  return ot::Mle::LeaderData::GetDataVersion(a1, a2);
}

uint64_t otNetDataGetStableVersion(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  LeaderData = ot::Mle::Mle::GetLeaderData(v2);
  return ot::Mle::LeaderData::GetDataVersion(LeaderData, 1);
}

uint64_t otNetDataSteeringDataCheckJoiner(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NetworkData::Leader>(v2);
  v3 = ot::AsCoreType<otExtAddress>(a2);
  return ot::NetworkData::Leader::SteeringDataCheckJoiner(v6, v3, v4);
}

uint64_t otNetDataSteeringDataCheckJoinerWithDiscerner(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::NetworkData::Leader>(v2);
  v3 = ot::AsCoreType<otJoinerDiscerner>(a2);
  return ot::NetworkData::Leader::SteeringDataCheckJoiner(v5, v3);
}

uint64_t otThreadGetNextDiagnosticTlv(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  if (!a2)
  {
    __assert_rtn("otThreadGetNextDiagnosticTlv", "netdiag_api.cpp", 49, "(aIterator) != nullptr");
  }

  if (!a3)
  {
    __assert_rtn("otThreadGetNextDiagnosticTlv", "netdiag_api.cpp", 50, "(aNetworkDiagTlv) != nullptr");
  }

  ot::AsCoapMessage();
  return ot::NetworkDiagnostic::Client::GetNextDiagTlv(v3, a2, a3);
}

uint64_t otThreadSendDiagnosticGet(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  v6 = ot::AsCoreType<otInstance>(a1);
  v9 = ot::Instance::Get<ot::NetworkDiagnostic::Client>(v6);
  v7 = ot::AsCoreType<otIp6Address>(a2);
  return ot::NetworkDiagnostic::Client::SendDiagnosticGet(v9, v7, a3, a4, a5, a6);
}

uint64_t otThreadSendDiagnosticReset(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::NetworkDiagnostic::Client>(v4);
  v5 = ot::AsCoreType<otIp6Address>(a2);
  return ot::NetworkDiagnostic::Client::SendDiagnosticReset(v7, v5, a3, a4);
}

const char *otThreadGetVendorName(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkDiagnostic::Server>(v1);
  return ot::NetworkDiagnostic::Server::GetVendorName(v2);
}

uint64_t ot::Instance::Get<ot::NetworkDiagnostic::Server>(uint64_t a1)
{
  return a1 + 144272;
}

{
  return ot::Instance::Get<ot::NetworkDiagnostic::Server>(a1);
}

const char *ot::NetworkDiagnostic::Server::GetVendorName(ot::NetworkDiagnostic::Server *this)
{
  return "Apple";
}

{
  return ot::NetworkDiagnostic::Server::GetVendorName(this);
}

const char *otThreadGetVendorModel(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkDiagnostic::Server>(v1);
  return ot::NetworkDiagnostic::Server::GetVendorModel(v2);
}

const char *ot::NetworkDiagnostic::Server::GetVendorModel(ot::NetworkDiagnostic::Server *this)
{
  return "Default";
}

{
  return ot::NetworkDiagnostic::Server::GetVendorModel(this);
}

const char *otThreadGetVendorSwVersion(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkDiagnostic::Server>(v1);
  return ot::NetworkDiagnostic::Server::GetVendorSwVersion(v2);
}

const char *ot::NetworkDiagnostic::Server::GetVendorSwVersion(ot::NetworkDiagnostic::Server *this)
{
  return "Default";
}

{
  return ot::NetworkDiagnostic::Server::GetVendorSwVersion(this);
}

void *otThreadGetVendorAppUrl(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkDiagnostic::Server>(v1);
  return ot::NetworkDiagnostic::Server::GetVendorAppUrl(v2);
}

void *ot::NetworkDiagnostic::Server::GetVendorAppUrl(ot::NetworkDiagnostic::Server *this)
{
  return &ot::NetworkDiagnostic::Server::kVendorAppUrl;
}

{
  return ot::NetworkDiagnostic::Server::GetVendorAppUrl(this);
}

ot::Utils::HistoryTracker *ot::Utils::HistoryTracker::HistoryTracker(ot::Utils::HistoryTracker *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 2);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 260);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 582);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 864);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 1666);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 2468);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 2982);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 3880);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(this + 4394);
  ot::TimerMilliIn<ot::Utils::HistoryTracker,&ot::Utils::HistoryTracker::HandleTimer>::TimerMilliIn((this + 9816), a2);
  ot::NetworkData::MutableNetworkData::MutableNetworkData((this + 9968), a2, this + 9984, 0, 254);
  ot::TimerMilli::Start((this + 9816), 0x36EE800u);
  ot::ClearAllBytes<ot::Utils::HistoryTracker::RouterEntry [63]>(this + 9840);
  return this;
}

{
  ot::Utils::HistoryTracker::HistoryTracker(this, a2);
  return this;
}

uint64_t ot::Utils::HistoryTracker::HandleTimer(ot::Utils::HistoryTracker *this)
{
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::UpdateAgedEntries(this + 4);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::UpdateAgedEntries(this + 520);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::UpdateAgedEntries(this + 1164);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::UpdateAgedEntries(this + 1728);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::UpdateAgedEntries(this + 3332);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::UpdateAgedEntries(this + 4936);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::UpdateAgedEntries(this + 7760);
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::UpdateAgedEntries(this + 8788);
  return ot::TimerMilli::Start((this + 9816), 0x36EE800u);
}

_WORD *ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(_WORD *a1)
{
  ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::EntryList(a1);
  return a1;
}

{
  ot::Utils::HistoryTracker::List::List(a1);
  return a1;
}

ot::TimerMilli *ot::TimerMilliIn<ot::Utils::HistoryTracker,&ot::Utils::HistoryTracker::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::Utils::HistoryTracker,&ot::Utils::HistoryTracker::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::Utils::HistoryTracker,&ot::Utils::HistoryTracker::HandleTimer>::HandleTimer);
  return a1;
}

ot::NetworkData::MutableNetworkData *ot::NetworkData::MutableNetworkData::MutableNetworkData(ot::NetworkData::MutableNetworkData *this, ot::Instance *a2, unsigned __int8 *a3, char a4, char a5)
{
  ot::NetworkData::MutableNetworkData::MutableNetworkData(this, a2, a3, a4, a5);
  return this;
}

{
  ot::NetworkData::NetworkData::NetworkData(this, a2, a3, a4);
  result = this;
  *(this + 9) = a5;
  return result;
}

void *ot::ClearAllBytes<ot::Utils::HistoryTracker::RouterEntry [63]>(void *a1)
{
  return memset(a1, 0, 0x7EuLL);
}

{
  return ot::ClearAllBytes<ot::Utils::HistoryTracker::RouterEntry [63]>(a1);
}

uint64_t ot::Utils::HistoryTracker::RecordNetworkInfo(ot::Utils::HistoryTracker *this)
{
  v11 = this;
  result = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::AddNewEntry(this + 4);
  v10 = result;
  if (result)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    Role = ot::Mle::Mle::GetRole(v2);
    *v10 = ot::MapEnum<ot::Mle::DeviceRole>(Role);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    *(v10 + 6) = ot::Mle::Mle::GetRloc16(v4);
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    LeaderData = ot::Mle::Mle::GetLeaderData(v5);
    *(v10 + 8) = ot::Mle::LeaderData::GetPartitionId(LeaderData);
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(this);
    DeviceMode = ot::Mle::Mle::GetDeviceMode(v7);
    return ot::Mle::DeviceMode::Get(&DeviceMode, (v10 + 4));
  }

  return result;
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::AddNewEntry(uint64_t a1)
{
  return a1 + 132 + 12 * ot::Utils::HistoryTracker::List::Add(a1, 0x20u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::AddNewEntry(a1);
}

uint64_t ot::MapEnum<ot::Mle::DeviceRole>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::Mle::DeviceRole>(result);
}

uint64_t ot::Mle::Mle::GetRole(ot::Mle::Mle *this)
{
  return *(this + 130);
}

{
  return ot::Mle::Mle::GetRole(this);
}

uint64_t ot::Mle::Mle::GetRloc16(ot::Mle::Mle *this)
{
  return *(this + 72);
}

{
  return ot::Mle::Mle::GetRloc16(this);
}

uint64_t ot::Mle::LeaderData::GetPartitionId(ot::Mle::LeaderData *this)
{
  return *this;
}

{
  return ot::Mle::LeaderData::GetPartitionId(this);
}

uint64_t ot::Mle::Mle::GetDeviceMode(ot::Mle::Mle *this)
{
  return *(this + 131);
}

{
  return ot::Mle::Mle::GetDeviceMode(this);
}

uint64_t ot::Utils::HistoryTracker::RecordMessage(ot::InstanceLocator *a1, ot::Message *a2, ot::Mac::Address *a3, char a4)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = 0;
  result = ot::Message::GetType(a2);
  if (!result)
  {
    result = ot::Ip6::Headers::ParseFrom(v24, v28);
    if (!result)
    {
      result = ot::Ip6::Headers::IsUdp(v24);
      if ((result & 1) == 0)
      {
        goto LABEL_12;
      }

      v23 = 0;
      if (v26)
      {
        if (v26 == 1)
        {
          result = ot::Ip6::Headers::GetSourcePort(v24);
          v23 = result;
        }
      }

      else
      {
        result = ot::Ip6::Headers::GetDestinationPort(v24);
        v23 = result;
      }

      if (v23 != 19788 && v23 != 61631)
      {
LABEL_12:
        if (v26)
        {
          if (v26 == 1)
          {
            result = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::AddNewEntry(a1 + 3332);
            v25 = result;
          }
        }

        else
        {
          result = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::AddNewEntry(a1 + 1728);
          v25 = result;
        }

        if (v25)
        {
          ot::Ip6::Headers::GetIp6Header(v24);
          PayloadLength = ot::Ip6::Header::GetPayloadLength(v5);
          *v25 = PayloadLength;
          if (ot::Mac::Address::IsShort(v27))
          {
            Short = ot::Mac::Address::GetShort(v27);
          }

          else
          {
            Short = -2;
          }

          *(v25 + 2) = Short;
          SourceAddress = ot::Ip6::Headers::GetSourceAddress(v24);
          *(v25 + 4) = *SourceAddress;
          SourcePort = ot::Ip6::Headers::GetSourcePort(v24);
          *(v25 + 20) = SourcePort;
          DestinationAddress = ot::Ip6::Headers::GetDestinationAddress(v24);
          *(v25 + 22) = *DestinationAddress;
          DestinationPort = ot::Ip6::Headers::GetDestinationPort(v24);
          *(v25 + 38) = DestinationPort;
          Checksum = ot::Ip6::Headers::GetChecksum(v24);
          *(v25 + 40) = Checksum;
          IpProto = ot::Ip6::Headers::GetIpProto(v24);
          *(v25 + 42) = IpProto;
          if (ot::Ip6::Headers::IsIcmp6(v24))
          {
            IcmpHeader = ot::Ip6::Headers::GetIcmpHeader(v24);
            Type = ot::Ip6::Icmp::Header::GetType(IcmpHeader);
          }

          else
          {
            Type = 0;
          }

          *(v25 + 43) = Type;
          if (v26)
          {
            Average = 127;
          }

          else
          {
            RssAverager = ot::Message::GetRssAverager(v28);
            Average = ot::RssAverager::GetAverage(RssAverager);
          }

          *(v25 + 44) = Average;
          IsLinkSecurityEnabled = ot::Message::IsLinkSecurityEnabled(v28);
          *(v25 + 45) = *(v25 + 45) & 0xFE | IsLinkSecurityEnabled;
          if (v26 == 1)
          {
            TxSuccess = ot::Message::GetTxSuccess(v28);
          }

          else
          {
            TxSuccess = 1;
          }

          *(v25 + 45) = *(v25 + 45) & 0xFD | (2 * (TxSuccess & 1));
          Priority = ot::Message::GetPriority(v28);
          *(v25 + 45) = *(v25 + 45) & 0xF3 | (4 * (Priority & 3));
          result = ot::Mac::Address::IsExtended(v27);
          if (result)
          {
            v17 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(a1);
            result = ot::NeighborTable::FindNeighbor(v17, v27, 5);
            if (result)
            {
              result = ot::Neighbor::GetRloc16(result);
              *(v25 + 2) = result;
            }
          }

          *(v25 + 45) = *(v25 + 45) & 0xEF | 0x10;
        }
      }
    }
  }

  return result;
}

BOOL ot::Ip6::Headers::IsUdp(ot::Ip6::Headers *this)
{
  return ot::Ip6::Headers::GetIpProto(this) == 17;
}

{
  return ot::Ip6::Headers::IsUdp(this);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::AddNewEntry(uint64_t a1)
{
  return a1 + 132 + 46 * ot::Utils::HistoryTracker::List::Add(a1, 0x20u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::AddNewEntry(a1);
}

void ot::Ip6::Headers::GetIp6Header(ot::Ip6::Headers *this)
{
  ;
}

{
  ot::Ip6::Headers::GetIp6Header(this);
}

uint64_t ot::Ip6::Header::GetPayloadLength(ot::Ip6::Header *this)
{
  return ot::BigEndian::HostSwap16(*(this + 2));
}

{
  return ot::Ip6::Header::GetPayloadLength(this);
}

BOOL ot::Mac::Address::IsShort(ot::Mac::Address *this)
{
  return *(this + 8) == 1;
}

{
  return ot::Mac::Address::IsShort(this);
}

uint64_t ot::Mac::Address::GetShort(ot::Mac::Address *this)
{
  return *this;
}

{
  return ot::Mac::Address::GetShort(this);
}

uint64_t ot::Ip6::Headers::GetSourceAddress(ot::Ip6::Headers *this)
{
  return ot::Ip6::Header::GetSource(this);
}

{
  return ot::Ip6::Headers::GetSourceAddress(this);
}

uint64_t ot::Ip6::Headers::GetDestinationAddress(ot::Ip6::Headers *this)
{
  return ot::Ip6::Header::GetDestination(this);
}

{
  return ot::Ip6::Headers::GetDestinationAddress(this);
}

uint64_t ot::Ip6::Headers::GetIpProto(ot::Ip6::Headers *this)
{
  return ot::Ip6::Header::GetNextHeader(this);
}

{
  return ot::Ip6::Headers::GetIpProto(this);
}

BOOL ot::Ip6::Headers::IsIcmp6(ot::Ip6::Headers *this)
{
  return ot::Ip6::Headers::GetIpProto(this) == 58;
}

{
  return ot::Ip6::Headers::IsIcmp6(this);
}

uint64_t ot::Ip6::Headers::GetIcmpHeader(ot::Ip6::Headers *this)
{
  return this + 40;
}

{
  return ot::Ip6::Headers::GetIcmpHeader(this);
}

uint64_t ot::Ip6::Icmp::Header::GetType(ot::Ip6::Icmp::Header *this)
{
  return *this;
}

{
  return ot::Ip6::Icmp::Header::GetType(this);
}

uint64_t ot::Message::GetRssAverager(ot::Message *this)
{
  return ot::Buffer::GetMetadata(this) + 58;
}

{
  return ot::Message::GetRssAverager(this);
}

uint64_t ot::Message::GetTxSuccess(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 12) & 1;
}

{
  return ot::Message::GetTxSuccess(this);
}

uint64_t ot::Message::GetPriority(ot::Message *this)
{
  return (*(ot::Buffer::GetMetadata(this) + 70) >> 9) & 3;
}

{
  return ot::Message::GetPriority(this);
}

BOOL ot::Mac::Address::IsExtended(ot::Mac::Address *this)
{
  return *(this + 8) == 2;
}

{
  return ot::Mac::Address::IsExtended(this);
}

uint64_t ot::Utils::HistoryTracker::RecordNeighborEvent(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  result = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::AddNewEntry(a1 + 4936);
  if (result)
  {
    if (a2 <= 2u)
    {
      *result = *(a3 + 8);
      *(result + 8) = *(a3 + 32);
      *(result + 10) = *(a3 + 38);
      *(result + 11) = *(result + 11) & 0xFB | (4 * ((*(a3 + 60) & 1) != 0));
      *(result + 11) = *(result + 11) & 0xF7 | (8 * ((*(a3 + 60) & 2) != 0));
      *(result + 11) = *(result + 11) & 0xEF | (16 * ((*(a3 + 60) & 4) != 0));
      *(result + 11) = *(result + 11) & 0xDF | 0x20;
    }

    else if (a2 == 4 || a2 == 3)
    {
      *result = *(a3 + 8);
      *(result + 8) = *(a3 + 24);
      *(result + 10) = *(a3 + 52);
      *(result + 11) = *(result + 11) & 0xFB | (4 * ((*(a3 + 62) & 1) != 0));
      *(result + 11) = *(result + 11) & 0xF7 | (8 * ((*(a3 + 62) & 2) != 0));
      *(result + 11) = *(result + 11) & 0xEF | (16 * ((*(a3 + 62) & 4) != 0));
      *(result + 11) &= ~0x20u;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        goto LABEL_16;
      }

      if (a2 == 2)
      {
        *(result + 11) = *(result + 11) & 0xFC | 2;
        return result;
      }

      if (a2 != 3)
      {
        if (a2 != 4)
        {
          return result;
        }

LABEL_16:
        *(result + 11) = *(result + 11) & 0xFC | 1;
        return result;
      }
    }

    else if ((*(a3 + 60) & 8) != 0)
    {
      *(result + 11) = *(result + 11) & 0xFC | 3;
      return result;
    }

    *(result + 11) &= 0xFCu;
  }

  return result;
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::AddNewEntry(uint64_t a1)
{
  return a1 + 260 + 12 * ot::Utils::HistoryTracker::List::Add(a1, 0x40u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::AddNewEntry(a1);
}

uint64_t ot::Utils::HistoryTracker::RecordAddressEvent(uint64_t a1, char a2, ot::Ip6::Netif::UnicastAddress *a3)
{
  result = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::AddNewEntry(a1 + 520);
  v4 = result;
  if (result)
  {
    *result = *ot::Ip6::Netif::UnicastAddress::GetAddress(a3);
    *(v4 + 16) = ot::Ip6::Netif::UnicastAddress::GetPrefixLength(a3);
    *(v4 + 17) = ot::Ip6::Netif::UnicastAddress::GetOrigin(a3);
    *(v4 + 20) = (a2 & 1) != 1;
    result = ot::Ip6::Netif::UnicastAddress::GetScope(a3);
    *(v4 + 24) = *(v4 + 24) & 0xF0 | result & 0xF;
    *(v4 + 24) = *(v4 + 24) & 0xEF | (16 * ((*(a3 + 9) & 1) != 0));
    *(v4 + 24) = *(v4 + 24) & 0xDF | (32 * ((*(a3 + 9) & 2) != 0));
    *(v4 + 24) = *(v4 + 24) & 0xBF | (((*(a3 + 9) & 0x80) != 0) << 6);
  }

  return result;
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::AddNewEntry(uint64_t a1)
{
  return a1 + 84 + 28 * ot::Utils::HistoryTracker::List::Add(a1, 0x14u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::AddNewEntry(a1);
}

uint64_t ot::Ip6::Netif::UnicastAddress::GetAddress(ot::Ip6::Netif::UnicastAddress *this)
{
  return ot::AsCoreType<otIp6Address>(this);
}

{
  return ot::AsCoreType<otIp6Address>(this);
}

{
  return ot::Ip6::Netif::UnicastAddress::GetAddress(this);
}

{
  return ot::Ip6::Netif::UnicastAddress::GetAddress(this);
}

uint64_t ot::Ip6::Netif::UnicastAddress::GetPrefixLength(ot::Ip6::Netif::UnicastAddress *this)
{
  return *(this + 16);
}

{
  return ot::Ip6::Netif::UnicastAddress::GetPrefixLength(this);
}

uint64_t ot::Ip6::Netif::UnicastAddress::GetOrigin(ot::Ip6::Netif::UnicastAddress *this)
{
  return *(this + 17);
}

{
  return ot::Ip6::Netif::UnicastAddress::GetOrigin(this);
}

uint64_t ot::Ip6::Netif::UnicastAddress::GetScope(ot::Ip6::Netif::UnicastAddress *this)
{
  if ((*(this + 9) & 4) != 0)
  {
    return (*(this + 9) >> 3) & 0xF;
  }

  else
  {
    Address = ot::Ip6::Netif::UnicastAddress::GetAddress(this);
    LOBYTE(v3) = ot::Ip6::Address::GetScope(Address);
  }

  return v3;
}

{
  return ot::Ip6::Netif::UnicastAddress::GetScope(this);
}

_OWORD *ot::Utils::HistoryTracker::RecordAddressEvent(uint64_t a1, char a2, ot::Ip6::Netif::MulticastAddress *a3, char a4)
{
  result = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::AddNewEntry(a1 + 1164);
  v5 = result;
  if (result)
  {
    result = ot::Ip6::Netif::MulticastAddress::GetAddress(a3);
    *v5 = *result;
    *(v5 + 16) = a4;
    *(v5 + 5) = (a2 & 1) != 1;
  }

  return result;
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::AddNewEntry(uint64_t a1)
{
  return a1 + 84 + 24 * ot::Utils::HistoryTracker::List::Add(a1, 0x14u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::AddNewEntry(a1);
}

uint64_t ot::Ip6::Netif::MulticastAddress::GetAddress(ot::Ip6::Netif::MulticastAddress *this)
{
  return ot::AsCoreType<otIp6Address>(this);
}

{
  return ot::AsCoreType<otIp6Address>(this);
}

{
  return ot::Ip6::Netif::MulticastAddress::GetAddress(this);
}

{
  return ot::Ip6::Netif::MulticastAddress::GetAddress(this);
}

uint64_t ot::Utils::HistoryTracker::RecordRouterTableChange(uint64_t this)
{
  v14 = this;
  v6 = this;
  for (i = 0; i <= 0x3Eu; ++i)
  {
    v9 = (v6 + 2 * i + 9840);
    v10 = v10 & 3 | (4 * (i & 0x3F));
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(v6);
    this = ot::RouterTable::IsAllocated(v1, i);
    if (this)
    {
      v8 = 0;
      v7 = 0;
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::RouterTable>(v6);
      v2 = ot::Mle::Rloc16FromRouterId(i);
      ot::RouterTable::GetNextHopAndPathCost(v5, v2, &v8, &v7);
      if (v8 == 65534)
      {
        this = 63;
        v4 = 63;
      }

      else
      {
        this = ot::Mle::RouterIdFromRloc16(v8);
        v4 = this;
      }

      v11 = v4;
      if (v7 < 0x10u)
      {
        v3 = v7;
      }

      else
      {
        v3 = 0;
      }

      v12 = v12 & 0xF | (16 * (v3 & 0xF));
      if ((*v9 & 1) == 0)
      {
        v10 &= 0xFCu;
        v12 &= 0xF0u;
LABEL_18:
        this = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerRouterInfo,(unsigned short)256>::AddNewEntry(v6 + 5964, &v10);
        *v9 = *v9 & 0xFFFE | 1;
        *v9 = *v9 & 0xFF81 | (2 * (v11 & 0x3F));
        *v9 = *v9 & 0xF0FF | (v12 >> 4 << 8);
        continue;
      }

      if (v11 != ((*v9 >> 1) & 0x3F))
      {
        v10 = v10 & 0xFC | 2;
        v12 = v12 & 0xF0 | HIBYTE(*v9) & 0xF;
        goto LABEL_18;
      }

      if (v11 != 63 && (HIBYTE(*v9) & 0xF) != v12 >> 4)
      {
        v10 = v10 & 0xFC | 3;
        v12 = v12 & 0xF0 | HIBYTE(*v9) & 0xF;
        goto LABEL_18;
      }
    }

    else if (*v9)
    {
      v10 = v10 & 0xFC | 1;
      v11 = 63;
      v12 &= 0xF0u;
      v12 &= 0xFu;
      this = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerRouterInfo,(unsigned short)256>::AddNewEntry(v6 + 5964, &v10);
      *v9 &= ~1u;
    }
  }

  return this;
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerRouterInfo,(unsigned short)256>::AddNewEntry(uint64_t a1, uint64_t a2)
{
  result = ot::Utils::HistoryTracker::List::Add(a1, 0x100u, (a1 + 4));
  v3 = a1 + 1028 + 3 * result;
  *v3 = *a2;
  *(v3 + 2) = *(a2 + 2);
  return result;
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerRouterInfo,(unsigned short)256>::AddNewEntry(a1, a2);
}

uint64_t ot::Utils::HistoryTracker::RecordNetworkDataChange(const unsigned __int8 **this)
{
  v11 = this;
  v10 = 0;
  while (!ot::NetworkData::NetworkData::GetNextOnMeshPrefix(this + 1246, &v10, &v9))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if ((ot::NetworkData::NetworkData::ContainsOnMeshPrefix(v1, &v9) & 1) == 0)
    {
      ot::Utils::HistoryTracker::RecordOnMeshPrefixEvent(this, 1, &v9);
    }
  }

  v10 = 0;
  while (1)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if (ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v2, &v10, &v9))
    {
      break;
    }

    if ((ot::NetworkData::NetworkData::ContainsOnMeshPrefix(this + 1246, &v9) & 1) == 0)
    {
      ot::Utils::HistoryTracker::RecordOnMeshPrefixEvent(this, 0, &v9);
    }
  }

  v10 = 0;
  while (!ot::NetworkData::NetworkData::GetNextExternalRoute(this + 1246, &v10, &v8))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if ((ot::NetworkData::NetworkData::ContainsExternalRoute(v3, &v8) & 1) == 0)
    {
      ot::Utils::HistoryTracker::RecordExternalRouteEvent(this, 1, &v8);
    }
  }

  v10 = 0;
  while (1)
  {
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if (ot::NetworkData::NetworkData::GetNextExternalRoute(v4, &v10, &v8))
    {
      break;
    }

    if ((ot::NetworkData::NetworkData::ContainsExternalRoute(this + 1246, &v8) & 1) == 0)
    {
      ot::Utils::HistoryTracker::RecordExternalRouteEvent(this, 0, &v8);
    }
  }

  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
  result = ot::NetworkData::NetworkData::CopyNetworkData(v5, 0, (this + 1246));
  if (result)
  {
    __assert_rtn("RecordNetworkDataChange", "history_tracker.cpp", 407, "false");
  }

  return result;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::NetworkData::Leader>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(a1);
}

__n128 ot::Utils::HistoryTracker::RecordOnMeshPrefixEvent(uint64_t a1, int a2, __n128 *a3)
{
  v4 = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::AddNewEntry(a1 + 7760);
  if (v4)
  {
    result = *a3;
    *v4 = *a3;
    *(v4 + 16) = a3[1].n128_u64[0];
    *(v4 + 24) = a2;
  }

  return result;
}

__n128 ot::Utils::HistoryTracker::RecordExternalRouteEvent(uint64_t a1, int a2, __n128 *a3)
{
  v4 = ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::AddNewEntry(a1 + 8788);
  if (v4)
  {
    result = *a3;
    *v4 = *a3;
    *(v4 + 16) = a3[1].n128_u64[0];
    *(v4 + 24) = a2;
  }

  return result;
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::AddNewEntry(uint64_t a1)
{
  return a1 + 132 + 28 * ot::Utils::HistoryTracker::List::Add(a1, 0x20u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::AddNewEntry(a1);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::AddNewEntry(uint64_t a1)
{
  return a1 + 132 + 28 * ot::Utils::HistoryTracker::List::Add(a1, 0x20u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::AddNewEntry(a1);
}

uint64_t ot::Utils::HistoryTracker::HandleNotifierEvents(ot::Utils::HistoryTracker *a1, uint64_t a2)
{
  v4 = a2;
  if (ot::Events::ContainsAny(&v4, 228))
  {
    ot::Utils::HistoryTracker::RecordNetworkInfo(a1);
  }

  result = ot::Events::Contains(&v4, 512);
  if (result)
  {
    return ot::Utils::HistoryTracker::RecordNetworkDataChange(a1);
  }

  return result;
}

BOOL ot::Events::Contains(void *a1, uint64_t a2)
{
  return (*a1 & a2) != 0;
}

{
  return ot::Events::Contains(a1, a2);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::UpdateAgedEntries(uint64_t a1)
{
  return ot::Utils::HistoryTracker::List::UpdateAgedEntries(a1, 0x20u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNetworkInfo,(unsigned short)32>::UpdateAgedEntries(a1);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::UpdateAgedEntries(uint64_t a1)
{
  return ot::Utils::HistoryTracker::List::UpdateAgedEntries(a1, 0x14u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerUnicastAddressInfo,(unsigned short)20>::UpdateAgedEntries(a1);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::UpdateAgedEntries(uint64_t a1)
{
  return ot::Utils::HistoryTracker::List::UpdateAgedEntries(a1, 0x14u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMulticastAddressInfo,(unsigned short)20>::UpdateAgedEntries(a1);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::UpdateAgedEntries(uint64_t a1)
{
  return ot::Utils::HistoryTracker::List::UpdateAgedEntries(a1, 0x20u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerMessageInfo,(unsigned short)32>::UpdateAgedEntries(a1);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::UpdateAgedEntries(uint64_t a1)
{
  return ot::Utils::HistoryTracker::List::UpdateAgedEntries(a1, 0x40u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerNeighborInfo,(unsigned short)64>::UpdateAgedEntries(a1);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::UpdateAgedEntries(uint64_t a1)
{
  return ot::Utils::HistoryTracker::List::UpdateAgedEntries(a1, 0x20u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerOnMeshPrefixInfo,(unsigned short)32>::UpdateAgedEntries(a1);
}

uint64_t ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::UpdateAgedEntries(uint64_t a1)
{
  return ot::Utils::HistoryTracker::List::UpdateAgedEntries(a1, 0x20u, (a1 + 4));
}

{
  return ot::Utils::HistoryTracker::EntryList<otHistoryTrackerExternalRouteInfo,(unsigned short)32>::UpdateAgedEntries(a1);
}

ot::StringWriter *ot::Utils::HistoryTracker::EntryAgeToString(ot::Utils::HistoryTracker *this, char *a2, char *a3)
{
  v9 = this;
  v8 = a2;
  v7[11] = a3;
  ot::StringWriter::StringWriter(v7, a2, a3);
  if (v9 >= 0xFC579C00)
  {
    return ot::StringWriter::Append(v7, "more than %u days", 49);
  }

  v6 = v9 / 0x5265C00;
  if (v9 / 0x5265C00)
  {
    v4 = ot::ToUlong(v6);
    v5 = "";
    if (v6 != 1)
    {
      v5 = "s";
    }

    ot::StringWriter::Append(v7, "%lu day%s ", v4, v5);
    v9 -= 86400000 * v6;
  }

  return ot::StringWriter::Append(v7, "%02u:%02u:%02u.%03u", v9 / 0x36EE80, v9 % 0x36EE80 / 0xEA60, v9 % 0xEA60 / 0x3E8, v9 % 0x3E8);
}

_DWORD *ot::Utils::HistoryTracker::Timestamp::SetToNow(ot::Utils::HistoryTracker::Timestamp *this)
{
  *this = ot::TimerMilli::GetNow(this);
  result = ot::Time::GetValue(this);
  if (!result)
  {
    Value = ot::Time::GetValue(this);
    return ot::Time::SetValue(this, Value - 1);
  }

  return result;
}

uint64_t ot::Utils::HistoryTracker::Timestamp::GetDurationTill(ot::Utils::HistoryTracker::Timestamp *a1, int a2)
{
  v6 = a2;
  if (ot::Utils::HistoryTracker::Timestamp::IsDistantPast(a1))
  {
    return -61367296;
  }

  else
  {
    v2 = ot::Time::operator-(&v6, a1);
    return ot::Min<unsigned int>(v2, 0xFC579C00);
  }
}

BOOL ot::Utils::HistoryTracker::Timestamp::IsDistantPast(ot::Utils::HistoryTracker::Timestamp *this)
{
  return ot::Time::GetValue(this) == 0;
}

{
  return ot::Utils::HistoryTracker::Timestamp::IsDistantPast(this);
}

_WORD *ot::Utils::HistoryTracker::List::List(_WORD *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

_WORD *ot::Utils::HistoryTracker::List::Clear(_WORD *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

uint64_t ot::Utils::HistoryTracker::List::Add(ot::Utils::HistoryTracker::List *this, unsigned __int16 a2, ot::Utils::HistoryTracker::Timestamp *a3)
{
  if (*this)
  {
    v4 = *this - 1;
  }

  else
  {
    v4 = a2 - 1;
  }

  *this = v4;
  *(this + 1) += *(this + 1) != a2;
  ot::Utils::HistoryTracker::Timestamp::SetToNow((a3 + 4 * *this));
  return *this;
}

uint64_t ot::Utils::HistoryTracker::List::Iterate(ot::Utils::HistoryTracker::List *this, unsigned __int16 a2, const ot::Utils::HistoryTracker::Timestamp *a3, ot::Utils::HistoryTracker::Iterator *a4, unsigned __int16 *a5, unsigned int *a6)
{
  v11 = 0;
  if (ot::Utils::HistoryTracker::Iterator::GetEntryNumber(a4) < *(this + 1))
  {
    EntryNumber = ot::Utils::HistoryTracker::Iterator::GetEntryNumber(a4);
    *a5 = ot::Utils::HistoryTracker::List::MapEntryNumberToListIndex(this, EntryNumber, a2);
    v8 = (a3 + 4 * *a5);
    InitTime = ot::Utils::HistoryTracker::Iterator::GetInitTime(a4);
    *a6 = ot::Utils::HistoryTracker::Timestamp::GetDurationTill(v8, InitTime);
    ot::Utils::HistoryTracker::Iterator::IncrementEntryNumber(a4);
  }

  else
  {
    return 23;
  }

  return v11;
}

uint64_t ot::Utils::HistoryTracker::Iterator::GetEntryNumber(ot::Utils::HistoryTracker::Iterator *this)
{
  return *(this + 2);
}

{
  return ot::Utils::HistoryTracker::Iterator::GetEntryNumber(this);
}

uint64_t ot::Utils::HistoryTracker::List::MapEntryNumberToListIndex(ot::Utils::HistoryTracker::List *this, unsigned __int16 a2, unsigned __int16 a3)
{
  if (a2 >= *(this + 1))
  {
    __assert_rtn("MapEntryNumberToListIndex", "history_tracker.cpp", 573, "aEntryNumber < mSize");
  }

  v5 = a2 + *this;
  if (v5 < a3)
  {
    v4 = 0;
  }

  else
  {
    v4 = a3;
  }

  return (v5 - v4);
}

uint64_t ot::Utils::HistoryTracker::Iterator::GetInitTime(ot::Utils::HistoryTracker::Iterator *this)
{
  ot::Time::Time(&v2, *this);
  return v2;
}

{
  return ot::Utils::HistoryTracker::Iterator::GetInitTime(this);
}

uint64_t ot::Utils::HistoryTracker::Iterator::IncrementEntryNumber(uint64_t this)
{
  ++*(this + 4);
  return this;
}

{
  return ot::Utils::HistoryTracker::Iterator::IncrementEntryNumber(this);
}

uint64_t ot::Utils::HistoryTracker::List::UpdateAgedEntries(ot::Utils::HistoryTracker::List *this, unsigned __int16 a2, ot::Utils::HistoryTracker::Timestamp *a3)
{
  result = ot::TimerMilli::GetNow(this);
  v7 = result;
  for (i = *(this + 1) - 1; i < *(this + 1); --i)
  {
    v5 = ot::Utils::HistoryTracker::List::MapEntryNumberToListIndex(this, i, a2);
    result = ot::Utils::HistoryTracker::Timestamp::GetDurationTill((a3 + 4 * v5), v7);
    if (result < 0xFC579C00)
    {
      break;
    }

    result = ot::Utils::HistoryTracker::Timestamp::MarkAsDistantPast((a3 + 4 * v5));
  }

  return result;
}

_DWORD *ot::Utils::HistoryTracker::Timestamp::MarkAsDistantPast(ot::Utils::HistoryTracker::Timestamp *this)
{
  return ot::Time::SetValue(this, 0);
}

{
  return ot::Utils::HistoryTracker::Timestamp::MarkAsDistantPast(this);
}

ot::NetworkData::NetworkData *ot::NetworkData::NetworkData::NetworkData(ot::NetworkData::NetworkData *this, ot::Instance *a2, const unsigned __int8 *a3, char a4)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  result = this;
  *this = a3;
  *(this + 8) = a4;
  return result;
}

{
  ot::NetworkData::NetworkData::NetworkData(this, a2, a3, a4);
  return this;
}

uint64_t ot::Ip6::Header::GetSource(ot::Ip6::Header *this)
{
  return this + 8;
}

{
  return this + 8;
}

{
  return ot::Ip6::Header::GetSource(this);
}

{
  return ot::Ip6::Header::GetSource(this);
}

uint64_t ot::Ip6::Header::GetDestination(ot::Ip6::Header *this)
{
  return this + 24;
}

{
  return this + 24;
}

{
  return ot::Ip6::Header::GetDestination(this);
}

{
  return ot::Ip6::Header::GetDestination(this);
}

uint64_t ot::Ip6::Header::GetNextHeader(ot::Ip6::Header *this)
{
  return *(this + 6);
}

{
  return ot::Ip6::Header::GetNextHeader(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Utils::HistoryTracker>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Utils::HistoryTracker>(a1);
}

uint64_t ot::Instance::Get<ot::Utils::HistoryTracker>(uint64_t a1)
{
  return a1 + 156800;
}

{
  return ot::Instance::Get<ot::Utils::HistoryTracker>(a1);
}

uint64_t otPingSenderPing(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Utils::PingSender>(v2);
  v3 = ot::AsCoreType<otPingSenderConfig>(a2);
  return ot::Utils::PingSender::Ping(v5, v3);
}

uint64_t ot::Instance::Get<ot::Utils::PingSender>(uint64_t a1)
{
  return a1 + 156552;
}

{
  return ot::Instance::Get<ot::Utils::PingSender>(a1);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otPingSenderConfig>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

uint64_t otPingSenderStop(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Utils::PingSender>(v1);
  return ot::Utils::PingSender::Stop(v2);
}

uint64_t otServerGetNetDataLocal(uint64_t a1, char a2, unsigned __int8 *a3, char *a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::NetworkData::Local>(v4);
  return ot::NetworkData::NetworkData::CopyNetworkData(v5, (a2 & 1) != 0, a3, a4);
}

uint64_t otServerAddService(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  v7 = a2;
  ot::Data<(ot::DataLengthType)0>::Init(v6, a2 + 9, *(a2 + 8));
  ot::Data<(ot::DataLengthType)0>::Init(v5, v7 + 264, *(v7 + 263));
  v2 = ot::AsCoreType<otInstance>(v8);
  v3 = ot::Instance::Get<ot::NetworkData::Local>(v2);
  return ot::NetworkData::Local::AddService(v3, *(v7 + 4), v6, *(v7 + 262) & 1, v5);
}

uint64_t ot::Data<(ot::DataLengthType)0>::Init(uint64_t result, uint64_t a2, char a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

{
  return ot::Data<(ot::DataLengthType)0>::Init(result, a2, a3);
}

uint64_t otServerRemoveService(uint64_t a1, int a2, uint64_t a3, char a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7[23] = a4;
  ot::Data<(ot::DataLengthType)0>::Init(v7, a3, a4);
  v4 = ot::AsCoreType<otInstance>(v10);
  v5 = ot::Instance::Get<ot::NetworkData::Local>(v4);
  return ot::NetworkData::Local::RemoveService(v5, v9, v7);
}

uint64_t otServerGetNextService(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a2 && a3)
  {
    v3 = ot::AsCoreType<otInstance>(a1);
    v6 = ot::Instance::Get<ot::NetworkData::Local>(v3);
    v4 = ot::AsCoreType<otServiceConfig>(a3);
    return ot::NetworkData::NetworkData::GetNextService(v6, a2, v4);
  }

  else
  {
    return 7;
  }
}

uint64_t otServerRegister(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkData::Notifier>(v1);
  ot::NetworkData::Notifier::HandleServerDataUpdated(v2);
  return 0;
}

void *ot::Mle::RouteTlv::Init(ot::Mle::RouteTlv *this)
{
  ot::Mle::Tlv::SetType(this, 9);
  ot::Tlv::SetLength(this, 72);
  ot::Clearable<ot::Mle::RouterIdSet>::Clear((this + 3));
  return ot::ClearAllBytes<unsigned char [63]>(this + 11);
}

_BYTE *ot::Mle::Tlv::SetType(_BYTE *a1, char a2)
{
  return ot::Tlv::SetType(a1, a2);
}

{
  return ot::Mle::Tlv::SetType(a1, a2);
}

uint64_t ot::Tlv::SetLength(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::Tlv::SetLength(this, a2);
}

void *ot::Clearable<ot::Mle::RouterIdSet>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Mle::RouterIdSet>(a1);
}

{
  return ot::Clearable<ot::Mle::RouterIdSet>::Clear(a1);
}

void *ot::ClearAllBytes<unsigned char [63]>(void *a1)
{
  return memset(a1, 0, 0x3FuLL);
}

{
  return ot::ClearAllBytes<unsigned char [63]>(a1);
}

BOOL ot::Mle::RouteTlv::IsValid(ot::Mle::RouteTlv *this)
{
  v4 = 0;
  if (ot::Tlv::GetLength(this) >= 9uLL)
  {
    NumberOfAllocatedIds = ot::Mle::RouterIdSet::GetNumberOfAllocatedIds((this + 3));
    if (NumberOfAllocatedIds <= 0x20u)
    {
      return ot::Mle::RouteTlv::GetRouteDataLength(this) >= NumberOfAllocatedIds;
    }
  }

  return v4;
}

uint64_t ot::Mle::RouteTlv::GetRouteDataLength(ot::Mle::RouteTlv *this)
{
  return (ot::Tlv::GetLength(this) - 9);
}

{
  return ot::Mle::RouteTlv::GetRouteDataLength(this);
}

_BYTE *ot::Mle::ConnectivityTlv::IncrementLinkQuality(_BYTE *result, char a2)
{
  if (a2)
  {
    switch(a2)
    {
      case 1:
        ++result[5];
        break;
      case 2:
        ++result[4];
        break;
      case 3:
        ++result[3];
        break;
    }
  }

  return result;
}

uint64_t ot::Mle::ConnectivityTlv::SetParentPriority(ot::Mle::ConnectivityTlv *this, char a2)
{
  result = ot::Preference::To2BitUint(a2);
  *(this + 2) = result << 6;
  return result;
}

_BYTE *ot::Mle::ChannelTlvValue::SetChannelPage(_BYTE *this, char a2)
{
  *this = a2;
  return this;
}

{
  return ot::Mle::ChannelTlvValue::SetChannelPage(this, a2);
}

uint64_t ot::Mle::ChannelTlvValue::SetChannel(ot::Mle::ChannelTlvValue *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::Mle::ChannelTlvValue::SetChannel(this, a2);
}

uint64_t ot::Mle::ChannelTlvValue::IsValid(ot::Mle::ChannelTlvValue *this)
{
  v4 = 0;
  if (ot::Radio::SupportsChannelPage(*this))
  {
    Channel = ot::Mle::ChannelTlvValue::GetChannel(this);
    if (Channel >= 0xBu && Channel <= 0x19u)
    {
      v4 = 1;
    }
  }

  return v4 & 1;
}

BOOL ot::Radio::SupportsChannelPage(ot::Radio *this)
{
  return this == 0;
}

{
  return ot::Radio::SupportsChannelPage(this);
}

uint64_t ot::Mle::ChannelTlvValue::GetChannel(ot::Mle::ChannelTlvValue *this)
{
  return ot::BigEndian::HostSwap16(*(this + 1));
}

{
  return ot::Mle::ChannelTlvValue::GetChannel(this);
}

_BYTE *ot::Tlv::SetType(_BYTE *this, char a2)
{
  *this = a2;
  return this;
}

{
  return ot::Tlv::SetType(this, a2);
}

void *ot::ClearAllBytes<ot::Mle::RouterIdSet>(void *result)
{
  *result = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Mle::RouterIdSet>(result);
}

uint64_t otThreadGetChildTimeout(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetTimeout(v2);
}

uint64_t ot::Mle::Mle::GetTimeout(ot::Mle::Mle *this)
{
  return *(this + 39);
}

{
  return ot::Mle::Mle::GetTimeout(this);
}

void otThreadSetChildTimeout(uint64_t a1, unsigned int a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  ot::Mle::Mle::SetTimeout(v3, a2);
}

void otThreadGetExtendedPanId(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::ExtendedPanIdManager>(v1);
  ot::MeshCoP::ExtendedPanIdManager::GetExtPanId(v2);
}

uint64_t ot::Instance::Get<ot::MeshCoP::ExtendedPanIdManager>(uint64_t a1)
{
  return a1 + 87992;
}

{
  return ot::Instance::Get<ot::MeshCoP::ExtendedPanIdManager>(a1);
}

void ot::MeshCoP::ExtendedPanIdManager::GetExtPanId(ot::MeshCoP::ExtendedPanIdManager *this)
{
  ;
}

{
  ot::MeshCoP::ExtendedPanIdManager::GetExtPanId(this);
}

uint64_t otThreadSetExtendedPanId(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = ot::AsCoreType<otInstance>(a1);
  v7 = ot::AsCoreType<otExtendedPanId>(a2);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v8);
  if (ot::Mle::Mle::IsDisabled(v2))
  {
    v3 = ot::Instance::Get<ot::MeshCoP::ExtendedPanIdManager>(v8);
    ot::MeshCoP::ExtendedPanIdManager::SetExtPanId(v3, v7);
    active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v8);
    ot::MeshCoP::DatasetManager::Clear(active);
    v5 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v8);
    ot::MeshCoP::DatasetManager::Clear(v5);
  }

  else
  {
    return 13;
  }

  return v9;
}

uint64_t otThreadGetLeaderRloc(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::Mle>(v2);
  if (ot::Mle::Mle::HasRloc16(v3, 0xFFFEu))
  {
    return 16;
  }

  else
  {
    v4 = ot::AsCoreType<otInstance>(a1);
    v7 = ot::Instance::Get<ot::Mle::Mle>(v4);
    v5 = ot::AsCoreType<otIp6Address>(a2);
    ot::Mle::Mle::GetLeaderRloc(v7, v5);
  }

  return v8;
}

uint64_t otThreadGetLinkMode(uint64_t a1)
{
  v5 = a1;
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  DeviceMode = ot::Mle::Mle::GetDeviceMode(v2);
  ot::Mle::DeviceMode::Get(&DeviceMode, &v6);
  return v6;
}

uint64_t otThreadSetLinkMode(uint64_t a1, char a2)
{
  v7 = a2;
  v6 = a1;
  v2 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  ot::Mle::DeviceMode::DeviceMode(&v5, v7);
  return ot::Mle::Mle::SetDeviceMode(v4, v5);
}

_BYTE *ot::Mle::DeviceMode::DeviceMode(_BYTE *a1, char a2)
{
  ot::Mle::DeviceMode::DeviceMode(a1, a2);
  return a1;
}

{
  v4 = a2;
  ot::Mle::DeviceMode::Set(a1, &v4);
  return a1;
}

double otThreadGetNetworkKey(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::KeyManager>(v2);
  v3 = ot::AsCoreType<otNetworkKey>(a2);
  *&result = ot::KeyManager::GetNetworkKey(v5, v3).n128_u64[0];
  return result;
}

uint64_t ot::Instance::Get<ot::KeyManager>(uint64_t a1)
{
  return a1 + 88040;
}

{
  return ot::Instance::Get<ot::KeyManager>(a1);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otNetworkKey>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

uint64_t otThreadSetNetworkKey(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v8 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v8);
  if (ot::Mle::Mle::IsDisabled(v2))
  {
    v7 = ot::Instance::Get<ot::KeyManager>(v8);
    v3 = ot::AsCoreType<otNetworkKey>(a2);
    ot::KeyManager::SetNetworkKey(v7, v3);
    active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v8);
    ot::MeshCoP::DatasetManager::Clear(active);
    v5 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v8);
    ot::MeshCoP::DatasetManager::Clear(v5);
  }

  else
  {
    return 13;
  }

  return v9;
}

uint64_t otThreadGetRloc(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetMeshLocalRloc(v2);
}

uint64_t ot::Mle::Mle::GetMeshLocalRloc(ot::Mle::Mle *this)
{
  return ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1056));
}

{
  return ot::Mle::Mle::GetMeshLocalRloc(this);
}

uint64_t otThreadGetMeshLocalEid(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetMeshLocalEid(v2);
}

uint64_t ot::Mle::Mle::GetMeshLocalEid(ot::Mle::Mle *this)
{
  return ot::Ip6::Netif::UnicastAddress::GetAddress((this + 1024));
}

{
  return ot::Mle::Mle::GetMeshLocalEid(this);
}

uint64_t otThreadGetMeshLocalPrefix(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetMeshLocalPrefix(v2);
}

uint64_t otThreadSetMeshLocalPrefix(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  if (ot::Mle::Mle::IsDisabled(v3))
  {
    v4 = ot::AsCoreType<otInstance>(a1);
    v11 = ot::Instance::Get<ot::Mle::MleRouter>(v4);
    v5 = ot::AsCoreType<otIp6NetworkPrefix>(a2);
    ot::Mle::Mle::SetMeshLocalPrefix(v11, v5);
    v6 = ot::AsCoreType<otInstance>(a1);
    active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v6);
    ot::MeshCoP::DatasetManager::Clear(active);
    v8 = ot::AsCoreType<otInstance>(a1);
    v9 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v8);
    ot::MeshCoP::DatasetManager::Clear(v9);
  }

  else
  {
    return 13;
  }

  return v12;
}

uint64_t otThreadGetLinkLocalIp6Address(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetLinkLocalAddress(v2);
}

uint64_t ot::Mle::Mle::GetLinkLocalAddress(ot::Mle::Mle *this)
{
  return ot::Ip6::Netif::UnicastAddress::GetAddress((this + 992));
}

{
  return ot::Mle::Mle::GetLinkLocalAddress(this);
}

uint64_t otThreadGetLinkLocalAllThreadNodesMulticastAddress(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetLinkLocalAllThreadNodesAddress(v2);
}

uint64_t ot::Mle::Mle::GetLinkLocalAllThreadNodesAddress(ot::Mle::Mle *this)
{
  return ot::Ip6::Netif::MulticastAddress::GetAddress((this + 1088));
}

{
  return ot::Mle::Mle::GetLinkLocalAllThreadNodesAddress(this);
}

uint64_t otThreadGetRealmLocalAllThreadNodesMulticastAddress(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetRealmLocalAllThreadNodesAddress(v2);
}

uint64_t ot::Mle::Mle::GetRealmLocalAllThreadNodesAddress(ot::Mle::Mle *this)
{
  return ot::Ip6::Netif::MulticastAddress::GetAddress((this + 1112));
}

{
  return ot::Mle::Mle::GetRealmLocalAllThreadNodesAddress(this);
}

uint64_t otThreadGetServiceAloc(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v9 = 0;
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mle::Mle>(v3);
  if (ot::Mle::Mle::HasRloc16(v4, 0xFFFEu))
  {
    return 16;
  }

  else
  {
    v5 = ot::AsCoreType<otInstance>(a1);
    v8 = ot::Instance::Get<ot::Mle::Mle>(v5);
    v6 = ot::AsCoreType<otIp6Address>(a3);
    ot::Mle::Mle::GetServiceAloc(v8, a2, v6);
  }

  return v9;
}

void otThreadGetNetworkName(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::NetworkNameManager>(v1);
  ot::MeshCoP::NetworkNameManager::GetNetworkName(v2);
  ot::MeshCoP::NetworkName::GetAsCString(v3);
}

uint64_t ot::Instance::Get<ot::MeshCoP::NetworkNameManager>(uint64_t a1)
{
  return a1 + 88000;
}

{
  return ot::Instance::Get<ot::MeshCoP::NetworkNameManager>(a1);
}

void ot::MeshCoP::NetworkNameManager::GetNetworkName(ot::MeshCoP::NetworkNameManager *this)
{
  ;
}

{
  ot::MeshCoP::NetworkNameManager::GetNetworkName(this);
}

void ot::MeshCoP::NetworkName::GetAsCString(ot::MeshCoP::NetworkName *this)
{
  ;
}

{
  ot::MeshCoP::NetworkName::GetAsCString(this);
}

uint64_t otThreadSetNetworkName(uint64_t a1, ot *a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  if (ot::Mle::Mle::IsDisabled(v3))
  {
    if (a2 && *a2)
    {
      v4 = ot::AsCoreType<otInstance>(a1);
      v5 = ot::Instance::Get<ot::MeshCoP::NetworkNameManager>(v4);
      v11 = ot::MeshCoP::NetworkNameManager::SetNetworkName(v5, a2);
      v6 = ot::AsCoreType<otInstance>(a1);
      active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v6);
      ot::MeshCoP::DatasetManager::Clear(active);
      v8 = ot::AsCoreType<otInstance>(a1);
      v9 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v8);
      ot::MeshCoP::DatasetManager::Clear(v9);
    }

    else
    {
      return 7;
    }
  }

  else
  {
    return 13;
  }

  return v11;
}

void otThreadGetDomainName(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::NetworkNameManager>(v1);
  DomainName = ot::MeshCoP::NetworkNameManager::GetDomainName(v2);
  ot::MeshCoP::NetworkName::GetAsCString(DomainName);
}

uint64_t ot::MeshCoP::NetworkNameManager::GetDomainName(ot::MeshCoP::NetworkNameManager *this)
{
  return this + 17;
}

{
  return ot::MeshCoP::NetworkNameManager::GetDomainName(this);
}

uint64_t otThreadSetDomainName(uint64_t a1, ot *a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  if (ot::Mle::Mle::IsDisabled(v3))
  {
    v4 = ot::AsCoreType<otInstance>(a1);
    v5 = ot::Instance::Get<ot::MeshCoP::NetworkNameManager>(v4);
    return ot::MeshCoP::NetworkNameManager::SetDomainName(v5, a2);
  }

  else
  {
    return 13;
  }
}

uint64_t otThreadSetFixedDuaInterfaceIdentifier(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  if (a2)
  {
    v2 = ot::AsCoreType<otInstance>(a1);
    v7 = ot::Instance::Get<ot::DuaManager>(v2);
    v3 = ot::AsCoreType<otIp6InterfaceIdentifier>(a2);
    return ot::DuaManager::SetFixedDuaInterfaceIdentifier(v7, v3);
  }

  else
  {
    v4 = ot::AsCoreType<otInstance>(a1);
    v5 = ot::Instance::Get<ot::DuaManager>(v4);
    ot::DuaManager::ClearFixedDuaInterfaceIdentifier(v5);
  }

  return v8;
}

uint64_t ot::Instance::Get<ot::DuaManager>(uint64_t a1)
{
  return a1 + 154408;
}

{
  return ot::Instance::Get<ot::DuaManager>(a1);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otIp6InterfaceIdentifier>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

uint64_t otThreadGetFixedDuaInterfaceIdentifier(uint64_t a1)
{
  v5 = ot::AsCoreType<otInstance>(a1);
  v4 = 0;
  v1 = ot::Instance::Get<ot::DuaManager>(v5);
  if (ot::DuaManager::IsFixedDuaInterfaceIdentifierSet(v1))
  {
    v2 = ot::Instance::Get<ot::DuaManager>(v5);
    return ot::DuaManager::GetFixedDuaInterfaceIdentifier(v2);
  }

  return v4;
}

BOOL ot::DuaManager::IsFixedDuaInterfaceIdentifierSet(ot::DuaManager *this)
{
  return !ot::Ip6::InterfaceIdentifier::IsUnspecified((this + 48));
}

{
  return ot::DuaManager::IsFixedDuaInterfaceIdentifierSet(this);
}

uint64_t ot::DuaManager::GetFixedDuaInterfaceIdentifier(ot::DuaManager *this)
{
  return this + 48;
}

{
  return ot::DuaManager::GetFixedDuaInterfaceIdentifier(this);
}

uint64_t otThreadGetKeySequenceCounter(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::KeyManager>(v1);
  return ot::KeyManager::GetCurrentKeySequence(v2);
}

uint64_t ot::KeyManager::GetCurrentKeySequence(ot::KeyManager *this)
{
  return *(this + 4);
}

{
  return ot::KeyManager::GetCurrentKeySequence(this);
}

uint64_t otThreadSetKeySequenceCounter(uint64_t a1, int a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::KeyManager>(v2);
  return ot::KeyManager::SetCurrentKeySequence(v3, a2, 0);
}

uint64_t otThreadGetKeySwitchGuardTime(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::KeyManager>(v1);
  return ot::KeyManager::GetKeySwitchGuardTime(v2);
}

uint64_t ot::KeyManager::GetKeySwitchGuardTime(ot::KeyManager *this)
{
  return *(this + 35);
}

{
  return ot::KeyManager::GetKeySwitchGuardTime(this);
}

uint64_t otThreadSetKeySwitchGuardTime(uint64_t a1, __int16 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::KeyManager>(v2);
  return ot::KeyManager::SetKeySwitchGuardTime(v3, a2);
}

uint64_t ot::KeyManager::SetKeySwitchGuardTime(uint64_t this, __int16 a2)
{
  *(this + 70) = a2;
  return this;
}

{
  return ot::KeyManager::SetKeySwitchGuardTime(this, a2);
}

uint64_t otThreadBecomeDetached(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::BecomeDetached(v2);
}

uint64_t otThreadBecomeChild(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::BecomeChild(v2);
}

uint64_t otThreadGetNextNeighborInfo(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!a2)
  {
    __assert_rtn("otThreadGetNextNeighborInfo", "thread_api.cpp", 316, "(aIterator) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::NeighborTable>(v3);
  v4 = ot::AsCoreType<otNeighborInfo>(a3);
  return ot::NeighborTable::GetNextNeighborInfo(v6, a2, v4);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otNeighborInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otThreadSetNeighborEnhAckSolicitationEnabled(uint64_t a1, uint64_t a2, char a3)
{
  v7 = 23;
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::NeighborTable>(v3);
  Neighbor = ot::NeighborTable::FindNeighbor(v4, a2, 0);
  if (Neighbor)
  {
    ot::Neighbor::SetEnhancedAckEnabled(Neighbor, a3 & 1);
    return 0;
  }

  return v7;
}

uint64_t ot::Neighbor::SetEnhancedAckEnabled(uint64_t this, char a2)
{
  *(this + 34) = *(this + 34) & 0xFE | a2 & 1;
  return this;
}

{
  return ot::Neighbor::SetEnhancedAckEnabled(this, a2);
}

uint64_t otThreadGetNeighborEnhAckSolicitationEnabled(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = 23;
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::NeighborTable>(v3);
  Neighbor = ot::NeighborTable::FindNeighbor(v4, a2, 0);
  if (Neighbor)
  {
    if (!a3)
    {
      __assert_rtn("otThreadGetNeighborEnhAckSolicitationEnabled", "thread_api.cpp", 348, "aEnabled != nullptr");
    }

    *a3 = ot::Neighbor::IsEnhacedAckEnabled(Neighbor);
    return 0;
  }

  return v7;
}

uint64_t ot::Neighbor::IsEnhacedAckEnabled(ot::Neighbor *this)
{
  return *(this + 34) & 1;
}

{
  return ot::Neighbor::IsEnhacedAckEnabled(this);
}

uint64_t otThreadGetDeviceRole(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  Role = ot::Mle::Mle::GetRole(v2);
  return ot::MapEnum<ot::Mle::DeviceRole>(Role);
}

uint64_t ot::MapEnum<otDeviceRole>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<otDeviceRole>(result);
}

uint64_t otThreadGetLeaderData(uint64_t a1, void *a2)
{
  v7 = 0;
  if (!a2)
  {
    __assert_rtn("otThreadGetLeaderData", "thread_api.cpp", 369, "(aLeaderData) != nullptr");
  }

  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  if (ot::Mle::Mle::IsAttached(v3))
  {
    v4 = ot::AsCoreType<otInstance>(a1);
    v5 = ot::Instance::Get<ot::Mle::MleRouter>(v4);
    *a2 = *ot::Mle::Mle::GetLeaderData(v5);
  }

  else
  {
    return 16;
  }

  return v7;
}

uint64_t otThreadGetLeaderRouterId(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetLeaderId(v2);
}

uint64_t otThreadGetLeaderWeight(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  LeaderData = ot::Mle::Mle::GetLeaderData(v2);
  return ot::Mle::LeaderData::GetWeighting(LeaderData);
}

uint64_t ot::Mle::LeaderData::GetWeighting(ot::Mle::LeaderData *this)
{
  return *(this + 4);
}

{
  return ot::Mle::LeaderData::GetWeighting(this);
}

uint64_t otThreadGetPartitionId(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  LeaderData = ot::Mle::Mle::GetLeaderData(v2);
  return ot::Mle::LeaderData::GetPartitionId(LeaderData);
}

uint64_t otThreadGetRloc16(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetRloc16(v2);
}

BOOL otThreadIsDeviceDetached(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::IsDetached(v2);
}

BOOL ot::Mle::Mle::IsDetached(ot::Mle::Mle *this)
{
  return *(this + 130) == 1;
}

{
  return ot::Mle::Mle::IsDetached(this);
}

uint64_t otThreadResetRloc16(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::ResetRloc16(v2);
}

uint64_t ot::Mle::Mle::ResetRloc16(uint64_t this)
{
  *(this + 144) = -2;
  return this;
}

{
  return ot::Mle::Mle::ResetRloc16(this);
}

uint64_t otThreadStoreInfoToSettings(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::Store(v2);
}

uint64_t otThreadGetParentInfo(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Mle::Mle>(v2);
  v3 = ot::AsCoreType<otRouterInfo>(a2);
  return ot::Mle::Mle::GetParentInfo(v5, v3);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otRouterInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

BOOL otThreadGetParentAverageRssi(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    __assert_rtn("otThreadGetParentAverageRssi", "thread_api.cpp", 418, "(aParentRssi) != nullptr");
  }

  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  Parent = ot::Mle::Mle::GetParent(v3);
  LinkInfo = ot::Neighbor::GetLinkInfo(Parent);
  *a2 = ot::LinkQualityInfo::GetAverageRss(LinkInfo);
  return *a2 == 127;
}

uint64_t ot::Neighbor::GetLinkInfo(ot::Neighbor *this)
{
  return this + 38;
}

{
  return this + 38;
}

{
  return ot::Neighbor::GetLinkInfo(this);
}

{
  return ot::Neighbor::GetLinkInfo(this);
}

uint64_t ot::LinkQualityInfo::GetAverageRss(ot::LinkQualityInfo *this)
{
  return ot::RssAverager::GetAverage(this);
}

{
  return ot::LinkQualityInfo::GetAverageRss(this);
}

BOOL otThreadGetParentLastRssi(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    __assert_rtn("otThreadGetParentLastRssi", "thread_api.cpp", 432, "(aLastRssi) != nullptr");
  }

  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  Parent = ot::Mle::Mle::GetParent(v3);
  LinkInfo = ot::Neighbor::GetLinkInfo(Parent);
  *a2 = ot::LinkQualityInfo::GetLastRss(LinkInfo);
  return *a2 == 127;
}

uint64_t ot::LinkQualityInfo::GetLastRss(ot::LinkQualityInfo *this)
{
  return *(this + 3);
}

{
  return ot::LinkQualityInfo::GetLastRss(this);
}

uint64_t otThreadSearchForBetterParent(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::SearchForBetterParent(v2);
}

uint64_t otThreadSetEnabled(uint64_t a1, char a2)
{
  v7 = 0;
  if (a2)
  {
    v2 = ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
    return ot::Mle::Mle::Start(v3);
  }

  else
  {
    v4 = ot::AsCoreType<otInstance>(a1);
    v5 = ot::Instance::Get<ot::Mle::MleRouter>(v4);
    ot::Mle::Mle::Stop(v5);
  }

  return v7;
}

uint64_t ot::Mle::Mle::Start(ot::Mle::Mle *this)
{
  return ot::Mle::Mle::Start(this, 0);
}

{
  return ot::Mle::Mle::Start(this);
}

void *ot::Mle::Mle::Stop(ot::Mle::Mle *this)
{
  return ot::Mle::Mle::Stop(this, 1);
}

{
  return ot::Mle::Mle::Stop(this);
}

BOOL otThreadIsSingleton(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::IsSingleton(v2);
}

uint64_t otThreadDiscover(uint64_t a1, int a2, unsigned __int16 a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a6;
  v11 = a7;
  v7 = ot::AsCoreType<otInstance>(a1);
  v9 = ot::Instance::Get<ot::Mle::DiscoverScanner>(v7);
  ot::Mac::ChannelMask::ChannelMask(v10, v16);
  return ot::Mle::DiscoverScanner::Discover(v9, v10, v15, v14 & 1, v13 & 1, 0, v12, v11);
}

uint64_t ot::Instance::Get<ot::Mle::DiscoverScanner>(uint64_t a1)
{
  return a1 + 126944;
}

{
  return ot::Instance::Get<ot::Mle::DiscoverScanner>(a1);
}

uint64_t otThreadSetJoinerAdvertisement(uint64_t a1, unsigned int a2, const unsigned __int8 *a3, unsigned __int8 a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Mle::DiscoverScanner>(v4);
  return ot::Mle::DiscoverScanner::SetJoinerAdvertisement(v5, a2, a3, a4);
}

BOOL otThreadIsDiscoverInProgress(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::DiscoverScanner>(v1);
  return ot::Mle::DiscoverScanner::IsInProgress(v2);
}

BOOL ot::Mle::DiscoverScanner::IsInProgress(ot::Mle::DiscoverScanner *this)
{
  return *(this + 64) != 0;
}

{
  return ot::Mle::DiscoverScanner::IsInProgress(this);
}

uint64_t otThreadGetIp6Counters(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshForwarder>(v1);
  return ot::MeshForwarder::GetCounters(v2);
}

uint64_t ot::MeshForwarder::GetCounters(ot::MeshForwarder *this)
{
  return this + 136;
}

{
  return ot::MeshForwarder::GetCounters(this);
}

void *otThreadResetIp6Counters(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshForwarder>(v1);
  return ot::MeshForwarder::ResetCounters(v2);
}

void *ot::MeshForwarder::ResetCounters(ot::MeshForwarder *this)
{
  return ot::ClearAllBytes<otIpCounters>(this + 136);
}

{
  return ot::MeshForwarder::ResetCounters(this);
}

uint64_t otThreadGetTimeInQueueHistogram(uint64_t a1, unsigned __int16 *a2, unsigned int *a3)
{
  if (!a2)
  {
    __assert_rtn("otThreadGetTimeInQueueHistogram", "thread_api.cpp", 514, "(aNumBins) != nullptr");
  }

  if (!a3)
  {
    __assert_rtn("otThreadGetTimeInQueueHistogram", "thread_api.cpp", 515, "(aBinInterval) != nullptr");
  }

  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::MeshForwarder>(v3);
  return ot::MeshForwarder::GetTimeInQueueHistogram(v4, a2, a3);
}

uint64_t ot::MeshForwarder::GetTimeInQueueHistogram(ot::MeshForwarder *this, unsigned __int16 *a2, unsigned int *a3)
{
  return ot::MeshForwarder::TxQueueStats::GetHistogram((this + 408), a2, a3);
}

{
  return ot::MeshForwarder::GetTimeInQueueHistogram(this, a2, a3);
}

uint64_t otThreadGetMaxTimeInQueue(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshForwarder>(v1);
  return ot::MeshForwarder::GetMaxTimeInQueue(v2);
}

uint64_t ot::MeshForwarder::GetMaxTimeInQueue(ot::MeshForwarder *this)
{
  return ot::MeshForwarder::TxQueueStats::GetMaxInterval((this + 408));
}

{
  return ot::MeshForwarder::GetMaxTimeInQueue(this);
}

void otThreadResetTimeInQueueStat(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshForwarder>(v1);
  ot::MeshForwarder::ResetTimeInQueueStat(v2);
}

void ot::MeshForwarder::ResetTimeInQueueStat(ot::MeshForwarder *this)
{
  ot::Clearable<ot::MeshForwarder::TxQueueStats>::Clear(this + 408);
}

{
  ot::MeshForwarder::ResetTimeInQueueStat(this);
}

uint64_t otThreadGetMleCounters(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetCounters(v2);
}

uint64_t ot::Mle::Mle::GetCounters(ot::Mle::Mle *this)
{
  ot::Mle::Mle::UpdateRoleTimeCounters(this, *(this + 130));
  return this + 616;
}

{
  return ot::Mle::Mle::GetCounters(this);
}

unint64_t otThreadResetMleCounters(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::ResetCounters(v2);
}

uint64_t otThreadDetachGracefully(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mle::Mle>(v3);
  return ot::Mle::Mle::DetachGracefully(v4, a2, a3);
}

uint64_t otThreadAttachCslPeripheral(uint64_t a1, uint64_t a2, unsigned int a3, unsigned __int8 a4, char a5, unsigned __int8 a6)
{
  v6 = ot::AsCoreType<otInstance>(a1);
  v9 = ot::Instance::Get<ot::Mle::Mle>(v6);
  v7 = ot::AsCoreType<otExtAddress>(a2);
  return ot::Mle::Mle::AttachCslPeripheral(v9, v7, a3, a4, 0, a5, a6);
}

uint64_t otThreadConfigureWOR(uint64_t a1, unsigned int a2, __int16 a3)
{
  Active = otThreadSetLinkMode(a1, 6);
  if (!Active)
  {
    Active = otLinkSetCslPeriod(a1, a2);
    if (!Active)
    {
      Active = otIp6SetEnabled(a1, 1);
      if (!Active)
      {
        Active = otThreadSetEnabled(a1, 1);
        if (!Active)
        {
          Active = otPlatVendorSetPriority(a1, 5u, 1u, 0);
          if (!Active)
          {
            Active = otDatasetGetActive(a1, &otThreadConfigureWOR::sDataset);
            if (a3)
            {
              word_10053ABA4 = a3;
              byte_10053ABCC = 1;
              return otDatasetSetActive(a1, &otThreadConfigureWOR::sDataset);
            }
          }
        }
      }
    }
  }

  return Active;
}

BOOL otThreadIsEnhCslPeerLinking(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::IsCslPeripheralAttaching(v2);
}

BOOL ot::Mle::Mle::IsCslPeripheralAttaching(ot::Mle::Mle *this)
{
  v2 = 1;
  if (*(this + 128) != 1)
  {
    return *(this + 128) == 2;
  }

  return v2;
}

{
  return ot::Mle::Mle::IsCslPeripheralAttaching(this);
}

uint64_t otThreadSetScanHighPriority(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::Mle>(v2);
  return ot::Mle::Mle::setScanHighPriority(v3, a2 & 1);
}

uint64_t ot::Mle::Mle::setScanHighPriority(uint64_t this, char a2)
{
  *(this + 65) = a2 & 1;
  return this;
}

{
  return ot::Mle::Mle::setScanHighPriority(this, a2);
}

uint64_t otThreadGetScanHighPriority(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::getScanHighPriority(v2);
}

uint64_t ot::Mle::Mle::getScanHighPriority(ot::Mle::Mle *this)
{
  return *(this + 65) & 1;
}

{
  return ot::Mle::Mle::getScanHighPriority(this);
}

void otThreadSetCoexConfigInfo(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  ot::Mle::Mle::setThreadCoexConfigInfo(v2);
}

void ot::Mle::Mle::setThreadCoexConfigInfo(ot::Mle::Mle *this)
{
  Role = ot::Mle::Mle::GetRole(this);
  ot::Mle::Mle::SetThreadCoexConfig(this, 0, Role, *(this + 132));
}

{
  ot::Mle::Mle::setThreadCoexConfigInfo(this);
}

uint64_t otThreadSetFirmwareUpdate(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::Mle>(v2);
  return ot::Mle::Mle::setFirmwareUpdate(v3, a2 & 1, v4, v5, v6, v7, v8, v9);
}

uint64_t otThreadGetWasChild(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::wasChild(v2);
}

uint64_t ot::Mle::Mle::wasChild(ot::Mle::Mle *this)
{
  return *(this + 64) & 1;
}

{
  return ot::Mle::Mle::wasChild(this);
}

void otThreadSetWasChild(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::Mle>(v2);
  ot::Mle::Mle::setWasChild(v3, a2 & 1);
}

void ot::Mle::Mle::setWasChild(ot::Mle::Mle *this, char a2)
{
  *(this + 64) = a2 & 1;
  ot::Mle::Mle::Store(this);
  IgnoreError();
}

{
  ot::Mle::Mle::setWasChild(this, a2);
}

uint64_t otThreadIsEnhCslPeerUnlinking(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::IsCslPeripheralDetaching(v2);
}

uint64_t ot::Mle::Mle::IsCslPeripheralDetaching(ot::Mle::Mle *this)
{
  return *(this + 856) & 1;
}

{
  return ot::Mle::Mle::IsCslPeripheralDetaching(this);
}

void otThreadGetCslPeripheralMleID(uint64_t a1, char *a2, __int16 a3)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mle::Mle>(v3);
  CslPeripheral = ot::Mle::Mle::GetCslPeripheral(v4);
  if (CslPeripheral)
  {
    Rloc16 = ot::Neighbor::GetRloc16(CslPeripheral);
    v5 = ot::AsCoreType<otInstance>(v14);
    v6 = ot::Instance::Get<ot::Mle::Mle>(v5);
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ChildTable>(v6);
    ot::ChildTable::FindChild(v7, Rloc16, 0);
    if (v8)
    {
      if (!ot::Child::GetMeshLocalIp6Address(v8, v10))
      {
        otIp6AddressToString(v10, v13, v12);
      }
    }
  }
}

uint64_t ot::Mle::Mle::GetCslPeripheral(ot::Mle::Mle *this)
{
  return *(this + 103);
}

{
  return ot::Mle::Mle::GetCslPeripheral(this);
}

uint64_t otThreadGetCslPeripheralAddr(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  CslPeripheral = ot::Mle::Mle::GetCslPeripheral(v2);
  if (!CslPeripheral)
  {
    return 0;
  }

  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      ot::Neighbor::GetExtAddress(CslPeripheral);
      ot::Mac::ExtAddress::ToString(v3, v12);
      v4 = ot::String<(unsigned short)17>::AsCString(v12);
      __os_log_helper_16_2_2_8_32_8_32(v13, "otThreadGetCslPeripheralAddr", v4);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: CSL peripheral address: %s \n", v13, 0x16u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v11, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v11, 0x16u);
  }

  ot::Neighbor::GetExtAddress(CslPeripheral);
  ot::Mac::ExtAddress::ToString(v5, v10);
  return ot::String<(unsigned short)17>::AsCString(v10);
}

void ot::Neighbor::GetExtAddress(ot::Neighbor *this)
{
  ;
}

{
  ;
}

{
  ot::Neighbor::GetExtAddress(this);
}

{
  ot::Neighbor::GetExtAddress(this);
}

uint64_t otThreadWedWakeUpPattern(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::WedWakeUpPattern(v2);
}

uint64_t otThreadWedGetEcslPeriod(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::getEcslPeriod(v2);
}

BOOL otThreadIsEnhCslPeerLinked(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::IsCslPeripheralAttached(v2);
}

BOOL ot::Mle::Mle::IsCslPeripheralAttached(ot::Mle::Mle *this)
{
  v2 = 1;
  if (*(this + 128) != 3)
  {
    return *(this + 128) == 4;
  }

  return v2;
}

{
  return ot::Mle::Mle::IsCslPeripheralAttached(this);
}

uint64_t otThreadDetachEnhCslPeer(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::Mle>(v1);
  return ot::Mle::Mle::DetachCslPeripheral(v2);
}

uint64_t otThreadGetTriggerBasedIp6Counters(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshForwarder>(v1);
  return ot::MeshForwarder::GetTriggerBasedCounters(v2);
}

uint64_t ot::MeshForwarder::GetTriggerBasedCounters(ot::MeshForwarder *this)
{
  return this + 192;
}

{
  return ot::MeshForwarder::GetTriggerBasedCounters(this);
}

void *otThreadResetTriggerBasedIp6Counters(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshForwarder>(v1);
  return ot::MeshForwarder::ResetTriggerBasedCounters(v2);
}

void *ot::MeshForwarder::ResetTriggerBasedCounters(ot::MeshForwarder *this)
{
  return memset(this + 192, 0, 0x38uLL);
}

{
  return ot::MeshForwarder::ResetTriggerBasedCounters(this);
}

uint64_t otThreadGetMleTriggerBasedCounters(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetTriggerBasedCounters(v2);
}

uint64_t ot::Mle::Mle::GetTriggerBasedCounters(ot::Mle::Mle *this)
{
  return this + 788;
}

{
  return ot::Mle::Mle::GetTriggerBasedCounters(this);
}

uint64_t otThreadResetMleTriggerBasedCounters(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::ResetMleTriggerBasedCounters(v2);
}

uint64_t ot::Mle::Mle::ResetMleTriggerBasedCounters(uint64_t this)
{
  *(this + 788) = 0;
  *(this + 796) = 0;
  *(this + 804) = 0;
  return this;
}

{
  return ot::Mle::Mle::ResetMleTriggerBasedCounters(this);
}

uint64_t otThreadGetBbrCounters(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::BackboneRouter::Local>(v1);
  return ot::BackboneRouter::Local::GetBbrCounters(v2);
}

uint64_t ot::BackboneRouter::Local::GetBbrCounters(ot::BackboneRouter::Local *this)
{
  return this + 120;
}

{
  return ot::BackboneRouter::Local::GetBbrCounters(this);
}

uint64_t otThreadResetBbrCounters(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::BackboneRouter::Local>(v1);
  return ot::BackboneRouter::Local::ResetBbrCounters(v2);
}

uint64_t ot::BackboneRouter::Local::ResetBbrCounters(uint64_t this)
{
  *(this + 120) = 0;
  *(this + 124) = 0;
  return this;
}

{
  return ot::BackboneRouter::Local::ResetBbrCounters(this);
}

uint64_t otThreadGetMleLinkLossCounters(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::GetLinkLossCounters(v2);
}

uint64_t ot::Mle::Mle::GetLinkLossCounters(ot::Mle::Mle *this)
{
  return this + 784;
}

{
  return ot::Mle::Mle::GetLinkLossCounters(this);
}

uint64_t otThreadResetMleLinkLossCounters(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::Mle::ResetLinkLossCounters(v2);
}

uint64_t ot::Mle::Mle::ResetLinkLossCounters(uint64_t this)
{
  *(this + 784) = 0;
  return this;
}

{
  return ot::Mle::Mle::ResetLinkLossCounters(this);
}

void otThreadGetConnectedRouterNodesHistogram(uint64_t a1, unsigned __int8 *a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  ot::Mle::MleRouter::GetConnectedRouterNodesHistogram(v3, a2);
}

void *otThreadResetConnectedRouterNodesHistogram(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::ClearConnectedRouterNodesHistogram(v2);
}

void otThreadGetConnectedChildNodesHistogram(uint64_t a1, unsigned __int8 *a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  ot::Mle::MleRouter::GetConnectedChildNodesHistogram(v3, a2);
}

void *otThreadResetConnectedChildNodesHistogram(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::ClearConnectedChildNodesHistogram(v2);
}

ot::StringWriter *otConvertDurationInSecondsToString(unsigned int a1, char *a2, __int16 a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  ot::StringWriter::StringWriter(v5, a2, a3);
  v3 = ot::Uptime::SecToMsec(v8);
  return ot::Uptime::UptimeToString(v3, v5, 0);
}

uint64_t ot::Uptime::SecToMsec(ot::Uptime *this)
{
  return 1000 * this;
}

{
  return ot::Uptime::SecToMsec(this);
}

void *ot::ClearAllBytes<otIpCounters>(void *a1)
{
  return memset(a1, 0, 0x38uLL);
}

{
  return ot::ClearAllBytes<otIpCounters>(a1);
}

uint64_t ot::MeshForwarder::TxQueueStats::GetMaxInterval(ot::MeshForwarder::TxQueueStats *this)
{
  return *this;
}

{
  return ot::MeshForwarder::TxQueueStats::GetMaxInterval(this);
}

void ot::Clearable<ot::MeshForwarder::TxQueueStats>::Clear(void *a1)
{
  ot::ClearAllBytes<ot::MeshForwarder::TxQueueStats>(a1);
}

{
  ot::Clearable<ot::MeshForwarder::TxQueueStats>::Clear(a1);
}

void ot::ClearAllBytes<ot::MeshForwarder::TxQueueStats>(void *a1)
{
  bzero(a1, 0x34CuLL);
}

{
  ot::ClearAllBytes<ot::MeshForwarder::TxQueueStats>(a1);
}

uint64_t otThreadGetMaxAllowedChildren(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::ChildTable>(v1);
  return ot::ChildTable::GetMaxChildrenAllowed(v2);
}

uint64_t ot::ChildTable::GetMaxChildrenAllowed(ot::ChildTable *this)
{
  return *this;
}

{
  return ot::ChildTable::GetMaxChildrenAllowed(this);
}

uint64_t otThreadSetMaxAllowedChildren(uint64_t a1, unsigned __int16 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::ChildTable>(v2);
  return ot::ChildTable::SetMaxChildrenAllowed(v3, a2);
}

uint64_t otThreadGetMaxChildIpAddresses(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetMaxChildIpAddresses(v2);
}

uint64_t otThreadIsRouterEligible(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::IsRouterEligible(v2);
}

uint64_t otThreadSetRouterEligible(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetRouterEligible(v3, a2 & 1);
}

uint64_t otThreadSetPreferredRouterId(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetPreferredRouterId(v3, a2);
}

uint64_t otThreadGetLocalLeaderWeight(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetLeaderWeight(v2);
}

uint64_t ot::Mle::MleRouter::GetLeaderWeight(ot::Mle::MleRouter *this)
{
  return *(this + 35631);
}

{
  return ot::Mle::MleRouter::GetLeaderWeight(this);
}

uint64_t otThreadSetLocalLeaderWeight(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetLeaderWeight(v3, a2);
}

uint64_t ot::Mle::MleRouter::SetLeaderWeight(uint64_t this, char a2)
{
  *(this + 35631) = a2;
  return this;
}

{
  return ot::Mle::MleRouter::SetLeaderWeight(this, a2);
}

uint64_t otThreadGetJoinerUdpPort(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::MeshCoP::JoinerRouter>(v1);
  return ot::MeshCoP::JoinerRouter::GetJoinerUdpPort(v2);
}

uint64_t ot::Instance::Get<ot::MeshCoP::JoinerRouter>(uint64_t a1)
{
  return a1 + 146336;
}

{
  return ot::Instance::Get<ot::MeshCoP::JoinerRouter>(a1);
}

uint64_t otThreadSetJoinerUdpPort(uint64_t a1, __int16 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::MeshCoP::JoinerRouter>(v2);
  ot::MeshCoP::JoinerRouter::SetJoinerUdpPort(v3, a2);
  return 0;
}

uint64_t otThreadGetContextIdReuseDelay(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::NetworkData::Leader>(v1);
  return ot::NetworkData::Leader::GetContextIdReuseDelay(v2);
}

uint64_t ot::NetworkData::Leader::GetContextIdReuseDelay(ot::NetworkData::Leader *this)
{
  return ot::NetworkData::Leader::ContextIds::GetReuseDelay((this + 272));
}

{
  return ot::NetworkData::Leader::GetContextIdReuseDelay(this);
}

uint64_t otThreadSetContextIdReuseDelay(uint64_t a1, int a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::NetworkData::Leader>(v2);
  return ot::NetworkData::Leader::SetContextIdReuseDelay(v3, a2);
}

uint64_t ot::NetworkData::Leader::SetContextIdReuseDelay(ot::NetworkData::Leader *this, int a2)
{
  return ot::NetworkData::Leader::ContextIds::SetReuseDelay(this + 272, a2);
}

{
  return ot::NetworkData::Leader::SetContextIdReuseDelay(this, a2);
}

uint64_t otThreadGetNetworkIdTimeout(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetNetworkIdTimeout(v2);
}

uint64_t ot::Mle::MleRouter::GetNetworkIdTimeout(ot::Mle::MleRouter *this)
{
  return *(this + 35628);
}

{
  return ot::Mle::MleRouter::GetNetworkIdTimeout(this);
}

uint64_t otThreadSetNetworkIdTimeout(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetNetworkIdTimeout(v3, a2);
}

uint64_t ot::Mle::MleRouter::SetNetworkIdTimeout(uint64_t this, char a2)
{
  *(this + 35628) = a2;
  return this;
}

{
  return ot::Mle::MleRouter::SetNetworkIdTimeout(this, a2);
}

uint64_t otThreadGetRouterUpgradeThreshold(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetRouterUpgradeThreshold(v2);
}

uint64_t ot::Mle::MleRouter::GetRouterUpgradeThreshold(ot::Mle::MleRouter *this)
{
  return *(this + 35629);
}

{
  return ot::Mle::MleRouter::GetRouterUpgradeThreshold(this);
}

uint64_t otThreadSetRouterUpgradeThreshold(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetRouterUpgradeThreshold(v3, a2);
}

uint64_t ot::Mle::MleRouter::SetRouterUpgradeThreshold(uint64_t this, char a2)
{
  *(this + 35629) = a2;
  return this;
}

{
  return ot::Mle::MleRouter::SetRouterUpgradeThreshold(this, a2);
}

uint64_t otThreadGetChildRouterLinks(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetChildRouterLinks(v2);
}

uint64_t ot::Mle::MleRouter::GetChildRouterLinks(ot::Mle::MleRouter *this)
{
  return *(this + 35704);
}

{
  return ot::Mle::MleRouter::GetChildRouterLinks(this);
}

uint64_t otThreadSetChildRouterLinks(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetChildRouterLinks(v3, a2);
}

uint64_t otThreadReleaseRouterId(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 0x3Eu)
  {
    v2 = ot::AsCoreType<otInstance>(a1);
    v3 = ot::Instance::Get<ot::RouterTable>(v2);
    return ot::RouterTable::Release(v3, a2);
  }

  else
  {
    return 7;
  }
}

uint64_t otThreadBecomeRouter(uint64_t a1)
{
  v7 = 13;
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  Role = ot::Mle::Mle::GetRole(v2);
  if (Role > 1)
  {
    if (Role == 2)
    {
      v3 = ot::AsCoreType<otInstance>(a1);
      v4 = ot::Instance::Get<ot::Mle::MleRouter>(v3);
      return ot::Mle::MleRouter::BecomeRouter(v4, 3u);
    }

    else if (Role == 4 || Role == 3)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t otThreadBecomeLeader(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::BecomeLeader(v3, a2 & 1);
}

uint64_t otThreadBecomeLeader(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::BecomeLeader(v2, 1);
}

uint64_t otThreadGetRouterDowngradeThreshold(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetRouterDowngradeThreshold(v2);
}

uint64_t ot::Mle::MleRouter::GetRouterDowngradeThreshold(ot::Mle::MleRouter *this)
{
  return *(this + 35630);
}

{
  return ot::Mle::MleRouter::GetRouterDowngradeThreshold(this);
}

uint64_t otThreadSetRouterDowngradeThreshold(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetRouterDowngradeThreshold(v3, a2);
}

uint64_t ot::Mle::MleRouter::SetRouterDowngradeThreshold(uint64_t this, char a2)
{
  *(this + 35630) = a2;
  return this;
}

{
  return ot::Mle::MleRouter::SetRouterDowngradeThreshold(this, a2);
}

uint64_t otThreadGetRouterSelectionJitter(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetRouterSelectionJitter(v2);
}

uint64_t ot::Mle::MleRouter::GetRouterSelectionJitter(ot::Mle::MleRouter *this)
{
  return ot::Mle::MleRouter::RouterRoleTransition::GetJitter((this + 35702));
}

{
  return ot::Mle::MleRouter::GetRouterSelectionJitter(this);
}

uint64_t otThreadSetRouterSelectionJitter(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetRouterSelectionJitter(v3, a2);
}

uint64_t ot::Mle::MleRouter::SetRouterSelectionJitter(ot::Mle::MleRouter *this, char a2)
{
  return ot::Mle::MleRouter::RouterRoleTransition::SetJitter(this + 35702, a2);
}

{
  return ot::Mle::MleRouter::SetRouterSelectionJitter(this, a2);
}

uint64_t otThreadGetChildInfoById(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::ChildTable>(v3);
  v4 = ot::AsCoreType<otChildInfo>(a3);
  return ot::ChildTable::GetChildInfoById(v6, a2, v4);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otChildInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otThreadGetChildInfoByIndex(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::ChildTable>(v3);
  v4 = ot::AsCoreType<otChildInfo>(a3);
  return ot::ChildTable::GetChildInfoByIndex(v6, a2, v4);
}

uint64_t otThreadGetChildNextIp6Address(uint64_t a1, unsigned __int16 a2, unsigned __int16 *a3, uint64_t a4)
{
  if (!a3)
  {
    __assert_rtn("otThreadGetChildNextIp6Address", "thread_ftd_api.cpp", 257, "(aIterator) != nullptr");
  }

  if (!a4)
  {
    __assert_rtn("otThreadGetChildNextIp6Address", "thread_ftd_api.cpp", 258, "(aAddress) != nullptr");
  }

  v4 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::ChildTable>(v4);
  ChildAtIndex = ot::ChildTable::GetChildAtIndex(v5, a2);
  if (ChildAtIndex)
  {
    if (ot::Neighbor::IsStateValidOrRestoring(ChildAtIndex))
    {
      v6 = ot::AsCoreType<otIp6Address>(a4);
      return ot::Child::GetNextIp6Address(ChildAtIndex, a3, v6);
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
}

BOOL ot::Neighbor::IsStateValidOrRestoring(ot::Neighbor *this)
{
  v2 = 1;
  if ((*(this + 30) & 0xF) != 7)
  {
    return ot::Neighbor::IsStateRestoring(this);
  }

  return v2;
}

{
  return ot::Neighbor::IsStateValidOrRestoring(this);
}

uint64_t otThreadGetRouterIdSequence(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::RouterTable>(v1);
  return ot::RouterTable::GetRouterIdSequence(v2);
}

uint64_t ot::RouterTable::GetRouterIdSequence(ot::RouterTable *this)
{
  return *(this + 4708);
}

{
  return ot::RouterTable::GetRouterIdSequence(this);
}

uint64_t otThreadGetRouterInfo(uint64_t a1, unsigned __int16 a2, uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::RouterTable>(v3);
  v4 = ot::AsCoreType<otRouterInfo>(a3);
  return ot::RouterTable::GetRouterInfo(v6, a2, v4);
}

uint64_t otThreadGetNextCacheEntry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::AddressResolver>(v3);
  v6 = ot::AsCoreType<otCacheEntryInfo>(a2);
  v4 = ot::AsCoreType<otCacheEntryIterator>(a3);
  return ot::AddressResolver::GetNextCacheEntry(v7, v6, v4);
}

uint64_t ot::Instance::Get<ot::AddressResolver>(uint64_t a1)
{
  return a1 + 127088;
}

{
  return ot::Instance::Get<ot::AddressResolver>(a1);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otCacheEntryInfo>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otCacheEntryIterator>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

ot::AddressResolver::CacheEntry *otThreadClearEidCache(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::AddressResolver>(v1);
  return ot::AddressResolver::Clear(v2);
}

uint64_t otThreadLookUpRloc16(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::AddressResolver>(v2);
  v3 = ot::AsCoreType<otIp6Address>(a2);
  return ot::AddressResolver::LookUp(v5, v3);
}

uint64_t otThreadResolve(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::AddressResolver>(v3);
  v4 = ot::AsCoreType<otIp6Address>(a2);
  return ot::AddressResolver::Resolve(v6, v4, a3);
}

uint64_t ot::AddressResolver::Resolve(ot::AddressResolver::CacheEntry **this, __n128 *a2, unsigned __int16 *a3)
{
  return ot::AddressResolver::Resolve(this, a2, a3, 1);
}

{
  return ot::AddressResolver::Resolve(this, a2, a3);
}

void *otThreadGetMeshLocalEIdFromAddressCache(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v8 = ot::Instance::Get<ot::AddressResolver>(v4);
  v7 = ot::AsCoreType<otIp6Address>(a2);
  v5 = ot::AsCoreType<otIp6Address>(a3);
  return ot::AddressResolver::GetMeshLocalEid(v8, v7, v5, a4);
}

double otThreadGetPskc(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::KeyManager>(v2);
  v3 = ot::AsCoreType<otPskc>(a2);
  *&result = ot::KeyManager::GetPskc(v5, v3).n128_u64[0];
  return result;
}

uint64_t otThreadSetPskc(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  if (ot::Mle::Mle::IsDisabled(v3))
  {
    v4 = ot::AsCoreType<otInstance>(a1);
    v11 = ot::Instance::Get<ot::KeyManager>(v4);
    v5 = ot::AsCoreType<otPskc>(a2);
    ot::KeyManager::SetPskc(v11, v5);
    v6 = ot::AsCoreType<otInstance>(a1);
    active = ot::Instance::Get<ot::MeshCoP::ActiveDatasetManager>(v6);
    ot::MeshCoP::DatasetManager::Clear(active);
    v8 = ot::AsCoreType<otInstance>(a1);
    v9 = ot::Instance::Get<ot::MeshCoP::PendingDatasetManager>(v8);
    ot::MeshCoP::DatasetManager::Clear(v9);
  }

  else
  {
    return 13;
  }

  return v12;
}

uint64_t otThreadGetParentPriority(uint64_t a1)
{
  v1 = ot::AsCoreType<otInstance>(a1);
  v2 = ot::Instance::Get<ot::Mle::MleRouter>(v1);
  return ot::Mle::MleRouter::GetAssignParentPriority(v2);
}

uint64_t ot::Mle::MleRouter::GetAssignParentPriority(ot::Mle::MleRouter *this)
{
  return *(this + 35706);
}

{
  return ot::Mle::MleRouter::GetAssignParentPriority(this);
}

uint64_t otThreadSetParentPriority(uint64_t a1, char a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Mle::MleRouter>(v2);
  return ot::Mle::MleRouter::SetAssignParentPriority(v3, a2);
}

void *otThreadRegisterNeighborTableCallback(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::NeighborTable>(v2);
  return ot::NeighborTable::RegisterCallback(v3, a2);
}

void *ot::NeighborTable::RegisterCallback(void *result, uint64_t a2)
{
  *result = a2;
  return result;
}

{
  return ot::NeighborTable::RegisterCallback(result, a2);
}

void *otThreadSetDiscoveryRequestCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v4 = ot::Instance::Get<ot::Mle::MleRouter>(v3);
  return ot::Mle::MleRouter::SetDiscoveryRequestCallback(v4, a2, a3);
}

void *ot::Mle::MleRouter::SetDiscoveryRequestCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<void (*)(otThreadDiscoveryRequestInfo const*,void *)>::Set((a1 + 35744), a2, a3);
}

{
  return ot::Mle::MleRouter::SetDiscoveryRequestCallback(a1, a2, a3);
}

BOOL otThreadIsRouterIdAllocated(uint64_t a1, unsigned __int8 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::RouterTable>(v2);
  return ot::RouterTable::IsAllocated(v3, a2);
}

void otThreadGetNextHopAndPathCost(uint64_t a1, unsigned __int16 a2, unsigned __int16 *a3, unsigned __int8 *a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = 0;
  v7 = 0;
  v4 = ot::AsCoreType<otInstance>(a1);
  v6 = ot::Instance::Get<ot::RouterTable>(v4);
  if (v10)
  {
    v5 = v10;
  }

  else
  {
    v5 = &v7;
  }

  if (v9)
  {
    ot::RouterTable::GetNextHopAndPathCost(v6, v11, v5, v9);
  }

  else
  {
    ot::RouterTable::GetNextHopAndPathCost(v6, v11, v5, &v8);
  }
}

uint64_t ot::NetworkData::Leader::ContextIds::GetReuseDelay(ot::NetworkData::Leader::ContextIds *this)
{
  return *(this + 15);
}

{
  return ot::NetworkData::Leader::ContextIds::GetReuseDelay(this);
}

uint64_t ot::NetworkData::Leader::ContextIds::SetReuseDelay(uint64_t this, int a2)
{
  *(this + 60) = a2;
  return this;
}

{
  return ot::NetworkData::Leader::ContextIds::SetReuseDelay(this, a2);
}

uint64_t ot::Mle::MleRouter::RouterRoleTransition::GetJitter(ot::Mle::MleRouter::RouterRoleTransition *this)
{
  return *(this + 1);
}

{
  return ot::Mle::MleRouter::RouterRoleTransition::GetJitter(this);
}

uint64_t ot::Mle::MleRouter::RouterRoleTransition::SetJitter(uint64_t this, char a2)
{
  *(this + 1) = a2;
  return this;
}

{
  return ot::Mle::MleRouter::RouterRoleTransition::SetJitter(this, a2);
}

BOOL ot::Neighbor::IsStateRestoring(ot::Neighbor *this)
{
  v2 = 1;
  if ((*(this + 30) & 0xF) != 1)
  {
    return (*(this + 30) & 0xF) == 6;
  }

  return v2;
}

{
  return ot::Neighbor::IsStateRestoring(this);
}

void *ot::CallbackBase<void (*)(otThreadDiscoveryRequestInfo const*,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(otThreadDiscoveryRequestInfo const*,void *)>::Set(result, a2, a3);
}

ot::Message *otUdpNewMessage(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Ip6::Udp>(v2);
  v3 = ot::Message::Settings::From(a2);
  return ot::Ip6::Udp::NewMessage(v5, 0, v3);
}

uint64_t otUdpOpen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::Ip6::Udp>(v4);
  v5 = ot::AsCoreType<otUdpSocket>(a2);
  return ot::Ip6::Udp::Open(v7, v5, a3, a4);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otUdpSocket>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

BOOL otUdpIsOpen(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Ip6::Udp>(v2);
  v3 = ot::AsCoreType<otUdpSocket>(a2);
  return ot::Ip6::Udp::IsOpen(v5, v3);
}

BOOL ot::Ip6::Udp::IsOpen(ot::Ip6::Udp *this, const ot::Ip6::Udp::SocketHandle *a2)
{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Contains(this + 2, a2);
}

{
  return ot::Ip6::Udp::IsOpen(this, a2);
}

uint64_t otUdpClose(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Ip6::Udp>(v2);
  v3 = ot::AsCoreType<otUdpSocket>(a2);
  return ot::Ip6::Udp::Close(v5, v3);
}

uint64_t otUdpBind(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = ot::AsCoreType<otInstance>(a1);
  v9 = ot::Instance::Get<ot::Ip6::Udp>(v4);
  v7 = ot::AsCoreType<otUdpSocket>(a2);
  v8 = ot::AsCoreType<otSockAddr>(a3);
  v5 = ot::MapEnum<otNetifIdentifier>(a4);
  return ot::Ip6::Udp::Bind(v9, v7, v8, v5);
}

uint64_t ot::MapEnum<otNetifIdentifier>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<otNetifIdentifier>(result);
}

uint64_t otUdpConnect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = ot::AsCoreType<otInstance>(a1);
  v7 = ot::Instance::Get<ot::Ip6::Udp>(v3);
  v6 = ot::AsCoreType<otUdpSocket>(a2);
  v4 = ot::AsCoreType<otSockAddr>(a3);
  return ot::Ip6::Udp::Connect(v7, v6, v4);
}

uint64_t otUdpSend(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = ot::AsCoreType<otMessage>(a3);
  if (ot::Message::IsOriginThreadNetif (v4))
  {
    return 7;
  }

  else
  {
    v5 = ot::AsCoreType<otInstance>(a1);
    v10 = ot::Instance::Get<ot::Ip6::Udp>(v5);
    v8 = ot::AsCoreType<otUdpSocket>(a2);
    v9 = ot::AsCoreType<otMessage>(a3);
    v6 = ot::AsCoreType<otMessageInfo>(a4);
    return ot::Ip6::Udp::SendTo(v10, v8, v9, v6);
  }
}

uint64_t otUdpAddReceiver(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Ip6::Udp>(v2);
  v3 = ot::AsCoreType<otUdpReceiver>(a2);
  return ot::Ip6::Udp::AddReceiver(v5, v3);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otUdpReceiver>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

uint64_t otUdpRemoveReceiver(uint64_t a1, uint64_t a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v5 = ot::Instance::Get<ot::Ip6::Udp>(v2);
  v3 = ot::AsCoreType<otUdpReceiver>(a2);
  return ot::Ip6::Udp::RemoveReceiver(v5, v3);
}

uint64_t otUdpSendDatagram(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = ot::AsCoreType<otMessage>(a2);
  if (ot::Message::IsOriginThreadNetif (v3))
  {
    return 7;
  }

  else
  {
    v4 = ot::AsCoreType<otInstance>(a1);
    v8 = ot::Instance::Get<ot::Ip6::Udp>(v4);
    v7 = ot::AsCoreType<otMessage>(a2);
    v5 = ot::AsCoreType<otMessageInfo>(a3);
    return ot::Ip6::Udp::SendDatagram(v8, v7, v5);
  }
}

uint64_t otUdpIsPortInUse(uint64_t a1, unsigned __int16 a2)
{
  v2 = ot::AsCoreType<otInstance>(a1);
  v3 = ot::Instance::Get<ot::Ip6::Udp>(v2);
  return ot::Ip6::Udp::IsPortInUse(v3, a2);
}

BOOL ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Contains(uint64_t *a1, uint64_t a2)
{
  v3[2] = a1;
  v3[1] = a2;
  v3[0] = 0;
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Find(a1, a2, v3) == 0;
}

{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Contains(a1, a2);
}

uint64_t ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Find(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = 23;
  *a3 = 0;
  for (i = *a1; i; i = ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::GetNext(i))
  {
    if (i == a2)
    {
      return 0;
    }

    *a3 = i;
  }

  return v5;
}

{
  return ot::LinkedList<ot::Ip6::Udp::SocketHandle>::Find(a1, a2, a3);
}

uint64_t ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::GetNext(uint64_t a1)
{
  return *(a1 + 64);
}

{
  return *(a1 + 64);
}

{
  return ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::GetNext(a1);
}

{
  return ot::LinkedListEntry<ot::Ip6::Udp::SocketHandle>::GetNext(a1);
}

ot::BackboneRouter::BackboneTmfAgent *ot::BackboneRouter::BackboneTmfAgent::BackboneTmfAgent(ot::BackboneRouter::BackboneTmfAgent *this, ot::Instance *a2)
{
  ot::Coap::Coap::Coap(this, a2);
  ot::Coap::CoapBase::SetInterceptor(this, ot::BackboneRouter::BackboneTmfAgent::Filter, this);
  ot::Coap::CoapBase::SetResourceHandler(this, ot::BackboneRouter::BackboneTmfAgent::HandleResource);
  return this;
}

{
  ot::BackboneRouter::BackboneTmfAgent::BackboneTmfAgent(this, a2);
  return this;
}

void *ot::Coap::CoapBase::SetInterceptor(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return ot::CallbackBase<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *)>::Set((a1 + 56), a2, a3);
}

{
  return ot::Coap::CoapBase::SetInterceptor(a1, a2, a3);
}

uint64_t ot::BackboneRouter::BackboneTmfAgent::Filter(ot::BackboneRouter::BackboneTmfAgent *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, void *a4)
{
  if (ot::BackboneRouter::BackboneTmfAgent::IsBackboneTmfMessage(a3, a2))
  {
    return 0;
  }

  else
  {
    return 31;
  }
}

uint64_t ot::BackboneRouter::BackboneTmfAgent::Start(ot::BackboneRouter::BackboneTmfAgent *this)
{
  v11 = ot::Coap::Coap::Start(this, 61631, 2);
  if (!v11)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Bbr", "Start listening on port %u", v1, v2, v3, v4, v5, v6, 191);
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
    AllNetworkBackboneRoutersAddress = ot::BackboneRouter::Local::GetAllNetworkBackboneRoutersAddress(v7);
    ot::BackboneRouter::BackboneTmfAgent::SubscribeMulticast(this, AllNetworkBackboneRoutersAddress);
  }

  return v11;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::BackboneRouter::Local>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(a1);
}

uint64_t ot::BackboneRouter::Local::GetAllNetworkBackboneRoutersAddress(ot::BackboneRouter::Local *this)
{
  return this + 72;
}

{
  return ot::BackboneRouter::Local::GetAllNetworkBackboneRoutersAddress(this);
}

uint64_t ot::BackboneRouter::BackboneTmfAgent::HandleResource(ot::BackboneRouter::BackboneTmfAgent *this, ot *a2, ot::Coap::Message *a3, const ot::Ip6::MessageInfo *a4, uint64_t a5, int (*a6)(const void *, const void *))
{
  v11 = 1;
  v9 = ot::UriFromPath(a2, a2, a3, a4, a5, a6);
  if (v9 == 7)
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(this);
    ot::BackboneRouter::Manager::HandleTmf<(ot::Uri)7>(v7, a3, a4);
  }

  else if (v9 == 9)
  {
    v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(this);
    ot::BackboneRouter::Manager::HandleTmf<(ot::Uri)9>(v6, a3, a4);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::BackboneRouter::Manager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(a1);
}

BOOL ot::BackboneRouter::BackboneTmfAgent::IsBackboneTmfMessage(ot::BackboneRouter::BackboneTmfAgent *this, const ot::Ip6::MessageInfo *a2)
{
  SockAddr = ot::Ip6::MessageInfo::GetSockAddr(a2);
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a2);
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
  v10 = 0;
  if (ot::BackboneRouter::Local::IsEnabled(v2))
  {
    v10 = 0;
    if (ot::Ip6::Address::IsLinkLocalUnicast(PeerAddr))
    {
      v8 = 1;
      if (!ot::Ip6::Address::IsLinkLocalUnicast(SockAddr))
      {
        v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
        AllNetworkBackboneRoutersAddress = ot::BackboneRouter::Local::GetAllNetworkBackboneRoutersAddress(v3);
        v8 = 1;
        if (!ot::Equatable<ot::Ip6::Address>::operator==(SockAddr, AllNetworkBackboneRoutersAddress))
        {
          v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
          AllDomainBackboneRoutersAddress = ot::BackboneRouter::Local::GetAllDomainBackboneRoutersAddress(v5);
          return ot::Equatable<ot::Ip6::Address>::operator==(SockAddr, AllDomainBackboneRoutersAddress);
        }
      }

      return v8;
    }
  }

  return v10;
}

uint64_t ot::Ip6::MessageInfo::GetSockAddr(ot::Ip6::MessageInfo *this)
{
  return ot::AsCoreType<otIp6Address>(this);
}

{
  return ot::AsCoreType<otIp6Address>(this);
}

{
  return ot::Ip6::MessageInfo::GetSockAddr(this);
}

{
  return ot::Ip6::MessageInfo::GetSockAddr(this);
}

BOOL ot::BackboneRouter::Local::IsEnabled(ot::BackboneRouter::Local *this)
{
  return *(this + 1) != 0;
}

{
  return ot::BackboneRouter::Local::IsEnabled(this);
}

uint64_t ot::BackboneRouter::Local::GetAllDomainBackboneRoutersAddress(ot::BackboneRouter::Local *this)
{
  return this + 88;
}

{
  return ot::BackboneRouter::Local::GetAllDomainBackboneRoutersAddress(this);
}

void ot::BackboneRouter::BackboneTmfAgent::LogError(uint64_t a1, char a2, ot::Ip6::Address *a3, int a4)
{
  if (a4)
  {
    ot::Ip6::Address::ToString(a3, v18);
    ot::String<(unsigned short)40>::AsCString(v18);
    ot::ErrorToString(a4);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("Bbr", "%s %s: %s", v10, v11, v12, v13, v14, v15, a2);
  }

  else
  {
    ot::Ip6::Address::ToString(a3, v19);
    ot::String<(unsigned short)40>::AsCString(v19);
    ot::ErrorToString(0);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Bbr", "%s %s: %s", v4, v5, v6, v7, v8, v9, a2);
  }
}

void *ot::CallbackBase<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<otError (*)(ot::Coap::Message const&,ot::Ip6::MessageInfo const&,void *)>::Set(result, a2, a3);
}

uint64_t ot::Instance::Get<ot::BackboneRouter::Manager>(uint64_t a1)
{
  return a1 + 146592;
}

{
  return ot::Instance::Get<ot::BackboneRouter::Manager>(a1);
}

ot::BackboneRouter::Leader *ot::BackboneRouter::Leader::Leader(ot::BackboneRouter::Leader *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::BackboneRouter::Leader::Reset(this);
  return this;
}

{
  ot::BackboneRouter::Leader::Leader(this, a2);
  return this;
}

uint64_t ot::Ip6::Prefix::SetLength(uint64_t this, char a2)
{
  *(this + 16) = a2;
  return this;
}

{
  return ot::Ip6::Prefix::SetLength(this, a2);
}

uint64_t ot::BackboneRouter::Leader::GetConfig(ot::BackboneRouter::Leader *a1, uint64_t a2)
{
  v4 = 0;
  if (ot::BackboneRouter::Leader::HasPrimary(a1))
  {
    *a2 = *a1;
    *(a2 + 8) = *(a1 + 2);
  }

  else
  {
    return 23;
  }

  return v4;
}

BOOL ot::BackboneRouter::Leader::HasPrimary(ot::BackboneRouter::Leader *this)
{
  return *this != 65534;
}

{
  return ot::BackboneRouter::Leader::HasPrimary(this);
}

uint64_t ot::BackboneRouter::Leader::GetServiceId(ot::BackboneRouter::Leader *this, unsigned __int8 *a2)
{
  if (ot::BackboneRouter::Leader::HasPrimary(this))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Service::Manager>(this);
    return ot::NetworkData::Service::Manager::GetServiceId<ot::NetworkData::Service::BackboneRouter>(v2, 1, a2);
  }

  else
  {
    return 23;
  }
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Service::Manager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::NetworkData::Service::Manager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Service::Manager>(a1);
}

uint64_t ot::NetworkData::Service::Manager::GetServiceId<ot::NetworkData::Service::BackboneRouter>(ot::NetworkData::Service::Manager *a1, char a2, unsigned __int8 *a3)
{
  return ot::NetworkData::Service::Manager::GetServiceId(a1, &ot::NetworkData::Service::BackboneRouter::kServiceData, 1, a2 & 1, a3);
}

{
  return ot::NetworkData::Service::Manager::GetServiceId<ot::NetworkData::Service::BackboneRouter>(a1, a2, a3);
}

void ot::BackboneRouter::Leader::LogBackboneRouterPrimary(uint64_t a1, unsigned __int8 a2, __int16 *a3)
{
  v3 = ot::BackboneRouter::Leader::StateToString(a2);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrLeader", "PBBR state: %s", v4, v5, v6, v7, v8, v9, v3);
  if (a2 != 2)
  {
    if (a2)
    {
      v18 = *a3;
      v16 = *(a3 + 8);
      v17 = a3[1];
      ot::ToUlong(*(a3 + 1));
      ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrLeader", "Rloc16:0x%4x, seqno:%u, delay:%u, timeout:%lu", v10, v11, v12, v13, v14, v15, v18);
    }
  }
}

void ot::BackboneRouter::Leader::UpdateBackboneRouterPrimary(ot::BackboneRouter::Leader *this)
{
  v17 = this;
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Service::Manager>(this);
  ot::NetworkData::Service::Manager::GetBackboneRouterPrimary(v1, &v15);
  if (v15 == *this)
  {
    if (v15 == 65534)
    {
      v14 = 0;
    }

    else if (v16 == *(this + 8))
    {
      if (WORD1(v15) == *(this + 1) && HIDWORD(v15) == *(this + 1))
      {
        v14 = 5;
      }

      else
      {
        v14 = 4;
      }
    }

    else
    {
      v14 = 3;
    }
  }

  else if (v15 == 65534)
  {
    v14 = 2;
  }

  else if (*this == 65534)
  {
    v14 = 1;
  }

  else
  {
    v14 = 3;
  }

  if (v15 != 65534)
  {
    v13 = HIDWORD(v15);
    HIDWORD(v15) = ot::Clamp<unsigned int>(HIDWORD(v15), 0x12Cu, 0x20C49Bu);
    if (HIDWORD(v15) != v13)
    {
      v11 = ot::ToUlong(v13);
      ot::ToUlong(HIDWORD(v15));
      ot::Logger::LogAtLevel<(ot::LogLevel)3>("BbrLeader", "Leader MLR Timeout is normalized from %lu to %lu", v2, v3, v4, v5, v6, v7, v11);
    }
  }

  *this = v15;
  *(this + 2) = v16;
  ot::BackboneRouter::Leader::LogBackboneRouterPrimary(this, v14, this);
  v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
  ot::BackboneRouter::Local::HandleBackboneRouterPrimaryUpdate(v8, v14, this);
  v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MlrManager>(this);
  ot::MlrManager::HandleBackboneRouterPrimaryUpdate(v9, v14);
  v10 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(this);
  ot::DuaManager::HandleBackboneRouterPrimaryUpdate(v10, v14);
}

void ot::BackboneRouter::Leader::UpdateDomainPrefixConfig(ot::BackboneRouter::Leader *this)
{
  v22 = this;
  v21 = 0;
  v17 = 0;
  while (1)
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if (ot::NetworkData::NetworkData::GetNextOnMeshPrefix(v1, &v21, v19))
    {
      break;
    }

    if ((v20 & 0x400) != 0)
    {
      v17 = 1;
      break;
    }
  }

  if (v17)
  {
    Prefix = ot::NetworkData::OnMeshPrefixConfig::GetPrefix(v19);
    if (ot::Ip6::Prefix::operator==(Prefix, this + 12))
    {
      v18 = 3;
      v2 = ot::BackboneRouter::Leader::DomainPrefixEventToString(3u);
    }

    else
    {
      if (ot::BackboneRouter::Leader::HasDomainPrefix(this))
      {
        v4 = 2;
      }

      else
      {
        v4 = 0;
      }

      v18 = v4;
      v5 = ot::NetworkData::OnMeshPrefixConfig::GetPrefix(v19);
      *(this + 12) = *v5;
      *(this + 28) = *(v5 + 16);
      v2 = ot::BackboneRouter::Leader::DomainPrefixEventToString(v18);
    }
  }

  else
  {
    if (!ot::BackboneRouter::Leader::HasDomainPrefix(this))
    {
      return;
    }

    ot::Clearable<ot::Ip6::Prefix>::Clear(this + 12);
    v18 = 1;
    v2 = ot::BackboneRouter::Leader::DomainPrefixEventToString(1u);
  }

  v15 = v2;
  ot::Ip6::Prefix::ToString((this + 12), v23);
  ot::String<(unsigned short)45>::AsCString(v23);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrLeader", "%s domain Prefix: %s", v6, v7, v8, v9, v10, v11, v15);
  v12 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
  ot::BackboneRouter::Local::HandleDomainPrefixUpdate(v12, v18);
  v13 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::NdProxyTable>(this);
  ot::BackboneRouter::NdProxyTable::HandleDomainPrefixUpdate(v13, v18);
  v14 = ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(this);
  ot::DuaManager::HandleDomainPrefixUpdate(v14, v18);
}

uint64_t ot::Clamp<unsigned int>(unsigned int a1, unsigned int a2, unsigned int a3)
{
  v4 = ot::Max<unsigned int>(a1, a2);
  return ot::Min<unsigned int>(v4, a3);
}

{
  return ot::Clamp<unsigned int>(a1, a2, a3);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MlrManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MlrManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MlrManager>(a1);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::DuaManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::DuaManager>(a1);
}

BOOL ot::BackboneRouter::Leader::HasDomainPrefix(ot::BackboneRouter::Leader *this)
{
  return ot::Ip6::Prefix::GetLength((this + 12)) > 0;
}

{
  return ot::BackboneRouter::Leader::HasDomainPrefix(this);
}

uint64_t ot::Clearable<ot::Ip6::Prefix>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::Ip6::Prefix>(a1);
}

{
  return ot::Clearable<ot::Ip6::Prefix>::Clear(a1);
}

uint64_t ot::NetworkData::OnMeshPrefixConfig::GetPrefix(ot::NetworkData::OnMeshPrefixConfig *this)
{
  return ot::AsCoreType<otIp6Prefix>(this);
}

{
  return ot::AsCoreType<otIp6Prefix>(this);
}

{
  return ot::NetworkData::OnMeshPrefixConfig::GetPrefix(this);
}

{
  return ot::NetworkData::OnMeshPrefixConfig::GetPrefix(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::NdProxyTable>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::BackboneRouter::NdProxyTable>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::NdProxyTable>(a1);
}

BOOL ot::BackboneRouter::Leader::IsDomainUnicast(ot::BackboneRouter::Leader *this, const ot::Ip6::Address *a2)
{
  v4 = 0;
  if (ot::BackboneRouter::Leader::HasDomainPrefix(this))
  {
    return ot::Ip6::Address::MatchesPrefix(a2, (this + 12));
  }

  return v4;
}

uint64_t ot::Ip6::Prefix::GetLength(ot::Ip6::Prefix *this)
{
  return *(this + 16);
}

{
  return ot::Ip6::Prefix::GetLength(this);
}

uint64_t ot::Instance::Get<ot::NetworkData::Service::Manager>(uint64_t a1)
{
  return a1 + 144264;
}

{
  return ot::Instance::Get<ot::NetworkData::Service::Manager>(a1);
}

uint64_t ot::Max<unsigned int>(unsigned int a1, unsigned int a2)
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
  return ot::Max<unsigned int>(a1, a2);
}

uint64_t ot::ClearAllBytes<ot::Ip6::Prefix>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Ip6::Prefix>(result);
}

ot::BackboneRouter::Local *ot::BackboneRouter::Local::Local(ot::BackboneRouter::Local *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = ot::Random::NonCrypto::GetUint8(v2) % 127;
  *(this + 3) = 5;
  *(this + 2) = 5;
  *(this + 3) = 0;
  *(this + 2) = 3600;
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 13);
  Prefix = ot::NetworkData::OnMeshPrefixConfig::GetPrefix((this + 12));
  ot::Ip6::Prefix::SetLength(Prefix, 0);
  ot::Ip6::Netif::UnicastAddress::InitAsThreadOriginMeshLocal((this + 40));
  Address = ot::Ip6::Netif::UnicastAddress::GetAddress((this + 40));
  Iid = ot::Ip6::Address::GetIid(Address);
  ot::Ip6::InterfaceIdentifier::SetToLocator(Iid, 0xFC38u);
  ot::Clearable<ot::Ip6::Address>::Clear(this + 9);
  *(this + 72) = -1;
  *(this + 73) = 50;
  *(this + 87) = 3;
  ot::Clearable<ot::Ip6::Address>::Clear(this + 11);
  result = this;
  *(this + 88) = -1;
  *(this + 89) = 50;
  *(this + 103) = 3;
  return result;
}

{
  ot::BackboneRouter::Local::Local(this, a2);
  return this;
}

uint64_t ot::Random::NonCrypto::GetUint8(ot::Random::NonCrypto *this)
{
  return ot::Random::NonCrypto::GetUint32(this);
}

{
  return ot::Random::NonCrypto::GetUint8(this);
}

void *ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(void *a1)
{
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(a1);
  return a1;
}

{
  ot::CallbackBase<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*)>::CallbackBase(a1);
  return a1;
}

void *ot::Clearable<ot::Ip6::Address>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Ip6::Address>(a1);
}

{
  return ot::Clearable<ot::Ip6::Address>::Clear(a1);
}

void ot::BackboneRouter::Local::SetEnabled(ot::BackboneRouter::Local *this, char a2)
{
  if ((a2 & 1) != ot::BackboneRouter::Local::IsEnabled(this))
  {
    if (a2)
    {
      ot::BackboneRouter::Local::SetState(this, 1u);
      ot::BackboneRouter::Local::AddDomainPrefixToNetworkData(this);
      ot::BackboneRouter::Local::AddService(this, 0);
      IgnoreError();
    }

    else
    {
      ot::BackboneRouter::Local::RemoveDomainPrefixFromNetworkData(this);
      ot::BackboneRouter::Local::RemoveService(this);
      ot::BackboneRouter::Local::SetState(this, 0);
    }
  }
}

ot::InstanceLocator *ot::BackboneRouter::Local::SetState(ot::InstanceLocator *result, unsigned __int8 a2)
{
  v10 = result;
  if (*(result + 1) != a2)
  {
    if (*(result + 1))
    {
      if (*(result + 1) == 2)
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(result);
        ot::Ip6::Netif::RemoveUnicastAddress(v4, (v10 + 40));
      }
    }

    else
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(result);
      MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v2);
      ot::Ip6::Address::SetMulticastNetworkPrefix((v10 + 72), MeshLocalPrefix);
    }

    if (a2 == 2)
    {
      Address = ot::Ip6::Netif::UnicastAddress::GetAddress((v10 + 40));
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(v10);
      v6 = ot::Mle::Mle::GetMeshLocalPrefix(v5);
      ot::Ip6::Address::SetPrefix(Address, v6);
      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(v10);
      ot::Ip6::Netif::AddUnicastAddress(v7, (v10 + 40));
    }

    *(v10 + 1) = a2;
    if (*(v10 + 1))
    {
      if (*(v10 + 1) == 1)
      {
        ++*(v10 + 62);
      }

      else
      {
        ++*(v10 + 60);
      }
    }

    else
    {
      ++*(v10 + 61);
    }

    v8 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(v10);
    return ot::Notifier::Signal(v8, 0x2000000);
  }

  return result;
}

void ot::BackboneRouter::Local::AddDomainPrefixToNetworkData(ot::BackboneRouter::Local *this)
{
  v4 = 23;
  Prefix = ot::NetworkData::OnMeshPrefixConfig::GetPrefix((this + 12));
  if (ot::Ip6::Prefix::GetLength(Prefix) > 0)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this);
    v4 = ot::NetworkData::Local::AddOnMeshPrefix(v2, (this + 12));
  }

  ot::BackboneRouter::Local::LogDomainPrefix(this, 1u, v4);
}

uint64_t ot::BackboneRouter::Local::AddService(uint64_t a1, char a2)
{
  v14 = a1;
  v13 = a2;
  v12 = 13;
  if (*(a1 + 1))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::Mle>(a1);
    if (ot::Mle::Mle::IsAttached(v2))
    {
      if (v13 || (v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1), !ot::BackboneRouter::Leader::HasPrimary(v3)) || (v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1), Server16 = ot::BackboneRouter::Leader::GetServer16(v4), v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1), Server16 == ot::Mle::Mle::GetRloc16(v5)))
      {
        ot::NetworkData::Service::BackboneRouter::ServerData::SetSequenceNumber(v11, *(a1 + 2));
        ot::NetworkData::Service::BackboneRouter::ServerData::SetReregistrationDelay(v11, *(a1 + 4));
        ot::NetworkData::Service::BackboneRouter::ServerData::SetMlrTimeout(v11, *(a1 + 8));
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Service::Manager>(a1);
        v12 = ot::NetworkData::Service::Manager::Add<ot::NetworkData::Service::BackboneRouter>(v6, v11, 1);
        if (!v12)
        {
          v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(a1);
          ot::NetworkData::Notifier::HandleServerDataUpdated(v7);
          *a1 = 1;
        }
      }
    }
  }

  ot::BackboneRouter::Local::LogService(a1, 1u, v12);
  return v12;
}

void ot::BackboneRouter::Local::RemoveDomainPrefixFromNetworkData(ot::BackboneRouter::Local *this)
{
  v4 = 23;
  if (*(this + 28))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(this);
    Prefix = ot::NetworkData::OnMeshPrefixConfig::GetPrefix((this + 12));
    v4 = ot::NetworkData::Local::RemoveOnMeshPrefix(v2, Prefix);
  }

  ot::BackboneRouter::Local::LogDomainPrefix(this, 2u, v4);
}

void ot::BackboneRouter::Local::RemoveService(ot::BackboneRouter::Local *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Service::Manager>(this);
  v4 = ot::NetworkData::Service::Manager::Remove<ot::NetworkData::Service::BackboneRouter>(v1);
  if (!v4)
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(this);
    ot::NetworkData::Notifier::HandleServerDataUpdated(v2);
    *this = 0;
  }

  ot::BackboneRouter::Local::LogService(this, 2u, v4);
}

void ot::BackboneRouter::Local::Reset(ot::BackboneRouter::Local *this)
{
  if (*(this + 1))
  {
    ot::BackboneRouter::Local::RemoveService(this);
    if (*(this + 1) == 2)
    {
      ot::BackboneRouter::Local::IncrementSequenceNumber(this);
      v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(this);
      ot::Notifier::Signal(v1, 0x4000000);
      ot::BackboneRouter::Local::SetState(this, 1u);
    }
  }
}

uint64_t ot::BackboneRouter::Local::IncrementSequenceNumber(uint64_t this)
{
  v1 = *(this + 2);
  if (v1 != 127 && v1 != 126)
  {
    if (v1 != 255 && v1 != 254)
    {
      ++*(this + 2);
    }

    else
    {
      *(this + 2) = 0x80;
    }
  }

  else
  {
    *(this + 2) = 0;
  }

  return this;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Notifier>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
}

uint64_t ot::BackboneRouter::Local::GetConfig(uint64_t result, uint64_t a2)
{
  *(a2 + 8) = *(result + 2);
  *(a2 + 2) = *(result + 4);
  *(a2 + 4) = *(result + 8);
  return result;
}

uint64_t ot::BackboneRouter::Local::SetConfig(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v5 = 0;
  if (*(a2 + 4) >= 0x12Cu && *(a2 + 4) <= 0x20C49Bu && *(a2 + 2) && *(a2 + 4) > 2 * *(a2 + 2))
  {
    if (*(a2 + 2) != *(a1 + 4))
    {
      *(a1 + 4) = *(a2 + 2);
      v5 = 1;
    }

    if (*(a2 + 4) != *(a1 + 8))
    {
      *(a1 + 8) = *(a2 + 4);
      v5 = 1;
    }

    if (*(a2 + 8) != *(a1 + 2))
    {
      *(a1 + 2) = *(a2 + 8);
      v5 = 1;
    }

    if (v5)
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
      ot::Notifier::Signal(v2, 0x4000000);
      ot::BackboneRouter::Local::AddService(a1, 0);
      IgnoreError();
    }

    ot::BackboneRouter::Local::LogService(a1, 0, 0);
  }

  else
  {
    v6 = 7;
    ot::BackboneRouter::Local::LogService(a1, 0, 7);
  }

  return v6;
}

void ot::BackboneRouter::Local::LogService(uint64_t a1, unsigned __int8 a2, int a3)
{
  v12 = ot::BackboneRouter::Local::ActionToString(a2);
  v9 = *(a1 + 2);
  v10 = *(a1 + 4);
  ot::ToUlong(*(a1 + 8));
  ot::ErrorToString(a3);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrLocal", "%s BBR Service: seqno (%u), delay (%us), timeout (%lus), %s", v3, v4, v5, v6, v7, v8, v12);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::BackboneRouter::Leader>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
}

uint64_t ot::BackboneRouter::Leader::GetServer16(ot::BackboneRouter::Leader *this)
{
  return *this;
}

{
  return ot::BackboneRouter::Leader::GetServer16(this);
}

_BYTE *ot::NetworkData::Service::BackboneRouter::ServerData::SetSequenceNumber(_BYTE *this, char a2)
{
  *this = a2;
  return this;
}

{
  return ot::NetworkData::Service::BackboneRouter::ServerData::SetSequenceNumber(this, a2);
}

uint64_t ot::NetworkData::Service::BackboneRouter::ServerData::SetReregistrationDelay(ot::NetworkData::Service::BackboneRouter::ServerData *this, unsigned __int16 a2)
{
  result = ot::BigEndian::HostSwap16(a2);
  *(this + 1) = result;
  return result;
}

{
  return ot::NetworkData::Service::BackboneRouter::ServerData::SetReregistrationDelay(this, a2);
}

uint64_t ot::NetworkData::Service::BackboneRouter::ServerData::SetMlrTimeout(ot::NetworkData::Service::BackboneRouter::ServerData *this, unsigned int a2)
{
  result = ot::BigEndian::HostSwap32(a2);
  *(this + 3) = result;
  return result;
}

{
  return ot::NetworkData::Service::BackboneRouter::ServerData::SetMlrTimeout(this, a2);
}

uint64_t ot::NetworkData::Service::Manager::Add<ot::NetworkData::Service::BackboneRouter>(ot::NetworkData::Service::Manager *a1, ot::NetworkData::Service::BackboneRouter::ServerData *a2, char a3)
{
  Length = ot::NetworkData::Service::BackboneRouter::ServerData::GetLength(a2);
  return ot::NetworkData::Service::Manager::AddService(a1, &ot::NetworkData::Service::BackboneRouter::kServiceData, 1, a3 & 1, a2, Length);
}

{
  return ot::NetworkData::Service::Manager::Add<ot::NetworkData::Service::BackboneRouter>(a1, a2, a3);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::NetworkData::Notifier>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Notifier>(a1);
}

uint64_t ot::NetworkData::Service::Manager::Remove<ot::NetworkData::Service::BackboneRouter>(ot::NetworkData::Service::Manager *a1)
{
  return ot::NetworkData::Service::Manager::RemoveService(a1, &ot::NetworkData::Service::BackboneRouter::kServiceData, 1);
}

{
  return ot::NetworkData::Service::Manager::Remove<ot::NetworkData::Service::BackboneRouter>(a1);
}

void *ot::Ip6::Address::SetMulticastNetworkPrefix(ot::Ip6::Address *a1, unsigned __int8 *a2)
{
  return ot::Ip6::Address::SetMulticastNetworkPrefix(a1, a2, 0x40u);
}

{
  return ot::Ip6::Address::SetMulticastNetworkPrefix(a1, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::ThreadNetif>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::ThreadNetif>(a1);
}

void ot::BackboneRouter::Local::HandleBackboneRouterPrimaryUpdate(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  if (ot::BackboneRouter::Local::IsEnabled(a1))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
    if (ot::Mle::Mle::IsAttached(v3))
    {
      if (*a3 == 65534)
      {
        *(a1 + 6) = 1;
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
        if (!ot::Mle::Mle::IsLeader(v4))
        {
          *(a1 + 6) += ot::Random::NonCrypto::GetUint16InRange(0, *(a1 + 3) + 1);
        }

        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(a1);
        ot::TimeTicker::RegisterReceiver(v5, 8);
      }

      else
      {
        v8 = *a3;
        v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(a1);
        if (v8 == ot::Mle::Mle::GetRloc16(v6))
        {
          if (*a1)
          {
            ot::BackboneRouter::Local::SetState(a1, 2u);
          }

          else
          {
            *(a1 + 2) = *(a3 + 8);
            *(a1 + 4) = a3[1];
            *(a1 + 8) = *(a3 + 1);
            ot::BackboneRouter::Local::IncrementSequenceNumber(a1);
            v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Notifier>(a1);
            ot::Notifier::Signal(v7, 0x4000000);
            ot::BackboneRouter::Local::AddService(a1, 1);
            IgnoreError();
          }
        }

        else
        {
          ot::BackboneRouter::Local::Reset(a1);
        }
      }
    }
  }
}

BOOL ot::Mle::Mle::IsLeader(ot::Mle::Mle *this)
{
  return *(this + 130) == 4;
}

{
  return ot::Mle::Mle::IsLeader(this);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::TimeTicker>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(a1);
}

void ot::BackboneRouter::Local::HandleTimeTick(ot::BackboneRouter::Local *this)
{
  v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  if (!ot::Mle::MleRouter::IsRouterRoleTransitionPending(v1))
  {
    if (*(this + 3))
    {
      if (!--*(this + 3))
      {
        ot::BackboneRouter::Local::AddService(this, 0);
        IgnoreError();
      }
    }
  }

  if (!*(this + 3))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::TimeTicker>(this);
    ot::TimeTicker::UnregisterReceiver(v2, 8);
  }
}

BOOL ot::Mle::MleRouter::IsRouterRoleTransitionPending(ot::Mle::MleRouter *this)
{
  return ot::Mle::MleRouter::RouterRoleTransition::IsPending((this + 35702));
}

{
  return ot::Mle::MleRouter::IsRouterRoleTransitionPending(this);
}

uint64_t ot::BackboneRouter::Local::GetDomainPrefix(ot::BackboneRouter::Local *this, ot::NetworkData::OnMeshPrefixConfig *a2)
{
  v5 = 0;
  Prefix = ot::NetworkData::OnMeshPrefixConfig::GetPrefix((this + 12));
  if (ot::Ip6::Prefix::GetLength(Prefix) > 0)
  {
    *a2 = *(this + 12);
    *(a2 + 2) = *(this + 28);
  }

  else
  {
    return 23;
  }

  return v5;
}

uint64_t ot::BackboneRouter::Local::RemoveDomainPrefix(ot::BackboneRouter::Local *this, const ot::Ip6::Prefix *a2)
{
  v6 = 0;
  if (ot::Ip6::Prefix::GetLength(a2) > 0)
  {
    Prefix = ot::NetworkData::OnMeshPrefixConfig::GetPrefix((this + 12));
    if (ot::Ip6::Prefix::operator==(Prefix, a2))
    {
      if (ot::BackboneRouter::Local::IsEnabled(this))
      {
        ot::BackboneRouter::Local::RemoveDomainPrefixFromNetworkData(this);
      }

      v3 = ot::NetworkData::OnMeshPrefixConfig::GetPrefix((this + 12));
      ot::Ip6::Prefix::SetLength(v3, 0);
    }

    else
    {
      return 23;
    }
  }

  else
  {
    return 7;
  }

  return v6;
}

uint64_t ot::BackboneRouter::Local::SetDomainPrefix(ot::BackboneRouter::Local *this, const ot::NetworkData::OnMeshPrefixConfig *a2)
{
  v6 = 0;
  Instance = ot::InstanceLocator::GetInstance(this);
  if (ot::NetworkData::OnMeshPrefixConfig::IsValid(a2, Instance))
  {
    if (ot::BackboneRouter::Local::IsEnabled(this))
    {
      ot::BackboneRouter::Local::RemoveDomainPrefixFromNetworkData(this);
    }

    *(this + 12) = *a2;
    *(this + 28) = *(a2 + 2);
    ot::BackboneRouter::Local::LogDomainPrefix(this, 0, 0);
    if (ot::BackboneRouter::Local::IsEnabled(this))
    {
      ot::BackboneRouter::Local::AddDomainPrefixToNetworkData(this);
    }
  }

  else
  {
    return 7;
  }

  return v6;
}

void ot::BackboneRouter::Local::LogDomainPrefix(uint64_t a1, unsigned __int8 a2, int a3)
{
  v11 = ot::BackboneRouter::Local::ActionToString(a2);
  Prefix = ot::NetworkData::OnMeshPrefixConfig::GetPrefix((a1 + 12));
  ot::Ip6::Prefix::ToString(Prefix, v13);
  ot::String<(unsigned short)45>::AsCString(v13);
  ot::ErrorToString(a3);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrLocal", "%s Domain Prefix: %s, %s", v4, v5, v6, v7, v8, v9, v11);
}

void ot::BackboneRouter::Local::ApplyNewMeshLocalPrefix(ot::BackboneRouter::Local *this)
{
  if (ot::BackboneRouter::Local::IsEnabled(this))
  {
    v1 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::BackboneTmfAgent>(this);
    ot::BackboneRouter::BackboneTmfAgent::UnsubscribeMulticast(v1, (this + 72));
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
    MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v2);
    ot::Ip6::Address::SetMulticastNetworkPrefix((this + 72), MeshLocalPrefix);
    v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::BackboneTmfAgent>(this);
    ot::BackboneRouter::BackboneTmfAgent::SubscribeMulticast(v4, (this + 72));
  }
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::BackboneTmfAgent>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::BackboneRouter::BackboneTmfAgent>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::BackboneTmfAgent>(a1);
}

void ot::BackboneRouter::Local::HandleDomainPrefixUpdate(void *a1, unsigned __int8 a2)
{
  v11 = a1;
  v10 = a2;
  if (ot::BackboneRouter::Local::IsEnabled(a1))
  {
    if (v10 == 1 || v10 == 2)
    {
      v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::BackboneTmfAgent>(a1);
      ot::BackboneRouter::BackboneTmfAgent::UnsubscribeMulticast(v2, (a1 + 11));
    }

    if (!v10 || v10 == 2)
    {
      v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
      DomainPrefix = ot::BackboneRouter::Leader::GetDomainPrefix(v3);
      ot::Ip6::Address::SetMulticastNetworkPrefix((a1 + 11), DomainPrefix);
      v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::BackboneTmfAgent>(a1);
      ot::BackboneRouter::BackboneTmfAgent::SubscribeMulticast(v5, (a1 + 11));
    }

    if (v10 != 3)
    {
      v9 = v10;
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
      v8 = ot::BackboneRouter::Leader::GetDomainPrefix(v6);
      ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterDomainPrefixEvent,ot::Ip6::Prefix const*>(a1 + 13, &v9, &v8);
    }
  }
}

void *ot::Ip6::Address::SetMulticastNetworkPrefix(ot::Ip6::Address *this, const ot::Ip6::Prefix *a2)
{
  ot::Ip6::Prefix::GetBytes(a2);
  v5 = v2;
  Length = ot::Ip6::Prefix::GetLength(a2);
  return ot::Ip6::Address::SetMulticastNetworkPrefix(this, v5, Length);
}

{
  return ot::Ip6::Address::SetMulticastNetworkPrefix(this, a2);
}

uint64_t ot::BackboneRouter::Leader::GetDomainPrefix(ot::BackboneRouter::Leader *this)
{
  if (ot::Ip6::Prefix::GetLength((this + 12)))
  {
    return this + 12;
  }

  else
  {
    return 0;
  }
}

{
  return ot::BackboneRouter::Leader::GetDomainPrefix(this);
}

void *ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterDomainPrefixEvent,ot::Ip6::Prefix const*>(void *result, unsigned int *a2, void *a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterDomainPrefixEvent,ot::Ip6::Prefix const*>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterDomainPrefixEvent,ot::Ip6::Prefix const*>(result, a2, a3);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::NetworkData::Local>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Local>(a1);
}

uint64_t ot::Random::NonCrypto::GetUint32(ot::Random::NonCrypto *this)
{
  return ot::Random::Manager::NonCryptoGetUint32(this);
}

{
  return ot::Random::NonCrypto::GetUint32(this);
}

void *ot::CallbackBase<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*)>::CallbackBase(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

BOOL ot::Mle::MleRouter::RouterRoleTransition::IsPending(ot::Mle::MleRouter::RouterRoleTransition *this)
{
  return *this != 0;
}

{
  return ot::Mle::MleRouter::RouterRoleTransition::IsPending(this);
}

void ot::Ip6::Prefix::GetBytes(ot::Ip6::Prefix *this)
{
  ;
}

{
  ot::Ip6::Prefix::GetBytes(this);
}

void *ot::ClearAllBytes<ot::Ip6::Address>(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::Ip6::Address>(result);
}

uint64_t ot::NetworkData::Service::BackboneRouter::ServerData::GetLength(ot::NetworkData::Service::BackboneRouter::ServerData *this)
{
  return 7;
}

{
  return ot::NetworkData::Service::BackboneRouter::ServerData::GetLength(this);
}

uint64_t ot::Instance::Get<ot::TimeTicker>(uint64_t a1)
{
  return a1 + 168;
}

{
  return ot::Instance::Get<ot::TimeTicker>(a1);
}

uint64_t ot::Instance::Get<ot::BackboneRouter::BackboneTmfAgent>(uint64_t a1)
{
  return ot::BackboneRouter::Manager::GetBackboneTmfAgent((a1 + 146592));
}

{
  return ot::Instance::Get<ot::BackboneRouter::BackboneTmfAgent>(a1);
}

uint64_t ot::BackboneRouter::Manager::GetBackboneTmfAgent(ot::BackboneRouter::Manager *this)
{
  return this + 7576;
}

{
  return ot::BackboneRouter::Manager::GetBackboneTmfAgent(this);
}

uint64_t ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterDomainPrefixEvent,ot::Ip6::Prefix const*>(uint64_t a1, unsigned int *a2, void *a3)
{
  return (*a1)(*(a1 + 8), *a2, *a3);
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterDomainPrefixEvent,ot::Ip6::Prefix const*>(a1, a2, a3);
}

ot::BackboneRouter::Manager *ot::BackboneRouter::Manager::Manager(ot::BackboneRouter::Manager *this, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(this, a2);
  ot::BackboneRouter::NdProxyTable::NdProxyTable((this + 8), a2);
  ot::BackboneRouter::MulticastListenersTable::MulticastListenersTable((this + 6032), a2);
  ot::TimerMilliIn<ot::BackboneRouter::Manager,&ot::BackboneRouter::Manager::HandleTimer>::TimerMilliIn((this + 7552), a2);
  ot::BackboneRouter::BackboneTmfAgent::BackboneTmfAgent((this + 7576), a2);
  return this;
}

{
  ot::BackboneRouter::Manager::Manager(this, a2);
  return this;
}

uint64_t ot::BackboneRouter::Manager::HandleTimer(ot::BackboneRouter::Manager *this)
{
  ot::BackboneRouter::MulticastListenersTable::Expire((this + 6032));
  ot::BackboneRouter::NdProxyTable::HandleTimer(this + 8);
  return ot::TimerMilli::Start((this + 7552), 0x3E8u);
}

ot::BackboneRouter::NdProxyTable *ot::BackboneRouter::NdProxyTable::NdProxyTable(ot::BackboneRouter::NdProxyTable *this, ot::Instance *a2)
{
  ot::BackboneRouter::NdProxyTable::NdProxyTable(this, a2);
  return this;
}

{
  ot::InstanceLocator::InstanceLocator(this, a2);
  v4 = this;
  do
  {
    ot::BackboneRouter::NdProxyTable::NdProxy::NdProxy(v4);
    v4 = (v4 + 24);
  }

  while (v4 != (this + 6000));
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 750);
  *(this + 6016) &= ~1u;
  return this;
}

ot::BackboneRouter::MulticastListenersTable *ot::BackboneRouter::MulticastListenersTable::MulticastListenersTable(ot::BackboneRouter::MulticastListenersTable *this, ot::Instance *a2)
{
  ot::BackboneRouter::MulticastListenersTable::MulticastListenersTable(this, a2);
  return this;
}

{
  ot::InstanceLocator::InstanceLocator(this, a2);
  v4 = this;
  do
  {
    ot::BackboneRouter::MulticastListenersTable::Listener::Listener(v4);
    v4 = (v4 + 20);
  }

  while (v4 != (this + 1500));
  *(this + 750) = 0;
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback(this + 188);
  return this;
}

ot::TimerMilli *ot::TimerMilliIn<ot::BackboneRouter::Manager,&ot::BackboneRouter::Manager::HandleTimer>::TimerMilliIn(ot::TimerMilli *a1, ot::Instance *a2)
{
  ot::TimerMilliIn<ot::BackboneRouter::Manager,&ot::BackboneRouter::Manager::HandleTimer>::TimerMilliIn(a1, a2);
  return a1;
}

{
  ot::TimerMilli::TimerMilli(a1, a2, ot::TimerMilliIn<ot::BackboneRouter::Manager,&ot::BackboneRouter::Manager::HandleTimer>::HandleTimer);
  return a1;
}

void ot::BackboneRouter::Manager::HandleNotifierEvents(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  if (ot::Events::Contains(&v20, 0x2000000))
  {
    v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(a1);
    if (ot::BackboneRouter::Local::IsEnabled(v2))
    {
      if (!ot::Timer::IsRunning((a1 + 7552)))
      {
        ot::TimerMilli::Start((a1 + 7552), 0x3E8u);
      }

      v19 = ot::BackboneRouter::BackboneTmfAgent::Start((a1 + 7576));
      ot::BackboneRouter::Manager::LogError(a1, "Start Backbone TMF agent", v19);
    }

    else
    {
      ot::BackboneRouter::MulticastListenersTable::Clear((a1 + 6032));
      ot::TimerMilli::Stop((a1 + 7552));
      v18 = ot::Coap::Coap::Stop((a1 + 7576));
      if (v18)
      {
        v3 = ot::ErrorToString(v18);
        ot::Logger::LogAtLevel<(ot::LogLevel)2>("BbrManager", "Stop Backbone TMF agent: %s", v4, v5, v6, v7, v8, v9, v3);
      }

      else
      {
        v10 = ot::ErrorToString(0);
        ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "Stop Backbone TMF agent: %s", v11, v12, v13, v14, v15, v16, v10);
      }
    }
  }
}

void ot::BackboneRouter::Manager::LogError(uint64_t a1, char a2, int a3)
{
  if (a3)
  {
    ot::ErrorToString(a3);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("BbrManager", "%s: %s", v9, v10, v11, v12, v13, v14, a2);
  }

  else
  {
    ot::ErrorToString(0);
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "%s: %s", v3, v4, v5, v6, v7, v8, a2);
  }
}

void ot::BackboneRouter::Manager::HandleTmf<(ot::Uri)39>(ot::InstanceLocator *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(a1);
  if (ot::BackboneRouter::Local::IsEnabled(v3))
  {
    ot::BackboneRouter::Manager::HandleMulticastListenerRegistration(a1, a2, a3);
  }
}

void ot::BackboneRouter::Manager::HandleMulticastListenerRegistration(ot::BackboneRouter::Manager *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v48 = this;
  v47 = a2;
  v46 = a3;
  v45 = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
  IsPrimary = ot::BackboneRouter::Local::IsPrimary(v3);
  v43 = 0;
  v38 = 0;
  v37 = 0;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  if (!ot::Coap::Message::IsConfirmablePostRequest(v47))
  {
    v45 = 6;
    goto LABEL_42;
  }

  if (!IsPrimary)
  {
    v43 = 5;
    goto LABEL_42;
  }

  if (!ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(v47, &v34))
  {
    v31 = 0;
    v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NetworkData::Leader>(this);
    if (ot::NetworkData::Leader::FindCommissioningSessionId(v5, &v31) || v31 != v34)
    {
      v43 = 6;
      goto LABEL_42;
    }

    v33 = 1;
  }

  v25 = 0;
  if (v33)
  {
    v25 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)11,unsigned int>>(v47, &v35) == 0;
  }

  v32 = v25;
  if (ot::Tlv::FindTlvValueOffsetRange(v47, 0xE, &v40, v4))
  {
    v45 = 6;
    goto LABEL_42;
  }

  if (ot::OffsetRange::GetLength(&v40) % 0x10uLL)
  {
    v43 = 6;
    goto LABEL_42;
  }

  Length = ot::OffsetRange::GetLength(&v40);
  if (Length / 0x10uLL > 0xF)
  {
    v43 = 6;
    goto LABEL_42;
  }

  if (v32)
  {
    if (v35 == -1)
    {
      v43 = 3;
      goto LABEL_42;
    }

    if (v35)
    {
      v30 = v35;
      Length = ot::Min<unsigned int>(v35, 0x20C49Bu);
      v35 = Length;
      if (Length != v30)
      {
        v24 = ot::ToUlong(v30);
        ot::ToUlong(v35);
        ot::Logger::LogAtLevel<(ot::LogLevel)3>("BbrManager", "MLR.req: MLR timeout is normalized from %lu to %lu", v8, v9, v10, v11, v12, v13, v24);
      }
    }
  }

  else
  {
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
    ot::BackboneRouter::Leader::GetConfig(v7, v41);
    IgnoreError();
    v35 = v42;
  }

  Now = ot::TimerMilli::GetNow(Length);
  v14 = ot::Time::SecToMsec(v35);
  v29 = ot::Time::operator+(&Now, v14);
  v36 = v29;
  while (!ot::OffsetRange::IsEmpty(&v40))
  {
    ot::Message::Read<ot::Ip6::Address>(v47, &v40, &v39);
    IgnoreError();
    ot::OffsetRange::AdvanceOffset(&v40, 0x10u);
    if (v35)
    {
      v27 = 1;
      v23 = ot::BackboneRouter::MulticastListenersTable::Add(this + 6032, &v39, v36);
      if (v23)
      {
        if (v23 == 3)
        {
          if (!v43)
          {
            v43 = 4;
          }
        }

        else
        {
          if (v23 != 7)
          {
            __assert_rtn("HandleMulticastListenerRegistration", "bbr_manager.cpp", 256, "false");
          }

          if (!v43)
          {
            v43 = 2;
          }
        }
      }

      else
      {
        v27 = 0;
      }

      if (v27)
      {
        v15 = v38++;
        v50[v15] = v39;
      }

      else
      {
        ot::Ip6::Address::ToString(&v39, v49);
        v16 = ot::String<(unsigned short)40>::AsCString(v49);
        ot::Logger::LogAtLevel<(ot::LogLevel)5>("BbrManager", "Registered address:%s is added to the addresses list successfuly", v17, v18, v19, v20, v21, v22, v16);
        v50[15 - ++v37] = v39;
      }
    }

    else
    {
      ot::BackboneRouter::MulticastListenersTable::Remove((this + 6032), &v39);
      v50[15 - ++v37] = v39;
    }
  }

LABEL_42:
  if (!v45)
  {
    ot::BackboneRouter::Manager::SendMulticastListenerRegistrationResponse(this, v47, v46, v43, v50, v38);
  }

  if (v37)
  {
    ot::BackboneRouter::Manager::SendBackboneMulticastListenerRegistration(this, &v50[15 - v37], v37, v35);
  }
}

BOOL ot::BackboneRouter::Local::IsPrimary(ot::BackboneRouter::Local *this)
{
  return *(this + 1) == 2;
}

{
  return ot::BackboneRouter::Local::IsPrimary(this);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 0xFu, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)15,unsigned short>>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)11,unsigned int>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned int>(a1, 0xBu, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)11,unsigned int>>(a1, a2);
}

uint64_t ot::OffsetRange::GetLength(ot::OffsetRange *this)
{
  return *(this + 1);
}

{
  return ot::OffsetRange::GetLength(this);
}

void ot::BackboneRouter::Manager::SendMulticastListenerRegistrationResponse(ot::InstanceLocator *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, int a4, uint64_t a5, unsigned __int8 a6)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = a6;
  v19 = 0;
  v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v18 = ot::Coap::CoapBase::NewResponseMessage(v6, v24);
  if (v18)
  {
    if (!ot::Tlv::Append<ot::ThreadStatusTlv>(v18, v22))
    {
      if (v20)
      {
        ot::Ip6AddressesTlv::Init(v17);
        ot::Tlv::SetLength(v17, 16 * v20);
        v19 = ot::Message::Append<ot::Ip6AddressesTlv>(v18, v17);
        if (v19)
        {
          goto LABEL_11;
        }

        for (i = 0; i < v20; ++i)
        {
          v19 = ot::Message::Append<ot::Ip6::Address>(v18, (v21 + 16 * i));
          if (v19)
          {
            goto LABEL_11;
          }
        }
      }

      v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      v19 = ot::Coap::CoapBase::SendMessage(v7, v18, v23);
    }
  }

  else
  {
    v19 = 3;
  }

LABEL_11:
  if (v19 && v18)
  {
    ot::Message::Free(v18);
  }

  v14 = v22;
  ot::ErrorToString(v19);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "Sent MLR.rsp (status=%d): %s", v8, v9, v10, v11, v12, v13, v14);
}

void ot::BackboneRouter::Manager::SendBackboneMulticastListenerRegistration(ot::BackboneRouter::Manager *this, const ot::Ip6::Address *a2, unsigned __int8 a3, unsigned int a4)
{
  v32 = this;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  appended = 0;
  v27 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v26);
  v24 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::BackboneTmfAgent>(this);
  v23 = 0;
  if (v30)
  {
    v23 = v30 <= 0xFu;
  }

  if (!v23)
  {
    __assert_rtn("SendBackboneMulticastListenerRegistration", "bbr_manager.cpp", 333, "aAddressNum >= Ip6AddressesTlv::kMinAddresses && aAddressNum <= Ip6AddressesTlv::kMaxAddresses");
  }

  v27 = ot::Coap::CoapBase::NewNonConfirmablePostMessage(v24, 8u);
  if (v27)
  {
    ot::Ip6AddressesTlv::Init(v25);
    ot::Tlv::SetLength(v25, 16 * v30);
    appended = ot::Message::Append<ot::Ip6AddressesTlv>(v27, v25);
    if (!appended)
    {
      appended = ot::Message::AppendBytes(v27, v31, 16 * v30);
      if (!appended)
      {
        appended = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)11,unsigned int>>(v27, v29);
        if (!appended)
        {
          v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
          AllNetworkBackboneRoutersAddress = ot::BackboneRouter::Local::GetAllNetworkBackboneRoutersAddress(v4);
          ot::Ip6::MessageInfo::SetPeerAddr(v26, AllNetworkBackboneRoutersAddress);
          ot::Ip6::MessageInfo::SetPeerPort(v26, 61631);
          v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
          v7 = ot::BackboneRouter::Local::GetAllNetworkBackboneRoutersAddress(v6);
          ot::Ip6::Address::ToString(v7, v33);
          v8 = ot::String<(unsigned short)40>::AsCString(v33);
          ot::Logger::LogAtLevel<(ot::LogLevel)5>("BbrManager", "Send BMLR to address:%s port:%d", v9, v10, v11, v12, v13, v14, v8);
          ot::Ip6::MessageInfo::SetHopLimit(v26, 1);
          ot::Ip6::MessageInfo::SetIsHostInterface(v26, 1);
          appended = ot::Coap::CoapBase::SendMessage(v24, v27, v26);
        }
      }
    }
  }

  else
  {
    appended = 3;
  }

  if (appended && v27)
  {
    ot::Message::Free(v27);
  }

  v15 = ot::ErrorToString(appended);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "Sent BMLR.ntf: %s", v16, v17, v18, v19, v20, v21, v15);
}

uint64_t ot::Tlv::Append<ot::ThreadStatusTlv>(uint64_t a1, unsigned __int8 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned char>(a1, 4, a2);
}

{
  return ot::Tlv::Append<ot::ThreadStatusTlv>(a1, a2);
}

_BYTE *ot::Ip6AddressesTlv::Init(ot::Ip6AddressesTlv *this)
{
  return ot::ThreadTlv::SetType(this, 14);
}

{
  return ot::Ip6AddressesTlv::Init(this);
}

uint64_t ot::Message::Append<ot::Ip6AddressesTlv>(ot::Message *a1, char *a2)
{
  return ot::Message::AppendBytes(a1, a2, 2u);
}

{
  return ot::Message::Append<ot::Ip6AddressesTlv>(a1, a2);
}

uint64_t ot::Message::Append<ot::Ip6::Address>(ot::Message *a1, const void *a2)
{
  return ot::Message::AppendBytes(a1, a2, 0x10u);
}

{
  return ot::Message::Append<ot::Ip6::Address>(a1, a2);
}

ot::Ip6::MessageInfo *ot::Ip6::MessageInfo::MessageInfo(ot::Ip6::MessageInfo *this)
{
  ot::Ip6::MessageInfo::MessageInfo(this);
  return this;
}

{
  ot::Clearable<ot::Ip6::MessageInfo>::Clear(this);
  return this;
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)11,unsigned int>>(ot::Tlv *a1, unsigned int a2)
{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, 0xBu, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)11,unsigned int>>(a1, a2);
}

__n128 ot::Ip6::MessageInfo::SetPeerAddr(__n128 *this, __n128 *a2)
{
  result = *a2;
  this[1] = *a2;
  return result;
}

uint64_t ot::Ip6::MessageInfo::SetPeerPort(uint64_t this, __int16 a2)
{
  *(this + 34) = a2;
  return this;
}

{
  return ot::Ip6::MessageInfo::SetPeerPort(this, a2);
}

uint64_t ot::Ip6::MessageInfo::SetHopLimit(uint64_t this, char a2)
{
  *(this + 36) = a2;
  return this;
}

{
  return ot::Ip6::MessageInfo::SetHopLimit(this, a2);
}

uint64_t ot::Ip6::MessageInfo::SetIsHostInterface(uint64_t this, char a2)
{
  *(this + 37) = *(this + 37) & 0xFB | (4 * (a2 & 1));
  return this;
}

{
  return ot::Ip6::MessageInfo::SetIsHostInterface(this, a2);
}

void ot::BackboneRouter::Manager::HandleTmf<(ot::Uri)38>(ot::InstanceLocator *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(a1);
  if (ot::BackboneRouter::Local::IsEnabled(v3))
  {
    ot::BackboneRouter::Manager::HandleDuaRegistration(a1, a2, a3);
  }
}

void ot::BackboneRouter::Manager::HandleDuaRegistration(ot::BackboneRouter::Manager *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  v31 = this;
  v30 = a2;
  v29 = a3;
  v28 = 0;
  v27 = 0;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
  IsPrimary = ot::BackboneRouter::Local::IsPrimary(v3);
  v25 = 0;
  v24 = 0;
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v29);
  Iid = ot::Ip6::Address::GetIid(PeerAddr);
  if (ot::Ip6::InterfaceIdentifier::IsRoutingLocator(Iid))
  {
    if (ot::Coap::Message::IsConfirmablePostRequest(v30))
    {
      v28 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v30, v23);
      if (!v28)
      {
        v28 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(v30, v22);
        if (!v28)
        {
          if (IsPrimary)
          {
            v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
            if (ot::BackboneRouter::Leader::HasDomainPrefix(v6))
            {
              v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
              if (ot::BackboneRouter::Leader::IsDomainUnicast(v7, v23))
              {
                v24 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(v30, &v25) == 0;
                v18 = (this + 8);
                v19 = ot::Ip6::Address::GetIid(v23);
                v8 = ot::Ip6::MessageInfo::GetPeerAddr(v29);
                v9 = ot::Ip6::Address::GetIid(v8);
                Locator = ot::Ip6::InterfaceIdentifier::GetLocator(v9);
                if (v24)
                {
                  v10 = ot::BackboneRouter::NdProxyTable::Register(v18, v19, v22, Locator, &v25);
                }

                else
                {
                  v10 = ot::BackboneRouter::NdProxyTable::Register(v18, v19, v22, Locator, 0);
                }

                if (v10)
                {
                  if (v10 == 3)
                  {
                    v27 = 4;
                  }

                  else if (v10 == 29)
                  {
                    v27 = 3;
                  }

                  else
                  {
                    v27 = 6;
                  }
                }
              }

              else
              {
                v27 = 2;
              }
            }

            else
            {
              v27 = 6;
            }
          }

          else
          {
            v27 = 5;
          }
        }
      }
    }

    else
    {
      v28 = 6;
    }
  }

  else
  {
    v28 = 2;
  }

  if (IsPrimary)
  {
    v17 = "PBBR";
  }

  else
  {
    v17 = "SBBR";
  }

  ot::ErrorToString(v28);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "Received DUA.req on %s: %s", v11, v12, v13, v14, v15, v16, v17);
  if (!v28)
  {
    ot::BackboneRouter::Manager::SendDuaRegistrationResponse(this, v30, v29, v23, v27);
  }
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 0, a2, 0x10);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::FindTlv(a1, 3, a2, 8);
}

{
  return ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(a1, a2);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned int>(a1, 6u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(a1, a2);
}

void ot::BackboneRouter::Manager::SendDuaRegistrationResponse(ot::InstanceLocator *a1, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, void *a4, unsigned __int8 a5)
{
  v16 = 0;
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
  v15 = ot::Coap::CoapBase::NewResponseMessage(v5, a2);
  if (v15)
  {
    if (!ot::Tlv::Append<ot::ThreadStatusTlv>(v15, a5) && !ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v15, a4))
    {
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Tmf::Agent>(a1);
      v16 = ot::Coap::CoapBase::SendMessage(v6, v15, a3);
    }
  }

  else
  {
    v16 = 3;
  }

  if (v16 && v15)
  {
    ot::Message::Free(v15);
  }

  ot::Ip6::Address::ToString(a4, v21);
  v13 = ot::String<(unsigned short)40>::AsCString(v21);
  ot::ErrorToString(v16);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "Sent DUA.rsp for DUA %s, status %d %s", v7, v8, v9, v10, v11, v12, v13);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 0, a2, 0x10);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(a1, a2);
}

BOOL ot::BackboneRouter::Manager::ShouldForwardDuaToBackbone(ot::BackboneRouter::Manager *this, const ot::Ip6::Address *a2)
{
  v11 = 0;
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
  if (ot::BackboneRouter::Local::IsPrimary(v2))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
    if (ot::BackboneRouter::Leader::IsDomainUnicast(v3, a2))
    {
      Iid = ot::Ip6::Address::GetIid(a2);
      if (!ot::BackboneRouter::NdProxyTable::IsRegistered((this + 8), Iid))
      {
        v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::NeighborTable>(this);
        if (!ot::NeighborTable::FindNeighbor(v5, a2, 1))
        {
          v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
          v9 = ot::AddressResolver::LookUp(v6, a2);
          v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
          return v9 == ot::Mle::Mle::GetRloc16(v7);
        }
      }
    }
  }

  return v11;
}

BOOL ot::BackboneRouter::NdProxyTable::IsRegistered(ot::BackboneRouter::NdProxyTable *this, const ot::Ip6::InterfaceIdentifier *a2)
{
  return ot::BackboneRouter::NdProxyTable::FindByAddressIid(this, a2) != 0;
}

{
  return ot::BackboneRouter::NdProxyTable::IsRegistered(this, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::AddressResolver>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(a1);
}

uint64_t ot::BackboneRouter::Manager::SendBackboneQuery(ot::BackboneRouter::Manager *this, const ot::Ip6::Address *a2, unsigned __int16 a3)
{
  v20 = this;
  v19 = a2;
  v18 = a3;
  v17 = 0;
  v16 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v15);
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
  if (ot::BackboneRouter::Local::IsPrimary(v3))
  {
    v16 = ot::Coap::CoapBase::NewPriorityNonConfirmablePostMessage((this + 7576), 9u);
    if (v16)
    {
      v17 = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v16, v19);
      if (!v17 && (v18 == 65534 || (v17 = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v16, v18)) == 0))
      {
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
        AllDomainBackboneRoutersAddress = ot::BackboneRouter::Local::GetAllDomainBackboneRoutersAddress(v4);
        ot::Ip6::MessageInfo::SetPeerAddr(v15, AllDomainBackboneRoutersAddress);
        ot::Ip6::MessageInfo::SetPeerPort(v15, 61631);
        ot::Ip6::MessageInfo::SetHopLimit(v15, 1);
        ot::Ip6::MessageInfo::SetIsHostInterface(v15, 1);
        v17 = ot::Coap::CoapBase::SendMessage((this + 7576), v16, v15);
      }
    }

    else
    {
      v17 = 3;
    }
  }

  else
  {
    v17 = 13;
  }

  ot::Ip6::Address::ToString(v19, v21);
  v13 = ot::String<(unsigned short)40>::AsCString(v21);
  ot::ErrorToString(v17);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "SendBackboneQuery for %s (rloc16=%04x): %s", v6, v7, v8, v9, v10, v11, v13);
  if (v17 && v16)
  {
    ot::Message::Free(v16);
  }

  return v17;
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(uint64_t a1, unsigned __int16 a2)
{
  return ot::Tlv::AppendUintTlv<unsigned short>(a1, 2, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(a1, a2);
}

void ot::BackboneRouter::Manager::HandleTmf<(ot::Uri)9>(uint64_t a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = 0;
  v21 = -2;
  if (ot::Ip6::MessageInfo::IsHostInterface(a3))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(a1);
    if (ot::BackboneRouter::Local::IsPrimary(v3))
    {
      if (ot::Coap::Message::IsNonConfirmablePostRequest(v25))
      {
        v23 = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v25, v22);
        if (!v23)
        {
          v23 = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v25, &v21);
          if (!v23 || v23 == 23)
          {
            PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(v24);
            ot::Ip6::Address::ToString(PeerAddr, v28);
            v18 = ot::String<(unsigned short)40>::AsCString(v28);
            ot::Ip6::Address::ToString(v22, v27);
            ot::String<(unsigned short)40>::AsCString(v27);
            ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "Received BB.qry from %s for %s (rloc16=%04x)", v5, v6, v7, v8, v9, v10, v18);
            v20 = ot::BackboneRouter::NdProxyTable::ResolveDua((a1 + 8), v22);
            if (v20 && (ot::BackboneRouter::NdProxyTable::NdProxy::GetDadFlag(v20) & 1) == 0)
            {
              v23 = ot::BackboneRouter::Manager::SendBackboneAnswer(a1, v24, v22, v21, v20);
            }

            else
            {
              v23 = 23;
            }
          }
        }
      }

      else
      {
        v23 = 6;
      }
    }

    else
    {
      v23 = 13;
    }
  }

  else
  {
    v23 = 2;
  }

  v11 = ot::ErrorToString(v23);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "HandleBackboneQuery: %s", v12, v13, v14, v15, v16, v17, v11);
}

uint64_t ot::Ip6::MessageInfo::IsHostInterface(ot::Ip6::MessageInfo *this)
{
  return (*(this + 37) >> 2) & 1;
}

{
  return ot::Ip6::MessageInfo::IsHostInterface(this);
}

uint64_t ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(const ot::Message *a1, char *a2)
{
  return ot::Tlv::FindUintTlv<unsigned short>(a1, 2u, a2);
}

{
  return ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(a1, a2);
}

uint64_t ot::BackboneRouter::NdProxyTable::NdProxy::GetDadFlag(ot::BackboneRouter::NdProxyTable::NdProxy *this)
{
  return (*(this + 22) >> 2) & 1;
}

{
  return ot::BackboneRouter::NdProxyTable::NdProxy::GetDadFlag(this);
}

uint64_t ot::BackboneRouter::Manager::SendBackboneAnswer(ot::BackboneRouter::Manager *this, const ot::Ip6::MessageInfo *a2, const ot::Ip6::Address *a3, unsigned __int16 a4, const ot::BackboneRouter::NdProxyTable::NdProxy *a5)
{
  PeerAddr = ot::Ip6::MessageInfo::GetPeerAddr(a2);
  MeshLocalIid = ot::BackboneRouter::NdProxyTable::NdProxy::GetMeshLocalIid(a5);
  TimeSinceLastTransaction = ot::BackboneRouter::NdProxyTable::NdProxy::GetTimeSinceLastTransaction(a5);
  return ot::BackboneRouter::Manager::SendBackboneAnswer(this, PeerAddr, a3, MeshLocalIid, TimeSinceLastTransaction, a4);
}

void ot::BackboneRouter::Manager::HandleTmf<(ot::Uri)7>(uint64_t a1, ot::Tlv *a2, const ot::Ip6::MessageInfo *a3)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  TlvValueOffsetRange = 0;
  v18 = 0;
  v14 = 0;
  v13 = -2;
  if (ot::Ip6::MessageInfo::IsHostInterface(a3))
  {
    v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(a1);
    if (ot::BackboneRouter::Local::IsPrimary(v3))
    {
      if (ot::Coap::Message::IsPostRequest(v21))
      {
        v18 = !ot::Coap::Message::IsConfirmable(v21);
        TlvValueOffsetRange = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v21, v17);
        if (!TlvValueOffsetRange)
        {
          TlvValueOffsetRange = ot::Tlv::Find<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(v21, v16);
          if (!TlvValueOffsetRange)
          {
            TlvValueOffsetRange = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(v21, &v14);
            if (!TlvValueOffsetRange)
            {
              TlvValueOffsetRange = ot::Tlv::FindTlvValueOffsetRange(v21, 0xC, &v15, v4);
              if (!TlvValueOffsetRange)
              {
                TlvValueOffsetRange = ot::Tlv::Find<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v21, &v13);
                if (!TlvValueOffsetRange || TlvValueOffsetRange == 23)
                {
                  if (v18)
                  {
                    ot::BackboneRouter::Manager::HandleProactiveBackboneNotification(a1, v17, v16, v14);
                  }

                  else if (v13 == 65534)
                  {
                    ot::BackboneRouter::Manager::HandleDadBackboneAnswer(a1, v17, v16);
                  }

                  else
                  {
                    ot::BackboneRouter::Manager::HandleExtendedBackboneAnswer(a1, v17, v16, v14, v13);
                  }

                  TlvValueOffsetRange = ot::Coap::CoapBase::SendEmptyAck((a1 + 7576), v21, v20);
                }
              }
            }
          }
        }
      }

      else
      {
        TlvValueOffsetRange = 6;
      }
    }

    else
    {
      TlvValueOffsetRange = 13;
    }
  }

  else
  {
    TlvValueOffsetRange = 2;
  }

  v5 = ot::ErrorToString(TlvValueOffsetRange);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "HandleBackboneAnswer: %s", v6, v7, v8, v9, v10, v11, v5);
}

BOOL ot::Coap::Message::IsPostRequest(ot::Coap::Message *this)
{
  return ot::Coap::Message::GetCode(this) == 2;
}

{
  return ot::Coap::Message::IsPostRequest(this);
}

BOOL ot::Coap::Message::IsConfirmable(ot::Coap::Message *this)
{
  return ot::Coap::Message::GetType(this) == 0;
}

{
  return ot::Coap::Message::IsConfirmable(this);
}

void ot::BackboneRouter::Manager::HandleProactiveBackboneNotification(ot::BackboneRouter::Manager *this, const ot::Ip6::Address *a2, const ot::Ip6::InterfaceIdentifier *a3, unsigned int a4)
{
  v19 = ot::BackboneRouter::NdProxyTable::ResolveDua((this + 8), a2);
  if (v19)
  {
    MeshLocalIid = ot::BackboneRouter::NdProxyTable::NdProxy::GetMeshLocalIid(v19);
    if (ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(MeshLocalIid, a3))
    {
      if (a4 > ot::BackboneRouter::NdProxyTable::NdProxy::GetTimeSinceLastTransaction(v19))
      {
        v17 = ot::BackboneRouter::NdProxyTable::NdProxy::GetMeshLocalIid(v19);
        TimeSinceLastTransaction = ot::BackboneRouter::NdProxyTable::NdProxy::GetTimeSinceLastTransaction(v19);
        ot::BackboneRouter::Manager::SendProactiveBackboneNotification(this, a2, v17, TimeSinceLastTransaction);
        IgnoreError();
      }

      else
      {
        ot::BackboneRouter::NdProxyTable::Erase(v19, v7);
      }
    }

    else
    {
      ot::BackboneRouter::NdProxyTable::Erase(v19, v6);
      v9 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
      ot::AddressResolver::SendAddressError(v9, a2, a3, 0);
    }

    v4 = ot::ErrorToString(0);
  }

  else
  {
    v4 = ot::ErrorToString(23);
  }

  v16 = v4;
  ot::Ip6::Address::ToString(a2, v24);
  ot::String<(unsigned short)40>::AsCString(v24);
  ot::Ip6::InterfaceIdentifier::ToString(a3, v23);
  ot::String<(unsigned short)17>::AsCString(v23);
  ot::ToUlong(a4);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "HandleProactiveBackboneNotification: %s, target=%s, mliid=%s, LTT=%lus", v10, v11, v12, v13, v14, v15, v16);
}

void ot::BackboneRouter::Manager::HandleDadBackboneAnswer(ot::BackboneRouter::Manager *this, const ot::Ip6::Address *a2, const ot::Ip6::InterfaceIdentifier *a3)
{
  v22 = this;
  v21 = a2;
  v20 = a3;
  v19 = 0;
  v18 = ot::BackboneRouter::NdProxyTable::ResolveDua((this + 8), a2);
  v17 = 0;
  if (v18)
  {
    MeshLocalIid = ot::BackboneRouter::NdProxyTable::NdProxy::GetMeshLocalIid(v18);
    v17 = ot::Unequatable<ot::Ip6::InterfaceIdentifier>::operator!=(MeshLocalIid, v20);
    if (v17)
    {
      v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
      MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v4);
      Rloc16 = ot::BackboneRouter::NdProxyTable::NdProxy::GetRloc16(v18);
      ot::Ip6::Address::SetToRoutingLocator(&v16, MeshLocalPrefix, Rloc16);
      v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
      ot::AddressResolver::SendAddressError(v6, v21, v20, &v16);
    }

    ot::BackboneRouter::NdProxyTable::NotifyDadComplete(v18, v17);
  }

  else
  {
    v19 = 23;
  }

  v13 = ot::ErrorToString(v19);
  ot::Ip6::Address::ToString(v21, v24);
  ot::String<(unsigned short)40>::AsCString(v24);
  ot::Ip6::InterfaceIdentifier::ToString(v20, v23);
  ot::String<(unsigned short)17>::AsCString(v23);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "HandleDadBackboneAnswer: %s, target=%s, mliid=%s, duplicate=%s", v7, v8, v9, v10, v11, v12, v13);
}

void ot::BackboneRouter::Manager::HandleExtendedBackboneAnswer(ot::BackboneRouter::Manager *this, const ot::Ip6::Address *a2, const ot::Ip6::InterfaceIdentifier *a3, unsigned int a4, unsigned __int16 a5)
{
  v20 = this;
  v19 = a2;
  *&v18[1] = a3;
  v18[0] = a4;
  v17 = a5;
  v5 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Mle::MleRouter>(this);
  MeshLocalPrefix = ot::Mle::Mle::GetMeshLocalPrefix(v5);
  ot::Ip6::Address::SetToRoutingLocator(v16, MeshLocalPrefix, v17);
  v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::AddressResolver>(this);
  ot::AddressResolver::SendAddressQueryResponse(v7, v19, *&v18[1], v18, v16);
  ot::Ip6::Address::ToString(v19, v22);
  v15 = ot::String<(unsigned short)40>::AsCString(v22);
  ot::Ip6::InterfaceIdentifier::ToString(*&v18[1], v21);
  ot::String<(unsigned short)17>::AsCString(v21);
  ot::ToUlong(v18[0]);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "HandleExtendedBackboneAnswer: target=%s, mliid=%s, LTT=%lus, rloc16=%04x", v8, v9, v10, v11, v12, v13, v15);
}

uint64_t ot::BackboneRouter::Manager::SendProactiveBackboneNotification(ot::BackboneRouter::Manager *this, const ot::Ip6::Address *a2, const ot::Ip6::InterfaceIdentifier *a3, unsigned int a4)
{
  v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Local>(this);
  AllDomainBackboneRoutersAddress = ot::BackboneRouter::Local::GetAllDomainBackboneRoutersAddress(v4);
  return ot::BackboneRouter::Manager::SendBackboneAnswer(this, AllDomainBackboneRoutersAddress, a2, a3, a4, 0xFFFEu);
}

uint64_t ot::BackboneRouter::Manager::SendBackboneAnswer(ot::BackboneRouter::Manager *this, const ot::Ip6::Address *a2, const ot::Ip6::Address *a3, const ot::Ip6::InterfaceIdentifier *a4, unsigned int a5, unsigned __int16 a6)
{
  v32 = this;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v26 = 0;
  v25 = 0;
  ot::Ip6::MessageInfo::MessageInfo(v24);
  IsMulticast = ot::Ip6::Address::IsMulticast(v31);
  v25 = ot::Coap::CoapBase::NewPriorityMessage((this + 7576));
  if (v25)
  {
    v26 = ot::Coap::Message::Init(v25, IsMulticast, 2, 7u);
    if (!v26)
    {
      v26 = ot::Coap::Message::SetPayloadMarker(v25);
      if (!v26)
      {
        v26 = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)0,ot::Ip6::Address>>(v25, v30);
        if (!v26)
        {
          v26 = ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(v25, v29);
          if (!v26)
          {
            v26 = ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(v25, v28);
            if (!v26)
            {
              v21 = v25;
              v6 = ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::NetworkNameManager>(this);
              ot::MeshCoP::NetworkNameManager::GetNetworkName(v6);
              ot::MeshCoP::NetworkName::GetAsCString(v7);
              v26 = ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)12,(unsigned char)16>>(v21, v8, v9, v10, v11);
              if (!v26 && (v27 == 65534 || !ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)2,unsigned short>>(v25, v27)))
              {
                ot::Ip6::MessageInfo::SetPeerAddr(v24, v31);
                ot::Ip6::MessageInfo::SetPeerPort(v24, 61631);
                ot::Ip6::MessageInfo::SetHopLimit(v24, 1);
                ot::Ip6::MessageInfo::SetIsHostInterface(v24, 1);
                v26 = ot::Coap::CoapBase::SendMessage((this + 7576), v25, v24);
              }
            }
          }
        }
      }
    }
  }

  else
  {
    v26 = 3;
  }

  v12 = "PRO_BB.ntf";
  if (!IsMulticast)
  {
    v12 = "BB.ans";
  }

  v20 = v12;
  ot::Ip6::Address::ToString(v30, v33);
  ot::String<(unsigned short)40>::AsCString(v33);
  ot::ErrorToString(v26);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrManager", "Send %s for %s (rloc16=%04x): %s", v13, v14, v15, v16, v17, v18, v20);
  if (v26 && v25)
  {
    ot::Message::Free(v25);
  }

  return v26;
}

uint64_t ot::BackboneRouter::NdProxyTable::NdProxy::GetMeshLocalIid(ot::BackboneRouter::NdProxyTable::NdProxy *this)
{
  return this + 8;
}

{
  return ot::BackboneRouter::NdProxyTable::NdProxy::GetMeshLocalIid(this);
}

uint64_t ot::BackboneRouter::NdProxyTable::NdProxy::GetTimeSinceLastTransaction(ot::BackboneRouter::NdProxyTable::NdProxy *this)
{
  v5 = this;
  Now = ot::TimerMilli::GetNow(this);
  v1 = ot::Time::operator-(&Now, this + 4);
  return ot::Time::MsecToSec(v1);
}

{
  return ot::BackboneRouter::NdProxyTable::NdProxy::GetTimeSinceLastTransaction(this);
}

BOOL ot::Ip6::Address::IsMulticast(ot::Ip6::Address *this)
{
  return *this == 255;
}

{
  return ot::Ip6::Address::IsMulticast(this);
}

uint64_t ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(ot::Tlv *a1, void *a2)
{
  return ot::Tlv::AppendTlv(a1, 3, a2, 8);
}

{
  return ot::Tlv::Append<ot::SimpleTlvInfo<(unsigned char)3,ot::Ip6::InterfaceIdentifier>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(ot::Tlv *a1, unsigned int a2)
{
  return ot::Tlv::AppendUintTlv<unsigned int>(a1, 6u, a2);
}

{
  return ot::Tlv::Append<ot::UintTlvInfo<(unsigned char)6,unsigned int>>(a1, a2);
}

uint64_t ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)12,(unsigned char)16>>(ot::Tlv *a1, ot *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  return ot::Tlv::AppendStringTlv(a1, 0xC, 0x10u, a2, a5);
}

{
  return ot::Tlv::Append<ot::StringTlvInfo<(unsigned char)12,(unsigned char)16>>(a1, a2, a3, a4, a5);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::NetworkNameManager>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::MeshCoP::NetworkNameManager>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::MeshCoP::NetworkNameManager>(a1);
}

BOOL ot::Unequatable<ot::Ip6::InterfaceIdentifier>::operator!=(const void *a1, const void *a2)
{
  return !ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::Ip6::InterfaceIdentifier>::operator!=(a1, a2);
}

uint64_t ot::BackboneRouter::NdProxyTable::NdProxy::GetRloc16(ot::BackboneRouter::NdProxyTable::NdProxy *this)
{
  return *(this + 10);
}

{
  return ot::BackboneRouter::NdProxyTable::NdProxy::GetRloc16(this);
}

BOOL ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 8uLL) == 0;
}

{
  return ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(a1, a2);
}

ot::BackboneRouter::NdProxyTable::NdProxy *ot::BackboneRouter::NdProxyTable::NdProxy::NdProxy(ot::BackboneRouter::NdProxyTable::NdProxy *this)
{
  ot::BackboneRouter::NdProxyTable::NdProxy::NdProxy(this);
  return this;
}

{
  ot::Clearable<ot::BackboneRouter::NdProxyTable::NdProxy>::Clear(this);
  return this;
}

void *ot::Clearable<ot::BackboneRouter::NdProxyTable::NdProxy>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::BackboneRouter::NdProxyTable::NdProxy>(a1);
}

{
  return ot::Clearable<ot::BackboneRouter::NdProxyTable::NdProxy>::Clear(a1);
}

void *ot::ClearAllBytes<ot::BackboneRouter::NdProxyTable::NdProxy>(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::BackboneRouter::NdProxyTable::NdProxy>(result);
}

ot::BackboneRouter::MulticastListenersTable::Listener *ot::BackboneRouter::MulticastListenersTable::Listener::Listener(ot::BackboneRouter::MulticastListenersTable::Listener *this)
{
  ot::BackboneRouter::MulticastListenersTable::Listener::Listener(this);
  return this;
}

{
  ot::Clearable<ot::BackboneRouter::MulticastListenersTable::Listener>::Clear(this);
  return this;
}

uint64_t ot::Clearable<ot::BackboneRouter::MulticastListenersTable::Listener>::Clear(uint64_t a1)
{
  return ot::ClearAllBytes<ot::BackboneRouter::MulticastListenersTable::Listener>(a1);
}

{
  return ot::Clearable<ot::BackboneRouter::MulticastListenersTable::Listener>::Clear(a1);
}

uint64_t ot::ClearAllBytes<ot::BackboneRouter::MulticastListenersTable::Listener>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

{
  return ot::ClearAllBytes<ot::BackboneRouter::MulticastListenersTable::Listener>(result);
}

_BYTE *ot::ThreadTlv::SetType(_BYTE *a1, char a2)
{
  return ot::Tlv::SetType(a1, a2);
}

{
  return ot::ThreadTlv::SetType(a1, a2);
}

void *ot::Clearable<ot::Ip6::MessageInfo>::Clear(void *a1)
{
  return ot::ClearAllBytes<ot::Ip6::MessageInfo>(a1);
}

{
  return ot::Clearable<ot::Ip6::MessageInfo>::Clear(a1);
}

void *ot::ClearAllBytes<ot::Ip6::MessageInfo>(void *a1)
{
  return memset(a1, 0, 0x26uLL);
}

{
  return ot::ClearAllBytes<ot::Ip6::MessageInfo>(a1);
}

uint64_t ot::Time::MsecToSec(ot::Time *this)
{
  return this / 0x3E8;
}

{
  return ot::Time::MsecToSec(this);
}

uint64_t ot::BackboneRouter::MulticastListenersTable::Add(uint64_t a1, ot::Ip6::Address *a2, int a3)
{
  v16 = a3;
  v15 = a1;
  v14 = a2;
  v13 = 0;
  if (ot::Ip6::Address::IsMulticastLargerThanRealmLocal(a2))
  {
    for (i = 0; i < *(a1 + 1500); ++i)
    {
      v11 = (a1 + 20 * i);
      ot::BackboneRouter::MulticastListenersTable::Listener::GetAddress(v11);
      if (ot::Equatable<ot::Ip6::Address>::operator==(v3, v14))
      {
        v10[2] = v16;
        ot::BackboneRouter::MulticastListenersTable::Listener::SetExpireTime(v11, v16);
        ot::BackboneRouter::MulticastListenersTable::FixHeap(a1, i);
        goto LABEL_12;
      }
    }

    v7 = *(a1 + 1500);
    v4 = ot::GetArrayLength<ot::BackboneRouter::MulticastListenersTable::Listener,(unsigned short)75>();
    if (v7 < v4)
    {
      ot::BackboneRouter::MulticastListenersTable::Listener::SetAddress((a1 + 20 * *(a1 + 1500)), v14);
      v5 = a1 + 20 * *(a1 + 1500);
      v10[1] = v16;
      ot::BackboneRouter::MulticastListenersTable::Listener::SetExpireTime(v5, v16);
      ot::BackboneRouter::MulticastListenersTable::FixHeap(a1, (*(a1 + 1500))++);
      v10[0] = ot::MapEnum<ot::BackboneRouter::MulticastListenersTable::Listener::Event>(0);
      v9 = v14;
      ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>((a1 + 1504), v10, &v9);
    }

    else
    {
      v13 = 3;
    }
  }

  else
  {
    v13 = 7;
  }

LABEL_12:
  ot::BackboneRouter::MulticastListenersTable::Log(a1, 0, v14, v16, v13);
  ot::BackboneRouter::MulticastListenersTable::CheckInvariants(a1);
  return v13;
}

void ot::BackboneRouter::MulticastListenersTable::Listener::GetAddress(ot::BackboneRouter::MulticastListenersTable::Listener *this)
{
  ;
}

{
  ot::BackboneRouter::MulticastListenersTable::Listener::GetAddress(this);
}

uint64_t ot::BackboneRouter::MulticastListenersTable::Listener::SetExpireTime(uint64_t result, int a2)
{
  *(result + 16) = a2;
  return result;
}

{
  return ot::BackboneRouter::MulticastListenersTable::Listener::SetExpireTime(result, a2);
}

double ot::BackboneRouter::MulticastListenersTable::FixHeap(ot::BackboneRouter::MulticastListenersTable *this, unsigned __int16 a2)
{
  if (!ot::BackboneRouter::MulticastListenersTable::SiftHeapElemDown(this, a2))
  {
    return ot::BackboneRouter::MulticastListenersTable::SiftHeapElemUp(this, a2);
  }

  return result;
}

uint64_t ot::GetArrayLength<ot::BackboneRouter::MulticastListenersTable::Listener,(unsigned short)75>()
{
  return 75;
}

{
  return ot::GetArrayLength<ot::BackboneRouter::MulticastListenersTable::Listener,(unsigned short)75>();
}

__n128 ot::BackboneRouter::MulticastListenersTable::Listener::SetAddress(__n128 *this, __n128 *a2)
{
  result = *a2;
  *this = *a2;
  return result;
}

void *ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(void *result, unsigned int *a2, void *a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(result, a2, a3);
}

uint64_t ot::MapEnum<ot::BackboneRouter::MulticastListenersTable::Listener::Event>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::BackboneRouter::MulticastListenersTable::Listener::Event>(result);
}

void ot::BackboneRouter::MulticastListenersTable::Log(uint64_t a1, unsigned __int8 a2, ot::Ip6::Address *a3, int a4, int a5)
{
  v14 = a4;
  v12 = ot::BackboneRouter::MulticastListenersTable::Log(ot::BackboneRouter::MulticastListenersTable::Action,ot::Ip6::Address const&,ot::Time,otError)const::kActionStrings[a2];
  ot::Ip6::Address::ToString(a3, v15);
  ot::String<(unsigned short)40>::AsCString(v15);
  Value = ot::Time::GetValue(&v14);
  ot::ToUlong(Value);
  ot::ErrorToString(a5);
  ot::Logger::LogAtLevel<(ot::LogLevel)5>("BbrMlt", "%s %s expire %lu: %s", v6, v7, v8, v9, v10, v11, v12);
}

void ot::BackboneRouter::MulticastListenersTable::Remove(ot::BackboneRouter::MulticastListenersTable *this, const ot::Ip6::Address *a2)
{
  v14 = this;
  v13 = a2;
  v12 = 23;
  for (i = 0; i < *(this + 750); ++i)
  {
    v10 = (this + 20 * i);
    ot::BackboneRouter::MulticastListenersTable::Listener::GetAddress(v10);
    if (ot::Equatable<ot::Ip6::Address>::operator==(v2, v13))
    {
      if (i != --*(this + 750))
      {
        v3 = this + 20 * *(this + 750);
        v4 = v10;
        *v10 = *v3;
        *(v4 + 4) = *(v3 + 4);
        ot::BackboneRouter::MulticastListenersTable::FixHeap(this, i);
      }

      v9 = ot::MapEnum<ot::BackboneRouter::MulticastListenersTable::Listener::Event>(1);
      v8 = v13;
      ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(this + 188, &v9, &v8);
      v12 = 0;
      break;
    }
  }

  v5 = v13;
  ot::Time::Time(&v7, 0);
  ot::BackboneRouter::MulticastListenersTable::Log(this, 1u, v5, v7, v12);
  ot::BackboneRouter::MulticastListenersTable::CheckInvariants(this);
}

void ot::BackboneRouter::MulticastListenersTable::Expire(ot::BackboneRouter::MulticastListenersTable *this)
{
  v13 = this;
  Now = ot::TimerMilli::GetNow(this);
  while (1)
  {
    v5 = 0;
    if (*(this + 750))
    {
      ExpireTime = ot::BackboneRouter::MulticastListenersTable::Listener::GetExpireTime(this);
      v5 = ot::Time::operator>=(&Now, &ExpireTime);
    }

    if (!v5)
    {
      break;
    }

    ot::BackboneRouter::MulticastListenersTable::Listener::GetAddress(this);
    v4 = v1;
    v9 = ot::BackboneRouter::MulticastListenersTable::Listener::GetExpireTime(this);
    ot::BackboneRouter::MulticastListenersTable::Log(this, 2u, v4, v9, 0);
    ot::BackboneRouter::MulticastListenersTable::Listener::GetAddress(this);
    v11 = *v2;
    if (--*(this + 750))
    {
      v3 = this + 20 * *(this + 750);
      *this = *v3;
      *(this + 4) = *(v3 + 4);
      ot::BackboneRouter::MulticastListenersTable::FixHeap(this, 0);
    }

    v8 = ot::MapEnum<ot::BackboneRouter::MulticastListenersTable::Listener::Event>(1);
    v7 = &v11;
    ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address *>(this + 188, &v8, &v7);
  }

  ot::BackboneRouter::MulticastListenersTable::CheckInvariants(this);
}

BOOL ot::Time::operator>=(int *a1, int *a2)
{
  return !ot::Time::operator<(a1, a2);
}

{
  return ot::Time::operator>=(a1, a2);
}

uint64_t ot::BackboneRouter::MulticastListenersTable::Listener::GetExpireTime(ot::BackboneRouter::MulticastListenersTable::Listener *this)
{
  return *(this + 4);
}

{
  return ot::BackboneRouter::MulticastListenersTable::Listener::GetExpireTime(this);
}

void *ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address *>(void *result, unsigned int *a2, void *a3)
{
  if (*result)
  {
    return ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address *>(result, a2, a3);
  }

  return result;
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address *>(result, a2, a3);
}

BOOL ot::BackboneRouter::MulticastListenersTable::SiftHeapElemDown(ot::BackboneRouter::MulticastListenersTable *this, unsigned __int16 a2)
{
  v13 = this;
  v12 = a2;
  v11 = a2;
  ot::BackboneRouter::MulticastListenersTable::Listener::Listener(&v9);
  if (v12 >= *(this + 750))
  {
    __assert_rtn("SiftHeapElemDown", "multicast_listeners_table.cpp", 189, "aIndex < mNumValidListeners");
  }

  v2 = 20 * v12;
  v9 = *(this + v2);
  v10 = *(this + v2 + 16);
  while (1)
  {
    v8 = 2 * v11 + 1;
    if (v8 >= *(this + 750) || v8 <= v11)
    {
      break;
    }

    if (v8 + 1 < *(this + 750) && ot::BackboneRouter::MulticastListenersTable::Listener::operator<((this + 20 * v8 + 20), (this + 20 * v8)))
    {
      ++v8;
    }

    if (!ot::BackboneRouter::MulticastListenersTable::Listener::operator<((this + 20 * v8), &v9))
    {
      break;
    }

    v3 = this + 20 * v8;
    v4 = this + 20 * v11;
    *v4 = *v3;
    *(v4 + 4) = *(v3 + 4);
    v11 = v8;
  }

  if (v11 > v12)
  {
    v5 = this + 20 * v11;
    *v5 = v9;
    *(v5 + 4) = v10;
  }

  return v11 > v12;
}

double ot::BackboneRouter::MulticastListenersTable::SiftHeapElemUp(ot::BackboneRouter::MulticastListenersTable *this, unsigned __int16 a2)
{
  v14 = this;
  v13 = a2;
  v12 = a2;
  ot::BackboneRouter::MulticastListenersTable::Listener::Listener(&v10);
  if (v13 >= *(this + 750))
  {
    __assert_rtn("SiftHeapElemUp", "multicast_listeners_table.cpp", 230, "aIndex < mNumValidListeners");
  }

  v2 = 20 * v13;
  v3 = *(this + v2);
  v10 = v3;
  v11 = *(this + v2 + 16);
  while (1)
  {
    v9 = (v12 - 1) / 2;
    if (!v12 || !ot::BackboneRouter::MulticastListenersTable::Listener::operator<(&v10, (this + 20 * v9)))
    {
      break;
    }

    v4 = this + 20 * v9;
    v5 = this + 20 * v12;
    v3 = *v4;
    *v5 = *v4;
    *(v5 + 4) = *(v4 + 4);
    v12 = v9;
  }

  if (v12 < v13)
  {
    v6 = this + 20 * v12;
    *&v3 = v10;
    *v6 = v10;
    *(v6 + 4) = v11;
  }

  return *&v3;
}

BOOL ot::BackboneRouter::MulticastListenersTable::Listener::operator<(ot::BackboneRouter::MulticastListenersTable::Listener *a1, ot::BackboneRouter::MulticastListenersTable::Listener *a2)
{
  v6 = a1;
  v5 = a2;
  ExpireTime = ot::BackboneRouter::MulticastListenersTable::Listener::GetExpireTime(a1);
  v3 = ot::BackboneRouter::MulticastListenersTable::Listener::GetExpireTime(v5);
  return ot::Time::operator<(&ExpireTime, &v3);
}

{
  return ot::BackboneRouter::MulticastListenersTable::Listener::operator<(a1, a2);
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::MulticastListenersTable>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::BackboneRouter::MulticastListenersTable>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::MulticastListenersTable>(a1);
}

void ot::BackboneRouter::MulticastListenersTable::Clear(ot::BackboneRouter::MulticastListenersTable *this)
{
  v6 = this;
  if (ot::CallbackBase<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*)>::IsSet(this + 188))
  {
    for (i = 0; i < *(this + 750); ++i)
    {
      v4 = ot::MapEnum<ot::BackboneRouter::MulticastListenersTable::Listener::Event>(1);
      ot::BackboneRouter::MulticastListenersTable::Listener::GetAddress((this + 20 * i));
      v3 = v1;
      ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(this + 1504, &v4, &v3);
    }
  }

  *(this + 750) = 0;
  ot::BackboneRouter::MulticastListenersTable::CheckInvariants(this);
}

BOOL ot::CallbackBase<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*)>::IsSet(a1);
}

uint64_t ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(uint64_t a1, unsigned int *a2, void *a3)
{
  return (*a1)(*(a1 + 8), *a2, *a3);
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(a1, a2, a3);
}

uint64_t ot::BackboneRouter::MulticastListenersTable::SetCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  ot::CallbackBase<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*)>::Set((a1 + 1504), a2, a3);
  result = ot::CallbackBase<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*)>::IsSet((a1 + 1504));
  if (result)
  {
    for (i = 0; i < *(a1 + 1500); ++i)
    {
      v7 = ot::MapEnum<ot::BackboneRouter::MulticastListenersTable::Listener::Event>(0);
      ot::BackboneRouter::MulticastListenersTable::Listener::GetAddress((a1 + 20 * i));
      v6 = v4;
      result = ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address const*>(a1 + 1504, &v7, &v6);
    }
  }

  return result;
}

void *ot::CallbackBase<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*)>::Set(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  return ot::CallbackBase<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*)>::Set(result, a2, a3);
}

uint64_t ot::BackboneRouter::MulticastListenersTable::GetNext(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  if (*a2 < a1[750])
  {
    Now = ot::TimerMilli::GetNow(a1);
    *v8 = *&a1[10 * *v9];
    if (ot::Time::operator>(&a1[10 * *v9 + 8], &Now))
    {
      v4 = ot::Time::operator-(&a1[10 * *v9 + 8], &Now);
    }

    else
    {
      v4 = 0;
    }

    *(v8 + 16) = ot::Time::MsecToSec(v4);
    ++*v9;
  }

  else
  {
    return 23;
  }

  return v7;
}

BOOL ot::Time::operator>(int *a1, int *a2)
{
  return ot::Time::operator<(a2, a1);
}

{
  return ot::Time::operator>(a1, a2);
}

BOOL ot::Time::operator<(int *a1, int *a2)
{
  return ot::SerialNumber::IsLess<unsigned int>(*a1, *a2);
}

{
  return ot::Time::operator<(a1, a2);
}

BOOL ot::SerialNumber::IsLess<unsigned int>(int a1, int a2)
{
  return a1 - a2 < 0;
}

{
  return ot::SerialNumber::IsLess<unsigned int>(a1, a2);
}

uint64_t ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address *>(uint64_t a1, unsigned int *a2, void *a3)
{
  return (*a1)(*(a1 + 8), *a2, *a3);
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterMulticastListenerEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterMulticastListenerEvent,ot::Ip6::Address *>(a1, a2, a3);
}

uint64_t ot::BackboneRouter::NdProxyTable::NdProxy::Init(ot::BackboneRouter::NdProxyTable::NdProxy *this, const ot::Ip6::InterfaceIdentifier *a2, const ot::Ip6::InterfaceIdentifier *a3, __int16 a4, unsigned int a5)
{
  if ((*(this + 22) & 8) != 0)
  {
    __assert_rtn("Init", "ndproxy_table.cpp", 54, "!mValid");
  }

  ot::Clearable<ot::BackboneRouter::NdProxyTable::NdProxy>::Clear(this);
  *(this + 22) = *(this + 22) & 0xF7 | 8;
  *this = *a2;
  *(this + 1) = *a3;
  *(this + 22) = *(this + 22) & 0xFB | 4;
  return ot::BackboneRouter::NdProxyTable::NdProxy::Update(this, a4, a5);
}

uint64_t ot::BackboneRouter::NdProxyTable::NdProxy::Update(ot::BackboneRouter::NdProxyTable::NdProxy *this, __int16 a2, unsigned int a3)
{
  v10 = this;
  v9 = a2;
  v8 = a3;
  if ((*(this + 22) & 8) == 0)
  {
    __assert_rtn("Update", "ndproxy_table.cpp", 68, "mValid");
  }

  *(this + 10) = v9;
  v3 = ot::Min<unsigned int>(v8, 0xD2F00u);
  v8 = v3;
  Now = ot::TimerMilli::GetNow(v3);
  v4 = ot::Time::SecToMsec(v8);
  result = ot::Time::operator-(&Now, v4);
  *(this + 4) = result;
  return result;
}

BOOL ot::BackboneRouter::NdProxyTable::MatchesFilter(uint64_t a1, char a2)
{
  v4 = 0;
  if (a2)
  {
    if (a2 == 1)
    {
      return (*(a1 + 22) & 8) != 0;
    }

    else if (a2 == 2)
    {
      LOBYTE(v3) = 0;
      if ((*(a1 + 22) & 8) != 0)
      {
        return (*(a1 + 22) >> 2) & 1;
      }

      return v3;
    }
  }

  else
  {
    return (*(a1 + 22) & 8) == 0;
  }

  return v4;
}

char *ot::BackboneRouter::NdProxyTable::Iterator::Iterator(char *a1, ot::Instance *a2, char a3)
{
  ot::InstanceLocator::InstanceLocator(a1, a2);
  ot::Ptr<ot::Message>::Ptr(a1);
  a1[8] = a3;
  Instance = ot::InstanceLocator::GetInstance(a1);
  *a1 = ot::Instance::Get<ot::BackboneRouter::NdProxyTable>(Instance);
  if (!ot::BackboneRouter::NdProxyTable::MatchesFilter(*a1, a1[8]))
  {
    ot::BackboneRouter::NdProxyTable::Iterator::Advance(a1);
  }

  return a1;
}

{
  ot::BackboneRouter::NdProxyTable::Iterator::Iterator(a1, a2, a3);
  return a1;
}

unint64_t ot::BackboneRouter::NdProxyTable::Iterator::Advance(ot::BackboneRouter::NdProxyTable::Iterator *this)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  v6 = ot::Instance::Get<ot::BackboneRouter::NdProxyTable>(Instance);
  do
  {
    *this += 24;
    v3 = *this;
    result = ot::GetArrayEnd<ot::BackboneRouter::NdProxyTable::NdProxy,(unsigned short)250>(v6);
    v4 = 0;
    if (v3 < result)
    {
      result = ot::BackboneRouter::NdProxyTable::MatchesFilter(*this, *(this + 8));
      v4 = result ^ 1;
    }
  }

  while ((v4 & 1) != 0);
  return result;
}

ot::InstanceLocator *ot::BackboneRouter::NdProxyTable::Iterator::Iterator(ot::InstanceLocator *a1, ot::Instance *a2)
{
  ot::InstanceLocator::InstanceLocator(a1, a2);
  ot::Ptr<ot::Message>::Ptr(a1);
  Instance = ot::InstanceLocator::GetInstance(a1);
  v6 = ot::Instance::Get<ot::BackboneRouter::NdProxyTable>(Instance);
  v3 = ot::GetArrayEnd<ot::BackboneRouter::NdProxyTable::NdProxy,(unsigned short)250>(v6);
  result = a1;
  *a1 = v3;
  return result;
}

{
  ot::BackboneRouter::NdProxyTable::Iterator::Iterator(a1, a2);
  return a1;
}

uint64_t ot::GetArrayEnd<ot::BackboneRouter::NdProxyTable::NdProxy,(unsigned short)250>(uint64_t a1)
{
  return a1 + 6000;
}

{
  return ot::GetArrayEnd<ot::BackboneRouter::NdProxyTable::NdProxy,(unsigned short)250>(a1);
}

void ot::BackboneRouter::NdProxyTable::HandleDomainPrefixUpdate(ot::BackboneRouter::NdProxyTable *a1, char a2)
{
  if (!a2 || a2 == 1 || a2 == 2)
  {
    ot::BackboneRouter::NdProxyTable::Clear(a1);
  }
}

void ot::BackboneRouter::NdProxyTable::Clear(ot::BackboneRouter::NdProxyTable *this)
{
  v14 = this;
  v13 = this;
  v12 = this;
  v11 = (this + 6000);
  while (v12 != v11)
  {
    v10 = v12;
    ot::Clearable<ot::BackboneRouter::NdProxyTable::NdProxy>::Clear(v12);
    v12 += 3;
  }

  v9 = ot::MapEnum<ot::BackboneRouter::NdProxyTable::NdProxy::Event>(3);
  ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterNdProxyEvent,decltype(nullptr)>(this + 750, &v9);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrNdProxy", "NdProxyTable::Clear!", v1, v2, v3, v4, v5, v6, v7);
}

void *ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterNdProxyEvent,decltype(nullptr)>(void *result, unsigned int *a2)
{
  if (*result)
  {
    return ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterNdProxyEvent,decltype(nullptr)>(result, a2);
  }

  return result;
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::InvokeIfSet<otBackboneRouterNdProxyEvent,decltype(nullptr)>(result, a2);
}

uint64_t ot::MapEnum<ot::BackboneRouter::NdProxyTable::NdProxy::Event>(uint64_t result)
{
  return result;
}

{
  return ot::MapEnum<ot::BackboneRouter::NdProxyTable::NdProxy::Event>(result);
}

uint64_t ot::BackboneRouter::NdProxyTable::Register(ot::BackboneRouter::NdProxyTable *this, const ot::Ip6::InterfaceIdentifier *a2, const ot::Ip6::InterfaceIdentifier *a3, __int16 a4, unsigned int *a5)
{
  v18 = 0;
  v16 = ot::BackboneRouter::NdProxyTable::FindByAddressIid(this, a2);
  if (a5)
  {
    v14 = *a5;
  }

  else
  {
    v14 = 0;
  }

  if (!v16)
  {
    Invalid = ot::BackboneRouter::NdProxyTable::FindByMeshLocalIid(this, a3);
    if (Invalid)
    {
      ot::BackboneRouter::NdProxyTable::TriggerCallback(this, 1u, Invalid);
      ot::BackboneRouter::NdProxyTable::Erase(Invalid, v5);
    }

    else
    {
      Invalid = ot::BackboneRouter::NdProxyTable::FindInvalid(this);
      if (!Invalid)
      {
        v18 = 3;
        goto LABEL_13;
      }
    }

    ot::BackboneRouter::NdProxyTable::NdProxy::Init(Invalid, a2, a3, a4, v14);
    *(this + 6016) = *(this + 6016) & 0xFE | 1;
    goto LABEL_13;
  }

  if (ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(v16 + 8, a3))
  {
    ot::BackboneRouter::NdProxyTable::NdProxy::Update(v16, a4, v14);
    ot::BackboneRouter::NdProxyTable::NotifyDuaRegistrationOnBackboneLink(this, v16, 1);
  }

  else
  {
    v18 = 29;
  }

LABEL_13:
  ot::Ip6::InterfaceIdentifier::ToString(a2, v24);
  v13 = ot::String<(unsigned short)17>::AsCString(v24);
  ot::Ip6::InterfaceIdentifier::ToString(a3, v23);
  ot::String<(unsigned short)17>::AsCString(v23);
  ot::ToUlong(v14);
  ot::ErrorToString(v18);
  ot::Logger::LogAtLevel<(ot::LogLevel)4>("BbrNdProxy", "NdProxyTable::Register %s MLIID %s RLOC16 %04x LTT %lu => %s", v6, v7, v8, v9, v10, v11, v13);
  return v18;
}

char *ot::BackboneRouter::NdProxyTable::FindByAddressIid(ot::BackboneRouter::NdProxyTable *this, const ot::Ip6::InterfaceIdentifier *a2)
{
  v21 = this;
  v20 = a2;
  v19 = 0;
  v17 = ot::BackboneRouter::NdProxyTable::Iterate(this, 1);
  v18 = &v17;
  v26 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::begin(&v17);
  v27 = v2;
  v15 = v26;
  v16 = v2;
  v24 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::end(v18);
  v25 = v3;
  v13 = v24;
  v14 = v3;
  while (ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator!=(&v15, &v13))
  {
    v12 = ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator*(&v15);
    if (ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(v12, v20))
    {
      v19 = v12;
      break;
    }

    ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator++(&v15);
  }

  ot::Ip6::InterfaceIdentifier::ToString(v20, v23);
  v11 = ot::String<(unsigned short)17>::AsCString(v23);
  if (v19)
  {
    ot::Ip6::InterfaceIdentifier::ToString((v19 + 8), v22);
    ot::String<(unsigned short)17>::AsCString(v22);
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)5>("BbrNdProxy", "NdProxyTable::FindByAddressIid(%s) => %s", v4, v5, v6, v7, v8, v9, v11);
  return v19;
}

void ot::BackboneRouter::NdProxyTable::NotifyDuaRegistrationOnBackboneLink(ot::BackboneRouter::NdProxyTable *this, ot::BackboneRouter::NdProxyTable::NdProxy *a2, char a3)
{
  v12 = this;
  v11 = a2;
  v10 = a3;
  if ((*(a2 + 22) & 4) == 0)
  {
    if (v10)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    ot::BackboneRouter::NdProxyTable::TriggerCallback(this, v3, v11);
    v7 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(this);
    v9[0] = ot::BackboneRouter::NdProxyTable::GetDua(this, v11);
    v9[1] = v4;
    MeshLocalIid = ot::BackboneRouter::NdProxyTable::NdProxy::GetMeshLocalIid(v11);
    TimeSinceLastTransaction = ot::BackboneRouter::NdProxyTable::NdProxy::GetTimeSinceLastTransaction(v11);
    ot::BackboneRouter::Manager::SendProactiveBackboneNotification(v7, v9, MeshLocalIid, TimeSinceLastTransaction);
    IgnoreError();
  }
}

ot::Ip6::InterfaceIdentifier *ot::BackboneRouter::NdProxyTable::FindByMeshLocalIid(ot::BackboneRouter::NdProxyTable *this, const ot::Ip6::InterfaceIdentifier *a2)
{
  v21 = this;
  v20 = a2;
  v19 = 0;
  v17 = ot::BackboneRouter::NdProxyTable::Iterate(this, 1);
  v18 = &v17;
  v26 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::begin(&v17);
  v27 = v2;
  v15 = v26;
  v16 = v2;
  v24 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::end(v18);
  v25 = v3;
  v13 = v24;
  v14 = v3;
  while (ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator!=(&v15, &v13))
  {
    v12 = ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator*(&v15);
    if (ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==((v12 + 8), v20))
    {
      v19 = v12;
      break;
    }

    ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator++(&v15);
  }

  ot::Ip6::InterfaceIdentifier::ToString(v20, v23);
  v11 = ot::String<(unsigned short)17>::AsCString(v23);
  if (v19)
  {
    ot::Ip6::InterfaceIdentifier::ToString(v19, v22);
    ot::String<(unsigned short)17>::AsCString(v22);
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)5>("BbrNdProxy", "NdProxyTable::FindByMeshLocalIid(%s) => %s", v4, v5, v6, v7, v8, v9, v11);
  return v19;
}

uint64_t ot::BackboneRouter::NdProxyTable::TriggerCallback(ot::InstanceLocator *a1, unsigned int a2, const ot::Ip6::InterfaceIdentifier *a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
  DomainPrefix = ot::BackboneRouter::Leader::GetDomainPrefix(v3);
  result = ot::CallbackBase<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*)>::IsSet(a1 + 750);
  if (result)
  {
    if (!DomainPrefix)
    {
      __assert_rtn("TriggerCallback", "ndproxy_table.cpp", 274, "prefix != nullptr");
    }

    ot::Ip6::Address::SetPrefix(v9, DomainPrefix);
    ot::Ip6::Address::SetIid(v9, v10);
    v7 = ot::MapEnum<ot::BackboneRouter::NdProxyTable::NdProxy::Event>(v11);
    v6 = v9;
    return ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterNdProxyEvent,ot::Ip6::Address *>(a1 + 6000, &v7, &v6);
  }

  return result;
}

uint64_t ot::BackboneRouter::NdProxyTable::FindInvalid(ot::BackboneRouter::NdProxyTable *this)
{
  v18 = this;
  v17 = 0;
  v15 = ot::BackboneRouter::NdProxyTable::Iterate(this, 0);
  v16 = &v15;
  v21 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::begin(&v15);
  v22 = v1;
  v13 = v21;
  v14 = v1;
  v19 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::end(v16);
  v20 = v2;
  v11 = v19;
  v12 = v2;
  if (ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator!=(&v13, &v11))
  {
    v17 = ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator*(&v13);
  }

  v9 = "OK";
  if (!v17)
  {
    v9 = "NOT_FOUND";
  }

  ot::Logger::LogAtLevel<(ot::LogLevel)5>("BbrNdProxy", "NdProxyTable::FindInvalid() => %s", v3, v4, v5, v6, v7, v8, v9);
  return v17;
}

uint64_t ot::BackboneRouter::NdProxyTable::Iterate(ot::InstanceLocator *a1, char a2)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  ot::ChildTable::IteratorBuilder::IteratorBuilder(&v5, Instance, a2);
  return v5;
}

{
  return ot::BackboneRouter::NdProxyTable::Iterate(a1, a2);
}

uint64_t ot::BackboneRouter::NdProxyTable::IteratorBuilder::begin(ot::BackboneRouter::NdProxyTable::IteratorBuilder *this)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::BackboneRouter::NdProxyTable::Iterator::Iterator(&v4, Instance, *this);
  return v4;
}

{
  return ot::BackboneRouter::NdProxyTable::IteratorBuilder::begin(this);
}

uint64_t ot::BackboneRouter::NdProxyTable::IteratorBuilder::end(ot::BackboneRouter::NdProxyTable::IteratorBuilder *this)
{
  Instance = ot::InstanceLocator::GetInstance(this);
  ot::BackboneRouter::NdProxyTable::Iterator::Iterator(&v3, Instance);
  return v3;
}

{
  return ot::BackboneRouter::NdProxyTable::IteratorBuilder::end(this);
}

BOOL ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator!=(a1, a2);
}

uint64_t ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator*(uint64_t a1)
{
  return *a1;
}

{
  return ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator*(a1);
}

unint64_t ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator++(ot::BackboneRouter::NdProxyTable::Iterator *a1)
{
  return ot::BackboneRouter::NdProxyTable::Iterator::Advance(a1);
}

{
  return ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator++(a1);
}

uint64_t ot::BackboneRouter::NdProxyTable::HandleTimer(uint64_t this)
{
  v14 = this;
  v5 = this;
  if (*(this + 6016))
  {
    *(this + 6016) &= ~1u;
    v12 = ot::BackboneRouter::NdProxyTable::Iterate(this, 2);
    v13 = &v12;
    v17 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::begin(&v12);
    v18 = v1;
    v10 = v17;
    v11 = v1;
    v15 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::end(v13);
    v16 = v2;
    v8 = v15;
    v9 = v2;
    while (1)
    {
      this = ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator!=(&v10, &v8);
      if ((this & 1) == 0)
      {
        break;
      }

      v7 = ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator*(&v10);
      if (ot::BackboneRouter::NdProxyTable::NdProxy::IsDadAttemptsComplete(v7))
      {
        *(v7 + 22) &= ~4u;
        ot::BackboneRouter::NdProxyTable::NotifyDuaRegistrationOnBackboneLink(v5, v7, 0);
      }

      else
      {
        *(v5 + 6016) = *(v5 + 6016) & 0xFE | 1;
        v4 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Manager>(v5);
        v6[0] = ot::BackboneRouter::NdProxyTable::GetDua(v5, v7);
        v6[1] = v3;
        if (!ot::BackboneRouter::Manager::SendBackboneQuery(v4, v6, 0xFFFEu))
        {
          ot::BackboneRouter::NdProxyTable::NdProxy::IncreaseDadAttempts(v7);
        }
      }

      ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator++(&v10);
    }
  }

  return this;
}

BOOL ot::BackboneRouter::NdProxyTable::NdProxy::IsDadAttemptsComplete(ot::BackboneRouter::NdProxyTable::NdProxy *this)
{
  return (*(this + 22) & 3) == 3;
}

{
  return ot::BackboneRouter::NdProxyTable::NdProxy::IsDadAttemptsComplete(this);
}

uint64_t ot::BackboneRouter::NdProxyTable::GetDua(ot::BackboneRouter::NdProxyTable *this, ot::BackboneRouter::NdProxyTable::NdProxy *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
  DomainPrefix = ot::BackboneRouter::Leader::GetDomainPrefix(v2);
  if (!DomainPrefix)
  {
    __assert_rtn("GetDua", "ndproxy_table.cpp", 302, "domainPrefix != nullptr");
  }

  ot::Ip6::Address::SetPrefix(&v6, DomainPrefix);
  ot::Ip6::Address::SetIid(&v6, a2);
  return v6;
}

uint64_t ot::BackboneRouter::NdProxyTable::NdProxy::IncreaseDadAttempts(uint64_t this)
{
  *(this + 22) = *(this + 22) & 0xFC | ((*(this + 22) & 3) + 1) & 3;
  return this;
}

{
  return ot::BackboneRouter::NdProxyTable::NdProxy::IncreaseDadAttempts(this);
}

BOOL ot::CallbackBase<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*)>::IsSet(void *a1)
{
  return *a1 != 0;
}

{
  return ot::CallbackBase<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*)>::IsSet(a1);
}

void *ot::Ip6::Address::SetIid(ot::Ip6::Address *this, const ot::Ip6::InterfaceIdentifier *a2)
{
  result = ot::Ip6::Address::GetIid(this);
  *result = *a2;
  return result;
}

{
  return ot::Ip6::Address::SetIid(this, a2);
}

uint64_t ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterNdProxyEvent,ot::Ip6::Address *>(uint64_t a1, unsigned int *a2, void *a3)
{
  return (*a1)(*(a1 + 8), *a2, *a3);
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterNdProxyEvent,ot::Ip6::Address *>(a1, a2, a3);
}

uint64_t ot::BackboneRouter::NdProxyTable::NotifyDadComplete(uint64_t this, ot::BackboneRouter::NdProxyTable::NdProxy *a2)
{
  if (a2)
  {
    return ot::BackboneRouter::NdProxyTable::Erase(this, a2);
  }

  *(this + 22) = *(this + 22) & 0xFC | 3;
  return this;
}

char *ot::BackboneRouter::NdProxyTable::ResolveDua(ot::BackboneRouter::NdProxyTable *this, const ot::Ip6::Address *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(this);
  if (!ot::BackboneRouter::Leader::IsDomainUnicast(v2, a2))
  {
    return 0;
  }

  Iid = ot::Ip6::Address::GetIid(a2);
  return ot::BackboneRouter::NdProxyTable::FindByAddressIid(this, Iid);
}

uint64_t ot::BackboneRouter::NdProxyTable::GetInfo(ot::InstanceLocator *a1, ot::Ip6::Address *a2, uint64_t a3)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = 23;
  v3 = ot::GetProvider<ot::InstanceLocator>::Get<ot::BackboneRouter::Leader>(a1);
  if (ot::BackboneRouter::Leader::IsDomainUnicast(v3, v19))
  {
    v15 = ot::BackboneRouter::NdProxyTable::Iterate(a1, 1);
    v16 = &v15;
    v23 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::begin(&v15);
    v24 = v4;
    v13 = v23;
    v14 = v4;
    v21 = ot::BackboneRouter::NdProxyTable::IteratorBuilder::end(v16);
    v22 = v5;
    v11 = v21;
    v12 = v5;
    while (ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator!=(&v13, &v11))
    {
      v10 = ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator*(&v13);
      Iid = ot::Ip6::Address::GetIid(v19);
      if (ot::Equatable<ot::Ip6::InterfaceIdentifier>::operator==(v10, Iid))
      {
        *v18 = v10 + 8;
        TimeSinceLastTransaction = ot::BackboneRouter::NdProxyTable::NdProxy::GetTimeSinceLastTransaction(v10);
        *(v18 + 8) = TimeSinceLastTransaction;
        *(v18 + 12) = *(v10 + 10);
        return 0;
      }

      ot::ItemPtrIterator<ot::BackboneRouter::NdProxyTable::NdProxy,ot::BackboneRouter::NdProxyTable::Iterator>::operator++(&v13);
    }
  }

  else
  {
    return 7;
  }

  return v17;
}

uint64_t ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterNdProxyEvent,decltype(nullptr)>(uint64_t a1, unsigned int *a2)
{
  return (*a1)(*(a1 + 8), *a2, 0);
}

{
  return ot::Callback<void (*)(void *,otBackboneRouterNdProxyEvent,otIp6Address const*),(ot::CallbackContextPosition)0>::Invoke<otBackboneRouterNdProxyEvent,decltype(nullptr)>(a1, a2);
}

uint64_t ot::Coap::CoapBase::CoapBase(uint64_t a1, ot::Instance *a2, uint64_t a3)
{
  ot::InstanceLocator::InstanceLocator(a1, a2);
  v3 = ot::Coap::MessageQueue::MessageQueue(a1);
  *(a1 + 8) = ot::Random::NonCrypto::GetUint16(v3);
  ot::TimerMilliContext::TimerMilliContext((a1 + 16), a2, ot::Coap::CoapBase::HandleRetransmissionTimer, a1);
  ot::OwnedPtr<ot::Message>::OwnedPtr((a1 + 48));
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback((a1 + 56));
  ot::Coap::ResponsesQueue::ResponsesQueue((a1 + 72), a2);
  ot::Callback<void (*)(void *,otBackboneRouterDomainPrefixEvent,otIp6Prefix const*),(ot::CallbackContextPosition)0>::Callback((a1 + 112));
  result = a1;
  *(a1 + 128) = 0;
  *(a1 + 136) = a3;
  return result;
}

{
  ot::Coap::CoapBase::CoapBase(a1, a2, a3);
  return a1;
}

ot::Coap::MessageQueue *ot::Coap::MessageQueue::MessageQueue(ot::Coap::MessageQueue *this)
{
  ot::Coap::MessageQueue::MessageQueue(this);
  return this;
}

{
  ot::MessageQueue::MessageQueue(this);
  return this;
}

uint64_t ot::Random::NonCrypto::GetUint16(ot::Random::NonCrypto *this)
{
  return ot::Random::NonCrypto::GetUint32(this);
}

{
  return ot::Random::NonCrypto::GetUint16(this);
}

ot::Coap::ResponsesQueue *ot::Coap::ResponsesQueue::ResponsesQueue(ot::Coap::ResponsesQueue *this, ot::Instance *a2)
{
  ot::Coap::ResponsesQueue::ResponsesQueue(this, a2);
  return this;
}

{
  ot::Coap::MessageQueue::MessageQueue(this);
  ot::TimerMilliContext::TimerMilliContext((this + 8), a2, ot::Coap::ResponsesQueue::HandleTimer, this);
  return this;
}

BOOL ot::Coap::CoapBase::ClearRequests(ot::Coap::CoapBase *this, const ot::Ip6::Address *a2)
{
  v13 = this;
  v12 = a2;
  v11 = this;
  v10[0] = ot::Coap::MessageQueue::begin(this);
  v10[1] = v2;
  v9[0] = ot::Coap::MessageQueue::end(v11);
  v9[1] = v3;
  while (1)
  {
    result = ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v10, v9);
    if (!result)
    {
      break;
    }

    v8 = ot::Coap::Message::Iterator::operator*(v10);
    ot::Coap::CoapBase::Metadata::ReadFrom(v7, v8);
    if (!v12 || ot::Equatable<ot::Ip6::Address>::operator==(v7, v12))
    {
      ot::Coap::CoapBase::FinalizeCoapTransaction(this, v8, v7, 0, 0, 0xBu);
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v10, v5);
  }

  return result;
}

{
  return ot::Coap::CoapBase::ClearRequests(this, a2);
}

uint64_t ot::Coap::MessageQueue::end(ot::Coap::MessageQueue *this)
{
  v2[0] = 0;
  v2[1] = 0;
  ot::Coap::Message::Iterator::Iterator(v2);
  return v2[0];
}

{
  v2 = 0;
  ot::Coap::Message::ConstIterator::ConstIterator(&v2);
  return v2;
}

{
  return ot::Coap::MessageQueue::end(this);
}

{
  return ot::Coap::MessageQueue::end(this);
}

BOOL ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(void *a1, void *a2)
{
  return *a1 != *a2;
}

{
  return ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(a1, a2);
}

uint64_t ot::Coap::Message::Iterator::operator*(uint64_t a1)
{
  return ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator*(a1);
}

{
  return ot::Coap::Message::Iterator::operator*(a1);
}

void ot::Coap::CoapBase::Metadata::ReadFrom(ot::Coap::CoapBase::Metadata *this, const ot::Coap::Message *a2)
{
  Length = ot::Message::GetLength(a2);
  if (Length < 0x48uLL)
  {
    __assert_rtn("ReadFrom", "coap.cpp", 1514, "length >= sizeof(*this)");
  }

  ot::Message::Read<ot::Coap::CoapBase::Metadata>(a2, Length - 72, this);
  IgnoreError();
}

void ot::Coap::CoapBase::FinalizeCoapTransaction(ot::Coap::CoapBase *a1, ot::Coap::Message *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  ot::Coap::CoapBase::DequeueMessage(a1, a2);
  if (*(a3 + 40))
  {
    (*(a3 + 40))(*(a3 + 48), a4, a5, a6);
  }
}

uint64_t ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(ot::Message::Iterator *a1, ot::Message *a2)
{
  return ot::Message::Iterator::Advance(a1, a2);
}

{
  return ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(a1, a2);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::Add(uint64_t *a1, uint64_t a2)
{
  v4 = 0;
  if (ot::LinkedList<ot::Coap::Resource>::Contains(a1, a2))
  {
    return 24;
  }

  else
  {
    ot::LinkedList<ot::Coap::Resource>::Push(a1, a2);
  }

  return v4;
}

{
  return ot::LinkedList<ot::Coap::Resource>::Add(a1, a2);
}

uint64_t ot::Coap::CoapBase::RemoveResource(ot::Coap::CoapBase *this, ot::Coap::Resource *a2)
{
  ot::LinkedList<ot::Coap::Resource>::Remove(this + 6, a2);
  IgnoreError();
  return ot::LinkedListEntry<ot::Coap::Resource>::SetNext(a2, 0);
}

uint64_t ot::LinkedList<ot::Coap::Resource>::Remove(uint64_t *a1, uint64_t a2)
{
  v5[2] = a1;
  v5[1] = a2;
  v5[0] = 0;
  v4 = ot::LinkedList<ot::Coap::Resource>::Find(a1, a2, v5);
  if (!v4)
  {
    ot::LinkedList<ot::Coap::Resource>::PopAfter(a1, v5[0]);
  }

  return v4;
}

{
  return ot::LinkedList<ot::Coap::Resource>::Remove(a1, a2);
}

uint64_t ot::LinkedListEntry<ot::Coap::Resource>::SetNext(uint64_t result, uint64_t a2)
{
  *(result + 24) = a2;
  return result;
}

{
  return ot::LinkedListEntry<ot::Coap::Resource>::SetNext(result, a2);
}

ot::Message *ot::Coap::CoapBase::NewMessage(ot::Coap::CoapBase *this, const ot::Message::Settings *a2)
{
  v2 = ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(this);
  ot::Ip6::Udp::NewMessage(v2, 0, a2);
  ot::AsCoapMessagePtr();
  v5 = v3;
  if (v3)
  {
    ot::Message::SetOffset(v3, 0);
  }

  return v5;
}

uint64_t ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(ot::InstanceLocator *a1)
{
  Instance = ot::InstanceLocator::GetInstance(a1);
  return ot::Instance::Get<ot::Ip6::Udp>(Instance);
}

{
  return ot::GetProvider<ot::InstanceLocator>::Get<ot::Ip6::Udp>(a1);
}

void *ot::Message::Settings::GetDefault(ot::Message::Settings *this)
{
  return &ot::Message::Settings::kDefault;
}

{
  return ot::Message::Settings::GetDefault(this);
}

ot::Message *ot::Coap::CoapBase::NewPriorityMessage(ot::Coap::CoapBase *this)
{
  v4 = this;
  ot::Message::Settings::Settings(v3, 1, 3);
  return ot::Coap::CoapBase::NewMessage(this, v3);
}

ot::Coap::Message *ot::Coap::CoapBase::InitMessage(uint64_t a1, ot::Coap::Message *a2, char a3, unsigned __int8 a4)
{
  v6 = a2;
  v5 = 0;
  if (a2)
  {
    v5 = ot::Coap::Message::Init(a2, a3, 2, a4);
    if (!v5)
    {
      v5 = ot::Coap::Message::SetPayloadMarker(v6);
    }
  }

  if (v5 && v6)
  {
    ot::Message::Free(v6);
    return 0;
  }

  return v6;
}

ot::Coap::Message *ot::Coap::CoapBase::InitResponse(ot::Coap::CoapBase *this, ot::Coap::Message *a2, const ot::Coap::Message *a3)
{
  v5 = a2;
  v4 = 0;
  if (a2)
  {
    v4 = ot::Coap::Message::SetDefaultResponseHeader(a2, a3);
    if (!v4)
    {
      v4 = ot::Coap::Message::SetPayloadMarker(v5);
    }
  }

  if (v4 && v5)
  {
    ot::Message::Free(v5);
    return 0;
  }

  return v5;
}

uint64_t ot::Coap::CoapBase::SendMessage(_WORD *a1, ot::Coap::Message *a2, ot::Ip6::MessageInfo *a3, ot::Coap::TxParameters *a4, uint64_t a5, uint64_t a6)
{
  v32 = a1;
  v31 = a2;
  v30 = a3;
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v26 = 0;
  v25 = 0;
  Length = 0;
  Type = ot::Coap::Message::GetType(a2);
  if (Type == 2)
  {
    ot::Coap::ResponsesQueue::EnqueueResponse((a1 + 36), v31, v30, v29);
  }

  else if (Type == 3)
  {
    if (ot::Coap::Message::GetCode(v31))
    {
      __assert_rtn("SendMessage", "coap.cpp", 243, "aMessage.GetCode() == kCodeEmpty");
    }
  }

  else
  {
    v6 = v31;
    v7 = a1[4];
    a1[4] = v7 + 1;
    ot::Coap::Message::SetMessageId(v6, v7);
  }

  ot::Coap::Message::Finish(v31);
  if (ot::Coap::Message::IsConfirmable(v31))
  {
    Length = ot::Message::GetLength(v31);
  }

  else if (ot::Coap::Message::IsNonConfirmable(v31) && v28)
  {
    Length = ot::Coap::Message::GetOptionStart(v31);
  }

  if (!Length)
  {
    goto LABEL_18;
  }

  v15[0] = *ot::Ip6::MessageInfo::GetSockAddr(v30);
  PeerPort = ot::Ip6::MessageInfo::GetPeerPort(v30);
  v15[1] = *ot::Ip6::MessageInfo::GetPeerAddr(v30);
  v23 = v23 & 0xFB | (4 * ot::Ip6::MessageInfo::GetMulticastLoop(v30));
  v17 = v28;
  v18 = v27;
  v21 = *(v29 + 6);
  v20 = ot::Coap::TxParameters::CalculateInitialRetransmissionTimeout(v29);
  v23 = v23 & 0xFC | (2 * ot::Coap::Message::IsConfirmable(v31));
  HopLimit = ot::Ip6::MessageInfo::GetHopLimit(v30);
  IsHostInterface = ot::Ip6::MessageInfo::IsHostInterface(v30);
  v23 = v23 & 0xF7 | (8 * IsHostInterface);
  v14[0] = ot::TimerMilli::GetNow(IsHostInterface);
  if ((v23 & 2) != 0)
  {
    v9 = ot::Time::operator+(v14, v20);
  }

  else
  {
    v11 = ot::Coap::TxParameters::CalculateMaxTransmitWait(v29);
    v9 = ot::Time::operator+(v14, v11);
  }

  v14[1] = v9;
  v19 = v9;
  v25 = ot::Coap::CoapBase::CopyAndEnqueueMessage(a1, v31, Length, v15);
  if (v25)
  {
LABEL_18:
    v26 = ot::Coap::CoapBase::Send(a1, v31, v30);
  }

  else
  {
    v26 = 3;
  }

  if (v26 && v25)
  {
    ot::Coap::CoapBase::DequeueMessage(a1, v25);
  }

  return v26;
}

void ot::Coap::ResponsesQueue::EnqueueResponse(ot::Coap::ResponsesQueue *this, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, const ot::Coap::TxParameters *a4)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = 0;
  v4 = ot::Coap::ResponsesQueue::ResponseMetadata::ResponseMetadata(&v9);
  Now = ot::TimerMilli::GetNow(v4);
  v5 = ot::Coap::TxParameters::CalculateExchangeLifetime(v12);
  v8 = ot::Time::operator+(&Now, v5);
  v9 = v8;
  memcpy(v10, v13, sizeof(v10));
  if (!ot::Coap::ResponsesQueue::FindMatchedResponse(this, v14, v13))
  {
    ot::Coap::ResponsesQueue::UpdateQueue(this);
    v11 = ot::Coap::Message::Clone(v14);
    if (v11)
    {
      if (ot::Coap::ResponsesQueue::ResponseMetadata::AppendTo(&v9, v11))
      {
        ot::Message::Free(v11);
      }

      else
      {
        ot::Coap::MessageQueue::Enqueue(this, v11);
        ot::TimerMilli::FireAtIfEarlier(this + 2, v9);
      }
    }
  }
}

BOOL ot::Coap::Message::IsNonConfirmable(ot::Coap::Message *this)
{
  return ot::Coap::Message::GetType(this) == 1;
}

{
  return ot::Coap::Message::IsNonConfirmable(this);
}

uint64_t ot::Coap::Message::GetOptionStart(ot::Coap::Message *this)
{
  return ot::Coap::Message::GetTokenLength(this) + 4;
}

{
  return ot::Coap::Message::GetOptionStart(this);
}

uint64_t ot::Ip6::MessageInfo::GetPeerPort(ot::Ip6::MessageInfo *this)
{
  return *(this + 17);
}

{
  return ot::Ip6::MessageInfo::GetPeerPort(this);
}

uint64_t ot::Ip6::MessageInfo::GetMulticastLoop(ot::Ip6::MessageInfo *this)
{
  return (*(this + 37) >> 4) & 1;
}

{
  return ot::Ip6::MessageInfo::GetMulticastLoop(this);
}

uint64_t ot::Ip6::MessageInfo::GetHopLimit(ot::Ip6::MessageInfo *this)
{
  return *(this + 36);
}

{
  return ot::Ip6::MessageInfo::GetHopLimit(this);
}

ot::Message *ot::Coap::CoapBase::CopyAndEnqueueMessage(ot::Coap::CoapBase *this, const ot::Coap::Message *a2, unsigned __int16 a3, const ot::Coap::CoapBase::Metadata *a4)
{
  v6 = ot::Coap::Message::Clone(a2, a3);
  if (v6)
  {
    v7 = ot::Coap::CoapBase::Metadata::AppendTo(a4, v6);
    if (!v7)
    {
      ot::TimerMilli::FireAtIfEarlier(this + 4, *(a4 + 14));
      ot::Coap::MessageQueue::Enqueue(this, v6);
    }
  }

  else
  {
    v7 = 3;
  }

  if (v7 && v6)
  {
    ot::Message::Free(v6);
    return 0;
  }

  return v6;
}

void ot::Coap::CoapBase::DequeueMessage(ot::Coap::CoapBase *this, ot::Coap::Message *a2)
{
  ot::Coap::MessageQueue::Dequeue(this, a2);
  if (ot::Timer::IsRunning((this + 16)) && !ot::Coap::MessageQueue::GetHead(this))
  {
    ot::TimerMilli::Stop((this + 16));
  }

  ot::Message::Free(a2);
}

uint64_t ot::Coap::CoapBase::SendEmptyMessage(ot::Coap::CoapBase *a1, char a2, ot::Coap::Message *a3, uint64_t a4)
{
  v7 = 0;
  if (ot::Coap::Message::IsConfirmable(a3))
  {
    v7 = ot::Coap::CoapBase::NewMessage(a1);
    if (v7)
    {
      ot::Coap::Message::Init(v7, a2, 0);
      MessageId = ot::Coap::Message::GetMessageId(a3);
      ot::Coap::Message::SetMessageId(v7, MessageId);
      ot::Coap::Message::Finish(v7);
      v8 = ot::Coap::CoapBase::Send(a1, v7, a4);
    }

    else
    {
      v8 = 3;
    }
  }

  else
  {
    v8 = 7;
  }

  if (v8 && v7)
  {
    ot::Message::Free(v7);
  }

  return v8;
}

uint64_t ot::Coap::CoapBase::SendEmptyAck(ot::Coap::CoapBase *a1, ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3, char a4)
{
  if (ot::Coap::Message::IsConfirmable(a2))
  {
    return ot::Coap::CoapBase::SendHeaderResponse(a1, a4, a2, a3);
  }

  else
  {
    return 7;
  }
}

uint64_t ot::Coap::CoapBase::SendHeaderResponse(ot::Coap::CoapBase *a1, char a2, ot::Coap::Message *a3, const ot::Ip6::MessageInfo *a4)
{
  v8 = 0;
  if (ot::Coap::Message::IsRequest(a3))
  {
    v8 = ot::Coap::CoapBase::NewMessage(a1);
    if (v8)
    {
      Type = ot::Coap::Message::GetType(a3);
      if (Type)
      {
        if (Type != 1)
        {
          v9 = 7;
          goto LABEL_12;
        }

        ot::Coap::Message::Init(v8, 1, a2);
      }

      else
      {
        ot::Coap::Message::Init(v8, 2, a2);
        MessageId = ot::Coap::Message::GetMessageId(a3);
        ot::Coap::Message::SetMessageId(v8, MessageId);
      }

      v9 = ot::Coap::Message::SetTokenFromMessage(v8, a3);
      if (!v9)
      {
        v9 = ot::Coap::CoapBase::SendMessage(a1, v8, a4);
      }
    }

    else
    {
      v9 = 3;
    }
  }

  else
  {
    v9 = 7;
  }

LABEL_12:
  if (v9 && v8)
  {
    ot::Message::Free(v8);
  }

  return v9;
}

BOOL ot::Coap::Message::IsRequest(ot::Coap::Message *this)
{
  v3 = 0;
  if (ot::Coap::Message::GetCode(this) >= 1)
  {
    return ot::Coap::Message::GetCode(this) <= 4;
  }

  return v3;
}

{
  return ot::Coap::Message::IsRequest(this);
}

uint64_t ot::Coap::CoapBase::HandleRetransmissionTimer(ot::Coap::CoapBase *this)
{
  v22 = this;
  ot::NextFireTime::NextFireTime(&v21);
  ot::Ip6::MessageInfo::MessageInfo(v12);
  v11[2] = this;
  v11[0] = ot::Coap::MessageQueue::begin(this);
  v11[1] = v1;
  v10[0] = ot::Coap::MessageQueue::end(this);
  v10[1] = v2;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v11, v10))
  {
    v9 = ot::Coap::Message::Iterator::operator*(v11);
    ot::Coap::CoapBase::Metadata::ReadFrom(&v13, v9);
    Now = ot::NextFireTime::GetNow(&v21);
    if (ot::Time::operator>=(&Now, &v16))
    {
      if ((v20 & 2) == 0 || !v18)
      {
        ot::Coap::CoapBase::FinalizeCoapTransaction(this, v9, &v13, 0, 0, 0x1Cu);
        goto LABEL_10;
      }

      --v18;
      v17 *= 2;
      v6 = ot::NextFireTime::GetNow(&v21);
      v7 = ot::Time::operator+(&v6, v17);
      v16 = v7;
      ot::Coap::CoapBase::Metadata::UpdateIn(&v13, v9);
      if ((v20 & 1) == 0)
      {
        ot::Ip6::MessageInfo::SetPeerAddr(v12, &v14);
        ot::Ip6::MessageInfo::SetPeerPort(v12, v15);
        ot::Ip6::MessageInfo::SetSockAddr(v12, &v13);
        ot::Ip6::MessageInfo::SetHopLimit(v12, v19);
        ot::Ip6::MessageInfo::SetIsHostInterface(v12, (v20 & 8) != 0);
        ot::Ip6::MessageInfo::SetMulticastLoop(v12, (v20 & 4) != 0);
        ot::Coap::CoapBase::SendCopy(this, v9, v12);
      }
    }

    ot::NextFireTime::UpdateIfEarlier(&v21, v16);
LABEL_10:
    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v11, v3);
  }

  return ot::TimerMilli::FireAt((this + 16), &v21);
}

uint64_t ot::NextFireTime::GetNow(ot::NextFireTime *this)
{
  return *this;
}

{
  return ot::NextFireTime::GetNow(this);
}

__n128 ot::Ip6::MessageInfo::SetSockAddr(__n128 *this, __n128 *a2)
{
  result = *a2;
  *this = *a2;
  return result;
}

uint64_t ot::Ip6::MessageInfo::SetMulticastLoop(uint64_t this, char a2)
{
  *(this + 37) = *(this + 37) & 0xEF | (16 * (a2 & 1));
  return this;
}

{
  return ot::Ip6::MessageInfo::SetMulticastLoop(this, a2);
}

void ot::Coap::CoapBase::SendCopy(ot::Coap::CoapBase *this, const ot::Coap::Message *a2, const ot::Ip6::MessageInfo *a3)
{
  Length = ot::Message::GetLength(a2);
  v13 = ot::Coap::Message::Clone(a2, Length - 72);
  if (v13)
  {
    v14 = ot::Coap::CoapBase::Send(this, v13, a3);
  }

  else
  {
    v14 = 3;
  }

  if (v14)
  {
    v4 = ot::ErrorToString(v14);
    ot::Logger::LogAtLevel<(ot::LogLevel)2>("Coap", "Failed to send copy: %s", v5, v6, v7, v8, v9, v10, v4);
    if (v13)
    {
      ot::Message::Free(v13);
    }
  }
}

uint64_t ot::Coap::CoapBase::AbortTransaction(ot::Coap::MessageQueue *a1, uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = 23;
  v11 = a1;
  v10[0] = ot::Coap::MessageQueue::begin(a1);
  v10[1] = v3;
  v9[0] = ot::Coap::MessageQueue::end(v11);
  v9[1] = v4;
  while (ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator!=(v10, v9))
  {
    v8 = ot::Coap::Message::Iterator::operator*(v10);
    ot::Coap::CoapBase::Metadata::ReadFrom(v12, v8);
    if (v13 == v17 && v14 == v16)
    {
      ot::Coap::CoapBase::FinalizeCoapTransaction(a1, v8, v12, 0, 0, 0xBu);
      v15 = 0;
    }

    ot::ItemPtrIterator<ot::Message,ot::Message::Iterator>::operator++(v10, v5);
  }

  return v15;
}

uint64_t ot::Coap::CoapBase::Metadata::AppendTo(ot::Coap::CoapBase::Metadata *this, ot::Coap::Message *a2)
{
  return ot::Message::Append<ot::Coap::CoapBase::Metadata>(a2, this);
}

{
  return ot::Coap::CoapBase::Metadata::AppendTo(this, a2);
}

ot::Message **ot::Coap::MessageQueue::Enqueue(ot::Coap::MessageQueue *this, ot::Coap::Message *a2)
{
  return ot::Coap::MessageQueue::Enqueue(this, a2, 1);
}

{
  return ot::Coap::MessageQueue::Enqueue(this, a2);
}

uint64_t ot::Coap::CoapBase::EvictMessage(ot::Coap::CoapBase *this)
{
  v8 = this;
  v11 = 0;
  Head = ot::Coap::MessageQueue::GetHead(this);
  if (Head)
  {
    ot::Logger::LogAtLevel<(ot::LogLevel)4>("Coap", "Evicting message from head of CoAP pending requests queue", v1, v2, v3, v4, v5, v6, v8);
    ot::Coap::CoapBase::DequeueMessage(v9, Head);
  }

  else
  {
    return 23;
  }

  return v11;
}