uint64_t HDCodableReferenceRangeReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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
        v13 = PBReaderReadString();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = objc_alloc_init(HDCodableInspectableValueCollection);
    objc_storeStrong((a1 + 16), v14);
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !HDCodableInspectableValueCollectionReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void sub_228B2A470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B2AF5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228B2BF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose((v11 - 128), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__46(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228B2E178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v12 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_228B2E52C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCloudSyncCodableRegistryReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v31) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v31 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v31 & 0x7F) << v5;
        if ((v31 & 0x80) == 0)
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
      if ((v12 >> 3) <= 19)
      {
        if (v13 > 2)
        {
          if (v13 == 3)
          {
            v14 = objc_alloc_init(HDCodableSyncIdentity);
            [a1 addDisabledSyncIdentities:v14];
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v14, a2))
            {
LABEL_67:

              return 0;
            }

LABEL_56:
            PBReaderRecallMark();
LABEL_57:

            goto LABEL_58;
          }

          if (v13 == 10)
          {
            v16 = 0;
            v17 = 0;
            v18 = 0;
            *(a1 + 76) |= 2u;
            while (1)
            {
              LOBYTE(v31) = 0;
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
                LOBYTE(v22) = 0;
                goto LABEL_63;
              }
            }

            v22 = (v18 != 0) & ~[a2 hasError];
