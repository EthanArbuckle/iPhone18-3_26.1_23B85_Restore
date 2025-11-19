uint64_t AWDCountersReachabilitySReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v29 = 0;
        v11 = [a2 position] + 1;
        if (v11 >= [a2 position])
        {
          v12 = [a2 position] + 1;
          if (v12 <= [a2 length])
          {
            break;
          }
        }

        [a2 _setError];
        v10 |= (v29 & 0x7F) << v8;
        if ((v29 & 0x80) == 0)
        {
          goto LABEL_20;
        }

LABEL_16:
        v8 += 7;
        if (v9++ >= 9)
        {
          v15 = 0;
          if ([a2 hasError])
          {
            return [a2 hasError] ^ 1;
          }

          goto LABEL_24;
        }
      }

      v13 = [a2 data];
      [v13 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      v10 |= (v29 & 0x7F) << v8;
      if (v29 < 0)
      {
        goto LABEL_16;
      }

LABEL_20:
      if ([a2 hasError])
      {
        v15 = 0;
      }

      else
      {
        v15 = v10;
      }

      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

LABEL_24:
      if ((v15 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v15 >> 3) == 2)
      {
        v23 = 0;
        v24 = 0;
        v18 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v30 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v18 |= (v30 & 0x7F) << v23;
            if ((v30 & 0x80) == 0)
            {
LABEL_47:
              v5 = &OBJC_IVAR___AWDCountersReachabilityS__linkLossNbrChildCount;
LABEL_4:
              if ([a2 hasError])
              {
                v6 = 0;
              }

              else
              {
                v6 = v18;
              }

              goto LABEL_7;
            }
          }

          else
          {
            [a2 _setError];
            v18 |= (v30 & 0x7F) << v23;
            if ((v30 & 0x80) == 0)
            {
              goto LABEL_47;
            }
          }

          v23 += 7;
          v22 = v24++ > 8;
          if (v22)
          {
            v6 = 0;
            v5 = &OBJC_IVAR___AWDCountersReachabilityS__linkLossNbrChildCount;
            goto LABEL_7;
          }
        }
      }

      if ((v15 >> 3) == 1)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 16) |= 2u;
        do
        {
          v31 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v18 |= (v31 & 0x7F) << v16;
            if ((v31 & 0x80) == 0)
            {
LABEL_3:
              v5 = &OBJC_IVAR___AWDCountersReachabilityS__linkLossNbrRouterCount;
              goto LABEL_4;
            }
          }

          else
          {
            [a2 _setError];
            v18 |= (v31 & 0x7F) << v16;
            if ((v31 & 0x80) == 0)
            {
              goto LABEL_3;
            }
          }

          v16 += 7;
          v22 = v17++ > 8;
        }

        while (!v22);
        v6 = 0;
        v5 = &OBJC_IVAR___AWDCountersReachabilityS__linkLossNbrRouterCount;
LABEL_7:
        *(a1 + *v5) = v6;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v7 = [a2 position];
    }

    while (v7 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void cleanPreferredNetwork(void)
{
  v0 = objc_alloc_init(internalClientUtil);
  [(internalClientUtil *)v0 cleanPreferred];
}

uint64_t ot::Mac::SubMac::CslInit(ot::Mac::SubMac *this)
{
  *(this + 80) = 0;
  v2 = *(this + 162);
  *(this + 82) = 0;
  *(this + 162) = v2 & 1;
  *(this + 22) = 0;
  result = ot::TimerMicro::Stop((this + 200));
  *(this + 166) = 0;
  *(this + 162) &= ~1u;
  return result;
}

uint64_t ot::Mac::SubMac::UpdateCslLastSyncTimestamp(uint64_t this, ot::Mac::TxFrame *a2, ot::Mac::RxFrame *a3)
{
  if (a3)
  {
    v5 = this;
    this = ot::Mac::Frame::GetHeaderIe(a2, 0x1Au);
    if (this)
    {
      *(v5 + 180) = *(a3 + 4) - 32 * *(a2 + 4) - 192;
    }
  }

  return this;
}

uint64_t ot::Mac::SubMac::UpdateCslLastSyncTimestamp(uint64_t result, uint64_t a2, int a3)
{
  if (a2 && !a3 && *(result + 160) && (*(a2 + 31) & 2) != 0)
  {
    *(result + 180) = *(a2 + 16);
  }

  return result;
}

uint64_t ot::Mac::SubMac::CslSample(ot::Mac::SubMac *this)
{
  if ((*(this + 20) & 2) != 0 || (ot::Mac::SubMac::SetState(this, 8u), v2 = *(this + 162), (v2 & 0x80000000) == 0) || (*this & 0x80) != 0)
  {

    return otPlatRadioSleep();
  }

  else
  {

    return otPlatRadioReceive(&ot::gInstanceRaw, (v2 >> 1) & 0x3F);
  }
}

uint64_t ot::Mac::SubMac::UpdateCsl(uint64_t a1, unsigned int a2, unsigned __int8 a3, unsigned __int16 a4, uint64_t *a5, int *a6)
{
  v8 = *(a1 + 160);
  v9 = *(a1 + 162);
  v10 = (v9 >> 1) & 0x3F;
  v11 = *(a1 + 164);
  v12 = *a5;
  v13 = *(a1 + 166);
  v14 = *a6;
  v18 = v8 == a2 && v10 == a3 && v11 == a4 && v12 == v13 && v14 == 0;
  v19 = !v18;
  if (!v18)
  {
    *(a1 + 162) = v9 & 0x81 | (2 * (a3 & 0x3F));
    v32 = v19;
    if (v10 != a3)
    {
      updated = otPlatRadioUpdateCslChannel(&ot::gInstanceRaw, a3);
      v19 = v32;
      if (updated)
      {
        ot::Logger::LogAtLevel<(ot::LogLevel)2>("SubMac", "Note: running legacy RCP firmware - PAN channel change not supported while in SSED mode", v24, v25, v26, v27, v28, v29, v31);
        v19 = v32;
      }
    }

    if (v8 != a2 || v11 != a4 || v12 != v13 || v14)
    {
      *(a1 + 160) = a2;
      *(a1 + 164) = a4;
      *(a1 + 166) = *a5;
      otPlatRadioEnableCsl(&ot::gInstanceRaw, a2, a4, a5);
      if (*(a1 + 162))
      {
        otPlatRadioEnableCst(&ot::gInstanceRaw, a2, a4, a5);
      }

      v19 = v32;
      if (v8 != a2 || v14)
      {
        ot::TimerMicro::Stop((a1 + 200));
        v19 = v32;
        *(a1 + 162) &= ~0x80u;
      }
    }
  }

  *a6 = *(a1 + 176);
  return v19;
}

uint64_t ot::Mac::SubMac::HandleCslTimer(ot::Mac::SubMac *this)
{
  v2 = *(this + 80);
  v3 = 5 * v2;
  v4 = 80 * v2;
  v5 = otPlatRadioGetNow() - *(this + 45);
  v6 = ((*(this + 184) + otPlatRadioGetCslAccuracy()) * v5 * 0x10C6F7A0B5EEuLL) >> 64;
  v7 = *(this + 185);
  v8 = v6 + 10 * (otPlatRadioGetCslUncertainty() + v7);
  if (v4 >= v8 + 10192)
  {
    v9 = v8 + 10192;
  }

  else
  {
    v9 = v4;
  }

  v10 = v8 + 5504;
  if (v4 < v10)
  {
    v10 = v4;
  }

  v11 = *(this + 162);
  if (v11 < 0)
  {
    *(this + 162) = v11 & 0x7F;
    v14 = *(this + 44) - v9;
    if (*(this + 2) == 8)
    {
      otPlatRadioSleep();
    }
  }

  else
  {
    v12 = 32 * v3;
    v13 = *(this + 44);
    if ((*this & 0x80) != 0)
    {
      *(this + 44) = v13 + v12;
      v14 = v13 + v12 - v9;
      v9 -= 10000;
    }

    else
    {
      v14 = v13 + v10;
      *(this + 162) = v11 | 0x80;
      *(this + 44) = v13 + v12;
    }

    *(this + 96) = v9 + v10;
    otPlatRadioUpdateCslSampleTime();
    if (*(this + 162))
    {
      otPlatRadioUpdateCstSampleTime(&ot::gInstanceRaw, *(this + 44) + v4);
    }

    v15 = *(this + 2);
    if ((*this & 0x80) != 0)
    {
      if ((v15 | 2) != 2)
      {
        v16 = *(this + 44) - v12 - v9;
        *(this + 47) = v16;
        otPlatRadioReceiveAt(&ot::gInstanceRaw, (*(this + 162) >> 1) & 0x3F, v16, *(this + 96), 0);
      }
    }

    else if (v15 == 8)
    {
      otPlatRadioReceive(&ot::gInstanceRaw, (*(this + 162) >> 1) & 0x3F);
    }
  }

  Now = otPlatRadioGetNow();
  v18 = ((v14 - Now) & ~((v14 - Now) >> 31)) + otPlatAlarmMicroGetNow();

  return ot::TimerMicro::FireAt((this + 200), v18);
}

uint64_t ot::Mac::SubMac::GetCslWindowEdges(ot::Mac::SubMac *this, unsigned int *a2, unsigned int *a3)
{
  v5 = this;
  v6 = 80 * *(this + 80);
  v7 = otPlatRadioGetNow() - *(this + 45);
  v8 = ((*(v5 + 184) + otPlatRadioGetCslAccuracy()) * v7 * 0x10C6F7A0B5EEuLL) >> 64;
  LODWORD(v5) = *(v5 + 185);
  result = otPlatRadioGetCslUncertainty();
  v10 = v8 + 10 * (result + v5);
  v11 = v10 + 10192;
  if (v6 < v10 + 10192)
  {
    v11 = v6;
  }

  *a2 = v11;
  v12 = v10 + 5504;
  if (v6 < v12)
  {
    v12 = v6;
  }

  *a3 = v12;
  return result;
}

uint64_t AWDCountersStabilitySReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v32 = 0;
        v11 = [a2 position] + 1;
        if (v11 >= [a2 position])
        {
          v12 = [a2 position] + 1;
          if (v12 <= [a2 length])
          {
            break;
          }
        }

        [a2 _setError];
        v10 |= (v32 & 0x7F) << v8;
        if ((v32 & 0x80) == 0)
        {
          goto LABEL_16;
        }

LABEL_12:
        v8 += 7;
        v14 = v9++ >= 9;
        if (v14)
        {
          v15 = 0;
          if ([a2 hasError])
          {
            return [a2 hasError] ^ 1;
          }

          goto LABEL_20;
        }
      }

      v13 = [a2 data];
      [v13 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      v10 |= (v32 & 0x7F) << v8;
      if (v32 < 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      if ([a2 hasError])
      {
        v15 = 0;
      }

      else
      {
        v15 = v10;
      }

      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

LABEL_20:
      if ((v15 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v16 = v15 >> 3;
      if ((v15 >> 3) == 3)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        *(a1 + 24) |= 2u;
        while (1)
        {
          v34 = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v26 |= (v34 & 0x7F) << v24;
            if ((v34 & 0x80) == 0)
            {
LABEL_44:
              v30 = (v26 != 0) & ~[a2 hasError];
              goto LABEL_45;
            }
          }

          else
          {
            [a2 _setError];
            v26 |= (v34 & 0x7F) << v24;
            if ((v34 & 0x80) == 0)
            {
              goto LABEL_44;
            }
          }

          v24 += 7;
          v14 = v25++ >= 9;
          if (v14)
          {
            LOBYTE(v30) = 0;
LABEL_45:
            *(a1 + 20) = v30;
            goto LABEL_4;
          }
        }
      }

      if (v16 == 2)
      {
        v5 = PBReaderReadString();
        v6 = *(a1 + 8);
        *(a1 + 8) = v5;

        goto LABEL_4;
      }

      if (v16 != 1)
      {
        result = PBReaderSkipValueWithTag();
        if (result)
        {
          goto LABEL_4;
        }

        return result;
      }

      v17 = 0;
      v18 = 0;
      v19 = 0;
      *(a1 + 24) |= 1u;
      while (2)
      {
        v33 = 0;
        v20 = [a2 position] + 1;
        if (v20 < [a2 position] || (v21 = objc_msgSend(a2, "position") + 1, v21 > objc_msgSend(a2, "length")))
        {
          [a2 _setError];
          v19 |= (v33 & 0x7F) << v17;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          goto LABEL_30;
        }

        v22 = [a2 data];
        [v22 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v19 |= (v33 & 0x7F) << v17;
        if (v33 < 0)
        {
LABEL_30:
          v17 += 7;
          v14 = v18++ >= 9;
          if (v14)
          {
            v23 = 0;
            goto LABEL_49;
          }

          continue;
        }

        break;
      }

      if ([a2 hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v19;
      }

LABEL_49:
      *(a1 + 16) = v23;
LABEL_4:
      v7 = [a2 position];
    }

    while (v7 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t AWDCountersThreadMleSReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

LABEL_2:
  if ([a2 hasError])
  {
    return [a2 hasError] ^ 1;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  while (1)
  {
    v65 = 0;
    v8 = [a2 position] + 1;
    if (v8 >= [a2 position])
    {
      v9 = [a2 position] + 1;
      if (v9 <= [a2 length])
      {
        break;
      }
    }

    [a2 _setError];
    v7 |= (v65 & 0x7F) << v5;
    if ((v65 & 0x80) == 0)
    {
      goto LABEL_13;
    }

LABEL_9:
    v5 += 7;
    if (v6++ >= 9)
    {
      v12 = 0;
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      goto LABEL_17;
    }
  }

  v10 = [a2 data];
  [v10 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
  v7 |= (v65 & 0x7F) << v5;
  if (v65 < 0)
  {
    goto LABEL_9;
  }

LABEL_13:
  if ([a2 hasError])
  {
    v12 = 0;
  }

  else
  {
    v12 = v7;
  }

  if ([a2 hasError])
  {
    return [a2 hasError] ^ 1;
  }

LABEL_17:
  if ((v12 & 7) == 4)
  {
    return [a2 hasError] ^ 1;
  }

  v13 = v12 >> 3;
  if ((v12 >> 3) <= 4)
  {
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v43 = 0;
        v44 = 0;
        v16 = 0;
        *(a1 + 44) |= 4u;
        while (1)
        {
          v72 = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v72 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v16 |= (v72 & 0x7F) << v43;
            if ((v72 & 0x80) == 0)
            {
LABEL_117:
              v22 = &OBJC_IVAR___AWDCountersThreadMleS__childRoleCount;
              goto LABEL_122;
            }
          }

          else
          {
            [a2 _setError];
            v16 |= (v72 & 0x7F) << v43;
            if ((v72 & 0x80) == 0)
            {
              goto LABEL_117;
            }
          }

          v43 += 7;
          v20 = v44++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDCountersThreadMleS__childRoleCount;
            goto LABEL_125;
          }
        }
      }

      if (v13 == 4)
      {
        v28 = 0;
        v29 = 0;
        v16 = 0;
        *(a1 + 44) |= 0x100u;
        while (1)
        {
          v71 = 0;
          v30 = [a2 position] + 1;
          if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
          {
            v32 = [a2 data];
            [v32 getBytes:&v71 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v16 |= (v71 & 0x7F) << v28;
            if ((v71 & 0x80) == 0)
            {
LABEL_114:
              v22 = &OBJC_IVAR___AWDCountersThreadMleS__routerRoleCount;
              goto LABEL_122;
            }
          }

          else
          {
            [a2 _setError];
            v16 |= (v71 & 0x7F) << v28;
            if ((v71 & 0x80) == 0)
            {
              goto LABEL_114;
            }
          }

          v28 += 7;
          v20 = v29++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDCountersThreadMleS__routerRoleCount;
            goto LABEL_125;
          }
        }
      }
    }

    else
    {
      if (v13 == 1)
      {
        v38 = 0;
        v39 = 0;
        v16 = 0;
        *(a1 + 44) |= 0x10u;
        while (1)
        {
          v74 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v74 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v16 |= (v74 & 0x7F) << v38;
            if ((v74 & 0x80) == 0)
            {
LABEL_116:
              v22 = &OBJC_IVAR___AWDCountersThreadMleS__disabledRoleCount;
              goto LABEL_122;
            }
          }

          else
          {
            [a2 _setError];
            v16 |= (v74 & 0x7F) << v38;
            if ((v74 & 0x80) == 0)
            {
              goto LABEL_116;
            }
          }

          v38 += 7;
          v20 = v39++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDCountersThreadMleS__disabledRoleCount;
            goto LABEL_125;
          }
        }
      }

      if (v13 == 2)
      {
        v23 = 0;
        v24 = 0;
        v16 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          v73 = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v73 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v16 |= (v73 & 0x7F) << v23;
            if ((v73 & 0x80) == 0)
            {
LABEL_113:
              v22 = &OBJC_IVAR___AWDCountersThreadMleS__detachedRoleCount;
LABEL_122:
              if ([a2 hasError])
              {
                v21 = 0;
              }

              else
              {
                v21 = v16;
              }

LABEL_125:
              *(a1 + *v22) = v21;
LABEL_126:
              v63 = [a2 position];
              if (v63 >= [a2 length])
              {
                return [a2 hasError] ^ 1;
              }

              goto LABEL_2;
            }
          }

          else
          {
            [a2 _setError];
            v16 |= (v73 & 0x7F) << v23;
            if ((v73 & 0x80) == 0)
            {
              goto LABEL_113;
            }
          }

          v23 += 7;
          v20 = v24++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDCountersThreadMleS__detachedRoleCount;
            goto LABEL_125;
          }
        }
      }
    }
  }

  else if (v13 <= 6)
  {
    if (v13 == 5)
    {
      v53 = 0;
      v54 = 0;
      v16 = 0;
      *(a1 + 44) |= 0x20u;
      do
      {
        v70 = 0;
        v55 = [a2 position] + 1;
        if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 1, v56 <= objc_msgSend(a2, "length")))
        {
          v57 = [a2 data];
          [v57 getBytes:&v70 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v16 |= (v70 & 0x7F) << v53;
          if ((v70 & 0x80) == 0)
          {
LABEL_119:
            v22 = &OBJC_IVAR___AWDCountersThreadMleS__leaderRoleCount;
            goto LABEL_122;
          }
        }

        else
        {
          [a2 _setError];
          v16 |= (v70 & 0x7F) << v53;
          if ((v70 & 0x80) == 0)
          {
            goto LABEL_119;
          }
        }

        v53 += 7;
        v20 = v54++ > 8;
      }

      while (!v20);
      v21 = 0;
      v22 = &OBJC_IVAR___AWDCountersThreadMleS__leaderRoleCount;
      goto LABEL_125;
    }

    if (v13 == 6)
    {
      v33 = 0;
      v34 = 0;
      v16 = 0;
      *(a1 + 44) |= 1u;
      while (1)
      {
        v69 = 0;
        v35 = [a2 position] + 1;
        if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
        {
          v37 = [a2 data];
          [v37 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          v16 |= (v69 & 0x7F) << v33;
          if ((v69 & 0x80) == 0)
          {
LABEL_115:
            v22 = &OBJC_IVAR___AWDCountersThreadMleS__attachAttempts;
            goto LABEL_122;
          }
        }

        else
        {
          [a2 _setError];
          v16 |= (v69 & 0x7F) << v33;
          if ((v69 & 0x80) == 0)
          {
            goto LABEL_115;
          }
        }

        v33 += 7;
        v20 = v34++ > 8;
        if (v20)
        {
          v21 = 0;
          v22 = &OBJC_IVAR___AWDCountersThreadMleS__attachAttempts;
          goto LABEL_125;
        }
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 7:
        v48 = 0;
        v49 = 0;
        v16 = 0;
        *(a1 + 44) |= 0x80u;
        while (1)
        {
          v68 = 0;
          v50 = [a2 position] + 1;
          if (v50 >= [a2 position] && (v51 = objc_msgSend(a2, "position") + 1, v51 <= objc_msgSend(a2, "length")))
          {
            v52 = [a2 data];
            [v52 getBytes:&v68 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v16 |= (v68 & 0x7F) << v48;
            if ((v68 & 0x80) == 0)
            {
LABEL_118:
              v22 = &OBJC_IVAR___AWDCountersThreadMleS__partitionIdChangesCount;
              goto LABEL_122;
            }
          }

          else
          {
            [a2 _setError];
            v16 |= (v68 & 0x7F) << v48;
            if ((v68 & 0x80) == 0)
            {
              goto LABEL_118;
            }
          }

          v48 += 7;
          v20 = v49++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDCountersThreadMleS__partitionIdChangesCount;
            goto LABEL_125;
          }
        }

      case 8:
        v58 = 0;
        v59 = 0;
        v16 = 0;
        *(a1 + 44) |= 2u;
        do
        {
          v67 = 0;
          v60 = [a2 position] + 1;
          if (v60 >= [a2 position] && (v61 = objc_msgSend(a2, "position") + 1, v61 <= objc_msgSend(a2, "length")))
          {
            v62 = [a2 data];
            [v62 getBytes:&v67 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v16 |= (v67 & 0x7F) << v58;
            if ((v67 & 0x80) == 0)
            {
LABEL_121:
              v22 = &OBJC_IVAR___AWDCountersThreadMleS__betterPartitionAttachAttempts;
              goto LABEL_122;
            }
          }

          else
          {
            [a2 _setError];
            v16 |= (v67 & 0x7F) << v58;
            if ((v67 & 0x80) == 0)
            {
              goto LABEL_121;
            }
          }

          v58 += 7;
          v20 = v59++ > 8;
        }

        while (!v20);
        v21 = 0;
        v22 = &OBJC_IVAR___AWDCountersThreadMleS__betterPartitionAttachAttempts;
        goto LABEL_125;
      case 9:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 44) |= 0x40u;
        while (1)
        {
          v66 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v66 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v16 |= (v66 & 0x7F) << v14;
            if ((v66 & 0x80) == 0)
            {
LABEL_120:
              v22 = &OBJC_IVAR___AWDCountersThreadMleS__parentChangesCount;
              goto LABEL_122;
            }
          }

          else
          {
            [a2 _setError];
            v16 |= (v66 & 0x7F) << v14;
            if ((v66 & 0x80) == 0)
            {
              goto LABEL_120;
            }
          }

          v14 += 7;
          v20 = v15++ > 8;
          if (v20)
          {
            v21 = 0;
            v22 = &OBJC_IVAR___AWDCountersThreadMleS__parentChangesCount;
            goto LABEL_125;
          }
        }
    }
  }

  if (PBReaderSkipValueWithTag())
  {
    goto LABEL_126;
  }

  return 0;
}

uint64_t AWDCtcsReadWriteStabilitySReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        v22 = 0;
        v10 = [a2 position] + 1;
        if (v10 >= [a2 position])
        {
          v11 = [a2 position] + 1;
          if (v11 <= [a2 length])
          {
            break;
          }
        }

        [a2 _setError];
        v9 |= (v22 & 0x7F) << v7;
        if ((v22 & 0x80) == 0)
        {
          goto LABEL_16;
        }

