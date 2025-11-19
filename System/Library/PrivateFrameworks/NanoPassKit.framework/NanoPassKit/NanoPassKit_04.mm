uint64_t NPKProtoSignDataResponseReadFrom(uint64_t a1, void *a2)
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

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = PBReaderReadData();
          v15 = 8;
        }

        else
        {
          if (v13 != 4)
          {
LABEL_24:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_39;
          }

          v14 = PBReaderReadData();
          v15 = 16;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v27 = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v27 & 0x7F) << v17;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              LOBYTE(v23) = 0;
              goto LABEL_38;
            }
          }

          v23 = (v19 != 0) & ~[a2 hasError];
LABEL_38:
          *(a1 + 32) = v23;
          goto LABEL_39;
        }

        if (v13 != 2)
        {
          goto LABEL_24;
        }

        v14 = PBReaderReadData();
        v15 = 24;
      }

      v24 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_39:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_25B462DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B463AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B46414C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContextReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 110)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v23[0] & 0x7F) << v14;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_34;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_34:
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 100)
      {
        v13 = objc_alloc_init(NPKProtoStandalonePaymentSetupProduct);
        objc_storeStrong((a1 + 8), v13);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentSetupProductReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoFeatureApplicationsForAccountIdentifierResponseReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      return [a2 hasError] ^ 1;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    if ((v13 >> 3) == 2)
    {
      v14 = PBReaderReadData();
      if (v14)
      {
        [a1 addFeatureApplications:v14];
      }

      goto LABEL_24;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadData();
      if (v14)
      {
        [a1 addDeprecatedFeatureApplications:v14];
      }

LABEL_24:

      continue;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      break;
    }
  }

  return 0;
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowWelcomeStepContextReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 110)
      {
        v13 = objc_alloc_init(NPKProtoStandalonePaymentHeroImage);
        [a1 addHeroImages:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentHeroImageReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoMarkAllAppletsForDeletionRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoSignWithFidoKeyResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NPKProtoSignWithFidoKeyResponse__errorData;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NPKProtoSignWithFidoKeyResponse__fidoAttestation;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_25B46925C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose((v13 - 144), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B469654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B469A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __NPKRouteDescriptionForStations(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 && v4)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v8 = [v7 localizedStringForKey:@"PASS_DETAILS_VALUE_ROUTE" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    v12 = v5;
LABEL_6:
    [v6 stringWithFormat:v8, v3, v12];
    v9 = LABEL_7:;

    goto LABEL_8;
  }

  if (v3)
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v8 = [v7 localizedStringForKey:@"PASS_DETAILS_VALUE_ROUTE_ORIGIN_ONLY" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    goto LABEL_6;
  }

  if (v4)
  {
    v11 = MEMORY[0x277CCACA8];
    v7 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
    v8 = [v7 localizedStringForKey:@"PASS_DETAILS_VALUE_ROUTE_DESTINATION_ONLY" value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
    [v11 stringWithFormat:v8, v5, v12];
    goto LABEL_7;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

uint64_t NPKProtoPasscodeUpgradeFlowShouldExitRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 != 2)
      {
        if (v13 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_46;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v34 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34 & 0x7F) << v14;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_44;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_44:
        v30 = 16;
        goto LABEL_45;
      }

      v21 = PBReaderReadData();
      v22 = *(a1 + 8);
      *(a1 + 8) = v21;

LABEL_46:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    *(a1 + 20) |= 2u;
    while (1)
    {
      v33 = 0;
      v26 = [a2 position] + 1;
      if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
      {
        v28 = [a2 data];
        [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v25 |= (v33 & 0x7F) << v23;
      if ((v33 & 0x80) == 0)
      {
        break;
      }

      v23 += 7;
      v11 = v24++ >= 9;
      if (v11)
      {
        LOBYTE(v20) = 0;
        goto LABEL_42;
      }
    }

    v20 = (v25 != 0) & ~[a2 hasError];
LABEL_42:
    v30 = 17;
LABEL_45:
    *(a1 + v30) = v20;
    goto LABEL_46;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoRemotePassActionEnterValueRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 3)
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 48;
            break;
          case 2:
            v14 = PBReaderReadString();
            v15 = 16;
            break;
          case 3:
            v14 = PBReaderReadString();
            v15 = 24;
            break;
          default:
            goto LABEL_36;
        }

        goto LABEL_40;
      }

      if (v13 == 4)
      {
        break;
      }

      if (v13 == 6)
      {
        v14 = PBReaderReadData();
        v15 = 40;
        goto LABEL_40;
      }

      if (v13 != 5)
      {
LABEL_36:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_41;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      while (1)
      {
        v27 = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v27 & 0x7F) << v16;
        if ((v27 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_46;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v18;
      }

LABEL_46:
      *(a1 + 8) = -(v22 & 1) ^ (v22 >> 1);
LABEL_41:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v15 = 32;
LABEL_40:
    v24 = *(a1 + v15);
    *(a1 + v15) = v14;

    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

void sub_25B46CE78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, id a37)
{
  objc_destroyWeak((v38 + 40));
  objc_destroyWeak((v40 + 32));
  objc_destroyWeak((v39 + 40));
  objc_destroyWeak((v37 + 40));
  objc_destroyWeak(&a37);
  objc_destroyWeak((v41 - 136));
  _Unwind_Resume(a1);
}

void sub_25B46DB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B46DD84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B46DF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NPKProtoUpdatePeerPaymentAccountRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCarKeySetAccountAttestationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoSetExpressPassRequestReadFrom(uint64_t a1, void *a2)
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

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              v34 = 0;
              v19 = [a2 position] + 1;
              if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
              {
                v21 = [a2 data];
                [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v18 |= (v34 & 0x7F) << v16;
              if ((v34 & 0x80) == 0)
              {
                break;
              }

              v16 += 7;
              v11 = v17++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_50;
              }
            }

            v22 = (v18 != 0) & ~[a2 hasError];
LABEL_50:
            v31 = 41;
            goto LABEL_53;
          case 5:
            v14 = PBReaderReadData();
            v15 = 24;
            break;
          case 6:
            v14 = PBReaderReadData();
            v15 = 16;
            break;
          default:
LABEL_36:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_54;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = 32;
            break;
          case 2:
            v24 = 0;
            v25 = 0;
            v26 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              v35 = 0;
              v27 = [a2 position] + 1;
              if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
              {
                v29 = [a2 data];
                [v29 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v26 |= (v35 & 0x7F) << v24;
              if ((v35 & 0x80) == 0)
              {
                break;
              }

              v24 += 7;
              v11 = v25++ >= 9;
              if (v11)
              {
                LOBYTE(v22) = 0;
                goto LABEL_52;
              }
            }

            v22 = (v26 != 0) & ~[a2 hasError];
LABEL_52:
            v31 = 40;
LABEL_53:
            *(a1 + v31) = v22;
            goto LABEL_54;
          case 3:
            v14 = PBReaderReadString();
            v15 = 8;
            break;
          default:
            goto LABEL_36;
        }
      }

      v30 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_54:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoConflictingExpressPassIdentifiersForPassInformationResponseReadFrom(_BYTE *a1, void *a2)
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

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadString();
        if (v21)
        {
          [a1 addConflictingReferenceExpressPassIdentifiers:v21];
        }
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            a1[28] |= 1u;
            while (1)
            {
              v25 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v25 & 0x7F) << v14;
              if ((v25 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_37;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_37:
            a1[24] = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_38;
        }

        v21 = PBReaderReadString();
        if (v21)
        {
          [a1 addConflictingExpressPassIdentifiers:v21];
        }
      }

LABEL_38:
      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoTransactionDefaultsNeededRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContextReadFrom(_BYTE *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 110)
      {
        v20 = objc_alloc_init(NPKProtoStandalonePaymentSetupField);
        [a1 addSetupFields:v20];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentSetupFieldReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 100)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        a1[20] |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_34;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_34:
        a1[16] = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoSetBalanceReminderForBalanceAndPassRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v14 = PBReaderReadData();
        v15 = &OBJC_IVAR___NPKProtoSetBalanceReminderForBalanceAndPassRequest__balanceReminderBytes;
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = &OBJC_IVAR___NPKProtoSetBalanceReminderForBalanceAndPassRequest__uniqueID;
LABEL_23:
        v16 = *v15;
        v17 = *(a1 + v16);
        *(a1 + v16) = v14;

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v18 = [a2 position];
      if (v18 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v15 = &OBJC_IVAR___NPKProtoSetBalanceReminderForBalanceAndPassRequest__balanceBytes;
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoDisplayableEntitlementsForPassIdentifierResponseReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadData();
      if (v14)
      {
        [a1 addEntitlementsData:v14];
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoUpdateSubcredentialMetadataResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoAccountWithIdentifierResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NPKProtoAccountWithIdentifierResponse__errorData;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NPKProtoAccountWithIdentifierResponse__accountData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id NPKProtoSendWithOptions(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v74 = *MEMORY[0x277D85DE8];
  v50 = a1;
  v11 = a2;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [MEMORY[0x277CBEB38] dictionary];
  v16 = v15;
  if (v12)
  {
    [v15 setObject:v12 forKeyedSubscript:*MEMORY[0x277D18610]];
  }

  v48 = v13;
  if (v14)
  {
    [v16 addEntriesFromDictionary:v14];
  }

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v17 = [(__CFString *)v50 linkedDevicesWithRelationship:3];
  v18 = [v17 countByEnumeratingWithState:&v53 objects:v73 count:16];
  v47 = v14;
  if (v18)
  {
    v19 = v18;
    v20 = *v54;
LABEL_7:
    v21 = 0;
    while (1)
    {
      if (*v54 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v53 + 1) + 8 * v21);
      if ([v22 isActive])
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [v17 countByEnumeratingWithState:&v53 objects:v73 count:16];
        if (v19)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    v23 = v22;

    if (!v23)
    {
      goto LABEL_21;
    }

    v24 = MEMORY[0x277CBEB98];
    v25 = IDSCopyIDForDevice();
    v26 = [v24 setWithObject:v25];

    v27 = [v23 relationship];
    v28 = pk_Payment_log();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);

    if (v29)
    {
      v30 = pk_Payment_log();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = @"YES";
        if ((v27 & 2) == 0)
        {
          v31 = @"NO";
        }

        *buf = 138412290;
        v58 = v31;
        _os_log_impl(&dword_25B300000, v30, OS_LOG_TYPE_DEFAULT, "Notice: altAccount %@", buf, 0xCu);
      }

      v32 = v12;
    }

    else
    {
      v32 = v12;
    }
  }

  else
  {
LABEL_13:

LABEL_21:
    v33 = pk_Payment_log();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

    if (v34)
    {
      v35 = pk_Payment_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_25B300000, v35, OS_LOG_TYPE_DEFAULT, "Notice: no active device found, using IDSDefaultPairedDevice", buf, 2u);
      }
    }

    v32 = v12;
    v26 = [MEMORY[0x277CBEB98] setWithObject:{*MEMORY[0x277D187E8], v47}];
    v23 = 0;
  }

  v51 = 0;
  v52 = 0;
  v36 = v11;
  v37 = [(__CFString *)v50 sendProtobuf:v11 toDestinations:v26 priority:a3 options:v16 identifier:&v52 error:&v51];
  v38 = v52;
  v39 = v51;
  v40 = pk_Payment_log();
  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

  if (v41)
  {
    v42 = pk_Payment_log();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v43 = [v36 npkDescription];
      *buf = 138414082;
      v58 = v50;
      v59 = 2112;
      v60 = v43;
      v61 = 2112;
      v62 = v26;
      v63 = 2048;
      v64 = a3;
      v65 = 2112;
      v66 = v16;
      v67 = 2112;
      v68 = v38;
      v69 = 1024;
      v70 = v37;
      v71 = 2112;
      v72 = v39;
      _os_log_impl(&dword_25B300000, v42, OS_LOG_TYPE_DEFAULT, "Notice: Service %@ sent protobuf (%@) destinations %@ priority %ld options %@: identifier %@ success %d error %@", buf, 0x4Eu);
    }
  }

  if (v48 && v37 != 1 && v39)
  {
    (v48)[2](v48, v39);
  }

  v44 = v38;

  v45 = *MEMORY[0x277D85DE8];
  return v38;
}

