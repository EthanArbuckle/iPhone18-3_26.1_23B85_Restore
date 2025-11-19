uint64_t ot::Spinel::RadioSpinel::SpinelHandleNotification(char **this, const unsigned __int8 *a2, unsigned __int16 a3)
{
  v22 = this;
  v21 = a2;
  v20 = a3;
  this[1] += ot::Spinel::Logger::Snprintf(this, this[1], this[2] - this[1], "\n");
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v17 = spinel_datatype_unpack(v21, v20, "CiiD", v3, v4, v5, v6, v7, &v14);
  if (v17 > 0)
  {
    if ((v14 & 0xF) != 0)
    {
      return 6;
    }

    else if (v15 == 6)
    {
      if (ot::Spinel::RadioSpinel::IsSafeToHandleNow(this, v19))
      {
        return ot::Spinel::RadioSpinel::SpinelHandleValueIs(this, v19, v16, v18);
      }
    }

    else if (v15 != 8 && v15 != 7)
    {
      return 6;
    }

    else
    {
      __str = this[1];
      __size = this[2] - __str;
      v8 = ot::ToUlong(v15);
      this[1] += ot::Spinel::Logger::Snprintf(this, __str, __size, "Ignored command %lu\n", v8);
    }
  }

  else
  {
    return 6;
  }

  return v13;
}

uint64_t ot::Spinel::RadioSpinel::SpinelHandleResponse(char **this, const unsigned __int8 *a2, unsigned __int16 a3)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  this[1] += ot::Spinel::Logger::Snprintf(this, this[1], this[2] - this[1], "\n");
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  spinel_datatype_unpack(v14, v13, "CiiD", v3, v4, v5, v6, v7, &v9);
  return 6;
}

