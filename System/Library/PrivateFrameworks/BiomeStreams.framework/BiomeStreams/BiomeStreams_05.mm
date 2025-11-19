uint64_t BMPBHomeKitClientActionSetEventReadFrom(id *a1, void *a2)
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
        LOBYTE(v19[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19[0] & 0x7F) << v5;
        if ((v19[0] & 0x80) == 0)
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
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addAssociatedAccessoryUniqueIdentifiers:v16];
            }

            goto LABEL_36;
          case 5:
            v14 = PBReaderReadString();
            v15 = 1;
LABEL_35:
            v16 = a1[v15];
            a1[v15] = v14;
LABEL_36:

            goto LABEL_37;
          case 6:
            v14 = PBReaderReadString();
            v15 = 6;
            goto LABEL_35;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v16 = objc_alloc_init(BMPBHomeKitClientBase);
            objc_storeStrong(a1 + 5, v16);
            v19[0] = 0;
            v19[1] = 0;
            if (!PBReaderPlaceMark() || !BMPBHomeKitClientBaseReadFrom(v16, a2))
            {

              return 0;
            }

            PBReaderRecallMark();
            goto LABEL_36;
          case 2:
            v14 = PBReaderReadString();
            v15 = 3;
            goto LABEL_35;
          case 3:
            v14 = PBReaderReadString();
            v15 = 2;
            goto LABEL_35;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_37:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BMPBFindMyLocationChangeEventReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v41) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v41 & 0x7F) << v5;
        if ((v41 & 0x80) == 0)
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
        break;
      }

      switch(v13)
      {
        case 1:
          v21 = PBReaderReadString();
          v22 = 32;
LABEL_35:
          v23 = *(a1 + v22);
          *(a1 + v22) = v21;

          goto LABEL_67;
        case 2:
          v27 = 0;
          v28 = 0;
          v29 = 0;
          *(a1 + 56) |= 8u;
          while (1)
          {
            LOBYTE(v41) = 0;
            v30 = [a2 position] + 1;
            if (v30 >= [a2 position] && (v31 = objc_msgSend(a2, "position") + 1, v31 <= objc_msgSend(a2, "length")))
            {
              v32 = [a2 data];
              [v32 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v29 |= (v41 & 0x7F) << v27;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            v11 = v28++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_60;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v29;
          }

LABEL_60:
          v35 = 40;
          break;
        case 3:
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            LOBYTE(v41) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v41 & 0x7F) << v14;
            if ((v41 & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_56;
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

LABEL_56:
          v35 = 24;
          break;
        default:
          goto LABEL_39;
      }

      *(a1 + v35) = v20;
LABEL_67:
      v40 = [a2 position];
      if (v40 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 4)
    {
      *(a1 + 56) |= 1u;
      v41 = 0;
      v24 = [a2 position] + 8;
      if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
      {
        v36 = [a2 data];
        [v36 getBytes:&v41 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v37 = v41;
      v38 = 8;
      goto LABEL_66;
    }

    if (v13 == 5)
    {
      *(a1 + 56) |= 2u;
      v41 = 0;
      v33 = [a2 position] + 8;
      if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 8, v34 <= objc_msgSend(a2, "length")))
      {
        v39 = [a2 data];
        [v39 getBytes:&v41 range:{objc_msgSend(a2, "position"), 8}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
      }

      else
      {
        [a2 _setError];
      }

      v37 = v41;
      v38 = 16;
LABEL_66:
      *(a1 + v38) = v37;
      goto LABEL_67;
    }

    if (v13 != 6)
    {
LABEL_39:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_67;
    }

    v21 = PBReaderReadString();
    v22 = 48;
    goto LABEL_35;
  }

  return [a2 hasError] ^ 1;
}

uint64_t BMPBCommunicationSafetyResultEventReadFrom(uint64_t a1, void *a2)
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
        v43 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43 & 0x7F) << v5;
        if ((v43 & 0x80) == 0)
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
          *(a1 + 112) |= 1u;
          v42 = 0;
          v13 = [a2 position] + 8;
          if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
          {
            v40 = [a2 data];
            [v40 getBytes:&v42 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v42;
          goto LABEL_79;
        case 2u:
          v15 = PBReaderReadString();
          v16 = 16;
          goto LABEL_78;
        case 3u:
          v15 = PBReaderReadString();
          v16 = 80;
          goto LABEL_78;
        case 4u:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          *(a1 + 112) |= 4u;
          while (1)
          {
            v46 = 0;
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
              goto LABEL_71;
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

LABEL_71:
          v37 = 28;
          goto LABEL_76;
        case 5u:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          *(a1 + 112) |= 8u;
          while (1)
          {
            v45 = 0;
            v20 = [a2 position] + 1;
            if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 1, v21 <= objc_msgSend(a2, "length")))
            {
              v22 = [a2 data];
              [v22 getBytes:&v45 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v19 |= (v45 & 0x7F) << v17;
            if ((v45 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v11 = v18++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_67;
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

LABEL_67:
          v37 = 32;
          goto LABEL_76;
        case 6u:
          v30 = 0;
          v31 = 0;
          v32 = 0;
          *(a1 + 112) |= 2u;
          while (1)
          {
            v44 = 0;
            v33 = [a2 position] + 1;
            if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
            {
              v35 = [a2 data];
              [v35 getBytes:&v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v32 |= (v44 & 0x7F) << v30;
            if ((v44 & 0x80) == 0)
            {
              break;
            }

            v30 += 7;
            v11 = v31++ >= 9;
            if (v11)
            {
              v23 = 0;
              goto LABEL_75;
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

LABEL_75:
          v37 = 24;
LABEL_76:
          *(a1 + v37) = v23;
          goto LABEL_79;
        case 7u:
          v36 = PBReaderReadString();
          if (v36)
          {
            [a1 addContactHandles:v36];
          }

          goto LABEL_79;
        case 8u:
          v15 = PBReaderReadString();
          v16 = 48;
          goto LABEL_78;
        case 9u:
          v15 = PBReaderReadString();
          v16 = 64;
          goto LABEL_78;
        case 0xAu:
          if (*(a1 + 116) == 1)
          {
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            v15 = PBReaderReadData();
            v16 = 88;
LABEL_78:
            v38 = *(a1 + v16);
            *(a1 + v16) = v15;
          }

LABEL_79:
          v39 = [a2 position];
          if (v39 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          break;
        case 0xBu:
          v15 = PBReaderReadString();
          v16 = 104;
          goto LABEL_78;
        case 0xCu:
          v15 = PBReaderReadString();
          v16 = 96;
          goto LABEL_78;
        case 0xDu:
          v15 = PBReaderReadString();
          v16 = 56;
          goto LABEL_78;
        case 0xEu:
          v15 = PBReaderReadString();
          v16 = 72;
          goto LABEL_78;
        default:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_79;
      }
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t BMPBLastAlarmEventTypeFromType(unint64_t a1, _BYTE *a2)
{
  v2 = a1;
  if (a1 >= 0xB)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      BMPBLastAlarmEventTypeFromType_cold_1(v2);
    }

    if (a2)
    {
      *a2 = 1;
    }

    return 0xFFFFFFFFLL;
  }

  return v2;
}

uint64_t BMPBAlarmEventReadFrom(uint64_t a1, void *a2)
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
        v39 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v39 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v39 & 0x7F) << v5;
        if ((v39 & 0x80) == 0)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 != 3)
      {
        if (v13 != 4)
        {
LABEL_40:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_63;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v41 = 0;
          v24 = [a2 position] + 1;
          if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v41 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v23 |= (v41 & 0x7F) << v21;
          if ((v41 & 0x80) == 0)
          {
            break;
          }

          v21 += 7;
          v11 = v22++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_59;
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

LABEL_59:
        v37 = 20;
LABEL_60:
        *(a1 + v37) = v20;
        goto LABEL_63;
      }

      v35 = PBReaderReadString();
      v36 = *(a1 + 8);
      *(a1 + 8) = v35;

LABEL_63:
      v38 = [a2 position];
      if (v38 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v28 = 0;
      v29 = 0;
      v30 = 0;
      *(a1 + 28) |= 4u;
      while (1)
      {
        v40 = 0;
        v31 = [a2 position] + 1;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:&v40 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v30 |= (v40 & 0x7F) << v28;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v28 += 7;
        v11 = v29++ >= 9;
        if (v11)
        {
          LOBYTE(v34) = 0;
          goto LABEL_62;
        }
      }

      v34 = (v30 != 0) & ~[a2 hasError];
LABEL_62:
      *(a1 + 24) = v34;
      goto LABEL_63;
    }

    if (v13 != 2)
    {
      goto LABEL_40;
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    *(a1 + 28) |= 1u;
    while (1)
    {
      v42 = 0;
      v17 = [a2 position] + 1;
      if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
      {
        v19 = [a2 data];
        [v19 getBytes:&v42 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v16 |= (v42 & 0x7F) << v14;
      if ((v42 & 0x80) == 0)
      {
        break;
      }

      v14 += 7;
      v11 = v15++ >= 9;
      if (v11)
      {
        v20 = 0;
        goto LABEL_55;
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

LABEL_55:
    v37 = 16;
    goto LABEL_60;
  }

  return [a2 hasError] ^ 1;
}

void sub_184A12ED4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 64));
  objc_destroyWeak((v3 - 56));
  _Unwind_Resume(a1);
}

void sub_184A134B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_184A13D44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t BMPBNowPlayingOutputDeviceReadFrom(uint64_t a1, void *a2)
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
        v27 = PBReaderReadString();
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
          *(a1 + 24) |= 1u;
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
              v20 = 0;
              goto LABEL_44;
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

LABEL_44:
          v30 = 16;
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

            goto LABEL_50;
          }

          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 24) |= 2u;
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
          v30 = 20;
        }

        *(a1 + v30) = v20;
      }

LABEL_50:
      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BMPBParsecSearchTopicReadFrom(uint64_t a1, void *a2)
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
        v21 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v21 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v21 & 0x7F) << v5;
        if ((v21 & 0x80) == 0)
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

      if ((v12 >> 3) == 2)
      {
        *(a1 + 20) |= 1u;
        v20 = 0;
        v15 = [a2 position] + 4;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
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

      v19 = [a2 position];
    }

    while (v19 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t BMPBPhotosKnowledgeGraphEnrichmentEntityReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v24 = PBReaderReadString();
          v25 = 24;
          goto LABEL_38;
        }

        if (v13 != 4)
        {
LABEL_34:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_45;
        }

        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 40) |= 2u;
        while (1)
        {
          v31 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v31 & 0x7F) << v16;
          if ((v31 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_42;
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

LABEL_42:
        *(a1 + 16) = v22;
      }

      else
      {
        if (v13 == 1)
        {
          v24 = PBReaderReadString();
          v25 = 32;
LABEL_38:
          v26 = *(a1 + v25);
          *(a1 + v25) = v24;

          goto LABEL_45;
        }

        if (v13 != 2)
        {
          goto LABEL_34;
        }

        *(a1 + 40) |= 1u;
        v29 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v29;
      }

LABEL_45:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t storeEnumTagSinglePayload for ChangeRecord(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for StorableValue()
{
  type metadata accessor for Int64?(319, &lazy cache variable for type metadata for Int64?, MEMORY[0x1E69E7360], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Int64?(319, &lazy cache variable for type metadata for Double?, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        type metadata accessor for Int64?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          type metadata accessor for Int64?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for Date?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x1E69695A8]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for Date?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata completion function for MaterializedViewPhysicalPlan()
{
  type metadata accessor for MaterializedView();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SelectCorePhysicalPlan(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SQLExpressionEvaluator();
      if (v2 <= 0x3F)
      {
        type metadata accessor for Int64?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for SelectCorePhysicalPlan()
{
  type metadata accessor for Set<String>();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SelectCore();
    if (v1 <= 0x3F)
    {
      type metadata accessor for BMStreamBase(319, &lazy cache variable for type metadata for BMStreamBase, off_1E6E52140);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SQLExpressionEvaluator();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for Set<String>()
{
  if (!lazy cache variable for type metadata for Set<String>)
  {
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Set<String>);
    }
  }
}

uint64_t default argument 0 of Date.ISO8601Format(_:)@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  OUTLINED_FUNCTION_47(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v51 - v6;
  v55 = type metadata accessor for TimeZone();
  v8 = OUTLINED_FUNCTION_2_1(v55);
  v52 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13();
  v51[1] = v13 - v12;
  OUTLINED_FUNCTION_43();
  v54 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v14 = OUTLINED_FUNCTION_2_1(v54);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_68();
  v19 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v20 = OUTLINED_FUNCTION_2_1(v19);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  v27 = v26 - v25;
  v28 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v29 = OUTLINED_FUNCTION_2_1(v28);
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v36 = v35 - v34;
  v37 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v38 = OUTLINED_FUNCTION_2_1(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13();
  (*(v43 + 104))(v42 - v41, *MEMORY[0x1E6969360]);
  v44 = v28;
  v45 = v55;
  (*(v31 + 104))(v36, *MEMORY[0x1E6969358], v44);
  (*(v22 + 104))(v27, *MEMORY[0x1E6969370], v19);
  (*(v16 + 104))(v1, *MEMORY[0x1E6969380], v54);
  TimeZone.init(secondsFromGMT:)();
  result = OUTLINED_FUNCTION_92(v7, 1, v45);
  if (v47)
  {
    __break(1u);
  }

  else
  {
    v48 = *(v52 + 32);
    v49 = OUTLINED_FUNCTION_48();
    v50(v49);
    return Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
  }

  return result;
}

uint64_t StorableValue.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5672656765746E69 && a2 == 0xEC00000065756C61;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6156656C62756F64 && a2 == 0xEB0000000065756CLL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x756C615665746164 && a2 == 0xE900000000000065;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6156676E69727473 && a2 == 0xEB0000000065756CLL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x756C61566E6F736ALL && a2 == 0xE900000000000065;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x756C615661746164 && a2 == 0xE900000000000065;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x756C615664697575 && a2 == 0xE900000000000065;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x756C61566C6C756ELL && a2 == 0xE900000000000065)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

Swift::Int StorableValue.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865F6890](a1);
  return Hasher._finalize()();
}

uint64_t StorableValue.CodingKeys.stringValue.getter(char a1)
{
  result = 0x5672656765746E69;
  switch(a1)
  {
    case 1:
      v3 = 0x656C62756F64;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6156000000000000;
    case 2:
      v4 = 1702125924;
      goto LABEL_10;
    case 3:
      v3 = 0x676E69727473;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6156000000000000;
    case 4:
      v4 = 1852797802;
      goto LABEL_10;
    case 5:
      v4 = 1635017060;
      goto LABEL_10;
    case 6:
      v4 = 1684632949;
      goto LABEL_10;
    case 7:
      v4 = 1819047278;
LABEL_10:
      result = v4 | 0x756C615600000000;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StorableValue.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865F6890](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StorableValue.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = StorableValue.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance StorableValue.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = StorableValue.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StorableValue.DataValueCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int StorableValue.DataValueCodingKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1865F6890](0);
  return Hasher._finalize()();
}

void StorableValue.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  v166 = v20;
  v24 = v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04NullG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04NullG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  v26 = OUTLINED_FUNCTION_2_1(v25);
  v161 = v27;
  v162 = v26;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_29();
  v159 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04UuidG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04UuidG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  v33 = OUTLINED_FUNCTION_2_1(v32);
  v164 = v34;
  v165 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_29();
  v163 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_47(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_29();
  v160 = v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04DataG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04DataG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  v45 = OUTLINED_FUNCTION_2_1(v44);
  v157 = v46;
  v158 = v45;
  v48 = *(v47 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_29();
  v156 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04JsonG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04JsonG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  v52 = OUTLINED_FUNCTION_2_1(v51);
  v154 = v53;
  v155 = v52;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94(v57);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO06StringG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO06StringG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1(v153);
  v151 = v58;
  v60 = *(v59 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_59(v62);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04DateG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO04DateG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1(v152);
  v150 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_59(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_47(v68);
  v70 = *(v69 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_59(v72);
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO06DoubleG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO06DoubleG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1(v146);
  v145[1] = v73;
  v75 = *(v74 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v76);
  v78 = v145 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO07IntegerG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO07IntegerG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1(v79);
  v145[0] = v80;
  v82 = *(v81 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v83);
  v85 = v145 - v84;
  v86 = type metadata accessor for StorableValue(0);
  v87 = OUTLINED_FUNCTION_12(v86);
  v89 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_13();
  v92 = v91 - v90;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedEncodingContainerVy12BiomeStreams13StorableValueO10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  v168 = OUTLINED_FUNCTION_2_1(v93);
  v169 = v94;
  v96 = *(v95 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v97);
  v99 = v145 - v98;
  v100 = *(v24 + 24);
  v101 = *(v24 + 32);
  v102 = OUTLINED_FUNCTION_60();
  __swift_project_boxed_opaque_existential_1(v102, v103);
  lazy protocol witness table accessor for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys();
  v167 = v99;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of StorableValue(v166, v92);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v124 = *v92;
      v128 = *(v92 + 8);
      LOBYTE(v170) = 1;
      lazy protocol witness table accessor for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys();
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_80();
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      OUTLINED_FUNCTION_37(&a12);
      v107 = v78;
      goto LABEL_8;
    case 2u:
      v112 = v147;
      outlined init with take of UUID?(v92, v147, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      LOBYTE(v170) = 2;
      lazy protocol witness table accessor for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys();
      v113 = v148;
      v114 = v168;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      type metadata accessor for Date();
      OUTLINED_FUNCTION_40();
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v115, v116);
      v117 = v152;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      OUTLINED_FUNCTION_37(&a17);
      v118(v113, v117);
      outlined destroy of UUID?(v112, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v119 = OUTLINED_FUNCTION_71();
      goto LABEL_12;
    case 3u:
      v121 = *v92;
      v122 = *(v92 + 8);
      LOBYTE(v170) = 3;
      lazy protocol witness table accessor for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys();
      v123 = v149;
      OUTLINED_FUNCTION_36();
      v124 = v153;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

      OUTLINED_FUNCTION_37(&a18);
      v107 = v123;
LABEL_8:
      v108 = v124;
      goto LABEL_9;
    case 4u:
      v110 = *v92;
      v109 = *(v92 + 8);
      LOBYTE(v170) = 4;
      lazy protocol witness table accessor for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys();
      OUTLINED_FUNCTION_36();
      OUTLINED_FUNCTION_52();
      v111 = v155;
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();

      v107 = OUTLINED_FUNCTION_71();
      v108 = v111;
      goto LABEL_9;
    case 5u:
      v130 = *v92;
      v131 = *(v92 + 8);
      LOBYTE(v170) = 5;
      lazy protocol witness table accessor for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys();
      OUTLINED_FUNCTION_36();
      v170 = v130;
      v171 = v131;
      lazy protocol witness table accessor for type Data and conformance Data();
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      v132 = *(v157 + 8);
      v133 = OUTLINED_FUNCTION_58();
      v134(v133);
      OUTLINED_FUNCTION_78();
      v135 = OUTLINED_FUNCTION_77();
      v136(v135);
      outlined consume of Data?(v130, v131);
      goto LABEL_14;
    case 6u:
      v137 = v92;
      v138 = v160;
      outlined init with take of UUID?(v137, v160, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      LOBYTE(v170) = 6;
      lazy protocol witness table accessor for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys();
      v139 = v167;
      v114 = v168;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      type metadata accessor for UUID();
      OUTLINED_FUNCTION_7_1();
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v140, v141);
      v142 = v165;
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
      v143 = OUTLINED_FUNCTION_71();
      v144(v143, v142);
      outlined destroy of UUID?(v138, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      OUTLINED_FUNCTION_78();
      v119 = v139;
LABEL_12:
      v129 = v114;
      goto LABEL_13;
    case 7u:
      LOBYTE(v170) = 7;
      lazy protocol witness table accessor for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys();
      v125 = v159;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v161 + 8))(v125, v162);
      OUTLINED_FUNCTION_78();
      v126 = OUTLINED_FUNCTION_60();
      v127(v126);
      goto LABEL_14;
    default:
      v104 = *v92;
      v105 = *(v92 + 8);
      LOBYTE(v170) = 0;
      lazy protocol witness table accessor for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys();
      OUTLINED_FUNCTION_36();
      KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
      OUTLINED_FUNCTION_37(&a11);
      v107 = v85;
      v108 = v79;
LABEL_9:
      v106(v107, v108);
      OUTLINED_FUNCTION_78();
      v119 = OUTLINED_FUNCTION_77();
LABEL_13:
      v120(v119, v129);
LABEL_14:
      OUTLINED_FUNCTION_65();
      return;
  }
}

uint64_t StorableValue.hashValue.getter()
{
  v0 = type metadata accessor for StorableValue(0);
  v1 = lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type StorableValue and conformance StorableValue, type metadata accessor for StorableValue);

  return MEMORY[0x1EEE68A70](0, v0, v1);
}

void StorableValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v25;
  a20 = v26;
  a10 = v20;
  v28 = v27;
  v199 = v29;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04NullG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04NullG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1(v200);
  v192 = v30;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_29();
  v197 = v34;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04UuidG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04UuidG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1(v193);
  v201 = v35;
  v37 = *(v36 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_29();
  v198 = v39;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04DataG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04DataG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1(v191);
  v184 = v40;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_29();
  v196 = v44;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04JsonG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04JsonG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1(v190);
  v183 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_29();
  v206 = v49;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO06StringG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO06StringG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1(v189);
  v182 = v50;
  v52 = *(v51 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_29();
  v205[1] = v54;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04DateG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO04DateG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1(v188);
  v181 = v55;
  v57 = *(v56 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_29();
  v195 = v59;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO06DoubleG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO06DoubleG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1(v187);
  v180 = v60;
  v62 = *(v61 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_29();
  v194 = v64;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO07IntegerG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO07IntegerG10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1(v186);
  v179 = v65;
  v67 = *(v66 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_94(v69);
  v205[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMd, &_ss22KeyedDecodingContainerVy12BiomeStreams13StorableValueO10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLOGMR);
  OUTLINED_FUNCTION_2_1(v205[0]);
  v203 = v70;
  v72 = *(v71 + 64);
  OUTLINED_FUNCTION_24();
  MEMORY[0x1EEE9AC00](v73);
  v74 = OUTLINED_FUNCTION_68();
  v202 = type metadata accessor for StorableValue(v74);
  v75 = OUTLINED_FUNCTION_12(v202);
  v77 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_9_0();
  v185 = v78;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_30();
  v178 = v80;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_30();
  v177 = v82;
  OUTLINED_FUNCTION_27();
  v84 = MEMORY[0x1EEE9AC00](v83);
  v86 = (&v170 - v85);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_66();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_67();
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v170 - v90;
  v92 = v28[3];
  v93 = v28[4];
  v207 = v28;
  __swift_project_boxed_opaque_existential_1(v28, v92);
  lazy protocol witness table accessor for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys();
  v204 = v22;
  v94 = a10;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v94)
  {
    goto LABEL_8;
  }

  v173 = v24;
  v174 = v21;
  v175 = v86;
  v176 = v23;
  v95 = v206;
  a10 = v91;
  v97 = v204;
  v96 = v205[0];
  v98 = KeyedDecodingContainer.allKeys.getter();
  started = _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC12BiomeStreams13StorableValueO10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLO_Tt1g5(v98, 0);
  if (v100 == v101 >> 1)
  {
LABEL_7:
    v109 = v202;
    v110 = type metadata accessor for DecodingError();
    OUTLINED_FUNCTION_63();
    v112 = v111;
    v113 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v112 = v109;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    v114 = *MEMORY[0x1E69E6AF8];
    OUTLINED_FUNCTION_28(v110);
    (*(v115 + 104))(v112);
    swift_willThrow();
    swift_unknownObjectRelease();
    v116 = OUTLINED_FUNCTION_10();
    v117(v116);
LABEL_8:
    v118 = v207;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(v118);
    OUTLINED_FUNCTION_65();
    return;
  }

  v172 = 0;
  if (v100 < (v101 >> 1))
  {
    v171 = *(v99 + v100);
    specialized ArraySlice.subscript.getter(v100 + 1, v101 >> 1, started, v99, v100, v101);
    v104 = v103;
    v106 = v105;
    swift_unknownObjectRelease();
    v107 = v201;
    if (v104 == v106 >> 1)
    {
      switch(v171)
      {
        case 1:
          LOBYTE(v208) = 1;
          lazy protocol witness table accessor for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys();
          OUTLINED_FUNCTION_22(&unk_1EF2A03D8, &v208);
          v108 = v187;
          OUTLINED_FUNCTION_69();
          KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          swift_unknownObjectRelease();
          v157 = OUTLINED_FUNCTION_19(&v209);
          v158(v157, v108);
          v159 = OUTLINED_FUNCTION_10();
          v160(v159);
          OUTLINED_FUNCTION_61(v205);
          goto LABEL_17;
        case 2:
          LOBYTE(v208) = 2;
          lazy protocol witness table accessor for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys();
          OUTLINED_FUNCTION_22(&unk_1EF2A0468, &v208);
          type metadata accessor for Date();
          OUTLINED_FUNCTION_40();
          lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v120, v121);
          v122 = v176;
          v123 = v188;
          OUTLINED_FUNCTION_69();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v141 = OUTLINED_FUNCTION_19(&v210);
          v142(v141, v123);
          v143 = OUTLINED_FUNCTION_10();
          v144(v143);
          goto LABEL_19;
        case 3:
          LOBYTE(v208) = 3;
          lazy protocol witness table accessor for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys();
          OUTLINED_FUNCTION_22(&unk_1EF2A04F8, &v208);
          v124 = v189;
          OUTLINED_FUNCTION_69();
          v145 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v147 = v146;
          swift_unknownObjectRelease();
          v148 = OUTLINED_FUNCTION_19(&a9);
          v149(v148, v124);
          v150 = OUTLINED_FUNCTION_10();
          v151(v150);
          v152 = v175;
          *v175 = v145;
          v152[1] = v147;
          goto LABEL_18;
        case 4:
          LOBYTE(v208) = 4;
          lazy protocol witness table accessor for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys();
          OUTLINED_FUNCTION_22(&unk_1EF2A0588, &v208);
          v119 = v190;
          v135 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          v137 = v136;
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_37(&a10);
          v138(v95, v119);
          v139 = OUTLINED_FUNCTION_10();
          v140(v139);
          v108 = v177;
          *v177 = v135;
          *(v108 + 8) = v137;
          goto LABEL_17;
        case 5:
          LOBYTE(v208) = 5;
          lazy protocol witness table accessor for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys();
          OUTLINED_FUNCTION_22(&unk_1EF2A0618, &v208);
          lazy protocol witness table accessor for type Data and conformance Data();
          v131 = v191;
          OUTLINED_FUNCTION_69();
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v132 = v203;
          swift_unknownObjectRelease();
          v162 = OUTLINED_FUNCTION_19(&a11);
          v163(v162, v131);
          (*(v132 + 8))(v97, v96);
          v152 = v178;
          *v178 = v208;
LABEL_18:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_0_15();
          v161 = v152;
          goto LABEL_20;
        case 6:
          LOBYTE(v208) = 6;
          lazy protocol witness table accessor for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys();
          OUTLINED_FUNCTION_22(&unk_1EF2A06A8, &v208);
          type metadata accessor for UUID();
          OUTLINED_FUNCTION_7_1();
          lazy protocol witness table accessor for type StorableValue and conformance StorableValue(v133, v134);
          v122 = v185;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v164 = *(v107 + 8);
          v165 = OUTLINED_FUNCTION_50();
          v166(v165);
          v167 = OUTLINED_FUNCTION_10();
          v168(v167);
LABEL_19:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_0_15();
          v161 = v122;
          goto LABEL_20;
        case 7:
          LOBYTE(v208) = 7;
          lazy protocol witness table accessor for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys();
          OUTLINED_FUNCTION_22(&unk_1EF2A06C8, &v208);
          swift_unknownObjectRelease();
          v125 = *(v192 + 8);
          v126 = OUTLINED_FUNCTION_52();
          v127(v126);
          v128 = OUTLINED_FUNCTION_10();
          v129(v128);
          v130 = a10;
          swift_storeEnumTagMultiPayload();
          goto LABEL_21;
        default:
          LOBYTE(v208) = 0;
          lazy protocol witness table accessor for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys();
          OUTLINED_FUNCTION_22(&unk_1EF2A0348, &v208);
          v108 = v186;
          OUTLINED_FUNCTION_69();
          KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
          swift_unknownObjectRelease();
          v153 = OUTLINED_FUNCTION_19(&v208 + 8);
          v154(v153, v108);
          v155 = OUTLINED_FUNCTION_10();
          v156(v155);
          OUTLINED_FUNCTION_61(&v204);
LABEL_17:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_0_15();
          v161 = v108;
LABEL_20:
          v130 = a10;
          outlined init with take of StorableValue(v161, a10);
LABEL_21:
          v169 = v207;
          OUTLINED_FUNCTION_0_15();
          outlined init with take of StorableValue(v130, v199);
          v118 = v169;
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

Swift::Int ChangeOperation.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865F6890](a1 & 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance StorableValue.DataValueCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = StorableValue.DataValueCodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.DataValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.DataValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.DateValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.DateValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.DoubleValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.DoubleValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.IntegerValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.IntegerValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.JsonValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.JsonValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StorableValue.NullValueCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = StorableValue.NullValueCodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.NullValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.NullValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.StringValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.StringValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StorableValue.DataValueCodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x1865F6890](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StorableValue.UuidValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StorableValue.UuidValueCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance StorableValue(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = type metadata accessor for Date.ISO8601FormatStyle();
  v41 = *(v5 - 8);
  v6 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v41 - v19;
  v21 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  outlined init with copy of StorableValue(v4, v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      if (v23[8])
      {
        v42 = *v23;
        LOBYTE(v43) = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
        goto LABEL_8;
      }

      static StorableValue.hashForDouble(double:)(*v23);
      v26 = Int.hashValue.getter();
      goto LABEL_16;
    case 2u:
      outlined init with take of UUID?(v23, v20, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      outlined init with copy of Date?(v20, v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v27 = type metadata accessor for Date();
      if (__swift_getEnumTagSinglePayload(v17, 1, v27) == 1)
      {
        outlined destroy of UUID?(v17, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
        Hasher._combine(_:)(0);
      }

      else
      {
        default argument 0 of Date.ISO8601Format(_:)(v8);
        v36 = Date.ISO8601Format(_:)();
        v38 = v37;
        (*(v41 + 8))(v8, v5);
        (*(*(v27 - 8) + 8))(v17, v27);
        v39 = MEMORY[0x1865F62C0](v36, v38);

        Hasher._combine(_:)(1u);
        MEMORY[0x1865F6890](v39);
      }

      v34 = &_s10Foundation4DateVSgMd;
      v35 = &_s10Foundation4DateVSgMR;
      v33 = v20;
      goto LABEL_14;
    case 3u:
    case 4u:
      v24 = *(v23 + 1);
      v42 = *v23;
      v43 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v25 = Optional<A>.hashValue.getter();

      v26 = v25;
      goto LABEL_16;
    case 5u:
      v30 = *(v23 + 1);
      v42 = *v23;
      v29 = *&v42;
      v43 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      lazy protocol witness table accessor for type Data and conformance Data();
      v31 = Optional<A>.hashValue.getter();
      MEMORY[0x1865F6890](v31);
      outlined consume of Data?(v29, v30);
      return Hasher._finalize()();
    case 6u:
      outlined init with take of UUID?(v23, v12, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v32 = Optional<A>.hashValue.getter();
      MEMORY[0x1865F6890](v32);
      v33 = v12;
      v34 = &_s10Foundation4UUIDVSgMd;
      v35 = &_s10Foundation4UUIDVSgMR;
LABEL_14:
      outlined destroy of UUID?(v33, v34, v35);
      return Hasher._finalize()();
    case 7u:
      v26 = 0;
      goto LABEL_16;
    default:
      v28 = v23[8];
      v42 = *v23;
      LOBYTE(v43) = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int64VSgMd, &_ss5Int64VSgMR);
LABEL_8:
      v26 = Optional<A>.hashValue.getter();
LABEL_16:
      MEMORY[0x1865F6890](v26);
      return Hasher._finalize()();
  }
}

uint64_t closure #2 in selectAndHavingAggregateFunctions(selectCore:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_85();
  }

  return v9 & 1;
}

void specialized OrderedDictionary.removeFirst()()
{
  if (*(*(v0 + 8) + 16))
  {
    v1 = *v0;
    v2 = [*v0 objectAtIndexedSubscript_];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams17OrderedDictionaryV10KeyWrapper33_A23C2294A3946E08FF4CA082CB89FEF3LLCySayAA13StorableValueOGAA12ChangeRecordVSg_GMd, &_s12BiomeStreams17OrderedDictionaryV10KeyWrapper33_A23C2294A3946E08FF4CA082CB89FEF3LLCySayAA13StorableValueOGAA12ChangeRecordVSg_GMR);
    swift_dynamicCast();
    [v1 removeObjectAtIndex_];
    v3 = specialized Dictionary._Variant.removeValue(forKey:)(*(v5 + 16));
    outlined consume of ChangeRecord??(v3, v4);
  }
}

{
  if (*(*(v0 + 8) + 16))
  {
    v1 = *v0;
    v2 = [*v0 objectAtIndexedSubscript_];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams17OrderedDictionaryV10KeyWrapper33_A23C2294A3946E08FF4CA082CB89FEF3LLCySayAA13StorableValueOGSaySDySSAHGGSg_GMd, &_s12BiomeStreams17OrderedDictionaryV10KeyWrapper33_A23C2294A3946E08FF4CA082CB89FEF3LLCySayAA13StorableValueOGSaySDySSAHGGSg_GMR);
    swift_dynamicCast();
    [v1 removeObjectAtIndex_];
    v3 = specialized Dictionary._Variant.removeValue(forKey:)(*(v4 + 16));
    outlined consume of [[String : StorableValue]]??(v3);
  }
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE016_forceBridgeFromD1C_6resultyAD_01_D5CTypeQZ_xSgztFZSo18BMStreamIdentifiera_Tt1gq5(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE024_conditionallyBridgeFromD1C_6resultSbAD_01_D5CTypeQZ_xSgztFZSo18BMStreamIdentifiera_Tt1gq5(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance BMStreamIdentifier@<X0>(uint64_t *a1@<X8>)
{
  result = _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo18BMStreamIdentifiera_Tt1gq5();
  *a1 = result;
  return result;
}

uint64_t _ss20_SwiftNewtypeWrapperPss21_ObjectiveCBridgeable8RawValueRpzrlE026_unconditionallyBridgeFromD1CyxAD_01_D5CTypeQZSgFZSo18BMStreamIdentifiera_Tt1gq5()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1865F6160](v0);

  return v1;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance BMStreamIdentifier@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1865F6160](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance BMStreamIdentifier@<X0>(uint64_t *a1@<X8>)
{
  result = BMStreamIdentifier.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t specialized _SwiftNewtypeWrapper<>.hashValue.getter()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1865F62C0](v0);

  return v1;
}

uint64_t specialized _SwiftNewtypeWrapper<>.hash(into:)()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BMStreamIdentifier(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return specialized == infix<A>(_:_:)();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.CodingKeys and conformance StorableValue.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance BMStreamIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type BMStreamIdentifier and conformance BMStreamIdentifier, type metadata accessor for BMStreamIdentifier);
  v3 = lazy protocol witness table accessor for type StorableValue and conformance StorableValue(&lazy protocol witness table cache variable for type BMStreamIdentifier and conformance BMStreamIdentifier, type metadata accessor for BMStreamIdentifier);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t _ss12_SliceBufferV7_buffer19shiftedToStartIndexAByxGs016_ContiguousArrayB0VyxG_SitcfC12BiomeStreams13StorableValueO10CodingKeys33_69E06497FCCD36C7847396967BD3AC6FLLO_Tt1g5(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_64();
  a19 = v23;
  a20 = v24;
  v185 = v26;
  v186 = v25;
  v199 = v27;
  v28 = v21;
  v30 = v29;
  v32 = v31;
  v173 = v33;
  v184 = a21;
  v35 = v34(0);
  v36 = OUTLINED_FUNCTION_2_1(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_9_0();
  v179 = v39;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_30();
  v195 = v41;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_96();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_30();
  v196 = v44;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_30();
  v190 = v46;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_30();
  v189 = v48;
  OUTLINED_FUNCTION_27();
  v50 = MEMORY[0x1EEE9AC00](v49);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v170 - v51;
  a10 = MEMORY[0x1E69E7CC0];
  v188 = v32;
  v55 = v32[1];
  if (v55 >= 1)
  {
    v56 = 0;
    v200 = (v52 + 8);
    v201 = v52 + 16;
    v198 = (v52 + 32);
    v57 = MEMORY[0x1E69E7CC0];
    v191 = v35;
    v172 = v30;
    v187 = v52;
    v183 = v22;
    v170 = v53;
    v171 = &v170 - v51;
    do
    {
      v58 = v56++;
      v176 = v57;
      v175 = v58;
      if (v56 < v55)
      {
        v202 = v55;
        v59 = *v188;
        v22 = *(v52 + 72);
        v60 = v54;
        v61 = v58;
        v62 = &(*v188)[v22 * v56];
        v63 = *(v52 + 16);
        v63(v60, v62, v35);
        v192 = v59;
        v64 = &v59[v22 * v61];
        v65 = v170;
        v194 = v63;
        v63(v170, v64, v35);
        v30 = v65;
        LODWORD(v197) = closure #2 in selectAndHavingAggregateFunctions(selectCore:)(v171, v65, v186);
        if (v28)
        {
          v167 = *v200;
          v168 = OUTLINED_FUNCTION_104();
          (v167)(v168);
          v169 = OUTLINED_FUNCTION_72();
          (v167)(v169);
          goto LABEL_120;
        }

        v174 = 0;
        v66 = *v200;
        v67 = OUTLINED_FUNCTION_104();
        v66(v67);
        v68 = OUTLINED_FUNCTION_72();
        v193 = v66;
        v66(v68);
        v69 = v175 + 2;
        v57 = (v192 + v22 * (v175 + 2));
        v70 = v202;
        while (1)
        {
          v28 = v69;
          if (v56 + 1 >= v70)
          {
            break;
          }

          v192 = v56;
          v71 = v191;
          v72 = v194;
          v194(v189, v57, v191);
          v73 = v72(v190, v62, v71);
          v74 = v199;
          v75 = (v199)(v73);
          v77 = v76;
          if (v75 == v74() && v77 == v78)
          {
            v80 = 0;
          }

          else
          {
            v80 = OUTLINED_FUNCTION_85();
          }

          v30 = v191;
          v81 = v193;
          (v193)(v190, v191);
          v81(v189, v30);
          v57 += v22;
          v62 += v22;
          v56 = v192 + 1;
          v69 = v28 + 1;
          v70 = v202;
          if ((v197 ^ v80))
          {
            goto LABEL_16;
          }
        }

        v56 = v70;
LABEL_16:
        if (v197)
        {
          v30 = v172;
          v57 = v176;
          if (v56 < v175)
          {
            goto LABEL_142;
          }

          if (v175 >= v56)
          {
            OUTLINED_FUNCTION_79();
            v35 = v191;
            v22 = v183;
            goto LABEL_39;
          }

          if (v70 >= v28)
          {
            v82 = v28;
          }

          else
          {
            v82 = v70;
          }

          v30 = v22 * (v82 - 1);
          v83 = v22 * v82;
          v84 = v175 * v22;
          v192 = v56;
          v85 = v56;
          v86 = v175;
          OUTLINED_FUNCTION_79();
          do
          {
            if (v86 != --v85)
            {
              v87 = *v188;
              if (!*v188)
              {
                goto LABEL_145;
              }

              v57 = &v87[v84];
              v28 = v191;
              v202 = *v198;
              (v202)(v179, &v87[v84], v191);
              v88 = v84 < v30 || v57 >= &v87[v83];
              if (v88)
              {
                OUTLINED_FUNCTION_45();
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v84 != v30)
              {
                OUTLINED_FUNCTION_45();
                swift_arrayInitWithTakeBackToFront();
              }

              (v202)(&v87[v30], v179, v28);
              OUTLINED_FUNCTION_79();
              OUTLINED_FUNCTION_80();
            }

            ++v86;
            v30 -= v22;
            v83 -= v22;
            v84 += v22;
          }

          while (v86 < v85);
          v35 = v191;
          v56 = v192;
          OUTLINED_FUNCTION_99();
        }

        else
        {
          OUTLINED_FUNCTION_79();
          v35 = v191;
          OUTLINED_FUNCTION_99();
          OUTLINED_FUNCTION_80();
        }

        v58 = v175;
      }

LABEL_39:
      v89 = v188[1];
      if (v56 < v89)
      {
        if (__OFSUB__(v56, v58))
        {
          goto LABEL_139;
        }

        if (v56 - v58 < v30)
        {
          v90 = v58 + v30;
          if (__OFADD__(v58, v30))
          {
            goto LABEL_140;
          }

          if (v90 >= v89)
          {
            v90 = v188[1];
          }

          v57 = v196;
          if (v90 < v58)
          {
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            return;
          }

          if (v56 == v90)
          {
            OUTLINED_FUNCTION_80();
          }

          else
          {
            v174 = v28;
            v91 = *v188;
            v92 = *(v52 + 72);
            v197 = *(v52 + 16);
            v93 = &v91[v92 * (v56 - 1)];
            v193 = -v92;
            v194 = v91;
            v94 = v58 - v56;
            v177 = v92;
            v95 = &v91[v56 * v92];
            v178 = v90;
            do
            {
              v192 = v56;
              v180 = v95;
              v181 = v94;
              v96 = v94;
              v182 = v93;
              v97 = v93;
              while (1)
              {
                v202 = v96;
                v98 = v197;
                (v197)(v57, v95, v35);
                v99 = OUTLINED_FUNCTION_58();
                v100 = v98(v99);
                v28 = v57;
                v101 = v199;
                v102 = v22;
                v103 = (v199)(v100);
                v104 = v35;
                v106 = v105;
                if (v103 == v101() && v106 == v107)
                {

                  v116 = *v200;
                  (*v200)(v102, v104);
                  v117 = OUTLINED_FUNCTION_57();
                  (v116)(v117);
                  v35 = v104;
                  v22 = v102;
                  v57 = v28;
                  goto LABEL_61;
                }

                v109 = _stringCompareWithSmolCheck(_:_:expecting:)();

                v110 = *v200;
                (*v200)(v102, v104);
                v111 = OUTLINED_FUNCTION_57();
                (v110)(v111);
                v35 = v104;
                v22 = v102;
                if ((v109 & 1) == 0)
                {
                  break;
                }

                v112 = v202;
                if (!v194)
                {
                  goto LABEL_143;
                }

                v113 = *v198;
                v114 = v195;
                v115 = OUTLINED_FUNCTION_50();
                v113(v115);
                swift_arrayInitWithTakeFrontToBack();
                (v113)(v97, v114, v35);
                v97 += v193;
                v95 += v193;
                v88 = __CFADD__(v112, 1);
                v96 = (v112 + 1);
                v57 = v196;
                if (v88)
                {
                  goto LABEL_61;
                }
              }

              v57 = v196;
LABEL_61:
              v56 = v192 + 1;
              v93 = &v182[v177];
              v94 = v181 - 1;
              v95 = v180 + v177;
            }

            while (v192 + 1 != v178);
            v56 = v178;
            OUTLINED_FUNCTION_79();
            OUTLINED_FUNCTION_80();
            v58 = v175;
          }
        }
      }

      if (v56 < v58)
      {
        goto LABEL_138;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v162 = *(v57 + 2);
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v57 = v163;
      }

      v118 = v57;
      v119 = *(v57 + 2);
      v120 = v118;
      v121 = v119 + 1;
      if (v119 >= *(v118 + 3) >> 1)
      {
        specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        v120 = v164;
      }

      *(v120 + 2) = v121;
      v122 = v120 + 32;
      v123 = &v120[16 * v119 + 32];
      *v123 = v175;
      *(v123 + 1) = v56;
      a10 = v120;
      OUTLINED_FUNCTION_101();
      v202 = *v124;
      if (!v202)
      {
        goto LABEL_146;
      }

      if (v119)
      {
        v192 = v56;
        v57 = v120;
        while (1)
        {
          v125 = v121 - 1;
          v126 = &v122[2 * v121 - 2];
          v127 = &v57[16 * v121];
          if (v121 >= 4)
          {
            break;
          }

          if (v121 == 3)
          {
            v128 = *(v57 + 4);
            v129 = *(v57 + 5);
            v138 = __OFSUB__(v129, v128);
            v130 = v129 - v128;
            v131 = v138;
LABEL_84:
            if (v131)
            {
              goto LABEL_128;
            }

            v143 = *v127;
            v142 = *(v127 + 1);
            v144 = __OFSUB__(v142, v143);
            v145 = v142 - v143;
            v146 = v144;
            if (v144)
            {
              goto LABEL_131;
            }

            v147 = v126[1];
            v148 = v147 - *v126;
            if (__OFSUB__(v147, *v126))
            {
              goto LABEL_134;
            }

            if (__OFADD__(v145, v148))
            {
              goto LABEL_136;
            }

            if (v145 + v148 >= v130)
            {
              if (v130 < v148)
              {
                v125 = v121 - 2;
              }

              goto LABEL_106;
            }

            goto LABEL_99;
          }

          if (v121 < 2)
          {
            goto LABEL_130;
          }

          v150 = *v127;
          v149 = *(v127 + 1);
          v138 = __OFSUB__(v149, v150);
          v145 = v149 - v150;
          v146 = v138;
LABEL_99:
          if (v146)
          {
            goto LABEL_133;
          }

          v152 = *v126;
          v151 = v126[1];
          v138 = __OFSUB__(v151, v152);
          v153 = v151 - v152;
          if (v138)
          {
            goto LABEL_135;
          }

          if (v153 < v145)
          {
            goto LABEL_113;
          }

LABEL_106:
          if (v125 - 1 >= v121)
          {
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          if (!*v188)
          {
            goto LABEL_144;
          }

          v157 = &v122[2 * v125 - 2];
          v158 = *v157;
          v159 = &v122[2 * v125];
          v160 = v159[1];
          specialized _merge<A>(low:mid:high:buffer:by:)(&(*v188)[*(v187 + 72) * *v157], &(*v188)[*(v187 + 72) * *v159], &(*v188)[*(v187 + 72) * v160], v202, v185, v184, v186, v185, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181);
          if (v28)
          {
            a10 = v120;
            goto LABEL_120;
          }

          if (v160 < v158)
          {
            goto LABEL_123;
          }

          v161 = *(v120 + 2);
          if (v125 > v161)
          {
            goto LABEL_124;
          }

          *v157 = v158;
          v157[1] = v160;
          if (v125 >= v161)
          {
            goto LABEL_125;
          }

          v121 = v161 - 1;
          memmove(&v122[2 * v125], v159 + 2, 16 * (v161 - 1 - v125));
          v57 = v120;
          *(v120 + 2) = v161 - 1;
          v22 = v183;
          if (v161 <= 2)
          {
LABEL_113:
            a10 = v57;
            v56 = v192;
            goto LABEL_115;
          }
        }

        v132 = &v122[2 * v121];
        v133 = *(v132 - 8);
        v134 = *(v132 - 7);
        v138 = __OFSUB__(v134, v133);
        v135 = v134 - v133;
        if (v138)
        {
          goto LABEL_126;
        }

        v137 = *(v132 - 6);
        v136 = *(v132 - 5);
        v138 = __OFSUB__(v136, v137);
        v130 = v136 - v137;
        v131 = v138;
        if (v138)
        {
          goto LABEL_127;
        }

        v139 = *(v127 + 1);
        v140 = v139 - *v127;
        if (__OFSUB__(v139, *v127))
        {
          goto LABEL_129;
        }

        v138 = __OFADD__(v130, v140);
        v141 = v130 + v140;
        if (v138)
        {
          goto LABEL_132;
        }

        if (v141 >= v135)
        {
          v155 = *v126;
          v154 = v126[1];
          v138 = __OFSUB__(v154, v155);
          v156 = v154 - v155;
          if (v138)
          {
            goto LABEL_137;
          }

          if (v130 < v156)
          {
            v125 = v121 - 2;
          }

          goto LABEL_106;
        }

        goto LABEL_84;
      }

      v57 = v120;
LABEL_115:
      v52 = v187;
      v55 = v188[1];
      v35 = v191;
      v30 = v172;
      v54 = v171;
    }

    while (v56 < v55);
  }

  OUTLINED_FUNCTION_101();
  if (!*v166)
  {
    goto LABEL_147;
  }

  specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(&a10, *v166, v188, v185, v184, v186, v185, v165, v170, v171, v172, v173, v174, v175, v176, v177, v178, v179, v180, v181);
LABEL_120:

  OUTLINED_FUNCTION_65();
}

void specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  v103 = v23;
  v127 = v24;
  v102 = v25;
  v104 = v26;
  v28 = v27;
  v30 = v29;
  v32 = v31(0);
  v33 = OUTLINED_FUNCTION_2_1(v32);
  v106 = v34;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9_0();
  v117 = v37;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_30();
  v116 = v39;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_95();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_51();
  v122 = v42;
  v105 = v30;
  v43 = *v30;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_84;
  }

LABEL_2:
  *v105 = v43;
  v125 = (v106 + 8);
  v126 = (v106 + 16);
  v115 = v28;
  v101 = v20;
  while (1)
  {
    v44 = *(v43 + 2);
    if (v44 < 2)
    {
      OUTLINED_FUNCTION_65();
      return;
    }

    v112 = v43;
    v45 = *v104;
    if (!*v104)
    {
      break;
    }

    v46 = *(v106 + 72);
    if (!v46)
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v43);
      goto LABEL_2;
    }

    v47 = &v43[16 * v44 - 16];
    v111 = *&v43[16 * v44];
    v48 = v46 * v111;
    v49 = v46 * *(v47 + 4);
    v50 = v49 - v46 * v111;
    v51 = v46 == -1 && v50 == 0x8000000000000000;
    if (v51)
    {
      goto LABEL_82;
    }

    v110 = *(v47 + 5);
    v52 = v46 * v110 - v49;
    if (v46 == -1 && v52 == 0x8000000000000000)
    {
      goto LABEL_83;
    }

    v108 = v44 - 2;
    v107 = v44 - 1;
    v109 = *(v43 + 2);
    v54 = v45 + v48;
    v55 = v45 + v49;
    v56 = v45 + v46 * v110;
    v57 = v50 / v46;
    a10 = v45 + v48;
    v132 = v28;
    v20 = v52 / v46;
    if (v50 / v46 < v52 / v46)
    {
      v58 = OUTLINED_FUNCTION_81();
      v102(v58);
      v123 = v28 + v57 * v46;
      v131 = v123;
      v59 = v45 + v46 + v46 * v111;
      v60 = v28;
      v20 = v101;
      v61 = v122;
      v118 = v46;
      v120 = v56;
      while (1)
      {
        if (v60 >= v123 || v55 >= v56)
        {
          goto LABEL_73;
        }

        v128 = v59;
        v63 = *v126;
        v64 = v55;
        (*v126)(v61, v55, v32);
        v65 = OUTLINED_FUNCTION_72();
        v66 = (v63)(v65);
        v67 = (v127)(v66);
        v68 = v20;
        v70 = v69;
        v71 = v127();
        v73 = v72;
        if (v67 == v71 && v70 == v72)
        {

          v81 = OUTLINED_FUNCTION_90();
          v73(v81);
          v82 = OUTLINED_FUNCTION_52();
          v73(v82);
          v20 = v68;
        }

        else
        {
          OUTLINED_FUNCTION_86();
          v75 = OUTLINED_FUNCTION_85();

          v76 = OUTLINED_FUNCTION_90();
          v73(v76);
          v77 = OUTLINED_FUNCTION_52();
          v73(v77);
          v20 = v68;
          if (v75)
          {
            v78 = v55;
            v79 = v118;
            v55 += v118;
            if (v54 < v64 || v54 >= v55)
            {
              OUTLINED_FUNCTION_45();
              swift_arrayInitWithTakeFrontToBack();
              v56 = v120;
              v61 = v122;
            }

            else
            {
              v56 = v120;
              v61 = v122;
              if (v54 != v78)
              {
                OUTLINED_FUNCTION_45();
                swift_arrayInitWithTakeBackToFront();
              }
            }

            goto LABEL_41;
          }
        }

        v79 = v118;
        if (v54 < v60 || v54 >= v60 + v118)
        {
          OUTLINED_FUNCTION_35();
          swift_arrayInitWithTakeFrontToBack();
          v56 = v120;
          v61 = v122;
        }

        else
        {
          v56 = v120;
          v61 = v122;
          if (v54 != v60)
          {
            OUTLINED_FUNCTION_35();
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v132 = v60 + v118;
        v60 += v118;
LABEL_41:
        v54 += v79;
        a10 = v128;
        v59 = v128 + v79;
      }
    }

    v84 = OUTLINED_FUNCTION_70();
    v102(v84);
    v85 = v28 + v20 * v46;
    v86 = -v46;
    v87 = v85;
    v129 = v86;
    v130 = v54;
LABEL_45:
    v119 = v55;
    v121 = v55 + v86;
    v88 = v56;
    v89 = v87;
    v114 = v87;
    while (1)
    {
      if (v85 <= v115)
      {
        a10 = v55;
        v131 = v89;
        goto LABEL_73;
      }

      if (v54 >= v55)
      {
        break;
      }

      v124 = v88;
      v113 = v89;
      v90 = v85 + v86;
      v91 = *v126;
      v92 = OUTLINED_FUNCTION_104();
      v91(v92);
      v93 = (v91)(v117, v121, v32);
      (v127)(v93);
      OUTLINED_FUNCTION_53_0();
      if (v126 == v127() && v91 == v94)
      {
        v20 = 0;
      }

      else
      {
        v20 = OUTLINED_FUNCTION_85();
      }

      v56 = v124 + v129;
      v96 = *v125;
      (*v125)(v117, v32);
      v96(v116, v32);
      if (v20)
      {
        v98 = v124 < v119 || v56 >= v119;
        v54 = v130;
        if (v98)
        {
          v55 = v121;
          OUTLINED_FUNCTION_45();
          swift_arrayInitWithTakeFrontToBack();
          v87 = v113;
          v86 = v129;
        }

        else
        {
          v55 = v121;
          v86 = v129;
          v87 = v113;
          if (v124 != v119)
          {
            OUTLINED_FUNCTION_35();
            v87 = v99;
            swift_arrayInitWithTakeBackToFront();
            v55 = v121;
          }
        }

        goto LABEL_45;
      }

      v97 = v124 < v85 || v56 >= v85;
      v54 = v130;
      v55 = v119;
      if (v97)
      {
        OUTLINED_FUNCTION_35();
        swift_arrayInitWithTakeFrontToBack();
        v88 = v124 + v129;
        v85 = v90;
        v89 = v90;
        v86 = v129;
        v87 = v114;
      }

      else
      {
        v89 = v90;
        v51 = v85 == v124;
        v88 = v124 + v129;
        v85 = v90;
        v86 = v129;
        v87 = v114;
        if (!v51)
        {
          OUTLINED_FUNCTION_35();
          swift_arrayInitWithTakeBackToFront();
          v88 = v124 + v129;
          v85 = v90;
          v89 = v90;
        }
      }
    }

    a10 = v55;
    v131 = v87;
LABEL_73:
    specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&a10, &v132, &v131, v103);
    v28 = v115;
    v43 = v112;
    if (v110 < v111)
    {
      goto LABEL_80;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v112);
    }

    if (v108 >= *(v43 + 2))
    {
      goto LABEL_81;
    }

    v100 = &v43[16 * v109];
    *v100 = v111;
    *(v100 + 1) = v110;
    *v105 = v43;
    specialized Array.remove(at:)(v107);
    v43 = *v105;
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_64();
  a19 = v22;
  a20 = v23;
  v110 = v24;
  v26 = v25;
  OUTLINED_FUNCTION_97_2();
  v27 = type metadata accessor for SQLExpression();
  v28 = OUTLINED_FUNCTION_2_1(v27);
  v112 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_9_0();
  v122 = v32;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_30();
  v121 = v34;
  OUTLINED_FUNCTION_27();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_143();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v107 - v37;
  v111 = v20;
  Kind = *v20;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_87;
  }

LABEL_2:
  v40 = v112;
  *v111 = Kind;
  v126 = (v40 + 8);
  v127 = (v40 + 16);
  v119 = v26;
  v120 = v27;
  v123 = v38;
  v108 = v21;
  while (1)
  {
    v41 = *(Kind + 2);
    if (v41 < 2)
    {
      OUTLINED_FUNCTION_65();
      return;
    }

    v118 = Kind;
    v42 = *v110;
    if (!*v110)
    {
      break;
    }

    v43 = *(v112 + 72);
    if (!v43)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      Kind = specialized _ArrayBuffer._consumeAndCreateNew()(Kind);
      goto LABEL_2;
    }

    v44 = &v118[16 * v41 - 16];
    v45 = *(v44 + 4);
    v117 = *&v118[16 * v41];
    v46 = v43 * v117;
    v47 = v43 * v45;
    v48 = v43 * v45 - v43 * v117;
    v49 = v43 == -1 && v48 == 0x8000000000000000;
    if (v49)
    {
      goto LABEL_85;
    }

    v116 = *(v44 + 5);
    v50 = v43 * v116 - v47;
    if (v43 == -1 && v50 == 0x8000000000000000)
    {
      goto LABEL_86;
    }

    v113 = v41 - 1;
    v114 = v41 - 2;
    v115 = v41;
    v52 = v42 + v46;
    v53 = v42 + v47;
    v125 = v42 + v43 * v116;
    v54 = v48 / v43;
    a10 = v42 + v46;
    v131 = v26;
    v55 = v50 / v43;
    v56 = v43;
    if (v48 / v43 < v50 / v43)
    {
      specialized UnsafeMutablePointer.moveInitialize(from:count:)(v42 + v46, v48 / v43, v26);
      v124 = v26 + v54 * v56;
      v130 = v124;
      v57 = v42 + v56 + v56 * v117;
      v58 = v120;
      v59 = v125;
      v60 = v56;
      while (1)
      {
        if (v26 >= v124 || v53 >= v59)
        {
          v26 = v119;
          goto LABEL_76;
        }

        v128 = v57;
        v129 = v52;
        v62 = v60;
        v63 = *v127;
        v64 = v53;
        (*v127)(v38, v53, v58);
        v63(v21, v26, v58);
        v65 = v58;
        v66 = SQLExpression.sql.getter();
        v67 = v21;
        v69 = v68;
        if (v66 == SQLExpression.sql.getter() && v69 == v70)
        {

          v78 = *v126;
          v79 = OUTLINED_FUNCTION_86();
          v78(v79);
          v80 = OUTLINED_FUNCTION_77();
          v78(v80);
          v21 = v67;
        }

        else
        {
          OUTLINED_FUNCTION_105_2();
          v72 = OUTLINED_FUNCTION_85();

          v73 = *v126;
          v74 = OUTLINED_FUNCTION_86();
          v73(v74);
          v75 = OUTLINED_FUNCTION_77();
          v73(v75);
          v21 = v67;
          v58 = v65;
          if (v72)
          {
            v53 += v62;
            v76 = v129;
            if (v129 < v64 || v129 >= v53)
            {
              OUTLINED_FUNCTION_52_2();
              swift_arrayInitWithTakeFrontToBack();
              v60 = v62;
              v38 = v123;
            }

            else
            {
              v38 = v123;
              if (v129 != v64)
              {
                OUTLINED_FUNCTION_52_2();
                swift_arrayInitWithTakeBackToFront();
              }

              v60 = v62;
            }

            goto LABEL_41;
          }
        }

        v76 = v129;
        if (v129 < v26 || v129 >= v26 + v62)
        {
          OUTLINED_FUNCTION_131_0();
          OUTLINED_FUNCTION_52_2();
          swift_arrayInitWithTakeFrontToBack();
          v60 = v62;
          v38 = v123;
        }

        else
        {
          v60 = v62;
          v38 = v123;
          if (v129 != v26)
          {
            OUTLINED_FUNCTION_131_0();
            OUTLINED_FUNCTION_52_2();
            swift_arrayInitWithTakeBackToFront();
            v60 = v62;
          }
        }

        v131 = v26 + v62;
        v26 += v62;
LABEL_41:
        v52 = v76 + v60;
        a10 = v128;
        v57 = v128 + v60;
        v59 = v125;
      }
    }

    v82 = OUTLINED_FUNCTION_90_2();
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v82, v83, v26);
    v84 = v26 + v55 * v56;
    v85 = -v56;
    v86 = v84;
    v87 = v120;
    v88 = v125;
    v129 = v85;
LABEL_46:
    v128 = v53 + v85;
    v89 = v88;
    v109 = v86;
    v125 = v53;
    while (1)
    {
      if (v84 <= v26)
      {
        a10 = v53;
        v130 = v86;
        goto LABEL_75;
      }

      if (v52 >= v53)
      {
        break;
      }

      v124 = v86;
      v90 = v52;
      v91 = v84 + v129;
      v92 = *v127;
      (*v127)(v121, v84 + v129, v87);
      v92(v122, v128, v87);
      v93 = SQLExpression.sql.getter();
      v95 = v94;
      if (v93 == SQLExpression.sql.getter() && v95 == v96)
      {
        v98 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_105_2();
        v98 = OUTLINED_FUNCTION_85();
      }

      v88 = v89 + v129;
      v99 = *v126;
      v87 = v120;
      (*v126)(v122, v120);
      (v99)(v121, v87);
      v52 = v90;
      v53 = v125;
      if (v98)
      {
        if (v89 < v125 || v88 >= v125)
        {
          v53 = v128;
          OUTLINED_FUNCTION_52_2();
          swift_arrayInitWithTakeFrontToBack();
          v86 = v124;
          v26 = v119;
          v85 = v129;
        }

        else
        {
          v86 = v124;
          v49 = v89 == v125;
          v102 = v128;
          v85 = v129;
          v53 = v128;
          v26 = v119;
          if (!v49)
          {
            OUTLINED_FUNCTION_52_2();
            v104 = v103;
            swift_arrayInitWithTakeBackToFront();
            v53 = v102;
            v86 = v104;
          }
        }

        goto LABEL_46;
      }

      if (v89 < v84 || v88 >= v84)
      {
        OUTLINED_FUNCTION_52_2();
        swift_arrayInitWithTakeFrontToBack();
        v89 = v88;
        v84 = v91;
        v86 = v91;
        v26 = v119;
      }

      else
      {
        v86 = v91;
        v49 = v84 == v89;
        v89 = v88;
        v84 = v91;
        v26 = v119;
        if (!v49)
        {
          OUTLINED_FUNCTION_52_2();
          swift_arrayInitWithTakeBackToFront();
          v89 = v88;
          v84 = v91;
          v86 = v91;
        }
      }
    }

    a10 = v53;
    v130 = v109;
LABEL_75:
    v21 = v108;
    v38 = v123;
LABEL_76:
    specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&a10, &v131, &v130);
    v105 = v116;
    v27 = v117;
    Kind = v118;
    if (v116 < v117)
    {
      goto LABEL_83;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      Kind = specialized _ArrayBuffer._consumeAndCreateNew()(Kind);
    }

    if (v114 >= *(Kind + 2))
    {
      goto LABEL_84;
    }

    v106 = &Kind[16 * v115];
    *v106 = v27;
    v106[1] = v105;
    v27 = v111;
    *v111 = Kind;
    specialized Array.remove(at:)(v113);
    Kind = v27->Kind;
  }

  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  v107 = v20;
  v108 = v23;
  v120 = v24;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35(0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v122 = &v107 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v116 = &v107 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v107 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v48 = &v107 - v47;
  v50 = *(v49 + 72);
  if (!v50)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  if (v32 - v34 == 0x8000000000000000 && v50 == -1)
  {
    goto LABEL_71;
  }

  v52 = v30 - v32;
  if (v30 - v32 == 0x8000000000000000 && v50 == -1)
  {
    goto LABEL_72;
  }

  v121 = v45;
  v54 = (v32 - v34) / v50;
  a10 = v34;
  v124 = v28;
  v119 = (v46 + 16);
  v117 = v30;
  v118 = (v46 + 8);
  v55 = v52 / v50;
  if (v54 < v52 / v50)
  {
    v115 = v44;
    v56 = OUTLINED_FUNCTION_77();
    v26(v56);
    v116 = (v28 + v54 * v50);
    v123 = v116;
    v57 = v117;
    v58 = v121;
    v113 = v48;
    v114 = v50;
    while (1)
    {
      if (v28 >= v116 || v32 >= v57)
      {
        goto LABEL_69;
      }

      v122 = v34;
      v60 = *v119;
      v61 = v32;
      (*v119)(v48, v32, v58);
      v62 = OUTLINED_FUNCTION_76();
      v63 = (v60)(v62);
      v64 = v120;
      v65 = v48;
      v66 = v58;
      v67 = (v120)(v63);
      v69 = v68;
      v70 = v64();
      v72 = v71;
      if (v67 == v70 && v69 == v71)
      {

        v80 = OUTLINED_FUNCTION_91();
        v72(v80);
        (v72)(v65, v66);
      }

      else
      {
        OUTLINED_FUNCTION_73();
        v74 = OUTLINED_FUNCTION_85();

        v75 = OUTLINED_FUNCTION_91();
        v72(v75);
        (v72)(v65, v66);
        if (v74)
        {
          v76 = v61;
          v77 = v114;
          v32 = v61 + v114;
          v78 = v122;
          v79 = v122 < v61 || v122 >= v32;
          v57 = v117;
          if (v79)
          {
            v58 = v121;
            swift_arrayInitWithTakeFrontToBack();
            v48 = v113;
          }

          else
          {
            v58 = v121;
            v48 = v113;
            if (v122 != v76)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          goto LABEL_37;
        }
      }

      v77 = v114;
      v81 = v28 + v114;
      v78 = v122;
      v82 = v122 < v28 || v122 >= v81;
      v32 = v61;
      v57 = v117;
      if (v82)
      {
        OUTLINED_FUNCTION_76();
        v58 = v121;
        swift_arrayInitWithTakeFrontToBack();
        v48 = v113;
      }

      else
      {
        v58 = v121;
        v48 = v113;
        if (v122 != v28)
        {
          OUTLINED_FUNCTION_76();
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v124 = v81;
      v28 += v77;
LABEL_37:
      v34 = &v78[v77];
      a10 = v34;
    }
  }

  v83 = OUTLINED_FUNCTION_57();
  v26(v83);
  v84 = v28 + v55 * v50;
  v85 = -v50;
  v86 = v84;
  v87 = v117;
  v88 = v121;
  v111 = -v50;
  v112 = v28;
LABEL_41:
  v113 = v32;
  v114 = v32 + v85;
  v89 = v87;
  v90 = v86;
  v110 = v86;
  while (1)
  {
    if (v84 <= v28)
    {
      a10 = v32;
      v123 = v90;
      goto LABEL_69;
    }

    if (v32 <= v34)
    {
      break;
    }

    v115 = v89;
    v109 = v90;
    v117 = v84;
    v91 = v84 + v85;
    v92 = *v119;
    (*v119)(v116, v84 + v85, v88);
    v93 = (v92)(v122, v114, v88);
    v94 = v120;
    v95 = (v120)(v93);
    v97 = v96;
    if (v95 == v94() && v97 == v98)
    {
      v100 = 0;
    }

    else
    {
      v100 = OUTLINED_FUNCTION_85();
    }

    v85 = v111;
    v101 = v115;
    v87 = &v115[v111];
    v102 = *v118;
    v88 = v121;
    (*v118)(v122, v121);
    v102(v116, v88);
    v28 = v112;
    if (v100)
    {
      if (v101 < v113 || v87 >= v113)
      {
        v32 = v114;
        OUTLINED_FUNCTION_82();
        swift_arrayInitWithTakeFrontToBack();
        v86 = v109;
        v84 = v117;
      }

      else
      {
        v86 = v109;
        v105 = v114;
        v32 = v114;
        v84 = v117;
        if (v101 != v113)
        {
          OUTLINED_FUNCTION_50();
          OUTLINED_FUNCTION_82();
          v86 = v106;
          swift_arrayInitWithTakeBackToFront();
          v84 = v117;
          v32 = v105;
        }
      }

      goto LABEL_41;
    }

    v103 = v101 < v117 || v87 >= v117;
    v32 = v113;
    if (v103)
    {
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_82();
      swift_arrayInitWithTakeFrontToBack();
      v89 = &v101[v85];
      v84 = v91;
      v90 = v91;
      v86 = v110;
    }

    else
    {
      v90 = v91;
      v89 = &v101[v85];
      v84 = v91;
      v86 = v110;
      if (v117 != v101)
      {
        OUTLINED_FUNCTION_50();
        OUTLINED_FUNCTION_82();
        swift_arrayInitWithTakeBackToFront();
        v89 = &v101[v85];
        v84 = v91;
        v90 = v91;
      }
    }
  }

  a10 = v32;
  v123 = v86;
LABEL_69:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&a10, &v124, &v123, v108);
  OUTLINED_FUNCTION_65();
}

{
  OUTLINED_FUNCTION_64();
  a19 = v21;
  a20 = v22;
  v90 = v20;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = type metadata accessor for SQLExpression();
  v32 = *(v31[-1].Description + 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v96 = &v88 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v95 = &v88 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v39 = &v88 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v43 = *(v42 + 72);
  if (!v43)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return;
  }

  v44 = v28 - v30 == 0x8000000000000000 && v43 == -1;
  if (v44)
  {
    goto LABEL_72;
  }

  v45 = v26 - v28;
  if (v26 - v28 == 0x8000000000000000 && v43 == -1)
  {
    goto LABEL_73;
  }

  v47 = (v28 - v30) / v43;
  a10 = v30;
  v101 = v24;
  v97 = (v40 + 8);
  v98 = (v40 + 16);
  v48 = v45 / v43;
  if (v47 < v45 / v43)
  {
    v93 = &v88 - v41;
    v95 = v39;
    v49 = OUTLINED_FUNCTION_132_0();
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(v49, v50, v24);
    v96 = (v24 + v47 * v43);
    v100 = v96;
    v51 = v24;
    v92 = v31;
    v94 = v26;
    while (1)
    {
      if (v51 >= v96 || v28 >= v26)
      {
        goto LABEL_70;
      }

      v53 = *v98;
      v54 = v28;
      (*v98)(v93, v28, v31);
      v99 = v51;
      v55 = v95;
      v53();
      v56 = SQLExpression.sql.getter();
      v58 = v57;
      if (v56 == SQLExpression.sql.getter() && v58 == v59)
      {

        v66 = *v97;
        (*v97)(v55, v31);
        v67 = OUTLINED_FUNCTION_70();
        (v66)(v67);
      }

      else
      {
        v61 = OUTLINED_FUNCTION_85();

        v62 = *v97;
        (*v97)(v55, v31);
        v63 = OUTLINED_FUNCTION_70();
        (v62)(v63);
        if (v61)
        {
          v64 = v54;
          v28 = v54 + v43;
          if (v30 < v54 || v30 >= v28)
          {
            OUTLINED_FUNCTION_149_0();
            v26 = v94;
          }

          else
          {
            v26 = v94;
            v31 = v92;
            if (v30 != v64)
            {
              OUTLINED_FUNCTION_67_2();
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = v99;
          goto LABEL_40;
        }
      }

      v51 = v99 + v43;
      v68 = v30 < v99 || v30 >= v51;
      v28 = v54;
      if (v68)
      {
        OUTLINED_FUNCTION_149_0();
        v26 = v94;
      }

      else
      {
        v26 = v94;
        v31 = v92;
        if (v30 != v99)
        {
          OUTLINED_FUNCTION_67_2();
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v101 = v51;
LABEL_40:
      v30 += v43;
      a10 = v30;
    }
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(v28, v45 / v43, v24);
  v99 = v24;
  v69 = v24 + v48 * v43;
  v70 = -v43;
  v71 = v69;
  v93 = -v43;
LABEL_42:
  v94 = v28;
  v92 = (v28 + v70);
  v72 = v26;
  v89 = v71;
  while (1)
  {
    if (v69 <= v99)
    {
      a10 = v94;
      v100 = v71;
      goto LABEL_70;
    }

    if (v94 <= v30)
    {
      break;
    }

    v91 = v71;
    v73 = v69 + v70;
    v74 = *v98;
    v75 = OUTLINED_FUNCTION_69_1();
    (v74)(v75);
    (v74)(v96, v92, v31);
    v76 = SQLExpression.sql.getter();
    v78 = v77;
    if (v76 == SQLExpression.sql.getter() && v78 == v79)
    {
      v81 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_105_2();
      v81 = OUTLINED_FUNCTION_85();
    }

    v82 = (v72 + v93);
    v83 = *v97;
    (*v97)(v96, v31);
    v83(v95, v31);
    if (v81)
    {
      v85 = v72 < v94 || v82 >= v94;
      v26 = v82;
      if (v85)
      {
        v28 = v92;
        OUTLINED_FUNCTION_67_2();
        swift_arrayInitWithTakeFrontToBack();
        v71 = v91;
        v70 = v93;
      }

      else
      {
        v87 = v91;
        v86 = v92;
        v71 = v91;
        v44 = v72 == v94;
        v28 = v92;
        v70 = v93;
        if (!v44)
        {
          OUTLINED_FUNCTION_67_2();
          swift_arrayInitWithTakeBackToFront();
          v28 = v86;
          v71 = v87;
        }
      }

      goto LABEL_42;
    }

    if (v72 < v69 || v82 >= v69)
    {
      OUTLINED_FUNCTION_67_2();
      swift_arrayInitWithTakeFrontToBack();
      v72 = v82;
      v69 = v73;
      v71 = v73;
      v70 = v93;
    }

    else
    {
      v71 = v73;
      v44 = v69 == v72;
      v72 = v82;
      v69 = v73;
      v70 = v93;
      if (!v44)
      {
        OUTLINED_FUNCTION_67_2();
        swift_arrayInitWithTakeBackToFront();
        v72 = v82;
        v69 = v73;
        v71 = v73;
      }
    }
  }

  a10 = v94;
  v100 = v89;
LABEL_70:
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&a10, &v101, &v100);
  OUTLINED_FUNCTION_65();
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v5 - 1 - a1;
    v8 = v3 + 16 * a1;
    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    memmove((v8 + 32), (v8 + 48), 16 * v7);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v9;
  }

  return result;
}

void specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(a1, a2, a3, type metadata accessor for SQLExpression);
}

{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser11SQLDataTypeO5valuetMR);
  OUTLINED_FUNCTION_12(v6);
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v5 - v4 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_97();
  v11 = !v11 || v3 >= v10;
  if (v11)
  {
    OUTLINED_FUNCTION_60();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {
    OUTLINED_FUNCTION_60();

    swift_arrayInitWithTakeBackToFront();
  }
}

void specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  v7 = a4(0);
  OUTLINED_FUNCTION_12(v7);
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_97();
  v12 = !v12 || v4 >= v11;
  if (v12)
  {
    OUTLINED_FUNCTION_60();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_60();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *specialized UnsafeMutablePointer.moveInitialize(from:count:)(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySnySiGGMd, &_ss23_ContiguousArrayStorageCySnySiGGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser7BindingVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser7BindingVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySsGMd, &_ss23_ContiguousArrayStorageCySsGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14BiomeSQLParser13SQLExpressionVGMd, &_ss23_ContiguousArrayStorageCy14BiomeSQLParser13SQLExpressionVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t specialized ArraySlice.subscript.getter(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.NullValueCodingKeys and conformance StorableValue.NullValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.UuidValueCodingKeys and conformance StorableValue.UuidValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DataValueCodingKeys and conformance StorableValue.DataValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.JsonValueCodingKeys and conformance StorableValue.JsonValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.StringValueCodingKeys and conformance StorableValue.StringValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DateValueCodingKeys and conformance StorableValue.DateValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.DoubleValueCodingKeys and conformance StorableValue.DoubleValueCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys()
{
  result = lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys;
  if (!lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StorableValue.IntegerValueCodingKeys and conformance StorableValue.IntegerValueCodingKeys);
  }

  return result;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorableValue.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StorableValue.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StorableValue.IntegerValueCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for StorableValue.IntegerValueCodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ChangeOperation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ChangeOperation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ChangeOperation and conformance ChangeOperation()
{
  result = lazy protocol witness table cache variable for type ChangeOperation and conformance ChangeOperation;
  if (!lazy protocol witness table cache variable for type ChangeOperation and conformance ChangeOperation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ChangeOperation and conformance ChangeOperation);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AC30](a1, a2, v2, a1);
}

uint64_t *OUTLINED_FUNCTION_55@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_0Tm(v2);
}

uint64_t get_enum_tag_for_layout_string_ypSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for SQLError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 65))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xB)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SQLError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 246;
    if (a3 >= 0xF6)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SQLError(uint64_t result, unsigned int a2)
{
  if (a2 > 0xA)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 11;
    LOBYTE(a2) = 11;
  }

  *(result + 64) = a2;
  return result;
}

void SQLError.description.getter()
{
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
  v1 = OUTLINED_FUNCTION_12(v108);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v107 = (&v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v106 = &v97 - v6;
  outlined init with copy of SQLError(v0, &v117);
  switch(v121)
  {
    case 1:
      v36 = v118;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(32);

      OUTLINED_FUNCTION_0_16();
      *&v116[0] = v38 - 7;
      *(&v116[0] + 1) = v37;
      v39 = OUTLINED_FUNCTION_2_5();
      MEMORY[0x1865F6280](v39);

      MEMORY[0x1865F6280](0x70797420666F2022, 0xEB00000000222065);
      v41 = v36 >> 64;
      v40 = v36;
      goto LABEL_15;
    case 2:
      v8 = *(&v117 + 1);
      v7 = v117;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(25);

      OUTLINED_FUNCTION_0_16();
      v11 = v25 - 1;
      goto LABEL_9;
    case 3:
      v116[0] = v117;
      v116[1] = v118;
      v113[1] = v120;
      v113[0] = v119;
      v114 = 0;
      v115 = 0xE000000000000000;
      if (*(&v120 + 1))
      {
        _StringGuts.grow(_:)(53);
        MEMORY[0x1865F6280](0xD000000000000017, 0x8000000184DDB950);
        v26 = OUTLINED_FUNCTION_2_5();
        __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
        v28 = Optional.debugDescription.getter();
        MEMORY[0x1865F6280](v28);

        MEMORY[0x1865F6280](0xD000000000000019, 0x8000000184DDB970);
      }

      else
      {
        _StringGuts.grow(_:)(26);

        OUTLINED_FUNCTION_0_16();
        v114 = v88;
        v115 = v87;
        v89 = OUTLINED_FUNCTION_2_5();
        __swift_instantiateConcreteTypeFromMangledNameV2(v89, v90);
      }

      v91 = Optional.debugDescription.getter();
      MEMORY[0x1865F6280](v91);

      MEMORY[0x1865F6280](34, 0xE100000000000000);
      outlined destroy of UUID?(v116, &_sypSgMd, &_sypSgMR);
      outlined destroy of UUID?(v113, &_sypSgMd, &_sypSgMR);
      return;
    case 4:
      v12 = v117;
      v14 = *(&v118 + 1);
      v13 = v118;
      v15 = v119;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(85);
      v113[0] = v116[0];
      MEMORY[0x1865F6280](0xD000000000000032, 0x8000000184DDB8F0);
      MEMORY[0x1865F6280](v12, *(&v12 + 1));

      MEMORY[0x1865F6280](0xD000000000000013, 0x8000000184DDB930);
      v16 = *(v13 + 16);
      if (v16)
      {
        v111 = v14;
        v112 = v15;
        v17 = 0;
        v18 = v13 + 32;
        v19 = 0xE000000000000000;
        do
        {
          outlined init with copy of Any?(v18, v116);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
          v20 = Optional.debugDescription.getter();
          v22 = v21;
          v114 = v17;
          v115 = v19;

          MEMORY[0x1865F6280](v20, v22);

          MEMORY[0x1865F6280](8236, 0xE200000000000000);

          v17 = v114;
          v19 = v115;
          outlined destroy of UUID?(v116, &_sypSgMd, &_sypSgMR);
          v18 += 32;
          --v16;
        }

        while (v16);

        v15 = v112;
        v14 = v111;
      }

      else
      {

        v17 = 0;
        v19 = 0xE000000000000000;
      }

      MEMORY[0x1865F6280](v17, v19);

      MEMORY[0x1865F6280](0x726F727265202C22, 0xEA0000000000203ALL);
      MEMORY[0x1865F6280](v14, v15);

      return;
    case 5:
      v42 = v117;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(50);

      OUTLINED_FUNCTION_0_16();
      *&v116[0] = v44 + 24;
      *(&v116[0] + 1) = v43;
      v113[0] = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v40 = String.init<A>(describing:)();
LABEL_15:
      MEMORY[0x1865F6280](v40, v41);
      goto LABEL_16;
    case 6:
      v45 = v117;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(39);

      OUTLINED_FUNCTION_0_16();
      *&v113[0] = v46;
      *(&v113[0] + 1) = v47;
      Hasher.init(_seed:)();
      MEMORY[0x1865F6890](v45);
      *&v116[0] = Hasher._finalize()();
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865F6280](v48);

      MEMORY[0x1865F6280](0x70786520746F6E20, 0xEE002E6465746365);
      return;
    case 7:
      v29 = v117;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(49);

      OUTLINED_FUNCTION_0_16();
      *&v116[0] = v31 | 8;
      *(&v116[0] + 1) = v30;
      *&v113[0] = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      lazy protocol witness table accessor for type [String] and conformance [A]();
      v32 = OUTLINED_FUNCTION_5_2();
      v34 = v33;

      MEMORY[0x1865F6280](v32, v34);

      MEMORY[0x1865F6280](0x6F6C796170202C22, 0xED000022203A6461);
      *&v113[0] = *(&v29 + 1);
      OUTLINED_FUNCTION_5_2();

      v35 = OUTLINED_FUNCTION_2_5();
      MEMORY[0x1865F6280](v35);
      goto LABEL_16;
    case 8:
      v53 = *(&v117 + 1);
      v54 = v117;
      v55 = v118;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(33);

      strcpy(v116, "Metadata: [");
      BYTE13(v116[0]) = 0;
      HIWORD(v116[0]) = -5120;
      v56 = *(v54 + 16);
      if (!v56)
      {

        v57 = MEMORY[0x1E69E7CC0];
        goto LABEL_46;
      }

      v98 = v53;
      v99 = v55;
      v114 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56, 0);
      v57 = v114;
      v60 = specialized Dictionary.startIndex.getter(v54);
      v61 = 0;
      v62 = v54 + 64;
      v101 = v58;
      v100 = v54 + 72;
      v102 = v56;
      v103 = v54 + 64;
      v104 = v54;
      while ((v60 & 0x8000000000000000) == 0 && v60 < 1 << *(v54 + 32))
      {
        v63 = v60 >> 6;
        if ((*(v62 + 8 * (v60 >> 6)) & (1 << v60)) == 0)
        {
          goto LABEL_48;
        }

        if (*(v54 + 36) != v58)
        {
          goto LABEL_49;
        }

        v111 = 1 << v60;
        v110 = v58;
        v105 = v59;
        v109 = v61;
        v64 = v108;
        v65 = *(v108 + 48);
        v66 = *(v54 + 48);
        v67 = *(v54 + 56);
        v68 = (v66 + 16 * v60);
        v69 = *v68;
        v70 = v68[1];
        v71 = type metadata accessor for StorableValue(0);
        OUTLINED_FUNCTION_12(v71);
        v73 = v106;
        outlined init with copy of StorableValue(v67 + *(v72 + 72) * v60, &v106[v65]);
        v112 = v57;
        v74 = v107;
        *v107 = v69;
        v74[1] = v70;
        outlined init with take of StorableValue(&v73[v65], v74 + *(v64 + 48));
        *&v113[0] = 0;
        *(&v113[0] + 1) = 0xE000000000000000;

        MEMORY[0x1865F6280](v69, v70);
        MEMORY[0x1865F6280](32, 0xE100000000000000);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865F6280](32, 0xE100000000000000);
        v75 = v113[0];
        v76 = v74;
        v57 = v112;
        outlined destroy of UUID?(v76, &_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR);
        v114 = v57;
        v78 = *(v57 + 16);
        v77 = *(v57 + 24);
        if (v78 >= v77 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v77 > 1, v78 + 1, 1);
          v57 = v114;
        }

        *(v57 + 16) = v78 + 1;
        *(v57 + 16 * v78 + 32) = v75;
        v54 = v104;
        v79 = 1 << *(v104 + 32);
        if (v60 >= v79)
        {
          goto LABEL_50;
        }

        v62 = v103;
        v80 = *(v103 + 8 * v63);
        if ((v80 & v111) == 0)
        {
          goto LABEL_51;
        }

        if (*(v104 + 36) != v110)
        {
          goto LABEL_52;
        }

        v81 = v80 & (-2 << (v60 & 0x3F));
        if (v81)
        {
          v79 = __clz(__rbit64(v81)) | v60 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v82 = v63 << 6;
          v83 = v63 + 1;
          v84 = (v100 + 8 * v63);
          while (v83 < (v79 + 63) >> 6)
          {
            v86 = *v84++;
            v85 = v86;
            v82 += 64;
            ++v83;
            if (v86)
            {
              outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v60, v110, v105 & 1);
              v79 = __clz(__rbit64(v85)) + v82;
              goto LABEL_38;
            }
          }

          outlined consume of [[StorableValue] : [String : StorableValue]].Index._Variant(v60, v110, v105 & 1);
        }

LABEL_38:
        v59 = 0;
        v61 = v109 + 1;
        v60 = v79;
        v58 = v101;
        if (v109 + 1 == v102)
        {

          v55 = v99;
          v53 = v98;
LABEL_46:
          *&v113[0] = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
          lazy protocol witness table accessor for type [String] and conformance [A]();
          v92 = BidirectionalCollection<>.joined(separator:)();
          v94 = v93;

          MEMORY[0x1865F6280](v92, v94);

          OUTLINED_FUNCTION_3_6();
          MEMORY[0x1865F6280](v95 - 6, v96 | 0x8000000000000000);
          MEMORY[0x1865F6280](v53, v55);

          return;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return;
    case 9:
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(54);
      OUTLINED_FUNCTION_3_6();
      MEMORY[0x1865F6280](v23 + 28, v24 | 0x8000000000000000);
      QueryPlannerMetadata.description.getter();
      MEMORY[0x1865F6280]();

      MEMORY[0x1865F6280](34, 0xE100000000000000);

      return;
    case 10:
      v49 = v118;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(35);
      OUTLINED_FUNCTION_3_6();
      MEMORY[0x1865F6280](v50 - 1, v51 | 0x8000000000000000);
      v52 = OUTLINED_FUNCTION_2_5();
      MEMORY[0x1865F6280](v52);

      MEMORY[0x1865F6280](0x3A726F727245202ELL, 0xE900000000000020);
      *&v113[0] = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      _print_unlocked<A, B>(_:_:)();

      return;
    default:
      v8 = *(&v117 + 1);
      v7 = v117;
      OUTLINED_FUNCTION_1_13();
      _StringGuts.grow(_:)(19);

      OUTLINED_FUNCTION_0_16();
      v11 = v10 - 7;
LABEL_9:
      *&v116[0] = v11;
      *(&v116[0] + 1) = v9;
      MEMORY[0x1865F6280](v7, v8);
LABEL_16:

      MEMORY[0x1865F6280](34, 0xE100000000000000);
      return;
  }
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Dataflow.legacyName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_81();
}

uint64_t Dataflow.legacyConfigHash.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_81();
}

uint64_t Dataflow.legacyFeatureFlag.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_81();
}

uint64_t Dataflow.legacyType.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_81();
}

uint64_t Dataflow.legacyConfig.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_81();
}

uint64_t Dataflow.legacyCreateTable.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_81();
}

uint64_t Dataflow.legacySQL.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_81();
}

uint64_t getEnumTagSinglePayload for Dataflow(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Dataflow(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void __swiftcall BMSQLDatabase.execute(query:)(BMSQLResultSet *__return_ptr retstr, Swift::String query)
{
  v3 = MEMORY[0x1865F6160](retstr, query._countAndFlagsBits, query._object);
  v4 = [v2 _executeQuery_];
}

Swift::Int DataProtectionClass.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865F6890](v1);
  return Hasher._finalize()();
}

Swift::Int Domain.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865F6890](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DataProtectionClass and conformance DataProtectionClass()
{
  result = lazy protocol witness table cache variable for type DataProtectionClass and conformance DataProtectionClass;
  if (!lazy protocol witness table cache variable for type DataProtectionClass and conformance DataProtectionClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataProtectionClass and conformance DataProtectionClass);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Domain and conformance Domain()
{
  result = lazy protocol witness table cache variable for type Domain and conformance Domain;
  if (!lazy protocol witness table cache variable for type Domain and conformance Domain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Domain and conformance Domain);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataProtectionClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DataProtectionClass(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Domain(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t StoreStreamProtocol.identifier.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))();
  v3 = [v2 identifier];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v4;
}

uint64_t StoreStreamProtocol.source()(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))();
  v3 = [v2 source];

  v4 = objc_opt_self();

  return MEMORY[0x1EEE6BE20](v3, v4, 0, 0, 0);
}

void StoreStreamProtocol.publisher(with:)(double a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 24))();
  v5 = [v4 publisherFromStartTime_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BMStoreEventCMd, &_sSo12BMStoreEventCMR);

  JUMPOUT(0x1865F5CD0);
}

uint64_t StoreStreamProtocol.publisher(startDate:endDate:maxEvents:lastN:reversed:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v37[1] = a3;
  v37[2] = a5;
  v37[3] = a9;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v37 - v22;
  v24 = (*(a10 + 24))(a8, a10);
  outlined init with copy of Date?(a1, v23);
  v25 = type metadata accessor for Date();
  if (__swift_getEnumTagSinglePayload(v23, 1, v25) == 1)
  {
    outlined destroy of Date?(v23);
    v26 = 0;
  }

  else
  {
    Date.timeIntervalSinceReferenceDate.getter();
    OUTLINED_FUNCTION_1_14();
    v28 = (*(v27 + 8))(v23, v25);
    v26 = MEMORY[0x1865F63C0](v28, v10);
  }

  outlined init with copy of Date?(a2, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v25) == 1)
  {
    outlined destroy of Date?(v21);
    v29 = 0;
    if ((a4 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v30.super.super.isa = 0;
    if ((a6 & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_10:
    v31.super.super.isa = 0;
    goto LABEL_11;
  }

  Date.timeIntervalSinceReferenceDate.getter();
  OUTLINED_FUNCTION_1_14();
  v33 = (*(v32 + 8))(v21, v25);
  v29 = MEMORY[0x1865F63C0](v33, v10);
  if (a4)
  {
    goto LABEL_9;
  }

LABEL_6:
  v30.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
  if (a6)
  {
    goto LABEL_10;
  }

LABEL_7:
  v31.super.super.isa = Int._bridgeToObjectiveC()().super.super.isa;
LABEL_11:
  v34 = [v24 publisherWithStartTime:v26 endTime:v29 maxEvents:v30.super.super.isa lastN:v31.super.super.isa reversed:a7 & 1];

  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BMStoreEventCMd, &_sSo12BMStoreEventCMR);
  return MEMORY[0x1865F5CD0](v34, v35);
}

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Date?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void protocol witness for TimeBasedBookmarkablePublisherStream.publisher(with:) in conformance Streams.StoreStream<A>(uint64_t a1, double a2)
{
  v4 = OUTLINED_FUNCTION_0_17();

  StoreStreamProtocol.publisher(with:)(a2, a1, v4);
}

uint64_t protocol witness for SourceStream.source() in conformance Streams.StoreStream<A>(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17();

  return StoreStreamProtocol.source()(a1, v2);
}

uint64_t protocol witness for IdentifiableStream.identifier.getter in conformance Streams.StoreStream<A>(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_17();

  return StoreStreamProtocol.identifier.getter(a1, v2);
}

uint64_t type metadata completion function for OrderedDictionary.KeyWrapper(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata instantiation function for OrderedDictionary()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for OrderedDictionary(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for OrderedDictionary(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t LibraryArtifact.SQLDataType.init(_:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  if (result >= 7)
  {
    lazy protocol witness table accessor for type SQLError and conformance SQLError();
    swift_allocError();
    v4 = v3;
    type metadata accessor for BMSQLDataType();
    *(v4 + 24) = v5;
    *v4 = v2;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 3;
    return swift_willThrow();
  }

  else
  {
    *a2 = result;
  }

  return result;
}

Swift::Int LibraryArtifact.ResourceType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865F6890](v1);
  return Hasher._finalize()();
}

uint64_t LibraryArtifact.Table.column(for:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = result;
  v7 = *(v3 + 32);
  v8 = *(v7 + 16);
  v9 = (v7 + 32);
  if (v8)
  {
    while (1)
    {
      memcpy(__dst, v9, sizeof(__dst));
      if (__dst[0] == v5 && __dst[1] == a2)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v9 += 120;
      if (!--v8)
      {
        goto LABEL_8;
      }
    }

    memcpy(a3, __dst, 0x78uLL);
    return outlined init with copy of LibraryArtifact.Column(__dst, &v11);
  }

  else
  {
LABEL_8:
    *(a3 + 14) = 0;
    a3[5] = 0u;
    a3[6] = 0u;
    a3[3] = 0u;
    a3[4] = 0u;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

uint64_t static LibraryArtifact.Table.== infix(_:_:)(void *a1, void *a2)
{
  return static LibraryArtifact.Table.== infix(_:_:)(a1, a2);
}

{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (v5)
    {
      v9 = v2 == v6 && v4 == v5;
      if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v5)
  {
    return 0;
  }

LABEL_13:
  v10 = OUTLINED_FUNCTION_81();

  return v11(v10);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12BiomeStreams15LibraryArtifactO6ColumnV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 120)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      outlined init with copy of LibraryArtifact.Column(__dst, v7);
      outlined init with copy of LibraryArtifact.Column(v11, v7);
      v5 = static LibraryArtifact.Column.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      outlined destroy of LibraryArtifact.Column(v12);
      memcpy(v13, v9, sizeof(v13));
      outlined destroy of LibraryArtifact.Column(v13);
      if (!v5)
      {
        break;
      }

      v3 += 120;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ12BiomeStreams15LibraryArtifactO16EnumerationValueV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      v8 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 3) == *(v3 - 3) && *(i - 2) == *(v3 - 2);
      if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      if (v6)
      {
        if (!v7)
        {
          return 0;
        }

        v10 = v5 == v8 && v6 == v7;
        if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v7)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t LibraryArtifact.Enumeration.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_81();
}

uint64_t LibraryArtifact.Enumeration.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_81();
}

void __swiftcall LibraryArtifact.Enumeration.init(name:description:allowedValues:)(BiomeStreams::LibraryArtifact::Enumeration *__return_ptr retstr, Swift::String name, Swift::String_optional description, Swift::OpaquePointer allowedValues)
{
  retstr->name = name;
  retstr->description = description;
  retstr->allowedValues = allowedValues;
}

uint64_t LibraryArtifact.EnumerationValue.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_81();
}

uint64_t LibraryArtifact.EnumerationValue.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_81();
}

BiomeStreams::LibraryArtifact::EnumerationValue __swiftcall LibraryArtifact.EnumerationValue.init(name:description:)(Swift::String name, Swift::String_optional description)
{
  v2->value = name;
  v2[1] = description;
  result.description = description;
  result.name = name;
  return result;
}

uint64_t static LibraryArtifact.EnumerationValue.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t LibraryArtifact.Column.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_81();
}