LABEL_12:
        v7 += 7;
        v13 = v8++ >= 9;
        if (v13)
        {
          v14 = 0;
          if ([a2 hasError])
          {
            return [a2 hasError] ^ 1;
          }

          goto LABEL_20;
        }
      }

      v12 = [a2 data];
      [v12 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      v9 |= (v22 & 0x7F) << v7;
      if (v22 < 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      if ([a2 hasError])
      {
        v14 = 0;
      }

      else
      {
        v14 = v9;
      }

      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

LABEL_20:
      if ((v14 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v14 >> 3) != 1)
      {
        result = PBReaderSkipValueWithTag();
        if (result)
        {
          goto LABEL_4;
        }

        return result;
      }

      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 12) |= 1u;
      while (2)
      {
        v23 = 0;
        v18 = [a2 position] + 1;
        if (v18 < [a2 position] || (v19 = objc_msgSend(a2, "position") + 1, v19 > objc_msgSend(a2, "length")))
        {
          [a2 _setError];
          v17 |= (v23 & 0x7F) << v15;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          goto LABEL_28;
        }

        v20 = [a2 data];
        [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v17 |= (v23 & 0x7F) << v15;
        if (v23 < 0)
        {
LABEL_28:
          v15 += 7;
          v13 = v16++ >= 9;
          if (v13)
          {
            v21 = 0;
            goto LABEL_34;
          }

          continue;
        }

        break;
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_34:
      *(a1 + 8) = v21;
LABEL_4:
      v6 = [a2 position];
    }

    while (v6 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t std::pair<std::string const,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

void getEntitlementFromMethodName(const char *__s@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  memset(&v34, 0, sizeof(v34));
  if (!__s)
  {
    goto LABEL_15;
  }

  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v36) = v6;
  if (v6)
  {
    memcpy(__dst, __s, v6);
  }

  __dst[v7] = 0;
  v8 = v36 >= 0 ? __dst : *__dst;
  v9 = v36 >= 0 ? HIBYTE(v36) : *&__dst[8];
  std::string::append(&v34, v8, v9);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(*__dst);
    if (!a2)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_15:
    if (!a2)
    {
      goto LABEL_31;
    }
  }

  v10 = strlen(a2);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v36) = v10;
  if (v10)
  {
    memcpy(__dst, a2, v10);
  }

  __dst[v11] = 0;
  if (v36 >= 0)
  {
    v12 = __dst;
  }

  else
  {
    v12 = *__dst;
  }

  if (v36 >= 0)
  {
    v13 = HIBYTE(v36);
  }

  else
  {
    v13 = *&__dst[8];
  }

  std::string::append(&v34, v12, v13);
  if (SHIBYTE(v36) < 0)
  {
    operator delete(*__dst);
  }

LABEL_31:
  v14 = qword_100523CB0;
  if (qword_100523CB0)
  {
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v34.__r_.__value_.__l.__size_;
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v34;
    }

    else
    {
      v16 = v34.__r_.__value_.__r.__words[0];
    }

    v17 = &qword_100523CB0;
    do
    {
      v18 = *(v14 + 55);
      if (v18 >= 0)
      {
        v19 = *(v14 + 55);
      }

      else
      {
        v19 = *(v14 + 40);
      }

      if (v18 >= 0)
      {
        v20 = (v14 + 32);
      }

      else
      {
        v20 = *(v14 + 32);
      }

      if (size >= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = size;
      }

      v22 = memcmp(v20, v16, v21);
      v23 = v19 < size;
      if (v22)
      {
        v23 = v22 < 0;
      }

      v24 = !v23;
      if (v23)
      {
        v25 = 8;
      }

      else
      {
        v25 = 0;
      }

      if (v24)
      {
        v17 = v14;
      }

      v14 = *(v14 + v25);
    }

    while (v14);
    if (v17 != &qword_100523CB0)
    {
      v26 = *(v17 + 55);
      if (v26 >= 0)
      {
        v27 = *(v17 + 55);
      }

      else
      {
        v27 = v17[5];
      }

      if (v26 >= 0)
      {
        v28 = v17 + 4;
      }

      else
      {
        v28 = v17[4];
      }

      if (v27 >= size)
      {
        v29 = size;
      }

      else
      {
        v29 = v27;
      }

      v30 = memcmp(v16, v28, v29);
      v31 = size < v27;
      if (v30)
      {
        v31 = v30 < 0;
      }

      if (!v31)
      {
        std::string::operator=(a3, (v17 + 7));
      }
    }
  }

  if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_84:
    operator delete(v34.__r_.__value_.__l.__data_);
    return;
  }

  v32 = &v34;
  if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v32 = v34.__r_.__value_.__r.__words[0];
  }

  if (*(a3 + 23) < 0)
  {
    if (*(a3 + 8))
    {
      v33 = *a3;
    }

    else
    {
      v33 = "Empty";
    }
  }

  else if (*(a3 + 23))
  {
    v33 = a3;
  }

  else
  {
    v33 = "Empty";
  }

  *__dst = 136315906;
  *&__dst[4] = __s;
  *&__dst[12] = 2080;
  *&__dst[14] = a2;
  v36 = 2080;
  v37 = v32;
  v38 = 2080;
  v39 = v33;
  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "getEntitlementFromMethodName: method: %s, property_name: %s, serach_entitelement: %s, ret: %s", __dst, 0x2Au);
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_84;
  }
}

void sub_100035974(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if (*(v21 + 23) < 0)
    {
LABEL_6:
      operator delete(*v21);
      _Unwind_Resume(exception_object);
    }
  }

  else if (*(v21 + 23) < 0)
  {
    goto LABEL_6;
  }

  _Unwind_Resume(exception_object);
}

BOOL checkEntitlementForMachMsg(xpc_object_t *a1, const char *a2)
{
  if (xpc_get_type(*a1) != &_xpc_type_connection)
  {
    goto LABEL_2;
  }

  pid = xpc_connection_get_pid(*a1);
  if (getpid() == pid)
  {
    goto LABEL_38;
  }

  v6 = *a1;
  xpc_connection_get_audit_token();
  v7 = xpc_copy_entitlement_for_token();
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v7) == &_xpc_type_dictionary)
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
  {
    v12 = xpc_copy_description(v8);
    v13 = strlen(v12);
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      operator new();
    }

    v32 = v13;
    if (v13)
    {
      memcpy(__dst, v12, v13);
    }

    __dst[v14] = 0;
    free(v12);
    v15 = __dst;
    if (v32 < 0)
    {
      v15 = *__dst;
    }

    *buf = 136315138;
    v34 = v15;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "entitlements in Server: %s", buf, 0xCu);
    if (v32 < 0)
    {
      operator delete(*__dst);
    }
  }

  if (xpc_get_type(v8) == &_xpc_type_dictionary)
  {
    v17 = a2;
    if (a2[23] < 0)
    {
      v17 = *a2;
    }

    value = xpc_dictionary_get_value(v8, v17);
    *__dst = value;
    if (value)
    {
      xpc_retain(value);
      v19 = *__dst;
    }

    else
    {
      v19 = xpc_null_create();
      *__dst = v19;
    }

    v16 = xpc_get_type(v19) == &_xpc_type_null ? 0 : xpc::dyn_cast_or_default(__dst, 0, v20);
    xpc_release(*__dst);
  }

  else
  {
    v16 = 0;
  }

  xpc_release(v8);
  if (v16)
  {
LABEL_38:
    v21 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO);
    result = 1;
    if (v21)
    {
      v22 = xpc_copy_description(*a1);
      v23 = strlen(v22);
      if (v23 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v24 = v23;
      if (v23 >= 0x17)
      {
        operator new();
      }

      v28 = v23;
      if (v23)
      {
        memcpy(&__p, v22, v23);
      }

      *(&__p + v24) = 0;
      free(v22);
      p_p = &__p;
      if (v28 < 0)
      {
        p_p = __p;
      }

      if (a2[23] < 0)
      {
        a2 = *a2;
      }

      *__dst = 136315394;
      *&__dst[4] = p_p;
      v30 = 2080;
      v31 = a2;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "Connection %s allowed for: %s \n", __dst, 0x16u);
      if (v28 < 0)
      {
        operator delete(__p);
      }

      return 1;
    }
  }

  else
  {
LABEL_2:
    result = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v9 = xpc_copy_description(*a1);
      v10 = strlen(v9);
      if (v10 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        operator new();
      }

      v28 = v10;
      if (v10)
      {
        memcpy(&__p, v9, v10);
      }

      *(&__p + v11) = 0;
      free(v9);
      v26 = &__p;
      if (v28 < 0)
      {
        v26 = __p;
      }

      if (a2[23] < 0)
      {
        a2 = *a2;
      }

      *__dst = 136315394;
      *&__dst[4] = v26;
      v30 = 2080;
      v31 = a2;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Connection %s not allowed for: %s \n", __dst, 0x16u);
      if (v28 < 0)
      {
        operator delete(__p);
      }

      return 0;
    }
  }

  return result;
}

void sub_100035EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v13);
  _Unwind_Resume(a1);
}