id NPKProtoSendSync(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19 = *MEMORY[0x277D18650];
  v8 = MEMORY[0x277CCABB0];
  v9 = *MEMORY[0x277D18828];
  v10 = a5;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  v14 = [v8 numberWithDouble:v9];
  v20[0] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v16 = NPKProtoSendWithOptions(v13, v12, 100, v11, 0, v10, v15);

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

uint64_t NPKProtoCanSendMessage(void *a1)
{
  v1 = a1;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v2 = [v1 devices];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __NPKProtoCanSendMessage_block_invoke;
  v5[3] = &unk_279949048;
  v5[4] = &v6;
  [v2 enumerateObjectsUsingBlock:v5];

  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return v3;
}

void sub_25B475278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __NPKProtoCanSendMessage_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v6 = [v7 isActive];
  if (v6)
  {
    LOBYTE(v6) = [v7 isConnected];
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;
  *a4 = *(*(*(a1 + 32) + 8) + 24);
}

uint64_t NPKProtoRemoteDevicePasscodeStateRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void __dispatch_async_ar_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

uint64_t NPKProtoCarKeyGetProductPlanIdentifierResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NPKProtoCarKeyGetProductPlanIdentifierResponse__errorData;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NPKProtoCarKeyGetProductPlanIdentifierResponse__containerData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoUpdateSubcredentialMetadataRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NPKProtoUpdateSubcredentialMetadataRequest__credentialData;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NPKProtoUpdateSubcredentialMetadataRequest__passData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id NPKAnalyticsEventEntriesForPaymentSetupFields(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x277CBEB18] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v14;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [*(*(&v13 + 1) + 8 * i) identifier];
          if (v8)
          {
            [v2 addObject:v8];
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v5);
    }

    v17 = @"fieldIdentifiers";
    v9 = [v2 componentsJoinedByString:{@", "}];
    v18 = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  }

  else
  {
    v10 = MEMORY[0x277CBEC10];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

id NPKAnalyticsEventEntriesForCredentials(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "count")}];
  v6 = @"credentialCount";
  v2 = [v1 stringValue];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id NPKAnalyticsEventEntriesForProduct(void *a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 productIdentifier];

  if (v2)
  {
    v7 = @"productIdentifier";
    v3 = [v1 productIdentifier];
    v8[0] = v3;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

id NPKAnalyticsEventEntriesForVerificationChannel(void *a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v1 = [a1 typeDescriptionUnlocalized];
  v2 = v1;
  if (v1)
  {
    v6 = @"channelType";
    v7[0] = v1;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v3 = MEMORY[0x277CBEC10];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

id NPKAnalyticsEventForError(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v5 = a1;
  v6 = [v3 dictionary];
  [v6 setObject:v5 forKey:*MEMORY[0x277D383D8]];

  v7 = _NPKAnalyticsEntriesForError(v4);

  [v6 addEntriesFromDictionary:v7];
  v8 = [v6 copy];

  return v8;
}

id _NPKAnalyticsEntriesForError(void *a1)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v32[0] = *MEMORY[0x277D383B0];
  v3 = [v1 domain];
  v33[0] = v3;
  v32[1] = *MEMORY[0x277D383A8];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v1, "code")}];
  v5 = [v4 stringValue];
  v33[1] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  [v2 addEntriesFromDictionary:v6];

  v7 = [v1 userInfo];
  v8 = *MEMORY[0x277CCA7E8];
  v9 = [v7 objectForKey:*MEMORY[0x277CCA7E8]];

  if (v9)
  {
    v30[0] = @"underlyingErrorDomain";
    v10 = [v9 domain];
    v30[1] = @"underlyingErrorCode";
    v31[0] = v10;
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v9, "code")}];
    v12 = [v11 stringValue];
    v31[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
    [v2 addEntriesFromDictionary:v13];
  }

  v14 = v1;
  v15 = v14;
  if (v14)
  {
    v16 = *MEMORY[0x277D38958];
    v17 = v14;
    while (1)
    {
      v18 = [v17 domain];
      v19 = [v18 isEqualToString:v16];

      if (v19)
      {
        break;
      }

      v20 = [v17 userInfo];
      v21 = [v20 objectForKey:v8];

      v17 = v21;
      if (!v21)
      {
        goto LABEL_9;
      }
    }

    v28[0] = @"webServiceErrorDomain";
    v22 = [v17 domain];
    v28[1] = @"webServiceErrorCode";
    v29[0] = v22;
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v17, "code")}];
    v24 = [v23 stringValue];
    v29[1] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    [v2 addEntriesFromDictionary:v25];
  }

LABEL_9:

  v26 = *MEMORY[0x277D85DE8];

  return v2;
}