uint64_t LibraryArtifact.Column.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_81();
}

uint64_t LibraryArtifact.Column.objectType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return outlined copy of LibraryArtifact.Table?(v2, v3);
}

uint64_t LibraryArtifact.Column.enumerationType.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[10];
  v3 = v1[11];
  v4 = v1[12];
  v5 = v1[13];
  v6 = v1[14];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  return outlined copy of LibraryArtifact.Table?(v2, v3);
}

uint64_t outlined copy of LibraryArtifact.Table?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

__n128 LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, unsigned __int8 a11, uint64_t a12, uint64_t a13)
{
  v13 = *a5;
  v14 = *a6;
  v15 = *a7;
  v16 = *(a12 + 32);
  v17 = *(a13 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v13;
  *(a9 + 33) = v14;
  *(a9 + 34) = v15;
  *(a9 + 35) = a8;
  *(a9 + 36) = a10;
  *(a9 + 37) = a11;
  v18 = *(a12 + 16);
  *(a9 + 40) = *a12;
  *(a9 + 56) = v18;
  *(a9 + 72) = v16;
  result = *a13;
  v20 = *(a13 + 16);
  *(a9 + 80) = *a13;
  *(a9 + 96) = v20;
  *(a9 + 112) = v17;
  return result;
}

__n128 LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:hidden:objectType:enumerationType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, char a11, char a12, uint64_t a13, uint64_t a14)
{
  v14 = *a5;
  v15 = *a6;
  v16 = *a7;
  v17 = *(a13 + 32);
  v18 = *(a14 + 32);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v14;
  *(a9 + 33) = v15;
  *(a9 + 34) = v16;
  *(a9 + 35) = a8;
  *(a9 + 36) = a10;
  *(a9 + 37) = a11;
  *(a9 + 38) = a12;
  v19 = *(a13 + 16);
  *(a9 + 40) = *a13;
  *(a9 + 56) = v19;
  *(a9 + 72) = v17;
  result = *a14;
  v21 = *(a14 + 16);
  *(a9 + 80) = *a14;
  *(a9 + 96) = v21;
  *(a9 + 112) = v18;
  return result;
}