LABEL_63:
            *(a1 + 72) = v22;
            goto LABEL_58;
          }
        }

        else
        {
          if (v13 == 1)
          {
            v14 = PBReaderReadString();
            if (v14)
            {
              [a1 addDisabledOwnerIdentifiers:v14];
            }

            goto LABEL_57;
          }

          if (v13 == 2)
          {
            v14 = objc_alloc_init(HDCloudSyncCodableRegisteredStore);
            [a1 addStores:v14];
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !HDCloudSyncCodableRegisteredStoreReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            goto LABEL_56;
          }
        }
      }

      else if (v13 <= 21)
      {
        if (v13 == 20)
        {
          v25 = PBReaderReadString();
          v26 = 32;
          goto LABEL_52;
        }

        if (v13 == 21)
        {
          *(a1 + 76) |= 1u;
          v31 = 0;
          v23 = [a2 position] + 8;
          if (v23 >= [a2 position] && (v24 = objc_msgSend(a2, "position") + 8, v24 <= objc_msgSend(a2, "length")))
          {
            v29 = [a2 data];
            [v29 getBytes:&v31 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          *(a1 + 8) = v31;
          goto LABEL_58;
        }
      }

      else
      {
        switch(v13)
        {
          case 0x16:
            v25 = PBReaderReadString();
            v26 = 40;
LABEL_52:
            v27 = *(a1 + v26);
            *(a1 + v26) = v25;

            goto LABEL_58;
          case 0x1E:
            v14 = objc_alloc_init(HDCloudSyncCodableProfileIdentifier);
            v15 = 48;
            goto LABEL_54;
          case 0x1F:
            v14 = objc_alloc_init(HDCloudSyncCodableProfileIdentifier);
            v15 = 56;
LABEL_54:
            objc_storeStrong((a1 + v15), v14);
            v31 = 0;
            v32 = 0;
            if (!PBReaderPlaceMark() || !HDCloudSyncCodableProfileIdentifierReadFrom(v14, a2))
            {
              goto LABEL_67;
            }

            goto LABEL_56;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_58:
      v28 = [a2 position];
    }

    while (v28 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableMedicalCodingReadFrom(uint64_t a1, void *a2)
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
      if (v13 >= 4)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_27861A288[v13];
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

uint64_t HDCloudSyncCodableAttachmentManagementRecordReadFrom(uint64_t a1, void *a2)
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

void sub_228B38108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228B382F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableGeneratedObjectCollectionReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 273)
      {
        v13 = objc_alloc_init(HDCodableMedicationDoseEvent);
        [a1 addMedicationDoseEvent:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableMedicationDoseEventReadFrom(v13, a2))
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

uint64_t HDCodableMedicalIDDataReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v158) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v158 & 0x7F) << v5;
      if ((v158 & 0x80) == 0)
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
    if ((v12 >> 3) <= 99)
    {
      switch(v13)
      {
        case 1:
          v54 = PBReaderReadData();
          v55 = 328;
LABEL_203:
          v121 = *(a1 + v55);
          *(a1 + v55) = v54;

          break;
        case 2:
          *(a1 + 404) |= 0x200uLL;
          v158 = 0;
          v122 = [a2 position] + 8;
          if (v122 >= [a2 position] && (v123 = objc_msgSend(a2, "position") + 8, v123 <= objc_msgSend(a2, "length")))
          {
            v155 = [a2 data];
            [v155 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v128 = v158;
          v129 = 80;
LABEL_294:
          *(a1 + v129) = v128;
          break;
        case 3:
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 404) |= 0x100000000uLL;
          while (1)
          {
            LOBYTE(v158) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v158 & 0x7F) << v21;
            if ((v158 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_238;
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

LABEL_238:
          v126 = 384;
LABEL_239:
          *(a1 + v126) = v27;
          break;
        default:
LABEL_207:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          break;
      }

      goto LABEL_295;
    }

    switch(v13)
    {
      case 100:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 404) |= 0x200000000uLL;
        while (1)
        {
          LOBYTE(v158) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v158 & 0x7F) << v14;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_224;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_224:
        v124 = 400;
        goto LABEL_225;
      case 101:
        *(a1 + 404) |= 0x2000uLL;
        v158 = 0;
        v74 = [a2 position] + 8;
        if (v74 >= [a2 position] && (v75 = objc_msgSend(a2, "position") + 8, v75 <= objc_msgSend(a2, "length")))
        {
          v138 = [a2 data];
          [v138 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 112;
        goto LABEL_294;
      case 102:
        v54 = PBReaderReadData();
        v55 = 368;
        goto LABEL_203;
      case 103:
        *(a1 + 404) |= 0x800000uLL;
        v158 = 0;
        v72 = [a2 position] + 8;
        if (v72 >= [a2 position] && (v73 = objc_msgSend(a2, "position") + 8, v73 <= objc_msgSend(a2, "length")))
        {
          v137 = [a2 data];
          [v137 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 192;
        goto LABEL_294;
      case 104:
        v54 = PBReaderReadString();
        v55 = 360;
        goto LABEL_203;
      case 105:
        *(a1 + 404) |= 0x400000uLL;
        v158 = 0;
        v76 = [a2 position] + 8;
        if (v76 >= [a2 position] && (v77 = objc_msgSend(a2, "position") + 8, v77 <= objc_msgSend(a2, "length")))
        {
          v139 = [a2 data];
          [v139 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 184;
        goto LABEL_294;
      case 106:
        v53 = objc_alloc_init(HDCodableDateComponents);
        objc_storeStrong((a1 + 304), v53);
        v158 = 0;
        v159 = 0;
        if (!PBReaderPlaceMark() || !HDCodableDateComponentsReadFrom(v53, a2))
        {
          goto LABEL_297;
        }

        goto LABEL_195;
      case 107:
        *(a1 + 404) |= 0x800uLL;
        v158 = 0;
        v80 = [a2 position] + 8;
        if (v80 >= [a2 position] && (v81 = objc_msgSend(a2, "position") + 8, v81 <= objc_msgSend(a2, "length")))
        {
          v141 = [a2 data];
          [v141 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 96;
        goto LABEL_294;
      case 108:
        v53 = objc_alloc_init(HDCodableQuantity);
        v82 = 312;
        goto LABEL_136;
      case 109:
        *(a1 + 404) |= 0x1000uLL;
        v158 = 0;
        v70 = [a2 position] + 8;
        if (v70 >= [a2 position] && (v71 = objc_msgSend(a2, "position") + 8, v71 <= objc_msgSend(a2, "length")))
        {
          v136 = [a2 data];
          [v136 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 104;
        goto LABEL_294;
      case 110:
        v53 = objc_alloc_init(HDCodableQuantity);
        v82 = 392;
LABEL_136:
        objc_storeStrong((a1 + v82), v53);
        v158 = 0;
        v159 = 0;
        if (!PBReaderPlaceMark() || !HDCodableQuantityReadFrom(v53, a2))
        {
          goto LABEL_297;
        }

        goto LABEL_195;
      case 111:
        *(a1 + 404) |= 0x40000000uLL;
        v158 = 0;
        v62 = [a2 position] + 8;
        if (v62 >= [a2 position] && (v63 = objc_msgSend(a2, "position") + 8, v63 <= objc_msgSend(a2, "length")))
        {
          v135 = [a2 data];
          [v135 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 248;
        goto LABEL_294;
      case 112:
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(a1 + 404) |= 0x80000000uLL;
        while (1)
        {
          LOBYTE(v158) = 0;
          v88 = [a2 position] + 1;
          if (v88 >= [a2 position] && (v89 = objc_msgSend(a2, "position") + 1, v89 <= objc_msgSend(a2, "length")))
          {
            v90 = [a2 data];
            [v90 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v87 |= (v158 & 0x7F) << v85;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v85 += 7;
          v11 = v86++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_229;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v87;
        }

LABEL_229:
        v126 = 272;
        goto LABEL_239;
      case 113:
        *(a1 + 404) |= 0x10uLL;
        v158 = 0;
        v103 = [a2 position] + 8;
        if (v103 >= [a2 position] && (v104 = objc_msgSend(a2, "position") + 8, v104 <= objc_msgSend(a2, "length")))
        {
          v146 = [a2 data];
          [v146 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 40;
        goto LABEL_294;
      case 114:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 404) |= 0x4000uLL;
        while (1)
        {
          LOBYTE(v158) = 0;
          v59 = [a2 position] + 1;
          if (v59 >= [a2 position] && (v60 = objc_msgSend(a2, "position") + 1, v60 <= objc_msgSend(a2, "length")))
          {
            v61 = [a2 data];
            [v61 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v58 |= (v158 & 0x7F) << v56;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v11 = v57++ >= 9;
          if (v11)
          {
            v48 = 0;
            goto LABEL_218;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v58;
        }

LABEL_218:
        v125 = 120;
        goto LABEL_234;
      case 115:
        *(a1 + 404) |= 0x8000uLL;
        v158 = 0;
        v40 = [a2 position] + 8;
        if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 8, v41 <= objc_msgSend(a2, "length")))
        {
          v132 = [a2 data];
          [v132 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 128;
        goto LABEL_294;
      case 116:
        v53 = objc_alloc_init(HDCodableEmergencyContact);
        [a1 addEmergencyContacts:v53];
        v158 = 0;
        v159 = 0;
        if (!PBReaderPlaceMark() || !HDCodableEmergencyContactReadFrom(v53, a2))
        {
          goto LABEL_297;
        }

        goto LABEL_195;
      case 117:
        *(a1 + 404) |= 0x400uLL;
        v158 = 0;
        v78 = [a2 position] + 8;
        if (v78 >= [a2 position] && (v79 = objc_msgSend(a2, "position") + 8, v79 <= objc_msgSend(a2, "length")))
        {
          v140 = [a2 data];
          [v140 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 88;
        goto LABEL_294;
      case 118:
        v53 = objc_alloc_init(HDCodableClinicalContact);
        [a1 addClinicalContacts:v53];
        v158 = 0;
        v159 = 0;
        if (!PBReaderPlaceMark() || !HDCodableClinicalContactReadFrom(v53, a2))
        {
          goto LABEL_297;
        }

        goto LABEL_195;
      case 119:
        *(a1 + 404) |= 0x20uLL;
        v158 = 0;
        v99 = [a2 position] + 8;
        if (v99 >= [a2 position] && (v100 = objc_msgSend(a2, "position") + 8, v100 <= objc_msgSend(a2, "length")))
        {
          v144 = [a2 data];
          [v144 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 48;
        goto LABEL_294;
      case 120:
        v54 = PBReaderReadString();
        v55 = 320;
        goto LABEL_203;
      case 121:
        *(a1 + 404) |= 0x10000uLL;
        v158 = 0;
        v83 = [a2 position] + 8;
        if (v83 >= [a2 position] && (v84 = objc_msgSend(a2, "position") + 8, v84 <= objc_msgSend(a2, "length")))
        {
          v142 = [a2 data];
          [v142 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 136;
        goto LABEL_294;
      case 122:
        v54 = PBReaderReadString();
        v55 = 336;
        goto LABEL_203;
      case 123:
        *(a1 + 404) |= 0x20000uLL;
        v158 = 0;
        v101 = [a2 position] + 8;
        if (v101 >= [a2 position] && (v102 = objc_msgSend(a2, "position") + 8, v102 <= objc_msgSend(a2, "length")))
        {
          v145 = [a2 data];
          [v145 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 144;
        goto LABEL_294;
      case 124:
        v54 = PBReaderReadString();
        v55 = 264;
        goto LABEL_203;
      case 125:
        *(a1 + 404) |= 8uLL;
        v158 = 0;
        v38 = [a2 position] + 8;
        if (v38 >= [a2 position] && (v39 = objc_msgSend(a2, "position") + 8, v39 <= objc_msgSend(a2, "length")))
        {
          v131 = [a2 data];
          [v131 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 32;
        goto LABEL_294;
      case 126:
        v54 = PBReaderReadString();
        v55 = 344;
        goto LABEL_203;
      case 127:
        *(a1 + 404) |= 0x40000uLL;
        v158 = 0;
        v49 = [a2 position] + 8;
        if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 8, v50 <= objc_msgSend(a2, "length")))
        {
          v133 = [a2 data];
          [v133 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 152;
        goto LABEL_294;
      case 128:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 404) |= 0x400000000uLL;
        while (1)
        {
          LOBYTE(v158) = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v158 & 0x7F) << v30;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_210;
          }
        }

        v20 = (v32 != 0) & ~[a2 hasError];
LABEL_210:
        v124 = 401;
LABEL_225:
        *(a1 + v124) = v20;
        goto LABEL_295;
      case 129:
        *(a1 + 404) |= 0x20000000uLL;
        v158 = 0;
        v109 = [a2 position] + 8;
        if (v109 >= [a2 position] && (v110 = objc_msgSend(a2, "position") + 8, v110 <= objc_msgSend(a2, "length")))
        {
          v149 = [a2 data];
          [v149 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 240;
        goto LABEL_294;
      case 130:
        v54 = PBReaderReadString();
        v55 = 376;
        goto LABEL_203;
      case 131:
        *(a1 + 404) |= 0x10000000uLL;
        v158 = 0;
        v51 = [a2 position] + 8;
        if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 8, v52 <= objc_msgSend(a2, "length")))
        {
          v134 = [a2 data];
          [v134 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 232;
        goto LABEL_294;
      case 132:
        *(a1 + 404) |= 0x4000000uLL;
        v158 = 0;
        v111 = [a2 position] + 8;
        if (v111 >= [a2 position] && (v112 = objc_msgSend(a2, "position") + 8, v112 <= objc_msgSend(a2, "length")))
        {
          v150 = [a2 data];
          [v150 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 216;
        goto LABEL_294;
      case 133:
        *(a1 + 404) |= 0x8000000uLL;
        v158 = 0;
        v113 = [a2 position] + 8;
        if (v113 >= [a2 position] && (v114 = objc_msgSend(a2, "position") + 8, v114 <= objc_msgSend(a2, "length")))
        {
          v151 = [a2 data];
          [v151 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 224;
        goto LABEL_294;
      case 136:
        *(a1 + 404) |= 0x1000000uLL;
        v158 = 0;
        v97 = [a2 position] + 8;
        if (v97 >= [a2 position] && (v98 = objc_msgSend(a2, "position") + 8, v98 <= objc_msgSend(a2, "length")))
        {
          v143 = [a2 data];
          [v143 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 200;
        goto LABEL_294;
      case 137:
        *(a1 + 404) |= 0x2000000uLL;
        v158 = 0;
        v105 = [a2 position] + 8;
        if (v105 >= [a2 position] && (v106 = objc_msgSend(a2, "position") + 8, v106 <= objc_msgSend(a2, "length")))
        {
          v147 = [a2 data];
          [v147 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 208;
        goto LABEL_294;
      case 138:
        v53 = objc_alloc_init(HDCodableMedicalIDMedication);
        [a1 addMedicationsList:v53];
        v158 = 0;
        v159 = 0;
        if (PBReaderPlaceMark() && HDCodableMedicalIDMedicationReadFrom(v53, a2))
        {
          goto LABEL_195;
        }

        goto LABEL_297;
      case 139:
        *(a1 + 404) |= 0x80000uLL;
        v158 = 0;
        v28 = [a2 position] + 8;
        if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 8, v29 <= objc_msgSend(a2, "length")))
        {
          v127 = [a2 data];
          [v127 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 160;
        goto LABEL_294;
      case 140:
        v42 = 0;
        v43 = 0;
        v44 = 0;
        *(a1 + 404) |= 0x100000uLL;
        while (1)
        {
          LOBYTE(v158) = 0;
          v45 = [a2 position] + 1;
          if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
          {
            v47 = [a2 data];
            [v47 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v44 |= (v158 & 0x7F) << v42;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v42 += 7;
          v11 = v43++ >= 9;
          if (v11)
          {
            v48 = 0;
            goto LABEL_214;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v44;
        }

LABEL_214:
        v125 = 168;
        goto LABEL_234;
      case 141:
        *(a1 + 404) |= 0x200000uLL;
        v158 = 0;
        v115 = [a2 position] + 8;
        if (v115 >= [a2 position] && (v116 = objc_msgSend(a2, "position") + 8, v116 <= objc_msgSend(a2, "length")))
        {
          v152 = [a2 data];
          [v152 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 176;
        goto LABEL_294;
      case 142:
        v53 = objc_alloc_init(HDCodableMedicalIDAllergy);
        [a1 addAllergiesList:v53];
        v158 = 0;
        v159 = 0;
        if (!PBReaderPlaceMark() || !HDCodableMedicalIDAllergyReadFrom(v53, a2))
        {
          goto LABEL_297;
        }

        goto LABEL_195;
      case 143:
        *(a1 + 404) |= 1uLL;
        v158 = 0;
        v36 = [a2 position] + 8;
        if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
        {
          v130 = [a2 data];
          [v130 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 8;
        goto LABEL_294;
      case 144:
        v64 = 0;
        v65 = 0;
        v66 = 0;
        *(a1 + 404) |= 2uLL;
        while (1)
        {
          LOBYTE(v158) = 0;
          v67 = [a2 position] + 1;
          if (v67 >= [a2 position] && (v68 = objc_msgSend(a2, "position") + 1, v68 <= objc_msgSend(a2, "length")))
          {
            v69 = [a2 data];
            [v69 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v66 |= (v158 & 0x7F) << v64;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          v11 = v65++ >= 9;
          if (v11)
          {
            v48 = 0;
            goto LABEL_222;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v66;
        }

LABEL_222:
        v125 = 16;
        goto LABEL_234;
      case 145:
        *(a1 + 404) |= 4uLL;
        v158 = 0;
        v117 = [a2 position] + 8;
        if (v117 >= [a2 position] && (v118 = objc_msgSend(a2, "position") + 8, v118 <= objc_msgSend(a2, "length")))
        {
          v153 = [a2 data];
          [v153 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 24;
        goto LABEL_294;
      case 146:
        v53 = objc_alloc_init(HDCodableMedicalIDCondition);
        [a1 addConditionsList:v53];
        v158 = 0;
        v159 = 0;
        if (PBReaderPlaceMark() && HDCodableMedicalIDConditionReadFrom(v53, a2))
        {
LABEL_195:
          PBReaderRecallMark();

LABEL_295:
          v156 = [a2 position];
          if (v156 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_297:

        return 0;
      case 147:
        *(a1 + 404) |= 0x40uLL;
        v158 = 0;
        v107 = [a2 position] + 8;
        if (v107 >= [a2 position] && (v108 = objc_msgSend(a2, "position") + 8, v108 <= objc_msgSend(a2, "length")))
        {
          v148 = [a2 data];
          [v148 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 56;
        goto LABEL_294;
      case 148:
        v91 = 0;
        v92 = 0;
        v93 = 0;
        *(a1 + 404) |= 0x80uLL;
        while (1)
        {
          LOBYTE(v158) = 0;
          v94 = [a2 position] + 1;
          if (v94 >= [a2 position] && (v95 = objc_msgSend(a2, "position") + 1, v95 <= objc_msgSend(a2, "length")))
          {
            v96 = [a2 data];
            [v96 getBytes:&v158 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v93 |= (v158 & 0x7F) << v91;
          if ((v158 & 0x80) == 0)
          {
            break;
          }

          v91 += 7;
          v11 = v92++ >= 9;
          if (v11)
          {
            v48 = 0;
            goto LABEL_233;
          }
        }

        if ([a2 hasError])
        {
          v48 = 0;
        }

        else
        {
          v48 = v93;
        }

LABEL_233:
        v125 = 64;
LABEL_234:
        *(a1 + v125) = v48;
        goto LABEL_295;
      case 149:
        *(a1 + 404) |= 0x100uLL;
        v158 = 0;
        v119 = [a2 position] + 8;
        if (v119 >= [a2 position] && (v120 = objc_msgSend(a2, "position") + 8, v120 <= objc_msgSend(a2, "length")))
        {
          v154 = [a2 data];
          [v154 getBytes:&v158 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v128 = v158;
        v129 = 72;
        goto LABEL_294;
      default:
        goto LABEL_207;
    }
  }
}

uint64_t _HDAddFrozenAndExpectedSyncAnchorColumns(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAE848 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddSyncAnchorUpdateDateColumns(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAE860 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddUniqueConstraintToSessionControllersTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAE878 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddAlarmEventsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE IF NOT EXISTS alarm_events (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{client_identifier TEXT NOT NULL, due_date REAL, due_date_components BLOB, event_identifier TEXT NOT NULL, UNIQUE(client_identifier, event_identifier), CHECK((due_date IS NULL AND due_date_components IS NOT NULL) OR (due_date IS NOT NULL AND due_date_components IS NULL)))", a4}] ^ 1;

  return v6;
}

uint64_t _HDAddSourceOwnerBundleIdentifierAndDropSyncPrimary(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAE8A8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddSourceOrderModificationDate(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11[5] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v11[0] = @"CREATE TABLE datatype_source_order_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, data_type INTEGER NOT NULL, source INTEGER NOT NULL REFERENCES sources (ROWID) ON DELETE CASCADE, user_preferred INTEGER NOT NULL, provenance INTEGER NOT NULL, modification_date REAL NOT NULL);";
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO datatype_source_order_new (data_type, source, user_preferred, provenance, modification_date) SELECT data_type, source, user_preferred, provenance, %lf FROM datatype_source_order ORDER BY ROWID ASC", CFAbsoluteTimeGetCurrent()];
  v11[1] = v6;
  v11[2] = @"DROP TABLE datatype_source_order";
  v11[3] = @"ALTER TABLE datatype_source_order_new RENAME TO datatype_source_order";
  v11[4] = @"CREATE INDEX datatype_source_order_data_type ON datatype_source_order (data_type, ROWID)";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];

  v8 = [v5 unprotectedDatabase];

  LODWORD(a4) = [v8 executeSQLStatements:v7 error:a4];
  v9 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _HDAddLatestActivityDateToWorkoutSessionsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAE8C0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDResetReceivedAnchorsForCategoryAndQuantitySamples(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [a1 behavior];
  v8 = [v7 isAppleWatch];

  if (v8)
  {
    v9 = [v6 unprotectedDatabase];
    v10 = [v9 executeSQLStatements:&unk_283CAE8D8 error:a4] ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t _HDAddEventOptionsToAlarmEventsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAE890 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddQuantitySampleStatisticsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAE8F0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDUpdateActivityCacheTableForYukon(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAE908 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddConceptIndexTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAE920 error:a4] ^ 1;

  return v6;
}

uint64_t _HDRemoveDuplicatedHeartRateContextMetadata(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"DELETE FROM metadata_values WHERE key_id=(SELECT rowid FROM metadata_keys WHERE key='HKMetadataKeyHeartRateMotionContext') AND (EXISTS (SELECT * FROM metadata_values mvprivate WHERE mvprivate.key_id=(SELECT rowid FROM metadata_keys WHERE key='_HKPrivateHeartRateContext') AND mvprivate.object_id=metadata_values.object_id))" error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddLocaleToMedicalRecords(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"ALTER TABLE medical_records ADD COLUMN locale TEXT" error:a4] ^ 1;

  return v6;
}

uint64_t _HDUpdateFitnessFriendActivitySnapshotsTableForYukon(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAE938 error:a4] ^ 1;

  return v6;
}

uint64_t _HDUpdateDiagnosticTestReportColumnNames(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"ALTER TABLE diagnostic_test_report_samples RENAME COLUMN status TO status_coding;" error:a4] ^ 1;

  return v6;
}

uint64_t _HDUpdateFitnessFriendWorkoutTableForYukon(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAE950 error:a4] ^ 1;

  return v6;
}

uint64_t _HDUpdateConceptIndexTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAE968 error:a4] ^ 1;

  return v6;
}

uint64_t _HDUpdateVaccinationRecordColumnNames(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"ALTER TABLE vaccination_record_samples RENAME COLUMN body_site_coding TO body_site_codings;" error:a4] ^ 1;

  return v6;
}

uint64_t _HDMoveClinicalCredentialsToKeychain(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = [v6 executeSQLStatements:&unk_283CAE980 error:a4];

  if (v7)
  {
    v8 = objc_alloc_init(HDLegacyClinicalCredentialManager);
    v16 = 0;
    v9 = [(HDLegacyClinicalCredentialManager *)v8 deleteCredentialKeyFromKeychainWithError:&v16];
    v10 = v16;
    if (!v9)
    {
      _HKInitializeLogging();
      v11 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v18 = v10;
        _os_log_error_impl(&dword_228986000, v11, OS_LOG_TYPE_ERROR, "Failed to delete credential key from keychain during migration: %{public}@", buf, 0xCu);
      }
    }

    v12 = [v5 protectedDatabase];
    v13 = [v12 executeUncachedSQL:@"DROP TABLE clinical_credentials_old" error:a4] ^ 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t _HDRemoveMenstrualCycleDaySummaryTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [a2 protectedDatabase];
  v6 = [v5 dumpSchemaWithError:a4];
  if (v6)
  {
    if ([MEMORY[0x277D10B30] databaseSchemas:v6 containTable:@"menstrual_cycle_day_summary_samples"])
    {
      v7 = [v5 deleteDataEntitySubclassTable:@"menstrual_cycle_day_summary_samples" intermediateTables:&unk_283CAE998 error:a4] ^ 1;
    }

    else
    {
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_INFO))
      {
        v11 = 138412290;
        v12 = @"menstrual_cycle_day_summary_samples";
        _os_log_impl(&dword_228986000, v8, OS_LOG_TYPE_INFO, "Skipping deletion from nonexistent table %@", &v11, 0xCu);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 1;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t _HDAddAllergyIntoleranceStatus(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"ALTER TABLE allergy_record_samples ADD COLUMN status_coding BLOB" error:a4] ^ 1;

  return v6;
}

uint64_t _HDResetClinicalAccountEntityLastSubmittedRow(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"UPDATE clinical_accounts SET last_submitted_rowid = NULL" error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddOntologyVersionToConceptIndex(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"ALTER TABLE concept_index ADD COLUMN ontology_version INTEGER NOT NULL DEFAULT 0" error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddDerivedFlagsToDataProvenances(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = [v6 executeSQLStatements:&unk_283CAE9B0 error:a4];

  if (v7)
  {
    v8 = [v5 protectedDatabase];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = ___HDAddDerivedFlagsToDataProvenances_block_invoke;
    v12[3] = &unk_27861A5B8;
    v13 = v5;
    v14 = @"SELECT (product_type LIKE 'Watch%%') FROM sources WHERE ROWID=? LIMIT 1";
    v15 = @"UPDATE data_provenances SET derived_flags=? WHERE ROWID=?";
    v9 = [v8 executeUncachedSQL:@"SELECT ROWID error:source_id FROM data_provenances" bindingHandler:a4 enumerationHandler:{0, v12}];

    v10 = v9 ^ 1u;
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t _HDAddCountryToMedicalRecord(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CAE9C8 error:a4];

  return a4 ^ 1;
}

uint64_t _HDAddMedicalRecordState(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeUncachedSQL:@"ALTER TABLE medical_records ADD COLUMN state INTEGER NOT NULL DEFAULT 0" error:a4] ^ 1;

  return v6;
}

uint64_t _HDWipeWorkoutAnchors(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeUncachedSQL:@"DELETE FROM sync_anchors WHERE schema = 'main' AND type = 5;" error:a4] ^ 1;

  return v6;
}

uint64_t HDCodableDateIntervalReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v23) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v23 & 0x7F) << v5;
        if ((v23 & 0x80) == 0)
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
        *(a1 + 24) |= 2u;
        v23 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v17 = [a2 data];
          [v17 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v18 = v23;
        v19 = &OBJC_IVAR___HDCodableDateInterval__startDate;
LABEL_31:
        *(a1 + *v19) = v18;
        goto LABEL_32;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_32:
      v21 = [a2 position];
      if (v21 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    *(a1 + 24) |= 1u;
    v23 = 0;
    v15 = [a2 position] + 8;
    if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 8, v16 <= objc_msgSend(a2, "length")))
    {
      v20 = [a2 data];
      [v20 getBytes:&v23 range:{objc_msgSend(a2, "position"), 8}];

      [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
    }

    else
    {
      [a2 _setError];
    }

    v18 = v23;
    v19 = &OBJC_IVAR___HDCodableDateInterval__endDate;
    goto LABEL_31;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableUserDomainConceptLinkReadFrom(uint64_t a1, void *a2)
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
        v21 = *(a1 + 16);
        *(a1 + 16) = v20;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
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
            v19 = 0;
            goto LABEL_34;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_34:
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

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableRoutinePredictedLocationsResponseReadFrom(void *a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v13 = objc_alloc_init(HDCodableRoutinePredictedLocation);
        [a1 addPredictedLocationsOfInterest:v13];
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableRoutinePredictedLocationReadFrom(v13, a2))
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

void sub_228B55794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCloudSyncCodableDeviceContextReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v30[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v30[0] & 0x7F) << v5;
        if ((v30[0] & 0x80) == 0)
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

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v19 = 0;
          v20 = 0;
          v21 = 0;
          *(a1 + 56) |= 2u;
          while (1)
          {
            LOBYTE(v30[0]) = 0;
            v22 = [a2 position] + 1;
            if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
            {
              v24 = [a2 data];
              [v24 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v21 |= (v30[0] & 0x7F) << v19;
            if ((v30[0] & 0x80) == 0)
            {
              break;
            }

            v19 += 7;
            v11 = v20++ >= 9;
            if (v11)
            {
              v25 = 0;
              goto LABEL_48;
            }
          }

          if ([a2 hasError])
          {
            v25 = 0;
          }

          else
          {
            v25 = v21;
          }

LABEL_48:
          *(a1 + 16) = v25;
          goto LABEL_51;
        }

        if (v13 == 3)
        {
          v14 = PBReaderReadString();
          v15 = 24;
LABEL_44:
          v26 = *(a1 + v15);
          *(a1 + v15) = v14;

          goto LABEL_51;
        }

LABEL_32:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_51;
      }

      v18 = objc_alloc_init(HDCodableSyncIdentity);
      objc_storeStrong((a1 + 48), v18);
      v30[0] = 0;
      v30[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v18, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_51:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v14 = PBReaderReadString();
        v15 = 32;
        goto LABEL_44;
      case 5:
        v14 = PBReaderReadString();
        v15 = 40;
        goto LABEL_44;
      case 6:
        *(a1 + 56) |= 1u;
        v30[0] = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:v30 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v30[0];
        goto LABEL_51;
    }

    goto LABEL_32;
  }

  return [a2 hasError] ^ 1;
}

void sub_228B578CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B5887C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228B591AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228B59534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 120), 8);
  _Unwind_Resume(a1);
}

void sub_228B5DDA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228B5E028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B5F918(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(a1);
    _HKInitializeLogging();
    v12 = HKLogInfrastructure();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      LODWORD(buf) = 138543618;
      *(&buf + 4) = v13;
      WORD6(buf) = 2112;
      _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: Exception parsing unit string: %@", &buf, 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x228B5F844);
  }

  _Unwind_Resume(a1);
}

uint64_t HDCodableEmergencyContactReadFrom(uint64_t a1, void *a2)
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
      if (v13 >= 6)
      {
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v14 = off_27861AE88[v13];
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

id _EntityClasses()
{
  v3[130] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v3[9] = objc_opt_class();
  v3[10] = objc_opt_class();
  v3[11] = objc_opt_class();
  v3[12] = objc_opt_class();
  v3[13] = objc_opt_class();
  v3[14] = objc_opt_class();
  v3[15] = objc_opt_class();
  v3[16] = objc_opt_class();
  v3[17] = objc_opt_class();
  v3[18] = objc_opt_class();
  v3[19] = objc_opt_class();
  v3[20] = objc_opt_class();
  v3[21] = objc_opt_class();
  v3[22] = objc_opt_class();
  v3[23] = objc_opt_class();
  v3[24] = objc_opt_class();
  v3[25] = objc_opt_class();
  v3[26] = objc_opt_class();
  v3[27] = objc_opt_class();
  v3[28] = objc_opt_class();
  v3[29] = objc_opt_class();
  v3[30] = objc_opt_class();
  v3[31] = objc_opt_class();
  v3[32] = objc_opt_class();
  v3[33] = objc_opt_class();
  v3[34] = objc_opt_class();
  v3[35] = objc_opt_class();
  v3[36] = objc_opt_class();
  v3[37] = objc_opt_class();
  v3[38] = objc_opt_class();
  v3[39] = objc_opt_class();
  v3[40] = objc_opt_class();
  v3[41] = objc_opt_class();
  v3[42] = objc_opt_class();
  v3[43] = objc_opt_class();
  v3[44] = objc_opt_class();
  v3[45] = objc_opt_class();
  v3[46] = objc_opt_class();
  v3[47] = objc_opt_class();
  v3[48] = objc_opt_class();
  v3[49] = objc_opt_class();
  v3[50] = objc_opt_class();
  v3[51] = objc_opt_class();
  v3[52] = objc_opt_class();
  v3[53] = objc_opt_class();
  v3[54] = objc_opt_class();
  v3[55] = objc_opt_class();
  v3[56] = objc_opt_class();
  v3[57] = objc_opt_class();
  v3[58] = objc_opt_class();
  v3[59] = objc_opt_class();
  v3[60] = objc_opt_class();
  v3[61] = objc_opt_class();
  v3[62] = objc_opt_class();
  v3[63] = objc_opt_class();
  v3[64] = objc_opt_class();
  v3[65] = objc_opt_class();
  v3[66] = objc_opt_class();
  v3[67] = objc_opt_class();
  v3[68] = objc_opt_class();
  v3[69] = objc_opt_class();
  v3[70] = objc_opt_class();
  v3[71] = objc_opt_class();
  v3[72] = objc_opt_class();
  v3[73] = objc_opt_class();
  v3[74] = objc_opt_class();
  v3[75] = objc_opt_class();
  v3[76] = objc_opt_class();
  v3[77] = objc_opt_class();
  v3[78] = objc_opt_class();
  v3[79] = objc_opt_class();
  v3[80] = objc_opt_class();
  v3[81] = objc_opt_class();
  v3[82] = objc_opt_class();
  v3[83] = objc_opt_class();
  v3[84] = objc_opt_class();
  v3[85] = objc_opt_class();
  v3[86] = objc_opt_class();
  v3[87] = objc_opt_class();
  v3[88] = objc_opt_class();
  v3[89] = objc_opt_class();
  v3[90] = objc_opt_class();
  v3[91] = objc_opt_class();
  v3[92] = objc_opt_class();
  v3[93] = objc_opt_class();
  v3[94] = objc_opt_class();
  v3[95] = objc_opt_class();
  v3[96] = objc_opt_class();
  v3[97] = objc_opt_class();
  v3[98] = objc_opt_class();
  v3[99] = objc_opt_class();
  v3[100] = objc_opt_class();
  v3[101] = objc_opt_class();
  v3[102] = objc_opt_class();
  v3[103] = objc_opt_class();
  v3[104] = objc_opt_class();
  v3[105] = objc_opt_class();
  v3[106] = objc_opt_class();
  v3[107] = objc_opt_class();
  v3[108] = objc_opt_class();
  v3[109] = objc_opt_class();
  v3[110] = objc_opt_class();
  v3[111] = objc_opt_class();
  v3[112] = objc_opt_class();
  v3[113] = objc_opt_class();
  v3[114] = objc_opt_class();
  v3[115] = objc_opt_class();
  v3[116] = objc_opt_class();
  v3[117] = objc_opt_class();
  v3[118] = objc_opt_class();
  v3[119] = objc_opt_class();
  v3[120] = objc_opt_class();
  v3[121] = objc_opt_class();
  v3[122] = objc_opt_class();
  v3[123] = objc_opt_class();
  v3[124] = objc_opt_class();
  v3[125] = objc_opt_class();
  v3[126] = objc_opt_class();
  v3[127] = objc_opt_class();
  v3[128] = objc_opt_class();
  v3[129] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:130];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

id _FutureEntityClasses()
{
  v3[3] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:3];
  v1 = *MEMORY[0x277D85DE8];

  return v0;
}

void health::_PageForEntry(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = 0;
  v10 = 0;
  v12 = 0;
  v11 = 0;
  health::VirtualFile::read<health::WriteAheadLog::LogEntryHeader>(*a1, *(a3 + 8), v8);
  v7 = *(a3 + 16);
  *a4 = a2;
  a4[1] = v7;
  operator new[]();
}

void sub_228B638CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  health::FilePage::~FilePage(v51);
  _Unwind_Resume(a1);
}

uint64_t health::FilePage::checksum(health::FilePage *this)
{
  v2 = *(this + 2);
  if (!v2)
  {
    v2 = (*(**(this + 4) + 16))(*(this + 4));
  }

  v3 = *(this + 1);

  return health::FletcherChecksum(v2, v3);
}

void health::_HDAssertImplementation<health::data_corruption_error>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v40 = *MEMORY[0x277D85DE8];
  memset(v39, 0, sizeof(v39));
  v11 = backtrace(v39, 20);
  v12 = backtrace_symbols(v39, v11);
  std::ostringstream::basic_ostringstream[abi:ne200100](v38);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Critical Error: ", 16);
  v14 = *(a6 + 23);
  if (v14 >= 0)
  {
    v15 = a6;
  }

  else
  {
    v15 = *a6;
  }

  if (v14 >= 0)
  {
    v16 = *(a6 + 23);
  }

  else
  {
    v16 = *(a6 + 8);
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "\n", 1);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "Failed assertion '", 18);
  v19 = *(a2 + 23);
  if (v19 >= 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = *a2;
  }

  if (v19 >= 0)
  {
    v21 = *(a2 + 23);
  }

  else
  {
    v21 = *(a2 + 8);
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "' in '", 6);
  v24 = *(a3 + 23);
  if (v24 >= 0)
  {
    v25 = a3;
  }

  else
  {
    v25 = *a3;
  }

  if (v24 >= 0)
  {
    v26 = *(a3 + 23);
  }

  else
  {
    v26 = *(a3 + 8);
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "' at ", 5);
  v29 = *(a4 + 23);
  if (v29 >= 0)
  {
    v30 = a4;
  }

  else
  {
    v30 = *a4;
  }

  if (v29 >= 0)
  {
    v31 = *(a4 + 23);
  }

  else
  {
    v31 = *(a4 + 8);
  }

  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v30, v31);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ":", 1);
  v34 = MEMORY[0x22AAC83A0](v33, a5);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\n", 1);
  if (!v11)
  {
    free(v12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v38, &v37);
    std::runtime_error::runtime_error(exception, &v37);
    exception->__vftable = &unk_283BE6EE8;
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, *v12);
  health::HDDemangleBacktraceLine();
}

void sub_228B63C78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  a22 = *MEMORY[0x277D82828];
  *(&a22 + *(a22 - 24)) = *(MEMORY[0x277D82828] + 24);
  a23 = MEMORY[0x277D82878] + 16;
  if (a36 < 0)
  {
    operator delete(a31);
  }

  a23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&a24);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&a39);
  _Unwind_Resume(a1);
}

void health::WriteAheadLog::WriteAheadLog()
{
  operator new();
}

{
  operator new();
}

uint64_t health::WriteAheadLog::WriteAheadLog(uint64_t a1, __int128 *a2, void *a3)
{
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1018212795;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v4 = a3[1];
  *(a1 + 112) = *a3;
  *(a1 + 120) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 128), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 144) = *(a2 + 2);
    *(a1 + 128) = v5;
  }

  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 1;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0;
  *(a1 + 256) = 1065353216;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = a1 + 272;
  return a1;
}

void sub_228B63F98(_Unwind_Exception *a1)
{
  v4 = *(v1 + 120);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  std::condition_variable::~condition_variable(v2);
  std::mutex::~mutex(v1);
  _Unwind_Resume(a1);
}

void health::WriteAheadLog::~WriteAheadLog(health::WriteAheadLog *this)
{
  health::WriteAheadLog::reset(this);
  std::__tree<std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>>>::destroy(this + 264, *(this + 34));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(this + 224);
  v4 = (this + 200);
  std::vector<std::shared_ptr<health::WriteAheadLog::Transaction>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  v3 = *(this + 15);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::condition_variable::~condition_variable((this + 64));
  std::mutex::~mutex(this);
}

void health::WriteAheadLog::reset(std::mutex *this)
{
  std::mutex::lock(this);
  if (*&this[3].__m_.__opaque[8] != *this[3].__m_.__opaque)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v23, "_transactionStack.size() == 0");
    std::string::basic_string[abi:ne200100]<0>(v22, "reset");
    std::string::basic_string[abi:ne200100]<0>(v21, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
    health::FormatString<>("Attempt to discard the log while a write transaction is open.", &__p);
    health::_HDAssertImplementation<health::transaction_error>(v2, v23, v22, v21, 60, &__p);
  }

  v3 = *this[3].__m_.__opaque;
  for (i = *&this[3].__m_.__opaque[8]; i != v3; i -= 16)
  {
    v5 = *(i - 8);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  *&this[3].__m_.__opaque[8] = v3;
  v6 = *&this[3].__m_.__opaque[32];
  if (v6)
  {
    for (j = 0; j != v6; ++j)
    {
      *(*&this[3].__m_.__opaque[24] + 8 * j) = 0;
    }

    v8 = *&this[3].__m_.__opaque[40];
    *&this[3].__m_.__opaque[40] = 0;
    *&this[3].__m_.__opaque[48] = 0;
    if (v8)
    {
      do
      {
        v9 = *v8;
        operator delete(v8);
        v8 = v9;
      }

      while (v9);
    }
  }

  if (*&this[4].__m_.__opaque[16])
  {
    v10 = *this[4].__m_.__opaque;
    v11 = *&this[4].__m_.__opaque[8];
    *this[4].__m_.__opaque = this + 272;
    *(v11 + 16) = 0;
    *&this[4].__m_.__opaque[8] = 0;
    *&this[4].__m_.__opaque[16] = 0;
    if (v10[1])
    {
      v12 = v10[1];
    }

    else
    {
      v12 = v10;
    }

    if (v12 && (v13 = v12[2]) != 0)
    {
      v14 = *v13;
      if (*v13 == v12)
      {
        *v13 = 0;
        while (1)
        {
          v19 = v13[1];
          if (!v19)
          {
            break;
          }

          do
          {
            v13 = v19;
            v19 = *v19;
          }

          while (v19);
        }
      }

      else
      {
        for (v13[1] = 0; v14; v14 = v13[1])
        {
          do
          {
            v13 = v14;
            v14 = *v14;
          }

          while (v14);
        }
      }

      std::__tree<std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>>>::destroy(this[4].__m_.__opaque, v12);
      for (k = v13[2]; k; k = k[2])
      {
        v13 = k;
      }

      opaque = this[4].__m_.__opaque;
      v12 = v13;
    }

    else
    {
      opaque = this[4].__m_.__opaque;
    }

    std::__tree<std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>>>::destroy(opaque, v12);
  }

  v17 = *&this[2].__m_.__opaque[16];
  if (v17)
  {
    (*(*v17 + 64))(v17);
    v18 = *&this[2].__m_.__opaque[24];
    *&this[2].__m_.__opaque[16] = 0;
    *&this[2].__m_.__opaque[24] = 0;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  std::mutex::unlock(this);
}

void sub_228B64348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v27 - 33) < 0)
  {
    operator delete(*(v27 - 56));
  }

  std::mutex::unlock(v26);
  _Unwind_Resume(a1);
}

void health::WriteAheadLog::open(std::mutex *this, uint64_t a2)
{
  std::mutex::lock(this);
  health::WriteAheadLog::_walLock_openLogForFileIdentifier(&this->__m_.__sig, a2);

  std::mutex::unlock(this);
}

uint64_t *health::WriteAheadLog::_walLock_openLogForFileIdentifier(uint64_t *this, uint64_t a2)
{
  v2 = this;
  v42 = *MEMORY[0x277D85DE8];
  v32 = a2;
  if (this[26] != this[25])
  {
    v3 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v31, "_transactionStack.size() == 0");
    std::string::basic_string[abi:ne200100]<0>(v30, "_walLock_openLogForFileIdentifier");
    std::string::basic_string[abi:ne200100]<0>(v29, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
    health::FormatString<>("Attempt to open the log while transactions are active.", &__p);
    health::_HDAssertImplementation<health::transaction_error>(v3, v31, v30, v29, 241, &__p);
  }

  v4 = this[19];
  if (!v4)
  {
    v5 = 0;
    v6 = this[14];
    v34 = 0x200000001;
    LODWORD(v35) = 0;
    do
    {
      v7 = *(&v34 + v4);
      if (v7 >= 4)
      {
        std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
      }

      v5 |= 1 << v7;
      v4 += 4;
    }

    while (v4 != 12);
    (*(*v6 + 16))(&v37);
    v8 = v37;
    v37 = 0uLL;
    v9 = v2[20];
    *(v2 + 19) = v8;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      if (*(&v37 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
      }

      if (!v2[19])
      {
LABEL_13:
        v10 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(v27, "_walFile");
        std::string::basic_string[abi:ne200100]<0>(v26, "_walLock_openLogForFileIdentifier");
        std::string::basic_string[abi:ne200100]<0>(v25, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
        health::FormatString<>("Failed to open WAL file.", &v24);
        health::_HDAssertImplementation<health::transaction_error>(v10, v27, v26, v25, 249, &v24);
      }
    }

    else if (!v8)
    {
      goto LABEL_13;
    }

    v21 = 0x24857414CLL;
    v22 = 0;
    v23 = 0;
    v11 = v2[19];
    v40 = 0;
    v41 = 24;
    v34 = &v37;
    v35 = &v37;
    v36 = 24;
    v12 = (*(*v11 + 32))(v11, 0, &v37, 24);
    LODWORD(v33) = 0;
    health::DeserializationBuffer::extractRaw<unsigned int>(&v34, &v33);
    LODWORD(v21) = v33;
    LODWORD(v33) = 0;
    health::DeserializationBuffer::extractRaw<unsigned int>(&v34, &v33);
    HIDWORD(v21) = v33;
    v33 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(&v34, &v33);
    v22 = v33;
    v33 = 0;
    health::DeserializationBuffer::extractRaw<unsigned long long>(&v34, &v33);
    v23 = v33;
    v13 = v40;
    v40 = 0;
    if (v13)
    {
      MEMORY[0x22AAC8570](v13, 0x1000C8077774924);
    }

    v20 = v12;
    if (v12 < 1)
    {
      if (!v12)
      {
        *&v37 = 0x24857414CLL;
        *(&v37 + 1) = v32;
        v38 = 0;
        this = health::VirtualFile::write<health::WriteAheadLog::LogHeader>(v2[19], &v37);
        goto LABEL_25;
      }
    }

    else if (v21 == 1213677900 && HIDWORD(v21) <= 2)
    {
      if (v22 != v32)
      {
        v14 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(v19, "header.fileIdentifier == fileIdentifier");
        std::string::basic_string[abi:ne200100]<0>(v18, "_walLock_openLogForFileIdentifier");
        std::string::basic_string[abi:ne200100]<0>(v17, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
        v34 = 24;
        *&v37 = &v32;
        *(&v37 + 1) = &v22;
        v38 = &v34;
        v39 = &v20;
        memset(&v16, 0, sizeof(v16));
        health::FormatImplementation<long long &,unsigned long,unsigned long long &,unsigned long long &>("WAL file identifier does not match transactional file identifier; ignoring WAL file. (offset %ld, header size %ld, header identifier %ld, file identifier %ld", &v16, 0, &v37);
        health::_HDAssertImplementation<health::data_corruption_error>(v14, v19, v18, v17, 256, &v16);
      }

      this = health::WriteAheadLog::_walLock_loadExistingEntriesStartingAtOffset(v2, v20, HIDWORD(v21) == 1);
      goto LABEL_25;
    }

    (*(*v2[19] + 56))(v2[19], 0);
    *&v37 = 0x24857414CLL;
    *(&v37 + 1) = v32;
    v38 = 0;
    this = health::VirtualFile::write<health::WriteAheadLog::LogHeader>(v2[19], &v37);
  }

LABEL_25:
  v15 = *MEMORY[0x277D85DE8];
  return this;
}

void sub_228B64924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  _Unwind_Resume(a1);
}

uint64_t health::WriteAheadLog::maximumCommittedSizeForTransaction(std::mutex *this, unint64_t a2)
{
  std::mutex::lock(this);
  v4 = &this[4].__m_.__opaque[8];
  v5 = *this[4].__m_.__opaque;
  if (&this[4].__m_.__opaque[8] != v5)
  {
    do
    {
      v6 = *v4;
      v7 = *v4;
      v8 = v4;
      if (*v4)
      {
        do
        {
          v9 = v7;
          v7 = *(v7 + 1);
        }

        while (v7);
      }

      else
      {
        do
        {
          v9 = *(v8 + 2);
          v10 = *v9 == v8;
          v8 = v9;
        }

        while (v10);
      }

      v11 = *(v9 + 6);
      while (1)
      {
        v12 = v11;
        v13 = *v4;
        v14 = v4;
        if (v6)
        {
          do
          {
            v15 = v13;
            v13 = *(v13 + 1);
          }

          while (v13);
        }

        else
        {
          do
          {
            v15 = *(v14 + 2);
            v10 = *v15 == v14;
            v14 = v15;
          }

          while (v10);
        }

        if (v12 == *(v15 + 5))
        {
          break;
        }

        v11 = v12 - 24;
        if (*(v12 - 24) <= a2)
        {
          if (v6)
          {
            do
            {
              v18 = v6;
              v6 = *(v6 + 1);
            }

            while (v6);
          }

          else
          {
            do
            {
              v18 = *(v4 + 2);
              v10 = *v18 == v4;
              v4 = v18;
            }

            while (v10);
          }

          v17 = *(v12 - 8) + *(v18 + 4);
          goto LABEL_25;
        }
      }

      if (v6)
      {
        do
        {
          v16 = v6;
          v6 = *(v6 + 1);
        }

        while (v6);
      }

      else
      {
        do
        {
          v16 = *(v4 + 2);
          v10 = *v16 == v4;
          v4 = v16;
        }

        while (v10);
      }

      v4 = v16;
    }

    while (v16 != v5);
  }

  v17 = 0;
LABEL_25:
  std::mutex::unlock(this);
  return v17;
}

void health::WriteAheadLog::discardLog(std::mutex *this)
{
  std::mutex::lock(this);
  if (*&this[3].__m_.__opaque[8] != *this[3].__m_.__opaque)
  {
    v2 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v8, "_transactionStack.size() == 0");
    std::string::basic_string[abi:ne200100]<0>(v7, "discardLog");
    std::string::basic_string[abi:ne200100]<0>(v6, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
    health::FormatString<>("Attempt to discard the log while a write transaction is open.", &__p);
    health::_HDAssertImplementation<health::transaction_error>(v2, v8, v7, v6, 91, &__p);
  }

  v3 = *&this[2].__m_.__opaque[16];
  if (v3)
  {
    (*(*v3 + 56))(v3, 0);
    v4 = *&this[2].__m_.__opaque[24];
    *&this[2].__m_.__opaque[16] = 0;
    *&this[2].__m_.__opaque[24] = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  std::mutex::unlock(this);
}

void sub_228B64D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  std::mutex::unlock(v26);
  _Unwind_Resume(a1);
}

void health::WriteAheadLog::_walLock_checkpointWhenIdle(uint64_t a1, std::unique_lock<std::mutex> *__lk, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = *MEMORY[0x277D85DE8];
  *(a1 + 192) = 1;
  while (*(a1 + 208) != *(a1 + 200) || *(a1 + 248))
  {
    std::condition_variable::wait((a1 + 64), __lk);
  }

  if (*(a1 + 192) == 1)
  {
    std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:ne200100](v13, a3);
    std::__function::__value_func<void ()(unsigned long long,health::FilePage const&)>::__value_func[abi:ne200100](v12, a4);
    std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:ne200100](v11, a5);
    health::WriteAheadLog::_walLock_checkpoint(a1, v13);
    std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v11);
    std::__function::__value_func<void ()(unsigned long long,health::FilePage const&)>::~__value_func[abi:ne200100](v12);
    std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v13);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_228B64ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (a2)
  {
    std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](&a10);
    std::__function::__value_func<void ()(unsigned long long,health::FilePage const&)>::~__value_func[abi:ne200100](&a14);
    std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](&a18);
    __cxa_begin_catch(exception_object);
    *(v18 + 192) = 0;
    std::condition_variable::notify_all((v18 + 64));
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void health::WriteAheadLog::_walLock_waitOnTransactionIdle(uint64_t a1, std::unique_lock<std::mutex> *__lk)
{
  while (*(a1 + 208) != *(a1 + 200) || *(a1 + 248))
  {
    std::condition_variable::wait((a1 + 64), __lk);
  }
}

void health::WriteAheadLog::_walLock_checkpoint(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 208) != *(a1 + 200))
  {
    v4 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v20, "_transactionStack.size() == 0");
    std::string::basic_string[abi:ne200100]<0>(v19, "_walLock_checkpoint");
    std::string::basic_string[abi:ne200100]<0>(v18, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
    health::FormatString<>("Attempt to checkpoint the WAL while a write transaction is active", &__p);
    health::_HDAssertImplementation<health::transaction_error>(v4, v20, v19, v18, 457, &__p);
  }

  if (*(a1 + 248))
  {
    v5 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v16, "_readTransactionIdentifiers.size() == 0");
    std::string::basic_string[abi:ne200100]<0>(v15, "_walLock_checkpoint");
    std::string::basic_string[abi:ne200100]<0>(v14, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
    health::FormatString<>("Attempt to checkpoint the WAL while a read transaction is active", &v13);
    health::_HDAssertImplementation<health::transaction_error>(v5, v16, v15, v14, 458, &v13);
  }

  (*(**(a1 + 152) + 16))(*(a1 + 152));
  v6 = *(a1 + 264);
  v7 = (a1 + 272);
  if (v6 != (a1 + 272))
  {
    do
    {
      if (v6[6] != v6[5])
      {
        std::function<void ()(unsigned long long)>::operator()(a2, *(a1 + 176));
        v8 = *(a1 + 176);
        health::_PageForEntry((a1 + 152), v6[4], v6[6] - 24, v12);
      }

      v9 = v6[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != v7);
  }

  *(a1 + 184) = 0;
  std::__tree<std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>>>::destroy(a1 + 264, *(a1 + 272));
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 264) = v7;
  *(a1 + 192) = 0;
  (*(**(a1 + 152) + 56))(*(a1 + 152), 0);
  std::condition_variable::notify_all((a1 + 64));
}

void sub_228B652C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

void health::WriteAheadLog::checkpoint(std::mutex *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  __lk.__m_ = a1;
  __lk.__owns_ = 1;
  std::mutex::lock(a1);
  health::WriteAheadLog::_walLock_openLogForFileIdentifier(&a1->__m_.__sig, a2);
  std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:ne200100](v14, a3);
  std::__function::__value_func<void ()(unsigned long long,health::FilePage const&)>::__value_func[abi:ne200100](v13, a4);
  std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:ne200100](v12, a5);
  health::WriteAheadLog::_walLock_checkpointWhenIdle(a1, &__lk, v14, v13, v12);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v12);
  std::__function::__value_func<void ()(unsigned long long,health::FilePage const&)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v14);
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_228B6548C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](&a13);
  std::__function::__value_func<void ()(unsigned long long,health::FilePage const&)>::~__value_func[abi:ne200100](&a19);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](&a23);
  if (a11)
  {
    std::mutex::unlock(a10);
  }

  _Unwind_Resume(a1);
}

void health::WriteAheadLog::_prepareReadTransaction(health::WriteAheadLog *this)
{
  __lk.__m_ = this;
  __lk.__owns_ = 1;
  std::mutex::lock(this);
  if (*(this + 192) == 1)
  {
    do
    {
      std::condition_variable::wait((this + 64), &__lk);
    }

    while ((*(this + 192) & 1) != 0);
  }

  v2 = *(this + 22);
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_multi<unsigned long long const&>();
}

void sub_228B65564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::mutex *a11, char a12)
{
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  _Unwind_Resume(exception_object);
}

void health::WriteAheadLog::_walLock_waitOnCheckpointCompletion(uint64_t a1, std::unique_lock<std::mutex> *__lk)
{
  if (*(a1 + 192) == 1)
  {
    do
    {
      std::condition_variable::wait((a1 + 64), __lk);
    }

    while ((*(a1 + 192) & 1) != 0);
  }
}

void health::WriteAheadLog::_prepareWriteTransaction(health::WriteAheadLog *this, uint64_t a2)
{
  __lk.__m_ = this;
  __lk.__owns_ = 1;
  std::mutex::lock(this);
  v4 = *(this + 21);
  *(this + 21) = v4 + 1;
  if (*(this + 192) == 1)
  {
    do
    {
      std::condition_variable::wait((this + 64), &__lk);
    }

    while ((*(this + 192) & 1) != 0);
  }

  health::WriteAheadLog::_walLock_openLogForFileIdentifier(this, a2);
  if (!(*(**(this + 19) + 48))(*(this + 19)))
  {
    v6[0] = 0x24857414CLL;
    v6[1] = a2;
    v6[2] = 0;
    health::VirtualFile::write<health::WriteAheadLog::LogHeader>(*(this + 19), v6);
  }

  health::WriteAheadLog::_walLock_startTransaction(this, v4);
}

void sub_228B65770(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::WriteAheadLog::_walLock_writeHeaderForIdentifier(health::WriteAheadLog *this, uint64_t a2)
{
  v3[0] = 0x24857414CLL;
  v3[1] = a2;
  v3[2] = 0;
  return health::VirtualFile::write<health::WriteAheadLog::LogHeader>(*(this + 19), v3);
}

void health::WriteAheadLog::_walLock_startTransaction(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 200); i != *(a1 + 208); i += 2)
  {
    if (**i == a2)
    {
      v3 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v7, "_walLock_transactionForIdentifier(transactionIdentifier) == nullptr");
      std::string::basic_string[abi:ne200100]<0>(v6, "_walLock_startTransaction");
      std::string::basic_string[abi:ne200100]<0>(v5, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
      health::FormatString<>("Attempt to start a transaction which is already active.", &__p);
      health::_HDAssertImplementation<health::transaction_error>(v3, v7, v6, v5, 353, &__p);
    }
  }

  operator new();
}

void sub_228B65AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v32 - 49) < 0)
  {
    operator delete(*(v32 - 72));
  }

  _Unwind_Resume(exception_object);
}

void health::WriteAheadLog::runWriteTransaction(health::WriteAheadLog *a1, uint64_t a2, int a3)
{
  v4 = a3;
  v3 = 0;
  health::WriteAheadLog::_prepareWriteTransaction(a1, a2);
}

void sub_228B65BD0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  __cxa_begin_catch(a1);
  health::WriteAheadLog::runWriteTransaction(unsigned long long,health::WriteAheadLog::CommitMode,std::function<BOOL ()(unsigned long long)>,std::function<void ()(unsigned long long)>,std::function<void ()(unsigned long long,health::FilePage const&)>,std::function<void ()(unsigned long long)>)::$_1::operator()(&a9);
  __cxa_rethrow();
}

void health::WriteAheadLog::pageAtOffset(std::mutex *this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  std::mutex::lock(this);
  if (*&this[3].__m_.__opaque[8] == *this[3].__m_.__opaque && !*&this[3].__m_.__opaque[48])
  {
    v8 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v17, "(_transactionStack.size() > 0) || (_readTransactionIdentifiers.size() > 0)");
    std::string::basic_string[abi:ne200100]<0>(v16, "pageAtOffset");
    std::string::basic_string[abi:ne200100]<0>(v15, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
    health::FormatString<>("Attempt to retrieve a page while no transaction is active.", &__p);
    health::_HDAssertImplementation<health::transaction_error>(v8, v17, v16, v15, 198, &__p);
  }

  v9 = *&this[3].__m_.__opaque[8];
  while (v9 != *this[3].__m_.__opaque)
  {
    v11 = *(v9 - 16);
    v9 -= 16;
    v10 = v11;
    if (*v11 <= a2)
    {
      health::WriteAheadLog::Transaction::pageAtOffset(v10, a3, a4);
      if (a4[2] | a4[4])
      {
        goto LABEL_13;
      }

      v12 = a4[5];
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = a4[3];
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }
    }
  }

  health::WriteAheadLog::_walLock_committedPageAtOffsetForTransaction(this, a2, a3, a4);
LABEL_13:
  std::mutex::unlock(this);
}

void sub_228B65D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  std::mutex::unlock(v32);
  _Unwind_Resume(a1);
}

double health::WriteAheadLog::_walLock_committedPageAtOffsetForTransaction@<D0>(health::WriteAheadLog *this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(this + 34);
  if (v4)
  {
    v5 = (this + 272);
    do
    {
      v6 = v4[4];
      v7 = v6 >= a3;
      v8 = v6 < a3;
      if (v7)
      {
        v5 = v4;
      }

      v4 = v4[v8];
    }

    while (v4);
    if (v5 != (this + 272) && v5[4] <= a3)
    {
      v12 = v5 + 5;
      v11 = v5[5];
      v10 = v12[1];
      while (v10 != v11)
      {
        v13 = *(v10 - 24);
        v10 -= 24;
        if (v13 <= a2)
        {
          health::_PageForEntry(this + 19, a3, v10, a4);
        }
      }
    }
  }

  result = 0.0;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  return result;
}

void health::WriteAheadLog::updatedPage(std::mutex *this, unint64_t a2, const health::FilePage *a3)
{
  v24 = a2;
  std::mutex::lock(this);
  if (*&this[3].__m_.__opaque[8] == *this[3].__m_.__opaque)
  {
    v5 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v23, "_transactionStack.size() > 0");
    std::string::basic_string[abi:ne200100]<0>(v22, "updatedPage");
    std::string::basic_string[abi:ne200100]<0>(v21, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
    health::FormatString<>("Attempt to store an updated page while no transaction is active.", &v20);
    health::_HDAssertImplementation<health::transaction_error>(v5, v23, v22, v21, 218, &v20);
  }

  v6 = *&this[3].__m_.__opaque[8];
  do
  {
    if (v6 == *this[3].__m_.__opaque)
    {
      if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(&this[3].__m_.__opaque[24], &v24))
      {
        v9 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(v19, "_readTransactionIdentifiers.find(transactionIdentifier) == _readTransactionIdentifiers.end()");
        std::string::basic_string[abi:ne200100]<0>(v18, "updatedPage");
        std::string::basic_string[abi:ne200100]<0>(v17, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
        health::FormatString<>("Attempt to update a page from a read transaction.", &__p);
        health::_HDAssertImplementation<health::transaction_error>(v9, v19, v18, v17, 228, &__p);
      }

      v10 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v15, "false");
      std::string::basic_string[abi:ne200100]<0>(v14, "updatedPage");
      std::string::basic_string[abi:ne200100]<0>(v13, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
      v11 = **(*&this[3].__m_.__opaque[8] - 16);
      health::FormatString<unsigned long long &,unsigned long long>(&v12, "Attempt to record updated page for inactive transaction {0}; current transaction is {1}.", &v24, &v11);
      health::_HDAssertImplementation<health::transaction_error>(v10, v15, v14, v13, 229, &v12);
    }

    v8 = *(v6 - 16);
    v6 -= 16;
    v7 = v8;
  }

  while (*v8 != v24);
  health::WriteAheadLog::Transaction::updatedPage(v7, a3);
  std::mutex::unlock(this);
}

void sub_228B660F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  if (*(v52 - 137) < 0)
  {
    operator delete(*(v52 - 160));
  }

  std::mutex::unlock(v51);
  _Unwind_Resume(a1);
}

void health::FormatString<unsigned long long &,unsigned long long>(std::string *a1, std::string *a2, unint64_t *a3, unint64_t *a4)
{
  v4[0] = a4;
  v4[1] = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<unsigned long long &,unsigned long long>(a2, a1, 0, v4);
}

void sub_228B66268(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::WriteAheadLog::_walLock_loadExistingEntriesStartingAtOffset(health::WriteAheadLog *this, uint64_t a2, int a3)
{
  memset(v26, 0, sizeof(v26));
  v27 = 1065353216;
  v21 = 99;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v25 = 0;
  while (a2 < (*(**(this + 19) + 48))(*(this + 19)))
  {
    v6 = health::VirtualFile::read<health::WriteAheadLog::LogEntryHeader>(*(this + 19), a2, &v21) + a2;
    v7 = v21;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        v13 = v22;
        if (!a3)
        {
          goto LABEL_21;
        }

        a2 = v6;
        if (!std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(*&v26[0], *(&v26[0] + 1), v22))
        {
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v26, v13);
LABEL_21:
          health::WriteAheadLog::_walLock_rollbackTransaction(this, v13);
          a2 = v6;
        }
      }

      else
      {
        if (v21 != 3)
        {
          goto LABEL_27;
        }

        v9 = *(this + 25);
        v10 = *(this + 26);
        if (v9 == v10)
        {
LABEL_26:
          exception = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(exception, "Invalid WAL entry: found a page update for a transaction that is not active.");
          exception->__vftable = &unk_283BE6EE8;
        }

        v11 = v22;
        while (1)
        {
          v12 = *v9;
          if (**v9 == v22)
          {
            break;
          }

          v9 += 2;
          if (v9 == v10)
          {
            goto LABEL_26;
          }
        }

        v14 = v24;
        v28 = v23;
        v20.__r_.__value_.__r.__words[0] = &v28;
        v15 = std::__tree<std::__value_type<unsigned long long,health::WriteAheadLog::PageEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::WriteAheadLog::PageEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::WriteAheadLog::PageEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>((v12 + 4), v23);
        v15[5] = v11;
        v15[6] = a2;
        a2 = v14 + v6;
        v15[7] = v14;
      }
    }

    else
    {
      if (!v21)
      {
        health::WriteAheadLog::_walLock_startTransaction(this, v22);
      }

      if (v21 != 1)
      {
LABEL_27:
        v19 = __cxa_allocate_exception(0x10uLL);
        LODWORD(v28) = v7;
        health::FormatString<int>("Invalid WAL entry type {0}.", &v28, &v20);
        std::runtime_error::runtime_error(v19, &v20);
        v19->__vftable = &unk_283BE6EE8;
      }

      v8 = v22;
      if (a3)
      {
        a2 = v6;
        if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(*&v26[0], *(&v26[0] + 1), v22))
        {
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v26, v8);
          goto LABEL_9;
        }
      }

      else
      {
LABEL_9:
        health::WriteAheadLog::_walLock_commitTransaction(this, v8);
        a2 = v6;
      }
    }
  }

  while (1)
  {
    v16 = *(this + 26);
    if (v16 == *(this + 25))
    {
      break;
    }

    health::WriteAheadLog::_walLock_rollbackTransaction(this, **(v16 - 16));
  }

  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v26);
}

void sub_228B66564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&a20);
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

uint64_t std::vector<std::shared_ptr<health::WriteAheadLog::Transaction>>::erase(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v5 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<health::WriteAheadLog::Transaction> *,std::shared_ptr<health::WriteAheadLog::Transaction> *,std::shared_ptr<health::WriteAheadLog::Transaction> *>(a3, *(a1 + 8), a2);
    for (i = *(a1 + 8); i != v5; i -= 16)
    {
      v7 = *(i - 8);
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    *(a1 + 8) = v5;
  }

  return a2;
}

void health::Print<char const*>(std::string *a1, const char **a2)
{
  health::FormatString<char const*>(a1, a2, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82678], p_p, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "\n", 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_228B666A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void health::WriteAheadLog::_walLock_commitTransaction(health::WriteAheadLog *this, unint64_t a2)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v25 = a2;
  if (*(this + 26) == *(this + 25))
  {
    v3 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v24, "_transactionStack.size() > 0");
    std::string::basic_string[abi:ne200100]<0>(v23, "_walLock_commitTransaction");
    std::string::basic_string[abi:ne200100]<0>(v22, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
    health::FormatString<unsigned long long &>(&__p, "Attempt to commit transaction {0} when no transaction is active.", &v25);
    health::_HDAssertImplementation<health::transaction_error>(v3, v24, v23, v22, 367, &__p);
  }

  v4 = *(this + 25);
  v5 = *(this + 26) - v4;
  v6 = (v5 >> 4) - 1;
  v7 = v4 + 16 * v6;
  v9 = *v7;
  v8 = *(v7 + 8);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*v9 != v25)
  {
    v10 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v20, "transaction->identifier() == transactionIdentifier");
    std::string::basic_string[abi:ne200100]<0>(v19, "_walLock_commitTransaction");
    std::string::basic_string[abi:ne200100]<0>(v18, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
    v16 = *v9;
    health::FormatString<unsigned long long &,unsigned long long>(&v17, "Attempt to commit transaction ({0}) which is not the innermost transaction ({1}).", &v25, &v16);
    health::_HDAssertImplementation<health::transaction_error>(v10, v20, v19, v18, 370, &v17);
  }

  v11 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<health::WriteAheadLog::Transaction> *,std::shared_ptr<health::WriteAheadLog::Transaction> *,std::shared_ptr<health::WriteAheadLog::Transaction> *>((*(this + 25) + 16 * v6 + 16), *(this + 26), *(this + 25) + 16 * v6);
  for (i = *(this + 26); i != v11; i -= 16)
  {
    v13 = *(i - 8);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }

  *(this + 26) = v11;
  v14 = *(this + 25);
  if (v11 == v14)
  {
    v26[0] = &unk_283BE8330;
    v26[1] = this;
    v26[2] = &v25;
    v26[3] = v26;
    health::WriteAheadLog::Transaction::commit(v9, v26);
    std::__function::__value_func<void ()(long long,health::WriteAheadLog::PageEntry)>::~__value_func[abi:ne200100](v26);
    *(this + 22) = v25;
  }

  else
  {
    health::WriteAheadLog::Transaction::commitAndMerge(v9, *(v14 + v5 - 32));
  }

  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_228B66988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (*(v52 - 113) < 0)
  {
    operator delete(*(v52 - 136));
  }

  _Unwind_Resume(exception_object);
}

void health::WriteAheadLog::_walLock_rollbackTransaction(health::WriteAheadLog *this, unint64_t a2)
{
  v22 = a2;
  if (*(this + 26) == *(this + 25))
  {
    v3 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v21, "_transactionStack.size() > 0");
    std::string::basic_string[abi:ne200100]<0>(v20, "_walLock_rollbackTransaction");
    std::string::basic_string[abi:ne200100]<0>(v19, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
    health::FormatString<unsigned long long &>(&__p, "Attempt to roll back transaction {0} when no transaction is active.", &v22);
    health::_HDAssertImplementation<health::transaction_error>(v3, v21, v20, v19, 394, &__p);
  }

  v4 = *(this + 25);
  v5 = ((*(this + 26) - v4) >> 4) - 1;
  v6 = v4 + 16 * v5;
  v8 = *v6;
  v7 = *(v6 + 8);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*v8 != v22)
  {
    v9 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v17, "transaction->identifier() == transactionIdentifier");
    std::string::basic_string[abi:ne200100]<0>(v16, "_walLock_rollbackTransaction");
    std::string::basic_string[abi:ne200100]<0>(v15, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDWriteAheadLog.cpp");
    v13 = *v8;
    health::FormatString<unsigned long long &,unsigned long long>(&v14, "Attempt to roll back transaction ({0}) which is not the innermost transaction ({1}).", &v22, &v13);
    health::_HDAssertImplementation<health::transaction_error>(v9, v17, v16, v15, 397, &v14);
  }

  v10 = std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<health::WriteAheadLog::Transaction> *,std::shared_ptr<health::WriteAheadLog::Transaction> *,std::shared_ptr<health::WriteAheadLog::Transaction> *>((*(this + 25) + 16 * v5 + 16), *(this + 26), *(this + 25) + 16 * v5);
  for (i = *(this + 26); i != v10; i -= 16)
  {
    v12 = *(i - 8);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  *(this + 26) = v10;
  health::WriteAheadLog::Transaction::_writeCompletionEntryOfType(v8, 2);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void sub_228B66CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (*(v45 - 81) < 0)
  {
    operator delete(*(v45 - 104));
  }

  if (*(v45 - 57) < 0)
  {
    operator delete(*(v45 - 80));
  }

  _Unwind_Resume(exception_object);
}

void *health::WriteAheadLog::_walLock_transactionForIdentifier(health::WriteAheadLog *this, uint64_t a2)
{
  v2 = *(this + 25);
  v3 = *(this + 26);
  while (v2 != v3)
  {
    result = *v2;
    if (**v2 == a2)
    {
      return result;
    }

    v2 += 2;
  }

  return 0;
}

{
  v2 = *(this + 25);
  v3 = *(this + 26);
  while (v2 != v3)
  {
    result = *v2;
    if (**v2 == a2)
    {
      return result;
    }

    v2 += 2;
  }

  return 0;
}

std::runtime_error *_ZN6health21data_corruption_errorCI1St13runtime_errorEPKc(std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_283BE6EE8;
  return result;
}

void *health::WriteAheadLog::Transaction::storePageEntry(health::WriteAheadLog::Transaction *this, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *this;
  v8[0] = a2;
  v8[1] = v8;
  result = std::__tree<std::__value_type<unsigned long long,health::WriteAheadLog::PageEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::WriteAheadLog::PageEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::WriteAheadLog::PageEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(this + 32, a2);
  result[5] = v6;
  result[6] = a3;
  result[7] = a4;
  return result;
}

void health::FormatString<int>(std::string *a1@<X0>, int *a2@<X1>, std::string *a3@<X8>)
{
  v3 = a2;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<int>(a1, a3, 0, &v3);
}

void sub_228B66E7C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatString<unsigned long long &>(std::string *a1, std::string *a2, void *a3)
{
  v3 = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<unsigned long long &>(a2, a1, 0, &v3);
}

void sub_228B66EE0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t health::WriteAheadLog::Transaction::commit(unint64_t a1, uint64_t a2)
{
  result = health::WriteAheadLog::Transaction::_writeCompletionEntryOfType(a1, 1);
  v5 = *(a1 + 32);
  v6 = (a1 + 40);
  if (v5 != v6)
  {
    do
    {
      v7 = v5[4];
      v12 = *(v5 + 5);
      v13 = v5[7];
      v14 = v7;
      v8 = *(a2 + 24);
      if (!v8)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      result = (*(*v8 + 48))(v8, &v14, &v12);
      v9 = v5[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v5[2];
          v11 = *v10 == v5;
          v5 = v10;
        }

        while (!v11);
      }

      v5 = v10;
    }

    while (v10 != v6);
  }

  return result;
}

uint64_t health::WriteAheadLog::Transaction::commitAndMerge(health::WriteAheadLog::Transaction *this, health::WriteAheadLog::Transaction *a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_283BE83C0;
  v4[1] = a2;
  v4[3] = v4;
  health::WriteAheadLog::Transaction::commit(this, v4);
  result = std::__function::__value_func<void ()(long long,health::WriteAheadLog::PageEntry)>::~__value_func[abi:ne200100](v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228B67050(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(long long,health::WriteAheadLog::PageEntry)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t health::WriteAheadLog::_walLock_shouldCheckpoint(health::WriteAheadLog *this)
{
  result = *(this + 19);
  if (result)
  {
    return *(this + 23) > 9 || (*(*result + 48))(result) >= 0x200000;
  }

  return result;
}

BOOL health::WriteAheadLog::_walLock_shouldCheckpointForMode(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 == 2)
  {
    return 1;
  }

  if (a2 != 1)
  {
    return 0;
  }

  v2 = *(a1 + 152);
  if (!v2)
  {
    return 0;
  }

  if (*(a1 + 184) > 9)
  {
    return 1;
  }

  return (*(*v2 + 48))(v2) >= 0x200000;
}

void *health::WriteAheadLog::_walLock_pruneCommittedPages(void *this)
{
  v1 = this[22];
  for (i = this[30]; i; i = *i)
  {
    if (i[2] < v1)
    {
      v1 = i[2];
    }
  }

  v3 = this[33];
  v4 = this + 34;
  if (v3 != this + 34)
  {
    do
    {
      v6 = v3[5];
      v5 = v3[6];
      if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) >= 2)
      {
        v7 = 0;
        while (v5 + v7 != v6)
        {
          v8 = *(v5 + v7 - 24);
          v7 -= 24;
          if (v8 <= v1)
          {
            if (v6 - v5 != v7)
            {
              if (v5 + v7 != v5)
              {
                this = memmove(v3[5], (v5 + v7), -v7);
              }

              v3[6] = v6 - v7;
            }

            break;
          }
        }
      }

      v9 = v3[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v4);
  }

  return this;
}

uint64_t health::WriteAheadLog::Transaction::Transaction(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v6 = *a3;
  v5 = a3[1];
  *result = a2;
  *(result + 8) = v6;
  *(result + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 24) = a4;
  *(result + 32) = result + 40;
  *(result + 56) = 0;
  *(result + 60) = a5;
  return result;
}

{
  v6 = *a3;
  v5 = a3[1];
  *result = a2;
  *(result + 8) = v6;
  *(result + 16) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 24) = a4;
  *(result + 32) = result + 40;
  *(result + 56) = 0;
  *(result + 60) = a5;
  return result;
}

void health::FormatString<std::string,unsigned long long &>(std::string *a1, std::string *a2, uint64_t a3, uint64_t a4)
{
  v4[0] = a4;
  v4[1] = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<std::string,unsigned long long &>(a2, a1, 0, v4);
}

void sub_228B67330(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::WriteAheadLog::EntryTypeToString(std::string *a1, int a2)
{
  if (a2 <= 1)
  {
    if (!a2)
    {
      v2 = "Start";
      goto LABEL_12;
    }

    if (a2 == 1)
    {
      v2 = "Commit";
      goto LABEL_12;
    }

LABEL_15:
    v3 = a2;
    v4 = &v3;
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    a1->__r_.__value_.__r.__words[0] = 0;
    health::FormatImplementation<unsigned int>("Invalid({0})", a1, 0, &v4);
    return;
  }

  if (a2 == 2)
  {
    v2 = "Rollback";
    goto LABEL_12;
  }

  if (a2 == 3)
  {
    v2 = "PageUpdate";
    goto LABEL_12;
  }

  if (a2 != 99)
  {
    goto LABEL_15;
  }

  v2 = "Unknown";
LABEL_12:

  std::string::basic_string[abi:ne200100]<0>(a1, v2);
}

void sub_228B67428(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::shared_ptr<health::WriteAheadLog::Transaction>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<health::WriteAheadLog::Transaction>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<health::WriteAheadLog::Transaction>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:ne200100]<std::shared_ptr<health::WriteAheadLog::Transaction> *,std::shared_ptr<health::WriteAheadLog::Transaction> *,std::shared_ptr<health::WriteAheadLog::Transaction> *>(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5;
      *v5 = 0;
      *(v5 + 1) = 0;
      v7 = *(a3 + 8);
      *a3 = v6;
      if (v7)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }

      ++v5;
      a3 += 16;
    }

    while (v5 != a2);
  }

  return a3;
}

void health::FormatImplementation<unsigned int>(std::string *a1, std::string *a2, std::string::size_type a3, unsigned int **a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v31 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (a1->__r_.__value_.__s.__data_[0])
  {
    v9 = 0;
    v10 = 0;
    v11 = a1;
    while (1)
    {
      if (v6 == 123)
      {
        v12 = v11->__r_.__value_.__s.__data_[1];
        if (v12 != 123)
        {
          if (v12 == 42)
          {
            v31 = &v11->__r_.__value_.__s.__data_[2];
            v22 = v11->__r_.__value_.__s.__data_[2];
            if ((v22 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v23 = 0;
              v24 = &v11->__r_.__value_.__s.__data_[3];
              do
              {
                v31 = v24;
                v23 = (v22 & 0xF) + 10 * v23;
                v25 = *v24++;
                LOBYTE(v22) = v25;
              }

              while ((v25 - 58) >= 0xFFFFFFF6);
              v31 = v24;
              if (*(v24 - 1) == 125)
              {
                health::FormatterParameters<0ul,unsigned int>::formatOptionsAtIndex<unsigned int>(v23);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          health::FormatOptions::FormatOptions(v28, &v31);
          if (v28[1])
          {
            v27 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v27, "Parameter index out of bounds.");
            __cxa_throw(v27, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v15 = v31;
          health::TypeFormatter<unsigned int,void>::TypeFormatter(v32, **a4, v28);
          if (v33 == 1 && *(v32[0] + 48) != 1)
          {
            v16 = 32;
          }

          else
          {
            v16 = 33;
          }

          v17 = v16 - v32[5];
          if (*(v32[0] + 50) == 1 && v17 <= *(v32[0] + 24))
          {
            v17 = *(v32[0] + 24);
          }

          v18 = v30;
          if (v30 <= v17)
          {
            v18 = v17;
          }

          if (v29)
          {
            v19 = v18;
          }

          else
          {
            v19 = v17;
          }

          health::FormatImplementation<unsigned int>(v15, a2, v19 + a3 - v9, a4);
          if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = a2;
          }

          else
          {
            v20 = a2->__r_.__value_.__r.__words[0];
          }

          health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned int>(v28, &v20[a3 - v9], v32);
          if (v9)
          {
            health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
          }

          goto LABEL_33;
        }

        v10 = 1;
        v11 = (v11 + 1);
      }

      v31 = &v11->__r_.__value_.__s.__data_[1];
      v6 = v11->__r_.__value_.__s.__data_[1];
      --v9;
      v11 = (v11 + 1);
      if (!v6)
      {
        std::string::resize(a2, a3 - v9, 0);
        if (v9)
        {
          v13 = *MEMORY[0x277D85DE8];

          health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
          return;
        }

LABEL_33:
        v21 = *MEMORY[0x277D85DE8];
        return;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  std::string::resize(a2, a3, 0);
}

void health::FormatterParameters<0ul,unsigned int>::formatOptionsAtIndex<unsigned int>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  v3 = exception;
  if (a1)
  {
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  }

  else
  {
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v3, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void *health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned int>(void *result, char *__b, uint64_t *a3)
{
  v4 = __b;
  v5 = result;
  v6 = *a3;
  if (*(a3 + 48) == 1 && *(v6 + 48) != 1)
  {
    v7 = 32;
  }

  else
  {
    v7 = 33;
  }

  v8 = v7 - a3[5];
  if (*(v6 + 50) == 1)
  {
    v9 = *(v6 + 24);
    if (v8 <= v9)
    {
      v8 = v9;
    }
  }

  if (*(result + 16) != 1 || (v10 = result[3], v11 = v10 - v8, v10 <= v8))
  {
LABEL_14:

    return health::TypeFormatter<unsigned int,void>::formatAtLocation<std::__wrap_iter<char *>>(a3, v4);
  }

  v12 = *result;
  if (*result)
  {
    if (v12 != 1)
    {
      if (v12 != 2)
      {
        return result;
      }

      memset(__b, *(result + 52), v11);
      v4 += v11;
      goto LABEL_14;
    }

    v13 = v11 - (v11 >> 1);
    if (v11 >= 2)
    {
      if (v11 >> 1 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v11 >> 1;
      }

      memset(__b, *(result + 52), v14);
      v4 += v14;
    }

    health::TypeFormatter<unsigned int,void>::formatAtLocation<std::__wrap_iter<char *>>(a3, v4);
    if (v13 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13;
    }

    v16 = *(v5 + 52);
    v17 = &v4[v8];
  }

  else
  {
    health::TypeFormatter<unsigned int,void>::formatAtLocation<std::__wrap_iter<char *>>(a3, __b);
    v16 = *(v5 + 52);
    v17 = &v4[v8];
    v15 = v11;
  }

  return memset(v17, v16, v15);
}

uint64_t health::TypeFormatter<unsigned int,void>::TypeFormatter(uint64_t result, unsigned int a2, uint64_t a3)
{
  *result = a3;
  *(result + 40) = 0;
  *(result + 48) = 1;
  v3 = *(a3 + 4);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (*(a3 + 51))
      {
        v6 = &health::TypeFormatterUpperHexMapping;
      }

      else
      {
        v6 = &health::TypeFormatterLowerHexMapping;
      }

      v4 = 39;
      do
      {
        *(result + v4--) = v6[a2 & 0xF];
        v5 = a2 >= 0x10;
        a2 >>= 4;
      }

      while (v5);
    }

    else
    {
      if (v3 != 3)
      {
        return result;
      }

      v4 = 39;
      do
      {
        *(result + v4--) = a2 & 1 | 0x30;
        v5 = a2 >= 2;
        a2 >>= 1;
      }

      while (v5);
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

    v4 = 39;
    do
    {
      *(result + v4--) = a2 & 7 | 0x30;
      v5 = a2 >= 8;
      a2 >>= 3;
    }

    while (v5);
  }

  else
  {
    v4 = 39;
    do
    {
      *(result + v4--) = (a2 % 0xA) | 0x30;
      v5 = a2 >= 0xA;
      a2 /= 0xAu;
    }

    while (v5);
  }

  *(result + 40) = v4 - 7;
  return result;
}

void *health::TypeFormatter<unsigned int,void>::formatAtLocation<std::__wrap_iter<char *>>(void *result, char *a2)
{
  v2 = a2;
  v3 = result[5];
  if (*(result + 48) == 1)
  {
    v4 = *result;
    if (*(*result + 48) != 1)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = *(v4 + 49);
  }

  else
  {
    v5 = 45;
  }

  *a2 = v5;
  v2 = a2 + 1;
  v4 = *result;
  v6 = 1;
LABEL_7:
  if (*(v4 + 16) == 1 && *(v4 + 50) == 1)
  {
    v7 = v6 - v3 + 32;
    if (v7 < *(v4 + 24))
    {
      do
      {
        *v2++ = 48;
        ++v7;
      }

      while (v7 < *(*result + 24));
    }
  }

  v8 = result[5];
  if (v8 != 32)
  {
    return memmove(v2, result + v8 + 8, 32 - v8);
  }

  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](a1 + 112);
  return a1;
}

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__tree<std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<health::WriteAheadLog::PageEntry>>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__node_insert_multi_prepare(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      prime = v11;
    }

    else
    {
      prime = v10;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v6 = *(a1 + 8);
    }

    if (prime > v6)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    if (prime < v6)
    {
      v13 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v6 < 3 || (v14 = vcnt_s8(v6), v14.i16[0] = vaddlv_u8(v14), v14.u32[0] > 1uLL))
      {
        v13 = std::__next_prime(v13);
      }

      else
      {
        v15 = 1 << -__clz(v13 - 1);
        if (v13 >= 2)
        {
          v13 = v15;
        }
      }

      if (prime <= v13)
      {
        prime = v13;
      }

      if (prime >= v6)
      {
        v6 = *(a1 + 8);
      }

      else
      {
        if (prime)
        {
          goto LABEL_13;
        }

        v26 = *a1;
        *a1 = 0;
        if (v26)
        {
          operator delete(v26);
        }

        v6 = 0;
        *(a1 + 8) = 0;
      }
    }
  }

  v16 = vcnt_s8(v6);
  v16.i16[0] = vaddlv_u8(v16);
  if (v16.u32[0] > 1uLL)
  {
    v17 = a2;
    if (v6 <= a2)
    {
      v17 = a2 % v6;
    }
  }

  else
  {
    v17 = (v6 - 1) & a2;
  }

  v18 = *(*a1 + 8 * v17);
  if (!v18)
  {
    return 0;
  }

  v19 = 0;
  do
  {
    result = v18;
    v18 = *v18;
    if (!v18)
    {
      break;
    }

    v21 = v18[1];
    if (v16.u32[0] > 1uLL)
    {
      v22 = v18[1];
      if (v21 >= v6)
      {
        v22 = v21 % v6;
      }
    }

    else
    {
      v22 = v21 & (v6 - 1);
    }

    if (v22 != v17)
    {
      break;
    }

    v23 = v21 == a2 && v18[2] == *a3;
    v24 = v23 != (v19 & 1);
    v25 = v19 & v24;
    v19 |= v24;
  }

  while (v25 != 1);
  return result;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__node_insert_multi_perform(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned long long,health::FilePage const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void health::WriteAheadLog::runReadTransaction(std::function<void ()(unsigned long long)>)const::$_1::operator()(uint64_t a1)
{
  v2 = *a1;
  std::mutex::lock(*a1);
  v3 = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(&v2[3].__m_.__opaque[24], *(a1 + 8));
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(&v2[3].__m_.__opaque[24], v3);
  std::condition_variable::notify_all(&v2[1]);

  std::mutex::unlock(v2);
}

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void health::WriteAheadLog::runWriteTransaction(unsigned long long,health::WriteAheadLog::CommitMode,std::function<BOOL ()(unsigned long long)>,std::function<void ()(unsigned long long)>,std::function<void ()(unsigned long long,health::FilePage const&)>,std::function<void ()(unsigned long long)>)::$_1::operator()(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  __lk.__m_ = v2;
  __lk.__owns_ = 1;
  std::mutex::lock(v2);
  v3 = **(a1 + 16);
  if (**(a1 + 8) == 1)
  {
    health::WriteAheadLog::_walLock_commitTransaction(v2, v3);
    **(a1 + 24) = 1;
  }

  else
  {
    health::WriteAheadLog::_walLock_rollbackTransaction(v2, v3);
  }

  if (health::WriteAheadLog::_walLock_shouldCheckpointForMode(v2, **(a1 + 32)))
  {
    std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:ne200100](v8, *(a1 + 40));
    std::__function::__value_func<void ()(unsigned long long,health::FilePage const&)>::__value_func[abi:ne200100](v7, *(a1 + 48));
    std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:ne200100](v6, *(a1 + 56));
    health::WriteAheadLog::_walLock_checkpointWhenIdle(v2, &__lk, v8, v7, v6);
    std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v6);
    std::__function::__value_func<void ()(unsigned long long,health::FilePage const&)>::~__value_func[abi:ne200100](v7);
    std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v8);
  }

  health::WriteAheadLog::_walLock_pruneCommittedPages(v2);
  if (__lk.__owns_)
  {
    std::mutex::unlock(__lk.__m_);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_228B68814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](&a13);
  std::__function::__value_func<void ()(unsigned long long,health::FilePage const&)>::~__value_func[abi:ne200100](&a19);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v19 - 56);
  if (a11)
  {
    std::mutex::unlock(a10);
  }

  _Unwind_Resume(a1);
}

uint64_t std::function<BOOL ()(unsigned long long)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void health::FormatImplementation<unsigned long long &,unsigned long long>(std::string *a1, std::string *a2, std::string::size_type a3, unint64_t **a4)
{
  v59 = *MEMORY[0x277D85DE8];
  v54 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (a1->__r_.__value_.__s.__data_[0])
  {
    v9 = 0;
    v10 = 0;
    v11 = a1;
    while (1)
    {
      if (v6 == 123)
      {
        v12 = v11->__r_.__value_.__s.__data_[1];
        if (v12 != 123)
        {
          if (v12 == 42)
          {
            v54 = &v11->__r_.__value_.__s.__data_[2];
            v41 = v11->__r_.__value_.__s.__data_[2];
            if ((v41 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v42 = 0;
              v43 = &v11->__r_.__value_.__s.__data_[3];
              do
              {
                v54 = v43;
                v42 = (v41 & 0xF) + 10 * v42;
                v44 = *v43++;
                LOBYTE(v41) = v44;
              }

              while ((v44 - 58) >= 0xFFFFFFF6);
              v54 = v43;
              if (*(v43 - 1) == 125)
              {
                health::FormatterParameters<0ul,unsigned long long &,unsigned long long>::formatOptionsAtIndex<unsigned long long &,unsigned long long>(v42);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          health::FormatOptions::FormatOptions(&v47, &v54);
          v15 = v54;
          if (!v49)
          {
            health::TypeFormatter<unsigned long long &,void>::TypeFormatter(__p, a4[1], &v47);
            v21 = v56;
            if ((v56 & 0x80u) != 0)
            {
              v21 = __p[1];
            }

            v22 = v51;
            if (v51 <= v21)
            {
              v22 = v21;
            }

            if (v50)
            {
              v21 = v22;
            }

            health::FormatImplementation<unsigned long long &,unsigned long long>(v15, a2, v21 + a3 - v9, a4);
            if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v23 = a2;
            }

            else
            {
              v23 = a2->__r_.__value_.__r.__words[0];
            }

            health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v47, &v23[a3 - v9], __p);
            if ((v56 & 0x80000000) == 0)
            {
              goto LABEL_76;
            }

            operator delete(__p[0]);
            if (!v9)
            {
              goto LABEL_78;
            }

            goto LABEL_77;
          }

          if (v49 != 1)
          {
            v46 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v46, "Parameter index out of bounds.");
            __cxa_throw(v46, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          v16 = 0;
          v17 = **a4;
          v18 = &v47;
          __p[0] = &v47;
          v57 = 0;
          v58 = 1;
          if (v48 > 1)
          {
            if (v48 == 2)
            {
              v24 = &health::TypeFormatterLowerHexMapping;
              if (v52)
              {
                v24 = &health::TypeFormatterUpperHexMapping;
              }

              v19 = 71;
              do
              {
                *(__p + v19--) = v24[v17 & 0xF];
                v20 = v17 >= 0x10;
                v17 >>= 4;
              }

              while (v20);
            }

            else
            {
              if (v48 != 3)
              {
                goto LABEL_48;
              }

              v19 = 71;
              do
              {
                *(__p + v19--) = v17 & 1 | 0x30;
                v20 = v17 >= 2;
                v17 >>= 1;
              }

              while (v20);
            }
          }

          else
          {
            if (v48)
            {
              if (v48 == 1)
              {
                v19 = 71;
                do
                {
                  *(__p + v19--) = v17 & 7 | 0x30;
                  v20 = v17 >= 8;
                  v17 >>= 3;
                }

                while (v20);
                goto LABEL_47;
              }

LABEL_48:
              v25 = 1;
              if (*(v18 + 48) != 1)
              {
                v26 = 64;
LABEL_52:
                v27 = v26 - v16;
                if (*(v18 + 50) == 1 && v27 <= *(v18 + 3))
                {
                  v27 = *(v18 + 3);
                }

                v28 = v51;
                if (v51 <= v27)
                {
                  v28 = v27;
                }

                if (v50)
                {
                  v27 = v28;
                }

                health::FormatImplementation<unsigned long long &,unsigned long long>(v15, a2, v27 + a3 - v9, a4);
                if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v29 = a2;
                }

                else
                {
                  v29 = a2->__r_.__value_.__r.__words[0];
                }

                v30 = v29 + a3;
                if (v25 && *(v18 + 48) != 1)
                {
                  v31 = 64;
                }

                else
                {
                  v31 = 65;
                }

                v32 = (v30 - v9);
                v33 = v31 - v16;
                if (*(v18 + 50) == 1 && v33 <= *(v18 + 3))
                {
                  v33 = *(v18 + 3);
                }

                if (v50 != 1 || (v34 = v51 - v33, v51 <= v33))
                {
LABEL_75:
                  health::TypeFormatter<unsigned long long,void>::formatAtLocation<std::__wrap_iter<char *>>(__p, v32);
                  goto LABEL_76;
                }

                if (v47)
                {
                  if (v47 != 1)
                  {
                    if (v47 == 2)
                    {
                      memset(v32, __c, v51 - v33);
                      v32 += v34;
                      goto LABEL_75;
                    }

LABEL_76:
                    if (!v9)
                    {
                      goto LABEL_78;
                    }

LABEL_77:
                    health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
                    goto LABEL_78;
                  }

                  v36 = v34 - (v34 >> 1);
                  if (v34 >= 2)
                  {
                    if (v34 >> 1 <= 1)
                    {
                      v37 = 1;
                    }

                    else
                    {
                      v37 = v34 >> 1;
                    }

                    memset(v32, __c, v37);
                    v32 += v37;
                  }

                  health::TypeFormatter<unsigned long long,void>::formatAtLocation<std::__wrap_iter<char *>>(__p, v32);
                  if (v36 <= 1)
                  {
                    v38 = 1;
                  }

                  else
                  {
                    v38 = v36;
                  }

                  v39 = __c;
                  v40 = &v32[v33];
                }

                else
                {
                  health::TypeFormatter<unsigned long long,void>::formatAtLocation<std::__wrap_iter<char *>>(__p, v32);
                  v39 = __c;
                  v40 = &v32[v33];
                  v38 = v34;
                }

                memset(v40, v39, v38);
                if (!v9)
                {
                  goto LABEL_78;
                }

                goto LABEL_77;
              }

LABEL_51:
              v26 = 65;
              goto LABEL_52;
            }

            v19 = 71;
            do
            {
              *(__p + v19--) = (v17 % 0xA) | 0x30;
              v20 = v17 >= 0xA;
              v17 /= 0xAuLL;
            }

            while (v20);
          }

LABEL_47:
          v16 = v19 - 7;
          v57 = v19 - 7;
          v18 = __p[0];
          if (v58)
          {
            goto LABEL_48;
          }

          v25 = 0;
          goto LABEL_51;
        }

        v10 = 1;
        v11 = (v11 + 1);
      }

      v54 = &v11->__r_.__value_.__s.__data_[1];
      v6 = v11->__r_.__value_.__s.__data_[1];
      --v9;
      v11 = (v11 + 1);
      if (!v6)
      {
        std::string::resize(a2, a3 - v9, 0);
        if (v9)
        {
          v13 = *MEMORY[0x277D85DE8];

          health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
          return;
        }

LABEL_78:
        v35 = *MEMORY[0x277D85DE8];
        return;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  std::string::resize(a2, a3, 0);
}

void health::FormatterParameters<0ul,unsigned long long &,unsigned long long>::formatOptionsAtIndex<unsigned long long &,unsigned long long>(uint64_t a1)
{
  if (a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v1 = exception;
    if (a1 == 1)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v1 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v1, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v1, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

unsigned __int8 *health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(unsigned __int8 *result, char *__b, uint64_t a3)
{
  v4 = __b;
  v5 = *(a3 + 23);
  v6 = v5;
  v7 = *(a3 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 8);
  }

  if (result[16] != 1 || (v9 = result, v10 = *(result + 3), v11 = v10 - v8, v10 <= v8))
  {
    if (!v8)
    {
      return result;
    }

    v17 = *a3;
    if (v6 >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    v16 = v4;
    v14 = v8;
    goto LABEL_22;
  }

  v12 = *result;
  if (!*result)
  {
    if (v8)
    {
      v26 = *a3;
      if (v6 >= 0)
      {
        v27 = a3;
      }

      else
      {
        v27 = *a3;
      }

      memmove(v4, v27, v8);
    }

    v24 = v9[52];
    v25 = &v4[v8];
    v23 = v11;
    goto LABEL_49;
  }

  if (v12 == 1)
  {
    if (v11 >= 2)
    {
      if (v11 >> 1 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v11 >> 1;
      }

      memset(__b, result[52], v18);
      v4 += v18;
      v5 = *(a3 + 23);
      v7 = *(a3 + 8);
      LOBYTE(v6) = *(a3 + 23);
    }

    v19 = v11 - (v11 >> 1);
    if ((v6 & 0x80u) == 0)
    {
      v20 = v5;
    }

    else
    {
      v20 = v7;
    }

    if (v20)
    {
      v21 = *a3;
      if ((v6 & 0x80u) == 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      memmove(v4, v22, v20);
    }

    if (v19 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v19;
    }

    v24 = v9[52];
    v25 = &v4[v8];
LABEL_49:

    return memset(v25, v24, v23);
  }

  if (v12 == 2)
  {
    result = memset(__b, result[52], v11);
    v13 = *(a3 + 23);
    v14 = v13 >= 0 ? *(a3 + 23) : *(a3 + 8);
    if (v14)
    {
      if (v13 >= 0)
      {
        v15 = a3;
      }

      else
      {
        v15 = *a3;
      }

      v16 = &v4[v11];
LABEL_22:

      return memmove(v16, v15, v14);
    }
  }

  return result;
}

void *health::TypeFormatter<unsigned long long,void>::formatAtLocation<std::__wrap_iter<char *>>(void *result, char *a2)
{
  v2 = a2;
  v3 = result[9];
  if (*(result + 80) == 1)
  {
    v4 = *result;
    if (*(*result + 48) != 1)
    {
      v6 = 0;
      goto LABEL_7;
    }

    v5 = *(v4 + 49);
  }

  else
  {
    v5 = 45;
  }

  *a2 = v5;
  v2 = a2 + 1;
  v4 = *result;
  v6 = 1;
LABEL_7:
  if (*(v4 + 16) == 1 && *(v4 + 50) == 1)
  {
    v7 = v6 - v3 + 64;
    if (v7 < *(v4 + 24))
    {
      do
      {
        *v2++ = 48;
        ++v7;
      }

      while (v7 < *(*result + 24));
    }
  }

  v8 = result[9];
  if (v8 != 64)
  {
    return memmove(v2, result + v8 + 8, 64 - v8);
  }

  return result;
}

uint64_t health::TypeFormatter<unsigned long long &,void>::TypeFormatter(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v6 = v13;
  if (*(a3 + 16) == 1)
  {
    *(&v15[1] + *(v13 - 24)) = *(a3 + 24);
  }

  if (*(a3 + 32) == 1)
  {
    *(v15 + *(v6 - 24)) = *(a3 + 40);
  }

  v7 = (&v13 + *(v6 - 24));
  v8 = *(a3 + 52);
  if (v7[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v7);
    v9 = std::locale::use_facet(&v11, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 32);
    std::locale::~locale(&v11);
  }

  v7[1].__fmtflags_ = v8;
  MEMORY[0x22AAC83F0](&v13, *a2);
  std::ostringstream::str[abi:ne200100](&v13, &v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  *(a1 + 16) = v12;
  v13 = *MEMORY[0x277D82828];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&v17);
  return a1;
}

void sub_228B69464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a9);
  std::ostringstream::~ostringstream(&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void health::FormatImplementation<long long &,unsigned long,unsigned long long &,unsigned long long &>(std::string *a1, std::string *a2, std::string::size_type a3, void **a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v39 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (a1->__r_.__value_.__s.__data_[0])
  {
    v9 = 0;
    v10 = 0;
    v11 = a1;
    while (1)
    {
      if (v6 == 123)
      {
        v12 = v11->__r_.__value_.__s.__data_[1];
        if (v12 != 123)
        {
          if (v12 == 42)
          {
            v39 = &v11->__r_.__value_.__s.__data_[2];
            v29 = v11->__r_.__value_.__s.__data_[2];
            if ((v29 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v30 = 0;
              v31 = &v11->__r_.__value_.__s.__data_[3];
              do
              {
                v39 = v31;
                v30 = (v29 & 0xF) + 10 * v30;
                v32 = *v31++;
                LOBYTE(v29) = v32;
              }

              while ((v32 - 58) >= 0xFFFFFFF6);
              v39 = v31;
              if (*(v31 - 1) == 125)
              {
                health::FormatterParameters<0ul,long long &,unsigned long,unsigned long long &,unsigned long long &>::formatOptionsAtIndex<long long &,unsigned long,unsigned long long &,unsigned long long &>(v30);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          health::FormatOptions::FormatOptions(&v35, &v39);
          v15 = v39;
          if (v36 > 1)
          {
            if (v36 == 2)
            {
              health::TypeFormatter<unsigned long long &,void>::TypeFormatter(&__p, a4[1], &v35);
              v22 = v42;
              if ((v42 & 0x80u) != 0)
              {
                v22 = v41;
              }

              v23 = v38;
              if (v38 <= v22)
              {
                v23 = v22;
              }

              if (v37)
              {
                v22 = v23;
              }

              health::FormatImplementation<long long &,unsigned long,unsigned long long &,unsigned long long &>(v15, a2, v22 + a3 + v9, a4);
              if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v19 = a2;
              }

              else
              {
                v19 = a2->__r_.__value_.__r.__words[0];
              }
            }

            else
            {
              if (v36 != 3)
              {
                goto LABEL_76;
              }

              health::TypeFormatter<unsigned long long &,void>::TypeFormatter(&__p, *a4, &v35);
              v17 = v42;
              if ((v42 & 0x80u) != 0)
              {
                v17 = v41;
              }

              v18 = v38;
              if (v38 <= v17)
              {
                v18 = v17;
              }

              if (v37)
              {
                v17 = v18;
              }

              health::FormatImplementation<long long &,unsigned long,unsigned long long &,unsigned long long &>(v15, a2, v17 + a3 + v9, a4);
              if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v19 = a2;
              }

              else
              {
                v19 = a2->__r_.__value_.__r.__words[0];
              }
            }
          }

          else
          {
            if (v36)
            {
              if (v36 == 1)
              {
                health::TypeFormatter<unsigned long,void>::TypeFormatter(&__p, *a4[2], &v35);
                if (v44 == 1 && *(__p + 48) != 1)
                {
                  v16 = 64;
                }

                else
                {
                  v16 = 65;
                }

                v24 = v16 - v43;
                if (*(__p + 50) == 1 && v24 <= *(__p + 3))
                {
                  v24 = *(__p + 3);
                }

                v25 = v38;
                if (v38 <= v24)
                {
                  v25 = v24;
                }

                if (v37)
                {
                  v26 = v25;
                }

                else
                {
                  v26 = v24;
                }

                health::FormatImplementation<long long &,unsigned long,unsigned long long &,unsigned long long &>(v15, a2, v26 + a3 + v9, a4);
                if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v27 = a2;
                }

                else
                {
                  v27 = a2->__r_.__value_.__r.__words[0];
                }

                health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long>(&v35, &v27[a3 + v9], &__p);
LABEL_65:
                if (v9)
                {
                  health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
                }

                goto LABEL_67;
              }

LABEL_76:
              v34 = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(v34, "Parameter index out of bounds.");
              __cxa_throw(v34, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            health::TypeFormatter<long long &,void>::TypeFormatter(&__p, a4[3], &v35);
            v20 = v42;
            if ((v42 & 0x80u) != 0)
            {
              v20 = v41;
            }

            v21 = v38;
            if (v38 <= v20)
            {
              v21 = v20;
            }

            if (v37)
            {
              v20 = v21;
            }

            health::FormatImplementation<long long &,unsigned long,unsigned long long &,unsigned long long &>(v15, a2, v20 + a3 + v9, a4);
            if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v19 = a2;
            }

            else
            {
              v19 = a2->__r_.__value_.__r.__words[0];
            }
          }

          health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v35, &v19[a3 + v9], &__p);
          if (v42 < 0)
          {
            operator delete(__p);
          }

          goto LABEL_65;
        }

        v10 = 1;
        v11 = (v11 + 1);
      }

      v39 = &v11->__r_.__value_.__s.__data_[1];
      v6 = v11->__r_.__value_.__s.__data_[1];
      ++v9;
      v11 = (v11 + 1);
      if (!v6)
      {
        std::string::resize(a2, a3 + v9, 0);
        if (v9)
        {
          v13 = *MEMORY[0x277D85DE8];

          health::CopyFormatSectionToResult(a1, a2, a3, v9, v10 & 1);
          return;
        }

LABEL_67:
        v28 = *MEMORY[0x277D85DE8];
        return;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  std::string::resize(a2, a3, 0);
}

void health::FormatterParameters<0ul,long long &,unsigned long,unsigned long long &,unsigned long long &>::formatOptionsAtIndex<long long &,unsigned long,unsigned long long &,unsigned long long &>(uint64_t a1)
{
  if (!a1 || a1 == 1 || a1 == 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
  }

  else
  {
    v3 = __cxa_allocate_exception(0x10uLL);
    exception = v3;
    if (a1 == 3)
    {
      std::runtime_error::runtime_error(v3, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(v3, "Parameter index out of bounds.");
    }
  }

  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void *health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long>(void *result, char *__b, uint64_t *a3)
{
  v4 = __b;
  v5 = result;
  v6 = *a3;
  if (*(a3 + 80) == 1 && *(v6 + 48) != 1)
  {
    v7 = 64;
  }

  else
  {
    v7 = 65;
  }

  v8 = v7 - a3[9];
  if (*(v6 + 50) == 1)
  {
    v9 = *(v6 + 24);
    if (v8 <= v9)
    {
      v8 = v9;
    }
  }

  if (*(result + 16) != 1 || (v10 = result[3], v11 = v10 - v8, v10 <= v8))
  {
LABEL_14:

    return health::TypeFormatter<unsigned long long,void>::formatAtLocation<std::__wrap_iter<char *>>(a3, v4);
  }

  v12 = *result;
  if (*result)
  {
    if (v12 != 1)
    {
      if (v12 != 2)
      {
        return result;
      }

      memset(__b, *(result + 52), v11);
      v4 += v11;
      goto LABEL_14;
    }

    v13 = v11 - (v11 >> 1);
    if (v11 >= 2)
    {
      if (v11 >> 1 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v11 >> 1;
      }

      memset(__b, *(result + 52), v14);
      v4 += v14;
    }

    health::TypeFormatter<unsigned long long,void>::formatAtLocation<std::__wrap_iter<char *>>(a3, v4);
    if (v13 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v13;
    }

    v16 = *(v5 + 52);
    v17 = &v4[v8];
  }

  else
  {
    health::TypeFormatter<unsigned long long,void>::formatAtLocation<std::__wrap_iter<char *>>(a3, __b);
    v16 = *(v5 + 52);
    v17 = &v4[v8];
    v15 = v11;
  }

  return memset(v17, v16, v15);
}

uint64_t health::TypeFormatter<unsigned long,void>::TypeFormatter(uint64_t result, unint64_t a2, uint64_t a3)
{
  *result = a3;
  *(result + 72) = 0;
  *(result + 80) = 1;
  v3 = *(a3 + 4);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (*(a3 + 51))
      {
        v6 = &health::TypeFormatterUpperHexMapping;
      }

      else
      {
        v6 = &health::TypeFormatterLowerHexMapping;
      }

      v4 = 71;
      do
      {
        *(result + v4--) = v6[a2 & 0xF];
        v5 = a2 >= 0x10;
        a2 >>= 4;
      }

      while (v5);
    }

    else
    {
      if (v3 != 3)
      {
        return result;
      }

      v4 = 71;
      do
      {
        *(result + v4--) = a2 & 1 | 0x30;
        v5 = a2 >= 2;
        a2 >>= 1;
      }

      while (v5);
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

    v4 = 71;
    do
    {
      *(result + v4--) = a2 & 7 | 0x30;
      v5 = a2 >= 8;
      a2 >>= 3;
    }

    while (v5);
  }

  else
  {
    v4 = 71;
    do
    {
      *(result + v4--) = (a2 % 0xA) | 0x30;
      v5 = a2 >= 0xA;
      a2 /= 0xAuLL;
    }

    while (v5);
  }

  *(result + 72) = v4 - 7;
  return result;
}

uint64_t health::TypeFormatter<long long &,void>::TypeFormatter(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v6 = v13;
  if (*(a3 + 16) == 1)
  {
    *(&v15[1] + *(v13 - 24)) = *(a3 + 24);
  }

  if (*(a3 + 32) == 1)
  {
    *(v15 + *(v6 - 24)) = *(a3 + 40);
  }

  v7 = (&v13 + *(v6 - 24));
  v8 = *(a3 + 52);
  if (v7[1].__fmtflags_ == -1)
  {
    std::ios_base::getloc(v7);
    v9 = std::locale::use_facet(&v11, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 32);
    std::locale::~locale(&v11);
  }

  v7[1].__fmtflags_ = v8;
  MEMORY[0x22AAC83E0](&v13, *a2);
  std::ostringstream::str[abi:ne200100](&v13, &v11);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  *a1 = v11;
  *(a1 + 16) = v12;
  v13 = *MEMORY[0x277D82828];
  *(&v13 + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  MEMORY[0x22AAC8550](&v17);
  return a1;
}

void sub_228B69FB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  std::locale::~locale(&a9);
  std::ostringstream::~ostringstream(&a12);
  if (*(v12 + 23) < 0)
  {
    operator delete(*v12);
  }

  _Unwind_Resume(a1);
}

void health::FormatString<char const*>(std::string *a1@<X0>, const char **a2@<X1>, std::string *a3@<X8>)
{
  v3 = a2;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  a3->__r_.__value_.__r.__words[0] = 0;
  health::FormatImplementation<char const*>(a1, a3, 0, &v3);
}

void sub_228B6A038(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void health::FormatImplementation<char const*>(std::string *a1, std::string *this, std::string::size_type __n, const char ***a4)
{
  v19 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (a1->__r_.__value_.__s.__data_[0])
  {
    v9 = 0;
    v10 = 0;
    for (i = a1; ; i = (i + 1))
    {
      if (v6 == 123)
      {
        v12 = i->__r_.__value_.__s.__data_[1];
        if (v12 != 123)
        {
          if (v12 == 42)
          {
            v19 = &i->__r_.__value_.__s.__data_[2];
            v13 = i->__r_.__value_.__s.__data_[2];
            if ((v13 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v14 = 0;
              v15 = &i->__r_.__value_.__s.__data_[3];
              do
              {
                v19 = v15;
                v14 = (v13 & 0xF) + 10 * v14;
                v16 = *v15++;
                LOBYTE(v13) = v16;
              }

              while ((v16 - 58) >= 0xFFFFFFF6);
              v19 = v15;
              if (*(v15 - 1) == 125)
              {
                health::FormatterParameters<0ul,char const*>::formatOptionsAtIndex<char const*>(a4, a4, v14);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          health::FormatOptions::FormatOptions(v18, &v19);
          health::FormatterParameters<0ul,char const*>::formatParameterAtIndex<char const*>(a4, a4, *(&v18[0] + 1), v18, this, __n - v9, v19);
          if (v9)
          {
            health::CopyFormatSectionToResult(a1, this, __n, -v9, v10 & 1);
          }

          return;
        }

        v10 = 1;
        i = (i + 1);
      }

      v19 = &i->__r_.__value_.__s.__data_[1];
      v6 = i->__r_.__value_.__s.__data_[1];
      --v9;
      if (!v6)
      {
        std::string::resize(this, __n - v9, 0);
        if (v9)
        {

          health::CopyFormatSectionToResult(a1, this, __n, -v9, v10 & 1);
        }

        return;
      }
    }
  }

  std::string::resize(this, __n, 0);
}

void health::FormatterParameters<0ul,char const*>::formatOptionsAtIndex<char const*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    health::FormatterParameters<1ul>::formatOptionsAtIndex<char const*>();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

unsigned __int8 *health::FormatterParameters<0ul,char const*>::formatParameterAtIndex<char const*>(const char ***a1, int a2, uint64_t a3, __int128 *a4, std::string *this, uint64_t a6, int a7)
{
  if (a3)
  {

    health::FormatterParameters<1ul>::formatParameterAtIndex<health::FormatterParameters<0ul,char const*>>();
  }

  v11 = **a1;
  v17[0] = v11;
  if (v11)
  {
    v11 = strlen(v11);
  }

  v17[1] = v11;
  v12 = a4[1];
  v18 = *a4;
  v19 = v12;
  v20 = a4[2];
  v21 = *(a4 + 6);
  v13 = *(a4 + 3);
  if (v13 <= v11)
  {
    v13 = v11;
  }

  if (*(a4 + 16))
  {
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  health::FormatImplementation<char const*>(a7, this, &v14[a6]);
  if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = this;
  }

  else
  {
    v15 = this->__r_.__value_.__r.__words[0];
  }

  return health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,char const*>(a4, v15 + a6, v17);
}

void health::FormatterParameters<1ul>::formatOptionsAtIndex<char const*>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatterParameters<1ul>::formatParameterAtIndex<health::FormatterParameters<0ul,char const*>>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

unsigned __int8 *health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,char const*>(unsigned __int8 *result, char *__b, uint64_t a3)
{
  v4 = __b;
  v5 = *(a3 + 8);
  v6 = v5;
  if (result[16] != 1 || (v7 = result, v8 = *(result + 3), v9 = v8 - v5, v8 <= v5))
  {
    if (!v5)
    {
      return result;
    }

    v11 = *a3;
    v12 = v4;
LABEL_10:

    return memmove(v12, v11, v6);
  }

  v10 = *result;
  if (*result)
  {
    if (v10 != 1)
    {
      if (v10 != 2)
      {
        return result;
      }

      result = memset(__b, result[52], v9);
      v6 = *(a3 + 8);
      if (!v6)
      {
        return result;
      }

      v11 = *a3;
      v12 = &v4[v9];
      goto LABEL_10;
    }

    if (v9 >= 2)
    {
      if (v9 >> 1 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v9 >> 1;
      }

      memset(__b, result[52], v13);
      v4 += v13;
      v6 = *(a3 + 8);
    }

    v14 = v9 - (v9 >> 1);
    if (v6)
    {
      memmove(v4, *a3, v6);
    }

    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    v16 = v7[52];
    v17 = &v4[v5];
  }

  else
  {
    if (v5)
    {
      memmove(__b, *a3, v5);
    }

    v16 = v7[52];
    v17 = &v4[v5];
    v15 = v9;
  }

  return memset(v17, v16, v15);
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v3 = vcnt_s8(a2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a3;
    if (a3 >= a2)
    {
      v4 = a3 % a2;
    }
  }

  else
  {
    v4 = (a2 - 1) & a3;
  }

  v5 = *(a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  result = *v5;
  if (*v5)
  {
    do
    {
      v7 = result[1];
      if (v7 == a3)
      {
        if (result[2] == a3)
        {
          return result;
        }
      }

      else
      {
        if (v3.u32[0] > 1uLL)
        {
          if (v7 >= a2)
          {
            v7 %= a2;
          }
        }

        else
        {
          v7 &= a2 - 1;
        }

        if (v7 != v4)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *result, unint64_t a2)
{
  v2 = result[1];
  if (!*&v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void health::FormatImplementation<int>(std::string *a1, std::string *this, std::string::size_type __n, int **a4)
{
  v19 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (a1->__r_.__value_.__s.__data_[0])
  {
    v9 = 0;
    v10 = 0;
    for (i = a1; ; i = (i + 1))
    {
      if (v6 == 123)
      {
        v12 = i->__r_.__value_.__s.__data_[1];
        if (v12 != 123)
        {
          if (v12 == 42)
          {
            v19 = &i->__r_.__value_.__s.__data_[2];
            v13 = i->__r_.__value_.__s.__data_[2];
            if ((v13 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v14 = 0;
              v15 = &i->__r_.__value_.__s.__data_[3];
              do
              {
                v19 = v15;
                v14 = (v13 & 0xF) + 10 * v14;
                v16 = *v15++;
                LOBYTE(v13) = v16;
              }

              while ((v16 - 58) >= 0xFFFFFFF6);
              v19 = v15;
              if (*(v15 - 1) == 125)
              {
                health::FormatterParameters<0ul,int>::formatOptionsAtIndex<int>(a4, a4, v14);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }

            __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          health::FormatOptions::FormatOptions(v18, &v19);
          health::FormatterParameters<0ul,int>::formatParameterAtIndex<int>(a4, a4, v18[1], v18, this, __n - v9, v19);
          if (v9)
          {
            health::CopyFormatSectionToResult(a1, this, __n, -v9, v10 & 1);
          }

          return;
        }

        v10 = 1;
        i = (i + 1);
      }

      v19 = &i->__r_.__value_.__s.__data_[1];
      v6 = i->__r_.__value_.__s.__data_[1];
      --v9;
      if (!v6)
      {
        std::string::resize(this, __n - v9, 0);
        if (v9)
        {

          health::CopyFormatSectionToResult(a1, this, __n, -v9, v10 & 1);
        }

        return;
      }
    }
  }

  std::string::resize(this, __n, 0);
}

void health::FormatterParameters<0ul,int>::formatOptionsAtIndex<int>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {

    health::FormatterParameters<1ul>::formatOptionsAtIndex<int>();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void *health::FormatterParameters<0ul,int>::formatParameterAtIndex<int>(int **a1, uint64_t a2, uint64_t a3, uint64_t a4, std::string *a5, uint64_t a6, int a7)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v11 = *MEMORY[0x277D85DE8];

    health::FormatterParameters<1ul>::formatParameterAtIndex<health::FormatterParameters<0ul,int>>();
  }

  health::TypeFormatter<int,void>::TypeFormatter(v19, **a1, a4);
  if (v20 == 1 && *(v19[0] + 48) != 1)
  {
    v12 = 32;
  }

  else
  {
    v12 = 33;
  }

  v13 = v12 - v19[5];
  if (*(v19[0] + 50) == 1 && v13 <= *(v19[0] + 24))
  {
    v13 = *(v19[0] + 24);
  }

  v14 = *(a4 + 24);
  if (v14 <= v13)
  {
    v14 = v13;
  }

  if (*(a4 + 16))
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  health::FormatImplementation<int>(a7, a5, v15 + a6);
  if ((a5->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = a5;
  }

  else
  {
    v16 = a5->__r_.__value_.__r.__words[0];
  }

  result = health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned int>(a4, &v16[a6], v19);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void health::FormatterParameters<1ul>::formatOptionsAtIndex<int>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void health::FormatterParameters<1ul>::formatParameterAtIndex<health::FormatterParameters<0ul,int>>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t health::TypeFormatter<int,void>::TypeFormatter(uint64_t result, int a2, uint64_t a3)
{
  *result = a3;
  *(result + 40) = 0;
  *(result + 48) = a2 >= 0;
  v3 = *(a3 + 4);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      v8 = &health::TypeFormatterLowerHexMapping;
      if (*(a3 + 51))
      {
        v8 = &health::TypeFormatterUpperHexMapping;
      }

      if (a2 >= 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = -a2;
      }

      v10 = 39;
      do
      {
        *(result + v10--) = v8[v9 & 0xF];
        v6 = v9 >= 0x10;
        v9 >>= 4;
      }

      while (v6);
      v11 = v10 - 7;
      goto LABEL_31;
    }

    if (v3 != 3)
    {
      return result;
    }

    if (a2 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = -a2;
    }

    v5 = 39;
    do
    {
      *(result + v5--) = v7 & 1 | 0x30;
      v6 = v7 >= 2;
      v7 >>= 1;
    }

    while (v6);
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      return result;
    }

    if (a2 >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = -a2;
    }

    v5 = 39;
    do
    {
      *(result + v5--) = v4 & 7 | 0x30;
      v6 = v4 >= 8;
      v4 >>= 3;
    }

    while (v6);
  }

  else
  {
    v5 = 39;
    if (a2 < 0)
    {
      do
      {
        v12 = -a2;
        v13 = a2 + 9;
        a2 /= 10;
        *(result + v5--) = v12 + 10 * a2 + 48;
      }

      while (v13 >= 0x13);
    }

    else
    {
      do
      {
        *(result + v5--) = (a2 % 0xAu) | 0x30;
        v6 = a2 >= 0xA;
        a2 /= 0xAu;
      }

      while (v6);
    }
  }

  v11 = v5 - 7;
LABEL_31:
  *(result + 40) = v11;
  return result;
}

void std::__shared_ptr_emplace<health::WriteAheadLog::Transaction>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283BE82E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AAC8590);
}

void health::FormatImplementation<unsigned long long &>(std::string *a1, std::string *a2, std::string::size_type a3, void **a4)
{
  v26 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (a1->__r_.__value_.__s.__data_[0])
  {
    v9 = 0;
    v10 = 0;
    for (i = a1; ; i = (i + 1))
    {
      if (v6 == 123)
      {
        v12 = i->__r_.__value_.__s.__data_[1];
        if (v12 != 123)
        {
          if (v12 == 42)
          {
            v26 = &i->__r_.__value_.__s.__data_[2];
            v17 = i->__r_.__value_.__s.__data_[2];
            if ((v17 - 48) > 9)
            {
              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
            }

            else
            {
              v18 = 0;
              v19 = &i->__r_.__value_.__s.__data_[3];
              do
              {
                v26 = v19;
                v18 = (v17 & 0xF) + 10 * v18;
                v20 = *v19++;
                LOBYTE(v17) = v20;
              }

              while ((v20 - 58) >= 0xFFFFFFF6);
              v26 = v19;
              if (*(v19 - 1) == 125)
              {
                health::FormatterParameters<0ul,unsigned long long &>::formatOptionsAtIndex<unsigned long long &>(v18);
              }

              exception = __cxa_allocate_exception(0x10uLL);
              std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
            }
          }

          else
          {
            health::FormatOptions::FormatOptions(v22, &v26);
            if (!v23)
            {
              v13 = v26;
              health::TypeFormatter<unsigned long long &,void>::TypeFormatter(__p, *a4, v22);
              v14 = v28;
              if ((v28 & 0x80u) != 0)
              {
                v14 = __p[1];
              }

              v15 = v25;
              if (v25 <= v14)
              {
                v15 = v14;
              }

              if (v24)
              {
                v14 = v15;
              }

              health::FormatImplementation<unsigned long long &>(v13, a2, v14 + a3 - v9, a4);
              if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v16 = a2;
              }

              else
              {
                v16 = a2->__r_.__value_.__r.__words[0];
              }

              health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(v22, &v16[a3 - v9], __p);
              if (v28 < 0)
              {
                operator delete(__p[0]);
              }

              if (v9)
              {
                health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
              }

              return;
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
          }

          __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v10 = 1;
        i = (i + 1);
      }

      v26 = &i->__r_.__value_.__s.__data_[1];
      v6 = i->__r_.__value_.__s.__data_[1];
      --v9;
      if (!v6)
      {
        std::string::resize(a2, a3 - v9, 0);
        if (v9)
        {

          health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
        }

        return;
      }
    }
  }

  std::string::resize(a2, a3, 0);
}

void health::FormatterParameters<0ul,unsigned long long &>::formatOptionsAtIndex<unsigned long long &>(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  v3 = exception;
  if (a1)
  {
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
  }

  else
  {
    std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v3, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

__n128 std::__function::__func<health::WriteAheadLog::_walLock_commitTransaction(unsigned long long)::$_0,std::allocator<health::WriteAheadLog::_walLock_commitTransaction(unsigned long long)::$_0>,void ()(long long,health::WriteAheadLog::PageEntry)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BE8330;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<health::WriteAheadLog::_walLock_commitTransaction(unsigned long long)::$_0,std::allocator<health::WriteAheadLog::_walLock_commitTransaction(unsigned long long)::$_0>,void ()(long long,health::WriteAheadLog::PageEntry)>::operator()(uint64_t a1, unint64_t *a2, __int128 *a3)
{
  v3 = *a2;
  v48 = *a3;
  v49 = *(a3 + 2);
  v4 = *(*(a1 + 8) + 272);
  if (!v4)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = v4[4];
      if (v6 <= v3)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (v6 >= v3)
    {
      break;
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  v8 = v5[5];
  v7 = v5[6];
  if (v8 == v7)
  {
LABEL_13:
    v12 = v5[7];
    if (v7 >= v12)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
      v16 = v15 + 1;
      if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_62;
      }

      v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3);
      if (2 * v17 > v16)
      {
        v16 = 2 * v17;
      }

      if (v17 >= 0x555555555555555)
      {
        v18 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HDRawDistanceSample>>(v18);
      }

      v27 = 24 * v15;
      v28 = v48;
      *(v27 + 16) = v49;
      *v27 = v28;
      v14 = 24 * v15 + 24;
      v29 = v5[5];
      v30 = v5[6] - v29;
      v31 = 24 * v15 - v30;
      memcpy((v27 - v30), v29, v30);
      v32 = v5[5];
      v5[5] = v31;
      v5[6] = v14;
      v5[7] = 0;
      if (v32)
      {
        operator delete(v32);
      }
    }

    else
    {
      v13 = v48;
      *(v7 + 16) = v49;
      *v7 = v13;
      v14 = v7 + 24;
    }

    v5[6] = v14;
    return;
  }

  v9 = 0;
  v10 = **(a1 + 16);
  while (1)
  {
    v11 = *(v8 + v9);
    if (v11 == v10)
    {
      v19 = v8 + v9;
      v20 = v48;
      *(v19 + 16) = v49;
      *v19 = v20;
      return;
    }

    if (v11 > v10)
    {
      break;
    }

    v9 += 24;
    if (v8 + v9 == v7)
    {
      goto LABEL_13;
    }
  }

  v21 = v8 + v9;
  v22 = v5[7];
  if (v7 < v22)
  {
    if (v21 == v7)
    {
      v36 = v48;
      *(v7 + 16) = v49;
      *v7 = v36;
      v5[6] = v7 + 24;
    }

    else
    {
      v23 = v7 - v8 - v9 - 24;
      v24 = v21 + v23;
      if (v21 + v23 >= v7)
      {
        v25 = v5[6];
      }

      else
      {
        v25 = v7 + 24;
        v26 = *v24;
        *(v7 + 16) = *(v24 + 16);
        *v7 = v26;
      }

      v5[6] = v25;
      if (v8 + v9 + 24 != v7)
      {
        memmove((24 - (-v8 - v9)), (v8 + v9), v23);
        v25 = v5[6];
      }

      v38 = v25 <= &v48 || v21 > &v48;
      v39 = 24;
      if (v38)
      {
        v39 = 0;
      }

      v40 = *(&v48 + v39);
      *(v21 + 16) = *(&v48 + v39 + 16);
      *v21 = v40;
    }

    return;
  }

  v33 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3) + 1;
  if (v33 > 0xAAAAAAAAAAAAAAALL)
  {
LABEL_62:
    std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
  }

  v34 = 0xAAAAAAAAAAAAAAABLL * ((v22 - v8) >> 3);
  if (2 * v34 > v33)
  {
    v33 = 2 * v34;
  }

  if (v34 >= 0x555555555555555)
  {
    v35 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v35 = v33;
  }

  if (v35)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HDRawDistanceSample>>(v35);
  }

  v37 = 8 * (v9 >> 3);
  if (!(0xAAAAAAAAAAAAAAABLL * (v9 >> 3)))
  {
    if (v9 < 1)
    {
      if (v9)
      {
        v41 = 0x5555555555555556 * (v9 >> 3);
      }

      else
      {
        v41 = 1;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<HDRawDistanceSample>>(v41);
    }

    v37 = 8 * (v9 >> 3) - 24 * ((1 - 0x5555555555555555 * ((8 * (v9 >> 3)) >> 3) + ((1 - 0x5555555555555555 * ((8 * (v9 >> 3)) >> 3)) >> 63)) >> 1);
  }

  v42 = v48;
  *(v37 + 16) = v49;
  *v37 = v42;
  memcpy((v37 + 24), (v8 + v9), v5[6] - v8 - v9);
  v43 = v5[5];
  v44 = v37 + v5[6] - v8 - v9 + 24;
  v5[6] = v21;
  v45 = v8 - v43 + v9;
  v46 = v37 - v45;
  memcpy((v37 - v45), v43, v45);
  v47 = v5[5];
  v5[5] = v46;
  v5[6] = v44;
  v5[7] = 0;
  if (v47)
  {

    operator delete(v47);
  }
}

void sub_228B6BA4C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<health::WriteAheadLog::_walLock_commitTransaction(unsigned long long)::$_0,std::allocator<health::WriteAheadLog::_walLock_commitTransaction(unsigned long long)::$_0>,void ()(long long,health::WriteAheadLog::PageEntry)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(long long,health::WriteAheadLog::PageEntry)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<unsigned long long,health::WriteAheadLog::PageEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::WriteAheadLog::PageEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::WriteAheadLog::PageEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::__function::__func<health::WriteAheadLog::Transaction::commitAndMerge(health::WriteAheadLog::Transaction&)::$_0,std::allocator<health::WriteAheadLog::Transaction::commitAndMerge(health::WriteAheadLog::Transaction&)::$_0>,void ()(long long,health::WriteAheadLog::PageEntry)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BE83C0;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<health::WriteAheadLog::Transaction::commitAndMerge(health::WriteAheadLog::Transaction&)::$_0,std::allocator<health::WriteAheadLog::Transaction::commitAndMerge(health::WriteAheadLog::Transaction&)::$_0>,void ()(long long,health::WriteAheadLog::PageEntry)>::operator()(uint64_t a1, unint64_t *a2, __n128 *a3)
{
  v4 = *(a1 + 8);
  v7[0] = *a2;
  v7[1] = v7;
  v5 = std::__tree<std::__value_type<unsigned long long,health::WriteAheadLog::PageEntry>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,health::WriteAheadLog::PageEntry>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,health::WriteAheadLog::PageEntry>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(v4 + 32, v7[0]);
  result = *a3;
  v5[7] = a3[1].n128_u64[0];
  *(v5 + 5) = result;
  return result;
}

uint64_t std::__function::__func<health::WriteAheadLog::Transaction::commitAndMerge(health::WriteAheadLog::Transaction&)::$_0,std::allocator<health::WriteAheadLog::Transaction::commitAndMerge(health::WriteAheadLog::Transaction&)::$_0>,void ()(long long,health::WriteAheadLog::PageEntry)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void health::FormatImplementation<std::string,unsigned long long &>(std::string *a1, std::string *a2, std::string::size_type a3, uint64_t a4)
{
  v31 = a1;
  v6 = a1->__r_.__value_.__s.__data_[0];
  if (!a1->__r_.__value_.__s.__data_[0])
  {

    std::string::resize(a2, a3, 0);
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = a1;
  while (v6 != 123)
  {
LABEL_6:
    v31 = &v11->__r_.__value_.__s.__data_[1];
    v6 = v11->__r_.__value_.__s.__data_[1];
    --v9;
    v11 = (v11 + 1);
    if (!v6)
    {
      std::string::resize(a2, a3 - v9, 0);
      if (v9)
      {

        health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
      }

      return;
    }
  }

  v12 = v11->__r_.__value_.__s.__data_[1];
  if (v12 == 123)
  {
    v10 = 1;
    v11 = (v11 + 1);
    goto LABEL_6;
  }

  if (v12 == 42)
  {
    v31 = &v11->__r_.__value_.__s.__data_[2];
    v21 = v11->__r_.__value_.__s.__data_[2];
    if ((v21 - 48) > 9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format string- missing numeric value.");
    }

    else
    {
      v22 = 0;
      v23 = &v11->__r_.__value_.__s.__data_[3];
      do
      {
        v31 = v23;
        v22 = (v21 & 0xF) + 10 * v22;
        v24 = *v23++;
        LOBYTE(v21) = v24;
      }

      while ((v24 - 58) >= 0xFFFFFFF6);
      v31 = v23;
      if (*(v23 - 1) == 125)
      {
        health::FormatterParameters<0ul,std::string,unsigned long long &>::formatOptionsAtIndex<std::string,unsigned long long &>(v22);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Invalid format options reference: Must be of form {*<index>} but no trailing '}' found.");
    }

    goto LABEL_48;
  }

  health::FormatOptions::FormatOptions(&v26, &v31);
  v13 = v31;
  if (v27)
  {
    if (v27 == 1)
    {
      health::TypeFormatter<unsigned long long &,void>::TypeFormatter(&__p, *a4, &v26);
      v14 = HIBYTE(v33);
      if (v33 < 0)
      {
        v14 = v33;
      }

      v15 = *(&v28 + 1);
      if (*(&v28 + 1) <= v14)
      {
        v15 = v14;
      }

      if (v28)
      {
        v14 = v15;
      }

      health::FormatImplementation<std::string,unsigned long long &>(v13, a2, v14 + a3 - v9, a4);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = a2->__r_.__value_.__r.__words[0];
      }

      health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,unsigned long long &>(&v26, &v16[a3 - v9], &__p);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p);
      }

      goto LABEL_38;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
LABEL_48:
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v17 = *(a4 + 8);
  __p = v17;
  v36 = v30;
  v35 = v29;
  v34 = v28;
  v33 = v26;
  v18 = *(v17 + 23);
  if ((v18 & 0x8000000000000000) != 0)
  {
    v18 = *(v17 + 8);
  }

  v19 = *(&v28 + 1);
  if (*(&v28 + 1) <= v18)
  {
    v19 = v18;
  }

  if (v28)
  {
    v18 = v19;
  }

  health::FormatImplementation<std::string,unsigned long long &>(v31, a2, v18 + a3 - v9, a4);
  if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = a2;
  }

  else
  {
    v20 = a2->__r_.__value_.__r.__words[0];
  }

  health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,std::string>(&v26, &v20[a3 - v9], &__p);
LABEL_38:
  if (v9)
  {
    health::CopyFormatSectionToResult(a1, a2, a3, -v9, v10 & 1);
  }
}

void health::FormatterParameters<0ul,std::string,unsigned long long &>::formatOptionsAtIndex<std::string,unsigned long long &>(uint64_t a1)
{
  if (a1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    v1 = exception;
    if (a1 == 1)
    {
      std::runtime_error::runtime_error(exception, "Requested parameter is not an FormatOptions instance.");
    }

    else
    {
      std::runtime_error::runtime_error(exception, "Parameter index out of bounds.");
    }
  }

  else
  {
    v1 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v1, "Requested parameter is not an FormatOptions instance.");
  }

  __cxa_throw(v1, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

unsigned __int8 *health::FormatOptions::justifyNativeValueOfLength<std::__wrap_iter<char *>,std::string>(unsigned __int8 *result, char *__b, uint64_t a3)
{
  v5 = result;
  v6 = *a3;
  v7 = *(*a3 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v8 = v6[1];
  }

  else
  {
    v8 = v7;
  }

  if (result[16] != 1 || (v9 = *(result + 3), v10 = v9 - v8, v9 <= v8))
  {
    if ((v7 & 0x80000000) != 0)
    {
      v13 = v6;
      v6 = *v6;
      v7 = v13[1];
      if (!v7)
      {
        return result;
      }
    }

    else if (!v7)
    {
      return result;
    }

    v12 = __b;
    goto LABEL_16;
  }

  v11 = *result;
  if (!*result)
  {
    if ((v7 & 0x80000000) != 0)
    {
      v15 = v6;
      v6 = *v6;
      v7 = v15[1];
    }

    if (v7)
    {
      memmove(__b, v6, v7);
    }

    v16 = v5[52];
    v17 = &__b[v8];
    v18 = v10;
    goto LABEL_40;
  }

  if (v11 == 1)
  {
    if (v10 >= 2)
    {
      if (v10 >> 1 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v10 >> 1;
      }

      memset(__b, result[52], v14);
      __b += v14;
      v6 = *a3;
      LOBYTE(v7) = *(*a3 + 23);
    }

    if ((v7 & 0x80) != 0)
    {
      v19 = v6;
      v6 = *v6;
      v7 = v19[1];
    }

    else
    {
      v7 = v7;
    }

    v20 = v10 - (v10 >> 1);
    if (v7)
    {
      memmove(__b, v6, v7);
    }

    if (v20 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v20;
    }

    v16 = v5[52];
    v17 = &__b[v8];
LABEL_40:

    return memset(v17, v16, v18);
  }

  if (v11 == 2)
  {
    result = memset(__b, result[52], v10);
    v6 = *a3;
    v7 = *(*a3 + 23);
    if ((v7 & 0x8000000000000000) != 0)
    {
      v6 = *v6;
      v7 = *(*a3 + 8);
    }

    if (v7)
    {
      v12 = &__b[v10];
LABEL_16:

      return memmove(v12, v6, v7);
    }
  }

  return result;
}

void sub_228B6D038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCloudSyncCodableProfileIdentifierReadFrom(uint64_t a1, void *a2)
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
        v13 = PBReaderReadData();
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

void sub_228B6E048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va1, a12);
  va_start(va, a12);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_228B6E568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__54(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableScoredAssessmentReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v33[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v33[0] & 0x7F) << v5;
        if ((v33[0] & 0x80) == 0)
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
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 40) |= 2u;
          while (1)
          {
            LOBYTE(v33[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v33[0] & 0x7F) << v14;
            if ((v33[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_49;
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

LABEL_49:
          v30 = 16;
LABEL_54:
          *(a1 + v30) = v20;
          goto LABEL_55;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_55;
      }

      v27 = objc_alloc_init(HDCodableSample);
      objc_storeStrong((a1 + 32), v27);
      v33[0] = 0;
      v33[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v27, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_55:
      v31 = [a2 position];
      if (v31 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v28 = PBReaderReadData();
      v29 = *(a1 + 24);
      *(a1 + 24) = v28;

      goto LABEL_55;
    }

    if (v13 == 4)
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        LOBYTE(v33[0]) = 0;
        v24 = [a2 position] + 1;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
        {
          v26 = [a2 data];
          [v26 getBytes:v33 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v23 |= (v33[0] & 0x7F) << v21;
        if ((v33[0] & 0x80) == 0)
        {
          break;
        }

        v21 += 7;
        v11 = v22++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_53;
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

LABEL_53:
      v30 = 8;
      goto LABEL_54;
    }

    goto LABEL_40;
  }

  return [a2 hasError] ^ 1;
}

uint64_t SleepLibraryCore()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!SleepLibraryCore_frameworkLibrary)
  {
    SleepLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  result = SleepLibraryCore_frameworkLibrary;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t getgetSleepFeatureAvailabilityProvidingSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getgetSleepFeatureAvailabilityProvidingSymbolLoc_ptr;
  v6 = getgetSleepFeatureAvailabilityProvidingSymbolLoc_ptr;
  if (!getgetSleepFeatureAvailabilityProvidingSymbolLoc_ptr)
  {
    v2[0] = MEMORY[0x277D85DD0];
    v2[1] = 3221225472;
    v2[2] = __getgetSleepFeatureAvailabilityProvidingSymbolLoc_block_invoke;
    v2[3] = &unk_278616E90;
    v2[4] = &v3;
    __getgetSleepFeatureAvailabilityProvidingSymbolLoc_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_228B6FBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SleepLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  SleepLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void *__getgetSleepFeatureAvailabilityProvidingSymbolLoc_block_invoke(void *a1)
{
  v2 = SleepLibraryCore();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    a1 = [MEMORY[0x277CCA890] currentHandler];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *SleepLibrary(void)"];
    [a1 handleFailureInFunction:v3 file:@"HDProfile+HKFeatureAvailabilityHealthDataSource.m" lineNumber:26 description:{@"%s", 0}];

    __break(1u);
    free(v5);
  }

  result = dlsym(v3, "getSleepFeatureAvailabilityProviding");
  *(*(a1[4] + 8) + 24) = result;
  getgetSleepFeatureAvailabilityProvidingSymbolLoc_ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t HDCloudSyncCodableSharedSummaryAuthorizationRecordReadFrom(void *a1, void *a2)
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
        v13 = PBReaderReadString();
        v14 = a1[2];
        a1[2] = v13;
LABEL_22:

        goto LABEL_24;
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

    v14 = PBReaderReadString();
    if (v14)
    {
      [a1 addAuthorizationCategories:v14];
    }

    goto LABEL_22;
  }

  return [a2 hasError] ^ 1;
}

void sub_228B708F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228B70AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228B70E84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableWorkoutSessionConfigurationReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v17[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17[0] & 0x7F) << v5;
        if ((v17[0] & 0x80) == 0)
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
        v13 = objc_alloc_init(HDCodableWorkoutConfiguration);
        objc_storeStrong((a1 + 16), v13);
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableWorkoutConfigurationReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v14 = PBReaderReadString();
    v13 = *(a1 + 8);
    *(a1 + 8) = v14;
LABEL_23:

    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

void sub_228B72C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose((v26 - 240), 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *HDBKSApplicationStateString(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_27861B230[a1];
  }
}

uint64_t HDCodableOriginalSignedClinicalDataRecordReadFrom(uint64_t a1, void *a2)
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
    if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
    {
      return [a2 hasError] ^ 1;
    }

    switch((v12 >> 3))
    {
      case 1u:
        v13 = objc_alloc_init(HDCodableMessageVersion);
        objc_storeStrong((a1 + 72), v13);
        v51 = 0;
        v52 = 0;
        if (PBReaderPlaceMark() && HDCodableMessageVersionReadFrom(v13, a2))
        {
          goto LABEL_62;
        }

        goto LABEL_97;
      case 2u:
        v23 = PBReaderReadData();
        v24 = 112;
        goto LABEL_66;
      case 3u:
        v23 = PBReaderReadString();
        v24 = 56;
        goto LABEL_66;
      case 4u:
        v23 = PBReaderReadString();
        v24 = 64;
        goto LABEL_66;
      case 5u:
        v23 = PBReaderReadString();
        v24 = 104;
        goto LABEL_66;
      case 6u:
        v23 = PBReaderReadData();
        v24 = 88;
        goto LABEL_66;
      case 7u:
        v13 = PBReaderReadString();
        if (v13)
        {
          [a1 addType:v13];
        }

        goto LABEL_63;
      case 8u:
        v13 = objc_alloc_init(HDCodableMetadataDictionary);
        objc_storeStrong((a1 + 80), v13);
        v51 = 0;
        v52 = 0;
        if (!PBReaderPlaceMark() || !HDCodableMetadataDictionaryReadFrom(v13, a2))
        {
          goto LABEL_97;
        }

        goto LABEL_62;
      case 9u:
        *(a1 + 148) |= 4u;
        v51 = 0;
        v41 = [a2 position] + 8;
        if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 8, v42 <= objc_msgSend(a2, "length")))
        {
          v48 = [a2 data];
          [v48 getBytes:&v51 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v45 = v51;
        v46 = 24;
        goto LABEL_94;
      case 0xAu:
        v23 = PBReaderReadString();
        v24 = 96;
        goto LABEL_66;
      case 0xBu:
        *(a1 + 148) |= 1u;
        v51 = 0;
        v39 = [a2 position] + 8;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 8, v40 <= objc_msgSend(a2, "length")))
        {
          v47 = [a2 data];
          [v47 getBytes:&v51 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v45 = v51;
        v46 = 8;
        goto LABEL_94;
      case 0xCu:
        v23 = PBReaderReadString();
        v24 = 48;
        goto LABEL_66;
      case 0xDu:
        v25 = 0;
        v26 = 0;
        v27 = 0;
        *(a1 + 148) |= 8u;
        while (1)
        {
          LOBYTE(v51) = 0;
          v28 = [a2 position] + 1;
          if (v28 >= [a2 position] && (v29 = objc_msgSend(a2, "position") + 1, v29 <= objc_msgSend(a2, "length")))
          {
            v30 = [a2 data];
            [v30 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v27 |= (v51 & 0x7F) << v25;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v25 += 7;
          v11 = v26++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_84;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v27;
        }

LABEL_84:
        v43 = 32;
        goto LABEL_85;
      case 0xEu:
        v23 = PBReaderReadData();
        v24 = 136;
LABEL_66:
        v38 = *(a1 + v24);
        *(a1 + v24) = v23;

        goto LABEL_95;
      case 0xFu:
        *(a1 + 148) |= 2u;
        v51 = 0;
        v21 = [a2 position] + 8;
        if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 8, v22 <= objc_msgSend(a2, "length")))
        {
          v44 = [a2 data];
          [v44 getBytes:&v51 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v45 = v51;
        v46 = 16;
LABEL_94:
        *(a1 + v46) = v45;
        goto LABEL_95;
      case 0x10u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 148) |= 0x20u;
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
            goto LABEL_87;
          }
        }

        v37 = (v33 != 0) & ~[a2 hasError];
LABEL_87:
        *(a1 + 144) = v37;
        goto LABEL_95;
      case 0x11u:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 148) |= 0x10u;
        while (1)
        {
          LOBYTE(v51) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:&v51 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v51 & 0x7F) << v14;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_80;
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

LABEL_80:
        v43 = 40;
LABEL_85:
        *(a1 + v43) = v20;
        goto LABEL_95;
      case 0x12u:
        v13 = objc_alloc_init(HDCodableSyncIdentity);
        objc_storeStrong((a1 + 120), v13);
        v51 = 0;
        v52 = 0;
        if (PBReaderPlaceMark() && HDCodableSyncIdentityReadFrom(v13, a2))
        {
LABEL_62:
          PBReaderRecallMark();
LABEL_63:

LABEL_95:
          v49 = [a2 position];
          if (v49 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_97:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_95;
    }
  }
}