id NPKAnalyticsEventForProvisioningFlowClientInput(void *a1, void *a2)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEB38];
  v12[0] = *MEMORY[0x277D383D8];
  v12[1] = @"clientInputType";
  v13[0] = @"clientInput";
  v13[1] = a1;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a1;
  v7 = [v5 dictionaryWithObjects:v13 forKeys:v12 count:2];
  v8 = [v4 dictionaryWithDictionary:v7];

  if (v3)
  {
    [v8 addEntriesFromDictionary:v3];
  }

  v9 = [v8 copy];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id NPKAnalyticsEventForProvisioningFlowStepTransition(uint64_t a1, uint64_t a2, void *a3)
{
  v85[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  v7 = *MEMORY[0x277D383D8];
  v85[0] = @"stepTransition";
  v84[0] = v7;
  v84[1] = @"fromStep";
  if (a1 <= 164)
  {
    if (a1 > 139)
    {
      if (a1 <= 149)
      {
        switch(a1)
        {
          case 0x8C:
            v8 = @"ChooseCredentials";
            goto LABEL_72;
          case 0x90:
            v8 = @"ChooseTransitProductType";
            goto LABEL_72;
          case 0x91:
            v8 = @"ChooseServiceProviderProducts";
            goto LABEL_72;
        }
      }

      else if (a1 > 156)
      {
        if (a1 == 157)
        {
          v8 = @"MoreInformation";
          goto LABEL_72;
        }

        if (a1 == 160)
        {
          v8 = @"ReaderModeEntry";
          goto LABEL_72;
        }
      }

      else
      {
        if (a1 == 150)
        {
          v8 = @"DigitalIssuanceAmount";
          goto LABEL_72;
        }

        if (a1 == 155)
        {
          v8 = @"DigitalIssuancePayment";
          goto LABEL_72;
        }
      }
    }

    else if (a1 <= 129)
    {
      switch(a1)
      {
        case 'd':
          v8 = @"Initialized";
          goto LABEL_72;
        case 'n':
          v8 = @"Preconditions";
          goto LABEL_72;
        case 'x':
          v8 = @"Welcome";
          goto LABEL_72;
      }
    }

    else if (a1 > 136)
    {
      if (a1 == 137)
      {
        v8 = @"ChooseTransitProduct";
        goto LABEL_72;
      }

      if (a1 == 138)
      {
        v8 = @"ChooseEMoneyProduct";
        goto LABEL_72;
      }
    }

    else
    {
      if (a1 == 130)
      {
        v8 = @"ChooseFlow";
        goto LABEL_72;
      }

      if (a1 == 135)
      {
        v8 = @"ChooseProduct";
        goto LABEL_72;
      }
    }
  }

  else if (a1 <= 199)
  {
    if (a1 <= 191)
    {
      switch(a1)
      {
        case 0xA5:
          v8 = @"ReaderModeIngestion";
          goto LABEL_72;
        case 0xB4:
          v8 = @"ManualEntry";
          goto LABEL_72;
        case 0xBE:
          v8 = @"SecondaryManualEntry";
          goto LABEL_72;
      }
    }

    else if (a1 > 194)
    {
      if (a1 == 195)
      {
        v8 = @"ProductDisambiguation";
        goto LABEL_72;
      }

      if (a1 == 197)
      {
        v8 = @"PasscodeUpgrade";
        goto LABEL_72;
      }
    }

    else
    {
      if (a1 == 192)
      {
        v8 = @"LocalDeviceManualEntry";
        goto LABEL_72;
      }

      if (a1 == 193)
      {
        v8 = @"LocalDeviceManualEntryProgress";
        goto LABEL_72;
      }
    }
  }

  else if (a1 > 239)
  {
    if (a1 > 259)
    {
      if (a1 == 260)
      {
        v8 = @"AppleBalanceAccountDetails";
        goto LABEL_72;
      }

      if (a1 == 300)
      {
        v8 = @"GetIssuerApplicationAddRequest";
        goto LABEL_72;
      }
    }

    else
    {
      if (a1 == 240)
      {
        v8 = @"IssuerVerificationFields";
        goto LABEL_72;
      }

      if (a1 == 250)
      {
        v8 = @"IssuerVerificationCode";
        goto LABEL_72;
      }
    }
  }

  else if (a1 > 219)
  {
    if (a1 == 220)
    {
      v8 = @"ProvisioningResult";
      goto LABEL_72;
    }

    if (a1 == 230)
    {
      v8 = @"IssuerVerificationChannels";
      goto LABEL_72;
    }
  }

  else
  {
    if (a1 == 200)
    {
      v8 = @"TermsAndConditions";
      goto LABEL_72;
    }

    if (a1 == 210)
    {
      v8 = @"ProvisioningProgress";
      goto LABEL_72;
    }
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", a1];
LABEL_72:
  v85[1] = v8;
  v84[2] = @"toStep";
  if (a2 <= 164)
  {
    if (a2 > 139)
    {
      if (a2 <= 149)
      {
        switch(a2)
        {
          case 0x8C:
            v9 = @"ChooseCredentials";
            goto LABEL_143;
          case 0x90:
            v9 = @"ChooseTransitProductType";
            goto LABEL_143;
          case 0x91:
            v9 = @"ChooseServiceProviderProducts";
            goto LABEL_143;
        }
      }

      else if (a2 > 156)
      {
        if (a2 == 157)
        {
          v9 = @"MoreInformation";
          goto LABEL_143;
        }

        if (a2 == 160)
        {
          v9 = @"ReaderModeEntry";
          goto LABEL_143;
        }
      }

      else
      {
        if (a2 == 150)
        {
          v9 = @"DigitalIssuanceAmount";
          goto LABEL_143;
        }

        if (a2 == 155)
        {
          v9 = @"DigitalIssuancePayment";
          goto LABEL_143;
        }
      }
    }

    else if (a2 <= 129)
    {
      switch(a2)
      {
        case 'd':
          v9 = @"Initialized";
          goto LABEL_143;
        case 'n':
          v9 = @"Preconditions";
          goto LABEL_143;
        case 'x':
          v9 = @"Welcome";
          goto LABEL_143;
      }
    }

    else if (a2 > 136)
    {
      if (a2 == 137)
      {
        v9 = @"ChooseTransitProduct";
        goto LABEL_143;
      }

      if (a2 == 138)
      {
        v9 = @"ChooseEMoneyProduct";
        goto LABEL_143;
      }
    }

    else
    {
      if (a2 == 130)
      {
        v9 = @"ChooseFlow";
        goto LABEL_143;
      }

      if (a2 == 135)
      {
        v9 = @"ChooseProduct";
        goto LABEL_143;
      }
    }
  }

  else if (a2 <= 199)
  {
    if (a2 <= 191)
    {
      switch(a2)
      {
        case 0xA5:
          v9 = @"ReaderModeIngestion";
          goto LABEL_143;
        case 0xB4:
          v9 = @"ManualEntry";
          goto LABEL_143;
        case 0xBE:
          v9 = @"SecondaryManualEntry";
          goto LABEL_143;
      }
    }

    else if (a2 > 194)
    {
      if (a2 == 195)
      {
        v9 = @"ProductDisambiguation";
        goto LABEL_143;
      }

      if (a2 == 197)
      {
        v9 = @"PasscodeUpgrade";
        goto LABEL_143;
      }
    }

    else
    {
      if (a2 == 192)
      {
        v9 = @"LocalDeviceManualEntry";
        goto LABEL_143;
      }

      if (a2 == 193)
      {
        v9 = @"LocalDeviceManualEntryProgress";
        goto LABEL_143;
      }
    }
  }

  else if (a2 > 239)
  {
    if (a2 > 259)
    {
      if (a2 == 260)
      {
        v9 = @"AppleBalanceAccountDetails";
        goto LABEL_143;
      }

      if (a2 == 300)
      {
        v9 = @"GetIssuerApplicationAddRequest";
        goto LABEL_143;
      }
    }

    else
    {
      if (a2 == 240)
      {
        v9 = @"IssuerVerificationFields";
        goto LABEL_143;
      }

      if (a2 == 250)
      {
        v9 = @"IssuerVerificationCode";
        goto LABEL_143;
      }
    }
  }

  else if (a2 > 219)
  {
    if (a2 == 220)
    {
      v9 = @"ProvisioningResult";
      goto LABEL_143;
    }

    if (a2 == 230)
    {
      v9 = @"IssuerVerificationChannels";
      goto LABEL_143;
    }
  }

  else
  {
    if (a2 == 200)
    {
      v9 = @"TermsAndConditions";
      goto LABEL_143;
    }

    if (a2 == 210)
    {
      v9 = @"ProvisioningProgress";
      goto LABEL_143;
    }
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", a2];
LABEL_143:
  v85[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
  [v6 addEntriesFromDictionary:v10];

  if (a2 > 164)
  {
    if (a2 <= 209)
    {
      if (a2 <= 189)
      {
        if (a2 != 165)
        {
          if (a2 != 180)
          {
            goto LABEL_218;
          }

          goto LABEL_176;
        }

        v37 = [v5 readerModeIngestionStepContext];
        v12 = v37;
        if (v37)
        {
          v38 = MEMORY[0x277CCABB0];
          [v37 ingestionProgress];
          v14 = [v38 numberWithDouble:?];
          v39 = [v14 stringValue];
          [v6 setObject:v39 forKey:@"ingestionProgress"];

          v16 = NPKPaymentProvisioningFlowControllerReaderModeIngestionStateToString([v12 ingestionState]);
          v30 = @"ingestionState";
          goto LABEL_215;
        }

        goto LABEL_217;
      }

      if (a2 == 190 || a2 == 192)
      {
        goto LABEL_176;
      }

      goto LABEL_218;
    }

    if (a2 <= 229)
    {
      if (a2 != 210)
      {
        if (a2 != 220)
        {
          goto LABEL_218;
        }

        v11 = [v5 provisioningResultStepContext];
        v12 = v11;
        if (!v11)
        {
          goto LABEL_217;
        }

        v13 = [v11 error];
        v14 = v13;
        if (v13)
        {
          v15 = _NPKAnalyticsEntriesForError(v13);
          [v6 addEntriesFromDictionary:v15];
        }

        v16 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "cardAdded")}];
        v17 = [v16 stringValue];
        [v6 setObject:v17 forKey:@"cardAdded"];
        goto LABEL_183;
      }

      goto LABEL_166;
    }

    if (a2 == 230)
    {
      v12 = [v5 verificationChannelsStepContext];
      if (v12)
      {
        v14 = [MEMORY[0x277CBEB18] array];
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v40 = [v12 verificationChannels];
        v41 = [v40 countByEnumeratingWithState:&v64 objects:v80 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v65;
          do
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v65 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = [*(*(&v64 + 1) + 8 * i) typeDescriptionUnlocalized];
              if (v45)
              {
                [v14 addObject:v45];
              }
            }

            v42 = [v40 countByEnumeratingWithState:&v64 objects:v80 count:16];
          }

          while (v42);
        }

        v16 = [v14 componentsJoinedByString:{@", "}];
        v30 = @"channelTypes";
        goto LABEL_215;
      }

      goto LABEL_217;
    }

    if (a2 != 250)
    {
      goto LABEL_218;
    }

    v26 = [v5 verificationCodeStepContext];
    v12 = v26;
    if (!v26)
    {
      goto LABEL_217;
    }

    v14 = [v26 verificationChannel];
    v19 = NPKAnalyticsEventEntriesForVerificationChannel(v14);
LABEL_188:
    v16 = v19;
    [v6 addEntriesFromDictionary:v19];
    goto LABEL_216;
  }

  if (a2 <= 149)
  {
    if (a2 == 130)
    {
      v12 = [v5 chooseFlowStepContext];
      if (!v12)
      {
        goto LABEL_217;
      }

      v62 = v6;
      v63 = v5;
      v14 = [MEMORY[0x277CBEB18] array];
      v76 = 0u;
      v77 = 0u;
      v78 = 0u;
      v79 = 0u;
      v61 = v12;
      v49 = [v12 sections];
      v50 = [v49 countByEnumeratingWithState:&v76 objects:v83 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v77;
        do
        {
          for (j = 0; j != v51; ++j)
          {
            if (*v77 != v52)
            {
              objc_enumerationMutation(v49);
            }

            v54 = *(*(&v76 + 1) + 8 * j);
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            v75 = 0u;
            v55 = [v54 items];
            v56 = [v55 countByEnumeratingWithState:&v72 objects:v82 count:16];
            if (v56)
            {
              v57 = v56;
              v58 = *v73;
              do
              {
                for (k = 0; k != v57; ++k)
                {
                  if (*v73 != v58)
                  {
                    objc_enumerationMutation(v55);
                  }

                  v60 = [*(*(&v72 + 1) + 8 * k) identifier];
                  if (v60)
                  {
                    [v14 addObject:v60];
                  }
                }

                v57 = [v55 countByEnumeratingWithState:&v72 objects:v82 count:16];
              }

              while (v57);
            }
          }

          v51 = [v49 countByEnumeratingWithState:&v76 objects:v83 count:16];
        }

        while (v51);
      }

      v16 = [v14 componentsJoinedByString:{@", "}];
      v6 = v62;
      [v62 setObject:v16 forKey:@"flowItems"];
      v5 = v63;
      v12 = v61;
      goto LABEL_216;
    }

    if (a2 == 135)
    {
      v12 = [v5 chooseProductStepContext];
      if (v12)
      {
        v14 = [MEMORY[0x277CBEB18] array];
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v31 = [v12 products];
        v32 = [v31 countByEnumeratingWithState:&v68 objects:v81 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v69;
          do
          {
            for (m = 0; m != v33; ++m)
            {
              if (*v69 != v34)
              {
                objc_enumerationMutation(v31);
              }

              v36 = [*(*(&v68 + 1) + 8 * m) productIdentifier];
              if (v36)
              {
                [v14 addObject:v36];
              }
            }

            v33 = [v31 countByEnumeratingWithState:&v68 objects:v81 count:16];
          }

          while (v33);
        }

        v16 = [v14 componentsJoinedByString:{@", "}];
        v30 = @"productIdentifiers";
        goto LABEL_215;
      }

      goto LABEL_217;
    }

    if (a2 != 140)
    {
      goto LABEL_218;
    }

    v18 = [v5 chooseCredentialsStepContext];
    v12 = v18;
    if (!v18)
    {
      goto LABEL_217;
    }

    v14 = [v18 credentials];
    v19 = NPKAnalyticsEventEntriesForCredentials(v14);
    goto LABEL_188;
  }

  if (a2 <= 156)
  {
    if (a2 != 150 && a2 != 155)
    {
      goto LABEL_218;
    }

LABEL_166:
    v12 = [v5 digitalIssuanceAmountStepContext];
    v14 = [v5 digitalIssuancePaymentStepContext];
    v16 = [v5 provisioningProgressStepContext];
    v20 = v12;
    if (!v12)
    {
      v20 = v14;
      if (!v14)
      {
        v20 = v16;
        if (!v16)
        {
          goto LABEL_216;
        }
      }
    }

    v21 = [v20 product];
    if (!v21)
    {
      goto LABEL_216;
    }

    v17 = v21;
    v22 = NPKAnalyticsEventEntriesForProduct(v21);
    [v6 addEntriesFromDictionary:v22];
    goto LABEL_182;
  }

  if (a2 == 157)
  {
    v27 = [v5 moreInformationStepContext];
    v12 = v27;
    if (v27)
    {
      v28 = MEMORY[0x277CCABB0];
      v29 = [v27 moreInfoItems];
      v14 = [v28 numberWithUnsignedInteger:{objc_msgSend(v29, "count")}];

      v16 = [v14 stringValue];
      v30 = @"moreInformationItemsCount";
LABEL_215:
      [v6 setObject:v16 forKey:v30];
      goto LABEL_216;
    }

LABEL_217:

    goto LABEL_218;
  }

  if (a2 == 160)
  {
LABEL_176:
    v12 = [v5 readerModeEntryStepContext];
    v14 = [v5 manualEntryStepContext];
    v16 = [v5 secondaryManualEntryStepContext];
    v17 = [v5 localDeviceManualEntryStepContext];
    v23 = v12;
    if (!v12)
    {
      v23 = v14;
      if (!v14)
      {
        v23 = v16;
        if (!v16)
        {
          v23 = v17;
          if (!v17)
          {
            goto LABEL_183;
          }
        }
      }
    }

    v24 = [v23 setupFields];
    if (!v24)
    {
      goto LABEL_183;
    }

    v22 = v24;
    v25 = NPKAnalyticsEventEntriesForPaymentSetupFields(v24);
    [v6 addEntriesFromDictionary:v25];

LABEL_182:
LABEL_183:

LABEL_216:
    goto LABEL_217;
  }