BOOL static LibraryArtifact.Column.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 34);
  v109 = *(a1 + 35);
  v107 = *(a1 + 36);
  v105 = *(a1 + 37);
  v103 = *(a1 + 38);
  v96 = *(a1 + 48);
  v97 = *(a1 + 40);
  v98 = *(a1 + 56);
  v100 = *(a1 + 64);
  v99 = *(a1 + 72);
  v85 = *(a1 + 80);
  v91 = *(a1 + 88);
  v86 = *(a1 + 96);
  v87 = *(a1 + 112);
  v88 = *(a1 + 104);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = *(a2 + 34);
  v108 = *(a2 + 35);
  v106 = *(a2 + 36);
  v12 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  v104 = *(a2 + 37);
  v102 = *(a2 + 38);
  v92 = *(a2 + 40);
  v101 = *(a2 + 48);
  v93 = *(a2 + 56);
  v94 = *(a2 + 64);
  v95 = *(a2 + 72);
  v89 = *(a2 + 80);
  v90 = *(a2 + 88);
  v84 = *(a2 + 96);
  v82 = *(a2 + 112);
  v83 = *(a2 + 104);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (!v3)
  {
    result = 0;
    if (v7)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (!v7)
  {
    return 0;
  }

  if (v2 != v8 || v3 != v7)
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v14 & 1) == 0)
    {
      return result;
    }

