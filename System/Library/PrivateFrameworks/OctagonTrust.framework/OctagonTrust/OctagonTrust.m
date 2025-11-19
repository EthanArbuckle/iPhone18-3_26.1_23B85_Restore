uint64_t OTICDPRecordSilentContextReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(OTCDPRecoveryInformation);
        objc_storeStrong((a1 + 16), v13);
        v16 = 0xAAAAAAAAAAAAAAAALL;
        v17 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !OTCDPRecoveryInformationReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(OTEscrowAuthenticationInformation);
    objc_storeStrong((a1 + 8), v13);
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    if (!PBReaderPlaceMark() || !OTEscrowAuthenticationInformationReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t OTWalrusReadFrom(uint64_t a1, void *a2)
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

uint64_t OTSecureElementPeerIdentityReadFrom(uint64_t a1, void *a2)
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
        v13 = &OBJC_IVAR___OTSecureElementPeerIdentity__peerData;
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

    v13 = &OBJC_IVAR___OTSecureElementPeerIdentity__peerIdentifier;
    goto LABEL_21;
  }

  return [a2 hasError] ^ 1;
}

uint64_t OTEscrowAuthenticationInformationReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 4)
      {
        break;
      }

      if (v13 > 6)
      {
        switch(v13)
        {
          case 7:
            v14 = PBReaderReadString();
            v15 = 16;
            break;
          case 8:
            v14 = PBReaderReadString();
            v15 = 32;
            break;
          case 9:
            v14 = PBReaderReadString();
            v15 = 40;
            break;
          default:
            goto LABEL_55;
        }

LABEL_54:
        v29 = *(a1 + v15);
        *(a1 + v15) = v14;

        goto LABEL_62;
      }

      if (v13 == 5)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 68) |= 1u;
        while (1)
        {
          v35 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v35 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v35 & 0x7F) << v23;
          if ((v35 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_60;
          }
        }

        v22 = (v25 != 0) & ~[a2 hasError];
LABEL_60:
        v31 = 64;
      }

      else
      {
        if (v13 != 6)
        {
LABEL_55:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_62;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 68) |= 2u;
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
            goto LABEL_58;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_58:
        v31 = 65;
      }

      *(a1 + v31) = v22;
LABEL_62:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v14 = PBReaderReadString();
        v15 = 8;
      }

      else
      {
        if (v13 != 4)
        {
          goto LABEL_55;
        }

        v14 = PBReaderReadString();
        v15 = 56;
      }
    }

    else if (v13 == 1)
    {
      v14 = PBReaderReadString();
      v15 = 48;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_55;
      }

      v14 = PBReaderReadString();
      v15 = 24;
    }

    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

uint64_t OTEscrowRecordMetadataReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v34) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34 & 0x7F) << v5;
        if ((v34 & 0x80) == 0)
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
      if ((v12 >> 3) <= 5)
      {
        if (v13 <= 2)
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadData();
            v15 = 24;
            goto LABEL_62;
          }

          if (v13 == 2)
          {
            v23 = objc_alloc_init(OTEscrowRecordMetadataClientMetadata);
            objc_storeStrong((a1 + 56), v23);
            v34 = 0xAAAAAAAAAAAAAAAALL;
            v35 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !OTEscrowRecordMetadataClientMetadataReadFrom(v23, a2))
            {
LABEL_76:

              return 0;
            }

            goto LABEL_46;
          }
        }

        else
        {
          switch(v13)
          {
            case 3:
              v24 = 0;
              v25 = 0;
              v26 = 0;
              *(a1 + 96) |= 2u;
              while (1)
              {
                LOBYTE(v34) = 0;
                v27 = [a2 position] + 1;
                if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 1, v28 <= objc_msgSend(a2, "length")))
                {
                  v29 = [a2 data];
                  [v29 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v26 |= (v34 & 0x7F) << v24;
                if ((v34 & 0x80) == 0)
                {
                  break;
                }

                v24 += 7;
                v11 = v25++ >= 9;
                if (v11)
                {
                  v22 = 0;
                  goto LABEL_72;
                }
              }

              if ([a2 hasError])
              {
                v22 = 0;
              }

              else
              {
                v22 = v26;
              }

LABEL_72:
              v31 = 16;
              goto LABEL_73;
            case 4:
              v14 = PBReaderReadString();
              v15 = 32;
              goto LABEL_62;
            case 5:
              v16 = 0;
              v17 = 0;
              v18 = 0;
              *(a1 + 96) |= 1u;
              while (1)
              {
                LOBYTE(v34) = 0;
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
                  v22 = 0;
                  goto LABEL_68;
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

LABEL_68:
              v31 = 8;
LABEL_73:
              *(a1 + v31) = v22;
              goto LABEL_74;
          }
        }
      }

      else if (v13 > 8)
      {
        switch(v13)
        {
          case 9:
            v14 = PBReaderReadString();
            v15 = 88;
            goto LABEL_62;
          case 0xA:
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_62;
          case 0xB:
            v23 = objc_alloc_init(OTEscrowRecordMetadataPasscodeGeneration);
            objc_storeStrong((a1 + 72), v23);
            v34 = 0xAAAAAAAAAAAAAAAALL;
            v35 = 0xAAAAAAAAAAAAAAAALL;
            if (!PBReaderPlaceMark() || !OTEscrowRecordMetadataPasscodeGenerationReadFrom(v23, a2))
            {
              goto LABEL_76;
            }

LABEL_46:
            PBReaderRecallMark();

            goto LABEL_74;
        }
      }

      else
      {
        switch(v13)
        {
          case 6:
            v14 = PBReaderReadData();
            v15 = 64;
            goto LABEL_62;
          case 7:
            v14 = PBReaderReadData();
            v15 = 80;
            goto LABEL_62;
          case 8:
            v14 = PBReaderReadString();
            v15 = 40;
LABEL_62:
            v30 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_74;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_74:
      v32 = [a2 position];
    }

    while (v32 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t OTAccountSettingsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(OTWalrus);
        objc_storeStrong((a1 + 8), v13);
        v16 = 0xAAAAAAAAAAAAAAAALL;
        v17 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !OTWalrusReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(OTWebAccess);
    objc_storeStrong((a1 + 16), v13);
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    if (!PBReaderPlaceMark() || !OTWebAccessReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t OTEscrowRecordMetadataClientMetadataReadFrom(uint64_t a1, void *a2)
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
        v51 = 0;
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
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 6)
      {
        if (v13 > 9)
        {
          switch(v13)
          {
            case 0xA:
              v21 = PBReaderReadString();
              v22 = 88;
              break;
            case 0xB:
              v21 = PBReaderReadString();
              v22 = 96;
              break;
            case 0xC:
              v23 = 0;
              v24 = 0;
              v25 = 0;
              *(a1 + 104) |= 1u;
              while (1)
              {
                v52 = 0;
                v26 = [a2 position] + 1;
                if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
                {
                  v28 = [a2 data];
                  [v28 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v25 |= (v52 & 0x7F) << v23;
                if ((v52 & 0x80) == 0)
                {
                  break;
                }

                v23 += 7;
                v11 = v24++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_94;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v25;
              }

LABEL_94:
              v49 = 8;
              goto LABEL_107;
            default:
LABEL_85:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_108;
          }
        }

        else
        {
          switch(v13)
          {
            case 7:
              v21 = PBReaderReadString();
              v22 = 64;
              break;
            case 8:
              v21 = PBReaderReadString();
              v22 = 72;
              break;
            case 9:
              v21 = PBReaderReadString();
              v22 = 80;
              break;
            default:
              goto LABEL_85;
          }
        }
      }

      else
      {
        if (v13 <= 3)
        {
          switch(v13)
          {
            case 1:
              v29 = 0;
              v30 = 0;
              v31 = 0;
              *(a1 + 104) |= 2u;
              while (1)
              {
                v56 = 0;
                v32 = [a2 position] + 1;
                if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
                {
                  v34 = [a2 data];
                  [v34 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v31 |= (v56 & 0x7F) << v29;
                if ((v56 & 0x80) == 0)
                {
                  break;
                }

                v29 += 7;
                v11 = v30++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_98;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v31;
              }

LABEL_98:
              v49 = 16;
              break;
            case 2:
              v41 = 0;
              v42 = 0;
              v43 = 0;
              *(a1 + 104) |= 4u;
              while (1)
              {
                v55 = 0;
                v44 = [a2 position] + 1;
                if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
                {
                  v46 = [a2 data];
                  [v46 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v43 |= (v55 & 0x7F) << v41;
                if ((v55 & 0x80) == 0)
                {
                  break;
                }

                v41 += 7;
                v11 = v42++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_106;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v43;
              }

LABEL_106:
              v49 = 24;
              break;
            case 3:
              v14 = 0;
              v15 = 0;
              v16 = 0;
              *(a1 + 104) |= 8u;
              while (1)
              {
                v54 = 0;
                v17 = [a2 position] + 1;
                if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
                {
                  v19 = [a2 data];
                  [v19 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v16 |= (v54 & 0x7F) << v14;
                if ((v54 & 0x80) == 0)
                {
                  break;
                }

                v14 += 7;
                v11 = v15++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_90;
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

LABEL_90:
              v49 = 32;
              break;
            default:
              goto LABEL_85;
          }

          goto LABEL_107;
        }

        switch(v13)
        {
          case 4:
            v35 = 0;
            v36 = 0;
            v37 = 0;
            *(a1 + 104) |= 0x10u;
            while (1)
            {
              v53 = 0;
              v38 = [a2 position] + 1;
              if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
              {
                v40 = [a2 data];
                [v40 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v37 |= (v53 & 0x7F) << v35;
              if ((v53 & 0x80) == 0)
              {
                break;
              }

              v35 += 7;
              v11 = v36++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_102;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v37;
            }

LABEL_102:
            v49 = 40;
LABEL_107:
            *(a1 + v49) = v20;
            goto LABEL_108;
          case 5:
            v21 = PBReaderReadString();
            v22 = 48;
            break;
          case 6:
            v21 = PBReaderReadString();
            v22 = 56;
            break;
          default:
            goto LABEL_85;
        }
      }

      v47 = *(a1 + v22);
      *(a1 + v22) = v21;

LABEL_108:
      v50 = [a2 position];
    }

    while (v50 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t OTEscrowRecordMetadataPasscodeGenerationReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 16) |= 1u;
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

uint64_t OTEscrowMoveRequestContextReadFrom(uint64_t a1, void *a2)
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
        v14 = off_1E833E718[v13];
        v15 = PBReaderReadString();
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

uint64_t OTWebAccessReadFrom(uint64_t a1, void *a2)
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

uint64_t OTCurrentSecureElementIdentitiesReadFrom(char *a1, void *a2)
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
        LOBYTE(v18[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18[0] & 0x7F) << v5;
        if ((v18[0] & 0x80) == 0)
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
        v14 = objc_alloc_init(OTSecureElementPeerIdentity);
        v15 = 16;
      }

      else
      {
        if (v13 == 2)
        {
          v14 = objc_alloc_init(OTSecureElementPeerIdentity);
          [a1 addTrustedPeerSecureElementIdentities:v14];
          goto LABEL_24;
        }

        if (v13 != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_28;
        }

        v14 = objc_alloc_init(OTSecureElementPeerIdentity);
        v15 = 8;
      }

      objc_storeStrong(&a1[v15], v14);
LABEL_24:
      v18[0] = 0xAAAAAAAAAAAAAAAALL;
      v18[1] = 0xAAAAAAAAAAAAAAAALL;
      if (!PBReaderPlaceMark() || !OTSecureElementPeerIdentityReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_28:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_1C943B8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1C943C94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C943CD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C943D1A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C943D5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C943DA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C943DDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C943E1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
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
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C943E694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
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
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C943EB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1C943F008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1C943F4DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C9440C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C944165C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C9441A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C9442F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C9443558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t OTCDPRecoveryInformationReadFrom(uint64_t a1, void *a2)
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
        v57 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v57 & 0x7F) << v5;
        if ((v57 & 0x80) == 0)
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
        if (v13 > 6)
        {
          if (v13 == 7)
          {
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 32) |= 0x20u;
            while (1)
            {
              v59 = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v59 & 0x7F) << v48;
              if ((v59 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_90;
              }
            }

            v20 = (v50 != 0) & ~[a2 hasError];
LABEL_90:
            v55 = 29;
          }

          else
          {
            if (v13 != 8)
            {
LABEL_85:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_100;
            }

            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 32) |= 2u;
            while (1)
            {
              v58 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v58 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v58 & 0x7F) << v33;
              if ((v58 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                LOBYTE(v20) = 0;
                goto LABEL_98;
              }
            }

            v20 = (v35 != 0) & ~[a2 hasError];
LABEL_98:
            v55 = 25;
          }
        }

        else if (v13 == 5)
        {
          v41 = 0;
          v42 = 0;
          v43 = 0;
          *(a1 + 32) |= 4u;
          while (1)
          {
            v61 = 0;
            v44 = [a2 position] + 1;
            if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
            {
              v46 = [a2 data];
              [v46 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v43 |= (v61 & 0x7F) << v41;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v41 += 7;
            v11 = v42++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_88;
            }
          }

          v20 = (v43 != 0) & ~[a2 hasError];
LABEL_88:
          v55 = 26;
        }

        else
        {
          if (v13 != 6)
          {
            goto LABEL_85;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 32) |= 1u;
          while (1)
          {
            v60 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v60 & 0x7F) << v21;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_94;
            }
          }

          v20 = (v23 != 0) & ~[a2 hasError];
LABEL_94:
          v55 = 24;
        }

        goto LABEL_99;
      }

      if (v13 > 2)
      {
        if (v13 != 3)
        {
          if (v13 != 4)
          {
            goto LABEL_85;
          }

          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 32) |= 0x10u;
          while (1)
          {
            v62 = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v62 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v62 & 0x7F) << v27;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_96;
            }
          }

          v20 = (v29 != 0) & ~[a2 hasError];
LABEL_96:
          v55 = 28;
          goto LABEL_99;
        }

        v39 = PBReaderReadString();
        v40 = 8;
      }

      else
      {
        if (v13 != 1)
        {
          if (v13 != 2)
          {
            goto LABEL_85;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 32) |= 8u;
          while (1)
          {
            v63 = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v63 & 0x7F) << v14;
            if ((v63 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_92;
            }
          }

          v20 = (v16 != 0) & ~[a2 hasError];
LABEL_92:
          v55 = 27;
LABEL_99:
          *(a1 + v55) = v20;
          goto LABEL_100;
        }

        v39 = PBReaderReadString();
        v40 = 16;
      }

      v47 = *(a1 + v40);
      *(a1 + v40) = v39;

LABEL_100:
      v56 = [a2 position];
    }

    while (v56 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t OTEscrowRecordReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v71[0]) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:v71 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v71[0] & 0x7F) << v5;
      if ((v71[0] & 0x80) == 0)
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
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 108) |= 2u;
        while (1)
        {
          LOBYTE(v71[0]) = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:v71 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v71[0] & 0x7F) << v13;
          if ((v71[0] & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
LABEL_120:
            v68 = 16;
            goto LABEL_134;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v15;
        }

        goto LABEL_120;
      case 2u:
        v48 = 0;
        v49 = 0;
        v50 = 0;
        *(a1 + 108) |= 4u;
        while (1)
        {
          LOBYTE(v71[0]) = 0;
          v51 = [a2 position] + 1;
          if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
          {
            v53 = [a2 data];
            [v53 getBytes:v71 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v50 |= (v71[0] & 0x7F) << v48;
          if ((v71[0] & 0x80) == 0)
          {
            break;
          }

          v48 += 7;
          v11 = v49++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_124;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v50;
        }

LABEL_124:
        v68 = 24;
        goto LABEL_134;
      case 3u:
        v47 = objc_alloc_init(OTEscrowRecordMetadata);
        objc_storeStrong((a1 + 40), v47);
        v71[0] = 0xAAAAAAAAAAAAAAAALL;
        v71[1] = 0xAAAAAAAAAAAAAAAALL;
        if (PBReaderPlaceMark() && OTEscrowRecordMetadataReadFrom(v47, a2))
        {
          PBReaderRecallMark();

LABEL_135:
          v69 = [a2 position];
          if (v69 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

        return 0;
      case 4u:
        v20 = PBReaderReadString();
        v21 = 64;
        goto LABEL_89;
      case 9u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 108) |= 8u;
        while (1)
        {
          LOBYTE(v71[0]) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:v71 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v71[0] & 0x7F) << v29;
          if ((v71[0] & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_108;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v31;
        }

LABEL_108:
        v68 = 32;
        goto LABEL_134;
      case 0xAu:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 108) |= 0x10u;
        while (1)
        {
          LOBYTE(v71[0]) = 0;
          v38 = [a2 position] + 1;
          if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 1, v39 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:v71 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v37 |= (v71[0] & 0x7F) << v35;
          if ((v71[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v11 = v36++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_112;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v37;
        }

LABEL_112:
        v67 = 80;
        goto LABEL_129;
      case 0xBu:
        v20 = PBReaderReadString();
        v21 = 72;
        goto LABEL_89;
      case 0xCu:
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 108) |= 0x40u;
        while (1)
        {
          LOBYTE(v71[0]) = 0;
          v57 = [a2 position] + 1;
          if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
          {
            v59 = [a2 data];
            [v59 getBytes:v71 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v56 |= (v71[0] & 0x7F) << v54;
          if ((v71[0] & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v11 = v55++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_128;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v56;
        }

LABEL_128:
        v67 = 88;
        goto LABEL_129;
      case 0xDu:
        v61 = 0;
        v62 = 0;
        v63 = 0;
        *(a1 + 108) |= 1u;
        while (1)
        {
          LOBYTE(v71[0]) = 0;
          v64 = [a2 position] + 1;
          if (v64 >= [a2 position] && (v65 = objc_msgSend(a2, "position") + 1, v65 <= objc_msgSend(a2, "length")))
          {
            v66 = [a2 data];
            [v66 getBytes:v71 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v63 |= (v71[0] & 0x7F) << v61;
          if ((v71[0] & 0x80) == 0)
          {
            break;
          }

          v61 += 7;
          v11 = v62++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_133;
          }
        }

        if ([a2 hasError])
        {
          v19 = 0;
        }

        else
        {
          v19 = v63;
        }

LABEL_133:
        v68 = 8;
LABEL_134:
        *(a1 + v68) = v19;
        goto LABEL_135;
      case 0xEu:
        v20 = PBReaderReadString();
        v21 = 96;
        goto LABEL_89;
      case 0xFu:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 108) |= 0x20u;
        while (1)
        {
          LOBYTE(v71[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v71 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v71[0] & 0x7F) << v22;
          if ((v71[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_104;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_104:
        v67 = 84;
        goto LABEL_129;
      case 0x10u:
        v41 = 0;
        v42 = 0;
        v43 = 0;
        *(a1 + 108) |= 0x80u;
        while (1)
        {
          LOBYTE(v71[0]) = 0;
          v44 = [a2 position] + 1;
          if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 1, v45 <= objc_msgSend(a2, "length")))
          {
            v46 = [a2 data];
            [v46 getBytes:v71 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v43 |= (v71[0] & 0x7F) << v41;
          if ((v71[0] & 0x80) == 0)
          {
            break;
          }

          v41 += 7;
          v11 = v42++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_116;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v43;
        }

LABEL_116:
        v67 = 104;
LABEL_129:
        *(a1 + v67) = v28;
        goto LABEL_135;
      case 0x11u:
        v20 = PBReaderReadString();
        v21 = 56;
        goto LABEL_89;
      case 0x12u:
        v20 = PBReaderReadString();
        v21 = 48;
LABEL_89:
        v60 = *(a1 + v21);
        *(a1 + v21) = v20;

        goto LABEL_135;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_135;
    }
  }
}

uint64_t OTICDPRecordContextReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
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
        v13 = objc_alloc_init(OTCDPRecoveryInformation);
        objc_storeStrong((a1 + 16), v13);
        v16 = 0xAAAAAAAAAAAAAAAALL;
        v17 = 0xAAAAAAAAAAAAAAAALL;
        if (!PBReaderPlaceMark() || !OTCDPRecoveryInformationReadFrom(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(OTEscrowAuthenticationInformation);
    objc_storeStrong((a1 + 8), v13);
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v17 = 0xAAAAAAAAAAAAAAAALL;
    if (!PBReaderPlaceMark() || !OTEscrowAuthenticationInformationReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

double gotLoadHelper_x8__OBJC_CLASS___SecureBackup(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kEscrowServiceRecordDataKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupAuthenticationAppleID(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupAuthenticationAuthToken(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupAuthenticationDSID(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupAuthenticationEscrowProxyURL(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupAuthenticationPassword(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupAuthenticationiCloudEnvironment(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupBagPasswordKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupBottleIDKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupBuildVersionKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupClientMetadataKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupContainsiCDPDataKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupCoolOffEndKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x10__kSecureBackupErrorDomain(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupEscrowDateKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupEscrowedSPKIKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupFMiPRecoveryKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupFMiPUUIDKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupIDMSRecoveryKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupKeybagDigestKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupMetadataKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupNonViableRepairKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupNumericPassphraseLengthKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupPasscodeGenerationKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupPassphraseKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupPeerInfoDataKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupPeerInfoSerialNumberKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupRecordIDKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupRecordLabelKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupRecordStatusKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupRecoveryKeyKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupRecoveryStatusKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupRemainingAttemptsKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupSerialNumberKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupSilentRecoveryAttemptKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupUseCachedPassphraseKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupUsesComplexPassphraseKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupUsesMultipleiCSCKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupUsesNumericPassphraseKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kSecureBackupUsesRecoveryKeyKey(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CloudServices))
  {
    return dlopenHelper_CloudServices(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_CloudServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CloudServices.framework/CloudServices", 0);
  atomic_store(1u, &dlopenHelperFlag_CloudServices);
  return a1;
}