LABEL_218:
  v46 = [v6 copy];

  v47 = *MEMORY[0x277D85DE8];

  return v46;
}

uint64_t NPKProtoRemotePassActionEnterValueResponseReadFrom(uint64_t a1, void *a2)
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

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v33 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33 & 0x7F) << v5;
        if ((v33 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v29 = PBReaderReadString();
          v30 = 16;
          goto LABEL_44;
        }

        if (v13 != 4)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_53;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 36) |= 1u;
        while (1)
        {
          v35 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v35 & 0x7F) << v21;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_52;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v23;
        }

LABEL_52:
        *(a1 + 8) = -(v27 & 1) ^ (v27 >> 1);
      }

      else
      {
        if (v13 == 1)
        {
          v29 = PBReaderReadString();
          v30 = 24;
LABEL_44:
          v31 = *(a1 + v30);
          *(a1 + v30) = v29;

          goto LABEL_53;
        }

        if (v13 != 2)
        {
          goto LABEL_40;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          v34 = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34 & 0x7F) << v14;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_48;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v16;
        }

LABEL_48:
        *(a1 + 32) = v20;
      }

LABEL_53:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoInitializeCloudStoreIfNecessaryResponseReadFrom(uint64_t a1, void *a2)
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

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = PBReaderReadData();
        v28 = *(a1 + 8);
        *(a1 + 8) = v27;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 20) |= 2u;
          while (1)
          {
            v33 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v33 & 0x7F) << v21;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_42;
            }
          }

          v20 = (v23 != 0) & ~[a2 hasError];
LABEL_42:
          v30 = 17;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_46;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_44;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_44:
          v30 = 16;
        }

        *(a1 + v30) = v20;
      }

LABEL_46:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

BOOL NPKIsPeerPaymentAccountLockedByAssociatedAccount(void *a1)
{
  v1 = a1;
  v2 = v1;
  v3 = v1 && [v1 supportsFamilySharing] && objc_msgSend(v2, "stateReason") == 1 && objc_msgSend(v2, "role") && objc_msgSend(v2, "state") == 3 && objc_msgSend(v2, "stateReason") == 1;

  return v3;
}