uint64_t checkEntitlementInServer(xpc_object_t *a1, xpc_object_t *a2, uint64_t a3)
{
  if (xpc_get_type(*a1) != &_xpc_type_connection || xpc_get_type(*a2) != &_xpc_type_dictionary)
  {
    return 1;
  }

  string = xpc_dictionary_get_string(*a2, "method");
  v7 = xpc_dictionary_get_string(*a2, "property_name");
  getEntitlementFromMethodName(string, v7, &block);
  size = HIBYTE(block.__r_.__value_.__r.__words[2]);
  if ((block.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = block.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    v10 = 1;
    if ((*(&block.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    operator delete(block.__r_.__value_.__l.__data_);
    if (v10)
    {
      return 1;
    }

    goto LABEL_19;
  }

  v9 = *a1;
  v21 = v9;
  if (v9)
  {
    xpc_retain(v9);
    if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_8:
      __p = block;
      goto LABEL_13;
    }
  }

  else
  {
    v9 = xpc_null_create();
    v21 = v9;
    if ((SHIBYTE(block.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  std::string::__init_copy_ctor_external(&__p, block.__r_.__value_.__l.__data_, block.__r_.__value_.__l.__size_);
LABEL_13:
  v10 = checkEntitlementForMachMsg(&v21, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(v9);
  v21 = 0;
  if ((*(&block.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (v10)
  {
    return 1;
  }

LABEL_19:
  v12 = xpc_dictionary_create(0, 0, 0);
  if (v12 || (v12 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v12) == &_xpc_type_dictionary)
    {
      xpc_retain(v12);
      v13 = v12;
    }

    else
    {
      v13 = xpc_null_create();
    }
  }

  else
  {
    v13 = xpc_null_create();
    v12 = 0;
  }

  xpc_release(v12);
  xpc_dictionary_set_int64(v13, "ret", 33);
  if (string)
  {
    xpc_dictionary_set_string(v13, "method", string);
  }

  if (v7)
  {
    xpc_dictionary_set_string(v13, "property_name", v7);
  }

  if (*a3 && *(a3 + 8))
  {
    if (v13)
    {
      xpc_retain(v13);
      v14 = v13;
    }

    else
    {
      v14 = xpc_null_create();
    }

    if (*a3)
    {
      v15 = _Block_copy(*a3);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a3 + 8);
    block.__r_.__value_.__r.__words[0] = _NSConcreteStackBlock;
    block.__r_.__value_.__l.__size_ = 1174405120;
    block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ES2_EEEvDpT__block_invoke;
    v23 = &__block_descriptor_tmp;
    if (v15)
    {
      v17 = _Block_copy(v15);
    }

    else
    {
      v17 = 0;
    }

    v26 = 5;
    aBlock = v17;
    object = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      object = xpc_null_create();
    }

    dispatch_async(v16, &block);
    xpc_release(object);
    object = 0;
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v15)
    {
      _Block_release(v15);
    }

    xpc_release(v14);
  }

  v18 = xpc_null_create();
  v19 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v19);
  xpc_release(v18);
  return 0;
}

void sub_1000362B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  xpc_release(v22);
  if (a22 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

std::string *std::pair<std::string const,std::string>::pair[abi:ne200100]<char const(&)[11],std::string const&,0>(std::string *a1, char *__s, __int128 *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&a1->__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
    a1->__r_.__value_.__s.__data_[v7] = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    a1->__r_.__value_.__s.__data_[0] = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_5:
      v8 = *a3;
      a1[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
      *&a1[1].__r_.__value_.__l.__data_ = v8;
      return a1;
    }
  }

  std::string::__init_copy_ctor_external(a1 + 1, *a3, *(a3 + 1));
  return a1;
}

void sub_100036438(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,std::string> const&>(uint64_t **a1, uint64_t *a2, const void **a3)
{
  v3 = std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, a2, &v6, &v5, a3);
  if (!*v3)
  {
    operator new();
  }

  return *v3;
}

void sub_100036574(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
    std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_20;
  }

  v10 = *(a2 + 55);
  v11 = *(a5 + 23);
  if (v11 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  if (v11 >= 0)
  {
    v13 = a5;
  }

  else
  {
    v13 = *a5;
  }

  if (v10 >= 0)
  {
    v14 = *(a2 + 55);
  }

  else
  {
    v14 = a2[5];
  }

  if (v10 >= 0)
  {
    v15 = a2 + 4;
  }

  else
  {
    v15 = a2[4];
  }

  if (v14 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v14;
  }

  v17 = memcmp(v13, v15, v16);
  v18 = v12 < v14;
  if (v17)
  {
    v18 = v17 < 0;
  }

  if (v18)
  {
LABEL_20:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
LABEL_53:
      if (v19)
      {
        *a3 = v21;
        return v21 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v19)
    {
      v20 = *a2;
      do
      {
        v21 = v20;
        v20 = v20[1];
      }

      while (v20);
    }

    else
    {
      v26 = a2;
      do
      {
        v21 = v26[2];
        v27 = *v21 == v26;
        v26 = v21;
      }

      while (v27);
    }

    v28 = *(a5 + 23);
    v29 = *(v21 + 55);
    if (v29 >= 0)
    {
      v30 = *(v21 + 55);
    }

    else
    {
      v30 = v21[5];
    }

    if (v29 >= 0)
    {
      v31 = v21 + 4;
    }

    else
    {
      v31 = v21[4];
    }

    if (v28 >= 0)
    {
      v32 = *(a5 + 23);
    }

    else
    {
      v32 = a5[1];
    }

    if (v28 >= 0)
    {
      v33 = a5;
    }

    else
    {
      v33 = *a5;
    }

    if (v32 >= v30)
    {
      v34 = v30;
    }

    else
    {
      v34 = v32;
    }

    v35 = memcmp(v31, v33, v34);
    v36 = v30 < v32;
    if (v35)
    {
      v36 = v35 < 0;
    }

    if (v36)
    {
      goto LABEL_53;
    }

    v37 = *v8;
    if (*v8)
    {
      do
      {
        while (1)
        {
          v38 = v37;
          v41 = v37[4];
          v39 = v37 + 4;
          v40 = v41;
          v42 = *(v39 + 23);
          if (v42 >= 0)
          {
            v43 = *(v39 + 23);
          }

          else
          {
            v43 = v39[1];
          }

          if (v42 >= 0)
          {
            v44 = v39;
          }

          else
          {
            v44 = v40;
          }

          if (v43 >= v32)
          {
            v45 = v32;
          }

          else
          {
            v45 = v43;
          }

          v46 = memcmp(v33, v44, v45);
          v47 = v32 < v43;
          if (v46)
          {
            v47 = v46 < 0;
          }

          if (!v47)
          {
            break;
          }

          v37 = *v38;
          v8 = v38;
          if (!*v38)
          {
            goto LABEL_74;
          }
        }

        v48 = memcmp(v44, v33, v45);
        v49 = v43 < v32;
        if (v48)
        {
          v49 = v48 < 0;
        }

        if (!v49)
        {
          break;
        }

        v8 = v38 + 1;
        v37 = v38[1];
      }

      while (v37);
    }

    else
    {
      v38 = v8;
    }

LABEL_74:
    *a3 = v38;
    return v8;
  }

  v22 = memcmp(v15, v13, v16);
  v23 = v14 < v12;
  if (v22)
  {
    v23 = v22 < 0;
  }

  if (!v23)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v24 = a2[1];
  if (v24)
  {
    v25 = a2[1];
    do
    {
      a4 = v25;
      v25 = *v25;
    }

    while (v25);
  }

  else
  {
    v50 = a2;
    do
    {
      a4 = v50[2];
      v27 = *a4 == v50;
      v50 = a4;
    }

    while (!v27);
  }

  if (a4 != v8)
  {
    v51 = *(a4 + 55);
    if (v51 >= 0)
    {
      v52 = *(a4 + 55);
    }

    else
    {
      v52 = a4[5];
    }

    if (v51 >= 0)
    {
      v53 = (a4 + 4);
    }

    else
    {
      v53 = a4[4];
    }

    if (v52 >= v12)
    {
      v54 = v12;
    }

    else
    {
      v54 = v52;
    }

    v55 = memcmp(v13, v53, v54);
    v56 = v12 < v52;
    if (v55)
    {
      v56 = v55 < 0;
    }

    if (!v56)
    {
      v57 = *v8;
      if (*v8)
      {
        v58 = a3;
        do
        {
          while (1)
          {
            v59 = v57;
            v62 = v57[4];
            v60 = v57 + 4;
            v61 = v62;
            v63 = *(v60 + 23);
            if (v63 >= 0)
            {
              v64 = *(v60 + 23);
            }

            else
            {
              v64 = v60[1];
            }

            if (v63 >= 0)
            {
              v65 = v60;
            }

            else
            {
              v65 = v61;
            }

            if (v64 >= v12)
            {
              v66 = v12;
            }

            else
            {
              v66 = v64;
            }

            v67 = memcmp(v13, v65, v66);
            v68 = v12 < v64;
            if (v67)
            {
              v68 = v67 < 0;
            }

            if (!v68)
            {
              break;
            }

            v57 = *v59;
            v8 = v59;
            if (!*v59)
            {
              goto LABEL_119;
            }
          }

          v69 = memcmp(v65, v13, v66);
          v70 = v64 < v12;
          if (v69)
          {
            v70 = v69 < 0;
          }

          if (!v70)
          {
            break;
          }

          v8 = v59 + 1;
          v57 = v59[1];
        }

        while (v57);
      }

      else
      {
        v59 = v8;
        v58 = a3;
      }

LABEL_119:
      *v58 = v59;
      return v8;
    }
  }

  if (v24)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::string>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::string>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 79) < 0)
      {
        operator delete(*(v2 + 56));
        if ((*(v2 + 55) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 32));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *(a2 + 8));
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
      if ((*(a2 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v4 = a2;

LABEL_6:
        operator delete(v4);
        return;
      }
    }

    else if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a2 + 32));
    v4 = a2;

    goto LABEL_6;
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFvhN3xpc4dictEEEclIJN6CtrXPC3__0ES2_EEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v3 + 16))(v3, v1, &object);
  xpc_release(object);
}

xpc_object_t __copy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFvhN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = _Block_copy(v4);
    v6 = *(a2 + 40);
    *(a1 + 32) = v5;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = v6;
    if (v6)
    {
      return xpc_retain(v6);
    }
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFvhN3xpc4dictEEEE40c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void sub_100038A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _Unwind_Exception *exception_objecta, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, unint64_t *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  if (SLOBYTE(STACK[0x8AF]) < 0)
  {
    operator delete(STACK[0x898]);
  }

  operator delete(v84);
  if (a35 < 0)
  {
    operator delete(a30);
    if ((a41 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((a41 & 0x80000000) == 0)
  {
LABEL_5:
    if (a47 < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_55;
  }

  operator delete(a36);
  if (a47 < 0)
  {
LABEL_6:
    operator delete(a42);
    if ((a53 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_56;
  }

LABEL_55:
  if ((a53 & 0x80000000) == 0)
  {
LABEL_7:
    if (a59 < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_57;
  }

LABEL_56:
  operator delete(a48);
  if (a59 < 0)
  {
LABEL_8:
    operator delete(a54);
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_58;
  }

LABEL_57:
  if ((a65 & 0x80000000) == 0)
  {
LABEL_9:
    if (a72 < 0)
    {
      goto LABEL_10;
    }

    goto LABEL_59;
  }

LABEL_58:
  operator delete(a60);
  if (a72 < 0)
  {
LABEL_10:
    operator delete(a67);
    if ((a74 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_60;
  }

LABEL_59:
  if ((a74 & 0x80000000) == 0)
  {
LABEL_11:
    if (a76 < 0)
    {
      goto LABEL_12;
    }

    goto LABEL_61;
  }

LABEL_60:
  operator delete(a73);
  if (a76 < 0)
  {
LABEL_12:
    operator delete(a75);
    if ((a78 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_62;
  }

LABEL_61:
  if ((a78 & 0x80000000) == 0)
  {
LABEL_13:
    if (a80 < 0)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

LABEL_62:
  operator delete(a77);
  if (a80 < 0)
  {
LABEL_14:
    operator delete(a79);
    if ((a82 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_64;
  }

LABEL_63:
  if ((a82 & 0x80000000) == 0)
  {
LABEL_15:
    if (a84 < 0)
    {
      goto LABEL_16;
    }

    goto LABEL_65;
  }

LABEL_64:
  operator delete(a81);
  if (a84 < 0)
  {
LABEL_16:
    operator delete(a83);
    if ((SLOBYTE(STACK[0x217]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_66;
  }

LABEL_65:
  if ((SLOBYTE(STACK[0x217]) & 0x80000000) == 0)
  {
LABEL_17:
    if (SLOBYTE(STACK[0x22F]) < 0)
    {
      goto LABEL_18;
    }

    goto LABEL_67;
  }

LABEL_66:
  operator delete(STACK[0x200]);
  if (SLOBYTE(STACK[0x22F]) < 0)
  {
LABEL_18:
    operator delete(STACK[0x218]);
    if ((SLOBYTE(STACK[0x247]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_68;
  }

LABEL_67:
  if ((SLOBYTE(STACK[0x247]) & 0x80000000) == 0)
  {
LABEL_19:
    if (SLOBYTE(STACK[0x25F]) < 0)
    {
      goto LABEL_20;
    }

    goto LABEL_69;
  }

LABEL_68:
  operator delete(STACK[0x230]);
  if (SLOBYTE(STACK[0x25F]) < 0)
  {
LABEL_20:
    operator delete(STACK[0x248]);
    if ((SLOBYTE(STACK[0x277]) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_70;
  }

LABEL_69:
  if ((SLOBYTE(STACK[0x277]) & 0x80000000) == 0)
  {
LABEL_21:
    if ((SLOBYTE(STACK[0x28F]) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

LABEL_70:
  operator delete(STACK[0x260]);
  if ((SLOBYTE(STACK[0x28F]) & 0x80000000) == 0)
  {
LABEL_23:
    operator delete(a18);
    if (SLOBYTE(STACK[0x2A7]) < 0)
    {
      operator delete(STACK[0x290]);
    }

    v85 = a25;
    if (SLOBYTE(STACK[0x2BF]) < 0)
    {
      operator delete(STACK[0x2A8]);
      if ((SLOBYTE(STACK[0x2D7]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((SLOBYTE(STACK[0x2D7]) & 0x80000000) == 0)
    {
LABEL_27:
      if (SLOBYTE(STACK[0x2EF]) < 0)
      {
        goto LABEL_28;
      }

      goto LABEL_42;
    }

    operator delete(STACK[0x2C0]);
    if (SLOBYTE(STACK[0x2EF]) < 0)
    {
LABEL_28:
      operator delete(STACK[0x2D8]);
      if ((SLOBYTE(STACK[0x307]) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_43;
    }

LABEL_42:
    if ((SLOBYTE(STACK[0x307]) & 0x80000000) == 0)
    {
LABEL_29:
      if (SLOBYTE(STACK[0x31F]) < 0)
      {
        goto LABEL_30;
      }

      goto LABEL_44;
    }

LABEL_43:
    operator delete(STACK[0x2F0]);
    if (SLOBYTE(STACK[0x31F]) < 0)
    {
LABEL_30:
      operator delete(STACK[0x308]);
      if ((SLOBYTE(STACK[0x337]) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_45;
    }

LABEL_44:
    if ((SLOBYTE(STACK[0x337]) & 0x80000000) == 0)
    {
LABEL_31:
      if (SLOBYTE(STACK[0x34F]) < 0)
      {
        goto LABEL_32;
      }

      goto LABEL_46;
    }

LABEL_45:
    operator delete(STACK[0x320]);
    if (SLOBYTE(STACK[0x34F]) < 0)
    {
LABEL_32:
      operator delete(STACK[0x338]);
      if ((SLOBYTE(STACK[0x367]) & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_47;
    }

LABEL_46:
    if ((SLOBYTE(STACK[0x367]) & 0x80000000) == 0)
    {
LABEL_33:
      if (SLOBYTE(STACK[0x37F]) < 0)
      {
        goto LABEL_34;
      }

      goto LABEL_48;
    }

LABEL_47:
    operator delete(STACK[0x350]);
    if (SLOBYTE(STACK[0x37F]) < 0)
    {
LABEL_34:
      operator delete(STACK[0x368]);
      if ((SLOBYTE(STACK[0x397]) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_49;
    }

LABEL_48:
    if ((SLOBYTE(STACK[0x397]) & 0x80000000) == 0)
    {
LABEL_35:
      if (SLOBYTE(STACK[0x3AF]) < 0)
      {
        goto LABEL_36;
      }

      goto LABEL_50;
    }

LABEL_49:
    operator delete(STACK[0x380]);
    if (SLOBYTE(STACK[0x3AF]) < 0)
    {
LABEL_36:
      operator delete(STACK[0x398]);
      if ((SLOBYTE(STACK[0x3C7]) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_51;
    }

LABEL_50:
    if ((SLOBYTE(STACK[0x3C7]) & 0x80000000) == 0)
    {
LABEL_37:
      if (&STACK[0x4D8] == a25)
      {
        goto LABEL_39;
      }

      do
      {
LABEL_38:
        v85 -= 6;
        std::pair<std::string const,std::string>::~pair(v85);
      }

      while (v85 != &STACK[0x4D8]);
LABEL_39:
      _Unwind_Resume(a1);
    }

LABEL_51:
    operator delete(STACK[0x3B0]);
    if (&STACK[0x4D8] == a25)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

LABEL_22:
  operator delete(STACK[0x278]);
  goto LABEL_23;
}

uint64_t AWDFlagstoneCoexMetricsReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
LABEL_5:
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v24) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        v8 |= (v24 & 0x7F) << v6;
        if ((v24 & 0x80) == 0)
        {
LABEL_16:
          if ([a2 hasError])
          {
            v13 = 0;
          }

          else
          {
            v13 = v8;
          }

          if (([a2 hasError] & 1) == 0)
          {
            goto LABEL_20;
          }

          return [a2 hasError] ^ 1;
        }
      }

      else
      {
        [a2 _setError];
        v8 |= (v24 & 0x7F) << v6;
        if ((v24 & 0x80) == 0)
        {
          goto LABEL_16;
        }
      }

      v6 += 7;
      v12 = v7++ >= 9;
      if (v12)
      {
        v13 = 0;
        if ([a2 hasError])
        {
          return [a2 hasError] ^ 1;
        }

LABEL_20:
        if ((v13 & 7) == 4)
        {
          return [a2 hasError] ^ 1;
        }

        v14 = v13 >> 3;
        if ((v13 >> 3) > 2)
        {
          if (v14 == 3)
          {
            v15 = objc_alloc_init(AWDCountersCoexS);
            objc_storeStrong((a1 + 24), v15);
            v24 = 0;
            v25 = 0;
            if (PBReaderPlaceMark() && AWDCountersCoexSReadFrom(v15, a2))
            {
              goto LABEL_3;
            }
          }

          else
          {
            if (v14 != 4)
            {
              goto LABEL_32;
            }

            v15 = objc_alloc_init(AWDHistogramsCoexS);
            objc_storeStrong((a1 + 32), v15);
            v24 = 0;
            v25 = 0;
            if (PBReaderPlaceMark() && AWDHistogramsCoexSReadFrom(v15, a2))
            {
              goto LABEL_3;
            }
          }

LABEL_51:

          return 0;
        }

        if (v14 != 1)
        {
          if (v14 == 2)
          {
            v15 = objc_alloc_init(AWDHeaderInfoS);
            objc_storeStrong((a1 + 16), v15);
            v24 = 0;
            v25 = 0;
            if (!PBReaderPlaceMark() || !AWDHeaderInfoSReadFrom(v15, a2))
            {
              goto LABEL_51;
            }

LABEL_3:
            PBReaderRecallMark();

            goto LABEL_4;
          }

LABEL_32:
          if (PBReaderSkipValueWithTag())
          {
            goto LABEL_4;
          }

          return 0;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v24) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            v18 |= (v24 & 0x7F) << v16;
            if ((v24 & 0x80) == 0)
            {
LABEL_46:
              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v18;
              }

LABEL_49:
              *(a1 + 8) = v22;
LABEL_4:
              v5 = [a2 position];
              if (v5 >= [a2 length])
              {
                return [a2 hasError] ^ 1;
              }

              goto LABEL_5;
            }
          }

          else
          {
            [a2 _setError];
            v18 |= (v24 & 0x7F) << v16;
            if ((v24 & 0x80) == 0)
            {
              goto LABEL_46;
            }
          }

          v16 += 7;
          v12 = v17++ >= 9;
          if (v12)
          {
            v22 = 0;
            goto LABEL_49;
          }
        }
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t CAMetricsHandlers_utility_get_N_MSD(int a1, unsigned int a2)
{
  v3 = a2;
  if (a2)
  {
    v4 = (log10(a2) + 1.0);
  }

  else
  {
    v4 = 1;
  }

  v5 = __OFSUB__(v4, a1);
  v6 = v4 - a1;
  if ((v6 < 0) ^ v5 | (v6 == 0))
  {
    v6 = 0;
  }

  v7 = __exp10(v6);
  return (v7 * (v3 / v7));
}

uint64_t CAMetricsHandlers_handle_update_channelSelectionData(any a1)
{
  result = any_to_int(a1.var0);
  if ((result - 11) <= 0xE)
  {
    ++*(&_MergedGlobals_2 + (result - 11) + 34);
  }

  return result;
}

uint64_t CAMetricsHandlers_handle_get_joinCountersData(NSMutableDictionary *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  v6 = &dword_10052AA2C;
  v7 = 25;
  do
  {
    v8 = [NSNumber numberWithUnsignedInt:*(v6 - 25)];
    [v3 addObject:v8];

    v9 = [NSNumber numberWithUnsignedInt:*v6];
    [v5 addObject:v9];

    ++v6;
    --v7;
  }

  while (v7);
  v10 = &dword_10052AB5C;
  v11 = 51;
  do
  {
    v12 = [NSNumber numberWithUnsignedInt:*(v10 - 51)];
    [v2 addObject:v12];

    v13 = [NSNumber numberWithUnsignedInt:*v10];
    [v4 addObject:v13];

    ++v10;
    --v11;
  }

  while (v11);
  [(NSMutableDictionary *)v1 setObject:v2 forKey:@"attach_latency_histogram"];
  [(NSMutableDictionary *)v1 setObject:v3 forKey:@"joiner_latency_histogram"];
  [(NSMutableDictionary *)v1 setObject:v4 forKey:@"attach_fail_latency_histogram"];
  [(NSMutableDictionary *)v1 setObject:v5 forKey:@"joiner_fail_latency_histogram"];

  return 0;
}

__darwin_time_t CAMetricsHandlers_joinattempt_start()
{
  v0 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "CAMetrics : Inside CAMetricsHandlers_joinattempt_start", v2, 2u);
  }

  result = time_ms();
  qword_10052A9B8 = result;
  return result;
}

void CAMetricsHandlers_joinattempt_status(int a1, int a2)
{
  v4 = time_ms();
  v5 = (v4 - qword_10052A9B8) & ~((v4 - qword_10052A9B8) >> 63);
  ++dword_10052A9C0;
  v6 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = "FALSE";
    v15 = 136316162;
    v16 = "CAMetricsHandlers_joinattempt_status";
    v17 = 1024;
    if (a1)
    {
      v8 = "TRUE";
    }

    else
    {
      v8 = "FALSE";
    }

    v18 = dword_10052A9C0;
    v19 = 2080;
    if (a2)
    {
      v7 = "TRUE";
    }

    v20 = v8;
    v21 = 2080;
    v22 = v7;
    v23 = 2048;
    v24 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CAMetrics : Inside %s. Attempts=%d, is_joiner=%s, is_success=%s, ElapsedTime = %lldms. ", &v15, 0x30u);
  }

  if (a2)
  {
    ++dword_10052A9C4;
    v9 = v5 / 0x1388;
    if ((v5 / 0x1388) >= 24)
    {
      LODWORD(v9) = 24;
    }

    v10 = &_MergedGlobals_2 + 4 * v9 + 216;
    v11 = v5 / 0x64;
    if ((v5 / 0x64) >= 50)
    {
      LODWORD(v11) = 50;
    }

    v12 = &_MergedGlobals_2 + 4 * v11 + 416;
  }

  else
  {
    v13 = v5 / 0x1388;
    if ((v5 / 0x1388) >= 24)
    {
      LODWORD(v13) = 24;
    }

    v10 = &_MergedGlobals_2 + 4 * v13 + 316;
    v14 = v5 / 0x64;
    if ((v5 / 0x64) >= 50)
    {
      LODWORD(v14) = 50;
    }

    v12 = &_MergedGlobals_2 + 4 * v14 + 620;
  }

  if ((a1 & 1) == 0)
  {
    v10 = v12;
  }

  ++*v10;
}

uint64_t CAMetricsHandlers_handle_getprop_joinerRssi(void *a1, void *a2)
{
  v3 = a1;
  v47 = a2;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  v50 = v3;
  v48 = +[NSMutableArray array];
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_joinerRssi();
    }

    v5 = 0;
    v6 = 1;
    goto LABEL_64;
  }

  count = xpc_array_get_count(v3);
  v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = count;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CAMetrics : JoinerRSSIHistogram array with size %ld.", &buf, 0xCu);
  }

  if (count)
  {
    v8 = 0;
    v5 = 0;
    while (1)
    {
      v9 = xpc_array_get_dictionary(v3, v8);

      v10 = v9;
      string = xpc_dictionary_get_string(v9, "key");
      v12 = strlen(string);
      if (v12 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      *(&buf.__r_.__value_.__s + 23) = v12;
      if (v12)
      {
        memmove(&buf, string, v12);
      }

      buf.__r_.__value_.__s.__data_[v13] = 0;
      v14 = v10;
      uint64 = xpc_dictionary_get_uint64(v10, "value");
      v16 = std::string::find(&buf, 91, 0);
      v17 = std::string::find(&buf, 93, 0);
      v18 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      size = buf.__r_.__value_.__l.__size_;
      v20 = buf.__r_.__value_.__r.__words[0];
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v22 = buf.__r_.__value_.__l.__size_;
      }

      v23 = (p_buf + v22);
      if (v22 >= 18)
      {
        v24 = p_buf;
        do
        {
          v25 = memchr(v24, 69, v22 - 17);
          if (!v25)
          {
            break;
          }

          if (v25->__r_.__value_.__r.__words[0] == 0x6369766544646E45 && v25->__r_.__value_.__l.__size_ == 0x756F436E696F4A65 && LOWORD(v25->__r_.__value_.__r.__words[2]) == 29806)
          {
            goto LABEL_35;
          }

          v24 = (&v25->__r_.__value_.__l.__data_ + 1);
          v22 = v23 - v24;
        }

        while (v23 - v24 > 17);
      }

      v25 = v23;
LABEL_35:
      if (v25 == v23 || v25 != p_buf || v16 == -1 || v17 == -1)
      {
        v5 = v14;
        if ((v18 & 0x80) == 0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        if ((v18 & 0x80000000) != 0)
        {
          if (size <= v16)
          {
LABEL_67:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v16 >= v18)
          {
            goto LABEL_67;
          }

          v20 = &buf;
          size = v18;
        }

        v28 = v16 + 1;
        if (size - (v16 + 1) >= v17 - 1)
        {
          v29 = v17 - 1;
        }

        else
        {
          v29 = size - (v16 + 1);
        }

        if (v29 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v5 = v14;
        if (v29 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v29;
        if (v29)
        {
          memmove(&__dst, v20 + v28, v29);
        }

        __dst.__r_.__value_.__s.__data_[v29] = 0;
        v30 = std::stoi(&__dst, 0, 10);
        if ((v30 & 0xFEu) <= 0xD)
        {
          *(&v53 + v30) = uint64;
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
          if ((*(&buf.__r_.__value_.__s + 23) & 0x80) == 0)
          {
            goto LABEL_10;
          }
        }

        else if ((*(&buf.__r_.__value_.__s + 23) & 0x80) == 0)
        {
          goto LABEL_10;
        }
      }

      operator delete(buf.__r_.__value_.__l.__data_);
LABEL_10:
      ++v8;
      v3 = v50;
      if (v8 == count)
      {
        v31 = v53;
        goto LABEL_63;
      }
    }
  }

  v31 = 0;
  v5 = 0;
LABEL_63:
  v32 = [NSNumber numberWithUnsignedInt:v31];
  [v48 addObject:v32];

  v33 = [NSNumber numberWithUnsignedInt:DWORD1(v53)];
  [v48 addObject:v33];

  v34 = [NSNumber numberWithUnsignedInt:DWORD2(v53)];
  [v48 addObject:v34];

  v35 = [NSNumber numberWithUnsignedInt:HIDWORD(v53)];
  [v48 addObject:v35];

  v36 = [NSNumber numberWithUnsignedInt:v54];
  [v48 addObject:v36];

  v37 = [NSNumber numberWithUnsignedInt:DWORD1(v54)];
  [v48 addObject:v37];

  v38 = [NSNumber numberWithUnsignedInt:DWORD2(v54)];
  [v48 addObject:v38];

  v39 = [NSNumber numberWithUnsignedInt:HIDWORD(v54)];
  [v48 addObject:v39];

  v40 = [NSNumber numberWithUnsignedInt:v55];
  [v48 addObject:v40];

  v41 = [NSNumber numberWithUnsignedInt:DWORD1(v55)];
  [v48 addObject:v41];

  v42 = [NSNumber numberWithUnsignedInt:DWORD2(v55)];
  [v48 addObject:v42];

  v43 = [NSNumber numberWithUnsignedInt:HIDWORD(v55)];
  [v48 addObject:v43];

  v44 = [NSNumber numberWithUnsignedInt:v56];
  [v48 addObject:v44];

  v45 = [NSNumber numberWithUnsignedInt:HIDWORD(v56)];
  [v48 addObject:v45];

  [v47 setObject:v48 forKey:@"accessory_nodes_count_histogram"];
  v6 = 0;
LABEL_64:

  return v6;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
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

void *std::string::substr[abi:ne200100]@<X0>(void *result@<X0>, unint64_t a2@<X1>, size_t a3@<X2>, _BYTE *a4@<X8>)
{
  v4 = result;
  v6 = *(result + 23);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6 >= a2)
    {
      v7 = v6 - a2;
      if (v7 >= a3)
      {
        v8 = a3;
      }

      else
      {
        v8 = v7;
      }

      if (v8 < 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_7;
      }

LABEL_17:
      std::string::__throw_length_error[abi:ne200100]();
    }

LABEL_18:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v9 = result[1];
  if (v9 < a2)
  {
    goto LABEL_18;
  }

  v4 = *result;
  v10 = v9 - a2;
  if (v10 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = v10;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    goto LABEL_17;
  }

LABEL_7:
  if (v8 >= 0x17)
  {
    operator new();
  }

  a4[23] = v8;
  if (v8)
  {
    result = memmove(a4, v4 + a2, v8);
    a4[v8] = 0;
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

size_t CAMetricsHandlers_handle_getprop_bbrCounters(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v19[0] = 0;
  v19[1] = 0;
  v18 = v19;
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_bbrCounters();
    }

    count = 1;
LABEL_20:

    goto LABEL_21;
  }

  count = xpc_array_get_count(v3);
  if (count)
  {
    v7 = 0;
    for (i = 0; i != count; ++i)
    {
      v5 = xpc_array_get_dictionary(v3, i);

      string = xpc_dictionary_get_string(v5, "key");
      v10 = strlen(string);
      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v17) = v10;
      if (v10)
      {
        memmove(__p, string, v10);
      }

      *(__p + v11) = 0;
      v12 = [NSNumber numberWithUnsignedInt:xpc_dictionary_get_uint64(v5, "value")];
      if (v17 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      v14 = [NSString stringWithUTF8String:v13, __p[0], __p[1], v17, v18];
      [v4 setObject:v12 forKey:v14];

      if (SHIBYTE(v17) < 0)
      {
        operator delete(__p[0]);
      }

      v7 = v5;
    }

    count = 0;
    goto LABEL_20;
  }

LABEL_21:
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v18, v19[0]);

  return count;
}

void sub_10003AF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, char *a16)
{
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a15, a16);

  _Unwind_Resume(a1);
}

size_t CAMetricsHandlers_handle_getprop_linkLossCounters(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v24[0] = 0;
  v24[1] = 0;
  v23 = v24;
  type = xpc_get_type(v3);
  if (dword_10052A9C0)
  {
    v6 = (dword_10052A9C4 / dword_10052A9C0) * 100.0;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [NSNumber numberWithUnsignedInt:?];
  [v4 setObject:v7 forKey:@"join_attempts"];

  *&v8 = v6;
  v9 = [NSNumber numberWithFloat:v8];
  [v4 setObject:v9 forKey:@"join_success_rate"];

  if (type != &_xpc_type_array)
  {
    v10 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_linkLossCounters();
    }

    count = 1;
LABEL_23:

    goto LABEL_24;
  }

  count = xpc_array_get_count(v3);
  if (count)
  {
    v12 = 0;
    for (i = 0; i != count; ++i)
    {
      v10 = xpc_array_get_dictionary(v3, i);

      string = xpc_dictionary_get_string(v10, "key");
      v15 = strlen(string);
      if (v15 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v16 = v15;
      if (v15 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v22) = v15;
      if (v15)
      {
        memmove(__p, string, v15);
      }

      *(__p + v16) = 0;
      v17 = [NSNumber numberWithUnsignedInt:xpc_dictionary_get_uint64(v10, "value")];
      if (v22 >= 0)
      {
        v18 = __p;
      }

      else
      {
        v18 = __p[0];
      }

      v19 = [NSString stringWithUTF8String:v18, __p[0], __p[1], v22, v23];
      [v4 setObject:v17 forKey:v19];

      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }

      v12 = v10;
    }

    count = 0;
    goto LABEL_23;
  }

LABEL_24:
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&v23, v24[0]);

  return count;
}

void sub_10003B2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, char *a16)
{
  std::__tree<std::__value_type<std::string,boost::any>,std::__map_value_compare<std::string,std::__value_type<std::string,boost::any>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,boost::any>>>::destroy(&a15, a16);

  _Unwind_Resume(a1);
}

uint64_t CAMetricsHandlers_handle_getprop_nbrRssi(void *a1, void *a2)
{
  object = a1;
  v204 = a2;
  v217 = 0;
  v215 = 0u;
  v216 = 0u;
  v214 = 0u;
  v213 = 0;
  v211 = 0u;
  v212 = 0u;
  v210 = 0u;
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableArray array];
  if (xpc_get_type(object) != &_xpc_type_array)
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_nbrRssi();
    }

    v6 = 0;
    v7 = 1;
    goto LABEL_429;
  }

  count = xpc_array_get_count(object);
  v8 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = count;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CAMetrics : NeighborRSSIHistogram array with size %ld.", &buf, 0xCu);
  }

  if (count)
  {
    v9 = 0;
    v6 = 0;
    while (1)
    {
      v10 = xpc_array_get_dictionary(object, v9);

      v6 = v10;
      string = xpc_dictionary_get_string(v10, "key");
      v12 = strlen(string);
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      v209 = v12;
      if (v12)
      {
        memmove(&buf, string, v12);
      }

      *(&buf + v13) = 0;
      uint64 = xpc_dictionary_get_uint64(v6, "value");
      v15 = uint64;
      if ((v209 & 0x80000000) == 0)
      {
        break;
      }

      if (*(&buf + 1) != 20)
      {
        goto LABEL_201;
      }

      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563450228)
      {
LABEL_137:
        v48 = uint64;
        if (uint64)
        {
          v49 = log10(uint64) + 1.0;
          v50 = v49 - 4;
          if (v49 <= 4)
          {
            v50 = 0;
          }

          v51 = v50;
        }

        else
        {
          v51 = 0.0;
        }

        v60 = __exp10(v51);
        LODWORD(v214) = (v60 * (v48 / v60));
        goto LABEL_229;
      }

      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563515764)
      {
LABEL_141:
        v52 = uint64;
        if (uint64)
        {
          v53 = log10(uint64) + 1.0;
          v54 = v53 - 4;
          if (v53 <= 4)
          {
            v54 = 0;
          }

          v55 = v54;
        }

        else
        {
          v55 = 0.0;
        }

        v65 = __exp10(v55);
        DWORD1(v214) = (v65 * (v52 / v65));
        goto LABEL_229;
      }

      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563581300)
      {
LABEL_145:
        v56 = uint64;
        if (uint64)
        {
          v57 = log10(uint64) + 1.0;
          v58 = v57 - 4;
          if (v57 <= 4)
          {
            v58 = 0;
          }

          v59 = v58;
        }

        else
        {
          v59 = 0.0;
        }

        v70 = __exp10(v59);
        DWORD2(v214) = (v70 * (v56 / v70));
        goto LABEL_229;
      }

      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563646836)
      {
LABEL_151:
        v61 = uint64;
        if (uint64)
        {
          v62 = log10(uint64) + 1.0;
          v63 = v62 - 4;
          if (v62 <= 4)
          {
            v63 = 0;
          }

          v64 = v63;
        }

        else
        {
          v64 = 0.0;
        }

        v75 = __exp10(v64);
        HIDWORD(v214) = (v75 * (v61 / v75));
        goto LABEL_229;
      }

      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563712372)
      {
LABEL_157:
        v66 = uint64;
        if (uint64)
        {
          v67 = log10(uint64) + 1.0;
          v68 = v67 - 4;
          if (v67 <= 4)
          {
            v68 = 0;
          }

          v69 = v68;
        }

        else
        {
          v69 = 0.0;
        }

        v76 = __exp10(v69);
        LODWORD(v215) = (v76 * (v66 / v76));
        goto LABEL_229;
      }

      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563777908)
      {
LABEL_163:
        v71 = uint64;
        if (uint64)
        {
          v72 = log10(uint64) + 1.0;
          v73 = v72 - 4;
          if (v72 <= 4)
          {
            v73 = 0;
          }

          v74 = v73;
        }

        else
        {
          v74 = 0.0;
        }

        v77 = __exp10(v74);
        DWORD1(v215) = (v77 * (v71 / v77));
        goto LABEL_229;
      }

      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563843444)
      {
LABEL_173:
        v78 = uint64;
        if (uint64)
        {
          v79 = log10(uint64) + 1.0;
          v80 = v79 - 4;
          if (v79 <= 4)
          {
            v80 = 0;
          }

          v81 = v80;
        }

        else
        {
          v81 = 0.0;
        }

        v186 = __exp10(v81);
        DWORD2(v215) = (v186 * (v78 / v186));
        goto LABEL_229;
      }

      if ((v209 & 0x80) == 0)
      {
        if (v209 != 20)
        {
          goto LABEL_201;
        }

LABEL_121:
        if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v208 == 1563908980)
        {
          goto LABEL_392;
        }

        if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v208 == 1563974516)
        {
          goto LABEL_413;
        }

        goto LABEL_193;
      }

      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563908980)
      {
LABEL_392:
        v178 = uint64;
        if (uint64)
        {
          v179 = log10(uint64) + 1.0;
          v180 = v179 - 4;
          if (v179 <= 4)
          {
            v180 = 0;
          }

          v181 = v180;
        }

        else
        {
          v181 = 0.0;
        }

        v188 = __exp10(v181);
        HIDWORD(v215) = (v188 * (v178 / v188));
        goto LABEL_229;
      }

      p_buf = buf;
      if (*buf == 0x6150726574756F52 && *(buf + 8) == 0x6E756F4374656B63 && *(buf + 16) == 1563974516)
      {
LABEL_413:
        v190 = uint64;
        if (uint64)
        {
          v191 = log10(uint64) + 1.0;
          v192 = v191 - 4;
          if (v191 <= 4)
          {
            v192 = 0;
          }

          v193 = v192;
        }

        else
        {
          v193 = 0.0;
        }

        v198 = __exp10(v193);
        LODWORD(v216) = (v198 * (v190 / v198));
        goto LABEL_229;
      }

      if (v209 < 0)
      {
        goto LABEL_194;
      }

      if (v209 != 20)
      {
        goto LABEL_201;
      }

LABEL_193:
      p_buf = &buf;
LABEL_194:
      v87 = *p_buf;
      v88 = *(p_buf + 1);
      v89 = *(p_buf + 4);
      if (v87 != 0x6150726574756F52 || v88 != 0x6E756F4374656B63 || v89 != 1564040052)
      {
LABEL_201:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RouterPacketCount[10]"))
        {
          if (v15)
          {
            v92 = log10(v15) + 1.0;
            v93 = v92 - 4;
            if (v92 <= 4)
            {
              v93 = 0;
            }

            v94 = v93;
          }

          else
          {
            v94 = 0.0;
          }

          v101 = __exp10(v94);
          DWORD2(v216) = (v101 * (v15 / v101));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RouterPacketCount[11]"))
        {
          if (v15)
          {
            v95 = log10(v15) + 1.0;
            v96 = v95 - 4;
            if (v95 <= 4)
            {
              v96 = 0;
            }

            v97 = v96;
          }

          else
          {
            v97 = 0.0;
          }

          v105 = __exp10(v97);
          HIDWORD(v216) = (v105 * (v15 / v105));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RouterPacketCount[12]"))
        {
          if (v15)
          {
            v98 = log10(v15) + 1.0;
            v99 = v98 - 4;
            if (v98 <= 4)
            {
              v99 = 0;
            }

            v100 = v99;
          }

          else
          {
            v100 = 0.0;
          }

          v106 = __exp10(v100);
          LODWORD(v217) = (v106 * (v15 / v106));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RouterPacketCount[13]"))
        {
          if (v15)
          {
            v102 = log10(v15) + 1.0;
            v103 = v102 - 4;
            if (v102 <= 4)
            {
              v103 = 0;
            }

            v104 = v103;
          }

          else
          {
            v104 = 0.0;
          }

          v107 = __exp10(v104);
          HIDWORD(v217) = (v107 * (v15 / v107));
        }

        goto LABEL_229;
      }

      v194 = uint64;
      if (uint64)
      {
        v195 = log10(uint64) + 1.0;
        v196 = v195 - 4;
        if (v195 <= 4)
        {
          v196 = 0;
        }

        v197 = v196;
      }

      else
      {
        v197 = 0.0;
      }

      v199 = __exp10(v197);
      DWORD1(v216) = (v199 * (v194 / v199));
LABEL_229:
      if (v209 < 0 && *(&buf + 1) == 23)
      {
        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D305B746E756F43)
        {
          if (v15)
          {
            v134 = log10(v15) + 1.0;
            v135 = v134 - 4;
            if (v134 <= 4)
            {
              v135 = 0;
            }

            v136 = v135;
          }

          else
          {
            v136 = 0.0;
          }

          v147 = __exp10(v136);
          LODWORD(v210) = (v147 * (v15 / v147));
          if ((v209 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

LABEL_336:
          operator delete(buf);
          goto LABEL_9;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D315B746E756F43)
        {
          if (v15)
          {
            v140 = log10(v15) + 1.0;
            v141 = v140 - 4;
            if (v140 <= 4)
            {
              v141 = 0;
            }

            v142 = v141;
          }

          else
          {
            v142 = 0.0;
          }

          v152 = __exp10(v142);
          DWORD1(v210) = (v152 * (v15 / v152));
          if ((v209 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_336;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D325B746E756F43)
        {
          if (v15)
          {
            v144 = log10(v15) + 1.0;
            v145 = v144 - 4;
            if (v144 <= 4)
            {
              v145 = 0;
            }

            v146 = v145;
          }

          else
          {
            v146 = 0.0;
          }

          v159 = __exp10(v146);
          DWORD2(v210) = (v159 * (v15 / v159));
          if ((v209 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_336;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D335B746E756F43)
        {
          if (v15)
          {
            v149 = log10(v15) + 1.0;
            v150 = v149 - 4;
            if (v149 <= 4)
            {
              v150 = 0;
            }

            v151 = v150;
          }

          else
          {
            v151 = 0.0;
          }

          v164 = __exp10(v151);
          HIDWORD(v210) = (v164 * (v15 / v164));
          if ((v209 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_336;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D345B746E756F43)
        {
          if (v15)
          {
            v156 = log10(v15) + 1.0;
            v157 = v156 - 4;
            if (v156 <= 4)
            {
              v157 = 0;
            }

            v158 = v157;
          }

          else
          {
            v158 = 0.0;
          }

          v169 = __exp10(v158);
          LODWORD(v211) = (v169 * (v15 / v169));
          if ((v209 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_336;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D355B746E756F43)
        {
          if (v15)
          {
            v161 = log10(v15) + 1.0;
            v162 = v161 - 4;
            if (v161 <= 4)
            {
              v162 = 0;
            }

            v163 = v162;
          }

          else
          {
            v163 = 0.0;
          }

          v173 = __exp10(v163);
          DWORD1(v211) = (v173 * (v15 / v173));
          if ((v209 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_336;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D365B746E756F43)
        {
          if (v15)
          {
            v166 = log10(v15) + 1.0;
            v167 = v166 - 4;
            if (v166 <= 4)
            {
              v167 = 0;
            }

            v168 = v167;
          }

          else
          {
            v168 = 0.0;
          }

          v177 = __exp10(v168);
          DWORD2(v211) = (v177 * (v15 / v177));
          if ((v209 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_336;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D375B746E756F43)
        {
          if (v15)
          {
            v170 = log10(v15) + 1.0;
            v171 = v170 - 4;
            if (v170 <= 4)
            {
              v171 = 0;
            }

            v172 = v171;
          }

          else
          {
            v172 = 0.0;
          }

          v185 = __exp10(v172);
          HIDWORD(v211) = (v185 * (v15 / v185));
          if ((v209 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_336;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D385B746E756F43)
        {
          if (v15)
          {
            v174 = log10(v15) + 1.0;
            v175 = v174 - 4;
            if (v174 <= 4)
            {
              v175 = 0;
            }

            v176 = v175;
          }

          else
          {
            v176 = 0.0;
          }

          v187 = __exp10(v176);
          LODWORD(v212) = (v187 * (v15 / v187));
          if ((v209 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_336;
        }

        if (*buf == 0x6369766544646E45 && *(buf + 8) == 0x4374656B63615065 && *(buf + 15) == 0x5D395B746E756F43)
        {
          if (v15)
          {
            v182 = log10(v15) + 1.0;
            v183 = v182 - 4;
            if (v182 <= 4)
            {
              v183 = 0;
            }

            v184 = v183;
          }

          else
          {
            v184 = 0.0;
          }

          v189 = __exp10(v184);
          DWORD1(v212) = (v189 * (v15 / v189));
          if ((v209 & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_336;
        }
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "EndDevicePacketCount[10]"))
      {
        if (v15)
        {
          v128 = log10(v15) + 1.0;
          v129 = v128 - 4;
          if (v128 <= 4)
          {
            v129 = 0;
          }

          v130 = v129;
        }

        else
        {
          v130 = 0.0;
        }

        v143 = __exp10(v130);
        DWORD2(v212) = (v143 * (v15 / v143));
        if ((v209 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_336;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "EndDevicePacketCount[11]"))
      {
        if (v15)
        {
          v131 = log10(v15) + 1.0;
          v132 = v131 - 4;
          if (v131 <= 4)
          {
            v132 = 0;
          }

          v133 = v132;
        }

        else
        {
          v133 = 0.0;
        }

        v148 = __exp10(v133);
        HIDWORD(v212) = (v148 * (v15 / v148));
        if ((v209 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_336;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "EndDevicePacketCount[12]"))
      {
        if (v15)
        {
          v137 = log10(v15) + 1.0;
          v138 = v137 - 4;
          if (v137 <= 4)
          {
            v138 = 0;
          }

          v139 = v138;
        }

        else
        {
          v139 = 0.0;
        }

        v160 = __exp10(v139);
        LODWORD(v213) = (v160 * (v15 / v160));
        if ((v209 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_336;
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "EndDevicePacketCount[13]"))
      {
        if (v15)
        {
          v153 = log10(v15) + 1.0;
          v154 = v153 - 4;
          if (v153 <= 4)
          {
            v154 = 0;
          }

          v155 = v154;
        }

        else
        {
          v155 = 0.0;
        }

        v165 = __exp10(v155);
        HIDWORD(v213) = (v165 * (v15 / v165));
        if ((v209 & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_336;
      }

      if (v209 < 0)
      {
        goto LABEL_336;
      }

LABEL_9:
      if (count == ++v9)
      {
        goto LABEL_426;
      }
    }

    if (v209 != 20)
    {
      goto LABEL_201;
    }

    if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v208 == 1563450228)
    {
      goto LABEL_137;
    }

    if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v208 == 1563515764)
    {
      goto LABEL_141;
    }

    if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v208 == 1563581300)
    {
      goto LABEL_145;
    }

    if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v208 == 1563646836)
    {
      goto LABEL_151;
    }

    if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v208 == 1563712372)
    {
      goto LABEL_157;
    }

    if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v208 == 1563777908)
    {
      goto LABEL_163;
    }

    if (buf == 0x6150726574756F52 && *(&buf + 1) == 0x6E756F4374656B63 && v208 == 1563843444)
    {
      goto LABEL_173;
    }

    goto LABEL_121;
  }

  v6 = 0;
LABEL_426:
  for (i = 0; i != 56; i += 4)
  {
    v201 = [NSNumber numberWithUnsignedInt:*(&v214 + i)];
    [v3 addObject:v201];

    v202 = [NSNumber numberWithUnsignedInt:*(&v210 + i)];
    [v4 addObject:v202];
  }

  [v204 setObject:v3 forKey:@"packet_rssi_nbr_router_histogram"];
  [v204 setObject:v4 forKey:@"packet_rssi_nbr_accessory_histogram"];
  v7 = 0;
LABEL_429:

  return v7;
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

uint64_t CAMetricsHandlers_handle_getprop_macPktLqi(void *a1, void *a2)
{
  v3 = a1;
  v36 = a2;
  memset(v42, 0, sizeof(v42));
  v38 = v3;
  v39 = +[NSMutableArray array];
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_macPktLqi();
    }

    v5 = 0;
    v6 = 1;
    goto LABEL_64;
  }

  count = xpc_array_get_count(v3);
  v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = count;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CAMetrics : LQIHistogram array with size %ld.", &buf, 0xCu);
  }

  if (count)
  {
    v8 = 0;
    v5 = 0;
    while (1)
    {
      v9 = xpc_array_get_dictionary(v3, v8);

      v5 = v9;
      string = xpc_dictionary_get_string(v9, "key");
      v11 = strlen(string);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      *(&buf.__r_.__value_.__s + 23) = v11;
      if (v11)
      {
        memmove(&buf, string, v11);
      }

      buf.__r_.__value_.__s.__data_[v12] = 0;
      uint64 = xpc_dictionary_get_uint64(v5, "value");
      v14 = std::string::find(&buf, 91, 0);
      v15 = std::string::find(&buf, 93, 0);
      v16 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      size = buf.__r_.__value_.__l.__size_;
      v17 = buf.__r_.__value_.__r.__words[0];
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = buf.__r_.__value_.__l.__size_;
      }

      v21 = (p_buf + v20);
      if (v20 >= 13)
      {
        v22 = p_buf;
        do
        {
          v23 = memchr(v22, 82, v20 - 12);
          if (!v23)
          {
            break;
          }

          if (v23->__r_.__value_.__r.__words[0] == 0x74656B6361507852 && *(v23->__r_.__value_.__r.__words + 5) == 0x746E756F4374656BLL)
          {
            goto LABEL_31;
          }

          v22 = (&v23->__r_.__value_.__l.__data_ + 1);
          v20 = v21 - v22;
        }

        while (v21 - v22 > 12);
      }

      v23 = v21;
LABEL_31:
      if (v23 == v21 || v23 != p_buf || v14 == -1 || v15 == -1)
      {
        goto LABEL_51;
      }

      if ((v16 & 0x80000000) != 0)
      {
        if (size <= v14)
        {
LABEL_67:
          std::string::__throw_out_of_range[abi:ne200100]();
        }
      }

      else
      {
        if (v14 >= v16)
        {
          goto LABEL_67;
        }

        v17 = &buf;
        size = v16;
      }

      v25 = v14 + 1;
      if (size - (v14 + 1) >= v15 - 1)
      {
        v26 = v15 - 1;
      }

      else
      {
        v26 = size - (v14 + 1);
      }

      if (v26 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v26 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v26;
      if (v26)
      {
        memmove(&__dst, v17 + v25, v26);
      }

      __dst.__r_.__value_.__s.__data_[v26] = 0;
      v27 = std::stoi(&__dst, 0, 10);
      if ((v27 & 0xC0) == 0)
      {
        break;
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_59;
      }

LABEL_50:
      LOBYTE(v16) = *(&buf.__r_.__value_.__s + 23);
LABEL_51:
      if ((v16 & 0x80) != 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      ++v8;
      v3 = v38;
      if (v8 == count)
      {
        goto LABEL_61;
      }
    }

    v28 = v27;
    if (uint64)
    {
      v29 = log10(uint64) + 1.0;
      v30 = v29 - 4;
      if (v29 <= 4)
      {
        v30 = 0;
      }

      v31 = v30;
    }

    else
    {
      v31 = 0.0;
    }

    v32 = __exp10(v31);
    *(v42 + (v28 & 0x3F)) = (v32 * (uint64 / v32));
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_50;
    }

LABEL_59:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_50;
  }

  v5 = 0;
LABEL_61:
  for (i = 0; i != 256; i += 4)
  {
    v34 = [NSNumber numberWithUnsignedInt:*(v42 + i)];
    [v39 addObject:v34];
  }

  [v36 setObject:v39 forKey:@"packet_lqi_histogram"];
  v6 = 0;
LABEL_64:

  return v6;
}

uint64_t CAMetricsHandlers_handle_getprop_macPktSize(void *a1, void *a2)
{
  v3 = a1;
  v284 = a2;
  v301 = 0;
  v299 = 0u;
  v300 = 0u;
  v297 = 0u;
  v298 = 0u;
  v295 = 0u;
  v296 = 0u;
  v294 = 0;
  v292 = 0u;
  v293 = 0u;
  v290 = 0u;
  v291 = 0u;
  v288 = 0u;
  v289 = 0u;
  type = xpc_get_type(v3);
  v5 = +[NSMutableArray array];
  v6 = +[NSMutableArray array];
  if (type != &_xpc_type_array)
  {
    v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_macPktSize();
    }

    v8 = 0;
    v9 = 1;
    goto LABEL_566;
  }

  count = xpc_array_get_count(v3);
  v10 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = count;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "CAMetrics : MAC-Packet-Size-Histogram array with size %ld.", &buf, 0xCu);
  }

  if (count)
  {
    v11 = 0;
    v8 = 0;
    while (1)
    {
      v12 = xpc_array_get_dictionary(v3, v11);

      v8 = v12;
      string = xpc_dictionary_get_string(v12, "key");
      v14 = strlen(string);
      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v15 = v14;
      if (v14 >= 0x17)
      {
        operator new();
      }

      v287 = v14;
      if (v14)
      {
        memmove(&buf, string, v14);
      }

      *(&buf + v15) = 0;
      uint64 = xpc_dictionary_get_uint64(v8, "value");
      v17 = uint64;
      if ((v287 & 0x80000000) == 0)
      {
        break;
      }

      if (*(&buf + 1) != 16)
      {
        goto LABEL_145;
      }

      if (*buf == 0x74656B6361507854 && *(buf + 8) == 0x5D305B746E756F43)
      {
LABEL_90:
        v34 = uint64;
        if (uint64)
        {
          v35 = log10(uint64) + 1.0;
          v36 = v35 - 4;
          if (v35 <= 4)
          {
            v36 = 0;
          }

          v37 = v36;
        }

        else
        {
          v37 = 0.0;
        }

        v46 = __exp10(v37);
        LODWORD(v295) = (v46 * (v34 / v46));
        goto LABEL_277;
      }

      if (*buf == 0x74656B6361507854 && *(buf + 8) == 0x5D315B746E756F43)
      {
LABEL_94:
        v38 = uint64;
        if (uint64)
        {
          v39 = log10(uint64) + 1.0;
          v40 = v39 - 4;
          if (v39 <= 4)
          {
            v40 = 0;
          }

          v41 = v40;
        }

        else
        {
          v41 = 0.0;
        }

        v51 = __exp10(v41);
        DWORD1(v295) = (v51 * (v38 / v51));
        goto LABEL_277;
      }

      if (*buf == 0x74656B6361507854 && *(buf + 8) == 0x5D325B746E756F43)
      {
LABEL_98:
        v42 = uint64;
        if (uint64)
        {
          v43 = log10(uint64) + 1.0;
          v44 = v43 - 4;
          if (v43 <= 4)
          {
            v44 = 0;
          }

          v45 = v44;
        }

        else
        {
          v45 = 0.0;
        }

        v56 = __exp10(v45);
        DWORD2(v295) = (v56 * (v42 / v56));
        goto LABEL_277;
      }

      if (*buf == 0x74656B6361507854 && *(buf + 8) == 0x5D335B746E756F43)
      {
LABEL_104:
        v47 = uint64;
        if (uint64)
        {
          v48 = log10(uint64) + 1.0;
          v49 = v48 - 4;
          if (v48 <= 4)
          {
            v49 = 0;
          }

          v50 = v49;
        }

        else
        {
          v50 = 0.0;
        }

        v61 = __exp10(v50);
        HIDWORD(v295) = (v61 * (v47 / v61));
        goto LABEL_277;
      }

      if (*buf == 0x74656B6361507854 && *(buf + 8) == 0x5D345B746E756F43)
      {
LABEL_110:
        v52 = uint64;
        if (uint64)
        {
          v53 = log10(uint64) + 1.0;
          v54 = v53 - 4;
          if (v53 <= 4)
          {
            v54 = 0;
          }

          v55 = v54;
        }

        else
        {
          v55 = 0.0;
        }

        v62 = __exp10(v55);
        LODWORD(v296) = (v62 * (v52 / v62));
        goto LABEL_277;
      }

      if (*buf == 0x74656B6361507854 && *(buf + 8) == 0x5D355B746E756F43)
      {
LABEL_116:
        v57 = uint64;
        if (uint64)
        {
          v58 = log10(uint64) + 1.0;
          v59 = v58 - 4;
          if (v58 <= 4)
          {
            v59 = 0;
          }

          v60 = v59;
        }

        else
        {
          v60 = 0.0;
        }

        v63 = __exp10(v60);
        DWORD1(v296) = (v63 * (v57 / v63));
        goto LABEL_277;
      }

      if (*buf == 0x74656B6361507854 && *(buf + 8) == 0x5D365B746E756F43)
      {
LABEL_126:
        v64 = uint64;
        if (uint64)
        {
          v65 = log10(uint64) + 1.0;
          v66 = v65 - 4;
          if (v65 <= 4)
          {
            v66 = 0;
          }

          v67 = v66;
        }

        else
        {
          v67 = 0.0;
        }

        v108 = __exp10(v67);
        DWORD2(v296) = (v108 * (v64 / v108));
        goto LABEL_277;
      }

      if ((v287 & 0x80) == 0)
      {
        if (v287 != 16)
        {
          goto LABEL_145;
        }

LABEL_80:
        if (buf == 0x74656B6361507854 && *(&buf + 1) == 0x5D375B746E756F43)
        {
          goto LABEL_197;
        }

        if (buf == 0x74656B6361507854 && *(&buf + 1) == 0x5D385B746E756F43)
        {
          goto LABEL_217;
        }

        goto LABEL_140;
      }

      if (*buf == 0x74656B6361507854 && *(buf + 8) == 0x5D375B746E756F43)
      {
LABEL_197:
        v104 = uint64;
        if (uint64)
        {
          v105 = log10(uint64) + 1.0;
          v106 = v105 - 4;
          if (v105 <= 4)
          {
            v106 = 0;
          }

          v107 = v106;
        }

        else
        {
          v107 = 0.0;
        }

        v113 = __exp10(v107);
        HIDWORD(v296) = (v113 * (v104 / v113));
        goto LABEL_277;
      }

      p_buf = buf;
      if (*buf == 0x74656B6361507854 && *(buf + 8) == 0x5D385B746E756F43)
      {
LABEL_217:
        v117 = uint64;
        if (uint64)
        {
          v118 = log10(uint64) + 1.0;
          v119 = v118 - 4;
          if (v118 <= 4)
          {
            v119 = 0;
          }

          v120 = v119;
        }

        else
        {
          v120 = 0.0;
        }

        v130 = __exp10(v120);
        LODWORD(v297) = (v130 * (v117 / v130));
        goto LABEL_277;
      }

      if (v287 < 0)
      {
        goto LABEL_141;
      }

      if (v287 != 16)
      {
        goto LABEL_145;
      }

LABEL_140:
      p_buf = &buf;
LABEL_141:
      v72 = *p_buf;
      v71 = p_buf[1];
      if (v72 != 0x74656B6361507854 || v71 != 0x5D395B746E756F43)
      {
LABEL_145:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "TxPacketCount[10]"))
        {
          if (v17)
          {
            v74 = log10(v17) + 1.0;
            v75 = v74 - 4;
            if (v74 <= 4)
            {
              v75 = 0;
            }

            v76 = v75;
          }

          else
          {
            v76 = 0.0;
          }

          v83 = __exp10(v76);
          DWORD2(v297) = (v83 * (v17 / v83));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "TxPacketCount[11]"))
        {
          if (v17)
          {
            v77 = log10(v17) + 1.0;
            v78 = v77 - 4;
            if (v77 <= 4)
            {
              v78 = 0;
            }

            v79 = v78;
          }

          else
          {
            v79 = 0.0;
          }

          v87 = __exp10(v79);
          HIDWORD(v297) = (v87 * (v17 / v87));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "TxPacketCount[12]"))
        {
          if (v17)
          {
            v80 = log10(v17) + 1.0;
            v81 = v80 - 4;
            if (v80 <= 4)
            {
              v81 = 0;
            }

            v82 = v81;
          }

          else
          {
            v82 = 0.0;
          }

          v91 = __exp10(v82);
          LODWORD(v298) = (v91 * (v17 / v91));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "TxPacketCount[13]"))
        {
          if (v17)
          {
            v84 = log10(v17) + 1.0;
            v85 = v84 - 4;
            if (v84 <= 4)
            {
              v85 = 0;
            }

            v86 = v85;
          }

          else
          {
            v86 = 0.0;
          }

          v95 = __exp10(v86);
          DWORD1(v298) = (v95 * (v17 / v95));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "TxPacketCount[14]"))
        {
          if (v17)
          {
            v88 = log10(v17) + 1.0;
            v89 = v88 - 4;
            if (v88 <= 4)
            {
              v89 = 0;
            }

            v90 = v89;
          }

          else
          {
            v90 = 0.0;
          }

          v99 = __exp10(v90);
          DWORD2(v298) = (v99 * (v17 / v99));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "TxPacketCount[15]"))
        {
          if (v17)
          {
            v92 = log10(v17) + 1.0;
            v93 = v92 - 4;
            if (v92 <= 4)
            {
              v93 = 0;
            }

            v94 = v93;
          }

          else
          {
            v94 = 0.0;
          }

          v103 = __exp10(v94);
          HIDWORD(v298) = (v103 * (v17 / v103));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "TxPacketCount[16]"))
        {
          if (v17)
          {
            v96 = log10(v17) + 1.0;
            v97 = v96 - 4;
            if (v96 <= 4)
            {
              v97 = 0;
            }

            v98 = v97;
          }

          else
          {
            v98 = 0.0;
          }

          v112 = __exp10(v98);
          LODWORD(v299) = (v112 * (v17 / v112));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "TxPacketCount[17]"))
        {
          if (v17)
          {
            v100 = log10(v17) + 1.0;
            v101 = v100 - 4;
            if (v100 <= 4)
            {
              v101 = 0;
            }

            v102 = v101;
          }

          else
          {
            v102 = 0.0;
          }

          v121 = __exp10(v102);
          DWORD1(v299) = (v121 * (v17 / v121));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "TxPacketCount[18]"))
        {
          if (v17)
          {
            v109 = log10(v17) + 1.0;
            v110 = v109 - 4;
            if (v109 <= 4)
            {
              v110 = 0;
            }

            v111 = v110;
          }

          else
          {
            v111 = 0.0;
          }

          v129 = __exp10(v111);
          DWORD2(v299) = (v129 * (v17 / v129));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "TxPacketCount[19]"))
        {
          if (v17)
          {
            v114 = log10(v17) + 1.0;
            v115 = v114 - 4;
            if (v114 <= 4)
            {
              v115 = 0;
            }

            v116 = v115;
          }

          else
          {
            v116 = 0.0;
          }

          v134 = __exp10(v116);
          HIDWORD(v299) = (v134 * (v17 / v134));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "TxPacketCount[20]"))
        {
          if (v17)
          {
            v122 = log10(v17) + 1.0;
            v123 = v122 - 4;
            if (v122 <= 4)
            {
              v123 = 0;
            }

            v124 = v123;
          }

          else
          {
            v124 = 0.0;
          }

          v139 = __exp10(v124);
          LODWORD(v300) = (v139 * (v17 / v139));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "TxPacketCount[21]"))
        {
          if (v17)
          {
            v131 = log10(v17) + 1.0;
            v132 = v131 - 4;
            if (v131 <= 4)
            {
              v132 = 0;
            }

            v133 = v132;
          }

          else
          {
            v133 = 0.0;
          }

          v143 = __exp10(v133);
          DWORD1(v300) = (v143 * (v17 / v143));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "TxPacketCount[22]"))
        {
          if (v17)
          {
            v136 = log10(v17) + 1.0;
            v137 = v136 - 4;
            if (v136 <= 4)
            {
              v137 = 0;
            }

            v138 = v137;
          }

          else
          {
            v138 = 0.0;
          }

          v147 = __exp10(v138);
          DWORD2(v300) = (v147 * (v17 / v147));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "TxPacketCount[23]"))
        {
          if (v17)
          {
            v140 = log10(v17) + 1.0;
            v141 = v140 - 4;
            if (v140 <= 4)
            {
              v141 = 0;
            }

            v142 = v141;
          }

          else
          {
            v142 = 0.0;
          }

          v151 = __exp10(v142);
          HIDWORD(v300) = (v151 * (v17 / v151));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "TxPacketCount[24]"))
        {
          if (v17)
          {
            v144 = log10(v17) + 1.0;
            v145 = v144 - 4;
            if (v144 <= 4)
            {
              v145 = 0;
            }

            v146 = v145;
          }

          else
          {
            v146 = 0.0;
          }

          v152 = __exp10(v146);
          LODWORD(v301) = (v152 * (v17 / v152));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "TxPacketCount[25]"))
        {
          if (v17)
          {
            v148 = log10(v17) + 1.0;
            v149 = v148 - 4;
            if (v148 <= 4)
            {
              v149 = 0;
            }

            v150 = v149;
          }

          else
          {
            v150 = 0.0;
          }

          v153 = __exp10(v150);
          HIDWORD(v301) = (v153 * (v17 / v153));
        }

        goto LABEL_277;
      }

      v125 = uint64;
      if (uint64)
      {
        v126 = log10(uint64) + 1.0;
        v127 = v126 - 4;
        if (v126 <= 4)
        {
          v127 = 0;
        }

        v128 = v127;
      }

      else
      {
        v128 = 0.0;
      }

      v135 = __exp10(v128);
      DWORD1(v297) = (v135 * (v125 / v135));
LABEL_277:
      if (v287 < 0)
      {
        if (*(&buf + 1) == 16)
        {
          if (*buf == 0x74656B6361507852 && *(buf + 8) == 0x5D305B746E756F43)
          {
LABEL_350:
            if (v17)
            {
              v170 = log10(v17) + 1.0;
              v171 = v170 - 4;
              if (v170 <= 4)
              {
                v171 = 0;
              }

              v172 = v171;
            }

            else
            {
              v172 = 0.0;
            }

            v179 = __exp10(v172);
            LODWORD(v288) = (v179 * (v17 / v179));
            if (v287 < 0)
            {
              goto LABEL_562;
            }

            goto LABEL_10;
          }

          if (*buf == 0x74656B6361507852 && *(buf + 8) == 0x5D315B746E756F43)
          {
LABEL_354:
            if (v17)
            {
              v173 = log10(v17) + 1.0;
              v174 = v173 - 4;
              if (v173 <= 4)
              {
                v174 = 0;
              }

              v175 = v174;
            }

            else
            {
              v175 = 0.0;
            }

            v183 = __exp10(v175);
            DWORD1(v288) = (v183 * (v17 / v183));
            if (v287 < 0)
            {
              goto LABEL_562;
            }

            goto LABEL_10;
          }

          if (*buf == 0x74656B6361507852 && *(buf + 8) == 0x5D325B746E756F43)
          {
LABEL_358:
            if (v17)
            {
              v176 = log10(v17) + 1.0;
              v177 = v176 - 4;
              if (v176 <= 4)
              {
                v177 = 0;
              }

              v178 = v177;
            }

            else
            {
              v178 = 0.0;
            }

            v187 = __exp10(v178);
            DWORD2(v288) = (v187 * (v17 / v187));
            if (v287 < 0)
            {
              goto LABEL_562;
            }

            goto LABEL_10;
          }

          if (*buf == 0x74656B6361507852 && *(buf + 8) == 0x5D335B746E756F43)
          {
LABEL_365:
            if (v17)
            {
              v180 = log10(v17) + 1.0;
              v181 = v180 - 4;
              if (v180 <= 4)
              {
                v181 = 0;
              }

              v182 = v181;
            }

            else
            {
              v182 = 0.0;
            }

            v191 = __exp10(v182);
            HIDWORD(v288) = (v191 * (v17 / v191));
            if (v287 < 0)
            {
              goto LABEL_562;
            }

            goto LABEL_10;
          }

          if (*buf == 0x74656B6361507852 && *(buf + 8) == 0x5D345B746E756F43)
          {
LABEL_372:
            if (v17)
            {
              v184 = log10(v17) + 1.0;
              v185 = v184 - 4;
              if (v184 <= 4)
              {
                v185 = 0;
              }

              v186 = v185;
            }

            else
            {
              v186 = 0.0;
            }

            v192 = __exp10(v186);
            LODWORD(v289) = (v192 * (v17 / v192));
            if (v287 < 0)
            {
              goto LABEL_562;
            }

            goto LABEL_10;
          }

          if (*buf == 0x74656B6361507852 && *(buf + 8) == 0x5D355B746E756F43)
          {
LABEL_379:
            if (v17)
            {
              v188 = log10(v17) + 1.0;
              v189 = v188 - 4;
              if (v188 <= 4)
              {
                v189 = 0;
              }

              v190 = v189;
            }

            else
            {
              v190 = 0.0;
            }

            v193 = __exp10(v190);
            DWORD1(v289) = (v193 * (v17 / v193));
            if (v287 < 0)
            {
              goto LABEL_562;
            }

            goto LABEL_10;
          }

          if (*buf == 0x74656B6361507852 && *(buf + 8) == 0x5D365B746E756F43)
          {
LABEL_392:
            if (v17)
            {
              v194 = log10(v17) + 1.0;
              v195 = v194 - 4;
              if (v194 <= 4)
              {
                v195 = 0;
              }

              v196 = v195;
            }

            else
            {
              v196 = 0.0;
            }

            v236 = __exp10(v196);
            DWORD2(v289) = (v236 * (v17 / v236));
            if (v287 < 0)
            {
              goto LABEL_562;
            }

            goto LABEL_10;
          }

          if (v287 < 0)
          {
            if (*buf == 0x74656B6361507852 && *(buf + 8) == 0x5D375B746E756F43)
            {
LABEL_469:
              if (v17)
              {
                v233 = log10(v17) + 1.0;
                v234 = v233 - 4;
                if (v233 <= 4)
                {
                  v234 = 0;
                }

                v235 = v234;
              }

              else
              {
                v235 = 0.0;
              }

              v241 = __exp10(v235);
              HIDWORD(v289) = (v241 * (v17 / v241));
              if (v287 < 0)
              {
                goto LABEL_562;
              }

              goto LABEL_10;
            }

            v198 = buf;
            if (*buf == 0x74656B6361507852 && *(buf + 8) == 0x5D385B746E756F43)
            {
LABEL_492:
              if (v17)
              {
                v245 = log10(v17) + 1.0;
                v246 = v245 - 4;
                if (v245 <= 4)
                {
                  v246 = 0;
                }

                v247 = v246;
              }

              else
              {
                v247 = 0.0;
              }

              v256 = __exp10(v247);
              LODWORD(v290) = (v256 * (v17 / v256));
              if (v287 < 0)
              {
                goto LABEL_562;
              }

              goto LABEL_10;
            }

            if (v287 < 0)
            {
              goto LABEL_407;
            }

            if (v287 == 16)
            {
              goto LABEL_406;
            }
          }

          else if (v287 == 16)
          {
            goto LABEL_340;
          }
        }
      }

      else if (v287 == 16)
      {
        if (buf == 0x74656B6361507852 && *(&buf + 1) == 0x5D305B746E756F43)
        {
          goto LABEL_350;
        }

        if (buf == 0x74656B6361507852 && *(&buf + 1) == 0x5D315B746E756F43)
        {
          goto LABEL_354;
        }

        if (buf == 0x74656B6361507852 && *(&buf + 1) == 0x5D325B746E756F43)
        {
          goto LABEL_358;
        }

        if (buf == 0x74656B6361507852 && *(&buf + 1) == 0x5D335B746E756F43)
        {
          goto LABEL_365;
        }

        if (buf == 0x74656B6361507852 && *(&buf + 1) == 0x5D345B746E756F43)
        {
          goto LABEL_372;
        }

        if (buf == 0x74656B6361507852 && *(&buf + 1) == 0x5D355B746E756F43)
        {
          goto LABEL_379;
        }

        if (buf == 0x74656B6361507852 && *(&buf + 1) == 0x5D365B746E756F43)
        {
          goto LABEL_392;
        }

LABEL_340:
        if (buf == 0x74656B6361507852 && *(&buf + 1) == 0x5D375B746E756F43)
        {
          goto LABEL_469;
        }

        if (buf == 0x74656B6361507852 && *(&buf + 1) == 0x5D385B746E756F43)
        {
          goto LABEL_492;
        }

LABEL_406:
        v198 = &buf;
LABEL_407:
        v200 = *v198;
        v201 = v198[1];
        if (v200 == 0x74656B6361507852 && v201 == 0x5D395B746E756F43)
        {
          if (v17)
          {
            v252 = log10(v17) + 1.0;
            v253 = v252 - 4;
            if (v252 <= 4)
            {
              v253 = 0;
            }

            v254 = v253;
          }

          else
          {
            v254 = 0.0;
          }

          v261 = __exp10(v254);
          DWORD1(v290) = (v261 * (v17 / v261));
          if (v287 < 0)
          {
            goto LABEL_562;
          }

          goto LABEL_10;
        }
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RxPacketCount[10]"))
      {
        if (v17)
        {
          v203 = log10(v17) + 1.0;
          v204 = v203 - 4;
          if (v203 <= 4)
          {
            v204 = 0;
          }

          v205 = v204;
        }

        else
        {
          v205 = 0.0;
        }

        v212 = __exp10(v205);
        DWORD2(v290) = (v212 * (v17 / v212));
        if (v287 < 0)
        {
          goto LABEL_562;
        }

LABEL_10:
        if (count == ++v11)
        {
          goto LABEL_565;
        }
      }

      else
      {
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RxPacketCount[11]"))
        {
          if (v17)
          {
            v206 = log10(v17) + 1.0;
            v207 = v206 - 4;
            if (v206 <= 4)
            {
              v207 = 0;
            }

            v208 = v207;
          }

          else
          {
            v208 = 0.0;
          }

          v216 = __exp10(v208);
          HIDWORD(v290) = (v216 * (v17 / v216));
          if (v287 < 0)
          {
            goto LABEL_562;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RxPacketCount[12]"))
        {
          if (v17)
          {
            v209 = log10(v17) + 1.0;
            v210 = v209 - 4;
            if (v209 <= 4)
            {
              v210 = 0;
            }

            v211 = v210;
          }

          else
          {
            v211 = 0.0;
          }

          v220 = __exp10(v211);
          LODWORD(v291) = (v220 * (v17 / v220));
          if (v287 < 0)
          {
            goto LABEL_562;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RxPacketCount[13]"))
        {
          if (v17)
          {
            v213 = log10(v17) + 1.0;
            v214 = v213 - 4;
            if (v213 <= 4)
            {
              v214 = 0;
            }

            v215 = v214;
          }

          else
          {
            v215 = 0.0;
          }

          v224 = __exp10(v215);
          DWORD1(v291) = (v224 * (v17 / v224));
          if (v287 < 0)
          {
            goto LABEL_562;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RxPacketCount[14]"))
        {
          if (v17)
          {
            v217 = log10(v17) + 1.0;
            v218 = v217 - 4;
            if (v217 <= 4)
            {
              v218 = 0;
            }

            v219 = v218;
          }

          else
          {
            v219 = 0.0;
          }

          v228 = __exp10(v219);
          DWORD2(v291) = (v228 * (v17 / v228));
          if (v287 < 0)
          {
            goto LABEL_562;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RxPacketCount[15]"))
        {
          if (v17)
          {
            v221 = log10(v17) + 1.0;
            v222 = v221 - 4;
            if (v221 <= 4)
            {
              v222 = 0;
            }

            v223 = v222;
          }

          else
          {
            v223 = 0.0;
          }

          v232 = __exp10(v223);
          HIDWORD(v291) = (v232 * (v17 / v232));
          if (v287 < 0)
          {
            goto LABEL_562;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RxPacketCount[16]"))
        {
          if (v17)
          {
            v225 = log10(v17) + 1.0;
            v226 = v225 - 4;
            if (v225 <= 4)
            {
              v226 = 0;
            }

            v227 = v226;
          }

          else
          {
            v227 = 0.0;
          }

          v240 = __exp10(v227);
          LODWORD(v292) = (v240 * (v17 / v240));
          if (v287 < 0)
          {
            goto LABEL_562;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RxPacketCount[17]"))
        {
          if (v17)
          {
            v229 = log10(v17) + 1.0;
            v230 = v229 - 4;
            if (v229 <= 4)
            {
              v230 = 0;
            }

            v231 = v230;
          }

          else
          {
            v231 = 0.0;
          }

          v248 = __exp10(v231);
          DWORD1(v292) = (v248 * (v17 / v248));
          if (v287 < 0)
          {
            goto LABEL_562;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RxPacketCount[18]"))
        {
          if (v17)
          {
            v237 = log10(v17) + 1.0;
            v238 = v237 - 4;
            if (v237 <= 4)
            {
              v238 = 0;
            }

            v239 = v238;
          }

          else
          {
            v239 = 0.0;
          }

          v255 = __exp10(v239);
          DWORD2(v292) = (v255 * (v17 / v255));
          if (v287 < 0)
          {
            goto LABEL_562;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RxPacketCount[19]"))
        {
          if (v17)
          {
            v242 = log10(v17) + 1.0;
            v243 = v242 - 4;
            if (v242 <= 4)
            {
              v243 = 0;
            }

            v244 = v243;
          }

          else
          {
            v244 = 0.0;
          }

          v260 = __exp10(v244);
          HIDWORD(v292) = (v260 * (v17 / v260));
          if (v287 < 0)
          {
            goto LABEL_562;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RxPacketCount[20]"))
        {
          if (v17)
          {
            v249 = log10(v17) + 1.0;
            v250 = v249 - 4;
            if (v249 <= 4)
            {
              v250 = 0;
            }

            v251 = v250;
          }

          else
          {
            v251 = 0.0;
          }

          v265 = __exp10(v251);
          LODWORD(v293) = (v265 * (v17 / v265));
          if (v287 < 0)
          {
            goto LABEL_562;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RxPacketCount[21]"))
        {
          if (v17)
          {
            v257 = log10(v17) + 1.0;
            v258 = v257 - 4;
            if (v257 <= 4)
            {
              v258 = 0;
            }

            v259 = v258;
          }

          else
          {
            v259 = 0.0;
          }

          v269 = __exp10(v259);
          DWORD1(v293) = (v269 * (v17 / v269));
          if (v287 < 0)
          {
            goto LABEL_562;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RxPacketCount[22]"))
        {
          if (v17)
          {
            v262 = log10(v17) + 1.0;
            v263 = v262 - 4;
            if (v262 <= 4)
            {
              v263 = 0;
            }

            v264 = v263;
          }

          else
          {
            v264 = 0.0;
          }

          v273 = __exp10(v264);
          DWORD2(v293) = (v273 * (v17 / v273));
          if (v287 < 0)
          {
            goto LABEL_562;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RxPacketCount[23]"))
        {
          if (v17)
          {
            v266 = log10(v17) + 1.0;
            v267 = v266 - 4;
            if (v266 <= 4)
            {
              v267 = 0;
            }

            v268 = v267;
          }

          else
          {
            v268 = 0.0;
          }

          v277 = __exp10(v268);
          HIDWORD(v293) = (v277 * (v17 / v277));
          if (v287 < 0)
          {
            goto LABEL_562;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RxPacketCount[24]"))
        {
          if (v17)
          {
            v270 = log10(v17) + 1.0;
            v271 = v270 - 4;
            if (v270 <= 4)
            {
              v271 = 0;
            }

            v272 = v271;
          }

          else
          {
            v272 = 0.0;
          }

          v278 = __exp10(v272);
          LODWORD(v294) = (v278 * (v17 / v278));
          goto LABEL_561;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&buf, "RxPacketCount[25]"))
        {
          if (v17)
          {
            v274 = log10(v17) + 1.0;
            v275 = v274 - 4;
            if (v274 <= 4)
            {
              v275 = 0;
            }

            v276 = v275;
          }

          else
          {
            v276 = 0.0;
          }

          v279 = __exp10(v276);
          HIDWORD(v294) = (v279 * (v17 / v279));
LABEL_561:
          if ((v287 & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_562;
        }

        if ((v287 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_562:
        operator delete(buf);
        if (count == ++v11)
        {
          goto LABEL_565;
        }
      }
    }

    if (v287 != 16)
    {
      goto LABEL_145;
    }

    if (buf == 0x74656B6361507854 && *(&buf + 1) == 0x5D305B746E756F43)
    {
      goto LABEL_90;
    }

    if (buf == 0x74656B6361507854 && *(&buf + 1) == 0x5D315B746E756F43)
    {
      goto LABEL_94;
    }

    if (buf == 0x74656B6361507854 && *(&buf + 1) == 0x5D325B746E756F43)
    {
      goto LABEL_98;
    }

    if (buf == 0x74656B6361507854 && *(&buf + 1) == 0x5D335B746E756F43)
    {
      goto LABEL_104;
    }

    if (buf == 0x74656B6361507854 && *(&buf + 1) == 0x5D345B746E756F43)
    {
      goto LABEL_110;
    }

    if (buf == 0x74656B6361507854 && *(&buf + 1) == 0x5D355B746E756F43)
    {
      goto LABEL_116;
    }

    if (buf == 0x74656B6361507854 && *(&buf + 1) == 0x5D365B746E756F43)
    {
      goto LABEL_126;
    }

    goto LABEL_80;
  }

  v8 = 0;
LABEL_565:
  v9 = 0;
LABEL_566:
  for (i = 0; i != 104; i += 4)
  {
    v281 = [NSNumber numberWithUnsignedInt:*(&v288 + i), v284];
    [v5 addObject:v281];

    v282 = [NSNumber numberWithUnsignedInt:*(&v295 + i)];
    [v6 addObject:v282];
  }

  [v284 setObject:v5 forKey:@"rx_packet_count_histogram"];
  [v284 setObject:v6 forKey:@"tx_packet_count_histogram"];

  return v9;
}

uint64_t CAMetricsHandlers_handle_common_dimensions(NSMutableDictionary *a1)
{
  v1 = a1;
  if (qword_10052A92C)
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v2 = ;
  [(NSMutableDictionary *)v1 setObject:v2 forKey:@"is_role_detach_disable_detected"];

  if (dword_10052A944)
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v3 = ;
  [(NSMutableDictionary *)v1 setObject:v3 forKey:@"is_partition_id_changed"];

  if (dword_10052A94C)
  {
    [NSNumber numberWithBool:1];
  }

  else
  {
    [NSNumber numberWithBool:0];
  }
  v4 = ;
  [(NSMutableDictionary *)v1 setObject:v4 forKey:@"is_parent_changed"];

  return 0;
}

void sub_10003EA24(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t CAMetricsHandlers_handle_get_homeQuality(NSMutableDictionary *a1)
{
  v1 = a1;
  v2 = [NSNumber numberWithUnsignedInt:dword_10052A90C];
  [(NSMutableDictionary *)v1 setObject:v2 forKey:@"tx_success_perc"];

  v3 = [NSNumber numberWithUnsignedInt:dword_10052A914];
  [(NSMutableDictionary *)v1 setObject:v3 forKey:@"rx_success_perc"];

  v4 = [NSNumber numberWithUnsignedInt:dword_10052A910];
  [(NSMutableDictionary *)v1 setObject:v4 forKey:@"tx_app_success_perc"];

  v5 = [NSNumber numberWithUnsignedInt:(unk_10052A8F8 + dword_10052A8F4)];
  [(NSMutableDictionary *)v1 setObject:v5 forKey:@"tx_total"];

  v6 = [NSNumber numberWithUnsignedInt:dword_10052A8F4];
  [(NSMutableDictionary *)v1 setObject:v6 forKey:@"tx_success"];

  v7 = [NSNumber numberWithUnsignedInt:(unk_10052A908 + dword_10052A904)];
  [(NSMutableDictionary *)v1 setObject:v7 forKey:@"rx_total"];

  v8 = [NSNumber numberWithUnsignedInt:dword_10052A904];
  [(NSMutableDictionary *)v1 setObject:v8 forKey:@"rx_success"];

  v9 = [NSNumber numberWithUnsignedInt:dword_10052A920];
  [(NSMutableDictionary *)v1 setObject:v9 forKey:@"tx_delaymin"];

  v10 = [NSNumber numberWithUnsignedInt:dword_10052A924];
  [(NSMutableDictionary *)v1 setObject:v10 forKey:@"tx_delaymax"];

  v11 = [NSNumber numberWithUnsignedInt:dword_10052A928];
  [(NSMutableDictionary *)v1 setObject:v11 forKey:@"tx_delayavg"];

  v12 = [NSNumber numberWithUnsignedInt:dword_10052A8FC];
  [(NSMutableDictionary *)v1 setObject:v12 forKey:@"tx_app_pkt_success"];

  v13 = [NSNumber numberWithUnsignedInt:(dword_10052A8FC + unk_10052A900)];
  [(NSMutableDictionary *)v1 setObject:v13 forKey:@"tx_app_total"];

  v14 = [NSNumber numberWithUnsignedInt:dword_10052A96C];
  [(NSMutableDictionary *)v1 setObject:v14 forKey:@"num_apple_border_routers"];

  v15 = [NSNumber numberWithUnsignedInt:dword_10052A968];
  [(NSMutableDictionary *)v1 setObject:v15 forKey:@"num_third_party_border_routers"];

  v16 = [NSNumber numberWithUnsignedInt:dword_10052A974];
  [(NSMutableDictionary *)v1 setObject:v16 forKey:@"num_thread_networks"];

  v17 = [NSNumber numberWithUnsignedInt:dword_10052A954];
  [(NSMutableDictionary *)v1 setObject:v17 forKey:@"coex_tx_denied_requests"];

  v18 = [NSNumber numberWithUnsignedInt:dword_10052A950];
  [(NSMutableDictionary *)v1 setObject:v18 forKey:@"coex_tx_requests"];

  v19 = [NSNumber numberWithUnsignedInt:dword_10052A958];
  [(NSMutableDictionary *)v1 setObject:v19 forKey:@"coex_tx_denied_requests_percentage"];

  v20 = [NSNumber numberWithUnsignedInt:dword_10052A960];
  [(NSMutableDictionary *)v1 setObject:v20 forKey:@"coex_rx_denied_requests"];

  v21 = [NSNumber numberWithUnsignedInt:dword_10052A95C];
  [(NSMutableDictionary *)v1 setObject:v21 forKey:@"coex_rx_requests"];

  v22 = [NSNumber numberWithUnsignedInt:dword_10052A964];
  [(NSMutableDictionary *)v1 setObject:v22 forKey:@"coex_rx_denied_requests_percentage"];

  v23 = [NSNumber numberWithUnsignedInt:dword_10052A92C];
  [(NSMutableDictionary *)v1 setObject:v23 forKey:@"disabled_role_count"];

  v24 = [NSNumber numberWithUnsignedInt:dword_10052A930];
  [(NSMutableDictionary *)v1 setObject:v24 forKey:@"detached_role_count"];

  v25 = [NSNumber numberWithUnsignedInt:dword_10052A934];
  [(NSMutableDictionary *)v1 setObject:v25 forKey:@"child_role_count"];

  v26 = [NSNumber numberWithUnsignedInt:dword_10052A938];
  [(NSMutableDictionary *)v1 setObject:v26 forKey:@"router_role_count"];

  v27 = [NSNumber numberWithUnsignedInt:dword_10052A93C];
  [(NSMutableDictionary *)v1 setObject:v27 forKey:@"leader_role_count"];

  v28 = [NSNumber numberWithUnsignedInt:dword_10052A940];
  [(NSMutableDictionary *)v1 setObject:v28 forKey:@"attach_attempts"];

  v29 = [NSNumber numberWithUnsignedInt:dword_10052A948];
  [(NSMutableDictionary *)v1 setObject:v29 forKey:@"better_partition_attach_attempts"];

  v30 = [NSNumber numberWithUnsignedInt:dword_10052A944];
  [(NSMutableDictionary *)v1 setObject:v30 forKey:@"partition_id_changes_count"];

  v31 = [NSNumber numberWithUnsignedInt:dword_10052A94C];
  [(NSMutableDictionary *)v1 setObject:v31 forKey:@"parent_changes_count"];

  return 0;
}

void sub_10003F050(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t CAMetricsHandlers_handle_get_channelSelectionData(NSMutableDictionary *a1)
{
  v1 = a1;
  v2 = +[NSMutableArray array];
  for (i = 0; i != 60; i += 4)
  {
    v4 = *(&_MergedGlobals_2 + i + 136);
    v5 = v4;
    if (v4)
    {
      v6 = log10(v4) + 1.0;
      v7 = v6 - 4;
      if (v6 <= 4)
      {
        v7 = 0;
      }

      v8 = v7;
    }

    else
    {
      v8 = 0.0;
    }

    v9 = __exp10(v8);
    v10 = [NSNumber numberWithUnsignedInt:(v9 * (v5 / v9))];
    [v2 addObject:v10];
  }

  [(NSMutableDictionary *)v1 setObject:v2 forKey:@"channel_selections_histogram"];

  return 0;
}

void sub_10003F214(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t CAMetricsHandlers_handle_getprop_frameTxPowerHist(void *a1, void *a2)
{
  v3 = a1;
  v54 = a2;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v56 = v3;
  v57 = +[NSMutableArray array];
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_frameTxPowerHist();
    }

    v5 = 0;
    v6 = 1;
    goto LABEL_71;
  }

  count = xpc_array_get_count(v3);
  v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = count;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CAMetrics : TpcFrameTxPowerHist array with size %ld.", &buf, 0xCu);
  }

  if (count)
  {
    v8 = 0;
    v5 = 0;
    while (1)
    {
      v9 = xpc_array_get_dictionary(v3, v8);

      string = xpc_dictionary_get_string(v9, "key");
      v11 = strlen(string);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      *(&buf.__r_.__value_.__s + 23) = v11;
      if (v11)
      {
        memmove(&buf, string, v11);
      }

      buf.__r_.__value_.__s.__data_[v12] = 0;
      v13 = v9;
      uint64 = xpc_dictionary_get_uint64(v9, "value");
      v15 = std::string::find(&buf, 91, 0);
      v16 = std::string::find(&buf, 93, 0);
      v17 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      size = buf.__r_.__value_.__l.__size_;
      v18 = buf.__r_.__value_.__r.__words[0];
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = buf.__r_.__value_.__l.__size_;
      }

      v22 = (p_buf + v21);
      if (v21 >= 25)
      {
        v23 = p_buf;
        do
        {
          v24 = memchr(v23, 84, v21 - 24);
          if (!v24)
          {
            break;
          }

          if (v24->__r_.__value_.__r.__words[0] == 0x6D6172463A435054 && v24->__r_.__value_.__l.__size_ == 0x7265776F50785465 && v24->__r_.__value_.__r.__words[2] == 0x6172676F74736948 && v24[1].__r_.__value_.__s.__data_[0] == 109)
          {
            goto LABEL_37;
          }

          v23 = (&v24->__r_.__value_.__l.__data_ + 1);
          v21 = v22 - v23;
        }

        while (v22 - v23 > 24);
      }

      v24 = v22;
LABEL_37:
      if (v24 == v22 || v24 != p_buf || v15 == -1 || v16 == -1)
      {
        v5 = v13;
        if ((v17 & 0x80) != 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if ((v17 & 0x80000000) != 0)
        {
          if (size <= v15)
          {
LABEL_74:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v15 >= v17)
          {
            goto LABEL_74;
          }

          v18 = &buf;
          size = v17;
        }

        v28 = v15 + 1;
        if (size - (v15 + 1) >= v16 - 1)
        {
          v29 = v16 - 1;
        }

        else
        {
          v29 = size - (v15 + 1);
        }

        if (v29 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v29 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v29;
        if (v29)
        {
          memmove(&__dst, v18 + v28, v29);
        }

        v5 = v13;
        __dst.__r_.__value_.__s.__data_[v29] = 0;
        v30 = std::stoi(&__dst, 0, 10);
        if (v30 <= 0x10)
        {
          if (uint64)
          {
            v31 = log10(uint64) + 1.0;
            v32 = v31 - 4;
            if (v31 <= 4)
            {
              v32 = 0;
            }

            v33 = v32;
          }

          else
          {
            v33 = 0.0;
          }

          v34 = __exp10(v33);
          *(&v60 + v30) = (v34 * (uint64 / v34));
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
          if ((*(&buf.__r_.__value_.__s + 23) & 0x80) != 0)
          {
LABEL_67:
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        else if ((*(&buf.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          goto LABEL_67;
        }
      }

      ++v8;
      v3 = v56;
      if (v8 == count)
      {
        v35 = v60;
        goto LABEL_70;
      }
    }
  }

  v35 = 0;
  v5 = 0;
LABEL_70:
  v36 = [NSNumber numberWithUnsignedInt:v35];
  [v57 addObject:v36];

  v37 = [NSNumber numberWithUnsignedInt:DWORD1(v60)];
  [v57 addObject:v37];

  v38 = [NSNumber numberWithUnsignedInt:DWORD2(v60)];
  [v57 addObject:v38];

  v39 = [NSNumber numberWithUnsignedInt:HIDWORD(v60)];
  [v57 addObject:v39];

  v40 = [NSNumber numberWithUnsignedInt:v61];
  [v57 addObject:v40];

  v41 = [NSNumber numberWithUnsignedInt:DWORD1(v61)];
  [v57 addObject:v41];

  v42 = [NSNumber numberWithUnsignedInt:DWORD2(v61)];
  [v57 addObject:v42];

  v43 = [NSNumber numberWithUnsignedInt:HIDWORD(v61)];
  [v57 addObject:v43];

  v44 = [NSNumber numberWithUnsignedInt:v62];
  [v57 addObject:v44];

  v45 = [NSNumber numberWithUnsignedInt:DWORD1(v62)];
  [v57 addObject:v45];

  v46 = [NSNumber numberWithUnsignedInt:DWORD2(v62)];
  [v57 addObject:v46];

  v47 = [NSNumber numberWithUnsignedInt:HIDWORD(v62)];
  [v57 addObject:v47];

  v48 = [NSNumber numberWithUnsignedInt:v63];
  [v57 addObject:v48];

  v49 = [NSNumber numberWithUnsignedInt:DWORD1(v63)];
  [v57 addObject:v49];

  v50 = [NSNumber numberWithUnsignedInt:DWORD2(v63)];
  [v57 addObject:v50];

  v51 = [NSNumber numberWithUnsignedInt:HIDWORD(v63)];
  [v57 addObject:v51];

  v52 = [NSNumber numberWithUnsignedInt:v64];
  [v57 addObject:v52];

  [v54 setObject:v57 forKey:@"frame_txpower_histogram"];
  v6 = 0;
LABEL_71:

  return v6;
}

uint64_t CAMetricsHandlers_handle_getprop_neighborTxPowerHist(void *a1, void *a2)
{
  v3 = a1;
  v54 = a2;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v56 = v3;
  v57 = +[NSMutableArray array];
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_neighborTxPowerHist();
    }

    v5 = 0;
    v6 = 1;
    goto LABEL_71;
  }

  count = xpc_array_get_count(v3);
  v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = count;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CAMetrics : TpcNeighborTxPowerHist array with size %ld.", &buf, 0xCu);
  }

  if (count)
  {
    v8 = 0;
    v5 = 0;
    while (1)
    {
      v9 = xpc_array_get_dictionary(v3, v8);

      string = xpc_dictionary_get_string(v9, "key");
      v11 = strlen(string);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      *(&buf.__r_.__value_.__s + 23) = v11;
      if (v11)
      {
        memmove(&buf, string, v11);
      }

      buf.__r_.__value_.__s.__data_[v12] = 0;
      v13 = v9;
      uint64 = xpc_dictionary_get_uint64(v9, "value");
      v15 = std::string::find(&buf, 91, 0);
      v16 = std::string::find(&buf, 93, 0);
      v17 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      size = buf.__r_.__value_.__l.__size_;
      v18 = buf.__r_.__value_.__r.__words[0];
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = buf.__r_.__value_.__l.__size_;
      }

      v22 = (p_buf + v21);
      if (v21 >= 28)
      {
        v23 = p_buf;
        do
        {
          v24 = memchr(v23, 84, v21 - 27);
          if (!v24)
          {
            break;
          }

          if (v24->__r_.__value_.__r.__words[0] == 0x6769654E3A435054 && v24->__r_.__value_.__l.__size_ == 0x6F507854726F6268 && v24->__r_.__value_.__r.__words[2] == 0x6F74736948726577 && LODWORD(v24[1].__r_.__value_.__l.__data_) == 1835102823)
          {
            goto LABEL_37;
          }

          v23 = (&v24->__r_.__value_.__l.__data_ + 1);
          v21 = v22 - v23;
        }

        while (v22 - v23 > 27);
      }

      v24 = v22;
LABEL_37:
      if (v24 == v22 || v24 != p_buf || v15 == -1 || v16 == -1)
      {
        v5 = v13;
        if ((v17 & 0x80) != 0)
        {
          goto LABEL_67;
        }
      }

      else
      {
        if ((v17 & 0x80000000) != 0)
        {
          if (size <= v15)
          {
LABEL_74:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v15 >= v17)
          {
            goto LABEL_74;
          }

          v18 = &buf;
          size = v17;
        }

        v28 = v15 + 1;
        if (size - (v15 + 1) >= v16 - 1)
        {
          v29 = v16 - 1;
        }

        else
        {
          v29 = size - (v15 + 1);
        }

        if (v29 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v29 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v29;
        if (v29)
        {
          memmove(&__dst, v18 + v28, v29);
        }

        v5 = v13;
        __dst.__r_.__value_.__s.__data_[v29] = 0;
        v30 = std::stoi(&__dst, 0, 10);
        if (v30 <= 0x10)
        {
          if (uint64)
          {
            v31 = log10(uint64) + 1.0;
            v32 = v31 - 4;
            if (v31 <= 4)
            {
              v32 = 0;
            }

            v33 = v32;
          }

          else
          {
            v33 = 0.0;
          }

          v34 = __exp10(v33);
          *(&v60 + v30) = (v34 * (uint64 / v34));
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
          if ((*(&buf.__r_.__value_.__s + 23) & 0x80) != 0)
          {
LABEL_67:
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        else if ((*(&buf.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          goto LABEL_67;
        }
      }

      ++v8;
      v3 = v56;
      if (v8 == count)
      {
        v35 = v60;
        goto LABEL_70;
      }
    }
  }

  v35 = 0;
  v5 = 0;
LABEL_70:
  v36 = [NSNumber numberWithUnsignedInt:v35];
  [v57 addObject:v36];

  v37 = [NSNumber numberWithUnsignedInt:DWORD1(v60)];
  [v57 addObject:v37];

  v38 = [NSNumber numberWithUnsignedInt:DWORD2(v60)];
  [v57 addObject:v38];

  v39 = [NSNumber numberWithUnsignedInt:HIDWORD(v60)];
  [v57 addObject:v39];

  v40 = [NSNumber numberWithUnsignedInt:v61];
  [v57 addObject:v40];

  v41 = [NSNumber numberWithUnsignedInt:DWORD1(v61)];
  [v57 addObject:v41];

  v42 = [NSNumber numberWithUnsignedInt:DWORD2(v61)];
  [v57 addObject:v42];

  v43 = [NSNumber numberWithUnsignedInt:HIDWORD(v61)];
  [v57 addObject:v43];

  v44 = [NSNumber numberWithUnsignedInt:v62];
  [v57 addObject:v44];

  v45 = [NSNumber numberWithUnsignedInt:DWORD1(v62)];
  [v57 addObject:v45];

  v46 = [NSNumber numberWithUnsignedInt:DWORD2(v62)];
  [v57 addObject:v46];

  v47 = [NSNumber numberWithUnsignedInt:HIDWORD(v62)];
  [v57 addObject:v47];

  v48 = [NSNumber numberWithUnsignedInt:v63];
  [v57 addObject:v48];

  v49 = [NSNumber numberWithUnsignedInt:DWORD1(v63)];
  [v57 addObject:v49];

  v50 = [NSNumber numberWithUnsignedInt:DWORD2(v63)];
  [v57 addObject:v50];

  v51 = [NSNumber numberWithUnsignedInt:HIDWORD(v63)];
  [v57 addObject:v51];

  v52 = [NSNumber numberWithUnsignedInt:v64];
  [v57 addObject:v52];

  [v54 setObject:v57 forKey:@"nbr_txpower_histogram"];
  v6 = 0;
LABEL_71:

  return v6;
}

uint64_t CAMetricsHandlers_handle_getprop_neighborEnergySavingsFactorHist(void *a1, void *a2)
{
  v3 = a1;
  v57 = a2;
  v65 = 0u;
  memset(v66, 0, sizeof(v66));
  v63 = 0u;
  v64 = 0u;
  v59 = v3;
  v60 = +[NSMutableArray array];
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_neighborEnergySavingsFactorHist();
    }

    v5 = 0;
    v6 = 1;
    goto LABEL_74;
  }

  count = xpc_array_get_count(v3);
  v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 134217984;
    *(buf.__r_.__value_.__r.__words + 4) = count;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CAMetrics : TpcNeighborEnergySavingsFactorHist array with size %ld.", &buf, 0xCu);
  }

  if (count)
  {
    v8 = 0;
    v5 = 0;
    while (1)
    {
      v9 = xpc_array_get_dictionary(v3, v8);

      string = xpc_dictionary_get_string(v9, "key");
      v11 = strlen(string);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      *(&buf.__r_.__value_.__s + 23) = v11;
      if (v11)
      {
        memmove(&buf, string, v11);
      }

      buf.__r_.__value_.__s.__data_[v12] = 0;
      v13 = v9;
      uint64 = xpc_dictionary_get_uint64(v9, "value");
      v15 = std::string::find(&buf, 91, 0);
      v16 = std::string::find(&buf, 93, 0);
      v17 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      size = buf.__r_.__value_.__l.__size_;
      v18 = buf.__r_.__value_.__r.__words[0];
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_buf = &buf;
      }

      else
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v21 = buf.__r_.__value_.__l.__size_;
      }

      v22 = (p_buf + v21);
      if (v21 >= 40)
      {
        v23 = p_buf;
        do
        {
          v24 = memchr(v23, 84, v21 - 39);
          if (!v24)
          {
            break;
          }

          if (v24->__r_.__value_.__r.__words[0] == 0x6769654E3A435054 && v24->__r_.__value_.__l.__size_ == 0x72656E45726F6268 && v24->__r_.__value_.__r.__words[2] == 0x676E697661537967 && v24[1].__r_.__value_.__r.__words[0] == 0x48726F7463614673 && v24[1].__r_.__value_.__l.__size_ == 0x6D6172676F747369)
          {
            goto LABEL_40;
          }

          v23 = (&v24->__r_.__value_.__l.__data_ + 1);
          v21 = v22 - v23;
        }

        while (v22 - v23 > 39);
      }

      v24 = v22;
LABEL_40:
      if (v24 == v22 || v24 != p_buf || v15 == -1 || v16 == -1)
      {
        v5 = v13;
        if ((v17 & 0x80) != 0)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if ((v17 & 0x80000000) != 0)
        {
          if (size <= v15)
          {
LABEL_77:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v15 >= v17)
          {
            goto LABEL_77;
          }

          v18 = &buf;
          size = v17;
        }

        v29 = v15 + 1;
        if (size - (v15 + 1) >= v16 - 1)
        {
          v30 = v16 - 1;
        }

        else
        {
          v30 = size - (v15 + 1);
        }

        if (v30 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v30 >= 0x17)
        {
          operator new();
        }

        *(&__dst.__r_.__value_.__s + 23) = v30;
        if (v30)
        {
          memmove(&__dst, v18 + v29, v30);
        }

        v5 = v13;
        __dst.__r_.__value_.__s.__data_[v30] = 0;
        v31 = std::stoi(&__dst, 0, 10);
        if (v31 <= 0x12)
        {
          if (uint64)
          {
            v32 = log10(uint64) + 1.0;
            v33 = v32 - 4;
            if (v32 <= 4)
            {
              v33 = 0;
            }

            v34 = v33;
          }

          else
          {
            v34 = 0.0;
          }

          v35 = __exp10(v34);
          *(&v63 + v31) = (v35 * (uint64 / v35));
        }

        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
          if ((*(&buf.__r_.__value_.__s + 23) & 0x80) != 0)
          {
LABEL_70:
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        else if ((*(&buf.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          goto LABEL_70;
        }
      }

      ++v8;
      v3 = v59;
      if (v8 == count)
      {
        v36 = v63;
        goto LABEL_73;
      }
    }
  }

  v36 = 0;
  v5 = 0;
LABEL_73:
  v37 = [NSNumber numberWithUnsignedInt:v36];
  [v60 addObject:v37];

  v38 = [NSNumber numberWithUnsignedInt:DWORD1(v63)];
  [v60 addObject:v38];

  v39 = [NSNumber numberWithUnsignedInt:DWORD2(v63)];
  [v60 addObject:v39];

  v40 = [NSNumber numberWithUnsignedInt:HIDWORD(v63)];
  [v60 addObject:v40];

  v41 = [NSNumber numberWithUnsignedInt:v64];
  [v60 addObject:v41];

  v42 = [NSNumber numberWithUnsignedInt:DWORD1(v64)];
  [v60 addObject:v42];

  v43 = [NSNumber numberWithUnsignedInt:DWORD2(v64)];
  [v60 addObject:v43];

  v44 = [NSNumber numberWithUnsignedInt:HIDWORD(v64)];
  [v60 addObject:v44];

  v45 = [NSNumber numberWithUnsignedInt:v65];
  [v60 addObject:v45];

  v46 = [NSNumber numberWithUnsignedInt:DWORD1(v65)];
  [v60 addObject:v46];

  v47 = [NSNumber numberWithUnsignedInt:DWORD2(v65)];
  [v60 addObject:v47];

  v48 = [NSNumber numberWithUnsignedInt:HIDWORD(v65)];
  [v60 addObject:v48];

  v49 = [NSNumber numberWithUnsignedInt:v66[0]];
  [v60 addObject:v49];

  v50 = [NSNumber numberWithUnsignedInt:v66[1]];
  [v60 addObject:v50];

  v51 = [NSNumber numberWithUnsignedInt:v66[2]];
  [v60 addObject:v51];

  v52 = [NSNumber numberWithUnsignedInt:v66[3]];
  [v60 addObject:v52];

  v53 = [NSNumber numberWithUnsignedInt:v66[4]];
  [v60 addObject:v53];

  v54 = [NSNumber numberWithUnsignedInt:v66[5]];
  [v60 addObject:v54];

  v55 = [NSNumber numberWithUnsignedInt:v66[6]];
  [v60 addObject:v55];

  [v57 setObject:v60 forKey:@"nbr_battery_extension_factor_histogram"];
  v6 = 0;
LABEL_74:

  return v6;
}

double CAMetricsHandlers_handle_reset_channelSelectionData(void)
{
  result = 0.0;
  unk_10052A9A4 = 0u;
  xmmword_10052A988 = 0u;
  unk_10052A998 = 0u;
  xmmword_10052A978 = 0u;
  return result;
}

size_t CAMetricsHandlers_handle_getprop_radiocounters(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_radiocounters();
    }

    count = 1;
LABEL_27:

    goto LABEL_28;
  }

  count = xpc_array_get_count(v3);
  v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(__p) = 134217984;
    *(&__p + 4) = count;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CAMetrics : Radio Counters array with size %ld.", &__p, 0xCu);
  }

  if (count)
  {
    v8 = 0;
    v5 = 0;
    do
    {
      v9 = xpc_array_get_dictionary(v3, v8);

      v5 = v9;
      string = xpc_dictionary_get_string(v9, "key");
      v11 = strlen(string);
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v24) = v11;
      if (v11)
      {
        memmove(&__p, string, v11);
      }

      *(&__p + v12) = 0;
      uint64 = xpc_dictionary_get_uint64(v9, "value");
      v14 = uint64;
      if (uint64)
      {
        v15 = log10(uint64) + 1.0;
        v16 = v15 - 4;
        if (v15 <= 4)
        {
          v16 = 0;
        }

        v17 = v16;
      }

      else
      {
        v17 = 0.0;
      }

      v18 = __exp10(v17);
      v19 = [NSNumber numberWithUnsignedInt:(v18 * (v14 / v18))];
      if (v24 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v21 = [NSString stringWithUTF8String:p_p, __p, v24];
      [v4 setObject:v19 forKey:v21];

      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p);
      }

      ++v8;
    }

    while (count != v8);
    count = 0;
    goto LABEL_27;
  }

LABEL_28:

  return count;
}

size_t CAMetricsHandlers_handle_getprop_radiostat(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (xpc_get_type(v3) != &_xpc_type_array)
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_radiostat();
    }

    count = 1;
LABEL_25:

    goto LABEL_26;
  }

  count = xpc_array_get_count(v3);
  if (count)
  {
    v7 = 0;
    for (i = 0; i != count; ++i)
    {
      v5 = xpc_array_get_dictionary(v3, i);

      string = xpc_dictionary_get_string(v5, "key");
      v10 = strlen(string);
      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        operator new();
      }

      v23 = v10;
      if (v10)
      {
        memmove(&__dst, string, v10);
      }

      *(&__dst + v11) = 0;
      uint64 = xpc_dictionary_get_uint64(v5, "value");
      v13 = uint64;
      if (uint64)
      {
        v14 = log10(uint64) + 1.0;
        v15 = v14 - 4;
        if (v14 <= 4)
        {
          v15 = 0;
        }

        v16 = v15;
      }

      else
      {
        v16 = 0.0;
      }

      v17 = __exp10(v16);
      v18 = [NSNumber numberWithUnsignedInt:(v17 * (v13 / v17))];
      if (v23 >= 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst;
      }

      v20 = [NSString stringWithUTF8String:p_dst];
      [v4 setObject:v18 forKey:v20];

      if (v23 < 0)
      {
        operator delete(__dst);
      }

      v7 = v5;
    }

    count = 0;
    goto LABEL_25;
  }

LABEL_26:

  return count;
}

void sub_100041118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t CAMetricsHandlers_handle_getprop_radiostatHist(void *a1, void *a2)
{
  v3 = a1;
  v135 = a2;
  xarray = v3;
  type = xpc_get_type(v3);
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v156 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v150 = 0u;
  v151 = 0u;
  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  v140 = +[NSMutableArray array];
  v138 = +[NSMutableArray array];
  v137 = +[NSMutableArray array];
  if (type != &_xpc_type_array)
  {
    v5 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_radiostat();
    }

    v6 = 0;
    v7 = 1;
    goto LABEL_163;
  }

  count = xpc_array_get_count(xarray);
  if (count)
  {
    v9 = 0;
    v6 = 0;
    v136 = count;
    while (1)
    {
      v10 = xpc_array_get_dictionary(xarray, v9);

      v143 = v10;
      string = xpc_dictionary_get_string(v10, "key");
      v12 = strlen(string);
      if (v12 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v13 = v12;
      if (v12 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v12;
      if (v12)
      {
        memmove(&__dst, string, v12);
      }

      __dst.__r_.__value_.__s.__data_[v13] = 0;
      uint64 = xpc_dictionary_get_uint64(v10, "value");
      v15 = std::string::find(&__dst, 91, 0);
      v16 = std::string::find(&__dst, 93, 0);
      v17 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      size = __dst.__r_.__value_.__l.__size_;
      v141 = uint64;
      v142 = __dst.__r_.__value_.__r.__words[0];
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = SHIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v20 = __dst.__r_.__value_.__l.__size_;
      }

      v21 = (p_dst + v20);
      v22 = v20;
      v23 = p_dst;
      if (v20 >= 27)
      {
        do
        {
          v26 = memchr(v23, 116, v22 - 26);
          if (!v26)
          {
            break;
          }

          if (v26->__r_.__value_.__r.__words[0] == 0x69747269615F7874 && v26->__r_.__value_.__l.__size_ == 0x696C6974755F656DLL && v26->__r_.__value_.__r.__words[2] == 0x685F6E6F6974617ALL && *(&v26->__r_.__value_.__r.__words[2] + 3) == 0x747369685F6E6F69)
          {
            goto LABEL_36;
          }

          v23 = (&v26->__r_.__value_.__l.__data_ + 1);
          v22 = v21 - v23;
        }

        while (v21 - v23 > 26);
        v26 = (p_dst + v20);
LABEL_36:
        v25 = v26 != v21 && v26 == p_dst;
        v31 = v20;
        v32 = p_dst;
        do
        {
          v33 = memchr(v32, 114, v31 - 26);
          if (!v33)
          {
            break;
          }

          if (v33->__r_.__value_.__r.__words[0] == 0x69747269615F7872 && v33->__r_.__value_.__l.__size_ == 0x696C6974755F656DLL && v33->__r_.__value_.__r.__words[2] == 0x685F6E6F6974617ALL && *(&v33->__r_.__value_.__r.__words[2] + 3) == 0x747369685F6E6F69)
          {
            goto LABEL_58;
          }

          v32 = (&v33->__r_.__value_.__l.__data_ + 1);
          v31 = v21 - v32;
        }

        while (v21 - v32 > 26);
        v33 = (p_dst + v20);
LABEL_58:
        v24 = v33 != v21 && v33 == p_dst;
        if (v20 >= 30)
        {
          v38 = p_dst;
          do
          {
            v39 = memchr(v38, 116, v20 - 29);
            if (!v39)
            {
              break;
            }

            if (v39->__r_.__value_.__r.__words[0] == 0x69615F6C61746F74 && v39->__r_.__value_.__l.__size_ == 0x74755F656D697472 && v39->__r_.__value_.__r.__words[2] == 0x6F6974617A696C69 && *(&v39->__r_.__value_.__r.__words[2] + 6) == 0x747369685F6E6F69)
            {
              goto LABEL_79;
            }

            v38 = (&v39->__r_.__value_.__l.__data_ + 1);
            v20 = v21 - v38;
          }

          while (v21 - v38 > 29);
        }
      }

      else
      {
        v24 = 0;
        v25 = 0;
      }

      v39 = v21;
LABEL_79:
      v44 = v39 != v21 && v39 == p_dst;
      if (v25 && v15 != -1 && v16 != -1)
      {
        v45 = v142;
        if ((v17 & 0x80000000) != 0)
        {
          if (size <= v15)
          {
LABEL_165:
            std::string::__throw_out_of_range[abi:ne200100]();
          }
        }

        else
        {
          if (v15 >= v17)
          {
            goto LABEL_165;
          }

          v45 = &__dst;
          size = v17;
        }

        v49 = v15 + 1;
        if (size - (v15 + 1) >= v16 - 1)
        {
          v50 = v16 - 1;
        }

        else
        {
          v50 = size - (v15 + 1);
        }

        if (v50 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v6 = v143;
        v48 = v136;
        if (v50 >= 0x17)
        {
          operator new();
        }

        *(&__str.__r_.__value_.__s + 23) = v50;
        if (v50)
        {
          memmove(&__str, v45 + v49, v50);
        }

        __str.__r_.__value_.__s.__data_[v50] = 0;
        v51 = std::stoi(&__str, 0, 10);
        if ((v51 & 0xFCu) > 0x13)
        {
          goto LABEL_158;
        }

        if (v141)
        {
          v52 = log10(v141) + 1.0;
          v53 = v52 - 4;
          if (v52 <= 4)
          {
            v53 = 0;
          }

          v54 = v53;
        }

        else
        {
          v54 = 0.0;
        }

        v61 = __exp10(v54);
        v62 = (v61 * (v141 / v61));
        v63 = v51;
        v64 = &v156;
        goto LABEL_157;
      }

      v46 = v15 != -1 && v24;
      v47 = v142;
      if (v46 && v16 != -1)
      {
        break;
      }

      if (v15 == -1)
      {
        v44 = 0;
      }

      v6 = v143;
      v48 = v136;
      if (!v44 || v16 == -1)
      {
        goto LABEL_7;
      }

      if ((v17 & 0x80000000) != 0)
      {
        if (size <= v15)
        {
LABEL_169:
          std::string::__throw_out_of_range[abi:ne200100]();
        }
      }

      else
      {
        if (v15 >= v17)
        {
          goto LABEL_169;
        }

        v47 = &__dst;
        size = v17;
      }

      v65 = v15 + 1;
      if (size - (v15 + 1) >= v16 - 1)
      {
        v66 = v16 - 1;
      }

      else
      {
        v66 = size - (v15 + 1);
      }

      if (v66 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v66 >= 0x17)
      {
        operator new();
      }

      *(&__str.__r_.__value_.__s + 23) = v66;
      if (v66)
      {
        memmove(&__str, v47 + v65, v66);
      }

      __str.__r_.__value_.__s.__data_[v66] = 0;
      v67 = std::stoi(&__str, 0, 10);
      if ((v67 & 0xFCu) <= 0x13)
      {
        if (v141)
        {
          v68 = log10(v141) + 1.0;
          v69 = v68 - 4;
          if (v68 <= 4)
          {
            v69 = 0;
          }

          v70 = v69;
        }

        else
        {
          v70 = 0.0;
        }

        v72 = __exp10(v70);
        v62 = (v72 * (v141 / v72));
        v63 = v67;
        v64 = &v146;
LABEL_157:
        *(v64 + v63) = v62;
      }

LABEL_158:
      if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__str.__r_.__value_.__l.__data_);
      }

LABEL_7:
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (++v9 == v48)
        {
LABEL_160:
          v73 = v156;
          goto LABEL_162;
        }
      }

      else if (++v9 == v48)
      {
        goto LABEL_160;
      }
    }

    v6 = v143;
    v48 = v136;
    if ((v17 & 0x80000000) != 0)
    {
      if (size <= v15)
      {
LABEL_167:
        std::string::__throw_out_of_range[abi:ne200100]();
      }
    }

    else
    {
      if (v15 >= v17)
      {
        goto LABEL_167;
      }

      v47 = &__dst;
      size = v17;
    }

    v55 = v15 + 1;
    if (size - (v15 + 1) >= v16 - 1)
    {
      v56 = v16 - 1;
    }

    else
    {
      v56 = size - (v15 + 1);
    }

    if (v56 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v56 >= 0x17)
    {
      operator new();
    }

    *(&__str.__r_.__value_.__s + 23) = v56;
    if (v56)
    {
      memmove(&__str, v47 + v55, v56);
    }

    __str.__r_.__value_.__s.__data_[v56] = 0;
    v57 = std::stoi(&__str, 0, 10);
    if ((v57 & 0xFCu) > 0x13)
    {
      goto LABEL_158;
    }

    if (v141)
    {
      v58 = log10(v141) + 1.0;
      v59 = v58 - 4;
      if (v58 <= 4)
      {
        v59 = 0;
      }

      v60 = v59;
    }

    else
    {
      v60 = 0.0;
    }

    v71 = __exp10(v60);
    v62 = (v71 * (v141 / v71));
    v63 = v57;
    v64 = &v151;
    goto LABEL_157;
  }

  v73 = 0;
  v6 = 0;
LABEL_162:
  v74 = [NSNumber numberWithUnsignedInt:v73];
  [v140 addObject:v74];

  v75 = [NSNumber numberWithUnsignedInt:DWORD1(v156)];
  [v140 addObject:v75];

  v76 = [NSNumber numberWithUnsignedInt:DWORD2(v156)];
  [v140 addObject:v76];

  v77 = [NSNumber numberWithUnsignedInt:HIDWORD(v156)];
  [v140 addObject:v77];

  v78 = [NSNumber numberWithUnsignedInt:v157];
  [v140 addObject:v78];

  v79 = [NSNumber numberWithUnsignedInt:DWORD1(v157)];
  [v140 addObject:v79];

  v80 = [NSNumber numberWithUnsignedInt:DWORD2(v157)];
  [v140 addObject:v80];

  v81 = [NSNumber numberWithUnsignedInt:HIDWORD(v157)];
  [v140 addObject:v81];

  v82 = [NSNumber numberWithUnsignedInt:v158];
  [v140 addObject:v82];

  v83 = [NSNumber numberWithUnsignedInt:DWORD1(v158)];
  [v140 addObject:v83];

  v84 = [NSNumber numberWithUnsignedInt:DWORD2(v158)];
  [v140 addObject:v84];

  v85 = [NSNumber numberWithUnsignedInt:HIDWORD(v158)];
  [v140 addObject:v85];

  v86 = [NSNumber numberWithUnsignedInt:v159];
  [v140 addObject:v86];

  v87 = [NSNumber numberWithUnsignedInt:DWORD1(v159)];
  [v140 addObject:v87];

  v88 = [NSNumber numberWithUnsignedInt:DWORD2(v159)];
  [v140 addObject:v88];

  v89 = [NSNumber numberWithUnsignedInt:HIDWORD(v159)];
  [v140 addObject:v89];

  v90 = [NSNumber numberWithUnsignedInt:v160];
  [v140 addObject:v90];

  v91 = [NSNumber numberWithUnsignedInt:DWORD1(v160)];
  [v140 addObject:v91];

  v92 = [NSNumber numberWithUnsignedInt:DWORD2(v160)];
  [v140 addObject:v92];

  v93 = [NSNumber numberWithUnsignedInt:HIDWORD(v160)];
  [v140 addObject:v93];

  [v135 setObject:v140 forKey:@"tx_airtime_utilization_hist"];
  v94 = [NSNumber numberWithUnsignedInt:v151];
  [v138 addObject:v94];

  v95 = [NSNumber numberWithUnsignedInt:DWORD1(v151)];
  [v138 addObject:v95];

  v96 = [NSNumber numberWithUnsignedInt:DWORD2(v151)];
  [v138 addObject:v96];

  v97 = [NSNumber numberWithUnsignedInt:HIDWORD(v151)];
  [v138 addObject:v97];

  v98 = [NSNumber numberWithUnsignedInt:v152];
  [v138 addObject:v98];

  v99 = [NSNumber numberWithUnsignedInt:DWORD1(v152)];
  [v138 addObject:v99];

  v100 = [NSNumber numberWithUnsignedInt:DWORD2(v152)];
  [v138 addObject:v100];

  v101 = [NSNumber numberWithUnsignedInt:HIDWORD(v152)];
  [v138 addObject:v101];

  v102 = [NSNumber numberWithUnsignedInt:v153];
  [v138 addObject:v102];

  v103 = [NSNumber numberWithUnsignedInt:DWORD1(v153)];
  [v138 addObject:v103];

  v104 = [NSNumber numberWithUnsignedInt:DWORD2(v153)];
  [v138 addObject:v104];

  v105 = [NSNumber numberWithUnsignedInt:HIDWORD(v153)];
  [v138 addObject:v105];

  v106 = [NSNumber numberWithUnsignedInt:v154];
  [v138 addObject:v106];

  v107 = [NSNumber numberWithUnsignedInt:DWORD1(v154)];
  [v138 addObject:v107];

  v108 = [NSNumber numberWithUnsignedInt:DWORD2(v154)];
  [v138 addObject:v108];

  v109 = [NSNumber numberWithUnsignedInt:HIDWORD(v154)];
  [v138 addObject:v109];

  v110 = [NSNumber numberWithUnsignedInt:v155];
  [v138 addObject:v110];

  v111 = [NSNumber numberWithUnsignedInt:DWORD1(v155)];
  [v138 addObject:v111];

  v112 = [NSNumber numberWithUnsignedInt:DWORD2(v155)];
  [v138 addObject:v112];

  v113 = [NSNumber numberWithUnsignedInt:HIDWORD(v155)];
  [v138 addObject:v113];

  [v135 setObject:v138 forKey:@"rx_airtime_utilization_hist"];
  v114 = [NSNumber numberWithUnsignedInt:v146];
  [v137 addObject:v114];

  v115 = [NSNumber numberWithUnsignedInt:DWORD1(v146)];
  [v137 addObject:v115];

  v116 = [NSNumber numberWithUnsignedInt:DWORD2(v146)];
  [v137 addObject:v116];

  v117 = [NSNumber numberWithUnsignedInt:HIDWORD(v146)];
  [v137 addObject:v117];

  v118 = [NSNumber numberWithUnsignedInt:v147];
  [v137 addObject:v118];

  v119 = [NSNumber numberWithUnsignedInt:DWORD1(v147)];
  [v137 addObject:v119];

  v120 = [NSNumber numberWithUnsignedInt:DWORD2(v147)];
  [v137 addObject:v120];

  v121 = [NSNumber numberWithUnsignedInt:HIDWORD(v147)];
  [v137 addObject:v121];

  v122 = [NSNumber numberWithUnsignedInt:v148];
  [v137 addObject:v122];

  v123 = [NSNumber numberWithUnsignedInt:DWORD1(v148)];
  [v137 addObject:v123];

  v124 = [NSNumber numberWithUnsignedInt:DWORD2(v148)];
  [v137 addObject:v124];

  v125 = [NSNumber numberWithUnsignedInt:HIDWORD(v148)];
  [v137 addObject:v125];

  v126 = [NSNumber numberWithUnsignedInt:v149];
  [v137 addObject:v126];

  v127 = [NSNumber numberWithUnsignedInt:DWORD1(v149)];
  [v137 addObject:v127];

  v128 = [NSNumber numberWithUnsignedInt:DWORD2(v149)];
  [v137 addObject:v128];

  v129 = [NSNumber numberWithUnsignedInt:HIDWORD(v149)];
  [v137 addObject:v129];

  v130 = [NSNumber numberWithUnsignedInt:v150];
  [v137 addObject:v130];

  v131 = [NSNumber numberWithUnsignedInt:DWORD1(v150)];
  [v137 addObject:v131];

  v132 = [NSNumber numberWithUnsignedInt:DWORD2(v150)];
  [v137 addObject:v132];

  v133 = [NSNumber numberWithUnsignedInt:HIDWORD(v150)];
  [v137 addObject:v133];

  [v135 setObject:v137 forKey:@"total_airtime_utilization_hist"];
  v7 = 0;
LABEL_163:

  return v7;
}

void sub_100042340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

size_t CAMetricsHandlers_handle_getprop_generic_function(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v25 = a3;
  if (xpc_get_type(v5) != &_xpc_type_array)
  {
    v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_generic_function();
    }

    count = 1;
LABEL_27:

    goto LABEL_28;
  }

  count = xpc_array_get_count(v5);
  v9 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = [v25 UTF8String];
    v27 = 2048;
    v28 = count;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "CAMetrics : %s array with size %ld.", buf, 0x16u);
  }

  if (count)
  {
    v10 = 0;
    v7 = 0;
    do
    {
      v11 = xpc_array_get_dictionary(v5, v10);

      v7 = v11;
      string = xpc_dictionary_get_string(v11, "key");
      v13 = strlen(string);
      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        operator new();
      }

      v29 = v13;
      if (v13)
      {
        memmove(buf, string, v13);
      }

      buf[v14] = 0;
      uint64 = xpc_dictionary_get_uint64(v7, "value");
      v16 = uint64;
      if (uint64)
      {
        v17 = log10(uint64) + 1.0;
        v18 = v17 - 4;
        if (v17 <= 4)
        {
          v18 = 0;
        }

        v19 = v18;
      }

      else
      {
        v19 = 0.0;
      }

      v20 = __exp10(v19);
      v21 = [NSNumber numberWithUnsignedInt:(v20 * (v16 / v20))];
      if (v29 >= 0)
      {
        v22 = buf;
      }

      else
      {
        v22 = *buf;
      }

      v23 = [NSString stringWithUTF8String:v22];
      [v6 setObject:v21 forKey:v23];

      if (v29 < 0)
      {
        operator delete(*buf);
      }

      ++v10;
    }

    while (count != v10);
    count = 0;
    goto LABEL_27;
  }

LABEL_28:

  return count;
}

uint64_t CAMetricsHandlers_handle_getprop_macerror(void *a1, void *a2)
{
  object = a1;
  v249 = a2;
  v264 = 0;
  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v259 = 0;
  v257 = 0u;
  v258 = 0u;
  v255 = 0u;
  v256 = 0u;
  v252 = +[NSMutableArray array];
  v3 = +[NSMutableArray array];
  if (xpc_get_type(object) != &_xpc_type_array)
  {
    v4 = log_get_logging_obg("com.apple.wpantund.awd", "default");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      CAMetricsHandlers_handle_getprop_macerror();
    }

    v5 = 0;
    v6 = 1;
    goto LABEL_545;
  }

  count = xpc_array_get_count(object);
  v7 = log_get_logging_obg("com.apple.wpantund.awd", "default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    *&buf[4] = count;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "CAMetrics : MACErrorHistogram array with size %ld.", buf, 0xCu);
  }

  if (count)
  {
    v8 = 0;
    v5 = 0;
    while (1)
    {
      v9 = xpc_array_get_dictionary(object, v8);

      v5 = v9;
      string = xpc_dictionary_get_string(v9, "key");
      v11 = strlen(string);
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      v254 = v11;
      if (v11)
      {
        memmove(buf, string, v11);
      }

      buf[v12] = 0;
      uint64 = xpc_dictionary_get_uint64(v5, "value");
      v14 = uint64;
      if ((v254 & 0x80000000) == 0)
      {
        break;
      }

      if (*&buf[8] != 19)
      {
        goto LABEL_202;
      }

      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D305B726F727245)
      {
LABEL_138:
        v47 = uint64;
        if (uint64)
        {
          v48 = log10(uint64) + 1.0;
          v49 = v48 - 4;
          if (v48 <= 4)
          {
            v49 = 0;
          }

          v50 = v49;
        }

        else
        {
          v50 = 0.0;
        }

        v59 = __exp10(v50);
        LODWORD(v260) = (v59 * (v47 / v59));
        goto LABEL_271;
      }

      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D315B726F727245)
      {
LABEL_142:
        v51 = uint64;
        if (uint64)
        {
          v52 = log10(uint64) + 1.0;
          v53 = v52 - 4;
          if (v52 <= 4)
          {
            v53 = 0;
          }

          v54 = v53;
        }

        else
        {
          v54 = 0.0;
        }

        v64 = __exp10(v54);
        DWORD1(v260) = (v64 * (v51 / v64));
        goto LABEL_271;
      }

      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D325B726F727245)
      {
LABEL_146:
        v55 = uint64;
        if (uint64)
        {
          v56 = log10(uint64) + 1.0;
          v57 = v56 - 4;
          if (v56 <= 4)
          {
            v57 = 0;
          }

          v58 = v57;
        }

        else
        {
          v58 = 0.0;
        }

        v69 = __exp10(v58);
        DWORD2(v260) = (v69 * (v55 / v69));
        goto LABEL_271;
      }

      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D335B726F727245)
      {
LABEL_152:
        v60 = uint64;
        if (uint64)
        {
          v61 = log10(uint64) + 1.0;
          v62 = v61 - 4;
          if (v61 <= 4)
          {
            v62 = 0;
          }

          v63 = v62;
        }

        else
        {
          v63 = 0.0;
        }

        v74 = __exp10(v63);
        HIDWORD(v260) = (v74 * (v60 / v74));
        goto LABEL_271;
      }

      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D345B726F727245)
      {
LABEL_158:
        v65 = uint64;
        if (uint64)
        {
          v66 = log10(uint64) + 1.0;
          v67 = v66 - 4;
          if (v66 <= 4)
          {
            v67 = 0;
          }

          v68 = v67;
        }

        else
        {
          v68 = 0.0;
        }

        v75 = __exp10(v68);
        LODWORD(v261) = (v75 * (v65 / v75));
        goto LABEL_271;
      }

      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D355B726F727245)
      {
LABEL_164:
        v70 = uint64;
        if (uint64)
        {
          v71 = log10(uint64) + 1.0;
          v72 = v71 - 4;
          if (v71 <= 4)
          {
            v72 = 0;
          }

          v73 = v72;
        }

        else
        {
          v73 = 0.0;
        }

        v76 = __exp10(v73);
        DWORD1(v261) = (v76 * (v70 / v76));
        goto LABEL_271;
      }

      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D365B726F727245)
      {
LABEL_174:
        v77 = uint64;
        if (uint64)
        {
          v78 = log10(uint64) + 1.0;
          v79 = v78 - 4;
          if (v78 <= 4)
          {
            v79 = 0;
          }

          v80 = v79;
        }

        else
        {
          v80 = 0.0;
        }

        v122 = __exp10(v80);
        DWORD2(v261) = (v122 * (v77 / v122));
        goto LABEL_271;
      }

      if ((v254 & 0x80) == 0)
      {
        if (v254 != 19)
        {
          goto LABEL_202;
        }

LABEL_122:
        if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D375B726F727245)
        {
          goto LABEL_249;
        }

        if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D385B726F727245)
        {
          goto LABEL_259;
        }

        goto LABEL_194;
      }

      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D375B726F727245)
      {
LABEL_249:
        v118 = uint64;
        if (uint64)
        {
          v119 = log10(uint64) + 1.0;
          v120 = v119 - 4;
          if (v119 <= 4)
          {
            v120 = 0;
          }

          v121 = v120;
        }

        else
        {
          v121 = 0.0;
        }

        v124 = __exp10(v121);
        HIDWORD(v261) = (v124 * (v118 / v124));
        goto LABEL_271;
      }

      v83 = *buf;
      if (**buf == 0x6F4E746365726944 && *(*buf + 8) == 0x726F7272456B6341 && *(*buf + 11) == 0x5D385B726F727245)
      {
LABEL_259:
        v125 = uint64;
        if (uint64)
        {
          v126 = log10(uint64) + 1.0;
          v127 = v126 - 4;
          if (v126 <= 4)
          {
            v127 = 0;
          }

          v128 = v127;
        }

        else
        {
          v128 = 0.0;
        }

        v133 = __exp10(v128);
        LODWORD(v262) = (v133 * (v125 / v133));
        goto LABEL_271;
      }

      if (v254 < 0)
      {
        goto LABEL_195;
      }

      if (v254 != 19)
      {
        goto LABEL_202;
      }

LABEL_194:
      v83 = buf;
LABEL_195:
      v86 = *v83;
      v87 = v83[1];
      v88 = *(v83 + 11);
      if (v86 != 0x6F4E746365726944 || v87 != 0x726F7272456B6341 || v88 != 0x5D395B726F727245)
      {
LABEL_202:
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectNoAckError[10]"))
        {
          if (v14)
          {
            v91 = log10(v14) + 1.0;
            v92 = v91 - 4;
            if (v91 <= 4)
            {
              v92 = 0;
            }

            v93 = v92;
          }

          else
          {
            v93 = 0.0;
          }

          v100 = __exp10(v93);
          DWORD2(v262) = (v100 * (v14 / v100));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectNoAckError[11]"))
        {
          if (v14)
          {
            v94 = log10(v14) + 1.0;
            v95 = v94 - 4;
            if (v94 <= 4)
            {
              v95 = 0;
            }

            v96 = v95;
          }

          else
          {
            v96 = 0.0;
          }

          v104 = __exp10(v96);
          HIDWORD(v262) = (v104 * (v14 / v104));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectNoAckError[12]"))
        {
          if (v14)
          {
            v97 = log10(v14) + 1.0;
            v98 = v97 - 4;
            if (v97 <= 4)
            {
              v98 = 0;
            }

            v99 = v98;
          }

          else
          {
            v99 = 0.0;
          }

          v108 = __exp10(v99);
          LODWORD(v263) = (v108 * (v14 / v108));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectNoAckError[13]"))
        {
          if (v14)
          {
            v101 = log10(v14) + 1.0;
            v102 = v101 - 4;
            if (v101 <= 4)
            {
              v102 = 0;
            }

            v103 = v102;
          }

          else
          {
            v103 = 0.0;
          }

          v112 = __exp10(v103);
          DWORD1(v263) = (v112 * (v14 / v112));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectNoAckError[14]"))
        {
          if (v14)
          {
            v105 = log10(v14) + 1.0;
            v106 = v105 - 4;
            if (v105 <= 4)
            {
              v106 = 0;
            }

            v107 = v106;
          }

          else
          {
            v107 = 0.0;
          }

          v116 = __exp10(v107);
          DWORD2(v263) = (v116 * (v14 / v116));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectNoAckError[15]"))
        {
          if (v14)
          {
            v109 = log10(v14) + 1.0;
            v110 = v109 - 4;
            if (v109 <= 4)
            {
              v110 = 0;
            }

            v111 = v110;
          }

          else
          {
            v111 = 0.0;
          }

          v117 = __exp10(v111);
          HIDWORD(v263) = (v117 * (v14 / v117));
        }

        else if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectNoAckError[16]"))
        {
          if (v14)
          {
            v113 = log10(v14) + 1.0;
            v114 = v113 - 4;
            if (v113 <= 4)
            {
              v114 = 0;
            }

            v115 = v114;
          }

          else
          {
            v115 = 0.0;
          }

          v123 = __exp10(v115);
          v264 = (v123 * (v14 / v123));
        }

        goto LABEL_271;
      }

      v129 = uint64;
      if (uint64)
      {
        v130 = log10(uint64) + 1.0;
        v131 = v130 - 4;
        if (v130 <= 4)
        {
          v131 = 0;
        }

        v132 = v131;
      }

      else
      {
        v132 = 0.0;
      }

      v134 = __exp10(v132);
      DWORD1(v262) = (v134 * (v129 / v134));
LABEL_271:
      if (v254 < 0)
      {
        if (*&buf[8] == 17)
        {
          if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x305B726F72724561 && *(*buf + 16) == 93)
          {
LABEL_392:
            if (v14)
            {
              v167 = log10(v14) + 1.0;
              v168 = v167 - 4;
              if (v167 <= 4)
              {
                v168 = 0;
              }

              v169 = v168;
            }

            else
            {
              v169 = 0.0;
            }

            v176 = __exp10(v169);
            LODWORD(v255) = (v176 * (v14 / v176));
            if (v254 < 0)
            {
              goto LABEL_541;
            }

            goto LABEL_10;
          }

          if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x315B726F72724561 && *(*buf + 16) == 93)
          {
LABEL_396:
            if (v14)
            {
              v170 = log10(v14) + 1.0;
              v171 = v170 - 4;
              if (v170 <= 4)
              {
                v171 = 0;
              }

              v172 = v171;
            }

            else
            {
              v172 = 0.0;
            }

            v180 = __exp10(v172);
            DWORD1(v255) = (v180 * (v14 / v180));
            if (v254 < 0)
            {
              goto LABEL_541;
            }

            goto LABEL_10;
          }

          if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x325B726F72724561 && *(*buf + 16) == 93)
          {
LABEL_400:
            if (v14)
            {
              v173 = log10(v14) + 1.0;
              v174 = v173 - 4;
              if (v173 <= 4)
              {
                v174 = 0;
              }

              v175 = v174;
            }

            else
            {
              v175 = 0.0;
            }

            v184 = __exp10(v175);
            DWORD2(v255) = (v184 * (v14 / v184));
            if (v254 < 0)
            {
              goto LABEL_541;
            }

            goto LABEL_10;
          }

          if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x335B726F72724561 && *(*buf + 16) == 93)
          {
LABEL_407:
            if (v14)
            {
              v177 = log10(v14) + 1.0;
              v178 = v177 - 4;
              if (v177 <= 4)
              {
                v178 = 0;
              }

              v179 = v178;
            }

            else
            {
              v179 = 0.0;
            }

            v188 = __exp10(v179);
            HIDWORD(v255) = (v188 * (v14 / v188));
            if (v254 < 0)
            {
              goto LABEL_541;
            }

            goto LABEL_10;
          }

          if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x345B726F72724561 && *(*buf + 16) == 93)
          {
LABEL_414:
            if (v14)
            {
              v181 = log10(v14) + 1.0;
              v182 = v181 - 4;
              if (v181 <= 4)
              {
                v182 = 0;
              }

              v183 = v182;
            }

            else
            {
              v183 = 0.0;
            }

            v189 = __exp10(v183);
            LODWORD(v256) = (v189 * (v14 / v189));
            if (v254 < 0)
            {
              goto LABEL_541;
            }

            goto LABEL_10;
          }

          if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x355B726F72724561 && *(*buf + 16) == 93)
          {
LABEL_421:
            if (v14)
            {
              v185 = log10(v14) + 1.0;
              v186 = v185 - 4;
              if (v185 <= 4)
              {
                v186 = 0;
              }

              v187 = v186;
            }

            else
            {
              v187 = 0.0;
            }

            v190 = __exp10(v187);
            DWORD1(v256) = (v190 * (v14 / v190));
            if (v254 < 0)
            {
              goto LABEL_541;
            }

            goto LABEL_10;
          }

          if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x365B726F72724561 && *(*buf + 16) == 93)
          {
LABEL_434:
            if (v14)
            {
              v191 = log10(v14) + 1.0;
              v192 = v191 - 4;
              if (v191 <= 4)
              {
                v192 = 0;
              }

              v193 = v192;
            }

            else
            {
              v193 = 0.0;
            }

            v234 = __exp10(v193);
            DWORD2(v256) = (v234 * (v14 / v234));
            if (v254 < 0)
            {
              goto LABEL_541;
            }

            goto LABEL_10;
          }

          if (v254 < 0)
          {
            if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x375B726F72724561 && *(*buf + 16) == 93)
            {
LABEL_515:
              if (v14)
              {
                v231 = log10(v14) + 1.0;
                v232 = v231 - 4;
                if (v231 <= 4)
                {
                  v232 = 0;
                }

                v233 = v232;
              }

              else
              {
                v233 = 0.0;
              }

              v236 = __exp10(v233);
              HIDWORD(v256) = (v236 * (v14 / v236));
              if (v254 < 0)
              {
                goto LABEL_541;
              }

              goto LABEL_10;
            }

            v196 = *buf;
            if (**buf == 0x6343746365726944 && *(*buf + 8) == 0x385B726F72724561 && *(*buf + 16) == 93)
            {
LABEL_528:
              if (v14)
              {
                v237 = log10(v14) + 1.0;
                v238 = v237 - 4;
                if (v237 <= 4)
                {
                  v238 = 0;
                }

                v239 = v238;
              }

              else
              {
                v239 = 0.0;
              }

              v243 = __exp10(v239);
              LODWORD(v257) = (v243 * (v14 / v243));
              if (v254 < 0)
              {
                goto LABEL_541;
              }

              goto LABEL_10;
            }

            if (v254 < 0)
            {
              goto LABEL_455;
            }

            if (v254 == 17)
            {
              goto LABEL_454;
            }
          }

          else if (v254 == 17)
          {
            goto LABEL_376;
          }
        }
      }

      else if (v254 == 17)
      {
        if (*buf == 0x6343746365726944 && *&buf[8] == 0x305B726F72724561 && buf[16] == 93)
        {
          goto LABEL_392;
        }

        if (*buf == 0x6343746365726944 && *&buf[8] == 0x315B726F72724561 && buf[16] == 93)
        {
          goto LABEL_396;
        }

        if (*buf == 0x6343746365726944 && *&buf[8] == 0x325B726F72724561 && buf[16] == 93)
        {
          goto LABEL_400;
        }

        if (*buf == 0x6343746365726944 && *&buf[8] == 0x335B726F72724561 && buf[16] == 93)
        {
          goto LABEL_407;
        }

        if (*buf == 0x6343746365726944 && *&buf[8] == 0x345B726F72724561 && buf[16] == 93)
        {
          goto LABEL_414;
        }

        if (*buf == 0x6343746365726944 && *&buf[8] == 0x355B726F72724561 && buf[16] == 93)
        {
          goto LABEL_421;
        }

        if (*buf == 0x6343746365726944 && *&buf[8] == 0x365B726F72724561 && buf[16] == 93)
        {
          goto LABEL_434;
        }

LABEL_376:
        if (*buf == 0x6343746365726944 && *&buf[8] == 0x375B726F72724561 && buf[16] == 93)
        {
          goto LABEL_515;
        }

        if (*buf == 0x6343746365726944 && *&buf[8] == 0x385B726F72724561 && buf[16] == 93)
        {
          goto LABEL_528;
        }

LABEL_454:
        v196 = buf;
LABEL_455:
        v199 = *v196;
        v200 = *(v196 + 1);
        v201 = v196[16];
        if (v199 == 0x6343746365726944 && v200 == 0x395B726F72724561 && v201 == 93)
        {
          if (v14)
          {
            v240 = log10(v14) + 1.0;
            v241 = v240 - 4;
            if (v240 <= 4)
            {
              v241 = 0;
            }

            v242 = v241;
          }

          else
          {
            v242 = 0.0;
          }

          v244 = __exp10(v242);
          DWORD1(v257) = (v244 * (v14 / v244));
          if (v254 < 0)
          {
            goto LABEL_541;
          }

          goto LABEL_10;
        }
      }

      if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectCcaError[10]"))
      {
        if (v14)
        {
          v204 = log10(v14) + 1.0;
          v205 = v204 - 4;
          if (v204 <= 4)
          {
            v205 = 0;
          }

          v206 = v205;
        }

        else
        {
          v206 = 0.0;
        }

        v213 = __exp10(v206);
        DWORD2(v257) = (v213 * (v14 / v213));
        if (v254 < 0)
        {
          goto LABEL_541;
        }

LABEL_10:
        if (count == ++v8)
        {
          goto LABEL_544;
        }
      }

      else
      {
        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectCcaError[11]"))
        {
          if (v14)
          {
            v207 = log10(v14) + 1.0;
            v208 = v207 - 4;
            if (v207 <= 4)
            {
              v208 = 0;
            }

            v209 = v208;
          }

          else
          {
            v209 = 0.0;
          }

          v217 = __exp10(v209);
          HIDWORD(v257) = (v217 * (v14 / v217));
          if (v254 < 0)
          {
            goto LABEL_541;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectCcaError[12]"))
        {
          if (v14)
          {
            v210 = log10(v14) + 1.0;
            v211 = v210 - 4;
            if (v210 <= 4)
            {
              v211 = 0;
            }

            v212 = v211;
          }

          else
          {
            v212 = 0.0;
          }

          v221 = __exp10(v212);
          LODWORD(v258) = (v221 * (v14 / v221));
          if (v254 < 0)
          {
            goto LABEL_541;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectCcaError[13]"))
        {
          if (v14)
          {
            v214 = log10(v14) + 1.0;
            v215 = v214 - 4;
            if (v214 <= 4)
            {
              v215 = 0;
            }

            v216 = v215;
          }

          else
          {
            v216 = 0.0;
          }

          v225 = __exp10(v216);
          DWORD1(v258) = (v225 * (v14 / v225));
          if (v254 < 0)
          {
            goto LABEL_541;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectCcaError[14]"))
        {
          if (v14)
          {
            v218 = log10(v14) + 1.0;
            v219 = v218 - 4;
            if (v218 <= 4)
            {
              v219 = 0;
            }

            v220 = v219;
          }

          else
          {
            v220 = 0.0;
          }

          v229 = __exp10(v220);
          DWORD2(v258) = (v229 * (v14 / v229));
          if (v254 < 0)
          {
            goto LABEL_541;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectCcaError[15]"))
        {
          if (v14)
          {
            v222 = log10(v14) + 1.0;
            v223 = v222 - 4;
            if (v222 <= 4)
            {
              v223 = 0;
            }

            v224 = v223;
          }

          else
          {
            v224 = 0.0;
          }

          v230 = __exp10(v224);
          HIDWORD(v258) = (v230 * (v14 / v230));
          if (v254 < 0)
          {
            goto LABEL_541;
          }

          goto LABEL_10;
        }

        if (std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, "DirectCcaError[16]"))
        {
          if (v14)
          {
            v226 = log10(v14) + 1.0;
            v227 = v226 - 4;
            if (v226 <= 4)
            {
              v227 = 0;
            }

            v228 = v227;
          }

          else
          {
            v228 = 0.0;
          }

          v235 = __exp10(v228);
          v259 = (v235 * (v14 / v235));
          if (v254 < 0)
          {
            goto LABEL_541;
          }

          goto LABEL_10;
        }

        if ((v254 & 0x80000000) == 0)
        {
          goto LABEL_10;
        }

LABEL_541:
        operator delete(*buf);
        if (count == ++v8)
        {
          goto LABEL_544;
        }
      }
    }

    if (v254 != 19)
    {
      goto LABEL_202;
    }

    if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D305B726F727245)
    {
      goto LABEL_138;
    }

    if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D315B726F727245)
    {
      goto LABEL_142;
    }

    if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D325B726F727245)
    {
      goto LABEL_146;
    }

    if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D335B726F727245)
    {
      goto LABEL_152;
    }

    if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D345B726F727245)
    {
      goto LABEL_158;
    }

    if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D355B726F727245)
    {
      goto LABEL_164;
    }

    if (*buf == 0x6F4E746365726944 && *&buf[8] == 0x726F7272456B6341 && *&buf[11] == 0x5D365B726F727245)
    {
      goto LABEL_174;
    }

    goto LABEL_122;
  }

  v5 = 0;
LABEL_544:
  v6 = 0;
LABEL_545:
  for (i = 0; i != 68; i += 4)
  {
    v246 = [NSNumber numberWithUnsignedInt:*(&v260 + i)];
    [v252 addObject:v246];

    v247 = [NSNumber numberWithUnsignedInt:*(&v255 + i)];
    [v3 addObject:v247];
  }

  [v249 setObject:v252 forKey:@"tx_direct_noack_histogram"];
  [v249 setObject:v3 forKey:@"tx_direct_channelaccessfailure_histogram"];

  return v6;
}