uint64_t ot::Spinel::RadioSpinel::SpinelHandleValueIs(ot::Spinel::RadioSpinel *this, int a2, unsigned __int8 *a3, unsigned __int16 a4)
{
  v42 = this;
  v41 = a2;
  v40 = a3;
  v39 = a4;
  *(this + 1) += ot::Spinel::Logger::Snprintf(this, *(this + 1), *(this + 2) - *(this + 1), "\n");
  v38 = 0;
  v37 = 0;
  v36 = pcap_enabled();
  v35 = promiscuous_enabled();
  if ((v41 != 117 || !v35 && !v36) && v41 != 15538 && v41 != 15518)
  {
    if (v41 == 113)
    {
      return ot::Spinel::RadioSpinel::SpinelParseRadioFrame(this, this + 720, v40, v39, &v37);
    }

    else if (v41)
    {
      if (v41 == 57)
      {
        v33 = 0;
        v32 = 0;
        v37 = spinel_datatype_unpack(v40, v39, "Cc", v4, v5, v6, v7, v8, &v33);
        if (v37 > 0)
        {
          *(this + 1) += ot::Spinel::Logger::Snprintf(this, *(this + 1), *(this + 2) - *(this + 1), "scanChannel: %d, maxRssi:%d\n", v33, v32);
          *(this + 1655) &= ~0x80u;
        }

        else
        {
          return 6;
        }
      }

      else
      {
        if (v41 == 112)
        {
          v31 = 151;
          v37 = spinel_datatype_unpack_in_place(v40, v39, "D", v4, v5, v6, v7, v8, v43);
          __assert_rtn("SpinelHandleValueIs", "spinel_parser_impl.hpp", 234, "len < sizeof(logStream)");
        }

        if (v41 == 116 && (ot::Spinel::RadioSpinel::sSupportsLogStream & 1) != 0)
        {
          v30 = 0;
          v29 = 0;
          v37 = spinel_datatype_unpack(v40, v39, "U", v4, v5, v6, v7, v8, &v30);
          if (v37 < 0)
          {
            return 6;
          }

          else
          {
            v40 += v37;
            v39 -= v37;
            v28 = 0;
            v27 = 0;
            v37 = spinel_datatype_unpack(v40, v39, "Ci", v11, v12, v13, v14, v15, &v29);
            if (v37 > 0)
            {
              v40 += v37;
              v39 -= v37;
              if (v39 >= 8uLL)
              {
                v37 = spinel_datatype_unpack(v40, v39, "X", v16, v17, v18, v19, v20, &v27);
                if (v37 <= 0)
                {
                  return 6;
                }
              }
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }

    else
    {
      v34 = 0;
      v37 = spinel_datatype_unpack(v40, v39, "i", v4, v5, v6, v7, v8, &v34);
      if (v37 > 0)
      {
        v24 = *(this + 1);
        __size = *(this + 2) - v24;
        v9 = spinel_status_to_cstr(v34);
        *(this + 1) += ot::Spinel::Logger::Snprintf(this, v24, __size, "[-RCP-]: RCP was reset (%s, %d)\n", v9, v34);
        if (v34 < 0x70 || v34 > 0x80)
        {
          if (v34 == 2000000)
          {
            *(this + 1) += ot::Spinel::Logger::Snprintf(this, *(this + 1), *(this + 2) - *(this + 1), "[-RCP-]: TX Request Timed out, TRANSMIT_NOT_GRANTED\n");
          }

          else if (v34 != 3)
          {
            __str = *(this + 1);
            v23 = *(this + 2) - __str;
            v10 = spinel_status_to_cstr(v34);
            *(this + 1) += ot::Spinel::Logger::Snprintf(this, __str, v23, "RCP last status: %s\n", v10);
          }
        }
      }

      else
      {
        return 6;
      }
    }
  }

  return v38;
}

uint64_t ot::Spinel::RadioSpinel::SpinelParseRadioFrame(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int16 a4, int *a5)
{
  v42 = a1;
  v41 = a2;
  v40 = a3;
  v39 = a4;
  v38 = a5;
  v31 = a1;
  *(a1 + 8) += ot::Spinel::Logger::Snprintf(a1, *(a1 + 8), *(a1 + 16) - *(a1 + 8), "\n");
  v37 = 0;
  v36 = 0;
  v35 = 0x80;
  v34 = 127;
  v33 = 0;
  v32 = 0;
  if (v39)
  {
    v10 = *v41;
    v30 = &v21;
    v22 = &v34;
    v23 = v41 + 29;
    v24 = &v35;
    v25 = &v36;
    v26 = v41 + 10;
    v27 = v41 + 30;
    v28 = v41 + 16;
    v29 = &v33;
    v32 = spinel_datatype_unpack_in_place(v40, v39, "dccSt(CCX)t(i)", v5, v6, v7, v8, v9, v10);
    if (v32 > 0)
    {
      v11 = ot::Spinel::Logger::Snprintf(v31, v31[1], v31[2] - v31[1], "len:%u, rssi:%d, ", v34, *(v41 + 29));
      v12 = v31;
      v31[1] += v11;
      v13 = ot::Spinel::Logger::Snprintf(v12, v12[1], v12[2] - v12[1], "noise:%d, flags:0x%04x, channel:%u, lqi:%u, timestamp:%lu, rxerr:%u", v35, v36, *(v41 + 10), *(v41 + 30), *(v41 + 16), v33);
      v31[1] += v13;
      *v38 = v32;
      v40 += v32;
      v39 -= v32;
      if ((ot::Spinel::RadioSpinel::sRadioCaps & 0x20) != 0)
      {
        v22 = (v41 + 24);
        v32 = spinel_datatype_unpack_in_place(v40, v39, "t(CL)", v14, v15, v16, v17, v18, v41 + 28);
        if (v32 <= 0)
        {
          return 6;
        }

        v19 = ot::Spinel::Logger::Snprintf(v31, v31[1], v31[2] - v31[1], ", AckKeyId:%d, mAckFrameCounter:0x%d", *(v41 + 28), *(v41 + 24));
        v31[1] += v19;
        *v38 += v32;
      }

      if (v33)
      {
        if (v33 >= 0x26)
        {
          return 6;
        }

        else
        {
          return v33;
        }
      }

      else
      {
        *(v41 + 8) = v34;
        *(v41 + 31) = *(v41 + 31) & 0xFE | ((v36 & 0x10) != 0);
        *(v41 + 31) = *(v41 + 31) & 0xFD | (2 * ((v36 & 0x20) != 0));
      }
    }

    else
    {
      return 6;
    }
  }

  else
  {
    *(v41 + 8) = 0;
  }

  return v37;
}

uint64_t ot::Spinel::RadioSpinel::SpinelHandleTransmitDone(char **this, unsigned int a2, unsigned int a3, unsigned __int8 *a4, unsigned __int16 a5)
{
  v31 = this;
  v30 = __PAIR64__(a2, a3);
  v29 = a4;
  v28 = a5;
  this[1] += ot::Spinel::Logger::Snprintf(this, this[1], this[2] - this[1], "\n");
  v27 = 0;
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  if (v30 == 0x600000000)
  {
    v22 = spinel_datatype_unpack(v29, v28, "i", v5, v6, v7, v8, v9, &v27);
    if (v22 > 0)
    {
      if (v27 == 4)
      {
        this[1] += ot::Spinel::Logger::Snprintf(this, this[1], this[2] - this[1], "HandleTransmitDone: Status[%d] SPINEL_STATUS_INVALID_STATE\n", 4);
        __assert_rtn("SpinelHandleTransmitDone", "spinel_parser_impl.hpp", 530, "false");
      }

      v29 += v22;
      v28 -= v22;
      v22 = spinel_datatype_unpack(v29, v28, "b", v10, v11, v12, v13, v14, &v26);
      if (v22 > 0)
      {
        v29 += v22;
        v28 -= v22;
        v22 = spinel_datatype_unpack(v29, v28, "b", v15, v16, v17, v18, v19, &v25);
        if (v22 > 0)
        {
          v29 += v22;
          v28 -= v22;
          if (v27)
          {
            HIDWORD(v27) = ot::Spinel::SpinelStatusToOtError(v27);
          }

          else
          {
            HIDWORD(v27) = ot::Spinel::RadioSpinel::SpinelParseRadioFrame(this, (this + 106), v29, v28, &v22);
            if (!HIDWORD(v27))
            {
              v29 += v22;
              v28 -= v22;
            }
          }
        }

        else
        {
          HIDWORD(v27) = 6;
        }
      }

      else
      {
        HIDWORD(v27) = 6;
      }
    }

    else
    {
      HIDWORD(v27) = 6;
    }
  }

  else
  {
    HIDWORD(v27) = 1;
  }

  return HIDWORD(v27);
}

uint64_t ot::Spinel::RadioSpinel::Peek(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int16 *a3, unsigned int a4, unsigned __int16 a5)
{
  if (*(this + 300))
  {
    __assert_rtn("Peek", "radio_spinel_impl_vendor.hpp", 75, "mWaitingTid == 0");
  }

  do
  {
    ot::Spinel::RadioSpinel::RecoverFromRcpFailure(this);
    v7 = ot::Spinel::RadioSpinel::MemPeek(this, a2, a3, "LS", a4, a5);
  }

  while ((*(this + 952) & 7) != 0);
  return v7;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexRxMode(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15360, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexRxMode failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexRxMixedModeUpperBound(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15372, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexRxMixedModeUpperBound failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexRxMixedModeLowerBound(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15373, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexRxMixedModeLowerBound failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexTxMode(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15361, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexTxMode failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexEnabled(ot::Spinel::RadioSpinel *this, BOOL *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15362, "b", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexEnabled failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexGrantTimeout(ot::Spinel::RadioSpinel *this, unsigned int *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15364, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexGrantTimeout failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexThrottleMaxAttemptsNone(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15365, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexThrottleMaxAttemptsNone failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexThrottleMaxAttemptsTxOnly(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15366, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexThrottleMaxAttemptsTxOnly failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexThrottleMaxAttemptsRxOnly(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15367, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexThrottleMaxAttemptsRxOnly failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexRxThrottleTimeout(ot::Spinel::RadioSpinel *this, unsigned int *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15368, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexRxThrottleTimeout failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexRequestAheadCslTx(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15370, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexRequestAheadCslTx failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCoexRequestAheadCslTxMin(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15371, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCoexRequestAheadCslTxMin failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCslTxSchedulerFrameRequestAhead(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15509, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCslTxSchedulerFrameRequestAhead failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPmuWakeTestResult(ot::Spinel::RadioSpinel *this, unsigned int *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15425, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPmuWakeTestResult failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorFemEnabled(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15440, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorFemEnabled failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCsmaMinBe(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15456, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCsmaMinBE failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCsmaMaxBe(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15457, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCsmaMaxBE failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCsmaMaxBackoffs(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15458, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCsmaMaxBackoffs failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCsmaSlidingWindowEnabled(ot::Spinel::RadioSpinel *this, BOOL *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15459, "b", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCsmaSlidingWindowEnabled failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCsmaBackoffHistogram(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int16 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 15461, "D", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCsmaBackoffHistogram failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsMode(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15472, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsMode failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsMinSifs(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15473, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsMinSIFS failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsMinLifs(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15474, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsMinLIFS failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsRetxMinSifs(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15475, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsRetxMinSIFS failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsRetxMinLifs(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15476, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsRetxMinLIFS failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsAckTurnAroundTime(ot::Spinel::RadioSpinel *this, unsigned __int16 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15477, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsAckTurnAroundTime failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsAckTurnAroundMode(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15478, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsAckTurnAroundMode failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsAckTurnAroundEnable(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15479, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsAckTurnAroundEnable failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorIfsAckDataPerNeighbor(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6[2] = this;
  v6[1] = a2;
  v6[0] = a3;
  v5 = ot::Spinel::RadioSpinel::Get(this, 15480, "D", a2, v6);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorIfsAckDataPerNeighbor failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorVersion(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, uint64_t a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 15488, "U", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorVersion failed", v5);
  if (v5)
  {
    handle_captureABC(15488);
  }

  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorOpenThreadRadioCounters(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 15584, "t(LLLLLLLLLLLLLLLLLL)t(LLLLLLLLLLLLLLLLLLLLL)t(LLLL)", a2, a2 + 4, a2 + 8, a2 + 12, a2 + 16, a2 + 20, a2 + 24, a2 + 28, a2 + 32, a2 + 36, a2 + 40, a2 + 44, a2 + 48, a2 + 52, a2 + 56, a2 + 60, a2 + 64, a2 + 68, a2 + 72, a2 + 76, a2 + 80, a2 + 84, a2 + 88, a2 + 96, a2 + 100, a2 + 104, a2 + 108, a2 + 112, a2 + 116, a2 + 120, a2 + 124, a2 + 132, a2 + 140, a2 + 148, a2 + 128, a2 + 136, a2 + 144, a2 + 152, a2 + 92, a2 + 156, a2 + 160, a2 + 164, a2 + 168);
  ot::Spinel::Logger::LogIfFail1(a1, "Get VendorOpenThreadRadioCounters failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorRadioCounters(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 15489, "t(LLLL)", a2, a2 + 4, a2 + 8, a2 + 12);
  ot::Spinel::Logger::LogIfFail1(a1, "Get VendorRadioCounters failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorAssignedHwMac(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 15494, "E", a2);
  ot::Spinel::Logger::LogIfFail1(a1, "Get VendorAssignedHWMac failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorAssert(ot::Spinel::RadioSpinel *this, unsigned int *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15491, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorAssert failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorHardFault(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Get(this, 15492, "", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Get VendorHardFault failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorStackOverflow(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Get(this, 15493, "", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Get VendorStackOverflow failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorFactoryReset(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Get(this, 15495, "", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Get VendorFactoryReset failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorFaultInfo(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 15498, "t(LCXLL)", a2, a2 + 4, a2 + 8, a2 + 16, a2 + 20, a2 + 24);
  ot::Spinel::Logger::LogIfFail1(a1, "Get VendorFaultInfo failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorDeepSleepFilterList(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6[2] = this;
  v6[1] = a2;
  v6[0] = a3;
  v5 = ot::Spinel::RadioSpinel::Get(this, 15499, "A(L)", a2, v6);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorDeepSleepFilterList failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorDeepSleepLogLevel(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15500, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorDeepSleepLogLevel failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorDeepSleepRegionLoglevels(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 15501, "D", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorDeepSleepRegionLoglevels failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorHostWakeReason(ot::Spinel::RadioSpinel *this, unsigned int *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15502, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorHostWakeReason failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorDeviceId(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15507, "cccccccc", a2, a2 + 1, a2 + 2, a2 + 3, a2 + 4, a2 + 5, a2 + 6, a2 + 7);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorDeviceId failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorValidateSettings(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 15510, "bL", a2, a2 + 4);
  ot::Spinel::Logger::LogIfFail1(a1, "Get VendorValidateSettings failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerLimitTable(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned int *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 15520, "D", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerLimitTable failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerLimitTableActiveId(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15522, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerLimitTableActiveId failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerLimitTableVersion(ot::Spinel::RadioSpinel *this, char *a2, uint64_t a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 15523, "U", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerLimitTableVersion failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerLimitTablePowerTest(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15524, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerLimitTablePowerTest failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerLmitActiveTable(ot::Spinel::RadioSpinel *this, char *a2, unsigned __int8 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 15525, "D", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerLmitActiveTable failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerMappingTable(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int16 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 15526, "D", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerMappingTable failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerMappingTableVersion(ot::Spinel::RadioSpinel *this, char *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15527, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerMappingTableVersion failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerMappingTablePowerTest(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15529, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerMappingTablePowerTest failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorRadioCurrentPowerInfo(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 15530, "Ccccc", a2, a2 + 1, a2 + 2, a2 + 3, a2 + 4);
  ot::Spinel::Logger::LogIfFail1(a1, "Get VendorRadioCurrentPowerInfo failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerMappingTableFlashData(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned int *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 15532, "D", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerMappingTableFlashData failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPowerMappingTableFlashDataIsvalid(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15533, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPowerMappingTableFlashDataIsvalid failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexRxMode(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15360, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexRxMode failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexRxMixedModeUpperBound(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15372, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexRxMixedModeUpperBound failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexRxMixedModeLowerBound(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15373, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexRxMixedModeLowerBound failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexTxMode(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15361, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexTxMode failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexEnabled(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15362, "b", a2 & 1);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexEnabled failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexCounters(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = 0;
  v3 = ot::Spinel::RadioSpinel::Set(this, 15363, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorCoexCounters failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexGrantTimeout(ot::Spinel::RadioSpinel *this, unsigned int a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15364, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexGrantTimeout failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexThrottleMaxAttemptsNone(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15365, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexThrottleMaxAttemptsNone failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexThrottleMaxAttemptsTxOnly(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15366, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexThrottleMaxAttemptsTxOnly failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexThrottleMaxAttemptsRxOnly(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15367, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexThrottleMaxAttemptsRxOnly failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexRxThrottleTimeout(ot::Spinel::RadioSpinel *this, unsigned int a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15368, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexRxThrottleTimeout failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexHistograms(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 15369, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorCoexHistograms failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexRequestAheadCslTx(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15370, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexRequestAheadCslTx failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCoexRequestAheadCslTxMin(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15371, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCoexRequestAheadCslTxMin failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCslTxSchedulerFrameRequestAhead(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15509, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCslTxSchedulerFrameRequestAhead failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorPmuWakeTestStart(ot::Spinel::RadioSpinel *this, unsigned int a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15424, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorPmuWakeTestResult failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorFemEnabled(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15440, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorFemEnabled failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCsmaMinBe(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15456, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCsmaMinBE failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCsmaMaxBe(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15457, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCsmaMaxBE failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCsmaMaxBackoffs(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15458, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCsmaMaxBackoffs failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCsmaSlidingWindowEnabled(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15459, "b", a2 & 1);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCsmaSlidingWindowEnabled failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCcaEnergyDetectedHistogram(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 15460, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorCcaEnergyDetectedHistogram failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCsmaBackoffHistogram(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 15461, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorCsmaBackoffHistogram failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorIfsMode(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15472, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsMode failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorIfsMinSifs(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15473, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsMinSIFS failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorIfsMinLifs(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15474, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsMinLIFS failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorIfsRetxMinSifs(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15475, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsRetxMinSIFS failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorIfsRetxMinLifs(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15476, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsRetxMinLIFS failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorIfsAckturnaroundTime(ot::Spinel::RadioSpinel *this, unsigned __int16 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15477, "S", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsAckturnaroundTime failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorIfsAckturnaroundMode(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15478, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsAckturnaroundMode failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorIfsAckturnaroundEnable(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15479, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsAckturnaroundEnable failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCntrStatsReset(ot::Spinel::RadioSpinel *this)
{
  v3 = ot::Spinel::RadioSpinel::Set(this, 15505, "S", 0);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorIfsRetxMinLIFS failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorOpenThreadRadioCounters(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 15584, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorOpenThreadRadioCounters failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorRadioCounters(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 15489, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorRadioCounters failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorRadioStats(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 15490, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorRadioStats failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorAssignedHWMac(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15494, "E", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorAssignedHWMac failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorAssert(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15491, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorAssert failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorHardResdtTest(ot::Spinel::RadioSpinel *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(this + 1657) = a2;
  otLogInfoPlat("%s: Set hard reset test mode as %d", a2, a3, a4, a5, a6, a7, a8, "SetVendorHardResdtTest");
  return 0;
}

uint64_t ot::Spinel::RadioSpinel::SetLoggingTest(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, unsigned __int8 a3, char *a4)
{
  v6 = ot::Spinel::RadioSpinel::Set(this, 15496, "CCU", a2, a3, a4);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorAssert failed", v6);
  return v6;
}

uint64_t ot::Spinel::RadioSpinel::SetFilterUnsolNotif (ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15497, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set FilterUnsolNotif failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorFaultInfo(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 15498, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorFaultInfo failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorDeepSleepFilterList(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 15499, "L", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorDeepSleepFilterList failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorDeepSleepLogLevel(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15500, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorDeepSleepLogLevel failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorDeepSleepRegionLoglevels(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 15501, "D", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorDeepSleepRegionLoglevels failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorHostWakeReason(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 15502, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorHostWakeReason failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::FlashErase(ot::Spinel::RadioSpinel *this, unsigned int a2, unsigned int a3)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 15503, "LL", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Set FlashErase failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::FlashWrite(ot::Spinel::RadioSpinel *this, unsigned int a2, unsigned __int8 *a3, unsigned __int16 a4)
{
  v6 = ot::Spinel::RadioSpinel::Set(this, 15504, "LD", a2, a4, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Set FlashWrite failed", v6);
  return v6;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorPowerLimitTableActiveId(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15522, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorPowerLimitTableActiveId failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorPowerMappingTableClear(const char **this)
{
  v4 = this;
  v2 = this;
  v3 = ot::Spinel::RadioSpinel::Set(this, 15531, "C", 0);
  ot::Spinel::Logger::LogIfFail1(v2, "Set VendorPowerMappingTableClear failed", v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorPowerMappingTableFlashData(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int16 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 15532, "D", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorPowerMappingTableFlashData failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorSetLogTimeStampBase(ot::Spinel::RadioSpinel *this, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 16387, "X", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set LogTimeStampBase failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorUartDisableStart(ot::Spinel::RadioSpinel *this, unsigned int a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15426, "L", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorUartDisableStart failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPTB(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int16 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 15534, "d", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPTB failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetMSFState(ot::Spinel::RadioSpinel *this, BOOL *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15535, "b", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get MSFState failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPower(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15537, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get Vendor Power failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorAntenna(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15512, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorAntenna failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCC(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15513, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCC failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCore(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15511, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorCore failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPCAP(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15514, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPCAP failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorPriority(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned int *a4)
{
  v6 = ot::Spinel::RadioSpinel::Get(this, 2305, "CCL", a2, a3, a4);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPriority failed", v6);
  return v6;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorGPIO(ot::Spinel::RadioSpinel *a1, uint64_t a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(a1, 15515, "CCCC", a2, a2 + 1, a2 + 2, a2 + 3);
  ot::Spinel::Logger::LogIfFail1(a1, "Get GPIO failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorPTB(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int16 a3)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 15534, "d", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorPTB failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorAntenna(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15512, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorAntenna failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCC(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15513, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorCC failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorPCAP(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15514, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set VendorPCAP failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorPriority(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, unsigned __int8 a3, unsigned int a4)
{
  v6 = ot::Spinel::RadioSpinel::Set(this, 0x901u, "CCL", a2, a3, a4);
  ot::Spinel::Logger::LogIfFail1(this, "Set Priority failed", v6);
  return v6;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorPower(ot::Spinel::RadioSpinel *this, signed __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15537, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get VendorPower failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorGPIO(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, unsigned __int8 a3)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 15515, "CC", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Set GPIO failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorExposureState(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, unsigned __int8 a3)
{
  v5 = ot::Spinel::RadioSpinel::Set(this, 15543, "CC", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Set Exposure state failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorExposureState(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 15543, "CC", a2, a3);
  ot::Spinel::Logger::LogIfFail1(this, "Get Exposure state failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorMWSScanFreqTable(ot::Spinel::RadioSpinel *this, unsigned __int8 a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  if (a2 && a2 < 0x64u && a3 && a4)
  {
    v11 = v12;
    v10 = &v12[2 * a2];
    for (i = 0; i < a2; ++i)
    {
      *v11 = a3[i];
      v4 = v11 + 1;
      v11 += 2;
      *v4 = HIBYTE(a3[i]);
      *v10 = a4[i];
      v5 = v10 + 1;
      v10 += 2;
      *v5 = HIBYTE(a4[i]);
    }

    v8 = ot::Spinel::RadioSpinel::Set(this, 15544, "Cd", a2, v12, (4 * a2));
    ot::Spinel::Logger::LogIfFail1(this, "Set MWS Scan freq table failed", v8);
  }

  else
  {
    v8 = 7;
    ot::Spinel::Logger::LogIfFail1(this, "Set MWS Scan freq table failed", 7);
  }

  return v8;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorMWSScanFreqTable(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2, unsigned __int16 *a3)
{
  v5 = ot::Spinel::RadioSpinel::Get(this, 15544, "d", a3, a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get Scan table failed", v5);
  return v5;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorCellState(ot::Spinel::RadioSpinel *this, unsigned __int8 a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15545, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Set Cell state failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::GetVendorCellState(ot::Spinel::RadioSpinel *this, unsigned __int8 *a2)
{
  v4 = ot::Spinel::RadioSpinel::Get(this, 15545, "C", a2);
  ot::Spinel::Logger::LogIfFail1(this, "Get Cell state failed", v4);
  return v4;
}

uint64_t ot::Spinel::RadioSpinel::SetVendorThreadStartStop(ot::Spinel::RadioSpinel *this, char a2)
{
  v4 = ot::Spinel::RadioSpinel::Set(this, 15522, "b", a2 & 1);
  ot::Spinel::Logger::LogIfFail1(this, "Set Thread start/stop failed", v4);
  return v4;
}

void *ot::MaxPowerTable::MaxPowerTable(void *this)
{
  *this = 0x1E1E1E1E1E1E1E1ELL;
  *(this + 7) = 0x1E1E1E1E1E1E1E1ELL;
  return this;
}

BOOL ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::Contains(uint64_t a1, _DWORD *a2)
{
  return ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::Find(a1, a2) != 0;
}

{
  return ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::Contains(a1, a2);
}

_DWORD *ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::Find(uint64_t a1, _DWORD *a2)
{
  v7 = 0;
  ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::begin();
  v5 = v2;
  v4 = ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::end(a1);
  while (v5 != v4)
  {
    if (*v5 == *a2)
    {
      return v5;
    }

    ++v5;
  }

  return v7;
}

{
  return ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::Find(a1, a2);
}

void ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::begin()
{
  ;
}

{
  ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::begin();
}

uint64_t ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::end(uint64_t a1)
{
  return a1 + 4 * *(a1 + 400);
}

{
  return ot::Spinel::SpinelDriver::Array<unsigned int,(unsigned short)100>::end(a1);
}

void ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::Clear(uint64_t a1)
{
  *(a1 + 8208) = a1 + 10;
  *a1 = a1 + 14;
  *(a1 + 8) = 8188;
  ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::SetSkipLength(a1, 0);
  ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::IgnoreError();
}

{
  ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::Clear(a1);
}

void *ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::ClearSavedFrames(void *result)
{
  v3 = result;
  v4 = result[1026] - (result + 10);
  if (v4)
  {
    v1 = result[1026];
    v2 = __OFSUB__(*result, v1);
    result = memmove(result + 10, v1, (*result - v1));
    *v3 -= v4;
    v3[1026] -= v4;
    *(v3 + 4) += v4;
  }

  return result;
}

{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::ClearSavedFrames(result);
}

BOOL ot::Mac::Frame::IsSecurityEnabled(ot::Mac::Frame *this)
{
  return ot::Mac::Frame::GetFcfBit(this, 8, 512) != 0;
}

{
  return ot::Mac::Frame::IsSecurityEnabled(this);
}

uint64_t ot::Mac::Frame::GetFrameControlField(ot::Mac::Frame *this)
{
  v3 = **this;
  if (!ot::Mac::Frame::IsShortFcf(**this))
  {
    v3 |= *(*this + 1) << 8;
  }

  return v3;
}

{
  return ot::Mac::Frame::GetFrameControlField(this);
}

uint64_t ot::Mac::Frame::GetFcfBit(ot::Mac::Frame *this, __int16 a2, __int16 a3)
{
  v6 = this;
  if (ot::Mac::Frame::IsMultipurpose(this))
  {
    return (v6 & a3);
  }

  else
  {
    return (v6 & a2);
  }
}

{
  return ot::Mac::Frame::GetFcfBit(this, a2, a3);
}

BOOL ot::Mac::Frame::IsMultipurpose(ot::Mac::Frame *this)
{
  return (this & 7) == 5;
}

{
  return ot::Mac::Frame::IsMultipurpose(this);
}

BOOL ot::Mac::Frame::IsShortFcf(ot::Mac::Frame *this)
{
  return (this & 0xF) == 5;
}

{
  return ot::Mac::Frame::IsShortFcf(this);
}

uint64_t ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::markReset(uint64_t result, char a2)
{
  *(result + 8216) = a2 & 1;
  return result;
}

{
  return ot::Spinel::MultiFrameBuffer<(unsigned short)8192>::markReset(result, a2);
}

void platformAlarmInit(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sSpeedUpFactor = a1;
  if (a2)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/alarm.cpp", 47);
    otExitCodeToString(2);
    otLogCritPlat("%s() at %s:%d: %s", v8, v9, v10, v11, v12, v13, v14, "platformAlarmInit");
    handle_daemon_exit();
    exit(2);
  }

  otLogWarnPlat("Real time signal not enabled, microsecond timers may be inaccurate!", a2, a3, a4, a5, a6, a7, a8, v15);
}

uint64_t ot::Posix::Daemon::OutputFormatV(ot::Posix::Daemon *this, const char *a2, va_list a3)
{
  __nbyte = vsnprintf(__str, 0x280uLL, a2, a3);
  if (__nbyte < 0)
  {
    v3 = __error();
    v4 = strerror(*v3);
    ot::Posix::Logger<ot::Posix::Daemon>::LogWarn2("Failed to format CLI output: %s", v5, v6, v7, v8, v9, v10, v11, v4);
  }

  else
  {
    if (__nbyte >= 640)
    {
      __nbyte = 639;
      strcpy(v25, "(truncated ...)");
    }

    if (*(this + 6) != -1)
    {
      __nbyte = write(*(this + 6), __str, __nbyte);
      if (__nbyte < 0)
      {
        v12 = __error();
        v13 = strerror(*v12);
        ot::Posix::Logger<ot::Posix::Daemon>::LogWarn2("Failed to write CLI output: %s", v14, v15, v16, v17, v18, v19, v20, v13);
        close(*(this + 6));
        *(this + 6) = -1;
      }
    }
  }

  return __nbyte;
}

void ot::Posix::Logger<ot::Posix::Daemon>::LogWarn2(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  otLogPlatArgs(2, "Daemon", a1, &a9);
}

{
  ot::Posix::Logger<ot::Posix::Daemon>::LogWarn2(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void ot::Posix::Daemon::InitializeSessionSocket(ot::Posix::Daemon *this)
{
  v21 = this;
  v20 = 0;
  v19 = 0;
  v20 = accept(*(this + 4), 0, 0);
  if (v20 == -1)
  {
    v19 = -1;
  }

  else
  {
    v17 = 0;
    v19 = fcntl(v20, 1);
    if (v19 != -1)
    {
      v17 = v19 | 1;
      v19 = fcntl(v20, 2);
      if (v19 != -1)
      {
        v19 = setsockopt(v20, 0xFFFF, 4130, &v19, 4u);
        if (v19 != -1)
        {
          if (*(this + 6) != -1)
          {
            close(*(this + 6));
          }

          *(this + 6) = v20;
        }
      }
    }
  }

  if (v19 == -1)
  {
    v8 = __error();
    v9 = strerror(*v8);
    ot::Posix::Logger<ot::Posix::Daemon>::LogWarn2("Failed to initialize session socket: %s", v10, v11, v12, v13, v14, v15, v16, v9);
    if (v20 != -1)
    {
      close(v20);
    }
  }

  else
  {
    ot::Posix::Logger<ot::Posix::Daemon>::LogInfo2("Session socket is ready", v1, v2, v3, v4, v5, v6, v7, v17);
  }
}

void ot::Posix::Logger<ot::Posix::Daemon>::LogInfo2(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  otLogPlatArgs(4, "Daemon", a1, &a9);
}

{
  ot::Posix::Logger<ot::Posix::Daemon>::LogInfo2(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t ot::Posix::Daemon::createListenSocketOrDie(ot::Posix::Daemon *this)
{
  v35 = this;
  v34 = 0;
  *(this + 4) = SocketWithCloseExec(1, 1, 0, 1);
  if (*(this + 4) == -1)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/daemon.cpp", 47);
    otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", v1, v2, v3, v4, v5, v6, v7, "createListenSocketOrDie");
    handle_daemon_exit();
    exit(1);
  }

  memset(__b, 0, sizeof(__b));
  *(this + 5) = open(__b, 16777728, 384);
  if (*(this + 5) == -1)
  {
    otExitCodeToString(5);
    otLogCritPlat("exit(%d): %s line %d, %s, %s", v9, v10, v11, v12, v13, v14, v15, 5);
    handle_daemon_exit();
    exit(5);
  }

  if (flock(*(this + 5), 6) == -1)
  {
    otExitCodeToString(5);
    otLogCritPlat("exit(%d): %s line %d, %s, %s", v16, v17, v18, v19, v20, v21, v22, 5);
    handle_daemon_exit();
    exit(5);
  }

  memset(v37, 0, sizeof(v37));
  v37[1] = 1;
  unlink(&v37[2]);
  ot::Posix::Daemon::createListenSocketOrDie(void)::AllowAllGuard::AllowAllGuard(v33);
  v34 = bind(*(this + 4), v37, 0x6Au);
  result = ot::Posix::Daemon::createListenSocketOrDie(void)::AllowAllGuard::~AllowAllGuard(v33);
  if (v34 == -1)
  {
    otExitCodeToString(5);
    otLogCritPlat("exit(%d): %s line %d, %s, %s", v25, v26, v27, v28, v29, v30, v31, 5);
    handle_daemon_exit();
    exit(5);
  }

  return result;
}

uint64_t ot::Posix::anonymous namespace::GetFilename(ot::Posix::_anonymous_namespace_ *this, char (*a2)[104], const char *a3)
{
  v3 = strlen(&gNetifName);
  v4 = &gNetifName;
  if (!v3)
  {
    v4 = "wpan0";
  }

  result = snprintf(this, 0x68uLL, a2, v4);
  if ((result & 0x80000000) != 0 && result >= 0x68)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/daemon.cpp", 47);
    otExitCodeToString(2);
    otLogCritPlat("%s() at %s:%d: %s", v6, v7, v8, v9, v10, v11, v12, "GetFilename");
    handle_daemon_exit();
    exit(2);
  }

  return result;
}

uint64_t ot::Posix::Daemon::createListenSocketOrDie(void)::AllowAllGuard::AllowAllGuard(uint64_t a1)
{
  ot::Posix::Daemon::createListenSocketOrDie(void)::AllowAllGuard::AllowAllGuard(a1);
  return a1;
}

{
  *a1 = 0;
  *(a1 + 2) = 0;
  __s2 = getenv("OT_DAEMON_ALLOW_ALL");
  v3 = 0;
  if (__s2)
  {
    v3 = strcmp("1", __s2) == 0;
  }

  *a1 = v3;
  if (*a1)
  {
    *(a1 + 2) = umask(0);
  }

  return a1;
}

uint64_t ot::Posix::Daemon::createListenSocketOrDie(void)::AllowAllGuard::~AllowAllGuard(uint64_t a1)
{
  ot::Posix::Daemon::createListenSocketOrDie(void)::AllowAllGuard::~AllowAllGuard(a1);
  return a1;
}

{
  if (*a1)
  {
    umask(*(a1 + 2));
  }

  return a1;
}

void *ot::Posix::Daemon::SetUp(ot::Posix::Daemon *this)
{
  if (*(this + 4) == -1)
  {
    ot::Posix::Daemon::createListenSocketOrDie(this);
    if (listen(*(this + 4), 1) == -1)
    {
      otExitCodeToString(5);
      otLogCritPlat("exit(%d): %s line %d, %s, %s", v1, v2, v3, v4, v5, v6, v7, 5);
      handle_daemon_exit();
      exit(5);
    }
  }

  inited = otSysCliInitUsingDaemon(gInstance);
  v9 = ot::Posix::Mainloop::Manager::Get(inited);
  return ot::Posix::Mainloop::Manager::Add(v9, this);
}

ot::Cli::Interpreter *ot::Posix::Daemon::EnableCliForXpc(ot::Posix::Daemon *this)
{
  v4 = gInstance;
  v1 = ot::Posix::Daemon::EnableCliForXpc(void)::$_0::operator int (*)(void *,char const*,char *)();
  return otCliInit(v4, v1, this);
}

uint64_t ot::Posix::Daemon::OutputFormatXpc(ot::Posix::Daemon *this, char *a2, va_list a3)
{
  v32 = this;
  __format = a2;
  v30 = a3;
  v40 = 0;
  v29 = vsnprintf(&__str, 0x640uLL, a2, a3);
  if (v29 < 0)
  {
    v3 = __error();
    v4 = strerror(*v3);
    otLogCritPlat("Failed to format CLI output: %s", v5, v6, v7, v8, v9, v10, v11, v4);
  }

  else
  {
    if ((*(this + 10270) & 1) == 1 && v29 == 2 && __str == 13 && v37 == 10)
    {
      *(this + 10271) = 1;
    }

    else
    {
      if (v29 == 4 && __str == 68 && v37 == 111 && v38 == 110 && v39 == 101)
      {
        *(this + 10270) = 1;
      }

      if (v29 + *(this + 5134) > 10240)
      {
        handle_xpc_output_nobuff(this + 28, *(this + 5134));
      }

      for (i = 0; i < v29; ++i)
      {
        v12 = *(&__str + i);
        v13 = (*(this + 5134))++;
        *(this + v13 + 28) = v12;
      }
    }

    if (*(this + 5134) > 0x1F40u)
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(4) & 1) != 0)
      {
        oslog = logging_obg;
        type = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_1_4_0(v35, *(this + 5134));
          _os_log_error_impl(&_mh_execute_header, oslog, type, "Daemon::OutputFormatXpc mXpcTxBuffer usage high mXpcTxHead[%d]", v35, 8u);
        }
      }

      else if (!logging_obg)
      {
        v24 = &_os_log_default;
        v23 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v34, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, v24, v23, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v34, 0x16u);
        }
      }
    }

    if (*(this + 10271) & 1) != 0 && (*(this + 10270))
    {
      v22 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v22 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        v21 = v22;
        v20 = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v16 = v21;
          v17 = v20;
          __os_log_helper_16_0_0(v19);
          _os_log_impl(&_mh_execute_header, v16, v17, "Uart::XpcOutput  mXpcPrompt && mXpcDone = true", v19, 2u);
        }
      }

      else if (!v22 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v33, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v33, 0x16u);
      }

      v14 = (*(this + 5134))++;
      *(this + v14 + 28) = 0;
      send_response_to_otctl(this + 28);
      memset(this + 28, -1, *(this + 5134));
      *(this + 5134) = 0;
      *(this + 10271) = 0;
      *(this + 10270) = 0;
    }
  }

  return v29;
}

uint64_t ot::Posix::Daemon::Update(uint64_t result, _DWORD *a2)
{
  v2 = result;
  if (*(result + 16) != -1)
  {
    v7 = *(result + 16);
    if (__darwin_check_fd_set_overflow(v7, a2, 0))
    {
      a2[v7 / 0x20uLL] |= 1 << (v7 % 0x20uLL);
    }

    v6 = *(v2 + 16);
    result = __darwin_check_fd_set_overflow(v6, a2 + 64, 0);
    if (result)
    {
      a2[v6 / 0x20uLL + 64] |= 1 << (v6 % 0x20uLL);
    }

    if (a2[96] < *(v2 + 16))
    {
      a2[96] = *(v2 + 16);
    }
  }

  if (*(v2 + 24) != -1)
  {
    v5 = *(v2 + 24);
    if (__darwin_check_fd_set_overflow(v5, a2, 0))
    {
      a2[v5 / 0x20uLL] |= 1 << (v5 % 0x20uLL);
    }

    v4 = *(v2 + 24);
    result = __darwin_check_fd_set_overflow(v4, a2 + 64, 0);
    if (result)
    {
      a2[v4 / 0x20uLL + 64] |= 1 << (v4 % 0x20uLL);
    }

    if (a2[96] < *(v2 + 24))
    {
      a2[96] = *(v2 + 24);
    }
  }

  return result;
}

void ot::Posix::Daemon::Process(ot::Posix::Daemon *a1, uint64_t a2)
{
  if (*(a1 + 4) != -1)
  {
    v28 = *(a1 + 4);
    v27 = a2 + 256;
    if (__darwin_check_fd_set_overflow(v28, (a2 + 256), 0))
    {
      v29 = *(v27 + 4 * (v28 / 0x20uLL)) & (1 << (v28 % 0x20uLL));
    }

    else
    {
      v29 = 0;
    }

    if (v29)
    {
      otExitCodeToString(1);
      otLogCritPlat("exit(%d): %s line %d, %s, %s", v2, v3, v4, v5, v6, v7, v8, 1);
      handle_daemon_exit();
      exit(1);
    }

    v25 = *(a1 + 4);
    if (__darwin_check_fd_set_overflow(v25, a2, 0))
    {
      v26 = *(a2 + 4 * (v25 / 0x20uLL)) & (1 << (v25 % 0x20uLL));
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
      ot::Posix::Daemon::InitializeSessionSocket(a1);
    }

    if (*(a1 + 6) != -1)
    {
      v23 = *(a1 + 6);
      if (__darwin_check_fd_set_overflow(v23, (a2 + 256), 0))
      {
        v24 = *(a2 + 256 + 4 * (v23 / 0x20uLL)) & (1 << (v23 % 0x20uLL));
      }

      else
      {
        v24 = 0;
      }

      if (v24)
      {
        close(*(a1 + 6));
        *(a1 + 6) = -1;
      }

      else
      {
        v21 = *(a1 + 6);
        if (__darwin_check_fd_set_overflow(v21, a2, 0))
        {
          v22 = *(a2 + 4 * (v21 / 0x20uLL)) & (1 << (v21 % 0x20uLL));
        }

        else
        {
          v22 = 0;
        }

        if (v22)
        {
          v19 = read(*(a1 + 6), v30, 0x27FuLL);
          if (v19 <= 0)
          {
            if (v19 < 0)
            {
              v9 = __error();
              v10 = strerror(*v9);
              ot::Posix::Logger<ot::Posix::Daemon>::LogWarn2("Daemon read: %s", v11, v12, v13, v14, v15, v16, v17, v10);
            }

            close(*(a1 + 6));
            *(a1 + 6) = -1;
          }

          else
          {
            v30[v19] = 0;
            otCliInputLine(v30);
          }
        }
      }
    }
  }
}

void *ot::Posix::Daemon::Get(ot::Posix::Daemon *this)
{
  {
    ot::Posix::Daemon::Daemon(&ot::Posix::Daemon::Get(void)::sInstance);
    __cxa_atexit(std::allocator<char>::allocator[abi:dn200100], &ot::Posix::Daemon::Get(void)::sInstance, &_mh_execute_header);
  }

  return &ot::Posix::Daemon::Get(void)::sInstance;
}

ot::Posix::Daemon *ot::Posix::Daemon::Daemon(ot::Posix::Daemon *this)
{
  ot::Posix::Daemon::Daemon(this);
  return this;
}

{
  ot::Posix::Mainloop::Source::Source(this);
  result = this;
  *this = off_1004C9000;
  *(this + 4) = -1;
  *(this + 5) = -1;
  *(this + 6) = -1;
  return result;
}

uint64_t ot::Posix::Daemon::EnableCliForXpc(void)::$_0::__invoke(ot::Posix::Daemon *a1, char *a2, va_list a3)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  return ot::Posix::Daemon::EnableCliForXpc(void)::$_0::operator()(&v4, a1, a2, a3);
}

void *ot::Posix::Mainloop::Source::Source(void *this)
{
  *this = &off_1004C90A8;
  this[1] = 0;
  return this;
}

uint64_t otPlatEntropyGet(void *a1, unsigned __int16 a2)
{
  __stream = 0;
  if (a1 && a2)
  {
    __stream = fopen("/dev/urandom", "rb");
    if (__stream)
    {
      v4 = fread(a1, 1uLL, a2, __stream) != a2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 7;
  }

  if (__stream)
  {
    fclose(__stream);
  }

  return v4;
}

uint64_t otPlatInfraIfHasAddress(int a1, const void *a2)
{
  v15 = a1;
  v14 = a2;
  v13 = 0;
  v12 = 0;
  if (getifaddrs(&v12) == -1)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "otPlatInfraIfHasAddress");
    handle_daemon_exit();
    exit(5);
  }

  for (i = v12; i; i = i->ifa_next)
  {
    v9 = if_nametoindex(i->ifa_name);
    if (v9 == v15 && i->ifa_addr && i->ifa_addr->sa_family == 30 && !memcmp(&i->ifa_addr->sa_data[6], v14, 0x10uLL))
    {
      v13 = 1;
      break;
    }
  }

  freeifaddrs(v12);
  return v13 & 1;
}

void *ot::Posix::InfraNetif::Get(ot::Posix::InfraNetif *this)
{
  {
    ot::Posix::InfraNetif::InfraNetif (&ot::Posix::InfraNetif::Get(void)::sInstance);
    __cxa_atexit(ot::Posix::InfraNetif::~InfraNetif, &ot::Posix::InfraNetif::Get(void)::sInstance, &_mh_execute_header);
  }

  return &ot::Posix::InfraNetif::Get(void)::sInstance;
}

uint64_t ot::Posix::InfraNetif::IsRunning(ot::Posix::InfraNetif *this)
{
  if (*(this + 8))
  {
    HasLinkLocalAddress = 0;
    if ((ot::Posix::InfraNetif::GetFlags(this) & 0x40) != 0)
    {
      HasLinkLocalAddress = ot::Posix::InfraNetif::HasLinkLocalAddress(this);
    }

    v2 = HasLinkLocalAddress;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t ot::Posix::InfraNetif::GetNetifName(ot::Posix::InfraNetif *this)
{
  if (*(this + 8))
  {
    return this + 16;
  }

  else
  {
    return 0;
  }
}

{
  return ot::Posix::InfraNetif::GetNetifName(this);
}

uint64_t ot::Posix::InfraNetif::GetNetifIndex(ot::Posix::InfraNetif *this)
{
  return *(this + 8);
}

{
  return ot::Posix::InfraNetif::GetNetifIndex(this);
}

uint64_t ot::Posix::InfraNetif::GetFlags(ot::Posix::InfraNetif *this)
{
  if (!*(this + 8))
  {
    __assert_rtn("GetFlags", "infra_if.cpp", 310, "mInfraIfIndex != 0");
  }

  v25 = SocketWithCloseExec(30, 2, 0, 0);
  if (v25 == -1)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v1, v2, v3, v4, v5, v6, v7, "GetFlags");
    handle_daemon_exit();
    exit(5);
  }

  *__dst = 0u;
  v27 = 0u;
  strcpy(__dst, this + 16);
  if (ioctl(v25, 0xC0206911uLL, __dst) == -1)
  {
    ot::Posix::Logger<ot::Posix::InfraNetif>::LogCrit2("The infra link %s may be lost. Exiting.", v8, v9, v10, v11, v12, v13, v14, this + 16);
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v15, v16, v17, v18, v19, v20, v21, "GetFlags");
    handle_daemon_exit();
    exit(5);
  }

  v24 = v27;
  close(v25);
  return v24;
}

void ot::Posix::InfraNetif::CountAddresses(uint64_t a1, _DWORD *a2)
{
  v22 = a1;
  v21 = a2;
  v20 = 0;
  *a2 = 0;
  v21[1] = 0;
  v21[2] = 0;
  if (getifaddrs(&v20) < 0)
  {
    v2 = __error();
    v3 = strerror(*v2);
    ot::Posix::Logger<ot::Posix::InfraNetif>::LogWarn2("failed to get netif addresses: %s", v4, v5, v6, v7, v8, v9, v10, v3);
  }

  else
  {
    for (i = v20; i; i = i->ifa_next)
    {
      if (!strncmp(i->ifa_name, (a1 + 16), 0x10uLL) && i->ifa_addr && i->ifa_addr->sa_family == 30)
      {
        v18 = &i->ifa_addr->sa_data[6];
        IsAddressLinkLocal = ot::Posix::IsAddressLinkLocal(v18, v11);
        *v21 += IsAddressLinkLocal;
        IsAddressUniqueLocal = ot::Posix::IsAddressUniqueLocal(v18, v13);
        v21[1] += IsAddressUniqueLocal;
        IsAddressGlobalUnicast = ot::Posix::IsAddressGlobalUnicast(v18, v15);
        v21[2] += IsAddressGlobalUnicast;
      }
    }

    freeifaddrs(v20);
  }
}

uint64_t ot::Posix::InfraNetif::CreateIcmp6Socket(ot::Posix::InfraNetif *this, const char *a2)
{
  v67 = this;
  v65 = 0;
  v62 = 1;
  v61 = 2;
  v60 = 255;
  v66 = SocketWithCloseExec(30, 3, 58, 0);
  if (v66 == -1)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "CreateIcmp6Socket");
    handle_daemon_exit();
    exit(5);
  }

  v63 = 0u;
  v64 = 0u;
  LODWORD(v64) = 352;
  v65 = setsockopt(v66, 58, 18, &v63, 0x20u);
  if (v65)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v9, v10, v11, v12, v13, v14, v15, "CreateIcmp6Socket");
    handle_daemon_exit();
    exit(5);
  }

  v65 = setsockopt(v66, 41, 61, &v62, 4u);
  if (v65)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v16, v17, v18, v19, v20, v21, v22, "CreateIcmp6Socket");
    handle_daemon_exit();
    exit(5);
  }

  v65 = setsockopt(v66, 41, 26, &v61, 4u);
  if (v65)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v23, v24, v25, v26, v27, v28, v29, "CreateIcmp6Socket");
    handle_daemon_exit();
    exit(5);
  }

  v65 = setsockopt(v66, 41, 37, &v62, 4u);
  if (v65)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v30, v31, v32, v33, v34, v35, v36, "CreateIcmp6Socket");
    handle_daemon_exit();
    exit(5);
  }

  v65 = setsockopt(v66, 41, 4, &v60, 4u);
  if (v65)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v37, v38, v39, v40, v41, v42, v43, "CreateIcmp6Socket");
    handle_daemon_exit();
    exit(5);
  }

  v65 = setsockopt(v66, 41, 10, &v60, 4u);
  if (v65)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v44, v45, v46, v47, v48, v49, v50, "CreateIcmp6Socket");
    handle_daemon_exit();
    exit(5);
  }

  v51 = strlen(v67);
  v65 = setsockopt(v66, 41, 125, v67, v51);
  if (v65)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v52, v53, v54, v55, v56, v57, v58, "CreateIcmp6Socket");
    handle_daemon_exit();
    exit(5);
  }

  return v66;
}

BOOL ot::Posix::IsAddressLinkLocal(ot::Posix *this, const in6_addr *a2)
{
  v3 = 0;
  if (*this == 254)
  {
    return (*(this + 1) & 0xC0) == 128;
  }

  return v3;
}

uint64_t ot::Posix::InfraNetif::HasLinkLocalAddress(ot::Posix::InfraNetif *this)
{
  v23 = this;
  v22 = 0;
  v21 = 0;
  if (getifaddrs(&v21) < 0)
  {
    v1 = __error();
    v2 = strerror(*v1);
    ot::Posix::Logger<ot::Posix::InfraNetif>::LogCrit2("failed to get netif addresses: %s", v3, v4, v5, v6, v7, v8, v9, v2);
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v10, v11, v12, v13, v14, v15, v16, "HasLinkLocalAddress");
    handle_daemon_exit();
    exit(5);
  }

  for (i = v21; i; i = i->ifa_next)
  {
    if (!strncmp(i->ifa_name, this + 16, 0x10uLL))
    {
      if (i->ifa_addr)
      {
        if (i->ifa_addr->sa_family == 30)
        {
          ifa_addr = i->ifa_addr;
          if (ifa_addr->sa_data[6] == 254 && (ifa_addr->sa_data[7] & 0xC0) == 0x80)
          {
            v22 = 1;
            break;
          }
        }
      }
    }
  }

  freeifaddrs(v21);
  return v22 & 1;
}

void ot::Posix::Logger<ot::Posix::InfraNetif>::LogCrit2(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  otLogPlatArgs(1, "InfraNetif", a1, &a9);
}

{
  ot::Posix::Logger<ot::Posix::InfraNetif>::LogCrit2(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void ot::Posix::Logger<ot::Posix::InfraNetif>::LogWarn2(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  otLogPlatArgs(2, "InfraNetif", a1, &a9);
}

{
  ot::Posix::Logger<ot::Posix::InfraNetif>::LogWarn2(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void ot::Posix::InfraNetif::HandleBackboneStateChange(uint64_t a1, uint64_t a2, int a3)
{
  if (gInstance != a2)
  {
    __assert_rtn("HandleBackboneStateChange", "infra_if.cpp", 374, "gInstance == aInstance");
  }

  ot::Posix::MulticastRoutingManager::HandleStateChange((a1 + 40), a2, a3);
}

void ot::Posix::InfraNetif::SetInfraNetif (ot::Posix::InfraNetif *this, const char *a2)
{
  if (!gInstance)
  {
    __assert_rtn("SetInfraNetif", "infra_if.cpp", 431, "gInstance != nullptr");
  }

  if (ot::Posix::MulticastRoutingManager::IsEnabled((this + 40)))
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
    otExitCodeToString(7);
    otLogCritPlat("%s() at %s:%d: %s", v9, v10, v11, v12, v13, v14, v15, "SetInfraNetif");
    handle_daemon_exit();
    exit(7);
  }

  if (a2 && *a2)
  {
    if (strnlen(a2, 0x10uLL) > 0xF)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
      otExitCodeToString(2);
      otLogCritPlat("%s() at %s:%d: %s", v16, v17, v18, v19, v20, v21, v22, "SetInfraNetif");
      handle_daemon_exit();
      exit(2);
    }

    strcpy(this + 16, a2);
    v39 = if_nametoindex(a2);
    if (!v39)
    {
      ot::Posix::Logger<ot::Posix::InfraNetif>::LogCrit2("Failed to get the index for infra interface %s", v23, v24, v25, v26, v27, v28, v29, a2);
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/infra_if.cpp", 47);
      otExitCodeToString(2);
      otLogCritPlat("%s() at %s:%d: %s", v30, v31, v32, v33, v34, v35, v36, "SetInfraNetif");
      handle_daemon_exit();
      exit(2);
    }

    *(this + 8) = v39;
  }

  else
  {
    ot::Posix::Logger<ot::Posix::InfraNetif>::LogWarn2("Border Routing/Backbone Router feature is disabled: infra interface is missing", v2, v3, v4, v5, v6, v7, v8, v37);
  }
}

void *ot::Posix::InfraNetif::SetUp(ot::Posix::InfraNetif *this)
{
  if (!gInstance)
  {
    __assert_rtn("SetUp", "infra_if.cpp", 476, "gInstance != nullptr");
  }

  ot::Posix::MulticastRoutingManager::SetUp((this + 40));
  v1 = otIp6SetLargeScopeMulticastReceiveCallback(gInstance, platformBackboneProcessMulticast, gInstance);
  v2 = ot::Posix::Mainloop::Manager::Get(v1);
  return ot::Posix::Mainloop::Manager::Add(v2, this);
}

void *ot::Posix::InfraNetif::TearDown(ot::Posix::InfraNetif *this)
{
  v1 = ot::Posix::MulticastRoutingManager::TearDown((this + 40));
  v2 = ot::Posix::Mainloop::Manager::Get(v1);
  return ot::Posix::Mainloop::Manager::Remove(v2, this);
}

uint64_t ot::Posix::InfraNetif::Deinit(uint64_t this)
{
  *(this + 16) = 0;
  *(this + 32) = 0;
  return this;
}

ot::Posix::InfraNetif *ot::Posix::InfraNetif::InfraNetif (ot::Posix::InfraNetif *this)
{
  ot::Posix::InfraNetif::InfraNetif (this);
  return this;
}

{
  ot::Posix::Mainloop::Source::Source(this);
  *this = off_1004C90D8;
  *(this + 8) = 0;
  ot::Posix::MulticastRoutingManager::MulticastRoutingManager((this + 40));
  return this;
}

void ot::Posix::InfraNetif::~InfraNetif (ot::Posix::InfraNetif *this)
{
  ot::Posix::InfraNetif::~InfraNetif (this);
}

{
  ot::Posix::InfraNetif::~InfraNetif (this);
  operator delete();
}

{
  *this = off_1004C90D8;
  ot::Posix::MulticastRoutingManager::~MulticastRoutingManager((this + 40));
  ot::Spinel::SpinelInterface::~SpinelInterface(this);
}

ot::Posix::MulticastRoutingManager *ot::Posix::MulticastRoutingManager::MulticastRoutingManager(ot::Posix::MulticastRoutingManager *this)
{
  ot::Posix::MulticastRoutingManager::MulticastRoutingManager(this);
  return this;
}

{
  ot::Posix::Mainloop::Source::Source(this);
  *this = off_1004C97A8;
  v3 = (this + 16);
  do
  {
    ot::Posix::MulticastRoutingManager::MulticastForwardingCache::MulticastForwardingCache(v3);
    v3 = (v3 + 56);
  }

  while (v3 != (this + 42016));
  *(this + 5252) = 0;
  *(this + 10506) = -1;
  ot::Posix::BackboneIPv6Interface::BackboneIPv6Interface((this + 42032));
  *(this + 42028) = 0;
  return this;
}

void ot::Posix::MulticastRoutingManager::~MulticastRoutingManager(ot::Posix::MulticastRoutingManager *this)
{
  ot::Posix::MulticastRoutingManager::~MulticastRoutingManager(this);
}

{
  *this = off_1004C97A8;
  ot::Posix::BackboneIPv6Interface::~BackboneIPv6Interface((this + 42032));
  ot::Spinel::SpinelInterface::~SpinelInterface(this);
}

{
  ot::Posix::MulticastRoutingManager::~MulticastRoutingManager(this);
  operator delete();
}

void *ot::Posix::Mainloop::Manager::Add(void *this, ot::Posix::Mainloop::Source *a2)
{
  if (*(a2 + 1))
  {
    __assert_rtn("Add", "mainloop.cpp", 41, "aSource.mNext == nullptr");
  }

  *(a2 + 1) = *this;
  *this = a2;
  return this;
}

void *ot::Posix::Mainloop::Manager::Remove(void *this, ot::Posix::Mainloop::Source *a2)
{
  for (i = this; *i; i = (*i + 8))
  {
    if (*i == a2)
    {
      *i = *(a2 + 1);
      break;
    }
  }

  *(a2 + 1) = 0;
  return this;
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,5u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 100;
  return ot::Spinel::RadioSpinel::Get(*a1, 5, "D", v4, &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,1u>(ot::Spinel::RadioSpinel **a1)
{
  v4 = a1;
  v3 = 0;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 1, "ii", &v3, &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,4619u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 4619, "i", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,176u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 176, "i", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,41u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 32;
  return ot::Spinel::RadioSpinel::Get(*a1, 41, "D", v4, &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,34u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 32;
  return ot::Spinel::RadioSpinel::Get(*a1, 34, "D", v4, &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,38u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 38, "c", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,39u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 39, "c", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<3u,2048u>(ot::Spinel::RadioSpinel **a1)
{
  *&v3 = 0x1111111111111111;
  *(&v3 + 1) = 0x1111111111111111;
  qmemcpy(v2, "3333333333333333", sizeof(v2));
  return ot::Spinel::RadioSpinel::SetMacKey(*a1, 8u, 0x64u, &v3, &v2[1], v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,2052u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 2052, "C", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,2053u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 2053, "C", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,2050u>(ot::Spinel::RadioSpinel **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11[1] = a1;
  v11[0] = 0;
  v8 = spinel_datatype_pack(v12, 8u, "X", a4, a5, a6, a7, a8, 0);
  return ot::Spinel::RadioSpinel::GetWithParam(*a1, 2050, v12, v8, "X", v11);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,36u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 36, "c", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,42u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 42, "c", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,44u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 44, "S", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,37u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 37, "c", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,4621u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 4621, "b", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::HandleSpinelCommand<2u,177u>(ot::Spinel::RadioSpinel **a1)
{
  v3 = a1;
  v2 = 0;
  return ot::Spinel::RadioSpinel::Get(*a1, 177, "i", &v2);
}

uint64_t ot::Posix::RcpCapsDiag::DiagProcess(ot::Spinel::RadioSpinel **this, char **a2, char a3)
{
  v5 = 0;
  if (a3 == 2)
  {
    if (!strcmp(a2[1], "capflags"))
    {
      ot::Posix::RcpCapsDiag::ProcessCapabilityFlags(this);
    }

    else if (!strcmp(a2[1], "srcmatchtable"))
    {
      ot::Posix::RcpCapsDiag::ProcessSrcMatchTable(this);
    }

    else if (!strcmp(a2[1], "spinel"))
    {
      ot::Posix::RcpCapsDiag::ProcessSpinel(this);
    }

    else if (!strcmp(a2[1], "spinelspeed"))
    {
      ot::Posix::RcpCapsDiag::ProcessSpinelSpeed(this);
    }

    else
    {
      return 35;
    }
  }

  else
  {
    return 7;
  }

  return v5;
}

ot::Posix::RcpCapsDiag *ot::Posix::RcpCapsDiag::ProcessSpinel(ot::Posix::RcpCapsDiag *this)
{
  v1 = this;
  for (i = 0; i < 4u; ++i)
  {
    this = ot::Posix::RcpCapsDiag::TestSpinelCommands(v1, i);
  }

  return this;
}

uint64_t ot::Posix::RcpCapsDiag::ProcessSpinelSpeed(ot::Posix::RcpCapsDiag *this)
{
  v8 = ot::Posix::RcpCapsDiag::HandleDiagOutput;
  *&__len[3] = this;
  v9 = this;
  *&__len[1] = 0;
  __dst = __b;
  v10 = 256;
  memset(__b, 0, sizeof(__b));
  __len[0] = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  memset(&v14[1] + 4, 0, 12);
  v14[0] = 0;
  v13 = 0;
  ot::Spinel::RadioSpinel::GetDiagOutputCallback(*v9, v14, &v13);
  ot::Spinel::RadioSpinel::SetDiagOutputCallback(*v9, ot::Posix::RcpCapsDiag::HandleDiagOutput, v9);
  strncpy(__b, "echo ", 0xFFuLL);
  __len[0] = 256 - strlen(__b) - 1;
  __len[0] = ot::Lib::Utils::Min<unsigned short>(0xC8u, __len[0]);
  v1 = strlen(__b);
  memset(&__b[v1], 49, __len[0]);
  for (i = 0; i < 0x64u; ++i)
  {
    v2 = v9;
    __s[0] = 0;
    *(v9 + 3) = __s;
    *(v2 + 16) = 500;
    v17 = otPlatTimeGet();
    *&__len[1] = ot::Spinel::RadioSpinel::PlatDiagProcess(*v9, __b);
    if (*&__len[1])
    {
      goto LABEL_6;
    }

    v16 = otPlatTimeGet();
    v15 += v16 - v17;
    v7 = strlen(__b) + 9;
    v14[2] = (v14[2] + v7 + strlen(__s) + 1);
  }

  ot::Spinel::RadioSpinel::SetDiagOutputCallback(*v9, v14[0], v13);
LABEL_6:
  if (*&__len[1])
  {
    v5 = otThreadErrorToString(*&__len[1]);
    return ot::Posix::RcpCapsDiag::Output(v9, "Failed to test the Spinel speed: %s", v5);
  }

  else
  {
    HIDWORD(v14[1]) = 8000000 * v14[2] / v15;
    v3 = ot::ToUlong(HIDWORD(v14[1]));
    v6 = __s;
    snprintf(__s, 0x1F4uLL, "%lu bps", v3);
    return ot::Posix::RcpCapsDiag::OutputFormat(v9, "SpinelSpeed", v6);
  }
}

uint64_t ot::Posix::RcpCapsDiag::TestSpinelCommands(ot::Posix::RcpCapsDiag *this, Category a2)
{
  v10 = a2;
  v2 = ot::Posix::RcpCapsDiag::CategoryToString(a2, a2);
  result = ot::Posix::RcpCapsDiag::Output(this, "\r\n%s :\r\n", v2);
  for (i = &ot::Posix::RcpCapsDiag::sSpinelEntries; i != ot::Posix::RcpCapsDiag::CategoryToString(ot::Posix::RcpCapsDiag::Category)::kCategoryStrings; i += 4)
  {
    if (*i == v10)
    {
      v6 = i[2];
      v4 = i[3];
      v7 = (this + (v4 >> 1));
      if (v4)
      {
        v5 = (*(*v7 + v6))(v7);
      }

      else
      {
        v5 = (v6)(v7);
      }

      result = ot::Posix::RcpCapsDiag::OutputResult(this, i, v5);
    }
  }

  return result;
}

uint64_t ot::Posix::RcpCapsDiag::Output(uint64_t this, const char *a2, ...)
{
  va_start(va, a2);
  if (*(this + 8))
  {
    return (*(this + 8))(a2, va, *(this + 16));
  }

  return this;
}

const char *ot::Posix::RcpCapsDiag::CategoryToString(ot::Posix::RcpCapsDiag *this, Category a2)
{
  if (this >= 4uLL)
  {
    return "invalid";
  }

  else
  {
    return ot::Posix::RcpCapsDiag::CategoryToString(ot::Posix::RcpCapsDiag::Category)::kCategoryStrings[this];
  }
}

uint64_t ot::Posix::RcpCapsDiag::OutputResult(ot::Posix::RcpCapsDiag *a1, uint64_t a2, int a3)
{
  memset(__b, 0, sizeof(__b));
  v7 = spinel_command_to_cstr(*(a2 + 4));
  v6 = spinel_prop_key_to_cstr(*(a2 + 8));
  snprintf(__b, 0x39uLL, "%.*s %.*s", 20, v7, 35, v6);
  v3 = otThreadErrorToString(a3);
  return ot::Posix::RcpCapsDiag::OutputFormat(a1, __b, v3);
}

uint64_t ot::Posix::RcpCapsDiag::SetDiagOutputCallback(uint64_t this, void (*a2)(const char *, char *, void *), void *a3)
{
  *(this + 8) = a2;
  *(this + 16) = a3;
  return this;
}

uint64_t ot::Posix::RcpCapsDiag::TestRadioCapbilityFlags(ot::Spinel::RadioSpinel **this)
{
  v6 = this;
  v5 = 0;
  v4 = 0;
  result = ot::Spinel::RadioSpinel::Get(*this, 4619, "i", &v4);
  v5 = result;
  if (!result)
  {
    ot::Posix::RcpCapsDiag::Output(this, "\r\nRadio Capbility Flags :\r\n");
    ot::Posix::RcpCapsDiag::OutputRadioCapFlags(this, 1, v4, ot::Posix::RcpCapsDiag::TestRadioCapbilityFlags(void)::kRadioThread11Flags, 3u);
    ot::Posix::RcpCapsDiag::OutputRadioCapFlags(this, 2, v4, &ot::Posix::RcpCapsDiag::TestRadioCapbilityFlags(void)::kRadioThread12Flags, 2u);
    result = ot::Posix::RcpCapsDiag::OutputRadioCapFlags(this, 3, v4, ot::Posix::RcpCapsDiag::TestRadioCapbilityFlags(void)::kRadioUtilsFlags, 4u);
  }

  if (v5)
  {
    v2 = otThreadErrorToString(v5);
    return ot::Posix::RcpCapsDiag::Output(this, "Failed to get radio capability flags: %s", v2);
  }

  return result;
}

uint64_t ot::Posix::RcpCapsDiag::TestSpinelCapbilityFlags(ot::Spinel::RadioSpinel **this)
{
  v6 = this;
  v5 = 0;
  v4 = 100;
  result = ot::Spinel::RadioSpinel::Get(*this, 5, "D", v7, &v4);
  v5 = result;
  if (!result)
  {
    ot::Posix::RcpCapsDiag::Output(this, "\r\nSpinel Capbility Flags :\r\n");
    ot::Posix::RcpCapsDiag::OutputSpinelCapFlags(this, 0, v7, v4, ot::Posix::RcpCapsDiag::TestSpinelCapbilityFlags(void)::kSpinelBasicFlags, 3u);
    result = ot::Posix::RcpCapsDiag::OutputSpinelCapFlags(this, 3, v7, v4, ot::Posix::RcpCapsDiag::TestSpinelCapbilityFlags(void)::kSpinelUtilsFlags, 3u);
  }

  if (v5)
  {
    v2 = otThreadErrorToString(v5);
    return ot::Posix::RcpCapsDiag::Output(this, "Failed to get Spinel capbility flags: %s", v2);
  }

  return result;
}

uint64_t ot::Posix::RcpCapsDiag::OutputRadioCapFlags(ot::Posix::RcpCapsDiag *this, Category a2, int a3, const unsigned int *a4, unsigned __int16 a5)
{
  v5 = ot::Posix::RcpCapsDiag::CategoryToString(a2, a2);
  result = ot::Posix::RcpCapsDiag::Output(this, "\r\n%s :\r\n", v5);
  for (i = 0; i < a5; ++i)
  {
    v8 = ot::Posix::RcpCapsDiag::RadioCapbilityToString(a4[i]);
    v7 = ot::Posix::RcpCapsDiag::SupportToString(((a3 & a4[i]) != 0));
    result = ot::Posix::RcpCapsDiag::OutputFormat(this, v8, v7);
  }

  return result;
}

uint64_t ot::Posix::RcpCapsDiag::OutputFormat(ot::Posix::RcpCapsDiag *this, const char *a2, const char *a3)
{
  v6 = strlen(a2);
  if (v6 <= 0x38u)
  {
    v4 = v6;
  }

  else
  {
    v4 = 56;
  }

  return ot::Posix::RcpCapsDiag::Output(this, "%.*s %s %s\r\n", 56, a2, &ot::Posix::RcpCapsDiag::OutputFormat(char const*,char const*)::kPadding[v4], a3);
}

char *ot::Posix::RcpCapsDiag::RadioCapbilityToString(ot::Posix::RcpCapsDiag *this)
{
  v4 = this;
  v3 = "invalid";
  v2 = 0;
  while ((v4 & 1) == 0)
  {
    if (v2 >= 9uLL)
    {
      return v3;
    }

    v4 >>= 1;
    ++v2;
  }

  return ot::Posix::RcpCapsDiag::RadioCapbilityToString::kCapbilityStrings[v2];
}

const char *ot::Posix::RcpCapsDiag::SupportToString(ot::Posix::RcpCapsDiag *this)
{
  if (this)
  {
    return "OK";
  }

  else
  {
    return "NotSupported";
  }
}

uint64_t ot::Posix::RcpCapsDiag::OutputSpinelCapFlags(ot::Posix::RcpCapsDiag *this, Category a2, unsigned __int8 *a3, unsigned int a4, const unsigned int *a5, unsigned __int16 a6)
{
  v23 = this;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  v16 = this;
  v6 = ot::Posix::RcpCapsDiag::CategoryToString(a2, a2);
  result = ot::Posix::RcpCapsDiag::Output(v16, "\r\n%s :\r\n", v6);
  for (i = 0; i < v18; ++i)
  {
    v8 = spinel_capability_to_cstr(v19[i]);
    v15 = __str;
    snprintf(__str, 0x28uLL, "SPINEL_CAPS_%s", v8);
    IsSpinelCapabilitySupported = ot::Posix::RcpCapsDiag::IsSpinelCapabilitySupported(v16, v21, v20, v19[i], v9, v10, v11, v12);
    v14 = ot::Posix::RcpCapsDiag::SupportToString(IsSpinelCapabilitySupported);
    result = ot::Posix::RcpCapsDiag::OutputFormat(v16, v15, v14);
  }

  return result;
}

uint64_t ot::Posix::RcpCapsDiag::IsSpinelCapabilitySupported(ot::Posix::RcpCapsDiag *this, const unsigned __int8 *a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = this;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = 0;
  while (v13)
  {
    v10 = 0;
    v9 = spinel_datatype_unpack(v14, v13, "i", a4, a5, a6, a7, a8, &v10);
    if (v9 <= 0)
    {
      break;
    }

    if (v10 == v12)
    {
      v11 = 1;
      return v11 & 1;
    }

    v14 += v9;
    v13 -= v9;
  }

  return v11 & 1;
}

uint64_t ot::Posix::RcpCapsDiag::OutputShortSrcMatchTableSize(ot::Spinel::RadioSpinel **this)
{
  i = 0;
  if (!ot::Spinel::RadioSpinel::Set(*this, 4867, "b", 1) && !ot::Spinel::RadioSpinel::Set(*this, 4868, 0))
  {
      ;
    }
  }

  if (i)
  {
    ot::Spinel::RadioSpinel::Set(*this, 4868, 0);
    ot::Spinel::RadioSpinel::Set(*this, 4867, "b", 0);
  }

  return ot::Posix::RcpCapsDiag::OutputFormat(this, "ShortSrcMatchTableSize", i);
}

uint64_t ot::Posix::RcpCapsDiag::OutputExtendedSrcMatchTableSize(ot::Spinel::RadioSpinel **this)
{
  v4 = 0x8877665544332211;
  i = 0;
  if (!ot::Spinel::RadioSpinel::Set(*this, 4867, "b", 1) && !ot::Spinel::RadioSpinel::Set(*this, 4869, 0))
  {
    for (i = 0; i < 0x200u; ++i)
    {
      LOWORD(v4) = i;
      if (ot::Spinel::RadioSpinel::Insert(*this, 4869, "E", &v4))
      {
        break;
      }
    }
  }

  if (i)
  {
    ot::Spinel::RadioSpinel::Set(*this, 4869, 0);
    ot::Spinel::RadioSpinel::Set(*this, 4867, "b", 0);
  }

  return ot::Posix::RcpCapsDiag::OutputFormat(this, "ExtendedSrcMatchTableSize", i);
}

uint64_t ot::Posix::RcpCapsDiag::HandleDiagOutput(uint64_t this, const char *a2, va_list a3)
{
  v4 = this;
  if (*(this + 24))
  {
    if (*(this + 32))
    {
      this = vsnprintf(*(this + 24), *(this + 32), a2, a3);
      if ((this & 0x80000000) == 0)
      {
        if (this <= *(v4 + 32))
        {
          v3 = this;
        }

        else
        {
          v3 = *(v4 + 32);
        }

        *(v4 + 24) += v3;
        *(v4 + 32) -= v3;
      }
    }
  }

  return this;
}

uint64_t ot::Lib::Utils::Min<unsigned short>(unsigned __int16 a1, unsigned __int16 a2)
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
  return ot::Lib::Utils::Min<unsigned short>(a1, a2);
}

uint64_t otPlatSetMcuPowerState(uint64_t a1, unsigned int a2)
{
  v3 = 0;
  if (a2 > 1)
  {
    return 1;
  }

  else
  {
    gPlatMcuPowerState = a2;
  }

  return v3;
}

uint64_t SocketWithCloseExec(int a1, int a2, int a3, int a4)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = a4;
  v22 = 0;
  v21 = socket(a1, a2, a3);
  if (v21 == -1)
  {
    perror("socket(SOCK_CLOEXEC)");
  }

  else
  {
    v22 = fcntl(v21, 1, 0);
    if (v22 == -1)
    {
      perror("fcntl(F_GETFD)");
    }

    else
    {
      if (v23 == 1)
      {
        v4 = 5;
      }

      else
      {
        v4 = 1;
      }

      v22 |= v4;
      v22 = fcntl(v21, 2, v22);
      if (v22 == -1)
      {
        perror("fcntl(F_SETFD)");
      }
    }
  }

  if (v22 == -1)
  {
    if (close(v21))
    {
      v20 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/misc.cpp", 47);
      if (v20)
      {
        v19 = v20 + 1;
      }

      else
      {
        v19 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/misc.cpp";
      }

      v17 = v19;
      v18 = 5;
      v5 = otExitCodeToString(5);
      v14 = v17;
      v15 = 118;
      v16 = v5;
      otLogCritPlat("%s() at %s:%d: %s", v6, v7, v8, v9, v10, v11, v12, "SocketWithCloseExec");
      handle_daemon_exit();
      exit(v18);
    }

    return -1;
  }

  return v21;
}

void ot::Posix::MulticastRoutingManager::processLargeScopeMulticastTransmit(ot::Posix::MulticastRoutingManager *this, char *a2, uint64_t *a3)
{
  v26 = this;
  v25 = a2;
  v24 = a3;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  if (!gInstance)
  {
    __assert_rtn("processLargeScopeMulticastTransmit", "multicast_routing.cpp", 92, "gInstance != nullptr");
  }

  v20[0] = otThreadGetDeviceRole(gInstance) != 0;
  v20[1] = 0;
  v23 = otIp6NewMessage(gInstance, v20);
  if (v23)
  {
    if (*v24 >= 4 && !*v25 && !v25[1])
    {
      *v24 -= 4;
      v21 = 4;
    }

    v18 = *v24;
    otThreadErrorToString(0);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager::processLargeScopeMulticastTransmit Packet to NCP (%hu bytes): %s", v3, v4, v5, v6, v7, v8, v9, v18);
    v22 = otMessageAppend(v23, &v25[v21], *v24);
    if (!v22)
    {
      otMessageSetTimestamp(v23);
      v22 = otIp6Send(gInstance, v23);
      v23 = 0;
    }
  }

  else
  {
    v22 = 3;
  }

  if (v23)
  {
    otMessageFree(v23);
  }

  if (v22)
  {
    v19 = v22;
    v17 = otThreadErrorToString(v22);
    otThreadErrorToString(v19);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2("MulticastRoutingManager::processLargeScopeMulticastTransmit Failed to transmit, error:%s: %s", v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

void ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  otLogPlatArgs(4, "McastRtMgr", a1, &a9);
}

{
  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  otLogPlatArgs(2, "McastRtMgr", a1, &a9);
}

{
  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void *ot::Posix::MulticastRoutingManager::SetUp(ot::Posix::MulticastRoutingManager *this)
{
  if (!gInstance)
  {
    __assert_rtn("SetUp", "multicast_routing.cpp", 147, "gInstance != nullptr");
  }

  v1 = otBackboneRouterSetMulticastListenerCallback(gInstance, ot::Posix::MulticastRoutingManager::HandleBackboneMulticastListenerEvent, this);
  v2 = ot::Posix::Mainloop::Manager::Get(v1);
  return ot::Posix::Mainloop::Manager::Add(v2, this);
}

void ot::Posix::MulticastRoutingManager::HandleBackboneMulticastListenerEvent(ot::Posix::MulticastRoutingManager *a1, int a2, const ot::Ip6::Address *a3)
{
  ot::Posix::MulticastRoutingManager::HandleBackboneMulticastListenerEvent(a1, a2, a3);
}

{
  if (a2)
  {
    if (a2 == 1)
    {
      v11 = otThreadErrorToString(0);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager::HandleBackboneMulticastListenerEvent Removed: %s", v12, v13, v14, v15, v16, v17, v18, v11);
      ot::Posix::MulticastRoutingManager::Remove(a1, a3);
    }
  }

  else
  {
    v3 = otThreadErrorToString(0);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager::HandleBackboneMulticastListenerEvent Added: %s", v4, v5, v6, v7, v8, v9, v10, v3);
    ot::Posix::MulticastRoutingManager::Add(a1, a3);
  }
}

void *ot::Posix::MulticastRoutingManager::TearDown(ot::Posix::MulticastRoutingManager *this)
{
  if (!gInstance)
  {
    __assert_rtn("TearDown", "multicast_routing.cpp", 160, "gInstance != nullptr");
  }

  v1 = otThreadErrorToString(0);
  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager::TearDown: %s", v2, v3, v4, v5, v6, v7, v8, v1);
  v9 = otBackboneRouterSetMulticastListenerCallback(gInstance, 0, 0);
  v10 = ot::Posix::Mainloop::Manager::Get(v9);
  return ot::Posix::Mainloop::Manager::Remove(v10, this);
}

void ot::Posix::MulticastRoutingManager::Add(ot::Posix::MulticastRoutingManager *this, const ot::Ip6::Address *a2)
{
  if (ot::Posix::MulticastRoutingManager::IsEnabled(this))
  {
    ot::Posix::MulticastRoutingManager::UnblockInboundMulticastForwardingCache(this, a2);
    ot::Ip6::Address::GetBytes(a2);
    if (ot::Posix::BackboneIPv6Interface::subscribeMulticastAddress((this + 42032), v2))
    {
      ot::Ip6::Address::ToString(a2, v28);
      ot::String<(unsigned short)40>::AsCString(v28);
      otThreadErrorToString(0);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager: %s: Backbone interface subscribed to %s: %s", v10, v11, v12, v13, v14, v15, v16, "Add");
    }

    else
    {
      ot::Ip6::Address::ToString(a2, v29);
      v24 = ot::String<(unsigned short)40>::AsCString(v29);
      otThreadErrorToString(1);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2("MulticastRoutingManager:Failed to subscribe large scope multicast %s on backbone interface: %s", v3, v4, v5, v6, v7, v8, v9, v24);
    }

    ot::Ip6::Address::ToString(a2, v27);
    ot::String<(unsigned short)40>::AsCString(v27);
    otThreadErrorToString(0);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("%s: %s: %s", v17, v18, v19, v20, v21, v22, v23, "Add");
  }
}

void ot::Posix::MulticastRoutingManager::Remove(ot::Posix::MulticastRoutingManager *this, const ot::Ip6::Address *a2)
{
  if (ot::Posix::MulticastRoutingManager::IsEnabled(this))
  {
    ot::Posix::MulticastRoutingManager::RemoveInboundMulticastForwardingCache(this, a2);
    ot::Ip6::Address::GetBytes(a2);
    if (ot::Posix::BackboneIPv6Interface::unSubscribeMulticastAddress((this + 42032), v2))
    {
      ot::Ip6::Address::ToString(a2, v28);
      ot::String<(unsigned short)40>::AsCString(v28);
      otThreadErrorToString(0);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager: %s: Backbone interface unsubscribed to %s: %s", v10, v11, v12, v13, v14, v15, v16, "Remove");
    }

    else
    {
      ot::Ip6::Address::ToString(a2, v29);
      v24 = ot::String<(unsigned short)40>::AsCString(v29);
      otThreadErrorToString(1);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2("MulticastRoutingManager:Failed to unsubscribe large scope multicast %s on backbone interface: %s", v3, v4, v5, v6, v7, v8, v9, v24);
    }

    ot::Ip6::Address::ToString(a2, v27);
    ot::String<(unsigned short)40>::AsCString(v27);
    otThreadErrorToString(0);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("%s: %s: %s", v17, v18, v19, v20, v21, v22, v23, "Remove");
  }
}

void ot::Posix::MulticastRoutingManager::UnblockInboundMulticastForwardingCache(ot::Posix::MulticastRoutingManager *this, const ot::Ip6::Address *a2)
{
  v10 = this + 16;
  v9 = this + 42016;
  while (v10 != v9)
  {
    if (ot::Posix::MulticastRoutingManager::MulticastForwardingCache::IsValid(v10) && v10[48] == 1 && v10[49] && !ot::Unequatable<ot::Ip6::Address>::operator!=(v10 + 16, a2))
    {
      ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Set(v10, 1, 0);
      ot::Posix::MulticastRoutingManager::MifIndexToString(v10[48]);
      ot::Ip6::Address::ToString(v10, v13);
      ot::String<(unsigned short)40>::AsCString(v13);
      ot::Ip6::Address::ToString((v10 + 16), v12);
      ot::String<(unsigned short)40>::AsCString(v12);
      ot::Posix::MulticastRoutingManager::MifIndexToString(0);
      otThreadErrorToString(0);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager: %s: %s %s => %s %s: %s", v2, v3, v4, v5, v6, v7, v8, "UnblockInboundMulticastForwardingCache");
    }

    v10 += 56;
  }
}

void ot::Ip6::Address::GetBytes(ot::Ip6::Address *this)
{
  ;
}

{
  ot::Ip6::Address::GetBytes(this);
}

uint64_t ot::String<(unsigned short)40>::AsCString(uint64_t a1)
{
  return a1 + 12;
}

{
  return ot::String<(unsigned short)40>::AsCString(a1);
}

uint64_t ot::Posix::MulticastRoutingManager::RemoveInboundMulticastForwardingCache(uint64_t this, const ot::Ip6::Address *a2)
{
  v2 = this;
  v4 = (this + 16);
  v3 = (this + 42016);
  while (v4 != v3)
  {
    this = ot::Posix::MulticastRoutingManager::MulticastForwardingCache::IsValid(v4);
    if ((this & 1) != 0 && v4[48] == 1)
    {
      this = ot::Equatable<ot::Ip6::Address>::operator==(v4 + 16, a2);
      if (this)
      {
        this = ot::Posix::MulticastRoutingManager::RemoveMulticastForwardingCache(v2, v4);
      }
    }

    v4 += 56;
  }

  return this;
}

void ot::Posix::MulticastRoutingManager::UpdateMldReport(ot::Posix::MulticastRoutingManager *this, const ot::Ip6::Address *a2, char a3)
{
  v26 = this;
  v25 = a2;
  v24 = a3;
  InfraNetifName = otSysGetInfraNetifName(this);
  v23 = if_nametoindex(InfraNetifName);
  ot::Ip6::Address::GetBytes(v25);
  v22 = *v4;
  if (v24)
  {
    v5 = 12;
  }

  else
  {
    v5 = 13;
  }

  v21 = setsockopt(*(this + 10506), 41, v5, &v22, 0x14u) != 0;
  if (v21)
  {
    ot::Ip6::Address::ToString(v25, v27);
    ot::String<(unsigned short)40>::AsCString(v27);
    otThreadErrorToString(v21);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2("%s: address %s %s: %s", v13, v14, v15, v16, v17, v18, v19, "UpdateMldReport");
  }

  else
  {
    ot::Ip6::Address::ToString(v25, v28);
    ot::String<(unsigned short)40>::AsCString(v28);
    otThreadErrorToString(0);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("%s: address %s %s: %s", v6, v7, v8, v9, v10, v11, v12, "UpdateMldReport");
  }
}

uint64_t ot::Posix::MulticastRoutingManager::GetMulticastListenerCount(ot::Posix::MulticastRoutingManager *this)
{
  v6 = this;
  v5 = 0;
  v4 = 0;
  v2 = 0;
  while (!otBackboneRouterMulticastListenerGetNext(gInstance, &v4, v3))
  {
    ++v2;
  }

  return v2;
}

uint64_t ot::Posix::MulticastRoutingManager::HasMulticastListener(ot::Posix::MulticastRoutingManager *this, const ot::Ip6::Address *a2)
{
  v7 = this;
  v6 = a2;
  v5 = 0;
  v4 = 0;
  while (!otBackboneRouterMulticastListenerGetNext(gInstance, &v4, v3))
  {
    if (!ot::Unequatable<ot::Ip6::Address>::operator!=(v3, v6))
    {
      v5 = 1;
      return v5 & 1;
    }
  }

  return v5 & 1;
}

BOOL ot::Unequatable<ot::Ip6::Address>::operator!=(const void *a1, const void *a2)
{
  return !ot::Equatable<ot::Ip6::Address>::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::Ip6::Address>::operator!=(a1, a2);
}

uint64_t ot::Posix::BackboneIPv6Interface::GetBackboneBPFFd(ot::Posix::BackboneIPv6Interface *this)
{
  return *(this + 19);
}

{
  return ot::Posix::BackboneIPv6Interface::GetBackboneBPFFd(this);
}

uint64_t ot::Posix::MulticastRoutingManager::can_read(ot::Posix::MulticastRoutingManager *this)
{
  v5 = this;
  if (ot::Posix::MulticastRoutingManager::IsEnabled(this))
  {
    if (ot::Posix::BackboneIPv6Interface::can_read((this + 42032), &v4, &v3) == 1 && ot::Posix::MulticastRoutingManager::ProcessMulticastMessagesFromBackBone(this, &v4, &v3) == 1)
    {
      v6 = 1;
    }

    else
    {
      ot::Posix::BackboneIPv6Interface::cleanupReadBuffer(this + 42032);
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void ot::Posix::MulticastRoutingManager::ExpireMulticastForwardingCache(ot::Posix::MulticastRoutingManager *this)
{
  v11 = otPlatTimeGet();
  if (v11 >= *(this + 5252) + 60000000)
  {
    *(this + 5252) = v11;
    for (i = (this + 16); i != (this + 42016); i = (i + 56))
    {
      if (ot::Posix::MulticastRoutingManager::MulticastForwardingCache::IsValid(i))
      {
        v8 = *(i + 4) + 300000000;
      }
    }

    ot::Posix::MulticastRoutingManager::DumpMulticastForwardingCache(this, v1, v2, v3, v4, v5, v6, v7);
  }
}

uint64_t ot::Posix::MulticastRoutingManager::ProcessMulticastMessagesFromBackBone(ot::Posix::MulticastRoutingManager *this, __n128 *a2, in6_addr *a3)
{
  v24 = this;
  v23 = a2;
  v22 = a3;
  v21 = 0;
  ot::Ip6::Address::SetBytes(&v20, a2);
  ot::Ip6::Address::SetBytes(&v19, v22);
  if (ot::Posix::MulticastRoutingManager::HasMulticastListener(this, &v19))
  {
    v21 = ot::Posix::MulticastRoutingManager::AddMulticastForwardingCache(this, &v20, &v19, 1);
    if (v21)
    {
      ot::Ip6::Address::ToString(&v20, v27);
      ot::Ip6::Address::ToString(&v19, v26);
      otThreadErrorToString(1);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2("%s AddMulticastForwardingCache returned false src(%s) dst(%s): %s", v10, v11, v12, v13, v14, v15, v16, "ProcessMulticastMessagesFromBackBone");
      v25 = 0;
    }

    else
    {
      v25 = 1;
    }
  }

  else
  {
    ot::Ip6::Address::ToString(&v20, v29);
    ot::String<(unsigned short)40>::AsCString(v29);
    ot::Ip6::Address::ToString(&v19, v28);
    ot::String<(unsigned short)40>::AsCString(v28);
    otThreadErrorToString(1);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2("%s Does not have a multicast listener, hence returned false src(%s) dst(%s): %s", v3, v4, v5, v6, v7, v8, v9, "ProcessMulticastMessagesFromBackBone");
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t ot::Posix::MulticastRoutingManager::AddMulticastForwardingCache(ot::Posix::MulticastRoutingManager *a1, ot::Ip6::Address *a2, const ot::Ip6::Address *a3, char a4)
{
  v18 = 0;
  otThreadErrorToString(0);
  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager:%s:: %s", v4, v5, v6, v7, v8, v9, v10, "AddMulticastForwardingCache");
  v17 = -1;
  if (!a4 || a4 == 1)
  {
    ot::Posix::MulticastRoutingManager::ExpireMulticastForwardingCache(a1);
    if (a4 == 1)
    {
      if (ot::Posix::MulticastRoutingManager::HasMulticastListener(a1, a3))
      {
        v17 = 0;
      }
    }

    else
    {
      if (ot::Ip6::Address::IsLinkLocalUnicast(a2))
      {
        return 0;
      }

      ot::Ip6::Address::GetPrefix(a2);
      v15 = v11;
      MeshLocalPrefix = otThreadGetMeshLocalPrefix(gInstance);
      v13 = ot::AsCoreType<otIp6NetworkPrefix>(MeshLocalPrefix);
      if (!ot::Unequatable<ot::Ip6::NetworkPrefix>::operator!=(v15, v13))
      {
        return 0;
      }

      if (ot::Ip6::Address::GetScope(a3) > 3)
      {
        v17 = 1;
      }
    }

    ot::Posix::MulticastRoutingManager::SaveMulticastForwardingCache(a1, a2, a3, a4, v17);
    return v18;
  }

  return 7;
}

void ot::Posix::MulticastRoutingManager::ProcessMulticastMessagesToBackBone(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  if (ot::Posix::MulticastRoutingManager::IsEnabled(a1))
  {
    WORD2(v23) = 0;
    LODWORD(v23) = otMessageGetLength(v25);
    v22 = 0;
    v21 = 1280;
    v20 = 0;
    if (gInstance != v24)
    {
      __assert_rtn("ProcessMulticastMessagesToBackBone", "multicast_routing.cpp", 450, "gInstance == aContext");
    }

    if (v23 > 0x500u)
    {
      __assert_rtn("ProcessMulticastMessagesToBackBone", "multicast_routing.cpp", 451, "length <= OPENTHREAD_CONFIG_IP6_MAX_DATAGRAM_LENGTH");
    }

    if (otMessageRead(v25, 0, &v27[v22], v21) == v23)
    {
      v20 = v27;
      ot::Ip6::Address::SetBytes(&v19, v28);
      ot::Ip6::Address::SetBytes(&v18, (v20 + 24));
      *(&v23 + 2) = ot::Posix::MulticastRoutingManager::AddMulticastForwardingCache(a1, &v19, &v18, 0);
      if (*(&v23 + 2))
      {
        otThreadErrorToString(1);
        ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogWarn2("%s MulticastRoutingManager AddMulticastForwardingCache returns false.: %s", v10, v11, v12, v13, v14, v15, v16, "ProcessMulticastMessagesToBackBone");
      }

      else
      {
        ot::Posix::BackboneIPv6Interface::send_packet((a1 + 42032), v27, v23);
      }
    }

    else
    {
      *(&v23 + 2) = 3;
    }
  }

  else
  {
    otThreadErrorToString(0);
    ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("%s MulticastRoutingManager is not enabled. Return here : %s", v3, v4, v5, v6, v7, v8, v9, "ProcessMulticastMessagesToBackBone");
  }
}

uint64_t ot::Posix::MulticastRoutingManager::FinalizeMulticastRouterSock(ot::Posix::MulticastRoutingManager *this)
{
  otThreadErrorToString(0);
  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("MulticastRoutingManager:%s:: %s", v1, v2, v3, v4, v5, v6, v7, "FinalizeMulticastRouterSock");
  result = ot::Posix::MulticastRoutingManager::IsEnabled(this);
  if (result)
  {
    result = close(*(this + 10506));
    *(this + 10506) = -1;
  }

  return result;
}

void ot::Ip6::Address::GetPrefix(ot::Ip6::Address *this)
{
  ;
}

{
  ot::Ip6::Address::GetPrefix(this);
}

BOOL ot::Unequatable<ot::Ip6::NetworkPrefix>::operator!=(const void *a1, const void *a2)
{
  return !ot::Equatable<ot::Ip6::NetworkPrefix>::operator==(a1, a2);
}

{
  return ot::Unequatable<ot::Ip6::NetworkPrefix>::operator!=(a1, a2);
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ot::AsCoreType<otIp6NetworkPrefix>(uint64_t a1)
{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 85, "(aObject) != nullptr");
  }
}

{
  if (!a1)
  {
    __assert_rtn("AsCoreType", "as_core_type.hpp", 68, "(aObject) != nullptr");
  }
}

unint64_t ot::Posix::MulticastRoutingManager::SaveMulticastForwardingCache(ot::Posix::MulticastRoutingManager *a1, _OWORD *a2, _OWORD *a3, char a4, char a5)
{
  v10 = 0;
  v9 = 0;
  v8 = (a1 + 16);
  v7 = (a1 + 42016);
  while (v8 != v7)
  {
    if (ot::Posix::MulticastRoutingManager::MulticastForwardingCache::IsValid(v8))
    {
      if (ot::Equatable<ot::Ip6::Address>::operator==(v8, a2) && ot::Equatable<ot::Ip6::Address>::operator==(v8 + 2, a3))
      {
        return ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Set(v8, a4, a5);
      }

      if (!v9 || v8[4] < *(v9 + 4))
      {
        v9 = v8;
      }
    }

    else if (!v10)
    {
      v10 = v8;
    }

    v8 += 7;
  }

  if (v10)
  {
    return ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Set(v10, a2, a3, a4, a5);
  }

  ot::Posix::MulticastRoutingManager::RemoveMulticastForwardingCache(a1, v9);
  return ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Set(v9, a2, a3, a4, a5);
}

BOOL ot::Posix::MulticastRoutingManager::MulticastForwardingCache::IsValid(ot::Posix::MulticastRoutingManager::MulticastForwardingCache *this)
{
  return *(this + 48) != 255;
}

{
  return ot::Posix::MulticastRoutingManager::MulticastForwardingCache::IsValid(this);
}

unint64_t ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Set(uint64_t a1, char a2, char a3)
{
  *(a1 + 48) = a2;
  *(a1 + 49) = a3;
  *(a1 + 40) = 0;
  result = otPlatTimeGet();
  *(a1 + 32) = result;
  return result;
}

const char *ot::Posix::MulticastRoutingManager::MifIndexToString(unsigned __int8 a1)
{
  v2 = "Unknown";
  switch(a1)
  {
    case 0u:
      return "Thread";
    case 1u:
      return "Backbone";
    case 0xFFu:
      return "None";
  }

  return v2;
}

BOOL ot::Equatable<ot::Ip6::Address>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 0x10uLL) == 0;
}

{
  return ot::Equatable<ot::Ip6::Address>::operator==(a1, a2);
}

uint64_t ot::Posix::MulticastRoutingManager::RemoveMulticastForwardingCache(ot::Posix::MulticastRoutingManager *this, ot::Posix::MulticastRoutingManager::MulticastForwardingCache *a2)
{
  ot::Posix::MulticastRoutingManager::MifIndexToString(*(a2 + 48));
  ot::Ip6::Address::ToString(a2, v12);
  ot::String<(unsigned short)40>::AsCString(v12);
  ot::Ip6::Address::ToString((a2 + 16), v11);
  ot::String<(unsigned short)40>::AsCString(v11);
  ot::Posix::MulticastRoutingManager::MifIndexToString(*(a2 + 49));
  otThreadErrorToString(0);
  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogInfo2("%s: %s %s => %s %s: %s", v2, v3, v4, v5, v6, v7, v8, "RemoveMulticastForwardingCache");
  return ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Erase(a2);
}

void ot::Posix::MulticastRoutingManager::DumpMulticastForwardingCache(ot::Posix::MulticastRoutingManager *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogDebg2("==================== MFC ENTRIES ====================", a2, a3, a4, a5, a6, a7, a8, v22);
  for (i = this + 16; i != (this + 42016); i += 56)
  {
    if (ot::Posix::MulticastRoutingManager::MulticastForwardingCache::IsValid(i))
    {
      v24 = ot::Posix::MulticastRoutingManager::MifIndexToString(i[48]);
      ot::Ip6::Address::ToString(i, v28);
      ot::String<(unsigned short)40>::AsCString(v28);
      ot::Ip6::Address::ToString((i + 16), v27);
      ot::String<(unsigned short)40>::AsCString(v27);
      ot::Posix::MulticastRoutingManager::MifIndexToString(i[49]);
      ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogDebg2("%s %s => %s %s", v15, v16, v17, v18, v19, v20, v21, v24);
    }
  }

  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogDebg2("=====================================================", v8, v9, v10, v11, v12, v13, v14, v23);
}

void ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogDebg2(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  otLogPlatArgs(5, "McastRtMgr", a1, &a9);
}

{
  ot::Posix::Logger<ot::Posix::MulticastRoutingManager>::LogDebg2(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

void ot::Posix::MulticastRoutingManager::HandleStateChange(ot::Posix::MulticastRoutingManager *a1, uint64_t a2, int a3)
{
  if ((a3 & 0x2000000) != 0)
  {
    State = otBackboneRouterGetState(a2);
    if (State <= 1)
    {
      ot::Posix::MulticastRoutingManager::Disable(a1);
    }

    else if (State == 2)
    {
      ot::Posix::MulticastRoutingManager::Enable(a1);
    }
  }
}

unint64_t ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Set(_OWORD *a1, _OWORD *a2, _OWORD *a3, char a4, char a5)
{
  *a1 = *a2;
  a1[1] = *a3;
  return ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Set(a1, a4, a5);
}

unint64_t ot::Posix::MulticastRoutingManager::MulticastForwardingCache::SetValidPktCnt(ot::Posix::MulticastRoutingManager::MulticastForwardingCache *this, uint64_t a2)
{
  *(this + 5) = a2;
  result = otPlatTimeGet();
  *(this + 4) = result;
  return result;
}

uint64_t ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Erase(uint64_t this)
{
  *(this + 48) = -1;
  return this;
}

{
  return ot::Posix::MulticastRoutingManager::MulticastForwardingCache::Erase(this);
}

BOOL ot::Equatable<ot::Ip6::NetworkPrefix>::operator==(const void *a1, const void *a2)
{
  return memcmp(a1, a2, 8uLL) == 0;
}

{
  return ot::Equatable<ot::Ip6::NetworkPrefix>::operator==(a1, a2);
}

uint64_t __cxx_global_var_init_2()
{
  return boost::optional_ns::in_place_init_t::in_place_init_t(&boost::optional_ns::in_place_init);
}

{
  v1 = &ot::mAppMap;
  do
  {
    std::map<unsigned long long,ot::appPacketInfo>::map[abi:dn200100](v1);
    v1 = (v1 + 24);
  }

  while (v1 != &ot::mAppQueue);
  return __cxa_atexit(__cxx_global_array_dtor_0, 0, &_mh_execute_header);
}

void platformNetifStateChange(uint64_t a1, int a2)
{
  if ((a2 & 0x1000000) != 0)
  {
    UpdateLink(a1);
  }
}

void UpdateLink(uint64_t a1)
{
  if (gInstance != a1)
  {
    __assert_rtn("UpdateLink", "netif.cpp", 725, "gInstance == aInstance");
  }

  IsEnabled = otIp6IsEnabled(a1);
  SetLinkState(a1, IsEnabled);
}

uint64_t platformNetifInit(uint64_t a1)
{
  sIpFd = SocketWithCloseExec(30, 2, 0, 1);
  if (sIpFd < 0)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v1, v2, v3, v4, v5, v6, v7, "platformNetifInit");
    handle_daemon_exit();
    exit(5);
  }

  platformConfigureNetLink();
  platformConfigureTunDevice(a1);
  result = ne_tunnel_get_ifindex();
  gNetifIndex = result;
  if (!result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp", 47);
    otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", v9, v10, v11, v12, v13, v14, v15, "platformNetifInit");
    handle_daemon_exit();
    exit(1);
  }

  return result;
}

uint64_t platformConfigureNetLink(void)
{
  sNetlinkFd = SocketWithCloseExec(17, 3, 0, 1);
  if (sNetlinkFd < 0)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v0, v1, v2, v3, v4, v5, v6, "platformConfigureNetLink");
    handle_daemon_exit();
    exit(5);
  }

  result = fcntl(sNetlinkFd, 4, 4);
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v8, v9, v10, v11, v12, v13, v14, "platformConfigureNetLink");
    handle_daemon_exit();
    exit(5);
  }

  return result;
}

BOOL platformConfigureTunDevice(uint64_t a1)
{
  v5 = a1;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4[1] = 20;
  sTunFd = ne_tunnel_open();
  ne_tunnel_name(&gNetifName, 20);
  if (gVirtualInterfaceReadBufferSize)
  {
    v4[0] = gVirtualInterfaceReadBufferSize;
    if (setsockopt(sTunFd, 0xFFFF, 4098, v4, 4u) < 0)
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
      {
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_1_4_0(v9, v4[0]);
          _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "TunnelIPv6Interface::TunnelIPv6Interface socket read buffer size could not be set to %d bytes", v9, 8u);
        }
      }

      else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v8, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v8, 0x16u);
      }
    }

    v2 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v2 && (syslog_is_the_mask_enabled(7) & 1) != 0)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_0_1_4_0(v7, v4[0]);
        _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "TunnelIPv6Interface::TunnelIPv6Interface socket read buffer size set to %d bytes", v7, 8u);
      }
    }

    else if (!v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v6, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v6, 0x16u);
    }
  }

  return ne_tunnel_set_mtu();
}

void *platformNetifSetUp()
{
  if (!gInstance)
  {
    __assert_rtn("platformNetifSetUp", "netif.cpp", 2582, "gInstance != nullptr");
  }

  otIp6SetReceiveFilterEnabled(gInstance, 1);
  otIcmp6SetEchoMode(gInstance, 0);
  otIp6SetReceiveCallback(gInstance, processReceive, gInstance);
  return otIp6SetAddressCallback(gInstance, processAddressChange, gInstance);
}

void processReceive(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  *&__nbyte[6] = a2;
  *&__nbyte[4] = 0;
  *__nbyte = otMessageGetLength(a1);
  v44 = 1280;
  v43 = 0;
  v45 = 4;
  if (gInstance != *&__nbyte[6])
  {
    __assert_rtn("processReceive", "netif.cpp", 1162, "gInstance == aContext");
  }

  if (*__nbyte > 0x500uLL)
  {
    __assert_rtn("processReceive", "netif.cpp", 1163, "length <= kMaxIp6Size");
  }

  if (sTunFd > 0)
  {
    if (otMessageRead(v47, 0, &__buf[v45], v44) == *__nbyte)
    {
      memset(__b, 0, sizeof(__b));
      otMessageGetBufferInfo(gInstance, v42);
      bzero(v49, 0x400uLL);
      if (otMessageGetIsBufferStatsEnabled(gInstance))
      {
        otMessageGetBufferIDs(v47, v49);
      }

      memset(v48, 0, sizeof(v48));
      otAppGetHeaderStringAndCountDuplicates(gInstance, v47, v48, 0, 1);
      if (otIp6GetSourceDestinationAddressandPort(gInstance, v47, __b))
      {
        if ((__buf[v45] & 0xF0) == 0x40)
        {
          v43 = 1;
        }

        otLogWarnPlat("processReceive: Could not extract IP and port information isIPv4Packet=%d", v2, v3, v4, v5, v6, v7, v8, v43 & 1);
        otDumpInfoPlat("", &__buf[v45], *__nbyte);
        v41 = __nbyte[0];
        otMessageGetFreeBufferCount(gInstance);
        otLogInfoPlat("Packet from NCP (%u bytes),freeBuf:%d", v9, v10, v11, v12, v13, v14, v15, v41);
      }

      else
      {
        v40 = __nbyte[0];
        otMessageGetFreeBufferCount(gInstance);
        otLogInfoPlat("Packet from NCP (%u bytes),%s,freeBuf:%d", v16, v17, v18, v19, v20, v21, v22, v40);
      }

      if (*__nbyte > 0xAu && __buf[10] == 58 && otMessageIsIcmpError(gInstance, v47))
      {
        otLogInfoPlat("[netif] *****RX ICMP error packet dump******", v23, v24, v25, v26, v27, v28, v29, v39);
        otDumpInfoPlat("", &__buf[v45], *__nbyte);
      }

      __buf[0] = 0;
      __buf[1] = 0;
      __buf[2] = 0;
      __buf[3] = 30;
      *__nbyte += 4;
      v30 = write(sTunFd, __buf, *__nbyte);
      if (v30 != *__nbyte)
      {
        perror("write");
        *&__nbyte[2] = 1;
      }
    }

    else
    {
      *&__nbyte[2] = 3;
    }
  }

  otMessageFree(v47);
  if (*&__nbyte[2])
  {
    v31 = otThreadErrorToString(*&__nbyte[2]);
    otLogWarnPlat("Failed to receive, error:%s", v32, v33, v34, v35, v36, v37, v38, v31);
  }
}

void processAddressChange(void **a1, char a2, uint64_t a3)
{
  if (**a1 == 255)
  {
    UpdateMulticast(a3, *a1, a2 & 1);
  }

  else
  {
    UpdateUnicast(a3, a1, a2 & 1);
  }
}

uint64_t platformNetifDeinit()
{
  if (sTunFd != -1)
  {
    result = ne_tunnel_close();
    sTunFd = -1;
  }

  if (sIpFd != -1)
  {
    result = close(sIpFd);
    sIpFd = -1;
  }

  if (sNetlinkFd != -1)
  {
    result = close(sNetlinkFd);
    sNetlinkFd = -1;
  }

  gNetifIndex = 0;
  return result;
}

void processTransmit(uint64_t a1)
{
  v61 = a1;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v56 = 0;
  if (gInstance != a1)
  {
    __assert_rtn("processTransmit", "netif.cpp", 1399, "gInstance == aInstance");
  }

  v59 = read(sTunFd, v65, 0x504uLL);
  if (v59 > 0)
  {
    if (v59 >= 4 && !v65[0] && !v65[1])
    {
      v59 -= 4;
      v56 = 4;
    }

    v55[0] = otThreadGetDeviceRole(v61) != 0;
    v55[1] = 0;
    v60 = otIp6NewMessage(v61, v55);
    if (v60)
    {
      otMessageSetOrigin(v60, 2u);
      v57 = otMessageAppend(v60, &v65[v56], v59);
      if (v57)
      {
        otLogWarnPlat("[netif] Could not append packet to message", v8, v9, v10, v11, v12, v13, v14, v51);
        otDumpDebgPlat("", &v65[v56], v59);
      }

      else
      {
        otMessageSetTimestamp(v60);
        memset(__b, 0, sizeof(__b));
        otMessageGetBufferInfo(v61, v54);
        bzero(v63, 0x400uLL);
        if (otMessageGetIsBufferStatsEnabled(gInstance))
        {
          otMessageGetBufferIDs(v60, v63);
        }

        memset(v62, 0, sizeof(v62));
        otAppGetHeaderStringAndCountDuplicates(v61, v60, v62, 1, 0);
        if (otIp6GetSourceDestinationAddressandPort(v61, v60, __b))
        {
          v58 = (v65[v56] & 0xF0) == 64;
          otLogWarnPlat("Could not extract IP and port information isIPv4Packet=%d", v15, v16, v17, v18, v19, v20, v21, v58);
          otDumpDebgPlat("", &v65[v56], v59);
          v53 = v59;
          otMessageGetFreeBufferCount(v61);
          otLogInfoPlat("Packet to NCP (%hu bytes),freeBuf:%d", v22, v23, v24, v25, v26, v27, v28, v53);
        }

        else
        {
          v52 = v59;
          otMessageGetFreeBufferCount(v61);
          otLogInfoPlat("Packet to NCP (%hu bytes) ,%s,freeBuf:%d", v29, v30, v31, v32, v33, v34, v35, v52);
        }

        if (v59 > 10 && v65[10] == 58 && otMessageIsIcmpError(v61, v60))
        {
          otLogInfoPlat(" *****TX ICMP error packet dump******", v36, v37, v38, v39, v40, v41, v42, v51);
          otDumpInfoPlat("", &v65[v56], v59);
        }

        v57 = otIp6Send(v61, v60);
        v60 = 0;
      }
    }

    else
    {
      v57 = 3;
    }
  }

  else
  {
    v57 = 1;
  }

  if (v60)
  {
    otMessageFree(v60);
  }

  if (v57)
  {
    if (v57 == 2)
    {
      otLogInfoPlat("Message dropped by Thread", v1, v2, v3, v4, v5, v6, v7, v51);
    }

    else
    {
      v43 = otThreadErrorToString(v57);
      otLogWarnPlat("Failed to transmit, error:%s", v44, v45, v46, v47, v48, v49, v50, v43);
    }
  }
}

void processNetlinkEvent(uint64_t a1)
{
  v9 = __chkstk_darwin(a1);
  v8 = recv(sNetlinkFd, v10, 0x2000uLL, 0);
  if (v8 < 92)
  {
    otLogWarnPlat("Unexpected netlink recv() result: %ld, header_size: %ld", v1, v2, v3, v4, v5, v6, v7, v8);
    return;
  }

  switch(v11)
  {
    case 13:
    case 12:
      goto LABEL_4;
    case 14:
      processNetifInfoEvent(v9, v10);
      break;
    case 16:
    case 15:
LABEL_4:
      processNetifAddrEvent(v9, v10);
      break;
  }
}

void SetLinkState(uint64_t a1, char a2)
{
  v22 = 0;
  if (gInstance != a1)
  {
    __assert_rtn("SetLinkState", "netif.cpp", 694, "gInstance == aInstance");
  }

  if ((sIpFd & 0x80000000) == 0)
  {
    *__dst = 0u;
    v25 = 0u;
    strncpy(__dst, &gNetifName, 0x10uLL);
    if (ioctl(sIpFd, 0xC0206911uLL, __dst))
    {
      goto LABEL_5;
    }

    v21 = (v25 & 1) == 1;
    if (a2)
    {
      v9 = "up";
    }

    else
    {
      v9 = "down";
    }

    v10 = " (already done, ignoring)";
    if (((v25 & 1) == 1) != (a2 & 1))
    {
      v10 = "";
    }

    v19 = v10;
    otLogNotePlat("Changing interface state to %s%s.", v2, v3, v4, v5, v6, v7, v8, v9);
    if (v21 != (a2 & 1))
    {
      v20 = (a2 & 1) != 0 ? v25 | 1 : v25 & 0xFFFE;
      LOWORD(v25) = v20;
      if (ioctl(sIpFd, 0x80206910uLL, __dst, v19))
      {
LABEL_5:
        perror("ioctl");
        v22 = 1;
      }
    }
  }

  if (v22)
  {
    v11 = otThreadErrorToString(v22);
    otLogWarnPlat("Failed to update state %s", v12, v13, v14, v15, v16, v17, v18, v11);
  }
}

void UpdateMulticast(uint64_t a1, void *a2, char a3)
{
  v64 = a1;
  v63 = a2;
  v62 = a3;
  v59 = 0;
  if (gInstance != a1)
  {
    __assert_rtn("UpdateMulticast", "netif.cpp", 637, "gInstance == aInstance");
  }

  if ((sIpFd & 0x80000000) == 0)
  {
    v60 = *v63;
    v61 = gNetifIndex;
    if (v62)
    {
      v3 = 12;
    }

    else
    {
      v3 = 13;
    }

    v58 = setsockopt(sIpFd, 41, v3, &v60, 0x14u);
    if ((v62 & 1) == 1)
    {
      ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(v68, v63);
      ot::Posix::Ip6Utils::Ip6AddressString::AsCString(v68);
      v57 = v4;
      v52 = *__error();
      otLogInfoPlat("Adding multicast address %s, gNetifIndex = %d, err = %d, errno = %d, EINVAL = %d, EADDRNOTAVAIL = %d", v5, v6, v7, v8, v9, v10, v11, v57);
    }

    else
    {
      ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(v67, v63);
      ot::Posix::Ip6Utils::Ip6AddressString::AsCString(v67);
      v56 = v12;
      v53 = *__error();
      otLogInfoPlat("Removing multicast address %s, gNetifIndex = %d, err = %d, errno = %d, EINVAL = %d, EADDRNOTAVAIL = %d", v13, v14, v15, v16, v17, v18, v19, v56);
    }

    if (v58 && (*__error() == 22 || *__error() == 49 || *__error() == 48))
    {
      inet_ntop(30, &v60, v66, 0x2Fu);
      v27 = "IPV6_LEAVE_GROUP";
      if (v62)
      {
        v27 = "IPV6_JOIN_GROUP";
      }

      otLogWarnPlat("Ignoring %s failure (EINVAL) for MC LINKLOCAL address (%s)", v20, v21, v22, v23, v24, v25, v26, v27);
      v58 = 0;
    }

    if (v58)
    {
      v28 = "IPV6_JOIN_GROUP";
      if ((v62 & 1) == 0)
      {
        v28 = "IPV6_LEAVE_GROUP";
      }

      v55 = v28;
      v51 = *__error();
      otLogWarnPlat("%s failure (%d)", v29, v30, v31, v32, v33, v34, v35, v55);
      v59 = 1;
    }

    else
    {
      v36 = "Added";
      if ((v62 & 1) == 0)
      {
        v36 = "Removed";
      }

      v54 = v36;
      ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(v65, v63);
      ot::Posix::Ip6Utils::Ip6AddressString::AsCString(v65);
      otLogInfoPlat("%s multicast address %s", v37, v38, v39, v40, v41, v42, v43, v54);
    }
  }

  if (v59)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/netif.cpp", 47);
    otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", v44, v45, v46, v47, v48, v49, v50, "UpdateMulticast");
    handle_daemon_exit();
    exit(1);
  }
}

void UpdateUnicast(uint64_t a1, uint64_t a2, char a3)
{
  if (gInstance != a1)
  {
    __assert_rtn("UpdateUnicast", "netif.cpp", 562, "gInstance == aInstance");
  }

  if (a3)
  {
    ne_tunnel_add_address(*a2, *(a2 + 8), (*(a2 + 9) & 0x10) != 0);
    ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(v22, *a2);
    ot::Posix::Ip6Utils::Ip6AddressString::AsCString(v22);
    v17 = *(a2 + 8);
    v19 = (*(a2 + 9) & 0x10) != 0;
    otLogInfoPlat("[ne_tunnel] %s %s/%u preferred:%d", v3, v4, v5, v6, v7, v8, v9, "Added");
  }

  else
  {
    ne_tunnel_remove_address(*a2);
    ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(v21, *a2);
    ot::Posix::Ip6Utils::Ip6AddressString::AsCString(v21);
    v18 = *(a2 + 8);
    otLogInfoPlat("[ne_tunnel] %s %s/%u", v10, v11, v12, v13, v14, v15, v16, "Removed");
  }
}

ot::Posix::Ip6Utils::Ip6AddressString *ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(ot::Posix::Ip6Utils::Ip6AddressString *this, const void *a2)
{
  ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(this, a2);
  return this;
}

{
  if (!inet_ntop(30, a2, this, 0x2Eu))
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/ip6_utils.hpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "Ip6AddressString");
    handle_daemon_exit();
    exit(5);
  }

  return this;
}

void ot::Posix::Ip6Utils::Ip6AddressString::AsCString(ot::Posix::Ip6Utils::Ip6AddressString *this)
{
  ;
}

{
  ot::Posix::Ip6Utils::Ip6AddressString::AsCString(this);
}

void processNetifAddrEvent(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v23 = a2;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v17 = 0;
  v16 = 0;
  i = 0;
  v14 = 0;
  v13 = 0;
  BYTE1(v19[0]) = 0;
  v18.sin6_family = 0;
  if (!otIp6IsEnabled(a1) && (*(v23 + 3) == 12 || *(v23 + 3) == 15))
  {
    otLogWarnPlat("add new address not handled as interface is disabled", v2, v3, v4, v5, v6, v7, v8, v9);
    v22 = 0;
    return;
  }

  if (*(v23 + 3) == 12 || *(v23 + 3) == 13)
  {
    v21 = v23;
    if (*(v23 + 12) != gNetifIndex)
    {
      return;
    }

    v17 = v21 + 20;
    v16 = *(v21 + 4);
  }

  else if (*(v23 + 3) == 15 || *(v23 + 3) == 16)
  {
    v20 = v23;
    if (*(v23 + 12) != gNetifIndex)
    {
      return;
    }

    v17 = v20 + 16;
    v16 = *(v20 + 4);
  }

  if (v16)
  {
    for (i = 0; i < 8; ++i)
    {
      if (v16 & (1 << i))
      {
        v14 = v17;
        if (*(v17 + 1) == 30)
        {
          if (i == 5)
          {
            v19[0] = *v14;
            *(v19 + 12) = *(v14 + 12);
          }

          if (i == 2)
          {
            *&v18.sin6_len = *v14;
            *(&v18.sin6_addr + 4) = *(v14 + 12);
          }
        }

        if (*v14)
        {
          v10 = ((*v14 - 1) | 3) + 1;
        }

        else
        {
          v10 = 4;
        }

        v17 += v10;
      }
    }
  }

  if (BYTE1(v19[0]) == 30)
  {
    v13 = 0;
    if (BYTE8(v19[0]) == 254 && (BYTE9(v19[0]) & 0xC0) == 0x80)
    {
      v13 = 1;
      BYTE11(v19[0]) = 0;
    }

    else if (BYTE8(v19[0]) == 255 && (BYTE9(v19[0]) & 0xF0) != 0x30 && (BYTE9(v19[0]) & 0xF) == 2)
    {
      BYTE11(v19[0]) = 0;
    }

    ot::Posix::Ip6Utils::ReadIp6AddressFrom((v19 + 8), &v11);
    if (*(v23 + 3) == 12 || *(v23 + 3) == 15)
    {
      if (ot::Posix::Ip6Utils::IsIp6AddressMulticast(&v11))
      {
        v22 = otIp6SubscribeMulticastAddress(v24, &v11);
        logAddrEvent(1, &v11, v22);
        if (v22 == 24 || v22 == 37)
        {
          v22 = 0;
        }
      }

      else
      {
        NetmaskToPrefixLength(&v18);
        otIp6HasUnicastAddress(v24, &v11);
        logAddrEvent(1, &v11, 24);
        v22 = 0;
      }
    }

    else if (*(v23 + 3) == 13 || *(v23 + 3) == 16)
    {
      if (ot::Posix::Ip6Utils::IsIp6AddressMulticast(&v11))
      {
        v22 = otIp6UnsubscribeMulticastAddress(v24, &v11);
        logAddrEvent(0, &v11, v22);
      }

      else
      {
        v22 = otIp6RemoveUnicastAddress(v24, &v11);
        logAddrEvent(0, &v11, v22);
        if (v22 == 23)
        {
          v22 = 0;
        }
      }
    }
  }
}

void processNetifInfoEvent(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 12) == gNetifIndex)
  {
    UpdateLink(a1);
  }
}

__n128 ot::Posix::Ip6Utils::ReadIp6AddressFrom(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

BOOL ot::Posix::Ip6Utils::IsIp6AddressMulticast(unsigned __int8 *a1)
{
  return *a1 == 255;
}

{
  return ot::Posix::Ip6Utils::IsIp6AddressMulticast(a1);
}

void logAddrEvent(char a1, unsigned __int8 *a2, int a3)
{
  if (!a3 || (a1 & 1) != 0 && (a3 == 24 || a3 == 37) || (a1 & 1) == 0 && (a3 == 23 || a3 == 37))
  {
    if (a1)
    {
      v18 = "ADD";
    }

    else
    {
      v18 = "DEL";
    }

    ot::Posix::Ip6Utils::IsIp6AddressMulticast(a2);
    ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(v22, a2);
    ot::Posix::Ip6Utils::Ip6AddressString::AsCString(v22);
    otLogInfoPlat("%s [%s] %s%s", v3, v4, v5, v6, v7, v8, v9, v18);
  }

  else
  {
    if (a1)
    {
      v17 = "ADD";
    }

    else
    {
      v17 = "DEL";
    }

    ot::Posix::Ip6Utils::IsIp6AddressMulticast(a2);
    ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(v21, a2);
    ot::Posix::Ip6Utils::Ip6AddressString::AsCString(v21);
    otThreadErrorToString(a3);
    otLogWarnPlat("%s [%s] %s failed (%s)", v10, v11, v12, v13, v14, v15, v16, v17);
  }
}

double InitNetaskWithPrefixLength(__n128 *a1, unsigned __int8 a2)
{
  v5 = a1;
  v4 = a2;
  if (a2 > 0x80u)
  {
    v4 = 0x80;
  }

  v3 = 0uLL;
  CopyBits(&v3, kAllOnes, v4);
  return ot::Posix::Ip6Utils::CopyIp6AddressTo(&v3, v5);
}

void *CopyBits(unsigned __int8 *a1, const unsigned __int8 *a2, unsigned __int8 a3)
{
  __n = a3 / 8;
  v5 = a3 % 8;
  result = memcpy(a1, a2, __n);
  if (v5)
  {
    v4 = (128 >> (v5 - 1)) - 1;
    a1[__n] &= v4;
    a1[__n] |= a2[__n] & ~v4;
  }

  return result;
}

__n128 ot::Posix::Ip6Utils::CopyIp6AddressTo(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

ot::Posix::Configuration *ot::Posix::Configuration::Configuration(ot::Posix::Configuration *this)
{
  ot::Posix::Configuration::Configuration(this);
  return this;
}

{
  ot::Posix::ConfigFile::ConfigFile(this, "src/posix/platform/openthread.conf.example");
  ot::Posix::ConfigFile::ConfigFile((this + 24), "src/posix/platform/openthread.conf.example");
  result = this;
  *(this + 24) = 0;
  *(this + 13) = 134215680;
  *(this + 14) = 134215680;
  return result;
}

ot::Posix::Radio *ot::Posix::Radio::Radio(ot::Posix::Radio *this)
{
  ot::Posix::Radio::Radio(this);
  return this;
}

{
  ot::Posix::RadioUrl::RadioUrl(this, 0);
  ot::Spinel::RadioSpinel::RadioSpinel((this + 544));
  ot::Posix::RcpCapsDiag::RcpCapsDiag((this + 2320), (this + 544));
  return this;
}

void ot::Posix::Radio::~Radio(ot::Posix::Radio *this)
{
  ot::Posix::Radio::~Radio(this);
}

{
  ot::Spinel::RadioSpinel::~RadioSpinel((this + 544));
}

void getBandEdgeInfo(void)
{
  memset(__b, 0, sizeof(__b));
  getFilePathFromDirectory(__b, "/usr/share/firmware/wpan/", ".txcb", 0xC8u);
  configReadBandEdgePowerTable(__b);
}

void configReadBandEdgePowerTable(const char *a1)
{
  v18 = 0;
  v17 = -1;
  memset(__b, 0, sizeof(__b));
  memset(radioBackOffPower, 0, sizeof(radioBackOffPower));
  if (!a1)
  {
    __assert_rtn("configReadBandEdgePowerTable", "radio.cpp", 409, "fileName != NULL");
  }

  __stream = fopen(a1, "rb");
  if (__stream)
  {
    v20 = fread(__b, 1uLL, 0x32uLL, __stream);
    if (v20 && !ferror(__stream))
    {
      __b[v20] = 0;
      while (v18 < v20)
      {
        if (__b[v18] == 126)
        {
          ++v18;
          ++v17;
        }

        else
        {
          radioBackOffPower[13 * v17] = __b[v18];
          v19 = v18 + 1;
          v15 = &radioBackOffPower[13 * v17];
          *(v15 + 1) = *&__b[v19];
          *(v15 + 5) = *&__b[v19 + 4];
          v19 += 6;
          *(v15 + 7) = *&__b[v19];
          *(v15 + 11) = *&__b[v19 + 4];
          v18 = v19 + 6;
        }
      }
    }

    else
    {
      otLogWarnPlat("%s(): %s read error\n", v8, v9, v10, v11, v12, v13, v14, "configReadBandEdgePowerTable");
    }

    fclose(__stream);
  }

  else
  {
    otLogWarnPlat("%s(): %s does not exist\n", v1, v2, v3, v4, v5, v6, v7, "configReadBandEdgePowerTable");
  }
}

uint64_t ot::Spinel::parse_string_into_data(ot::Spinel *this, unsigned __int8 *a2, char *a3, const char *a4)
{
  v16 = this;
  v13 = 0;
  if (!this)
  {
    a2 = 0;
  }

  while (1)
  {
    v10 = 0;
    if (*a3)
    {
      v10 = a2 != 0;
    }

    if (!v10)
    {
      break;
    }

    v4 = a3++;
    _c = tolower(*v4);
    if (isdigit(_c) || _c >= 97 && _c <= 102)
    {
      if (isdigit(_c))
      {
        v9 = _c - 48;
      }

      else
      {
        v9 = _c - 87;
      }

      if (a2)
      {
        *v16 = 16 * v9;
        --a2;
      }

      ++v13;
      if (!*a3)
      {
        return v13;
      }

      v5 = a3++;
      _ca = tolower(*v5);
      if (isdigit(_ca) || _ca >= 97 && _ca <= 102)
      {
        if (isdigit(_ca))
        {
          v8 = _ca - 48;
        }

        else
        {
          v8 = _ca - 87;
        }

        v6 = v16;
        v16 = (v16 + 1);
        *v6 |= v8;
      }
    }
  }

  return v13;
}

int tolower(int _c)
{
  return __tolower(_c);
}

{
  return tolower(_c);
}

int isdigit(int _c)
{
  return __isctype(_c, 0x400uLL);
}

{
  return isdigit(_c);
}

uint64_t ot::Spinel::too_many_grants_denied(ot::Spinel *this)
{
  v12 = 0;
  gettimeofday(&v11, &v10);
  if (dword_1004E9D98 && v11.tv_sec >= mTxNotGrantedTracker && v11.tv_sec < mTxNotGrantedTracker + 3600)
  {
    if (++dword_1004E9D98 > 100)
    {
      v12 = 1;
      dword_1004E9D98 = 0;
      mTxNotGrantedTracker = v11.tv_sec;
      otLogWarnPlat("Too many grants denied", v1, v2, v3, v4, v5, v6, v7, v9);
    }
  }

  else
  {
    dword_1004E9D98 = 1;
    mTxNotGrantedTracker = v11.tv_sec;
  }

  otLogDebgPlat("numOccurances=%d, NCP-Tx-Grant-Denied-Time-Sec=%llu, Curr-Time-Sec=%ld", v1, v2, v3, v4, v5, v6, v7, dword_1004E9D98);
  return v12 & 1;
}

_BYTE *ot::Posix::Radio::Init(const char **this, const char *a2)
{
  v20 = this;
  v19 = a2;
  v18 = 0;
  HasParam = 0;
  v16 = 1;
  ot::Posix::RadioUrl::Init(this, a2);
  if (!ot::Url::Url::GetPath(this))
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    otExitCodeToString(2);
    otLogCritPlat("%s() at %s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "Init");
    handle_daemon_exit();
    exit(2);
  }

  if ((otPlatRadioGetRcp2Vendor2EnabledVerify() & 1) == 0)
  {
    getBandEdgeInfo();
  }

  memset(__b, 0, sizeof(__b));
  __b[6] = otPlatDiagRadioReceiveDone;
  __b[7] = otPlatDiagRadioTransmitDone;
  __b[2] = otPlatRadioEnergyScanDone;
  __b[3] = otPlatRadioBusLatencyChanged;
  __b[0] = otPlatRadioReceiveDone;
  __b[1] = otPlatRadioTxDone;
  __b[4] = otPlatRadioTxStarted;
  v18 = !ot::Url::Url::HasParam(this, "no-reset");
  HasParam = ot::Url::Url::HasParam(this, "skip-rcp-compatibility-check");
  v9 = ot::Spinel::RadioSpinel::SetCallbacks((this + 68), __b);
  v12 = HasParam;
  v13 = v18;
  SpinelDriver = ot::Posix::GetSpinelDriver(v9);
  ot::Spinel::RadioSpinel::Init(this + 68, v12, v13, SpinelDriver, 0x6Du, v16 & 1);
  return ot::Posix::Radio::ProcessRadioUrl(this, this);
}

ot::Posix::RadioUrl *ot::Posix::RadioUrl::RadioUrl(ot::Posix::RadioUrl *this, const char *a2)
{
  ot::Posix::RadioUrl::RadioUrl(this, a2);
  return this;
}

{
  ot::Url::Url::Url(this);
  ot::Posix::RadioUrl::Init(this, a2);
  return this;
}

BOOL ot::Url::Url::HasParam(ot::Url::Url *this, const char *a2)
{
  return ot::Url::Url::GetValue(this, a2, 0) != 0;
}

{
  return ot::Url::Url::HasParam(this, a2);
}

_BYTE *ot::Posix::Radio::ProcessRadioUrl(ot::Posix::Radio *this, const ot::Posix::RadioUrl *a2)
{
  v101 = this;
  v100 = a2;
  Value = 0;
  v98 = 0;
  if (ot::Url::Url::HasParam(a2, "ncp-dataset"))
  {
    otLogCritPlat("The argument ncp-dataset is no longer supported", v2, v3, v4, v5, v6, v7, v8, v87);
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", v9, v10, v11, v12, v13, v14, v15, "ProcessRadioUrl");
    handle_daemon_exit();
    exit(1);
  }

  if (ot::Url::Url::HasParam(v100, "fem-lnagain"))
  {
    v97 = ot::Url::Url::ParseInt8(v100, "fem-lnagain", &v98);
    if (v97)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
      if (v97 == 7)
      {
        v16 = 2;
      }

      else
      {
        v16 = 1;
      }

      otExitCodeToString(v16);
      otLogCritPlat("%s() at %s:%d: %s", v17, v18, v19, v20, v21, v22, v23, "ProcessRadioUrl");
      handle_daemon_exit();
      if (v97 == 7)
      {
        v24 = 2;
      }

      else
      {
        v24 = 1;
      }

      exit(v24);
    }

    v96 = ot::Spinel::RadioSpinel::SetFemLnaGain((this + 544), v98);
    if (v96)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
      if (v96 == 7)
      {
        v25 = 2;
      }

      else
      {
        v25 = 1;
      }

      otExitCodeToString(v25);
      otLogCritPlat("%s() at %s:%d: %s", v26, v27, v28, v29, v30, v31, v32, "ProcessRadioUrl");
      handle_daemon_exit();
      if (v96 == 7)
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }

      exit(v33);
    }
  }

  if (ot::Url::Url::HasParam(v100, "cca-threshold"))
  {
    v95 = ot::Url::Url::ParseInt8(v100, "cca-threshold", &v98);
    if (v95)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
      if (v95 == 7)
      {
        v34 = 2;
      }

      else
      {
        v34 = 1;
      }

      otExitCodeToString(v34);
      otLogCritPlat("%s() at %s:%d: %s", v35, v36, v37, v38, v39, v40, v41, "ProcessRadioUrl");
      handle_daemon_exit();
      if (v95 == 7)
      {
        v42 = 2;
      }

      else
      {
        v42 = 1;
      }

      exit(v42);
    }

    v94 = ot::Spinel::RadioSpinel::SetCcaEnergyDetectThreshold((this + 544), v98);
    if (v94)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
      if (v94 == 7)
      {
        v43 = 2;
      }

      else
      {
        v43 = 1;
      }

      otExitCodeToString(v43);
      otLogCritPlat("%s() at %s:%d: %s", v44, v45, v46, v47, v48, v49, v50, "ProcessRadioUrl");
      handle_daemon_exit();
      if (v94 == 7)
      {
        v51 = 2;
      }

      else
      {
        v51 = 1;
      }

      exit(v51);
    }
  }

  Value = ot::Url::Url::GetValue(v100, "region", 0);
  if (Value)
  {
    v93 = 0;
    if (strnlen(Value, 3uLL) != 2)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
      otExitCodeToString(2);
      otLogCritPlat("%s() at %s:%d: %s", v52, v53, v54, v55, v56, v57, v58, "ProcessRadioUrl");
      handle_daemon_exit();
      exit(2);
    }

    v93 = Value[1] + (*Value << 8);
    v92 = otPlatRadioSetRegion(gInstance, v93);
    if (v92)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
      if (v92 == 7)
      {
        v59 = 2;
      }

      else
      {
        v59 = 1;
      }

      otExitCodeToString(v59);
      otLogCritPlat("%s() at %s:%d: %s", v60, v61, v62, v63, v64, v65, v66, "ProcessRadioUrl");
      handle_daemon_exit();
      if (v92 == 7)
      {
        v67 = 2;
      }

      else
      {
        v67 = 1;
      }

      exit(v67);
    }
  }

  if (ot::Url::Url::HasParam(v100, "bus-latency"))
  {
    v91 = 0;
    v90 = ot::Url::Url::ParseUint32(v100, "bus-latency", &v91);
    if (v90)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
      if (v90 == 7)
      {
        v68 = 2;
      }

      else
      {
        v68 = 1;
      }

      otExitCodeToString(v68);
      otLogCritPlat("%s() at %s:%d: %s", v69, v70, v71, v72, v73, v74, v75, "ProcessRadioUrl");
      handle_daemon_exit();
      if (v90 == 7)
      {
        v76 = 2;
      }

      else
      {
        v76 = 1;
      }

      exit(v76);
    }

    ot::Spinel::RadioSpinel::SetBusLatency((this + 544), v91);
  }

  ot::Posix::Radio::ProcessMaxPowerTable();
  result = ot::Url::Url::GetValue(v100, "enable-coex", 0);
  if (result)
  {
    result = ot::Spinel::RadioSpinel::SetCoexEnabled((this + 544), *result != 48);
    v89 = result;
    if (result)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
      if (v89 == 7)
      {
        v78 = 2;
      }

      else
      {
        v78 = 1;
      }

      otExitCodeToString(v78);
      otLogCritPlat("%s() at %s:%d: %s", v79, v80, v81, v82, v83, v84, v85, "ProcessRadioUrl");
      handle_daemon_exit();
      if (v89 == 7)
      {
        v86 = 2;
      }

      else
      {
        v86 = 1;
      }

      exit(v86);
    }
  }

  return result;
}

uint64_t otPlatRadioSetRegion(uint64_t a1, unsigned __int16 a2)
{
  if (ot::Posix::Configuration::IsValid(&sConfig))
  {
    return ot::Posix::Configuration::SetRegion(&sConfig, a2);
  }

  else
  {
    RadioSpinel = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::SetRadioRegion(RadioSpinel, a2);
  }
}

uint64_t ot::Posix::Radio::GetRcpCapsDiag(ot::Posix::Radio *this)
{
  return this + 2320;
}

{
  return ot::Posix::Radio::GetRcpCapsDiag(this);
}

uint64_t currentChannelRegionInPowerBackOffTable(signed __int8 *a1)
{
  RadioSpinel = GetRadioSpinel();
  Channel = ot::Spinel::RadioSpinel::GetChannel(RadioSpinel);
  if (sCurrentRegion < 6u)
  {
    for (i = 0; i < 0x10uLL; ++i)
    {
      if (radioBackOffPower[13 * i] == Channel && radioBackOffPower[13 * i + 1 + sCurrentRegion] == sCurrentRegion && radioBackOffPower[13 * i + 7 + sCurrentRegion] != 127)
      {
        *a1 = radioBackOffPower[13 * i + 7 + sCurrentRegion] / 4;
        otLogWarnPlat("Get BackOff power = %d, channel = [%d],region = [%d]", v2, v3, v4, v5, v6, v7, v8, *a1);
        v13 = 1;
        return v13 & 1;
      }
    }

    v13 = 0;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t ot::Spinel::RadioSpinel::GetChannel(ot::Spinel::RadioSpinel *this)
{
  return *(this + 932);
}

{
  return ot::Spinel::RadioSpinel::GetChannel(this);
}

uint64_t otPlatRadioGetIeeeEui64(uint64_t a1, unsigned __int8 *a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::GetIeeeEui64(RadioSpinel, a2);
  v13 = result;
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v13 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", v5, v6, v7, v8, v9, v10, v11, "otPlatRadioGetIeeeEui64");
    handle_daemon_exit();
    if (v13 == 7)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    exit(v12);
  }

  return result;
}

uint64_t otPlatRadioSetPanId(uint64_t a1, unsigned __int16 a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::SetPanId(RadioSpinel, a2);
  v13 = result;
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v13 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", v5, v6, v7, v8, v9, v10, v11, "otPlatRadioSetPanId");
    handle_daemon_exit();
    if (v13 == 7)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    exit(v12);
  }

  return result;
}

uint64_t otPlatRadioSetExtendedAddress(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a1;
  v51 = a2;
  for (i = 0; i < 8; ++i)
  {
    *(&v53 + i) = *(v51 + 7 - i);
  }

  v8 = *v51;
  v9 = *(v51 + 1);
  v10 = *(v51 + 2);
  v11 = *(v51 + 3);
  v12 = *(v51 + 4);
  v13 = *(v51 + 5);
  v14 = *(v51 + 6);
  v15 = *(v51 + 7);
  v46 = &v35;
  v36 = v9;
  v37 = v10;
  v38 = v11;
  v39 = v12;
  v40 = v13;
  v41 = v14;
  v42 = v15;
  otLogInfoPlat("otPlatRadioSetExtendedAddress aAddress: 0[%d] 1[%d] 2[%d] 3[%d] 4[%d] 5[%d] 6[%d] 7[%d]", a2, a3, a4, a5, a6, a7, a8, v8);
  v47 = &v35;
  v36 = BYTE1(v53);
  v37 = BYTE2(v53);
  v38 = BYTE3(v53);
  v39 = BYTE4(v53);
  v40 = BYTE5(v53);
  v41 = BYTE6(v53);
  v42 = HIBYTE(v53);
  otLogInfoPlat("otPlatRadioSetExtendedAddress addr: 0[%d] 1[%d] 2[%d] 3[%d] 4[%d] 5[%d] 6[%d] 7[%d]", v16, v17, v18, v19, v20, v21, v22, v53);
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::SetExtendedAddress(RadioSpinel, &v53);
  v49 = result;
  if (result)
  {
    v48 = strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v48)
    {
      v45 = v48 + 1;
    }

    else
    {
      v45 = "/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp";
    }

    v43 = v45;
    v44 = 2;
    if (v49 == 7)
    {
      v25 = 2;
    }

    else
    {
      v25 = 1;
    }

    v26 = otExitCodeToString(v25);
    v36 = v43;
    v37 = 500;
    v38 = v26;
    otLogCritPlat("%s() at %s:%d: %s", v27, v28, v29, v30, v31, v32, v33, "otPlatRadioSetExtendedAddress");
    handle_daemon_exit();
    if (v49 == 7)
    {
      v34 = v44;
    }

    else
    {
      v34 = 1;
    }

    exit(v34);
  }

  return result;
}

uint64_t otPlatRadioSetShortAddress(uint64_t a1, unsigned __int16 a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::SetShortAddress(RadioSpinel, a2);
  v13 = result;
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v13 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", v5, v6, v7, v8, v9, v10, v11, "otPlatRadioSetShortAddress");
    handle_daemon_exit();
    if (v13 == 7)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    exit(v12);
  }

  return result;
}

uint64_t otPlatRadioSetAlternateShortAddress(uint64_t a1, unsigned __int16 a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::SetAlternateShortAddress(RadioSpinel, a2);
  v13 = result;
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v13 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", v5, v6, v7, v8, v9, v10, v11, "otPlatRadioSetAlternateShortAddress");
    handle_daemon_exit();
    if (v13 == 7)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    exit(v12);
  }

  return result;
}

uint64_t otPlatRadioSetPromiscuous(uint64_t a1, char a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::SetPromiscuous(RadioSpinel, a2 & 1);
  v13 = result;
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v13 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", v5, v6, v7, v8, v9, v10, v11, "otPlatRadioSetPromiscuous");
    handle_daemon_exit();
    if (v13 == 7)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    exit(v12);
  }

  return result;
}

uint64_t ot::Spinel::RadioSpinel::GetTransmitFrame(ot::Spinel::RadioSpinel *this)
{
  return this + 784;
}

{
  return ot::Spinel::RadioSpinel::GetTransmitFrame(this);
}

uint64_t ot::Spinel::RadioSpinel::GetRadioCaps(ot::Spinel::RadioSpinel *this)
{
  return ot::Spinel::RadioSpinel::sRadioCaps;
}

{
  return ot::Spinel::RadioSpinel::GetRadioCaps(this);
}

uint64_t ot::Spinel::RadioSpinel::GetVersion(ot::Spinel::SpinelDriver **this)
{
  return ot::Spinel::SpinelDriver::GetVersion(this[221]);
}

{
  return ot::Spinel::RadioSpinel::GetVersion(this);
}

uint64_t ot::Spinel::RadioSpinel::IsPromiscuous(ot::Spinel::RadioSpinel *this)
{
  return *(this + 948) & 1;
}

{
  return ot::Spinel::RadioSpinel::IsPromiscuous(this);
}

BOOL platformRadioUpdateFdSet(uint64_t a1)
{
  v9 = otPlatTimeGet();
  RadioSpinel = GetRadioSpinel();
  NextRadioTimeRecalcStart = ot::Spinel::RadioSpinel::GetNextRadioTimeRecalcStart(RadioSpinel);
  v2 = GetRadioSpinel();
  if (ot::Spinel::RadioSpinel::IsTransmitting(v2))
  {
    v3 = GetRadioSpinel();
    TxRadioEndUs = ot::Spinel::RadioSpinel::GetTxRadioEndUs(v3);
    if (TxRadioEndUs < NextRadioTimeRecalcStart)
    {
      NextRadioTimeRecalcStart = TxRadioEndUs;
    }
  }

  if (v9 >= NextRadioTimeRecalcStart)
  {
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
  }

  else
  {
    v6 = NextRadioTimeRecalcStart - v9;
    if (NextRadioTimeRecalcStart - v9 < 1000000 * *(a1 + 392) + *(a1 + 400))
    {
      *(a1 + 392) = v6 / 0xF4240;
      *(a1 + 400) = v6 % 0xF4240;
    }
  }

  v4 = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::IsTransmitDone(v4);
  if (result)
  {
    *(a1 + 392) = 0;
    *(a1 + 400) = 0;
  }

  return result;
}

BOOL ot::Spinel::RadioSpinel::IsTransmitting(ot::Spinel::RadioSpinel *this)
{
  return *(this + 236) == 3;
}

{
  return ot::Spinel::RadioSpinel::IsTransmitting(this);
}

uint64_t ot::Spinel::RadioSpinel::GetTxRadioEndUs(ot::Spinel::RadioSpinel *this)
{
  return *(this + 210);
}

{
  return ot::Spinel::RadioSpinel::GetTxRadioEndUs(this);
}

BOOL ot::Spinel::RadioSpinel::IsTransmitDone(ot::Spinel::RadioSpinel *this)
{
  return *(this + 236) == 4;
}

{
  return ot::Spinel::RadioSpinel::IsTransmitDone(this);
}

uint64_t otPlatRadioEnableSrcMatch(uint64_t a1, char a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::EnableSrcMatch(RadioSpinel, a2 & 1);
  v13 = result;
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v13 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", v5, v6, v7, v8, v9, v10, v11, "otPlatRadioEnableSrcMatch");
    handle_daemon_exit();
    if (v13 == 7)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    exit(v12);
  }

  return result;
}

uint64_t otPlatRadioAddSrcMatchExtEntry(uint64_t a1, uint64_t a2)
{
  for (i = 0; i < 8; ++i)
  {
    *(&v5 + i) = *(a2 + 7 - i);
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::AddSrcMatchExtEntry(RadioSpinel, &v5);
}

uint64_t otPlatRadioClearSrcMatchExtEntry(uint64_t a1, uint64_t a2)
{
  for (i = 0; i < 8; ++i)
  {
    v5[i] = *(a2 + 7 - i);
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::ClearSrcMatchExtEntry(RadioSpinel, v5);
}

uint64_t otPlatRadioClearSrcMatchShortEntries()
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::ClearSrcMatchShortEntries(RadioSpinel);
  v11 = result;
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v11 == 7)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    otExitCodeToString(v2);
    otLogCritPlat("%s() at %s:%d: %s", v3, v4, v5, v6, v7, v8, v9, "otPlatRadioClearSrcMatchShortEntries");
    handle_daemon_exit();
    if (v11 == 7)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    exit(v10);
  }

  return result;
}

uint64_t otPlatRadioClearSrcMatchExtEntries()
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::ClearSrcMatchExtEntries(RadioSpinel);
  v11 = result;
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v11 == 7)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    otExitCodeToString(v2);
    otLogCritPlat("%s() at %s:%d: %s", v3, v4, v5, v6, v7, v8, v9, "otPlatRadioClearSrcMatchExtEntries");
    handle_daemon_exit();
    if (v11 == 7)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    exit(v10);
  }

  return result;
}

uint64_t otPlatRadioGetTransmitPower(uint64_t a1, signed __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("otPlatRadioGetTransmitPower", "radio.cpp", 717, "aPower != nullptr");
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::GetTransmitPower(RadioSpinel, a2);
}

uint64_t otPlatRadioSetTransmitPower(uint64_t a1, signed __int8 a2)
{
  v22 = a1;
  v21 = a2;
  if ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 || (v20 = 0, (currentChannelRegionInPowerBackOffTable(&v20) & 1) == 0) || v20 > v21)
  {
    RadioSpinel = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::SetTransmitPower(RadioSpinel, v21);
  }

  else
  {
    otLogWarnPlat("BandEdge has lower ceiling, set BandEdge Power=[%d]", v2, v3, v4, v5, v6, v7, v8, v20);
    v9 = GetRadioSpinel();
    v19 = ot::Spinel::RadioSpinel::SetTransmitPower(v9, v20);
    if (v19)
    {
      otLogWarnPlat("BandEdge Load failure=[%d]", v10, v11, v12, v13, v14, v15, v16, v19);
      ptb_bandedge_captureABC_Failure(3);
    }

    return v19;
  }
}

uint64_t otPlatRadioGetCcaEnergyDetectThreshold(uint64_t a1, signed __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("otPlatRadioGetCcaEnergyDetectThreshold", "radio.cpp", 752, "aThreshold != nullptr");
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::GetCcaEnergyDetectThreshold(RadioSpinel, a2);
}

uint64_t otPlatSetRcpLogLevel(uint64_t a1, char a2)
{
  v4 = 7;
  if (a2)
  {
    switch(a2)
    {
      case 1:
        v4 = 2;
        break;
      case 2:
        v4 = 4;
        break;
      case 3:
        v4 = 5;
        break;
      case 4:
        v4 = 6;
        break;
      case 5:
        v4 = 7;
        break;
    }

    RadioSpinel = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::SetRcpLogLevel(RadioSpinel, v4);
  }

  else
  {
    return 0;
  }
}

uint64_t otPlatRadioGetRssiOffset(uint64_t a1, signed __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("otPlatRadioGetRssiOffset", "radio.cpp", 824, "aOffset != nullptr");
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::GetRssiOffset(RadioSpinel, a2);
}

uint64_t otPlatRadioGetRssiOffsetPath1(uint64_t a1, signed __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("otPlatRadioGetRssiOffsetPath1", "radio.cpp", 837, "aOffset != nullptr");
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::GetRssiOffsetPath1(RadioSpinel, a2);
}

uint64_t otPlatRadioGetFemLnaGain(uint64_t a1, signed __int8 *a2)
{
  if (!a2)
  {
    __assert_rtn("otPlatRadioGetFemLnaGain", "radio.cpp", 851, "aGain != nullptr");
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::GetFemLnaGain(RadioSpinel, a2);
}

uint64_t ot::Spinel::RadioSpinel::GetReceiveSensitivity(ot::Spinel::RadioSpinel *this)
{
  return *(this + 933);
}

{
  return ot::Spinel::RadioSpinel::GetReceiveSensitivity(this);
}

uint64_t otPlatRadioGetCoexMetrics(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    RadioSpinel = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::GetCoexMetrics(RadioSpinel, a2);
  }

  else
  {
    return 7;
  }
}

uint64_t otPlatDiagSetOutputCallback(uint64_t a1, void (*a2)(const char *, char *, void *), void *a3)
{
  sDiagOutputCallback = a2;
  sDiagCallbackContext = a3;
  RadioSpinel = GetRadioSpinel();
  ot::Spinel::RadioSpinel::SetDiagOutputCallback(RadioSpinel, a2, a3);
  RcpCapsDiag = GetRcpCapsDiag();
  return ot::Posix::RcpCapsDiag::SetDiagOutputCallback(RcpCapsDiag, a2, a3);
}

uint64_t otPlatDiagProcess(uint64_t a1, unsigned __int8 a2, char **a3)
{
  memset(__b, 0, sizeof(__b));
  __str = __b;
  if (!strcmp(*a3, "rcpcaps"))
  {
    RcpCapsDiag = GetRcpCapsDiag();
    return ot::Posix::RcpCapsDiag::DiagProcess(RcpCapsDiag, a3, a2);
  }

  else if (!strcmp(*a3, "radiospinel"))
  {
    RadioSpinel = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::RadioSpinelDiagProcess(RadioSpinel, a3, a2);
  }

  else
  {
    for (i = 0; ; ++i)
    {
      v7 = 0;
      if (i < a2)
      {
        v7 = __str < &v14;
      }

      if (!v7)
      {
        break;
      }

      __str += snprintf(__str, &v14 - __str, "%s ", a3[i]);
    }

    v5 = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::PlatDiagProcess(v5, __b);
  }
}

uint64_t otPlatDiagModeSet(char a1)
{
  RadioSpinel = GetRadioSpinel();
  if (a1)
  {
    v2 = "start";
  }

  else
  {
    v2 = "stop";
  }

  result = ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, v2);
  if (!result)
  {
    v4 = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::SetDiagEnabled(v4, a1 & 1);
  }

  return result;
}

uint64_t ot::Spinel::RadioSpinel::SetDiagEnabled(uint64_t this, char a2)
{
  *(this + 1659) = a2 & 1;
  return this;
}

{
  return ot::Spinel::RadioSpinel::SetDiagEnabled(this, a2);
}

uint64_t ot::Spinel::RadioSpinel::IsDiagEnabled(ot::Spinel::RadioSpinel *this)
{
  return *(this + 1659) & 1;
}

{
  return ot::Spinel::RadioSpinel::IsDiagEnabled(this);
}

uint64_t otPlatDiagTxPowerSet(char a1)
{
  snprintf(__str, 0x100uLL, "power %d", a1);
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
}

uint64_t otPlatDiagChannelSet(unsigned __int8 a1)
{
  snprintf(__str, 0x100uLL, "channel %d", a1);
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
}

uint64_t otPlatDiagGpioSet(int a1, char a2)
{
  snprintf(__str, 0x100uLL, "gpio set %d %d", a1, a2 & 1);
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
}

uint64_t otPlatDiagGpioGet(int a1, BOOL *a2)
{
  setDiagOutput(v8, 500);
  snprintf(__str, 0x100uLL, "gpio get %d", a1);
  RadioSpinel = GetRadioSpinel();
  v5 = ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
  if (!v5)
  {
    v4 = strtok(v8, "\r");
    if (v4)
    {
      *a2 = atoi(v4) != 0;
    }

    else
    {
      v5 = 1;
    }
  }

  freeDiagOutput();
  return v5;
}

uint64_t setDiagOutput(char *a1, __int16 a2)
{
  sDiagOutput = a1;
  sDiagOutputLen = a2;
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::SetDiagOutputCallback(RadioSpinel, handleDiagOutput, 0);
}

uint64_t freeDiagOutput(void)
{
  sDiagOutput = 0;
  sDiagOutputLen = 0;
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::SetDiagOutputCallback(RadioSpinel, sDiagOutputCallback, sDiagCallbackContext);
}

uint64_t otPlatDiagGpioSetMode(int a1, int a2)
{
  v2 = "in";
  if (a2)
  {
    v2 = "out";
  }

  snprintf(__str, 0x100uLL, "gpio mode %d %s", a1, v2);
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
}

uint64_t otPlatDiagGpioGetMode(int a1, _DWORD *a2)
{
  setDiagOutput(v8, 500);
  snprintf(__str, 0x100uLL, "gpio mode %d", a1);
  RadioSpinel = GetRadioSpinel();
  v5 = ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
  if (!v5)
  {
    __s1 = strtok(v8, "\r");
    if (__s1)
    {
      if (!strcmp(__s1, "in"))
      {
        *a2 = 0;
      }

      else if (!strcmp(__s1, "out"))
      {
        *a2 = 1;
      }

      else
      {
        v5 = 1;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  freeDiagOutput();
  return v5;
}

uint64_t otPlatDiagRadioGetPowerSettings(uint64_t a1, unsigned __int8 a2, _WORD *a3, _WORD *a4, unsigned __int16 *a5, char *a6)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  v14 = a5;
  v13 = a6;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  if (a3)
  {
    v9 = 0;
    if (v15)
    {
      v9 = 0;
      if (v14)
      {
        v9 = v13 != 0;
      }
    }
  }

  if (!v9)
  {
    __assert_rtn("otPlatDiagRadioGetPowerSettings", "radio.cpp", 1107, "(aTargetPower != nullptr) && (aActualPower != nullptr) && (aRawPowerSetting != nullptr) && (aRawPowerSettingLength != nullptr)");
  }

  setDiagOutput(v21, 500);
  snprintf(__str, 0x100uLL, "powersettings %d", v17);
  RadioSpinel = GetRadioSpinel();
  v12 = ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
  if (!v12)
  {
    snprintf(v19, 0x64uLL, "TargetPower(0.01dBm): %%d\r\nActualPower(0.01dBm): %%d\r\nRawPowerSetting: %%%us\r\n", 33);
    if (sscanf(v21, v19, &v11, &v10, v20) == 3)
    {
      v12 = ot::Utils::CmdLineParser::ParseAsHexString(v20, v13, v14, v7);
      if (!v12)
      {
        *v16 = v11;
        *v15 = v10;
      }
    }

    else
    {
      v12 = 1;
    }
  }

  freeDiagOutput();
  return v12;
}

uint64_t otPlatDiagRadioSetRawPowerSetting(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  if (!a2)
  {
    __assert_rtn("otPlatDiagRadioSetRawPowerSetting", "radio.cpp", 1137, "aRawPowerSetting != nullptr");
  }

  v6 = snprintf(__str, 0x100uLL, "rawpowersetting ");
  for (i = 0; i < a3; ++i)
  {
    v6 += snprintf(&__str[v6], 256 - v6, "%02x", *(a2 + i));
    if (v6 >= 256)
    {
      return 7;
    }
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
}

uint64_t otPlatDiagRadioGetRawPowerSetting(uint64_t a1, unsigned __int16 *a2, char *a3)
{
  v6 = 0;
  if (a2)
  {
    v6 = a3 != 0;
  }

  if (!v6)
  {
    __assert_rtn("otPlatDiagRadioGetRawPowerSetting", "radio.cpp", 1163, "(aRawPowerSetting != nullptr) && (aRawPowerSettingLength != nullptr)");
  }

  setDiagOutput(v11, 500);
  snprintf(__str, 0x100uLL, "rawpowersetting");
  RadioSpinel = GetRadioSpinel();
  v8 = ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
  if (!v8)
  {
    v7 = strtok(v11, "\r");
    if (v7)
    {
      v8 = ot::Utils::CmdLineParser::ParseAsHexString(v7, a3, a2, v4);
    }

    else
    {
      v8 = 1;
    }
  }

  freeDiagOutput();
  return v8;
}

uint64_t otPlatDiagRadioRawPowerSettingEnable(uint64_t a1, char a2)
{
  v2 = "enable";
  if ((a2 & 1) == 0)
  {
    v2 = "disable";
  }

  snprintf(__str, 0x100uLL, "rawpowersetting %s", v2);
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
}

uint64_t otPlatDiagRadioTransmitCarrier(uint64_t a1, char a2)
{
  v2 = "start";
  if ((a2 & 1) == 0)
  {
    v2 = "stop";
  }

  snprintf(__str, 0x100uLL, "cw %s", v2);
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
}

uint64_t otPlatDiagRadioTransmitStream(uint64_t a1, char a2)
{
  v2 = "start";
  if ((a2 & 1) == 0)
  {
    v2 = "stop";
  }

  snprintf(__str, 0x100uLL, "stream %s", v2);
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::PlatDiagProcess(RadioSpinel, __str);
}

uint64_t otPlatRadioGetSupportedChannelMask()
{
  if (ot::Posix::Configuration::IsValid(&sConfig))
  {
    return ot::Posix::Configuration::GetSupportedChannelMask(&sConfig);
  }

  else
  {
    RadioSpinel = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::GetRadioChannelMask(RadioSpinel, 0);
  }
}

uint64_t ot::Posix::Configuration::GetSupportedChannelMask(ot::Posix::Configuration *this)
{
  return *(this + 13);
}

{
  return ot::Posix::Configuration::GetSupportedChannelMask(this);
}

uint64_t otPlatRadioGetPreferredChannelMask()
{
  if (ot::Posix::Configuration::IsValid(&sConfig))
  {
    return ot::Posix::Configuration::GetPreferredChannelMask(&sConfig);
  }

  else
  {
    RadioSpinel = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::GetRadioChannelMask(RadioSpinel, 1);
  }
}

uint64_t ot::Posix::Configuration::GetPreferredChannelMask(ot::Posix::Configuration *this)
{
  return *(this + 14);
}

{
  return ot::Posix::Configuration::GetPreferredChannelMask(this);
}

uint64_t otPlatRadioSetMacKey(uint64_t a1, unsigned __int8 a2, unsigned __int8 a3, _OWORD *a4, _OWORD *a5, _OWORD *a6)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::SetMacKey(RadioSpinel, a2, a3, a4, a5, a6);
  v17 = result;
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v17 == 7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    otExitCodeToString(v8);
    otLogCritPlat("%s() at %s:%d: %s", v9, v10, v11, v12, v13, v14, v15, "otPlatRadioSetMacKey");
    handle_daemon_exit();
    if (v17 == 7)
    {
      v16 = 2;
    }

    else
    {
      v16 = 1;
    }

    exit(v16);
  }

  return result;
}

uint64_t otPlatRadioSetMacFrameCounter(uint64_t a1, unsigned int a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::SetMacFrameCounter(RadioSpinel, a2, 0);
  v13 = result;
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v13 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", v5, v6, v7, v8, v9, v10, v11, "otPlatRadioSetMacFrameCounter");
    handle_daemon_exit();
    if (v13 == 7)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    exit(v12);
  }

  return result;
}

uint64_t otPlatRadioSetMacFrameCounterIfLarger(uint64_t a1, unsigned int a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::SetMacFrameCounter(RadioSpinel, a2, 1);
  v13 = result;
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v13 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", v5, v6, v7, v8, v9, v10, v11, "otPlatRadioSetMacFrameCounterIfLarger");
    handle_daemon_exit();
    if (v13 == 7)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    exit(v12);
  }

  return result;
}

uint64_t otPlatRadioUpdateCstSampleTime(uint64_t a1, unsigned int a2)
{
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::UpdateCstSampleTime(RadioSpinel, a2);
  v13 = result;
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v13 == 7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }

    otExitCodeToString(v4);
    otLogCritPlat("%s() at %s:%d: %s", v5, v6, v7, v8, v9, v10, v11, "otPlatRadioUpdateCstSampleTime");
    handle_daemon_exit();
    if (v13 == 7)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    exit(v12);
  }

  return result;
}

uint64_t otPlatRadioSetCslParentClockAccuracy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a2;
  otLogInfoPlat("ClockAccuracy Info-SetCslParentClockAccuracy: %d", a2, a3, a4, a5, a6, a7, a8, a2);
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::Set(RadioSpinel, 15393, "C", v20);
  v19 = result;
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v19 == 7)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    otExitCodeToString(v10);
    otLogCritPlat("%s() at %s:%d: %s", v11, v12, v13, v14, v15, v16, v17, "otPlatRadioSetCslParentClockAccuracy");
    handle_daemon_exit();
    if (v19 == 7)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    exit(v18);
  }

  return result;
}

uint64_t otPlatRadioSetCslParentUncertainty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a2;
  otLogInfoPlat("ClockAccuracy Info-SetCslParentUncertainty: %d", a2, a3, a4, a5, a6, a7, a8, a2);
  RadioSpinel = GetRadioSpinel();
  result = ot::Spinel::RadioSpinel::Set(RadioSpinel, 15394, "C", v20);
  v19 = result;
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio.cpp", 47);
    if (v19 == 7)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    otExitCodeToString(v10);
    otLogCritPlat("%s() at %s:%d: %s", v11, v12, v13, v14, v15, v16, v17, "otPlatRadioSetCslParentUncertainty");
    handle_daemon_exit();
    if (v19 == 7)
    {
      v18 = 2;
    }

    else
    {
      v18 = 1;
    }

    exit(v18);
  }

  return result;
}

uint64_t otPlatRadioGetRegion(uint64_t a1, unsigned __int16 *a2)
{
  if (ot::Posix::Configuration::IsValid(&sConfig))
  {
    *a2 = ot::Posix::Configuration::GetRegion(&sConfig);
    return 0;
  }

  else
  {
    RadioSpinel = GetRadioSpinel();
    return ot::Spinel::RadioSpinel::GetRadioRegion(RadioSpinel, a2);
  }
}

uint64_t ot::Posix::Configuration::GetRegion(ot::Posix::Configuration *this)
{
  return *(this + 24);
}

{
  return ot::Posix::Configuration::GetRegion(this);
}

uint64_t otPlatRadioConfigureEnhAckProbing(uint64_t a1, char a2, unsigned __int16 a3, uint64_t a4)
{
  v9 = a2;
  v8 = a1;
  v7 = a3;
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::ConfigureEnhAckProbing(RadioSpinel, v9, &v7, a4);
}

uint64_t otPowerControlSetMode(uint64_t a1, unsigned int a2)
{
  RadioSpinel = GetRadioSpinel();
  ot::Spinel::RadioSpinel::SetTpcMode(RadioSpinel, a2);
  return 0;
}

uint64_t otPowerControlGetMode(uint64_t a1)
{
  v4 = a1;
  v3 = 0;
  RadioSpinel = GetRadioSpinel();
  ot::Spinel::RadioSpinel::GetTpcMode(RadioSpinel, &v3);
  return v3;
}

uint64_t ot::Spinel::RadioSpinel::GetRadioSpinelMetrics(ot::Spinel::RadioSpinel *this)
{
  return this + 1720;
}

{
  return ot::Spinel::RadioSpinel::GetRadioSpinelMetrics(this);
}

uint64_t otPlatVendorGetCsmaBackoffHistogram(uint64_t a1, _BYTE *a2)
{
  v12 = a1;
  v11 = a2;
  VendorCsmaBackoffHistogram = 0;
  v9 = 1024;
  RadioSpinel = GetRadioSpinel();
  VendorCsmaBackoffHistogram = ot::Spinel::RadioSpinel::GetVendorCsmaBackoffHistogram(RadioSpinel, v13, &v9);
  if (!VendorCsmaBackoffHistogram)
  {
    return unpackVendorCsmaBackoffHistogram(v13, v9, v11, v3, v4, v5, v6, v7);
  }

  return VendorCsmaBackoffHistogram;
}

uint64_t unpackVendorCsmaBackoffHistogram(uint64_t a1, unsigned __int16 a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v17 = spinel_datatype_unpack(a1, a2, "d", a4, a5, a6, a7, a8, &v16);
  if (v17)
  {
    *v19 = 0;
    for (i = 0; i < *v19; ++i)
    {
      v17 = spinel_datatype_unpack(v16, v15, "L", v8, v9, v10, v11, v12, &v19[4 * i + 4]);
      if (!v17)
      {
        return 6;
      }

      v16 += v17;
      v15 -= v17;
    }
  }

  else
  {
    return 6;
  }

  return v18;
}

uint64_t otPlatVendorGetIfsAckDataPerNeighbor(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2;
  v9 = 100;
  RadioSpinel = GetRadioSpinel();
  VendorIfsAckDataPerNeighbor = ot::Spinel::RadioSpinel::GetVendorIfsAckDataPerNeighbor(RadioSpinel, v12, &v9);
  if (!VendorIfsAckDataPerNeighbor)
  {
    return unpackVendorAckDataPerNeighbor(v12, v9, v11, v10, v3, v4, v5, v6);
  }

  return VendorIfsAckDataPerNeighbor;
}

uint64_t unpackVendorAckDataPerNeighbor(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = 0;
  v15 = 0;
  for (i = 0; v19; *v17 = i)
  {
    v16 = spinel_datatype_unpack(v20, v19, "d", a4, a5, a6, a7, a8, &v15);
    if (v16 <= 0)
    {
      break;
    }

    v20 += v16;
    v19 -= v16;
    if (!spinel_datatype_unpack(v15, 0, "SESD", v8, v9, v10, v11, v12, v18 + 114 * i))
    {
      break;
    }

    ++i;
  }

  return 0;
}

uint64_t otPlatVendorGetPowerLimitTable(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v11 = a2;
  v10 = 500;
  RadioSpinel = GetRadioSpinel();
  VendorPowerLimitTable = ot::Spinel::RadioSpinel::GetVendorPowerLimitTable(RadioSpinel, v13, &v10);
  if (!VendorPowerLimitTable)
  {
    return unpackVendorPowerTable(v13, v10, v11, v3, v4, v5, v6, v7);
  }

  return VendorPowerLimitTable;
}

uint64_t unpackVendorPowerTable(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v22 = spinel_datatype_unpack(a1, a2, "UC", a4, a5, a6, a7, a8, &v21);
  v26 += v22;
  v25 -= v22;
  *(v24 + 30) = 7;
  for (i = 0; i < 7; ++i)
  {
    v22 = spinel_datatype_unpack(v26, v25, "d", v8, v9, v10, v11, v12, &v19);
    v26 += v22;
    v25 -= v22;
    v16 = v18;
    for (j = 0; j < v16; ++j)
    {
      v14 = 0;
      v22 = spinel_datatype_unpack(v19, v18, "c", v8, v9, v10, v11, v12, &v14);
      *(v24 + 31 + 16 * i + j) = v14;
      v19 += v22;
      v18 -= v22;
    }
  }

  return v23;
}

int *otPlatRadioRcp2GetSpinelVersion()
{
  v2 = 0;
  otPlatRcp2SpinelVersion = 0;
  dword_1004E9DBC = 0;
  dword_1004E9DC0 = 0;
  RadioSpinel = GetRadioSpinel();
  if (!ot::Spinel::RadioSpinel::Get(RadioSpinel, 15362, "LLL", &otPlatRcp2SpinelVersion, &dword_1004E9DBC, &dword_1004E9DC0))
  {
    return &otPlatRcp2SpinelVersion;
  }

  return v2;
}

uint64_t otPlatVendorSetPreferredAntenna(uint64_t a1, __int16 a2)
{
  v4 = a2 == 13;
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::SetVendorAntenna(RadioSpinel, v4);
}

__int128 *otPlatVendorCoexConfigTest(uint64_t a1, _BYTE *a2, _BYTE *a3, int *a4, int *a5, int *a6, BOOL *a7)
{
  if (a2)
  {
    result = getStringValue("vendor:coex:thread:priority");
    v26 = result;
    if (result)
    {
      logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
      if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
        {
          v19 = *a2;
          v8 = atoi(v26);
          __os_log_helper_16_2_3_8_32_4_0_4_0(v49, "otPlatVendorCoexConfigTest", v19, v8);
          _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "BT Load: %s, kWPANTUNDVendor_CoEx_Priority is set, current priority is %d, overwrite it to %d", v49, 0x18u);
        }
      }

      else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v48, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v48, 0x16u);
      }

      result = atoi(v26);
      *a2 = result;
    }
  }

  if (a3)
  {
    result = getStringValue("vendor:coex:thread:fragment:size");
    v27 = result;
    if (result)
    {
      v24 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v24 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v18 = *a3;
          v9 = atoi(v27);
          __os_log_helper_16_2_3_8_32_4_0_4_0(v47, "otPlatVendorCoexConfigTest", v18, v9);
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "BT Load: %s, kWPANTUNDVendor_CoEx_Fragment_Size is set, current fragment size is %d, overwrite it to %d", v47, 0x18u);
        }
      }

      else if (!v24 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v46, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v46, 0x16u);
      }

      result = atoi(v27);
      *a3 = result;
    }
  }

  if (a4)
  {
    result = getStringValue("vendor:coex:thread:datapoll:timeout");
    v28 = result;
    if (result)
    {
      v23 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v23 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v17 = *a4;
          v10 = atoi(v28);
          __os_log_helper_16_2_3_8_32_4_0_4_0(v45, "otPlatVendorCoexConfigTest", v17, v10);
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "BT Load: %s, kWPANTUNDVendor_CoEx_DataPoll_Timeout is set, current data_poll_timeout is %d, overwrite it to %d", v45, 0x18u);
        }
      }

      else if (!v23 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v44, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v44, 0x16u);
      }

      result = atoi(v28);
      *a4 = result;
    }
  }

  if (a5)
  {
    result = getStringValue("vendor:coex:thread:dutycycle:high");
    v29 = result;
    if (result)
    {
      v22 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v22 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v16 = *a5;
          v11 = atoi(v29);
          __os_log_helper_16_2_3_8_32_4_0_4_0(v43, "otPlatVendorCoexConfigTest", v16, v11);
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "BT Load: %s, kWPANTUNDVendor_CoEx_Dutycycle_High is set, current dt high time is %d, overwrite it to %d", v43, 0x18u);
        }
      }

      else if (!v22 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v42, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v42, 0x16u);
      }

      result = atoi(v29);
      *a5 = result;
    }
  }

  if (a6)
  {
    result = getStringValue("vendor:coex:thread:dutycycle:interval");
    v30 = result;
    if (result)
    {
      v21 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v21 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v15 = *a6;
          v12 = atoi(v30);
          __os_log_helper_16_2_3_8_32_4_0_4_0(v41, "otPlatVendorCoexConfigTest", v15, v12);
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "BT Load: %s, kWPANTUNDVendor_CoEx_Dutycycle_Interval is set, current dt interval time is %d, overwrite it to %d", v41, 0x18u);
        }
      }

      else if (!v21 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v40, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v40, 0x16u);
      }

      result = atoi(v30);
      *a6 = result;
    }
  }

  if (a7)
  {
    result = getStringValue("vendor:coex:thread:dutycycle:datapoll:align");
    v31 = result;
    if (result)
    {
      v20 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v20 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v14 = *a7;
          v13 = atoi(v31);
          __os_log_helper_16_2_3_8_32_4_0_4_0(v39, "otPlatVendorCoexConfigTest", v14, v13);
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "BT Load: %s, kWPANTUNDVendor_CoEx_Dutycycle_Datappoll_Align is set, current datapoll align is %d, overwrite it to %d", v39, 0x18u);
        }
      }

      else if (!v20 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v38, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v38, 0x16u);
      }

      result = atoi(v31);
      *a7 = result != 0;
    }
  }

  return result;
}

uint64_t otPlatVendorCoexThreadClear(uint64_t a1)
{
  v7 = otPlatVendorSetPriority(a1, 0, 0, 0);
  if (!v7 && ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 || !otPlatVendorSetDutyCycle(a1, 0, 0, 0, v1, v2, v3, v4)))
  {
    otLinkSetFragmentSize(a1, 0x7Fu);
    otLinkSetDataPollTimeoutCoex(a1, 100);
  }

  if (v7)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v10, "otPlatVendorCoexThreadClear", v7);
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "BT Load: %s, otPlatVendorSetPriority failed error is %d", v10, 0x12u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v9, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v9, 0x16u);
    }
  }

  return v7;
}

uint64_t otPlatVendorCoexThreadDetached(uint64_t a1, char a2, unsigned __int8 a3, unsigned __int8 a4, char a5, char a6)
{
  v27 = 0;
  v26 = 3;
  v25 = 0;
  v24 = 10000;
  v23 = 450000;
  v22 = 0;
  v21 = 1;
  v20 = 0;
  if (a2)
  {
    if (a3 >= 3u)
    {
      if (a3 >= 5u)
      {
        if (a3 == 5)
        {
          v24 = 2500;
          v23 = 60000;
          v22 = 1;
          v21 = 0;
          if (a4 == 2 || a4 == 5 || a4 == 1 || a4 == 6)
          {
            v20 = 60;
            v25 = 22500;
          }

          else if (a4 == 10 || a4 == 7)
          {
            v20 = 60;
            v25 = 22500;
          }

          else if ((a5 & 1) != 0 && (a4 == 3 || a4 == 4 || a4 == 8))
          {
            v20 = 60;
          }

          logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
          if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
          {
            if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
            {
              __os_log_helper_16_2_4_8_32_4_0_4_0_4_0(v41, "otPlatVendorCoexThreadDetached", a3, a4, 3);
              _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "BT Load: %s NewAttachState is %d: Child ID Req procedure started. bt audio task ID is %d, set the priority as %d.", v41, 0x1Eu);
            }
          }

          else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v40, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v40, 0x16u);
          }

          v14 = log_get_logging_obg("com.apple.threadradiod", "default");
          if (v14 && (syslog_is_the_mask_enabled(6) & 1) != 0)
          {
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              __os_log_helper_16_2_1_8_32(v39, "otPlatVendorCoexThreadDetached");
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "BT Load: %s Ongoing Attach procedure after parent response is received, set RX on IDLE use QOS Percentage Policy config to FALSE", v39, 0xCu);
            }
          }

          else if (!v14 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_2_2_8_32_8_32(v38, "com.apple.wpantund.ncp", "default");
            _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v38, 0x16u);
          }
        }
      }

      else
      {
        v17 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v17 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_3_8_32_4_0_4_0(v45, "otPlatVendorCoexThreadDetached", a3, 3);
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "BT Load: %s NewAttachState is %d: Backoff time is fired, ready to send out ParentReq now. set the priority as %d.", v45, 0x18u);
          }
        }

        else if (!v17 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v44, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v44, 0x16u);
        }

        v16 = log_get_logging_obg("com.apple.threadradiod", "default");
        if (v16 && (syslog_is_the_mask_enabled(6) & 1) != 0)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            __os_log_helper_16_2_1_8_32(v43, "otPlatVendorCoexThreadDetached");
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "BT Load: %s Ongoing Attach procedure, set RX on IDLE use QOS Percentage Policy config to TRUE", v43, 0xCu);
          }
        }

        else if (!v16 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_32_8_32(v42, "com.apple.wpantund.ncp", "default");
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v42, 0x16u);
        }

        if (anyVoiceCallActive(a4))
        {
          v24 = 10000;
          v23 = 450000;
        }

        else
        {
          v24 = 10000;
          if (a6)
          {
            v23 = 90000;
          }

          else
          {
            v23 = 60000;
          }
        }
      }
    }

    else
    {
      v26 = 0;
      v24 = 0;
      v23 = 0;
      v19 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v19 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_3_8_32_4_0_4_0(v49, "otPlatVendorCoexThreadDetached", a3, 0);
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "BT Load: %s NewAttachState is %d: We might still wait for backoff timeout to send out ParentReq, keep the priority as %d.", v49, 0x18u);
        }
      }

      else if (!v19 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v48, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v48, 0x16u);
      }

      v18 = log_get_logging_obg("com.apple.threadradiod", "default");
      if (v18 && (syslog_is_the_mask_enabled(6) & 1) != 0)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_32(v47, "otPlatVendorCoexThreadDetached");
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "BT Load: %s There is no Ongoing Attach procedure, set RX on IDLE use QOS Percentage Policy config to FALSE", v47, 0xCu);
        }
      }

      else if (!v18 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v46, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v46, 0x16u);
      }

      v21 = 0;
    }
  }

  else
  {
    v13 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v13 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_1_8_32(v37, "otPlatVendorCoexThreadDetached");
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "BT Load: %s The role change to detached, but there is no attach state change yet.", v37, 0xCu);
      }
    }

    else if (!v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v36, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v36, 0x16u);
    }
  }

  v12 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v12 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_11_8_32_4_0_4_0_4_0_4_0_4_0_4_0_4_0_4_0_4_0_4_0(v35, "otPlatVendorCoexThreadDetached", v26, 0, v25, 127, 100, v24, v23, v22 & 1, v21 & 1, v20);
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "BT Load: %s Set Thread coex config: priority to %d, overridePriority to %d, overridePriorityDuration to %d us, max fragment size to %d, data poll timeout to %d, dt_high(x) %d, dt_interval(y) %d, dt_datapoll_align %d, RxOnIdleUseQOSPercentagePolicy %d, B2BDataPollDelay %d ms", v35, 0x48u);
    }
  }

  else if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v34, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v34, 0x16u);
  }

  if (!otPlatVendorSetPriority(a1, v26, 0, v25) && ((otPlatRadioGetRcp2Vendor2Enabled() & 1) != 0 || !otPlatVendorSetDutyCycle(a1, v24, v23, v22 & 1, v6, v7, v8, v9) && (v27 = otPlatVendorSetRxOnIdleUseQOSPercentagePolicyConfig(a1, v21 & 1)) == 0))
  {
    otLinkSetFragmentSize(a1, 0x7Fu);
    otLinkSetDataPollTimeoutCoex(a1, 100);
    otLinkSetB2BDataPollDelay(a1, v20);
    otLinkSetSessionPriority(a1, v26);
  }

  if (v27)
  {
    v11 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v11 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v33, "otPlatVendorCoexThreadDetached", v27);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "BT Load: %s, otPlatVendorSetPriority failed error is %d", v33, 0x12u);
      }
    }

    else if (!v11 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v32, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v32, 0x16u);
    }
  }

  return v27;
}