uint64_t NPKProtoAddPassRequestReadFrom(uint64_t a1, void *a2)
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

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v37) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37 & 0x7F) << v5;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v27 = objc_alloc_init(NPKProtoCatalog);
            objc_storeStrong((a1 + 8), v27);
            v37 = 0;
            v38 = 0;
            if (!PBReaderPlaceMark() || !NPKProtoCatalogReadFrom(v27, a2))
            {
LABEL_77:

              return 0;
            }

            goto LABEL_52;
          case 5:
            v28 = 0;
            v29 = 0;
            v30 = 0;
            *(a1 + 48) |= 1u;
            while (1)
            {
              LOBYTE(v37) = 0;
              v31 = [a2 position] + 1;
              if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
              {
                v33 = [a2 data];
                [v33 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v30 |= (v37 & 0x7F) << v28;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v28 += 7;
              v11 = v29++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_73;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v30;
            }

LABEL_73:
            v34 = 16;
            goto LABEL_74;
          case 6:
            v21 = 0;
            v22 = 0;
            v23 = 0;
            *(a1 + 48) |= 4u;
            while (1)
            {
              LOBYTE(v37) = 0;
              v24 = [a2 position] + 1;
              if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
              {
                v26 = [a2 data];
                [v26 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v23 |= (v37 & 0x7F) << v21;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v21 += 7;
              v11 = v22++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_69;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v23;
            }

LABEL_69:
            v34 = 44;
            goto LABEL_74;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v27 = objc_alloc_init(NPKProtoPass);
            objc_storeStrong((a1 + 32), v27);
            v37 = 0;
            v38 = 0;
            if (!PBReaderPlaceMark() || !NPKProtoPassReadFrom(v27, a2))
            {
              goto LABEL_77;
            }

            goto LABEL_52;
          case 2:
            v27 = objc_alloc_init(NPKProtoHash);
            objc_storeStrong((a1 + 24), v27);
            v37 = 0;
            v38 = 0;
            if (!PBReaderPlaceMark() || !NPKProtoHashReadFrom(v27, a2))
            {
              goto LABEL_77;
            }

LABEL_52:
            PBReaderRecallMark();

            goto LABEL_75;
          case 3:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 48) |= 2u;
            while (1)
            {
              LOBYTE(v37) = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v37 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v37 & 0x7F) << v14;
              if ((v37 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_65;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v16;
            }

LABEL_65:
            v34 = 40;
LABEL_74:
            *(a1 + v34) = v20;
            goto LABEL_75;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_75:
      v35 = [a2 position];
    }

    while (v35 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoUpdateAccountWithIdentifierRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCarKeyDecryptDataRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = (v12 >> 3) - 1;
      if (v13 >= 3)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_279949278[v13];
        v15 = PBReaderReadData();
        v16 = *v14;
        v17 = *(a1 + v16);
        *(a1 + v16) = v15;
      }

      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoRemoveSharingInvitationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoAcceptSubcredentialInvitationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NPKProtoAcceptSubcredentialInvitationRequest__metadataData;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NPKProtoAcceptSubcredentialInvitationRequest__invitationData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

id _sortedSyncItemsByUniqueID(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CBEB18];
  v5 = a1;
  v6 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = ___sortedSyncItemsByUniqueID_block_invoke;
  v15 = &unk_2799492C0;
  v7 = v6;
  v16 = v7;
  v17 = v3;
  v8 = v3;
  [v5 enumerateObjectsUsingBlock:&v12];

  [v7 sortUsingComparator:{&__block_literal_global_24, v12, v13, v14, v15}];
  v9 = v17;
  v10 = v7;

  return v7;
}

void ___sortedSyncItemsByUniqueID_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectForKeyedSubscript:a2];
  [v2 addObject:v3];
}

uint64_t ___sortedSyncItemsByUniqueID_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 uniqueID];
  v6 = [v4 uniqueID];

  v7 = [v5 compare:v6];
  return v7;
}

id NPKNanoPassDaemonConnectionProtocolInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D44E08];
  v15 = MEMORY[0x277CBEB98];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v15 setWithObjects:{v1, v2, v3, v4, v5, v6, v7, v8, v9, objc_opt_class(), 0}];
  [v0 setClasses:v10 forSelector:sel_addRemoteDevicePendingProvisionings_ argumentIndex:0 ofReply:0];

  v11 = MEMORY[0x277CBEB98];
  v12 = objc_opt_class();
  v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
  [v0 setClasses:v13 forSelector:sel_fetchRelevantPassInformationWithCompletion_ argumentIndex:0 ofReply:1];

  return v0;
}

id stringsArrayFromNPKIDVRemoteDeviceServiceEvents(unint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a1 >> 31)
  {
    v18[0] = @"NPKIDVRemoteDeviceServiceEventUnknown";
    v10 = MEMORY[0x277CBEA60];
    v11 = v18;
LABEL_26:
    v9 = [v10 arrayWithObjects:v11 count:1];
    goto LABEL_27;
  }

  if (!a1)
  {
    v17 = @"NPKIDVRemoteDeviceServiceEventNone";
    v10 = MEMORY[0x277CBEA60];
    v11 = &v17;
    goto LABEL_26;
  }

  v3 = a1 & 0x3F;
  if (a1 >= 0x40)
  {
    v4 = pk_Payment_log();
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

    if (v5)
    {
      v6 = pk_Payment_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v15 = 134217984;
        v16 = a1 & 0x7FFFFFC0;
        _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Received unknown remote events to parse:%lu. We will ignore it.", &v15, 0xCu);
      }
    }
  }

  if ((a1 & 0x3F) != 0)
  {
    while ((v3 & 1) == 0)
    {
      if ((v3 & 2) != 0)
      {
        v7 = -4;
        v8 = @"NPKIDVRemoteDeviceServiceEventDidBecomeInactive";
        goto LABEL_21;
      }

      if ((v3 & 4) != 0)
      {
        v7 = -8;
        v8 = @"NPKIDVRemoteDeviceServiceEventDidUnpair";
        goto LABEL_21;
      }

      if ((v3 & 8) != 0)
      {
        v7 = -16;
        v8 = @"NPKIDVRemoteDeviceServiceEventRequirePrearmCredential";
        goto LABEL_21;
      }

      if ((v3 & 0x10) != 0)
      {
        v7 = -32;
        v8 = @"NPKIDVRemoteDeviceServiceEventShouldBeDisarmed";
        goto LABEL_21;
      }

      if ((v3 & 0x20) != 0)
      {
        [v2 addObject:@"NPKIDVRemoteDeviceServiceEventDidDeletePass"];
        goto LABEL_23;
      }

LABEL_22:
      if (!v3)
      {
        goto LABEL_23;
      }
    }

    v7 = -2;
    v8 = @"NPKIDVRemoteDeviceServiceEventDidBecomeActive";
LABEL_21:
    [v2 addObject:v8];
    v3 &= v7;
    goto LABEL_22;
  }

LABEL_23:
  v9 = v2;
LABEL_27:
  v12 = v9;

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

unint64_t NPKIDVRemoteDeviceServiceEventsFromStringsArray(void *a1)
{
  v1 = a1;
  if (![v1 count])
  {
    goto LABEL_4;
  }

  if ([v1 count] != 1)
  {
LABEL_7:
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __NPKIDVRemoteDeviceServiceEventsFromStringsArray_block_invoke;
    v10[3] = &unk_279949340;
    v8 = v7;
    v11 = v8;
    v12 = &v13;
    [v1 enumerateObjectsUsingBlock:v10];
    v4 = v14[3];

    _Block_object_dispose(&v13, 8);
    goto LABEL_8;
  }

  v2 = [v1 firstObject];
  v3 = [v2 isEqual:@"NPKIDVRemoteDeviceServiceEventNone"];

  if ((v3 & 1) == 0)
  {
    v5 = [v1 firstObject];
    v6 = [v5 isEqual:@"NPKIDVRemoteDeviceServiceEventUnknown"];

    if (v6)
    {
      v4 = 0xFFFFFFFF80000000;
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_4:
  v4 = 0;
LABEL_8:

  return v4;
}

void sub_25B480834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __NPKIDVRemoteDeviceServiceEventsFromStringsArray_block_invoke(uint64_t a1, void *a2, uint64_t a3, BOOL *a4)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = a2;
  if (([*(a1 + 32) containsObject:v6] & 1) == 0)
  {
    [*(a1 + 32) addObject:v6];
    if ([v6 isEqualToString:@"NPKIDVRemoteDeviceServiceEventDidBecomeActive"])
    {
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 24) | 1;
LABEL_14:
      *(v7 + 24) = v8;
      goto LABEL_15;
    }

    if ([v6 isEqualToString:@"NPKIDVRemoteDeviceServiceEventDidBecomeInactive"])
    {
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 24) | 2;
      goto LABEL_14;
    }

    if ([v6 isEqualToString:@"NPKIDVRemoteDeviceServiceEventDidUnpair"])
    {
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 24) | 4;
      goto LABEL_14;
    }

    if ([v6 isEqualToString:@"NPKIDVRemoteDeviceServiceEventRequirePrearmCredential"])
    {
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 24) | 8;
      goto LABEL_14;
    }

    if ([v6 isEqualToString:@"NPKIDVRemoteDeviceServiceEventShouldBeDisarmed"])
    {
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 24) | 0x10;
      goto LABEL_14;
    }

    if ([v6 isEqualToString:@"NPKIDVRemoteDeviceServiceEventDidDeletePass"])
    {
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 24) | 0x20;
      goto LABEL_14;
    }

    v10 = pk_Payment_log();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

    if (v11)
    {
      v12 = pk_Payment_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 138412290;
        v14 = v6;
        _os_log_impl(&dword_25B300000, v12, OS_LOG_TYPE_ERROR, "Error: NPKIDVRemoteDeviceService: Unknown remote eventString:%@. Ignoring it", &v13, 0xCu);
      }
    }
  }

LABEL_15:
  *a4 = *(*(*(a1 + 40) + 8) + 24) == 63;

  v9 = *MEMORY[0x277D85DE8];
}

__CFString *NSStringFromNPKIDVRemoteDeviceTeardownReason(uint64_t a1)
{
  if (a1)
  {
    return @"NPKIDVRemoteDeviceTeardownReasonDidUnpair";
  }

  else
  {
    return @"NPKIDVRemoteDeviceTeardownReasonDidBecomeInactive";
  }
}

__CFString *NSStringFromNPKIDVRemoteDeviceCredentialType(uint64_t a1)
{
  if (a1 == 1)
  {
    v2 = @"NPKIDVRemoteDeviceCredentialTypeIdentity";
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unknown NPKIDVRemoteDeviceCredentialType(%lu)", a1];
  }

  return v2;
}

__CFString *NSStringFromNPKIDVRemoteDeviceDocumentType(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_279949360[a1 - 1];
  }
}