LABEL_15:
    if (v4 != v9)
    {
      return result;
    }

    goto LABEL_18;
  }

  if (v4 != v9)
  {
    return 0;
  }

LABEL_18:
  if (v5 == 8)
  {
    if (v10 != 8)
    {
      return 0;
    }
  }

  else if (v10 == 8 || v5 != v10)
  {
    return 0;
  }

  if (v6 == 21)
  {
    if (v11 != 21)
    {
      return 0;
    }

    result = 0;
    if (v109 != v108)
    {
      return result;
    }
  }

  else
  {
    if (v11 == 21)
    {
      return 0;
    }

    result = 0;
    if (v6 != v11 || ((v109 ^ v108) & 1) != 0)
    {
      return result;
    }
  }

  if (((v107 ^ v106) & 1) == 0 && ((v105 ^ v104) & 1) == 0 && ((v103 ^ v102) & 1) == 0)
  {
    if (v96)
    {
      if (v101)
      {
        v17 = v97 == v92 && v96 == v101;
        if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_57;
        }

        if (v100)
        {
          if (!v94)
          {
            v33 = v97;
            goto LABEL_77;
          }

          v18 = v98 == v93 && v100 == v94;
          if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
LABEL_57:
            OUTLINED_FUNCTION_6_1();
LABEL_77:
            v55 = v33;
            OUTLINED_FUNCTION_12_0(v33);
            OUTLINED_FUNCTION_4_4();
            outlined copy of LibraryArtifact.Table?(v56, v57);
            OUTLINED_FUNCTION_12_0(v55);
            OUTLINED_FUNCTION_4_4();
            outlined consume of LibraryArtifact.Table?(v58, v59);

            v29 = v55;
            v30 = v96;
            goto LABEL_85;
          }
        }

        else if (v94)
        {
          goto LABEL_57;
        }

        v34 = OUTLINED_FUNCTION_0_18();
        outlined copy of LibraryArtifact.Table?(v34, v35);
        OUTLINED_FUNCTION_2_6();
        outlined copy of LibraryArtifact.Table?(v36, v37);
        v38 = OUTLINED_FUNCTION_0_18();
        outlined copy of LibraryArtifact.Table?(v38, v39);
        v110 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ12BiomeStreams15LibraryArtifactO6ColumnV_Tt1g5(v99, v95);
        OUTLINED_FUNCTION_39();
        OUTLINED_FUNCTION_2_6();
        outlined consume of LibraryArtifact.Table?(v40, v41);

        v42 = OUTLINED_FUNCTION_0_18();
        outlined consume of LibraryArtifact.Table?(v42, v43);
        if ((v110 & 1) == 0)
        {
          return 0;
        }

LABEL_59:
        v44 = v91;
        if (v91)
        {
          v45 = v86;
          v46 = v85;
          v47 = v90;
          if (v90)
          {
            if (v85 != v89 || v91 != v90)
            {
              v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v44 = v91;
              v46 = v85;
              v45 = v86;
              if ((v49 & 1) == 0)
              {
                goto LABEL_84;
              }
            }

            if (v88)
            {
              if (!v83)
              {
                goto LABEL_84;
              }

              if (v45 != v84 || v88 != v83)
              {
                v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
                v44 = v91;
                v46 = v85;
                if ((v51 & 1) == 0)
                {
                  goto LABEL_84;
                }
              }
            }

            else if (v83)
            {
LABEL_84:
              outlined copy of LibraryArtifact.Table?(v46, v44);
              outlined copy of LibraryArtifact.Table?(v89, v90);
              v78 = OUTLINED_FUNCTION_1_15();
              outlined copy of LibraryArtifact.Table?(v78, v79);
              OUTLINED_FUNCTION_2_6();
              outlined consume of LibraryArtifact.Table?(v80, v81);

              v29 = OUTLINED_FUNCTION_1_15();
              goto LABEL_85;
            }

            v111 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ12BiomeStreams15LibraryArtifactO16EnumerationValueV_Tt1g5(v87, v82);
            v68 = OUTLINED_FUNCTION_1_15();
            outlined copy of LibraryArtifact.Table?(v68, v69);
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_2_6();
            outlined copy of LibraryArtifact.Table?(v70, v71);
            v72 = OUTLINED_FUNCTION_0_18();
            outlined copy of LibraryArtifact.Table?(v72, v73);
            OUTLINED_FUNCTION_39();
            OUTLINED_FUNCTION_2_6();
            outlined consume of LibraryArtifact.Table?(v74, v75);

            v76 = OUTLINED_FUNCTION_0_18();
            outlined consume of LibraryArtifact.Table?(v76, v77);
            return (v111 & 1) != 0;
          }

          OUTLINED_FUNCTION_4_4();
          outlined copy of LibraryArtifact.Table?(v60, v61);
          v54 = v89;
          OUTLINED_FUNCTION_11_0(v89, 0);
          OUTLINED_FUNCTION_4_4();
          outlined copy of LibraryArtifact.Table?(v62, v63);
        }

        else
        {
          OUTLINED_FUNCTION_4_4();
          outlined copy of LibraryArtifact.Table?(v52, v53);
          v47 = v90;
          if (!v90)
          {
            outlined copy of LibraryArtifact.Table?(v89, 0);
            OUTLINED_FUNCTION_4_4();
            outlined consume of LibraryArtifact.Table?(v66, v67);
            return 1;
          }

          v54 = v89;
          OUTLINED_FUNCTION_11_0(v89, v90);
        }

        OUTLINED_FUNCTION_4_4();
        outlined consume of LibraryArtifact.Table?(v64, v65);
        v29 = v54;
        v30 = v47;
        goto LABEL_85;
      }

      v21 = OUTLINED_FUNCTION_0_18();
      outlined copy of LibraryArtifact.Table?(v21, v22);
      OUTLINED_FUNCTION_2_6();
      outlined copy of LibraryArtifact.Table?(v23, v24);
      v25 = OUTLINED_FUNCTION_0_18();
      outlined copy of LibraryArtifact.Table?(v25, v26);
    }

    else
    {
      outlined copy of LibraryArtifact.Table?(v97, 0);
      if (!v101)
      {
        OUTLINED_FUNCTION_2_6();
        outlined copy of LibraryArtifact.Table?(v31, v32);
        outlined consume of LibraryArtifact.Table?(v97, 0);
        goto LABEL_59;
      }

      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_2_6();
      outlined copy of LibraryArtifact.Table?(v19, v20);
    }

    v27 = OUTLINED_FUNCTION_0_18();
    outlined consume of LibraryArtifact.Table?(v27, v28);
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_2_6();
LABEL_85:
    outlined consume of LibraryArtifact.Table?(v29, v30);
    return 0;
  }

  return result;
}