uint64_t __os_log_helper_16_2_11_8_32_4_0_4_0_4_0_4_0_4_0_4_0_4_0_4_0_4_0_4_0(uint64_t result, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, int a11, int a12)
{
  *result = 2;
  *(result + 1) = 11;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 0;
  *(result + 13) = 4;
  *(result + 14) = a3;
  *(result + 18) = 0;
  *(result + 19) = 4;
  *(result + 20) = a4;
  *(result + 24) = 0;
  *(result + 25) = 4;
  *(result + 26) = a5;
  *(result + 30) = 0;
  *(result + 31) = 4;
  *(result + 32) = a6;
  *(result + 36) = 0;
  *(result + 37) = 4;
  *(result + 38) = a7;
  *(result + 42) = 0;
  *(result + 43) = 4;
  *(result + 44) = a8;
  *(result + 48) = 0;
  *(result + 49) = 4;
  *(result + 50) = a9;
  *(result + 54) = 0;
  *(result + 55) = 4;
  *(result + 56) = a10;
  *(result + 60) = 0;
  *(result + 61) = 4;
  *(result + 62) = a11;
  *(result + 66) = 0;
  *(result + 67) = 4;
  *(result + 68) = a12;
  return result;
}

uint64_t otPlatVendorGetPowerMappingTable(uint64_t a1, uint64_t a2)
{
  v12 = a1;
  v11 = a2;
  VendorPowerMappingTable = 0;
  v9 = 343;
  RadioSpinel = GetRadioSpinel();
  VendorPowerMappingTable = ot::Spinel::RadioSpinel::GetVendorPowerMappingTable(RadioSpinel, v13, &v9);
  if (!VendorPowerMappingTable)
  {
    return unpackVendorPowerMappingTable(v13, v9, v11, v3, v4, v5, v6, v7);
  }

  return VendorPowerMappingTable;
}