void *NPKSelectStringForDocumentType(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1 > 1)
  {
    if (a1 == 3)
    {
      goto LABEL_11;
    }

    v10 = v7;
    if (a1 == 2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!a1)
    {
      goto LABEL_11;
    }

    v10 = v8;
    if (a1 == 1)
    {
      goto LABEL_11;
    }
  }

  v11 = pk_Payment_log();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);

  v10 = v7;
  if (v12)
  {
    v13 = pk_Payment_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 136315650;
      v18 = "NSString * _Nonnull NPKSelectStringForDocumentType(NPKIDVRemoteDeviceDocumentType, NSString *__strong _Nonnull, NSString *__strong _Nonnull, NSString *__strong _Nonnull)";
      v19 = 2048;
      v20 = a1;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_25B300000, v13, OS_LOG_TYPE_DEFAULT, "Warning: NPKIDVRemoteDeviceService: %s called with not recognized document type value. Received type %lu. String returned: %@", &v17, 0x20u);
    }

    v10 = v7;
  }

LABEL_11:
  v14 = v10;

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

__CFString *NSStringFromNPKIDVDeviceCredentialPrearmStatus(uint64_t a1)
{
  if ((a1 + 1) >= 6)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"NPKIDVDeviceCredentialPrearmStatusUnknown (%ld)", a1];
  }

  else
  {
    v2 = off_279949378[a1 + 1];
  }

  return v2;
}

uint64_t NPKIDVDeviceCredentialPrearmStatusFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"NPKIDVDeviceCredentialPrearmStatusShouldBeDisarmed"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"NPKIDVDeviceCredentialPrearmStatusReadyForPrearm"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"NPKIDVDeviceCredentialPrearmStatusPrearmed"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"NPKIDVDeviceCredentialPrearmStatusBiometricTemplateRemoved"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"NPKIDVDeviceCredentialPrearmStatusTrustLost"])
  {
    v2 = 4;
  }

  else
  {
    v2 = -1;
  }

  return v2;
}

__CFString *NSStringFromNPKBioAuthTokenWristAndProximityMonitorStatus(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"NPKBioAuthTokenWristAndProximityMonitorStatusUnknown (%ld)", a1];
  }

  else
  {
    v2 = off_2799493A8[a1];
  }

  return v2;
}

__CFString *NSStringFromNPKRemoteBiometricAuthenticationStatus(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"NPKRemoteBiometricAuthenticationStatusUnknown (%ld)", a1];
  }

  else
  {
    v2 = off_2799493C0[a1];
  }

  return v2;
}

__CFString *NSStringFromNPKIDVRemoteBiometricAuthenticationTokenActivationStatus(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"NPKIDVRemoteBiometricAuthenticationTokenActivationStatusUnknown (%ld)", a1];
  }

  else
  {
    v2 = off_2799493E0[a1];
  }

  return v2;
}

uint64_t NPKProtoPassSettingsChangedRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContextReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v30 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30 & 0x7F) << v5;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 119)
      {
        break;
      }

      switch(v13)
      {
        case 0x78:
          v16 = PBReaderReadString();
          v17 = 24;
LABEL_38:
          v25 = *(a1 + v17);
          *(a1 + v17) = v16;

          break;
        case 0x82:
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            v31 = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v31 & 0x7F) << v18;
            if ((v31 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_44;
            }
          }

          if ([a2 hasError])
          {
            v24 = 0;
          }

          else
          {
            v24 = v20;
          }

LABEL_44:
          *(a1 + 12) = v24;
          break;
        case 0x8C:
          *(a1 + 40) |= 1u;
          v29 = 0;
          v14 = [a2 position] + 4;
          if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 4, v15 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v29;
          break;
        default:
          goto LABEL_39;
      }

LABEL_47:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 100)
    {
      v16 = PBReaderReadString();
      v17 = 16;
    }

    else
    {
      if (v13 != 110)
      {
LABEL_39:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_47;
      }

      v16 = PBReaderReadString();
      v17 = 32;
    }

    goto LABEL_38;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoSignWithFidoKeyRequestReadFrom(uint64_t a1, void *a2)
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

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v20 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v20 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v20 & 0x7F) << v5;
        if ((v20 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        switch(v13)
        {
          case 4:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR___NPKProtoSignWithFidoKeyRequest__challenge;
            goto LABEL_32;
          case 5:
            v14 = PBReaderReadString();
            v15 = &OBJC_IVAR___NPKProtoSignWithFidoKeyRequest__publicKeyIdentifier;
            goto LABEL_32;
          case 6:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR___NPKProtoSignWithFidoKeyRequest__externalizedAuth;
            goto LABEL_32;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v14 = PBReaderReadString();
            v15 = &OBJC_IVAR___NPKProtoSignWithFidoKeyRequest__relyingParty;
            goto LABEL_32;
          case 2:
            v14 = PBReaderReadString();
            v15 = &OBJC_IVAR___NPKProtoSignWithFidoKeyRequest__relyingPartyAccountHash;
            goto LABEL_32;
          case 3:
            v14 = PBReaderReadData();
            v15 = &OBJC_IVAR___NPKProtoSignWithFidoKeyRequest__fidoKeyHash;
LABEL_32:
            v16 = *v15;
            v17 = *(a1 + v16);
            *(a1 + v16) = v14;

            goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_33:
      v18 = [a2 position];
    }

    while (v18 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoPassSyncStateChangeProcessedReadFrom(uint64_t a1, void *a2)
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

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 20) |= 2u;
        while (1)
        {
          v33 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v33 & 0x7F) << v23;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_44;
          }
        }

        v22 = (v25 != 0) & ~[a2 hasError];
LABEL_44:
        v30 = 17;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadData();
            v15 = *(a1 + 8);
            *(a1 + 8) = v14;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_46;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v34 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v34 & 0x7F) << v16;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_42;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_42:
        v30 = 16;
      }

      *(a1 + v30) = v22;