uint64_t outlined consume of LibraryArtifact.Table?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t LibraryArtifact.Table.createTableSQL.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[4];
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(46);

  v31 = 0xD000000000000020;
  v32 = 0x8000000184DDB9D0;
  MEMORY[0x1865F6280](v1, v2);
  MEMORY[0x1865F6280](0x202020200A282022, 0xE900000000000020);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v30 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v6 = (v3 + 32);
    v5 = v30;
    do
    {
      memcpy(__dst, v6, sizeof(__dst));
      v7 = LOBYTE(__dst[4]);
      v8 = __dst[0];
      v9 = __dst[1];
      v27 = 34;
      v28 = 0xE100000000000000;

      outlined init with copy of LibraryArtifact.Column(__dst, &v26);
      MEMORY[0x1865F6280](v8, v9);

      MEMORY[0x1865F6280](8226, 0xE200000000000000);
      v10 = BYTE6(__dst[4]);
      v11 = BMSQLDataTypeToString(v7);
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      MEMORY[0x1865F6280](v12, v14);

      if (v10)
      {
        v15 = 0x4E454444494820;
      }

      else
      {
        v15 = 0;
      }

      if (v10)
      {
        v16 = 0xE700000000000000;
      }

      else
      {
        v16 = 0xE000000000000000;
      }

      MEMORY[0x1865F6280](v15, v16);

      outlined destroy of LibraryArtifact.Column(__dst);
      v17 = v27;
      v18 = v28;
      v30 = v5;
      v20 = *(v5 + 16);
      v19 = *(v5 + 24);
      if (v20 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v19 > 1, v20 + 1, 1);
        v5 = v30;
      }

      *(v5 + 16) = v20 + 1;
      v21 = v5 + 16 * v20;
      *(v21 + 32) = v17;
      *(v21 + 40) = v18;
      v6 += 120;
      --v4;
    }

    while (v4);
  }

  __dst[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A](&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR);
  v22 = BidirectionalCollection<>.joined(separator:)();
  v24 = v23;

  MEMORY[0x1865F6280](v22, v24);

  MEMORY[0x1865F6280](41, 0xE100000000000000);
  return v31;
}