uint64_t unpackVendorPowerMappingTable(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a1;
  v37 = a2;
  v36 = a3;
  v35 = 0;
  v34 = 0;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v34 = spinel_datatype_unpack(a1, a2, "S", a4, a5, a6, a7, a8, &v33);
  if (v34 == 1)
  {
    v34 = 2;
  }

  *v36 = v33;
  v38 += v34;
  v37 -= v34;
  v34 = spinel_datatype_unpack(v38, v37, "C", v8, v9, v10, v11, v12, &v32);
  *(v36 + 2) = v32;
  v38 += v34;
  v37 -= v34;
  v34 = spinel_datatype_unpack(v38, v37, "d", v13, v14, v15, v16, v17, &v31);
  v38 += v34;
  v37 -= v34;
  v29 = v30;
  for (i = 0; i < v29; ++i)
  {
    v27 = 0;
    v34 = spinel_datatype_unpack(v31, v30, "c", v18, v19, v20, v21, v22, &v27);
    v31 += v34;
    v30 -= v34;
    *(v36 + 3 + i) = v27;
  }

  for (j = 0; j < 0x10u; ++j)
  {
    v34 = spinel_datatype_unpack(v38, v37, "d", v18, v19, v20, v21, v22, &v31);
    v38 += v34;
    v37 -= v34;
    v29 = v30;
    for (k = 0; k < v29; ++k)
    {
      v24 = 0;
      v34 = spinel_datatype_unpack(v31, v30, "c", v18, v19, v20, v21, v22, &v24);
      *(v36 + 23 + 20 * j + k) = v24;
      v31 += v34;
      v30 -= v34;
    }
  }

  return v35;
}