LABEL_46:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoRemotePassActionEnvelopeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v46 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v46 & 0x7F) << v5;
        if ((v46 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 4)
      {
        break;
      }

      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v47 = 0;
            v39 = [a2 position] + 1;
            if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
            {
              v41 = [a2 data];
              [v41 getBytes:&v47 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v38 |= (v47 & 0x7F) << v36;
            if ((v47 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v11 = v37++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_82;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v38;
          }

LABEL_82:
          v44 = 64;
        }

        else
        {
          if (v13 != 2)
          {
            goto LABEL_71;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            v49 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v49 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v49 & 0x7F) << v21;
            if ((v49 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_76;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v23;
          }

LABEL_76:
          v44 = 32;
        }

        goto LABEL_87;
      }

      if (v13 == 3)
      {
        v34 = PBReaderReadData();
        v35 = 24;
LABEL_70:
        v42 = *(a1 + v35);
        *(a1 + v35) = v34;

        goto LABEL_88;
      }

      if (v13 != 4)
      {
        goto LABEL_71;
      }

      v27 = 0;
      v28 = 0;
      v29 = 0;
      while (1)
      {
        v50 = 0;
        v30 = [a2 position] + 1;
        if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
        {
          v32 = [a2 data];
          [v32 getBytes:&v50 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v29 |= (v50 & 0x7F) << v27;
        if ((v50 & 0x80) == 0)
        {
          break;
        }

        v27 += 7;
        v11 = v28++ >= 9;
        if (v11)
        {
          LOBYTE(v33) = 0;
          goto LABEL_78;
        }
      }

      v33 = (v29 != 0) & ~[a2 hasError];
LABEL_78:
      *(a1 + 68) = v33;
LABEL_88:
      v45 = [a2 position];
      if (v45 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 <= 7)
    {
      if (v13 == 5)
      {
        v34 = PBReaderReadString();
        v35 = 8;
      }

      else
      {
        if (v13 != 6)
        {
LABEL_71:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_88;
        }

        v34 = PBReaderReadString();
        v35 = 40;
      }
    }

    else
    {
      switch(v13)
      {
        case 8:
          v34 = PBReaderReadString();
          v35 = 56;
          break;
        case 9:
          v34 = PBReaderReadString();
          v35 = 48;
          break;
        case 0xA:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            v48 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v48 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v48 & 0x7F) << v14;
            if ((v48 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_86;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_86:
          v44 = 16;
LABEL_87:
          *(a1 + v44) = v20;
          goto LABEL_88;
        default:
          goto LABEL_71;
      }
    }

    goto LABEL_70;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCurrentSecureElementSnapshotRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

void sub_25B4862D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContextReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v23[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23[0] & 0x7F) << v5;
        if ((v23[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 110)
      {
        v20 = objc_alloc_init(NPKProtoStandaloneError);
        objc_storeStrong((a1 + 8), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandaloneErrorReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 100)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v23[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23[0] & 0x7F) << v13;
          if ((v23[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_34;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_34:
        *(a1 + 16) = v19;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCreateShareForPartialShareInvitationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NPKProtoCreateShareForPartialShareInvitationRequest__authorizationData;
LABEL_21:
        v14 = PBReaderReadData();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NPKProtoCreateShareForPartialShareInvitationRequest__inviteData;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

void sub_25B487B88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B488A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B48A19C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B48A78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B48B8C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B48CAF0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_25B48D010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B48DD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B48E824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t NPKProtoCarKeyRetryActivationCodeRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v13 = &OBJC_IVAR___NPKProtoCarKeyRetryActivationCodeRequest__activationCode;
LABEL_21:
        v14 = PBReaderReadString();
        v15 = *v13;
        v16 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = &OBJC_IVAR___NPKProtoCarKeyRetryActivationCodeRequest__invitationIdentifier;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoHasActiveExternallySharedPassesResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v20 = PBReaderReadData();
        v21 = *(a1 + 8);
        *(a1 + 8) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v25 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v25 & 0x7F) << v13;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_32;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_32:
        *(a1 + 16) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoAcceptSubcredentialInvitationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v26[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26[0] & 0x7F) << v5;
        if ((v26[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v26[0] & 0x7F) << v17;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            LOBYTE(v23) = 0;
            goto LABEL_36;
          }
        }

        v23 = (v19 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v23;
      }

      else if (v13 == 2)
      {
        v15 = PBReaderReadData();
        v16 = *(a1 + 8);
        *(a1 + 8) = v15;
      }

      else if (v13 == 1)
      {
        v14 = objc_alloc_init(NPKProtoPass);
        objc_storeStrong((a1 + 16), v14);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !NPKProtoPassReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v24 = [a2 position];
    }

    while (v24 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoTriggerCloudStoreZoneCreationForAccountResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoUpdatedAccountsForProvisioningResponseReadFrom(uint64_t a1, void *a2)
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

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v26 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v26 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v26 & 0x7F) << v5;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v21 = PBReaderReadData();
        v22 = 8;
      }

      else
      {
        if (v13 != 2)
        {
          if (v13 == 1)
          {
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v27 = 0;
              v17 = [a2 position] + 1;
              if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
              {
                v19 = [a2 data];
                [v19 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v16 |= (v27 & 0x7F) << v14;
              if ((v27 & 0x80) == 0)
              {
                break;
              }

              v14 += 7;
              v11 = v15++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_35;
              }
            }

            v20 = (v16 != 0) & ~[a2 hasError];
LABEL_35:
            *(a1 + 24) = v20;
          }

          else
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }
          }

          goto LABEL_36;
        }

        v21 = PBReaderReadData();
        v22 = 16;
      }

      v23 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_36:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoRemoveSharingInvitationResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoAddPendingProvisioningRequestReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v16 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v16 & 0x7F) << v6;
      if ((v16 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    if ((v13 >> 3) == 1)
    {
      v14 = PBReaderReadData();
      if (v14)
      {
        [a1 addPendingProvisioning:v14];
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePaymentProvisioningFlowChooseManualEntryRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 100)
      {
        v13 = objc_alloc_init(NPKProtoStandaloneRequestHeader);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !NPKProtoStandaloneRequestHeaderReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKIDVRemoteDeviceProtoPrearmStatusUpdateReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoSetBalanceReminderForBalanceAndPassResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v29 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v29 & 0x7F) << v5;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v31 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v31 & 0x7F) << v13;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v19 = v14++ > 8;
          if (v19)
          {
            LOBYTE(v20) = 0;
            v21 = &OBJC_IVAR___NPKProtoSetBalanceReminderForBalanceAndPassResponse__pending;
            goto LABEL_42;
          }
        }

        v21 = &OBJC_IVAR___NPKProtoSetBalanceReminderForBalanceAndPassResponse__pending;
LABEL_41:
        v20 = (v15 != 0) & ~[a2 hasError];
LABEL_42:
        *(a1 + *v21) = v20;
        goto LABEL_43;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_43:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 12) |= 2u;
    while (1)
    {
      v30 = 0;
      v24 = [a2 position] + 1;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
      {
        v26 = [a2 data];
        [v26 getBytes:&v30 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v15 |= (v30 & 0x7F) << v22;
      if ((v30 & 0x80) == 0)
      {
        break;
      }

      v22 += 7;
      v19 = v23++ > 8;
      if (v19)
      {
        LOBYTE(v20) = 0;
        v21 = &OBJC_IVAR___NPKProtoSetBalanceReminderForBalanceAndPassResponse__success;
        goto LABEL_42;
      }
    }

    v21 = &OBJC_IVAR___NPKProtoSetBalanceReminderForBalanceAndPassResponse__success;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoRevokeSubcredentialsResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            LOBYTE(v19) = 0;
            goto LABEL_30;
          }
        }

        v19 = (v15 != 0) & ~[a2 hasError];
LABEL_30:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoStandalonePingResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoPassSyncStateChangeReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 >= [a2 length])
  {
    return [a2 hasError] ^ 1;
  }

  while (2)
  {
    if ([a2 hasError])
    {
      return [a2 hasError] ^ 1;
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      LOBYTE(v46) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v46 & 0x7F) << v5;
      if ((v46 & 0x80) == 0)
      {
        break;
      }

      v5 += 7;
      v11 = v6++ >= 9;
      if (v11)
      {
        v12 = 0;
        goto LABEL_15;
      }
    }

    v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = PBReaderReadData();
        v14 = 24;
        goto LABEL_54;
      case 2u:
        v13 = PBReaderReadData();
        v14 = 40;
        goto LABEL_54;
      case 3u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        while (1)
        {
          LOBYTE(v46) = 0;
          v27 = [a2 position] + 1;
          if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v26 |= (v46 & 0x7F) << v24;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v11 = v25++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_80;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v26;
        }

LABEL_80:
        v43 = 16;
        goto LABEL_89;
      case 4u:
        v13 = PBReaderReadString();
        v14 = 88;
        goto LABEL_54;
      case 5u:
        v15 = objc_alloc_init(NPKProtoPassSyncStateItem);
        objc_storeStrong((a1 + 80), v15);
        v46 = 0;
        v47 = 0;
        if (!PBReaderPlaceMark() || !NPKProtoPassSyncStateItemReadFrom(v15, a2))
        {
          goto LABEL_92;
        }

        goto LABEL_72;
      case 6u:
        v13 = PBReaderReadData();
        v14 = 56;
        goto LABEL_54;
      case 7u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 104) |= 2u;
        while (1)
        {
          LOBYTE(v46) = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v46 & 0x7F) << v37;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_88;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v39;
        }

LABEL_88:
        v43 = 64;
        goto LABEL_89;
      case 8u:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 104) |= 4u;
        while (1)
        {
          LOBYTE(v46) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v46 & 0x7F) << v30;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_84;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v32;
        }

LABEL_84:
        v43 = 68;
        goto LABEL_89;
      case 9u:
        v15 = objc_alloc_init(NPKProtoCatalog);
        v16 = 32;
        goto LABEL_70;
      case 0xAu:
        v13 = PBReaderReadData();
        v14 = 8;
LABEL_54:
        v36 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_90;
      case 0xBu:
        v15 = objc_alloc_init(NPKProtoPassSyncStateManifestEntry);
        [a1 addRemoteAssetsForPartialUpdate:v15];
        v46 = 0;
        v47 = 0;
        if (!PBReaderPlaceMark() || !NPKProtoPassSyncStateManifestEntryReadFrom(v15, a2))
        {
          goto LABEL_92;
        }

        goto LABEL_72;
      case 0xCu:
        v15 = objc_alloc_init(NPKProtoCatalog);
        v16 = 96;
LABEL_70:
        objc_storeStrong((a1 + v16), v15);
        v46 = 0;
        v47 = 0;
        if (PBReaderPlaceMark() && NPKProtoCatalogReadFrom(v15, a2))
        {
LABEL_72:
          PBReaderRecallMark();

LABEL_90:
          v44 = [a2 position];
          if (v44 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_92:

        return 0;
      case 0xDu:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        *(a1 + 104) |= 1u;
        while (1)
        {
          LOBYTE(v46) = 0;
          v20 = [a2 position] + 1;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:&v46 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v19 |= (v46 & 0x7F) << v17;
          if ((v46 & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v11 = v18++ >= 9;
          if (v11)
          {
            v23 = 0;
            goto LABEL_76;
          }
        }

        if ([a2 hasError])
        {
          v23 = 0;
        }

        else
        {
          v23 = v19;
        }

LABEL_76:
        v43 = 48;
LABEL_89:
        *(a1 + v43) = v23;
        goto LABEL_90;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_90;
    }
  }
}

uint64_t NPKProtoStandalonePaymentDigitalIssuanceMetadataReadFrom(char *a1, void *a2)
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

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 139)
      {
        if (v13 > 159)
        {
          if (v13 == 160)
          {
            v14 = PBReaderReadString();
            v15 = 24;
LABEL_39:
            v16 = *&a1[v15];
            *&a1[v15] = v14;
LABEL_40:

            goto LABEL_41;
          }

          if (v13 == 170)
          {
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addDefaultSuggestions:v16];
            }

            goto LABEL_40;
          }
        }

        else
        {
          if (v13 == 140)
          {
            v14 = PBReaderReadString();
            v15 = 56;
            goto LABEL_39;
          }

          if (v13 == 150)
          {
            v14 = PBReaderReadString();
            v15 = 8;
            goto LABEL_39;
          }
        }
      }

      else if (v13 > 119)
      {
        if (v13 == 120)
        {
          v16 = PBReaderReadString();
          if (v16)
          {
            [a1 addServiceProviderAcceptedNetworks:v16];
          }

          goto LABEL_40;
        }

        if (v13 == 130)
        {
          v16 = PBReaderReadString();
          if (v16)
          {
            [a1 addServiceProviderCapabilities:v16];
          }

          goto LABEL_40;
        }
      }

      else
      {
        if (v13 == 100)
        {
          v14 = PBReaderReadString();
          v15 = 64;
          goto LABEL_39;
        }

        if (v13 == 110)
        {
          v14 = PBReaderReadString();
          v15 = 48;
          goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoUpdatedAccountsForProvisioningRequestReadFrom(uint64_t a1, void *a2)
{
  while (1)
  {
    v3 = [a2 position];
    if (v3 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      v13 = 0;
      v7 = [a2 position] + 1;
      if (v7 >= [a2 position] && (v8 = objc_msgSend(a2, "position") + 1, v8 <= objc_msgSend(a2, "length")))
      {
        v9 = [a2 data];
        [v9 getBytes:&v13 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v6 |= (v13 & 0x7F) << v4;
      if ((v13 & 0x80) == 0)
      {
        break;
      }

      v4 += 7;
      if (v5++ >= 9)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v11 = [a2 hasError] ? 0 : v6;
LABEL_15:
    if (([a2 hasError] & 1) != 0 || (v11 & 7) == 4)
    {
      break;
    }

    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoSecureElementGetAppletsResponseReadFrom(_BYTE *a1, void *a2)
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

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v51) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v51 & 0x7F) << v5;
        if ((v51 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 & 7;
      if (v13 == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v14 = v12 >> 3;
      if ((v12 >> 3) <= 2)
      {
        if (v14 == 1)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          a1[76] |= 1u;
          while (1)
          {
            LOBYTE(v51) = 0;
            v34 = [a2 position] + 1;
            if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
            {
              v36 = [a2 data];
              [v36 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v33 |= (v51 & 0x7F) << v31;
            if ((v51 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v11 = v32++ >= 9;
            if (v11)
            {
              LOBYTE(v37) = 0;
              goto LABEL_71;
            }
          }

          v37 = (v33 != 0) & ~[a2 hasError];
LABEL_71:
          a1[72] = v37;
          goto LABEL_92;
        }

        if (v14 == 2)
        {
          v15 = PBReaderReadString();
          if (v15)
          {
            [a1 addCardAIDs:v15];
          }

          goto LABEL_27;
        }
      }

      else
      {
        switch(v14)
        {
          case 3:
            if (v13 != 2)
            {
              v38 = 0;
              v39 = 0;
              v40 = 0;
              while (1)
              {
                LOBYTE(v51) = 0;
                v41 = [a2 position] + 1;
                if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
                {
                  v43 = [a2 data];
                  [v43 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v40 |= (v51 & 0x7F) << v38;
                if ((v51 & 0x80) == 0)
                {
                  goto LABEL_90;
                }

                v38 += 7;
                v11 = v39++ >= 9;
                if (v11)
                {
                  goto LABEL_91;
                }
              }
            }

            v51 = 0;
            v52 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v17 = [a2 position];
              if (v17 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                goto LABEL_69;
              }

              v18 = 0;
              v19 = 0;
              v20 = 0;
              while (1)
              {
                v53 = 0;
                v21 = [a2 position] + 1;
                if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
                {
                  v23 = [a2 data];
                  [v23 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v20 |= (v53 & 0x7F) << v18;
                if ((v53 & 0x80) == 0)
                {
                  break;
                }

                v18 += 7;
                v11 = v19++ >= 9;
                if (v11)
                {
                  goto LABEL_42;
                }
              }

              [a2 hasError];
LABEL_42:
              PBRepeatedUInt32Add();
            }

          case 4:
            if (v13 != 2)
            {
              v44 = 0;
              v45 = 0;
              v46 = 0;
              while (1)
              {
                LOBYTE(v51) = 0;
                v47 = [a2 position] + 1;
                if (v47 >= [a2 position] && (v48 = objc_msgSend(a2, "position") + 1, v48 <= objc_msgSend(a2, "length")))
                {
                  v49 = [a2 data];
                  [v49 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v46 |= (v51 & 0x7F) << v44;
                if ((v51 & 0x80) == 0)
                {
                  break;
                }

                v44 += 7;
                v11 = v45++ >= 9;
                if (v11)
                {
                  goto LABEL_91;
                }
              }

LABEL_90:
              [a2 hasError];
LABEL_91:
              PBRepeatedUInt32Add();
              goto LABEL_92;
            }

            v51 = 0;
            v52 = 0;
            result = PBReaderPlaceMark();
            if (!result)
            {
              return result;
            }

            while (1)
            {
              v24 = [a2 position];
              if (v24 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
              {
                break;
              }

              v25 = 0;
              v26 = 0;
              v27 = 0;
              while (1)
              {
                v53 = 0;
                v28 = [a2 position] + 1;
                if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
                {
                  v30 = [a2 data];
                  [v30 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v27 |= (v53 & 0x7F) << v25;
                if ((v53 & 0x80) == 0)
                {
                  break;
                }

                v25 += 7;
                v11 = v26++ >= 9;
                if (v11)
                {
                  goto LABEL_57;
                }
              }

              [a2 hasError];
LABEL_57:
              PBRepeatedUInt32Add();
            }

LABEL_69:
            PBReaderRecallMark();
            goto LABEL_92;
          case 5:
            v15 = PBReaderReadData();
            if (v15)
            {
              [a1 addAppletsBytes:v15];
            }

LABEL_27:

            goto LABEL_92;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_92:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoInitializeCloudStoreIfNecessaryWithHandlerResponseReadFrom(uint64_t a1, void *a2)
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

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = PBReaderReadData();
        v28 = *(a1 + 8);
        *(a1 + 8) = v27;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 20) |= 2u;
          while (1)
          {
            v33 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v33 & 0x7F) << v21;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_42;
            }
          }

          v20 = (v23 != 0) & ~[a2 hasError];
LABEL_42:
          v30 = 17;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_46;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_44;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_44:
          v30 = 16;
        }

        *(a1 + v30) = v20;
      }

LABEL_46:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoResetApplePayManateeViewResponseReadFrom(uint64_t a1, void *a2)
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

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v27 = PBReaderReadData();
        v28 = *(a1 + 8);
        *(a1 + 8) = v27;
      }

      else
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 20) |= 2u;
          while (1)
          {
            v33 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v33 & 0x7F) << v21;
            if ((v33 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_42;
            }
          }

          v20 = (v23 != 0) & ~[a2 hasError];
LABEL_42:
          v30 = 17;
        }

        else
        {
          if (v13 != 1)
          {
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_46;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 20) |= 1u;
          while (1)
          {
            v34 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v34 & 0x7F) << v14;
            if ((v34 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_44;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_44:
          v30 = 16;
        }

        *(a1 + v30) = v20;
      }

LABEL_46:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCarKeyRejectInvitationRequestReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__CFString *sub_25B49B594()
{
  v1 = *(v0 - 24);
  v2 = *MEMORY[0x277D85DE8];
  return &stru_286C934F8;
}

__CFString *sub_25B49B68C()
{
  v1 = *(v0 - 24);
  v2 = *MEMORY[0x277D85DE8];
  return &stru_286C934F8;
}

uint64_t NPKProtoStandaloneRequestHeaderReadFrom(_DWORD *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27[0] & 0x7F) << v5;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 109)
      {
        break;
      }

      if (v13 == 110)
      {
        v14 = PBReaderReadString();
        v15 = 8;
        goto LABEL_38;
      }

      if (v13 != 120)
      {
        goto LABEL_26;
      }

      v16 = objc_alloc_init(NPKProtoStandalonePaymentHeroImage);
      [a1 addCachedHeroImages:v16];
      v27[0] = 0;
      v27[1] = 0;
      if (!PBReaderPlaceMark() || !NPKProtoStandalonePaymentHeroImageReadFrom(v16, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v25 = [a2 position];
      if (v25 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 100)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      while (1)
      {
        LOBYTE(v27[0]) = 0;
        v20 = [a2 position] + 1;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
        {
          v22 = [a2 data];
          [v22 getBytes:v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v19 |= (v27[0] & 0x7F) << v17;
        if ((v27[0] & 0x80) == 0)
        {
          break;
        }

        v17 += 7;
        v11 = v18++ >= 9;
        if (v11)
        {
          v23 = 0;
          goto LABEL_42;
        }
      }

      if ([a2 hasError])
      {
        v23 = 0;
      }

      else
      {
        v23 = v19;
      }

LABEL_42:
      a1[4] = v23;
      goto LABEL_43;
    }

    if (v13 == 105)
    {
      v14 = PBReaderReadString();
      v15 = 6;
LABEL_38:
      v24 = *&a1[v15];
      *&a1[v15] = v14;

      goto LABEL_43;
    }

LABEL_26:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_43;
  }

  return [a2 hasError] ^ 1;
}

void sub_25B49DA24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B49DC10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_25B49EF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B49F2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B49F7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B49FBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B4A0444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id location)
{
  objc_destroyWeak(&a35);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_25B4A1680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak((v23 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak((v25 - 104));
  _Unwind_Resume(a1);
}

uint64_t NPKProtoProvisionHomeKeyPassForSerialNumbersResponseReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        if (v13)
        {
          [a1 addProvisionedPassesData:v13];
        }

        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_24:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadData();
    v13 = a1[1];
    a1[1] = v14;
LABEL_22:

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t NPKProtoCarKeyRetryActivationCodeResponseReadFrom(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}