unint64_t lazy protocol witness table accessor for type LibraryArtifact.ResourceType and conformance LibraryArtifact.ResourceType()
{
  result = lazy protocol witness table cache variable for type LibraryArtifact.ResourceType and conformance LibraryArtifact.ResourceType;
  if (!lazy protocol witness table cache variable for type LibraryArtifact.ResourceType and conformance LibraryArtifact.ResourceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LibraryArtifact.ResourceType and conformance LibraryArtifact.ResourceType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LibraryArtifact.SQLDataType and conformance LibraryArtifact.SQLDataType()
{
  result = lazy protocol witness table cache variable for type LibraryArtifact.SQLDataType and conformance LibraryArtifact.SQLDataType;
  if (!lazy protocol witness table cache variable for type LibraryArtifact.SQLDataType and conformance LibraryArtifact.SQLDataType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LibraryArtifact.SQLDataType and conformance LibraryArtifact.SQLDataType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LibraryArtifact.Predicate and conformance LibraryArtifact.Predicate()
{
  result = lazy protocol witness table cache variable for type LibraryArtifact.Predicate and conformance LibraryArtifact.Predicate;
  if (!lazy protocol witness table cache variable for type LibraryArtifact.Predicate and conformance LibraryArtifact.Predicate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LibraryArtifact.Predicate and conformance LibraryArtifact.Predicate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LibraryArtifact.RepresentationType and conformance LibraryArtifact.RepresentationType()
{
  result = lazy protocol witness table cache variable for type LibraryArtifact.RepresentationType and conformance LibraryArtifact.RepresentationType;
  if (!lazy protocol witness table cache variable for type LibraryArtifact.RepresentationType and conformance LibraryArtifact.RepresentationType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LibraryArtifact.RepresentationType and conformance LibraryArtifact.RepresentationType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LibraryArtifact(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LibraryArtifact.ResourceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LibraryArtifact.Predicate(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LibraryArtifact.RepresentationType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LibraryArtifact.RepresentationType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LibraryArtifact.Table(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryArtifact.Table(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LibraryArtifact.EnumerationValue(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryArtifact.EnumerationValue(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12BiomeStreams15LibraryArtifactO5TableVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for LibraryArtifact.Column(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryArtifact.Column(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_14BiomeSQLParser11SQLDataTypeOtGMd, &_ss23_ContiguousArrayStorageCySS_14BiomeSQLParser11SQLDataTypeOtGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_14BiomeSQLParser11SQLDataTypeOtMd, &_sSS_14BiomeSQLParser11SQLDataTypeOtMR) - 8) + 80);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS10columnName_14BiomeSQLParser11SQLDataTypeO04dataI0tGMd, &_ss23_ContiguousArrayStorageCySS10columnName_14BiomeSQLParser11SQLDataTypeO04dataI0tGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMd, &_sSS10columnName_14BiomeSQLParser11SQLDataTypeO04dataF0tMR) - 8) + 80);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataK0tGMd, &_ss23_ContiguousArrayStorageCySS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataK0tGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMd, &_sSS11metadataKey_SS10columnName14BiomeSQLParser11SQLDataTypeO04dataH0tMR) - 8) + 80);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMd, &_sSS3key_14BiomeSQLParser14SQLRawDataTypeO5valuetMR) - 8) + 80);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_12BiomeStreams13StorableValueO5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_12BiomeStreams13StorableValueO5valuetGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS3key_12BiomeStreams13StorableValueO5valuetMd, &_sSS3key_12BiomeStreams13StorableValueO5valuetMR) - 8) + 80);
  if (v5)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)();
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t SQLDatabaseError.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (*(v0 + 32))
  {
    v3 = v0[2];
    v4 = v0[3];
    OUTLINED_FUNCTION_3_8();
    _StringGuts.grow(_:)(34);

    v5 = OUTLINED_FUNCTION_0_19();
    MEMORY[0x1865F6280](v5);
    MEMORY[0x1865F6280](8238, 0xE200000000000000);
    v6 = v3;
    v7 = v4;
  }

  else
  {
    OUTLINED_FUNCTION_3_8();
    _StringGuts.grow(_:)(30);

    v6 = OUTLINED_FUNCTION_0_19();
  }

  MEMORY[0x1865F6280](v6, v7);
  return v9;
}