uint64_t otPlatVendorGetPowerMappingTableFlashData(uint64_t a1, char *a2, unsigned int *a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  VendorPowerMappingTableFlashData = 0;
  v9 = 1024;
  RadioSpinel = GetRadioSpinel();
  VendorPowerMappingTableFlashData = ot::Spinel::RadioSpinel::GetVendorPowerMappingTableFlashData(RadioSpinel, v14, &v9);
  if (!VendorPowerMappingTableFlashData)
  {
    return unpackVendorPowerMappingFlashData(v14, v9, v12, v11, v4, v5, v6, v7);
  }

  return VendorPowerMappingTableFlashData;
}

uint64_t unpackVendorPowerMappingFlashData(const unsigned __int8 *a1, unsigned __int16 a2, char *a3, unsigned int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v18 = spinel_datatype_unpack(a1, a2, "S", a4, a5, a6, a7, a8, &v17);
  v23 += v18;
  v22 -= v18;
  *v20 = v17;
  v16 = v17;
  for (i = 0; i < v16; ++i)
  {
    v14 = 0;
    v18 = spinel_datatype_unpack(v23, v22, "c", v8, v9, v10, v11, v12, &v14);
    v23 += v18;
    v22 -= v18;
    v21[i] = v14;
  }

  return v19;
}

uint64_t otPlatVendorSetPowerLimitTableActiveId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a1;
  v28 = a2;
  VendorCC = 0;
  if (sCurrentRegion != 255 && sCurrentRegion == v28)
  {
    v26 = 0;
    RadioSpinel = GetRadioSpinel();
    VendorCC = ot::Spinel::RadioSpinel::GetVendorCC(RadioSpinel, &v26);
    otLogWarnPlat("%s RegionCode = %d in controller, and Host request to set the RegionCode = %d", v10, v11, v12, v13, v14, v15, v16, "otPlatVendorSetPowerLimitTableActiveId");
    if (VendorCC || v26 == v28)
    {
      otLogWarnPlat("%s RegionCode = %d request not set,error = %d", v17, v18, v19, v20, v21, v22, v23, "otPlatVendorSetPowerLimitTableActiveId");
    }

    else
    {
      otLogWarnPlat("A crash may have occurred in the firmware : %s RegionCode = %d to be set", v17, v18, v19, v20, v21, v22, v23, "otPlatVendorSetPowerLimitTableActiveId");
      v24 = GetRadioSpinel();
      VendorCC = ot::Spinel::RadioSpinel::SetVendorCC(v24, v28);
    }
  }

  else
  {
    otLogWarnPlat("%s RegionCode = %d to be set", a2, a3, a4, a5, a6, a7, a8, "otPlatVendorSetPowerLimitTableActiveId");
    v8 = GetRadioSpinel();
    VendorCC = ot::Spinel::RadioSpinel::SetVendorCC(v8, v28);
  }

  if (!VendorCC)
  {
    sCurrentRegion = v28;
  }

  return VendorCC;
}