uint64_t SQLDatabaseHandle.init(identifier:useCase:readOnly:)(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  ppDb[1] = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for URL.DirectoryHint();
  v9 = OUTLINED_FUNCTION_2_1(v8);
  v89 = v10;
  v90 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v85 = &v78 - v16;
  v92 = type metadata accessor for URL();
  v17 = OUTLINED_FUNCTION_2_1(v92);
  v88 = v18;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v17);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v78 - v24;
  type metadata accessor for BMResourceSpecifier();

  v25 = a1;
  v26 = BMResourceSpecifier.__allocating_init(type:name:)(3, a1, a2);
  v27 = [objc_allocWithZone(MEMORY[0x1E698E968]) initWithUseCase_];
  v28 = v27;
  v91 = a4;
  if (a4)
  {
    v29 = 1;
  }

  else
  {
    v29 = 3;
  }

  v98 = 0;
  v30 = [v27 requestAccessToResource:v26 mode:v29 error:&v98];
  v31 = v98;
  if (!v30)
  {
    v60 = v98;

    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_16:
    type metadata accessor for SQLDatabaseHandle();
    v74 = *(*v93 + 48);
    v75 = *(*v93 + 52);
    swift_deallocPartialClassInstance();
    goto LABEL_17;
  }

  v32 = v30;
  v83 = v28;
  v84 = v26;
  v33 = OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_assertion;
  *(v93 + OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_assertion) = v30;
  v34 = v31;
  v35 = [v32 path];
  if (!v35)
  {

    v98 = 0;
    v99 = 0xE000000000000000;
    _StringGuts.grow(_:)(34);
    MEMORY[0x1865F6280](0xD000000000000011, 0x8000000184DDBAB0);
    v96 = *(v93 + v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17BMAccessAssertion_pMd, &_sSo17BMAccessAssertion_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865F6280](0x6E20612073616820, 0xEF68746170206C69);
    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    v61 = swift_allocError();
    OUTLINED_FUNCTION_5_3(v61, v62);

LABEL_15:
    v73 = *(v93 + v33);
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v36 = v35;
  v78 = v33;
  v82 = a3;
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v80 = v37;

  v98 = 0x336574696C71732ELL;
  v99 = 0xE800000000000000;
  v96 = v25;
  v97 = a2;
  v96 = String.init<A>(_:)();
  v97 = v38;
  String.append<A>(contentsOf:)();
  v39 = v97;
  v79 = v96;
  __swift_storeEnumTagSinglePayload(v85, 1, 1, v92);
  v40 = *MEMORY[0x1E6968F70];
  v42 = v89;
  v41 = v90;
  v43 = *(v89 + 104);
  v44 = v86;
  v43(v86, v40, v90);
  URL.init(filePath:directoryHint:relativeTo:)();
  v98 = v79;
  v99 = v39;
  v43(v44, v40, v41);
  v45 = v93;
  v46 = lazy protocol witness table accessor for type String and conformance String();
  v47 = v87;
  v85 = v46;
  URL.appending<A>(component:directoryHint:)();
  (*(v42 + 8))(v44, v41);
  v48 = v88;
  v49 = *(v88 + 8);
  v50 = v92;
  v49(v23, v92);

  URL.standardizedFileURL.getter();
  v49(v47, v50);
  v51 = OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_databaseFileURL;
  v52 = v23;
  v53 = v50;
  (*(v48 + 32))(v45 + OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_databaseFileURL, v52, v50);
  ppDb[0] = 0;
  if (v91)
  {
    v54 = 1;
  }

  else
  {
    v54 = 6;
  }

  v55 = v45 + v51;
  v56 = v51;
  (*(v48 + 16))(v47, v55, v53);
  URL.path.getter();
  v49(v47, v53);
  v57 = String.utf8CString.getter();

  v58 = sqlite3_open_v2((v57 + 32), ppDb, v54, 0);

  v59 = ppDb[0];
  if (v58 || !ppDb[0])
  {
    v63 = BMSQLDatabaseError(v58, ppDb[0], 0);
    swift_getErrorValue();
    v64 = Error.localizedDescription.getter();
    v66 = v65;

    v98 = v64;
    v99 = v66;
    OUTLINED_FUNCTION_1();
    v96 = v67;
    v97 = v68;
    OUTLINED_FUNCTION_2_7();
    v94 = v69;
    v95 = v70;
    OUTLINED_FUNCTION_4_5();
    StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    v71 = swift_allocError();
    OUTLINED_FUNCTION_5_3(v71, v72);

    v49((v93 + v56), v92);
    v33 = v78;
    goto LABEL_15;
  }

  *(v93 + OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_db) = v59;
LABEL_17:
  v76 = *MEMORY[0x1E69E9840];
  return v93;
}