uint64_t otPlatVendorSetPowerMappingTableFlashData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 500;
  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::SetVendorPowerMappingTableFlashData(RadioSpinel, v10, &v5);
}

uint64_t otPlatRadioGetMinInterframeDelay(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    __assert_rtn("otPlatRadioGetMinInterframeDelay", "radio.cpp", 3570, "aDurationInMs != nullptr");
  }

  RadioSpinel = GetRadioSpinel();
  return ot::Spinel::RadioSpinel::GetMinInterframeDelay(RadioSpinel, a2);
}

void ot::Spinel::RadioSpinel::~RadioSpinel(ot::Spinel::RadioSpinel *this)
{
  ot::Spinel::RadioSpinel::~RadioSpinel(this);
}

{
  ot::Spinel::RadioSpinel::Deinit(this);
}

__darwin_ct_rune_t __isctype(__darwin_ct_rune_t _c, unint64_t _f)
{
  return (_c & 0x80000000) == 0 && _c < 256 && (_DefaultRuneLocale.__runetype[_c] & _f) != 0;
}

{
  return __isctype(_c, _f);
}

uint64_t ot::Posix::RcpCapsDiag::RcpCapsDiag(uint64_t this, ot::Spinel::RadioSpinel *a2)
{
  *this = a2;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t ot::Spinel::SpinelDriver::GetVersion(ot::Spinel::SpinelDriver *this)
{
  return this + 8289;
}

{
  return ot::Spinel::SpinelDriver::GetVersion(this);
}

const char *handleDiagOutput(const char *result, va_list a2, void *a3)
{
  if (sDiagOutput)
  {
    if (sDiagOutputLen)
    {
      result = vsnprintf(sDiagOutput, sDiagOutputLen, result, a2);
      if (result > 0)
      {
        if (sDiagOutputLen > result)
        {
          v3 = result;
        }

        else
        {
          v3 = sDiagOutputLen;
        }

        sDiagOutput += v3;
        sDiagOutputLen -= v3;
      }
    }
  }

  return result;
}

char *ot::Posix::RadioUrl::Init(char *this, const char *a2)
{
  v18 = this;
  if (a2)
  {
    if (strnlen(a2, 0x200uLL) >= 0x200)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio_url.cpp", 47);
      otExitCodeToString(2);
      otLogCritPlat("%s() at %s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "Init");
      handle_daemon_exit();
      exit(2);
    }

    strncpy(v18 + 32, a2, 0x1FFuLL);
    this = ot::Url::Url::Init(v18, v18 + 32);
    v19 = this;
    if (this)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/radio_url.cpp", 47);
      if (v19 == 7)
      {
        v9 = 2;
      }

      else
      {
        v9 = 1;
      }

      otExitCodeToString(v9);
      otLogCritPlat("%s() at %s:%d: %s", v10, v11, v12, v13, v14, v15, v16, "Init");
      handle_daemon_exit();
      if (v19 == 7)
      {
        v17 = 2;
      }

      else
      {
        v17 = 1;
      }

      exit(v17);
    }
  }

  return this;
}

uint64_t otPlatIsSettingsFileExists(uint64_t a1)
{
  getSettingsFileName(a1, v10, 0);
  v4 = open(v10, 0, 384);
  if (v4 == -1)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(3) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v9, "otPlatIsSettingsFileExists", v10);
        _os_log_error_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_ERROR, "%s: FileName: %s doesn't exist ", v9, 0x16u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v8, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v8, 0x16u);
    }

    v5 = 0;
  }

  else
  {
    v2 = log_get_logging_obg("com.apple.threadradiod", "default");
    if (v2 && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_8_32(v7, "otPlatIsSettingsFileExists", v10);
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s: FileName: %s exist ", v7, 0x16u);
      }
    }

    else if (!v2 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v6, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v6, 0x16u);
    }

    close(v4);
    v5 = 1;
  }

  return v5 & 1;
}

void getSettingsFileName(uint64_t a1, char *a2, char a3)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = 0;
  otPlatRadioGetIeeeEui64(a1, &v8);
  v8 = ot::BigEndian::HostSwap64(v8);
  ExtendedAddress = otLinkGetExtendedAddress(v11);
  Uint64 = ot::BigEndian::ReadUint64(ExtendedAddress, v3);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_8_0(v15, Uint64);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "ExtendedAddress in Settings File: 0x%llx", v15, 0xCu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v14, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v14, 0x16u);
  }

  if (v9)
  {
    snprintf(v10, 0x3EuLL, "var/db/com.apple.threadradiod/cfg_%llx.%s", Uint64, "swap");
  }

  else
  {
    snprintf(v10, 0x3EuLL, "var/db/com.apple.threadradiod/cfg_%llx.%s", Uint64, "data");
  }

  v4 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v4 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_1_8_32(v13, v10);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "FileName: %s", v13, 0xCu);
    }
  }

  else if (!v4 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v12, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v12, 0x16u);
  }
}

uint64_t otPlatSettingsInit(uint64_t a1, uint64_t a2, __int16 a3)
{
  v37 = a1;
  v36 = a2;
  v35 = a3;
  v34 = 0;
  result = IsSystemDryRun();
  if ((result & 1) == 0)
  {
    if (stat("var/db/com.apple.threadradiod", &v33) == -1 && mkdir("var/db/com.apple.threadradiod", 0x1EDu))
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v4, v5, v6, v7, v8, v9, v10, "otPlatSettingsInit");
      handle_daemon_exit();
      exit(5);
    }

    getSettingsFileName(v37, v40, 0);
    if (sSettingsFd != -1)
    {
      close(sSettingsFd);
      sSettingsFd = -1;
    }

    sSettingsFd = open(v40, 16777730, 384);
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      oslog = logging_obg;
      type = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_3_8_32_8_32_4_0(v39, "otPlatSettingsInit", v40, sSettingsFd);
        _os_log_impl(&_mh_execute_header, oslog, type, "%s: FileName: %s data file opened with fd = %d", v39, 0x1Cu);
      }
    }

    else if (!logging_obg)
    {
      v29 = &_os_log_default;
      v28 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v38, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, v29, v28, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v38, 0x16u);
      }
    }

    checkCTRSettingsFileLimit();
    if (sSettingsFd == -1)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v11, v12, v13, v14, v15, v16, v17, "otPlatSettingsInit");
      handle_daemon_exit();
      exit(5);
    }

    v27 = lseek(sSettingsFd, 0, 2);
    result = lseek(sSettingsFd, 0, 0);
    *&v26[1] = result;
    while (*&v26[1] < v27)
    {
      v26[0] = 0;
      result = read(sSettingsFd, v26 + 2, 2uLL);
      if (result != 2)
      {
        v34 = 6;
        break;
      }

      result = read(sSettingsFd, v26, 2uLL);
      if (result != 2)
      {
        v34 = 6;
        break;
      }

      *&v26[1] += LOWORD(v26[0]) + 4;
      v25 = *&v26[1];
      result = lseek(sSettingsFd, LOWORD(v26[0]), 1);
      if (v25 != result)
      {
        v34 = 6;
        break;
      }
    }
  }

  if (v34 == 6)
  {
    result = ftruncate(sSettingsFd, 0);
    if (result)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v18, v19, v20, v21, v22, v23, v24, "otPlatSettingsInit");
      handle_daemon_exit();
      exit(5);
    }
  }

  return result;
}

uint64_t __os_log_helper_16_2_3_8_32_8_32_4_0(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  *result = 2;
  *(result + 1) = 3;
  *(result + 2) = 32;
  *(result + 3) = 8;
  *(result + 4) = a2;
  *(result + 12) = 32;
  *(result + 13) = 8;
  *(result + 14) = a3;
  *(result + 22) = 0;
  *(result + 23) = 4;
  *(result + 24) = a4;
  return result;
}

uint64_t otPlatSettingsDeinit()
{
  result = IsSystemDryRun();
  if ((result & 1) == 0 && sSettingsFd != -1)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v10, "otPlatSettingsDeinit", sSettingsFd);
        _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: FileName: Deinit with fd = %d", v10, 0x12u);
      }
    }

    else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v9, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v9, 0x16u);
    }

    result = close(sSettingsFd);
    if (result)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v1, v2, v3, v4, v5, v6, v7, "otPlatSettingsDeinit");
      handle_daemon_exit();
      exit(5);
    }

    sSettingsFd = -1;
  }

  return result;
}

uint64_t otPlatSettingsGet(uint64_t a1, unsigned __int16 a2, int a3, void *a4, unsigned __int16 *a5)
{
  v13 = 23;
  if ((IsSystemDryRun() & 1) == 0)
  {
    v13 = ot::Posix::PlatformSettingsGet(a1, a2, a3, a4, a5);
  }

  if (v13 == 6)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", v5, v6, v7, v8, v9, v10, v11, "otPlatSettingsGet");
    handle_daemon_exit();
    exit(1);
  }

  return v13;
}

uint64_t ot::Posix::PlatformSettingsGet(uint64_t a1, unsigned __int16 a2, int a3, void *a4, unsigned __int16 *a5)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v15 = 23;
  if (sSettingsFd == -1)
  {
    logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
    if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
    {
      v13 = logging_obg;
      v12 = OS_LOG_TYPE_INFO;
      if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
      {
        __os_log_helper_16_2_2_8_32_4_0(v23, "PlatformSettingsGet", sSettingsFd);
        _os_log_impl(&_mh_execute_header, v13, v12, "%s: sSettingsFd not valid [%d]", v23, 0x12u);
      }
    }

    else if (!logging_obg)
    {
      oslog = &_os_log_default;
      v10 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_2_2_8_32_8_32(v22, "com.apple.wpantund.ncp", "default");
        _os_log_error_impl(&_mh_execute_header, oslog, v10, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v22, 0x16u);
      }
    }

    return 23;
  }

  else
  {
    v9 = lseek(sSettingsFd, 0, 2);
    *&v8[1] = lseek(sSettingsFd, 0, 0);
    if (*&v8[1] || v9 < 0)
    {
      return 6;
    }

    while (*&v8[1] < v9)
    {
      v8[0] = 0;
      if (read(sSettingsFd, v8 + 2, 2uLL) != 2)
      {
        v15 = 6;
        break;
      }

      if (read(sSettingsFd, v8, 2uLL) != 2)
      {
        v15 = 6;
        break;
      }

      if (HIWORD(v8[0]) == v19)
      {
        if (!v18)
        {
          v15 = 0;
          if (v16)
          {
            if (!v17 || (LOWORD(v8[0]) > *v16 ? (v7 = *v16) : (v7 = v8[0]), read(sSettingsFd, v17, v7) == v7))
            {
              *v16 = v8[0];
            }

            else
            {
              v15 = 6;
            }
          }

          break;
        }

        --v18;
      }

      *&v8[1] += LOWORD(v8[0]) + 4;
      v6 = *&v8[1];
      if (v6 != lseek(sSettingsFd, LOWORD(v8[0]), 1))
      {
        v15 = 6;
        break;
      }
    }

    return v15;
  }
}

void ot::Posix::PlatformSettingsSet(uint64_t a1, __int16 a2, const void *a3, unsigned __int16 a4)
{
  v17 = a1;
  __buf = a2;
  v15 = a3;
  v14 = a4;
  v13 = -1;
  v12 = ot::Posix::PlatformSettingsDelete(a1, a2, -1, &v13);
  if (v12 && v12 != 23)
  {
    __assert_rtn("PlatformSettingsSet", "settings.cpp", 506, "false");
  }

  if (write(v13, &__buf, 2uLL) != 2 || write(v13, &v14, 2uLL) != 2 || (v4 = write(v13, v15, v14), v4 != v14))
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", v5, v6, v7, v8, v9, v10, v11, "PlatformSettingsSet");
    handle_daemon_exit();
    exit(1);
  }

  swapPersist(v17, v13);
}

void ot::Posix::PlatformSettingsAdd(uint64_t a1, __int16 a2, const void *a3, unsigned __int16 a4)
{
  v25 = a1;
  __buf = a2;
  v23 = a3;
  v22 = a4;
  v21 = lseek(sSettingsFd, 0, 2);
  v20 = swapOpen(v25);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v27, "PlatformSettingsAdd", v20);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: FileName: Swap file updated with fd = %d", v27, 0x12u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v26, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v26, 0x16u);
  }

  if (v21 > 0)
  {
    if (lseek(sSettingsFd, 0, 0))
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v4, v5, v6, v7, v8, v9, v10, "PlatformSettingsAdd");
      handle_daemon_exit();
      exit(5);
    }

    swapWrite(v25, v20, v21);
  }

  if (write(v20, &__buf, 2uLL) != 2 || write(v20, &v22, 2uLL) != 2 || (v11 = write(v20, v23, v22), v11 != v22))
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", v12, v13, v14, v15, v16, v17, v18, "PlatformSettingsAdd");
    handle_daemon_exit();
    exit(1);
  }

  swapPersist(v25, v20);
}

uint64_t ot::Posix::PlatformSettingsDelete(uint64_t a1, __int16 a2, int a3, _DWORD *a4)
{
  v28 = a1;
  v27 = a2;
  v26 = a3;
  v25 = a4;
  v24 = 23;
  v23 = lseek(sSettingsFd, 0, 2);
  v22 = lseek(sSettingsFd, 0, 0);
  v21 = swapOpen(v28);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    v19 = logging_obg;
    v18 = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v30, "PlatformSettingsDelete", v21);
      _os_log_impl(&_mh_execute_header, v19, v18, "%s: FileName: Swap file delete with fd = %d", v30, 0x12u);
    }
  }

  else if (!logging_obg)
  {
    v17 = &_os_log_default;
    v16 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_32_8_32(v29, "com.apple.wpantund.ncp", "default");
      _os_log_error_impl(&_mh_execute_header, v17, v16, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v29, 0x16u);
    }
  }

  if (v21 == -1)
  {
    __assert_rtn("PlatformSettingsDelete", "settings.cpp", 554, "swapFd != -1");
  }

  if (v22)
  {
    __assert_rtn("PlatformSettingsDelete", "settings.cpp", 555, "offset == 0");
  }

  if ((v23 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      while (1)
      {
        if (v22 >= v23)
        {
          goto LABEL_34;
        }

        __buf = 0;
        v14 = 0;
        if (read(sSettingsFd, &__buf, 2uLL) != 2)
        {
          v24 = 1;
          goto LABEL_34;
        }

        if (read(sSettingsFd, &v14, 2uLL) != 2)
        {
          v24 = 1;
          goto LABEL_34;
        }

        v22 += v14 + 4;
        if (v27 == __buf)
        {
          break;
        }

LABEL_30:
        if (write(v21, &__buf, 2uLL) != 2 || write(v21, &v14, 2uLL) != 2)
        {
          handle_settings_captureABC();
          goto LABEL_34;
        }

        swapWrite(v28, v21, v14);
      }

      if (!v26)
      {
        v13 = v22;
        if (v13 == lseek(sSettingsFd, v14, 1))
        {
          swapWrite(v28, v21, v23 - v22);
          v24 = 0;
        }

        else
        {
          v24 = 1;
        }

        goto LABEL_34;
      }

      if (v26 != -1)
      {
        --v26;
        goto LABEL_30;
      }

      v12 = v22;
      if (v12 != lseek(sSettingsFd, v14, 1))
      {
        v24 = 1;
        goto LABEL_34;
      }

      v24 = 0;
    }
  }

  v24 = 1;
LABEL_34:
  if (v25)
  {
    *v25 = v21;
  }

  else if (v24)
  {
    if (v24 == 23)
    {
      swapDiscard(v28, v21);
    }

    else if (v24 == 1)
    {
      swapDiscard(v28, v21);
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
      otExitCodeToString(v24);
      otLogCritPlat("%s() at %s:%d: %s", v4, v5, v6, v7, v8, v9, v10, "PlatformSettingsDelete");
      handle_daemon_exit();
      exit(v24);
    }
  }

  else
  {
    swapPersist(v28, v21);
  }

  return v24;
}

uint64_t otPlatSettingsWipe()
{
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_2_8_32_4_0(v10, "otPlatSettingsWipe", sSettingsFd);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: FileName: wipe with fd = %d", v10, 0x12u);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v9, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v9, 0x16u);
  }

  result = ftruncate(sSettingsFd, 0);
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v1, v2, v3, v4, v5, v6, v7, "otPlatSettingsWipe");
    handle_daemon_exit();
    exit(5);
  }

  return result;
}

void swapPersist(uint64_t a1, int a2)
{
  getSettingsFileName(a1, &__from, 1);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_8_32_4_0(v32, "swapPersist", &__from, a2);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: FileName: %s swap file opened with fd = %d", v32, 0x1Cu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v31, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v31, 0x16u);
  }

  getSettingsFileName(a1, &__to, 0);
  v25 = log_get_logging_obg("com.apple.threadradiod", "default");
  if (v25 && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_8_32_4_0(v30, "swapPersist", &__to, sSettingsFd);
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s: FileName: %s data fiile opened with fd = %d", v30, 0x1Cu);
    }
  }

  else if (!v25 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v29, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v29, 0x16u);
  }

  if (close(sSettingsFd))
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "swapPersist");
    handle_daemon_exit();
    exit(5);
  }

  if (fsync(a2))
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v10, v11, v12, v13, v14, v15, v16, "swapPersist");
    handle_daemon_exit();
    exit(5);
  }

  rename(&__from, &__to, v9);
  if (v17)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v18, v19, v20, v21, v22, v23, v24, "swapPersist");
    handle_daemon_exit();
    exit(5);
  }

  sSettingsFd = a2;
}

uint64_t swapOpen(uint64_t a1)
{
  getSettingsFileName(a1, v13, 1);
  v10 = open(v13, 16778754, 384);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_8_32_4_0(v12, "swapOpen", v13, v10);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: FileName: %s swap file opened with fd = %d", v12, 0x1Cu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v11, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v11, 0x16u);
  }

  if (v10 == -1)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v1, v2, v3, v4, v5, v6, v7, "swapOpen");
    handle_daemon_exit();
    exit(5);
  }

  return v10;
}

ssize_t swapWrite(uint64_t a1, int a2, unsigned __int16 a3)
{
  while (a3)
  {
    if (a3 < 0x200uLL)
    {
      v11 = a3;
    }

    else
    {
      v11 = 512;
    }

    v12 = read(sSettingsFd, __buf, v11);
    if (v12 <= 0)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
      otExitCodeToString(1);
      otLogCritPlat("%s() at %s:%d: %s", v3, v4, v5, v6, v7, v8, v9, "swapWrite");
      handle_daemon_exit();
      exit(1);
    }

    result = write(a2, __buf, v12);
    if (result != v12)
    {
      __assert_rtn("swapWrite", "settings.cpp", 166, "rval == count");
    }

    a3 -= v12;
  }

  return result;
}

uint64_t swapDiscard(uint64_t a1, int a2)
{
  if (close(a2))
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "swapDiscard");
    handle_daemon_exit();
    exit(5);
  }

  getSettingsFileName(a1, v22, 1);
  logging_obg = log_get_logging_obg("com.apple.threadradiod", "default");
  if (logging_obg && (syslog_is_the_mask_enabled(6) & 1) != 0)
  {
    if (os_log_type_enabled(logging_obg, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_32_8_32_4_0(v21, "swapDiscard", v22, a2);
      _os_log_impl(&_mh_execute_header, logging_obg, OS_LOG_TYPE_INFO, "%s: FileName: %s swap file closed and unlinked with fd = %d", v21, 0x1Cu);
    }
  }

  else if (!logging_obg && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    __os_log_helper_16_2_2_8_32_8_32(v20, "com.apple.wpantund.ncp", "default");
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Logging1 Module is not defined for SubSystem: %s, Category: %s", v20, 0x16u);
  }

  result = unlink(v22);
  if (result)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/settings.cpp", 47);
    otExitCodeToString(5);
    otLogCritPlat("%s() at %s:%d: %s", v10, v11, v12, v13, v14, v15, v16, "swapDiscard");
    handle_daemon_exit();
    exit(5);
  }

  return result;
}

unint64_t ot::BigEndian::HostSwap64(ot::BigEndian *this)
{
  return ot::Swap64(this);
}

{
  return ot::BigEndian::HostSwap64(this);
}

unint64_t ot::BigEndian::ReadUint64(ot::BigEndian *this, const unsigned __int8 *a2)
{
  return _byteswap_uint64(*this);
}

{
  return ot::BigEndian::ReadUint64(this, a2);
}

unint64_t ot::Swap64(unint64_t this)
{
  return ((this & 0xFF00) << 40) | (this << 56) | ((this & 0xFF0000) << 24) | ((this & 0xFF000000) << 8) | ((this & 0xFF00000000) >> 8) | ((this & 0xFF0000000000) >> 24) | ((this & 0xFF000000000000) >> 40) | ((this & 0xFF00000000000000) >> 56);
}

{
  return ot::Swap64(this);
}

ot::Posix::ConfigFile *ot::Posix::ConfigFile::ConfigFile(ot::Posix::ConfigFile *this, const char *a2)
{
  *this = "#";
  *(this + 1) = ".swap";
  *(this + 2) = a2;
  if (!*(this + 2))
  {
    __assert_rtn("ConfigFile", "config_file.cpp", 49, "mFilePath != nullptr");
  }

  v10 = strlen(*(this + 2));
  if (v10 + strlen(*(this + 1)) >= 0xFF)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
    otExitCodeToString(1);
    otLogCritPlat("%s() at %s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "ConfigFile");
    handle_daemon_exit();
    exit(1);
  }

  return this;
}

{
  ot::Posix::ConfigFile::ConfigFile(this, a2);
  return this;
}

BOOL ot::Posix::ConfigFile::HasKey(const char **this, char *a2)
{
  v5 = this;
  v4 = a2;
  v3 = 0;
  return ot::Posix::ConfigFile::Get(this, a2, &v3, 0, 0) == 0;
}

uint64_t ot::Posix::ConfigFile::Get(const char **this, char *a2, int *a3, char *a4, int a5)
{
  v32 = this;
  __s1 = a2;
  v30 = a3;
  *&__n[1] = a4;
  __n[0] = a5;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  __lasts = 0;
  if (a2)
  {
    v27 = fopen(this[2], "r");
    if (v27)
    {
      if (fseek(v27, *v30, 0))
      {
        strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
        otExitCodeToString(5);
        otLogCritPlat("%s() at %s:%d: %s", v5, v6, v7, v8, v9, v10, v11, "Get");
        handle_daemon_exit();
        exit(5);
      }

      while (1)
      {
        v26 = fgets(__s, 513, v27);
        if (!v26)
        {
          break;
        }

        if (strlen(__s) != 512)
        {
          strtok_r(__s, *this, &__lasts);
          v23 = strstr[abi:dn200100](__s, "=");
          if (v23)
          {
            *v23 = 0;
            ot::Posix::ConfigFile::Strip(this, __s);
            if (!strcmp(__s1, __s))
            {
              if (*&__n[1])
              {
                v22 = v23 + 1;
                ot::Posix::ConfigFile::Strip(this, v23 + 1);
                if (__n[0] - 1 >= strlen(v23 + 1))
                {
                  v20 = strlen(v22);
                }

                else
                {
                  v20 = __n[0] - 1;
                }

                __n[0] = v20;
                memcpy(*&__n[1], v22, v20);
                *(*&__n[1] + __n[0]) = 0;
              }

              break;
            }
          }
        }
      }

      if (v26)
      {
        v24 = ftell(v27);
        if (v24 < 0)
        {
          strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
          otExitCodeToString(5);
          otLogCritPlat("%s() at %s:%d: %s", v12, v13, v14, v15, v16, v17, v18, "Get");
          handle_daemon_exit();
          exit(5);
        }

        *v30 = v24;
      }

      else
      {
        v28 = 23;
      }
    }

    else
    {
      v28 = 23;
    }
  }

  else
  {
    v28 = 7;
  }

  if (v27)
  {
    fclose(v27);
  }

  return v28;
}

void ot::Posix::ConfigFile::Strip(ot::Posix::ConfigFile *this, char *a2)
{
  v4 = 0;
  for (i = 0; a2[i]; ++i)
  {
    if (a2[i] != 32 && a2[i] != 13 && a2[i] != 10)
    {
      v2 = v4++;
      a2[v2] = a2[i];
    }
  }

  a2[v4] = 0;
}

uint64_t ot::Posix::ConfigFile::Add(const char **this, const char *a2, const char *a3)
{
  v40 = this;
  v39 = a2;
  v38 = a3;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v34 = 0;
  if (a2 && v38)
  {
    v35 = strdup(this[2]);
    if (!v35)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v3, v4, v5, v6, v7, v8, v9, "Add");
      handle_daemon_exit();
      exit(5);
    }

    v34 = dirname(v35);
    if (stat(v34, &v33) == -1 && mkdir(v34, 0x1B0u))
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v10, v11, v12, v13, v14, v15, v16, "Add");
      handle_daemon_exit();
      exit(5);
    }

    v36 = fopen(this[2], "at");
    if (!v36)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v17, v18, v19, v20, v21, v22, v23, "Add");
      handle_daemon_exit();
      exit(5);
    }

    if (fprintf(v36, "%s=%s\n", v39, v38) <= 0)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v24, v25, v26, v27, v28, v29, v30, "Add");
      handle_daemon_exit();
      exit(5);
    }
  }

  else
  {
    v37 = 7;
  }

  if (v36)
  {
    fclose(v36);
  }

  if (v35)
  {
    free(v35);
  }

  return v37;
}

uint64_t ot::Posix::ConfigFile::Clear(const char **this, const char *a2, std::error_code *a3)
{
  v33 = 0;
  v32 = 0;
  v31 = 0;
  if (a2)
  {
    v32 = fopen(this[2], "r");
    if (!v32)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v3, v4, v5, v6, v7, v8, v9, "Clear");
      handle_daemon_exit();
      exit(5);
    }

    snprintf(__str, 0xFFuLL, "%s%s", this[2], this[1]);
    v31 = fopen(__str, "w+");
    if (!v31)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v10, v11, v12, v13, v14, v15, v16, "Clear");
      handle_daemon_exit();
      exit(5);
    }

    while (fgets(v35, 512, v32))
    {
      v30 = strstr[abi:dn200100](v35, *this);
      v29 = strstr[abi:dn200100](v35, a2);
      v27 = 0;
      if (v29)
      {
        v26 = 1;
        if (v30)
        {
          v26 = v29 < v30;
        }

        v27 = v26;
      }

      if (!v27)
      {
        fputs(v35, v31);
      }
    }
  }

  else
  {
    v33 = 7;
  }

  if (v32)
  {
    fclose(v32);
  }

  if (v31)
  {
    fclose(v31);
  }

  if (!v33)
  {
    rename(__str, this[2], a3);
    if (v17)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/config_file.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v18, v19, v20, v21, v22, v23, v24, "Clear");
      handle_daemon_exit();
      exit(5);
    }
  }

  return v33;
}

uint64_t RcpHostContext::GetRcpHostContext(RcpHostContext *this)
{
  if (!RcpHostContext::sRcpHostContext)
  {
    __assert_rtn("GetRcpHostContext", "host_context.h", 288, "sRcpHostContext != nullptr");
  }

  return RcpHostContext::sRcpHostContext;
}

{
  return RcpHostContext::GetRcpHostContext(this);
}

void platformBackboneMulticastRoutingInit(const char *a1)
{
  v5 = a1;
  v1 = std::string::basic_string[abi:dn200100]<0>(&v4, a1);
  v2 = ot::Posix::InfraNetif::Get(v1);
  MulticastRoutingManager = ot::Posix::InfraNetif::GetMulticastRoutingManager(v2);
  ot::Posix::MulticastRoutingManager::Init(MulticastRoutingManager, &v4);
  std::string::~string(&v4);
}

uint64_t ot::Posix::InfraNetif::GetMulticastRoutingManager(ot::Posix::InfraNetif *this)
{
  return this + 40;
}

{
  return ot::Posix::InfraNetif::GetMulticastRoutingManager(this);
}

uint64_t platformUpdateBackboneInterfaceStatus(ot::Posix::InfraNetif *a1, char a2, char a3)
{
  v3 = ot::Posix::InfraNetif::Get(a1);
  MulticastRoutingManager = ot::Posix::InfraNetif::GetMulticastRoutingManager(v3);
  BackboneInterface = ot::Posix::MulticastRoutingManager::getBackboneInterface(MulticastRoutingManager);
  return ot::Posix::BackboneIPv6Interface::updateBackboneInterfaceInfo(BackboneInterface, a1, a2 & 1, a3 & 1);
}

uint64_t ot::Posix::MulticastRoutingManager::getBackboneInterface(ot::Posix::MulticastRoutingManager *this)
{
  return this + 42032;
}

{
  return ot::Posix::MulticastRoutingManager::getBackboneInterface(this);
}

void platformBackboneProcessMulticast(ot::Posix::InfraNetif *a1, uint64_t a2)
{
  v2 = ot::Posix::InfraNetif::Get(a1);
  MulticastRoutingManager = ot::Posix::InfraNetif::GetMulticastRoutingManager(v2);
  ot::Posix::MulticastRoutingManager::ProcessMulticastMessagesToBackBone(MulticastRoutingManager, a1, a2);
}

void platformSendPacketToBackBone(ot::Posix::InfraNetif *a1, size_t a2)
{
  v2 = ot::Posix::InfraNetif::Get(a1);
  MulticastRoutingManager = ot::Posix::InfraNetif::GetMulticastRoutingManager(v2);
  BackboneInterface = ot::Posix::MulticastRoutingManager::getBackboneInterface(MulticastRoutingManager);
  ot::Posix::BackboneIPv6Interface::send_bmlr_packet(BackboneInterface, a1, a2);
}

_BYTE *platformInitRcpMode(uint64_t a1)
{
  v1 = get802154RadioUrl(a1 + 16);
  result = platformRadioInit(v1);
  if ((*(a1 + 49) & 1) == 0)
  {
    v3 = platformRandomInit(result);
    v4 = ot::Posix::InfraNetif::Get(v3);
    ot::Posix::InfraNetif::Init(v4);
    gNetifName = 0;
    v5 = platformNetifInit(a1);
    v7 = ot::Posix::Udp::Get(v5);
    ThreadNetifName = otSysGetThreadNetifName();
    return ot::Posix::Udp::Init(v7, ThreadNetifName);
  }

  return result;
}

uint64_t get802154RadioUrl(uint64_t a1)
{
  v11 = 0;
  for (i = 0; i < *(a1 + 16); ++i)
  {
    ot::Posix::RadioUrl::RadioUrl(v13, *(a1 + 8 * i));
    Protocol = ot::Url::Url::GetProtocol(v13);
    if (strcmp(Protocol, "trel"))
    {
      v11 = *(a1 + 8 * i);
      break;
    }
  }

  if (!v11)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/system.cpp", 47);
    otExitCodeToString(2);
    otLogCritPlat("%s() at %s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "get802154RadioUrl");
    handle_daemon_exit();
    exit(2);
  }

  return v11;
}

void platformInit(_DWORD *a1)
{
  platformBacktraceInit();
  platformAlarmInit(a1[11], a1[10], v1, v2, v3, v4, v5, v6);
  if (!sCoprocessorType)
  {
    v7 = get802154RadioUrl((a1 + 4));
    sCoprocessorType = platformSpinelManagerInit(v7);
  }

  if (sCoprocessorType == 1)
  {
    platformInitRcpMode(a1);
  }

  else
  {
    if (sCoprocessorType != 2)
    {
      otPlatLog(1u, 13, "Unknown type of the co-processor!\n");
      exit(1);
    }

    platformInitNcpMode();
  }

  a1[13] = sCoprocessorType;
}

const char **platformSetUp(const char **result)
{
  v26 = result;
  if ((gDryRun & 1) == 0)
  {
    if (*result)
    {
      result = strlen(*result);
      if (result)
      {
        otSysSetInfraNetif (*v26);
      }
    }

    v1 = ot::Posix::InfraNetif::Get(result);
    ot::Posix::InfraNetif::SetUp(v1);
    v2 = platformNetifSetUp();
    v3 = ot::Posix::Udp::Get(v2);
    v4 = ot::Posix::Udp::SetUp(v3);
    v5 = ot::Posix::Daemon::Get(v4);
    ot::Posix::Daemon::EnableCliForXpc(v5);
    v25 = otSetStateChangedCallback(gInstance, processStateChange, gInstance);
    if (v25)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/system.cpp", 47);
      if (v25 == 7)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      otExitCodeToString(v6);
      otLogCritPlat("%s() at %s:%d: %s", v7, v8, v9, v10, v11, v12, v13, "platformSetUp");
      handle_daemon_exit();
      if (v25 == 7)
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      exit(v14);
    }

    result = otSetStateChangedCallback(gInstance, processOtNotifyEvent, 0);
    v24 = result;
    if (result)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/system.cpp", 47);
      if (v24 == 7)
      {
        v15 = 2;
      }

      else
      {
        v15 = 1;
      }

      otExitCodeToString(v15);
      otLogCritPlat("%s() at %s:%d: %s", v16, v17, v18, v19, v20, v21, v22, "platformSetUp");
      handle_daemon_exit();
      if (v24 == 7)
      {
        v23 = 2;
      }

      else
      {
        v23 = 1;
      }

      exit(v23);
    }
  }

  return result;
}

void processStateChange(int a1, uint64_t a2)
{
  platformNetifStateChange(a2, a1);
  v3 = ot::Posix::InfraNetif::Get(v2);
  ot::Posix::InfraNetif::HandleBackboneStateChange(v3, a2, a1);
}

uint64_t otSysInitCoprocessor(uint64_t a1)
{
  v1 = get802154RadioUrl(a1);
  sCoprocessorType = platformSpinelManagerInit(v1);
  return sCoprocessorType;
}

uint64_t otSysInit(uint64_t a1)
{
  if (gInstance)
  {
    __assert_rtn("otSysInit", "system.cpp", 342, "gInstance == nullptr");
  }

  platformInit(a1);
  gDryRun = *(a1 + 49) & 1;
  if (sCoprocessorType == 1)
  {
    gInstance = otInstanceInitSingle(v1);
    if (!gInstance)
    {
      __assert_rtn("otSysInit", "system.cpp", 350, "gInstance != nullptr");
    }

    platformSetUp(a1);
  }

  return gInstance;
}

ot::Posix::Daemon *platformTearDown(ot::Posix::Daemon *result)
{
  if ((gDryRun & 1) == 0)
  {
    v1 = ot::Posix::Daemon::Get(result);
    ot::Posix::Daemon::TearDown(v1);
    v3 = ot::Posix::Udp::Get(v2);
    v4 = ot::Posix::Udp::TearDown(v3);
    v5 = platformNetifTearDown(v4);
    v6 = ot::Posix::InfraNetif::Get(v5);
    return ot::Posix::InfraNetif::TearDown(v6);
  }

  return result;
}

void platformDeinitRcpMode(void)
{
  platformRadioDeinit();
  platformSpinelManagerDeinit();
  sCoprocessorType = 0;
  if ((gDryRun & 1) == 0)
  {
    v1 = ot::Posix::Udp::Get(v0);
    ot::Posix::Udp::Deinit(v1);
    v2 = platformNetifDeinit();
    v3 = ot::Posix::InfraNetif::Get(v2);
    ot::Posix::InfraNetif::Deinit(v3);
  }
}

void otSysDeinit(ot::Posix::Daemon *a1)
{
  if (sCoprocessorType == 1)
  {
    if (!gInstance)
    {
      __assert_rtn("otSysDeinit", "system.cpp", 430, "gInstance != nullptr");
    }

    platformTearDown(a1);
    otInstanceFinalize(gInstance);
    gInstance = 0;
    platformDeinitRcpMode();
  }

  else if (sCoprocessorType == 2)
  {
    platformDeinitNcpMode();
  }
}

ot::Cli::Interpreter *otSysCliInitUsingDaemon(ot::Instance *a1)
{
  v3 = otSysCliInitUsingDaemon::$_0::operator int (*)(void *,char const*,char *)();
  v1 = ot::Posix::Daemon::Get(v3);
  return otCliInit(a1, v3, v1);
}

uint64_t ot::Url::Url::GetProtocol(ot::Url::Url *this)
{
  return *this;
}

{
  return ot::Url::Url::GetProtocol(this);
}

uint64_t otSysCliInitUsingDaemon::$_0::__invoke(otSysCliInitUsingDaemon::$_0 *this, const char *a2, char *a3, char *a4)
{
  v8 = this;
  v7 = a2;
  v6 = a3;
  return otSysCliInitUsingDaemon::$_0::operator()(&v5, this, a2, a3);
}

uint64_t otPlatUdpSocket(uint64_t a1)
{
  v3 = 0;
  if (*(a1 + 56))
  {
    __assert_rtn("otPlatUdpSocket", "udp.cpp", 222, "aUdpSocket->mHandle == nullptr");
  }

  v2 = SocketWithCloseExec(30, 2, 17, 1);
  if ((v2 & 0x80000000) != 0)
  {
    return 1;
  }

  else
  {
  }

  return v3;
}

uint64_t otPlatUdpClose(uint64_t a1, void *a2)
{
  v4 = 0;
  if (*(a1 + 56))
  {
    if (close(v2))
    {
      return 1;
    }

    else
    {
      *(a1 + 56) = 0;
    }
  }

  return v4;
}

uint64_t otPlatUdpBind(__n128 *a1, void *a2)
{
  v19 = a1;
  v18 = 0;
  v17 = 0;
  if (!gNetifIndex)
  {
    __assert_rtn("otPlatUdpBind", "udp.cpp", 256, "gNetifIndex != 0");
  }

  if (!v19[3].n128_u64[1])
  {
    __assert_rtn("otPlatUdpBind", "udp.cpp", 257, "aUdpSocket->mHandle != nullptr");
  }

  if (v19[1].n128_u16[0])
  {
    v17 = v2;
    *&v14.sa_len = 0;
    *&v14.sa_data[6] = 0;
    v15 = 0;
    v16 = 0;
    *v14.sa_data = _OSSwapInt16(v19[1].n128_u16[0]);
    v14.sa_family = 30;
    ot::Posix::Ip6Utils::CopyIp6AddressTo(v19, &v14.sa_data[6]);
    if (bind(v17, &v14, 0x1Cu))
    {
      v18 = 1;
    }

    else
    {
      v13 = 1;
      if (setsockopt(v17, 41, 37, &v13, 4u))
      {
        v18 = 1;
      }

      else if (setsockopt(v17, 41, 61, &v13, 4u))
      {
        v18 = 1;
      }
    }
  }

  else
  {
    v18 = 7;
  }

  if (v18 == 1)
  {
    v3 = __error();
    v4 = strerror(*v3);
    ot::Posix::Logger<ot::Posix::Udp>::LogCrit2("Failed to bind UDP socket: %s", v5, v6, v7, v8, v9, v10, v11, v4);
  }

  return v18;
}

void ot::Posix::Logger<ot::Posix::Udp>::LogCrit2(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  otLogPlatArgs(1, "Udp", a1, &a9);
}

{
  ot::Posix::Logger<ot::Posix::Udp>::LogCrit2(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t otPlatUdpBindToNetif (uint64_t a1, void *a2)
{
  v29 = a1;
  v28 = a2;
  v27 = 0;
  v26 = v2;
  v25 = 1;
  v24 = 0;
  if (v28)
  {
    if (v28 == 1)
    {
      if (setsockopt(v26, 41, 125, &gNetifIndex, 4u))
      {
        v27 = 1;
        goto LABEL_20;
      }
    }

    else if (v28 == 2)
    {
      InfraNetifName = otSysGetInfraNetifName(v2);
      if (!InfraNetifName || (v11 = otSysGetInfraNetifName(InfraNetifName), !*v11))
      {
        ot::Posix::Logger<ot::Posix::Udp>::LogWarn2("No backbone interface given, %s fails.", v4, v5, v6, v7, v8, v9, v10, "otPlatUdpBindToNetif");
        v27 = 7;
        goto LABEL_20;
      }

      InfraNetifIndex = otSysGetInfraNetifIndex(v11);
      if (setsockopt(v26, 41, 125, &InfraNetifIndex, 4u))
      {
        v27 = 1;
        goto LABEL_20;
      }

      if (setsockopt(v26, 41, 10, &v25, 4u))
      {
        v27 = 1;
        goto LABEL_20;
      }
    }
  }

  else
  {
    v23 = 0;
    if (setsockopt(v26, 41, 125, &v23, 4u))
    {
      v27 = 1;
      goto LABEL_20;
    }
  }

  if (setsockopt(v26, 41, 11, &v24, 4u))
  {
    v27 = 1;
  }

LABEL_20:
  if (v27)
  {
    v21 = v26;
    v12 = __error();
    strerror(*v12);
    otLogWarnPlat("otPlatUdpBindToNetif failed for fd:%d, netIdentifier:%d, errorno:%s", v13, v14, v15, v16, v17, v18, v19, v21);
  }

  return v27;
}

void ot::Posix::Logger<ot::Posix::Udp>::LogWarn2(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  otLogPlatArgs(2, "Udp", a1, &a9);
}

{
  ot::Posix::Logger<ot::Posix::Udp>::LogWarn2(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t otPlatUdpConnect(uint64_t a1)
{
  v21 = a1;
  v20 = 0;
  v15 = 0;
  if (ot::Posix::Ip6Utils::IsIp6AddressUnspecified(a1 + 18))
  {
    v15 = *(v21 + 34) == 0;
  }

  if (*(v21 + 56))
  {
    v16 = v2;
    *&v17.sa_len = 0;
    *&v17.sa_data[6] = 0;
    v18 = 0;
    v19 = 0;
    *v17.sa_data = _OSSwapInt16(*(v21 + 34));
    if (v15)
    {
      v17.sa_family = 0;
    }

    else
    {
      v17.sa_family = 30;
      ot::Posix::Ip6Utils::CopyIp6AddressTo((v21 + 18), &v17.sa_data[6]);
    }

    if (connect(v16, &v17, 0x1Cu) && *__error() == 47 && v15)
    {
      ot::Posix::Ip6Utils::Ip6AddressString::Ip6AddressString(v22, (v21 + 18));
      ot::Posix::Ip6Utils::Ip6AddressString::AsCString(v22);
      v13 = v3;
      v14 = *(v21 + 34);
      v4 = __error();
      strerror(*v4);
      ot::Posix::Logger<ot::Posix::Udp>::LogWarn2("Failed to connect to [%s]:%u: %s", v5, v6, v7, v8, v9, v10, v11, v13);
      return 1;
    }
  }

  else
  {
    return 7;
  }

  return v20;
}

BOOL ot::Posix::Ip6Utils::IsIp6AddressUnspecified(uint64_t a1)
{
  return otIp6IsAddressUnspecified(a1);
}

{
  return ot::Posix::Ip6Utils::IsIp6AddressUnspecified(a1);
}

uint64_t otPlatUdpSend(uint64_t a1, void *a2, __n128 *a3)
{
  v26 = a1;
  v25 = a2;
  v24 = a3;
  v23 = 0;
  v22 = 0;
  Length = 0;
  if (*(a1 + 56))
  {
    v22 = v3;
    Length = otMessageGetLength(v25);
    if (Length == otMessageRead(v25, 0, v27, Length))
    {
      if ((v24[2].n128_u8[5] & 0x10) != 0)
      {
        v20 = 1;
        if (setsockopt(v22, 41, 11, &v20, 4u))
        {
          strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/udp.cpp", 47);
          otExitCodeToString(5);
          otLogCritPlat("%s() at %s:%d: %s", v4, v5, v6, v7, v8, v9, v10, "otPlatUdpSend");
          handle_daemon_exit();
          exit(5);
        }
      }

      if ((v24[2].n128_u8[5] & 0x10) != 0)
      {
        v19 = 0;
        if (setsockopt(v22, 41, 11, &v19, 4u))
        {
          strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/udp.cpp", 47);
          otExitCodeToString(5);
          otLogCritPlat("%s() at %s:%d: %s", v11, v12, v13, v14, v15, v16, v17, "otPlatUdpSend");
          handle_daemon_exit();
          exit(5);
        }
      }
    }

    else
    {
      v23 = 7;
    }
  }

  else
  {
    v23 = 7;
  }

  if (!v23)
  {
    otMessageFree(v25);
  }

  return v23;
}

uint64_t anonymous namespace::transmitPacket(int a1, uint64_t a2, unsigned __int16 a3, __n128 *a4)
{
  v29 = a1;
  v28 = a2;
  v27 = a3;
  v26 = a4;
  v25 = 128;
  v21 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v22 = 0;
  v23 = 0uLL;
  v24 = 0;
  WORD1(v22) = _OSSwapInt16(a4[2].n128_u16[1]);
  BYTE1(v22) = 30;
  ot::Posix::Ip6Utils::CopyIp6AddressTo(v26 + 1, &v23);
  if (ot::Posix::Ip6Utils::IsIp6AddressLinkLocal(&v26[1]) && (v26[2].n128_u8[5] & 4) == 0)
  {
    v24 = gNetifIndex;
  }

  memset(__b, 0, sizeof(__b));
  v20[0] = v28;
  v20[1] = v27;
  v19.msg_name = &v22;
  v19.msg_namelen = 28;
  v19.msg_control = __b;
  v19.msg_controllen = 128;
  v19.msg_iov = v20;
  v19.msg_iovlen = 1;
  v19.msg_flags = 0;
  if (v26[2].n128_u8[4])
  {
    v12 = v26[2].n128_u8[4];
  }

  else
  {
    v12 = 64;
  }

  v15 = v12;
  if (v19.msg_controllen < 0xCuLL)
  {
    msg_control = 0;
  }

  else
  {
    msg_control = v19.msg_control;
  }

  v18 = msg_control;
  msg_control[1] = 41;
  v18[2] = 47;
  *v18 = 16;
  v18[3] = v15;
  v21 += 16;
  if (!ot::Posix::Ip6Utils::IsIp6AddressMulticast(v26) && !ot::Posix::Ip6Utils::IsIp6AddressUnspecified(v26))
  {
    if (v18)
    {
      if ((v18 + ((*v18 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 12) > v19.msg_control + v19.msg_controllen)
      {
        v8 = 0;
      }

      else
      {
        v8 = v18 + ((*v18 + 3) & 0xFFFFFFFFFFFFFFFCLL);
      }

      v9 = v8;
    }

    else
    {
      if (v19.msg_controllen < 0xCuLL)
      {
        v10 = 0;
      }

      else
      {
        v10 = v19.msg_control;
      }

      v9 = v10;
    }

    v18 = v9;
    v9[1] = 41;
    v18[2] = 46;
    *v18 = 32;
    if ((v26[2].n128_u8[5] & 4) != 0)
    {
      v7 = 0;
    }

    else
    {
      v7 = gNetifIndex;
    }

    v14 = v7;
    ot::Posix::Ip6Utils::CopyIp6AddressTo(v26, &v13);
    v4 = v18;
    *(v18 + 3) = v13;
    v4[7] = v14;
    v21 += 32;
  }

  v19.msg_controllen = v21;
  v17 = sendmsg(v29, &v19, 0);
  if (v17 <= 0)
  {
    perror("sendmsg");
  }

  if (v17 == -1)
  {
    if (*__error() == 22)
    {
      return 13;
    }

    else
    {
      return 1;
    }
  }

  return v16;
}

uint64_t otPlatUdpJoinMulticastGroup(uint64_t a1, void *a2, __n128 *a3)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = 0;
  if (*(a1 + 56))
  {
    v15 = v3;
    ot::Posix::Ip6Utils::CopyIp6AddressTo(v19, &v16);
    if (v20)
    {
      if (v20 == 1)
      {
        InfraNetifIndex = gNetifIndex;
      }

      else if (v20 == 2)
      {
        InfraNetifIndex = otSysGetInfraNetifIndex(v4);
      }
    }

    if (setsockopt(v15, 41, 12, &v16, 0x14u) && *__error() != 48)
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 7;
  }

  if (v18)
  {
    v5 = __error();
    v6 = strerror(*v5);
    ot::Posix::Logger<ot::Posix::Udp>::LogCrit2("IPV6_JOIN_GROUP failed: %s", v7, v8, v9, v10, v11, v12, v13, v6);
  }

  return v18;
}

uint64_t otPlatUdpLeaveMulticastGroup(uint64_t a1, void *a2, __n128 *a3)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = 0;
  if (*(a1 + 56))
  {
    v15 = v3;
    ot::Posix::Ip6Utils::CopyIp6AddressTo(v19, &v16);
    if (v20)
    {
      if (v20 == 1)
      {
        InfraNetifIndex = gNetifIndex;
      }

      else if (v20 == 2)
      {
        InfraNetifIndex = otSysGetInfraNetifIndex(v4);
      }
    }

    if (setsockopt(v15, 41, 13, &v16, 0x14u) && *__error() != 48)
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 7;
  }

  if (v18)
  {
    v5 = __error();
    v6 = strerror(*v5);
    ot::Posix::Logger<ot::Posix::Udp>::LogCrit2("IPV6_LEAVE_GROUP failed: %s", v7, v8, v9, v10, v11, v12, v13, v6);
  }

  return v18;
}

uint64_t ot::Posix::Udp::Init(ot::Posix::Udp *this, const char *a2)
{
  if (!a2)
  {
    strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/udp.cpp", 47);
    otExitCodeToString(2);
    otLogCritPlat("%s() at %s:%d: %s", v2, v3, v4, v5, v6, v7, v8, "Init");
    handle_daemon_exit();
    exit(2);
  }

  if (a2 != &gNetifName)
  {
    if (strlen(a2) >= 0xF)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/udp.cpp", 47);
      otExitCodeToString(2);
      otLogCritPlat("%s() at %s:%d: %s", v9, v10, v11, v12, v13, v14, v15, "Init");
      handle_daemon_exit();
      exit(2);
    }

    if (gNetifIndex)
    {
      __assert_rtn("Init", "udp.cpp", 585, "gNetifIndex == 0");
    }

    strcpy(&gNetifName, a2);
    result = if_nametoindex(&gNetifName);
    gNetifIndex = result;
    if (!result)
    {
      strrchr[abi:dn200100]("/Library/Caches/com.apple.xbs/Sources/CoreThreadRadio/openthread/src/posix/platform/udp.cpp", 47);
      otExitCodeToString(5);
      otLogCritPlat("%s() at %s:%d: %s", v17, v18, v19, v20, v21, v22, v23, "Init");
      handle_daemon_exit();
      exit(5);
    }
  }

  if (!gNetifIndex)
  {
    __assert_rtn("Init", "udp.cpp", 591, "gNetifIndex != 0");
  }

  return result;
}