uint64_t SQLDatabaseHandle.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_db;
  v3 = sqlite3_close_v2(*(v1 + OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_db));
  if (v3)
  {
    v4 = BMSQLDatabaseError(v3, *(v1 + v2), 0);
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = v6;

    v21[0] = v5;
    v21[1] = v7;
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type String and conformance String();
    OUTLINED_FUNCTION_4_5();
    v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v10 = v9;

    if (one-time initialization token for SQL != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logging.SQL);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21[0] = v15;
      *v14 = 136315138;
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v21);

      *(v14 + 4) = v16;
      _os_log_impl(&dword_1848EE000, v12, v13, "SQLDatabaseHandle: Failed to close database connection with error: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1865F7B70](v15, -1, -1);
      MEMORY[0x1865F7B70](v14, -1, -1);
    }

    else
    {
    }
  }

  v17 = OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_databaseFileURL;
  v18 = type metadata accessor for URL();
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  v19 = *(v1 + OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_assertion);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t SQLDatabaseHandle.__deallocating_deinit()
{
  SQLDatabaseHandle.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLResultSet.next()()
{
  v0 = 0;
  result.value._rawValue = v0;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLDatabase.execute(statement:)(Swift::String statement)
{
  object = statement._object;
  countAndFlagsBits = statement._countAndFlagsBits;
  errmsg[1] = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = *v1;
  errmsg[0] = 0;
  v7 = *(v6 + OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_db);
  v8 = String.utf8CString.getter();
  LODWORD(v7) = sqlite3_exec(v7, (v8 + 32), 0, 0, errmsg);

  if (v7)
  {
    v9 = 0xEF3E726F72726520;
    v10 = 0x6E776F6E6B6E553CLL;
    if (errmsg[0])
    {
      static String.Encoding.utf8.getter();
      v11 = String.init(cString:encoding:)();
      if (v12)
      {
        v10 = v11;
        v9 = v12;
      }
    }

    lazy protocol witness table accessor for type SQLDatabaseError and conformance SQLDatabaseError();
    swift_allocError();
    *v13 = countAndFlagsBits;
    *(v13 + 8) = object;
    *(v13 + 16) = v10;
    *(v13 + 24) = v9;
    *(v13 + 32) = 1;
    swift_willThrow();
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t SQLDatabase.databasePath()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12BiomeStreams17SQLDatabaseHandle_databaseFileURL;
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}