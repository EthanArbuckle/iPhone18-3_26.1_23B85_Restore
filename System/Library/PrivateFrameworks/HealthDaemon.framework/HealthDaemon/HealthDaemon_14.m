uint64_t HDCodableQuantityReadFrom(uint64_t a1, void *a2)
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
        v15 = PBReaderReadString();
        v16 = *(a1 + 16);
        *(a1 + 16) = v15;
      }

      else if ((v12 >> 3) == 1)
      {
        *(a1 + 24) |= 1u;
        v20 = 0;
        v13 = [a2 position] + 8;
        if (v13 >= [a2 position] && (v14 = objc_msgSend(a2, "position") + 8, v14 <= objc_msgSend(a2, "length")))
        {
          v18 = [a2 data];
          [v18 getBytes:&v20 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v20;
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

uint64_t __Block_byref_object_copy__133(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228DDABD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCloudSyncCodableChangeReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v44[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v44[0] & 0x7F) << v5;
        if ((v44[0] & 0x80) == 0)
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
      if ((v12 >> 3) > 9)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 == 2)
        {
          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 44) |= 4u;
          while (1)
          {
            LOBYTE(v44[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v44[0] & 0x7F) << v21;
            if ((v44[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_77;
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

LABEL_77:
          v41 = 24;
          goto LABEL_78;
        }

LABEL_62:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_79;
      }

      v40 = objc_alloc_init(HDCodableSyncAnchorRangeMap);
      objc_storeStrong((a1 + 32), v40);
      v44[0] = 0;
      v44[1] = 0;
      if (!PBReaderPlaceMark() || ![(HDCodableSyncAnchorRangeMap *)v40 readFrom:a2])
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_79:
      v42 = [a2 position];
      if (v42 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 0xA:
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 44) |= 2u;
        while (1)
        {
          LOBYTE(v44[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v44[0] & 0x7F) << v28;
          if ((v44[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_67;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v30;
        }

LABEL_67:
        v41 = 16;
        goto LABEL_78;
      case 0xB:
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 44) |= 1u;
        while (1)
        {
          LOBYTE(v44[0]) = 0;
          v37 = [a2 position] + 1;
          if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 1, v38 <= objc_msgSend(a2, "length")))
          {
            v39 = [a2 data];
            [v39 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v36 |= (v44[0] & 0x7F) << v34;
          if ((v44[0] & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v11 = v35++ >= 9;
          if (v11)
          {
            v27 = 0;
            goto LABEL_71;
          }
        }

        if ([a2 hasError])
        {
          v27 = 0;
        }

        else
        {
          v27 = v36;
        }

LABEL_71:
        v41 = 8;
LABEL_78:
        *(a1 + v41) = v27;
        goto LABEL_79;
      case 0x14:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 44) |= 8u;
        while (1)
        {
          LOBYTE(v44[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v44 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v44[0] & 0x7F) << v14;
          if ((v44[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_73;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_73:
        *(a1 + 40) = v20;
        goto LABEL_79;
    }

    goto LABEL_62;
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableSharingRelationshipReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v29) = 0;
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
            v16 = PBReaderReadString();
            if (v16)
            {
              [a1 addAuthorizationIdentifiers:v16];
            }

            goto LABEL_47;
          case 5:
            v16 = objc_alloc_init(HDCodableSharingAuthorization);
            [a1 addSharingAuthorizations:v16];
            v29 = 0;
            v30 = 0;
            if (!PBReaderPlaceMark() || !HDCodableSharingAuthorizationReadFrom(v16, a2))
            {
LABEL_56:

              return 0;
            }

LABEL_46:
            PBReaderRecallMark();
LABEL_47:

            goto LABEL_54;
          case 6:
            v16 = objc_alloc_init(HDCodableSyncIdentity);
            objc_storeStrong((a1 + 48), v16);
            v29 = 0;
            v30 = 0;
            if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v16, a2))
            {
              goto LABEL_56;
            }

            goto LABEL_46;
        }
      }

      else
      {
        switch(v13)
        {
          case 1:
            v17 = PBReaderReadString();
            v18 = *(a1 + 24);
            *(a1 + 24) = v17;

            goto LABEL_54;
          case 2:
            v19 = 0;
            v20 = 0;
            v21 = 0;
            *(a1 + 56) |= 2u;
            while (1)
            {
              LOBYTE(v29) = 0;
              v22 = [a2 position] + 1;
              if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 1, v23 <= objc_msgSend(a2, "length")))
              {
                v24 = [a2 data];
                [v24 getBytes:&v29 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v21 |= (v29 & 0x7F) << v19;
              if ((v29 & 0x80) == 0)
              {
                break;
              }

              v19 += 7;
              v11 = v20++ >= 9;
              if (v11)
              {
                v25 = 0;
                goto LABEL_51;
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

LABEL_51:
            *(a1 + 32) = v25;
            goto LABEL_54;
          case 3:
            *(a1 + 56) |= 1u;
            v29 = 0;
            v14 = [a2 position] + 8;
            if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v29 range:{objc_msgSend(a2, "position"), 8}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
            }

            else
            {
              [a2 _setError];
            }

            *(a1 + 8) = v29;
            goto LABEL_54;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_54:
      v27 = [a2 position];
    }

    while (v27 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t HDCodableObjectAuthorizationReadFrom(void *a1, void *a2)
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
        v13 = PBReaderReadData();
        v14 = a1[2];
        a1[2] = v13;
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

    v14 = objc_alloc_init(HDCodableObjectSourceAuthorization);
    [a1 addAuthorizations:v14];
    v17[0] = 0;
    v17[1] = 0;
    if (!PBReaderPlaceMark() || !HDCodableObjectSourceAuthorizationReadFrom(v14, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void sub_228DE51A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__134(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228DE573C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDMedicalUserDomainConceptEntityPredicateForCategoryType(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  return [MEMORY[0x277D10B18] predicateWithProperty:@"medical_user_domain_concept_category_types.category_type" value:a1 comparisonType:v2];
}

id HDMedicalUserDomainConceptEntityPredicateForMedicalRecordWithUUID(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  v3 = MEMORY[0x277D10B18];
  v4 = _HDSQLiteValueForUUID();
  v5 = [v3 predicateWithProperty:@"objects.uuid" value:v4 comparisonType:v2];

  return v5;
}

void sub_228DE6E24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__135(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__136(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228DEA0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228DEA3F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableWorkoutReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v53) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v53 & 0x7F) << v5;
      if ((v53 & 0x80) == 0)
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
        v13 = objc_alloc_init(HDCodableSample);
        objc_storeStrong((a1 + 96), v13);
        v53 = 0;
        v54 = 0;
        if (PBReaderPlaceMark() && HDCodableSampleReadFrom(v13, a2))
        {
          goto LABEL_55;
        }

        goto LABEL_99;
      case 2u:
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 120) |= 0x100u;
        while (1)
        {
          LOBYTE(v53) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v53 & 0x7F) << v22;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_76;
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

LABEL_76:
        v41 = 72;
        goto LABEL_81;
      case 3u:
        v13 = objc_alloc_init(HDCodableWorkoutEvent);
        [a1 addEvents:v13];
        v53 = 0;
        v54 = 0;
        if (!PBReaderPlaceMark() || !HDCodableWorkoutEventReadFrom(v13, a2))
        {
          goto LABEL_99;
        }

        goto LABEL_55;
      case 4u:
        *(a1 + 120) |= 1u;
        v53 = 0;
        v18 = [a2 position] + 8;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 8, v19 <= objc_msgSend(a2, "length")))
        {
          v46 = [a2 data];
          [v46 getBytes:&v53 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v43 = v53;
        v44 = 8;
        goto LABEL_96;
      case 5u:
        *(a1 + 120) |= 0x20u;
        v53 = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
        {
          v42 = [a2 data];
          [v42 getBytes:&v53 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v43 = v53;
        v44 = 48;
        goto LABEL_96;
      case 6u:
        *(a1 + 120) |= 0x10u;
        v53 = 0;
        v29 = [a2 position] + 8;
        if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
        {
          v48 = [a2 data];
          [v48 getBytes:&v53 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v43 = v53;
        v44 = 40;
        goto LABEL_96;
      case 7u:
        v31 = 0;
        v32 = 0;
        v33 = 0;
        *(a1 + 120) |= 4u;
        while (1)
        {
          LOBYTE(v53) = 0;
          v34 = [a2 position] + 1;
          if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
          {
            v36 = [a2 data];
            [v36 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v33 |= (v53 & 0x7F) << v31;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v31 += 7;
          v11 = v32++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_80;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v33;
        }

LABEL_80:
        v41 = 24;
LABEL_81:
        *(a1 + v41) = v28;
        goto LABEL_97;
      case 8u:
        *(a1 + 120) |= 2u;
        v53 = 0;
        v20 = [a2 position] + 8;
        if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 8, v21 <= objc_msgSend(a2, "length")))
        {
          v47 = [a2 data];
          [v47 getBytes:&v53 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v43 = v53;
        v44 = 16;
        goto LABEL_96;
      case 9u:
        *(a1 + 120) |= 8u;
        v53 = 0;
        v39 = [a2 position] + 8;
        if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 8, v40 <= objc_msgSend(a2, "length")))
        {
          v50 = [a2 data];
          [v50 getBytes:&v53 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v43 = v53;
        v44 = 32;
        goto LABEL_96;
      case 0xAu:
        *(a1 + 120) |= 0x80u;
        v53 = 0;
        v16 = [a2 position] + 8;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 8, v17 <= objc_msgSend(a2, "length")))
        {
          v45 = [a2 data];
          [v45 getBytes:&v53 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v43 = v53;
        v44 = 64;
        goto LABEL_96;
      case 0xBu:
        *(a1 + 120) |= 0x40u;
        v53 = 0;
        v37 = [a2 position] + 8;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
        {
          v49 = [a2 data];
          [v49 getBytes:&v53 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v43 = v53;
        v44 = 56;
LABEL_96:
        *(a1 + v44) = v43;
        goto LABEL_97;
      case 0xCu:
        v13 = objc_alloc_init(HDCodableWorkoutActivity);
        objc_storeStrong((a1 + 88), v13);
        goto LABEL_26;
      case 0xDu:
        v13 = objc_alloc_init(HDCodableWorkoutActivity);
        [a1 addSubActivities:v13];
LABEL_26:
        v53 = 0;
        v54 = 0;
        if (!PBReaderPlaceMark() || !HDCodableWorkoutActivityReadFrom(v13, a2))
        {
          goto LABEL_99;
        }

        goto LABEL_55;
      case 0xEu:
        v13 = objc_alloc_init(HDCodableWorkoutZone);
        [a1 addZones:v13];
        v53 = 0;
        v54 = 0;
        if (PBReaderPlaceMark() && HDCodableWorkoutZoneReadFrom(v13, a2))
        {
LABEL_55:
          PBReaderRecallMark();

LABEL_97:
          v51 = [a2 position];
          if (v51 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_99:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_97;
    }
  }
}

void sub_228DF083C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__137(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

HDKeyValueDomain *HDTinkerKeyValueDomainWithProfile(void *a1)
{
  v1 = a1;
  v2 = [[HDKeyValueDomain alloc] initWithCategory:0 domainName:@"Tinker" profile:v1];

  return v2;
}

HDKeyValueDomain *HDTinkerProtectedKeyValueDomainWithProfile(void *a1)
{
  v1 = a1;
  v2 = [[HDKeyValueDomain alloc] initWithCategory:100 domainName:@"Tinker" profile:v1];

  return v2;
}

HDKeyValueDomain *HDTinkerSyncedProtectedKeyValueDomainWithProfile(void *a1)
{
  v1 = a1;
  v2 = [[HDKeyValueDomain alloc] initWithCategory:102 domainName:@"Tinker" profile:v1];

  return v2;
}

uint64_t HDCodableClinicalAccountReadFrom(uint64_t a1, void *a2)
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
      LOBYTE(v69) = 0;
      v8 = [a2 position] + 1;
      if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
      {
        v10 = [a2 data];
        [v10 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v7 |= (v69 & 0x7F) << v5;
      if ((v69 & 0x80) == 0)
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
        v13 = PBReaderReadString();
        v14 = 112;
        goto LABEL_78;
      case 3u:
        v29 = 0;
        v30 = 0;
        v31 = 0;
        *(a1 + 164) |= 0x400u;
        while (1)
        {
          LOBYTE(v69) = 0;
          v32 = [a2 position] + 1;
          if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
          {
            v34 = [a2 data];
            [v34 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v31 |= (v69 & 0x7F) << v29;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v29 += 7;
          v11 = v30++ >= 9;
          if (v11)
          {
            LOBYTE(v35) = 0;
            goto LABEL_96;
          }
        }

        v35 = (v31 != 0) & ~[a2 hasError];
LABEL_96:
        *(a1 + 160) = v35;
        goto LABEL_121;
      case 5u:
        *(a1 + 164) |= 0x10u;
        v69 = 0;
        v25 = [a2 position] + 8;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 8, v26 <= objc_msgSend(a2, "length")))
        {
          v61 = [a2 data];
          [v61 getBytes:&v69 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v59 = v69;
        v60 = 40;
        goto LABEL_120;
      case 6u:
        *(a1 + 164) |= 0x200u;
        v69 = 0;
        v44 = [a2 position] + 8;
        if (v44 >= [a2 position] && (v45 = objc_msgSend(a2, "position") + 8, v45 <= objc_msgSend(a2, "length")))
        {
          v64 = [a2 data];
          [v64 getBytes:&v69 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v59 = v69;
        v60 = 80;
        goto LABEL_120;
      case 7u:
        *(a1 + 164) |= 0x80u;
        v69 = 0;
        v46 = [a2 position] + 8;
        if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 8, v47 <= objc_msgSend(a2, "length")))
        {
          v65 = [a2 data];
          [v65 getBytes:&v69 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v59 = v69;
        v60 = 64;
        goto LABEL_120;
      case 8u:
        v13 = PBReaderReadData();
        v14 = 144;
        goto LABEL_78;
      case 9u:
        *(a1 + 164) |= 0x100u;
        v69 = 0;
        v36 = [a2 position] + 8;
        if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 8, v37 <= objc_msgSend(a2, "length")))
        {
          v63 = [a2 data];
          [v63 getBytes:&v69 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v59 = v69;
        v60 = 72;
        goto LABEL_120;
      case 0xAu:
        v13 = PBReaderReadString();
        v14 = 88;
        goto LABEL_78;
      case 0xBu:
        v13 = PBReaderReadString();
        v14 = 128;
        goto LABEL_78;
      case 0xCu:
        v24 = objc_alloc_init(HDCodableMessageVersion);
        objc_storeStrong((a1 + 120), v24);
        v69 = 0;
        v70 = 0;
        if (PBReaderPlaceMark() && HDCodableMessageVersionReadFrom(v24, a2))
        {
          goto LABEL_76;
        }

        goto LABEL_123;
      case 0xDu:
        v13 = PBReaderReadString();
        v14 = 136;
        goto LABEL_78;
      case 0xEu:
        *(a1 + 164) |= 1u;
        v69 = 0;
        v27 = [a2 position] + 8;
        if (v27 >= [a2 position] && (v28 = objc_msgSend(a2, "position") + 8, v28 <= objc_msgSend(a2, "length")))
        {
          v62 = [a2 data];
          [v62 getBytes:&v69 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v59 = v69;
        v60 = 8;
        goto LABEL_120;
      case 0xFu:
        *(a1 + 164) |= 2u;
        v69 = 0;
        v22 = [a2 position] + 8;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
        {
          v58 = [a2 data];
          [v58 getBytes:&v69 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v59 = v69;
        v60 = 16;
        goto LABEL_120;
      case 0x11u:
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 164) |= 8u;
        while (1)
        {
          LOBYTE(v69) = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v69 & 0x7F) << v15;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_94;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

LABEL_94:
        v57 = 32;
        goto LABEL_105;
      case 0x12u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 164) |= 4u;
        while (1)
        {
          LOBYTE(v69) = 0;
          v41 = [a2 position] + 1;
          if (v41 >= [a2 position] && (v42 = objc_msgSend(a2, "position") + 1, v42 <= objc_msgSend(a2, "length")))
          {
            v43 = [a2 data];
            [v43 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v40 |= (v69 & 0x7F) << v38;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v11 = v39++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_100;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v40;
        }

LABEL_100:
        v57 = 24;
        goto LABEL_105;
      case 0x13u:
        v13 = PBReaderReadString();
        v14 = 96;
        goto LABEL_78;
      case 0x14u:
        *(a1 + 164) |= 0x40u;
        v69 = 0;
        v55 = [a2 position] + 8;
        if (v55 >= [a2 position] && (v56 = objc_msgSend(a2, "position") + 8, v56 <= objc_msgSend(a2, "length")))
        {
          v66 = [a2 data];
          [v66 getBytes:&v69 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v59 = v69;
        v60 = 56;
LABEL_120:
        *(a1 + v60) = v59;
        goto LABEL_121;
      case 0x15u:
        v49 = 0;
        v50 = 0;
        v51 = 0;
        *(a1 + 164) |= 0x20u;
        while (1)
        {
          LOBYTE(v69) = 0;
          v52 = [a2 position] + 1;
          if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
          {
            v54 = [a2 data];
            [v54 getBytes:&v69 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v51 |= (v69 & 0x7F) << v49;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v49 += 7;
          v11 = v50++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_104;
          }
        }

        if ([a2 hasError])
        {
          v21 = 0;
        }

        else
        {
          v21 = v51;
        }

LABEL_104:
        v57 = 48;
LABEL_105:
        *(a1 + v57) = v21;
        goto LABEL_121;
      case 0x16u:
        v13 = PBReaderReadData();
        v14 = 104;
LABEL_78:
        v48 = *(a1 + v14);
        *(a1 + v14) = v13;

        goto LABEL_121;
      case 0x17u:
        v24 = objc_alloc_init(HDCodableSyncIdentity);
        objc_storeStrong((a1 + 152), v24);
        v69 = 0;
        v70 = 0;
        if (PBReaderPlaceMark() && HDCodableSyncIdentityReadFrom(v24, a2))
        {
LABEL_76:
          PBReaderRecallMark();

LABEL_121:
          v67 = [a2 position];
          if (v67 >= [a2 length])
          {
            return [a2 hasError] ^ 1;
          }

          continue;
        }

LABEL_123:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_121;
    }
  }
}

void sub_228DF4A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__138(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228DF4E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 152), 8);
  _Block_object_dispose((v34 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableOntologyLocalizedEducationContentSectionReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 2)
      {
        v20 = objc_alloc_init(HDCodableSectionData);
        [a1 addSectionData:v20];
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableSectionDataReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
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
            v19 = 0;
            goto LABEL_36;
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

LABEL_36:
        *(a1 + 8) = v19;
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

void sub_228DF82E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id location)
{
  objc_destroyWeak((v10 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t HDCodableMessageVersionReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 16) |= 2u;
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
            v20 = 0;
            v21 = &OBJC_IVAR___HDCodableMessageVersion__entityVersion;
            goto LABEL_44;
          }
        }

        v21 = &OBJC_IVAR___HDCodableMessageVersion__entityVersion;
LABEL_41:
        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v15;
        }

LABEL_44:
        *(a1 + *v21) = v20;
        goto LABEL_45;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      v27 = [a2 position];
      if (v27 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v22 = 0;
    v23 = 0;
    v15 = 0;
    *(a1 + 16) |= 1u;
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
        v20 = 0;
        v21 = &OBJC_IVAR___HDCodableMessageVersion__compatibilityVersion;
        goto LABEL_44;
      }
    }

    v21 = &OBJC_IVAR___HDCodableMessageVersion__compatibilityVersion;
    goto LABEL_41;
  }

  return [a2 hasError] ^ 1;
}

id HDBuiltinSyncEntityClassForType(uint64_t a1)
{
  v3 = 0;
  v4 = a1 - 1;
  v5 = off_27860D850;
  switch(v4)
  {
    case 0:
      goto LABEL_44;
    case 1:
      v5 = off_27860DA70;
      goto LABEL_44;
    case 2:
      v5 = off_27860E700;
      goto LABEL_44;
    case 3:
      v5 = off_27860F1E8;
      goto LABEL_44;
    case 4:
      v5 = off_27860F948;
      goto LABEL_44;
    case 7:
      v5 = off_27860F690;
      goto LABEL_44;
    case 8:
      v5 = off_27860D910;
      goto LABEL_44;
    case 9:
      v5 = off_27860F648;
      goto LABEL_44;
    case 10:
      v5 = off_27860F4D0;
      goto LABEL_44;
    case 11:
      v5 = off_27860D9A8;
      goto LABEL_44;
    case 12:
      v5 = off_27860EAD0;
      goto LABEL_44;
    case 13:
      v5 = off_27860EE38;
      goto LABEL_44;
    case 14:
      v5 = off_27860EEB0;
      goto LABEL_44;
    case 15:
      v5 = off_27860F678;
      goto LABEL_44;
    case 16:
      v5 = off_27860F188;
      goto LABEL_44;
    case 17:
      v5 = off_27860EE20;
      goto LABEL_44;
    case 18:
      v5 = off_27860E968;
      goto LABEL_44;
    case 21:
      v5 = off_27860DA18;
      goto LABEL_44;
    case 22:
      v5 = off_27860F068;
      goto LABEL_44;
    case 25:
      v5 = off_27860D9F0;
      goto LABEL_44;
    case 43:
      v5 = off_27860F6A0;
      goto LABEL_44;
    case 47:
      v5 = off_27860D968;
      goto LABEL_44;
    case 48:
      v5 = off_27860EBC8;
      goto LABEL_44;
    case 49:
      v5 = off_27860EBB8;
      goto LABEL_44;
    case 50:
      v5 = off_27860EBD8;
      goto LABEL_44;
    case 51:
      v5 = off_27860F488;
      goto LABEL_44;
    case 52:
      v5 = off_27860EB20;
      goto LABEL_44;
    case 53:
      v5 = off_27860F0A8;
      goto LABEL_44;
    case 54:
      v5 = off_27860EFA0;
      goto LABEL_44;
    case 55:
      v5 = off_27860E6E0;
      goto LABEL_44;
    case 58:
      v5 = off_27860F738;
      goto LABEL_44;
    case 59:
      v5 = off_27860F660;
      goto LABEL_44;
    case 60:
      v5 = off_27860F438;
      goto LABEL_44;
    case 61:
      v5 = off_27860F798;
      goto LABEL_44;
    case 62:
      v5 = off_27860EEF0;
      goto LABEL_44;
    case 63:
      v5 = off_27860F4F8;
      goto LABEL_44;
    case 64:
      v5 = off_27860F368;
      goto LABEL_44;
    case 65:
      v5 = off_27860F998;
      goto LABEL_44;
    case 66:
      v5 = off_27860F980;
      goto LABEL_44;
    case 67:
      v5 = off_27860F670;
      goto LABEL_44;
    case 68:
      v5 = off_27860D860;
      goto LABEL_44;
    case 69:
      v5 = off_27860F0F0;
      goto LABEL_44;
    case 70:
      v5 = off_27860F630;
LABEL_44:
      v6 = *v5;
      v3 = objc_opt_class();
      break;
    default:
      break;
  }

  return v3;
}

id HDBuiltinOrderedSyncEntities()
{
  if (qword_280D67D90 != -1)
  {
    dispatch_once(&qword_280D67D90, &__block_literal_global_171);
  }

  v1 = _MergedGlobals_215;

  return v1;
}

void __HDBuiltinOrderedSyncEntities_block_invoke()
{
  v3[42] = *MEMORY[0x277D85DE8];
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
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:42];
  v1 = _MergedGlobals_215;
  _MergedGlobals_215 = v0;

  v2 = *MEMORY[0x277D85DE8];
}

id HDBuiltinStateSyncEntities()
{
  if (qword_280D67DA0 != -1)
  {
    dispatch_once(&qword_280D67DA0, &__block_literal_global_340);
  }

  v1 = qword_280D67D98;

  return v1;
}

void __HDBuiltinStateSyncEntities_block_invoke()
{
  v0 = qword_280D67D98;
  qword_280D67D98 = MEMORY[0x277CBEBF8];
}

uint64_t HDCodableObjectSourceAuthorizationReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 2)
      {
        break;
      }

      if (v13 == 3)
      {
        *(a1 + 48) |= 2u;
        v30[0] = 0;
        v22 = [a2 position] + 8;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 8, v23 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:v30 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 16) = v30[0];
        goto LABEL_49;
      }

      if (v13 == 4)
      {
        v24 = PBReaderReadData();
        v25 = 24;
LABEL_40:
        v26 = *(a1 + v25);
        *(a1 + v25) = v24;

        goto LABEL_49;
      }

      if (v13 != 5)
      {
        goto LABEL_41;
      }

      v14 = objc_alloc_init(HDCodableSyncIdentity);
      objc_storeStrong((a1 + 40), v14);
      v30[0] = 0;
      v30[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_49:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v24 = PBReaderReadData();
      v25 = 32;
      goto LABEL_40;
    }

    if (v13 == 2)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 48) |= 1u;
      while (1)
      {
        LOBYTE(v30[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v30 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v30[0] & 0x7F) << v15;
        if ((v30[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_46;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_46:
      *(a1 + 8) = v21;
      goto LABEL_49;
    }

LABEL_41:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_49;
  }

  return [a2 hasError] ^ 1;
}

void sub_228DFCEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose((v40 - 216), 8);
  _Block_object_dispose((v40 - 168), 8);
  _Block_object_dispose((v40 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__139(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228DFD8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v34 - 168), 8);
  _Block_object_dispose((v34 - 120), 8);
  _Unwind_Resume(a1);
}

id HDPredicateForZoneIDAndRecordName(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B18];
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithLongLong:a1];
  v7 = [v3 predicateWithProperty:@"zone_id" equalToValue:v6];

  v8 = MEMORY[0x277D10B18];
  v9 = _HDSQLiteValueForString();

  v10 = [v8 predicateWithProperty:@"record_name" equalToValue:v9];

  v11 = MEMORY[0x277D10B20];
  v16[0] = v7;
  v16[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v13 = [v11 predicateMatchingAllPredicates:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

id HDPredicateForRecordsSinceEpoch(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v3 = [v1 predicateWithProperty:@"epoch" greaterThanValue:v2];

  return v3;
}

id HDPredicateForZoneIDAndRecordType(uint64_t a1, void *a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D10B18];
  v4 = MEMORY[0x277CCABB0];
  v5 = a2;
  v6 = [v4 numberWithLongLong:a1];
  v7 = [v3 predicateWithProperty:@"zone_id" equalToValue:v6];

  v8 = MEMORY[0x277D10B18];
  v9 = _HDSQLiteValueForString();

  v10 = [v8 predicateWithProperty:@"record_type" equalToValue:v9];

  v11 = MEMORY[0x277D10B20];
  v16[0] = v7;
  v16[1] = v10;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v13 = [v11 predicateMatchingAllPredicates:v12];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void sub_228E02B48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__140(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDPredicateForZoneID(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v3 = [v1 predicateWithProperty:@"zone_id" equalToValue:v2];

  return v3;
}

void sub_228E02EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228E03238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t HDEntityActivityModeModeForRowAndColumnName(uint64_t a1)
{
  v2 = HDSQLiteColumnWithName();
  if (MEMORY[0x22AAC6CD0](a1, v2))
  {
    return 1;
  }

  result = HDSQLiteColumnAsInt64();
  if (result <= 1)
  {
    return 1;
  }

  return result;
}

void sub_228E06664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose((v13 - 160), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__141(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void setUnderlyingDeviceKeyValue(void *a1, void *a2)
{
  v3 = a2;
  v9 = a1;
  v4 = [v3 key];
  [v9 setKey:v4];

  v5 = [v3 value];
  [v9 setValue:v5];

  v6 = [v3 domain];
  [v9 setDomain:v6];

  v7 = [v3 modificationDate];
  [v7 timeIntervalSinceReferenceDate];
  [v9 setModificationDate:?];

  v8 = [v3 protectionCategory];
  [v9 setProtectionCategory:v8];
}

void sub_228E0AE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__142(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id HDMedicalRecordEntityPredicateForFHIRIdentifier(void *a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [a1 stringValue];
  v3 = [v1 predicateWithProperty:@"fhir_identifier" equalToValue:v2];

  return v3;
}

id HDMedicalRecordEntityPredicateForModifiedDate(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = _HDSQLiteValueForDate();
  v4 = [v2 predicateWithProperty:@"modified_date" value:v3 comparisonType:a1];

  return v4;
}

id HDMedicalRecordEntityPredicateForSortDate(uint64_t a1)
{
  v2 = MEMORY[0x277D10B18];
  v3 = _HDSQLiteValueForDate();
  v4 = [v2 predicateWithProperty:@"sort_date" value:v3 comparisonType:a1];

  return v4;
}

id HDMedicalRecordEntityPredicateForState(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D10B18];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v5 = [v3 predicateWithProperty:@"state" value:v4 comparisonType:a1];

  return v5;
}

id HDMedicalRecordEntityPredicateForMedicalUserDomainConcept(void *a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [a1 UUID];
  v3 = [v1 predicateWithProperty:@"user_domain_concepts.uuid" equalToValue:v2];

  return v3;
}

id HDMedicalRecordEntityPredicateForOriginType(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1 ^ 1;
  if (a2 == 1 && ((a1 ^ 1) & 1) == 0)
  {
    v3 = MEMORY[0x277D10B60];
    v4 = @"fhir_identifier";
LABEL_4:
    v5 = [v3 isNotNullPredicateWithProperty:v4];
    goto LABEL_9;
  }

  if (a2 == 1 && (a1 & 1) == 0)
  {
    v6 = MEMORY[0x277D10B60];
    v7 = @"fhir_identifier";
LABEL_8:
    v5 = [v6 isNullPredicateWithProperty:v7];
    goto LABEL_9;
  }

  if (a2 != 3)
  {
    v2 = 1;
  }

  if ((v2 & 1) == 0)
  {
    v3 = MEMORY[0x277D10B60];
    v4 = @"original_signed_clinical_data_rowid";
    goto LABEL_4;
  }

  if (a2 == 3 && (a1 & 1) == 0)
  {
    v6 = MEMORY[0x277D10B60];
    v7 = @"original_signed_clinical_data_rowid";
    goto LABEL_8;
  }

  v5 = [MEMORY[0x277D10B70] falsePredicate];
LABEL_9:

  return v5;
}

id HDMedicalRecordEntityPredicateForSignedClinicalDataOriginIdentifier(void *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D10B50];
  v2 = a1;
  v3 = +[(HDSQLiteSchemaEntity *)HDMedicalRecordEntity];
  v4 = [v1 innerJoinClauseFromTable:v3 toTargetEntity:objc_opt_class() as:0 localReference:@"original_signed_clinical_data_rowid" targetKey:*MEMORY[0x277D10A40]];

  v5 = MEMORY[0x277D10B58];
  v6 = [MEMORY[0x277CBEB98] setWithObject:v4];
  v7 = [v5 predicateWithJoinClauses:v6];

  v8 = [MEMORY[0x277D10B18] predicateWithProperty:@"sync_identifier" equalToValue:v2];
  v9 = [v8 SQLForEntityClass:objc_opt_class()];
  v10 = MEMORY[0x277D10B90];
  v19[0] = v2;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v12 = [v10 predicateWithSQL:v9 overProperties:MEMORY[0x277CBEBF8] values:v11];

  v13 = MEMORY[0x277D10B20];
  v18[0] = v7;
  v18[1] = v12;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
  v15 = [v13 predicateMatchingAllPredicates:v14];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

void sub_228E0D46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228E105CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__143(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228E19C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228E19EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableSyncStateOriginReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v43[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v43[0] & 0x7F) << v5;
        if ((v43[0] & 0x80) == 0)
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
        break;
      }

      if (v13 <= 5)
      {
        if (v13 == 4)
        {
          v26 = 0;
          v27 = 0;
          v28 = 0;
          *(a1 + 56) |= 2u;
          while (1)
          {
            LOBYTE(v43[0]) = 0;
            v29 = [a2 position] + 1;
            if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 1, v30 <= objc_msgSend(a2, "length")))
            {
              v31 = [a2 data];
              [v31 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v28 |= (v43[0] & 0x7F) << v26;
            if ((v43[0] & 0x80) == 0)
            {
              break;
            }

            v26 += 7;
            v11 = v27++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_67;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v28;
          }

LABEL_67:
          v39 = 24;
          goto LABEL_76;
        }

        if (v13 == 5)
        {
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 56) |= 4u;
          while (1)
          {
            LOBYTE(v43[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v43[0] & 0x7F) << v14;
            if ((v43[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_75;
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

LABEL_75:
          v39 = 28;
LABEL_76:
          *(a1 + v39) = v20;
          goto LABEL_79;
        }

LABEL_42:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_79;
      }

      if (v13 == 6)
      {
        v32 = 0;
        v33 = 0;
        v34 = 0;
        *(a1 + 56) |= 8u;
        while (1)
        {
          LOBYTE(v43[0]) = 0;
          v35 = [a2 position] + 1;
          if (v35 >= [a2 position] && (v36 = objc_msgSend(a2, "position") + 1, v36 <= objc_msgSend(a2, "length")))
          {
            v37 = [a2 data];
            [v37 getBytes:v43 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v34 |= (v43[0] & 0x7F) << v32;
          if ((v43[0] & 0x80) == 0)
          {
            break;
          }

          v32 += 7;
          v11 = v33++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_71;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v34;
        }

LABEL_71:
        v39 = 32;
        goto LABEL_76;
      }

      if (v13 != 7)
      {
        goto LABEL_42;
      }

      v23 = objc_alloc_init(HDCodableSyncIdentity);
      objc_storeStrong((a1 + 48), v23);
      v43[0] = 0;
      v43[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v23, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_79:
      v41 = [a2 position];
      if (v41 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        *(a1 + 56) |= 1u;
        v43[0] = 0;
        v24 = [a2 position] + 8;
        if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 8, v25 <= objc_msgSend(a2, "length")))
        {
          v40 = [a2 data];
          [v40 getBytes:v43 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        *(a1 + 8) = v43[0];
        goto LABEL_79;
      case 2:
        v21 = PBReaderReadString();
        v22 = 16;
        goto LABEL_63;
      case 3:
        v21 = PBReaderReadString();
        v22 = 40;
LABEL_63:
        v38 = *(a1 + v22);
        *(a1 + v22) = v21;

        goto LABEL_79;
    }

    goto LABEL_42;
  }

  return [a2 hasError] ^ 1;
}

void sub_228E1CBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__144(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableRoutineScenarioTriggeredRequestReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 10)
      {
        v20 = objc_alloc_init(HDCodableRoutineLocation);
        objc_storeStrong((a1 + 16), v20);
        v23[0] = 0;
        v23[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableRoutineLocationReadFrom(v20, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 24) |= 1u;
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
            v19 = 0;
            goto LABEL_36;
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

LABEL_36:
        *(a1 + 8) = v19;
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

uint64_t HDCodableTinkerEndToEndCloudSyncResponseReadFrom(uint64_t a1, void *a2)
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
        v23 = objc_alloc_init(HDCodableError);
        objc_storeStrong((a1 + 8), v23);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableErrorReadFrom(v23, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v26[0]) = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:v26 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v26[0] & 0x7F) << v16;
          if ((v26[0] & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            LOBYTE(v22) = 0;
            goto LABEL_36;
          }
        }

        v22 = (v18 != 0) & ~[a2 hasError];
LABEL_36:
        *(a1 + 24) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
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

void sub_228E1FC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__145(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228E20044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableCorrelationReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(HDCodableSample);
        objc_storeStrong((a1 + 8), v13);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !HDCodableSampleReadFrom(v13, a2))
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

void sub_228E22B58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_228E22EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228E23920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va2, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__146(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228E249D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228E25B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__147(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228E25E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228E260F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228E26448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228E269F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228E27618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228E28364(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228E2B180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__148(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableRoutineResponseMessageReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v27) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v27 & 0x7F) << v5;
        if ((v27 & 0x80) == 0)
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
      if ((v12 >> 3) <= 9)
      {
        if (v13 == 1)
        {
          v18 = 0;
          v19 = 0;
          v20 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v27) = 0;
            v21 = [a2 position] + 1;
            if (v21 >= [a2 position] && (v22 = objc_msgSend(a2, "position") + 1, v22 <= objc_msgSend(a2, "length")))
            {
              v23 = [a2 data];
              [v23 getBytes:&v27 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v20 |= (v27 & 0x7F) << v18;
            if ((v27 & 0x80) == 0)
            {
              break;
            }

            v18 += 7;
            v11 = v19++ >= 9;
            if (v11)
            {
              v24 = 0;
              goto LABEL_46;
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

LABEL_46:
          *(a1 + 40) = v24;
          goto LABEL_47;
        }

        if (v13 == 2)
        {
          v14 = PBReaderReadString();
          v15 = 32;
          goto LABEL_25;
        }
      }

      else
      {
        switch(v13)
        {
          case 0xA:
            v17 = objc_alloc_init(HDCodableRoutineLocationResponse);
            objc_storeStrong((a1 + 16), v17);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !HDCodableRoutineLocationResponseReadFrom(v17, a2))
            {
LABEL_49:

              return 0;
            }

            goto LABEL_31;
          case 0xB:
            v17 = objc_alloc_init(HDCodableRoutinePredictedLocationsResponse);
            objc_storeStrong((a1 + 24), v17);
            v27 = 0;
            v28 = 0;
            if (!PBReaderPlaceMark() || !HDCodableRoutinePredictedLocationsResponseReadFrom(v17, a2))
            {
              goto LABEL_49;
            }

LABEL_31:
            PBReaderRecallMark();

            goto LABEL_47;
          case 0x64:
            v14 = PBReaderReadString();
            v15 = 8;
LABEL_25:
            v16 = *(a1 + v15);
            *(a1 + v15) = v14;

            goto LABEL_47;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_47:
      v25 = [a2 position];
    }

    while (v25 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__149(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228E30CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, id a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, id a52)
{
  objc_destroyWeak(&a33);
  _Block_object_dispose(&a34, 8);
  objc_destroyWeak(&a44);
  objc_destroyWeak(&a52);
  _Block_object_dispose((v52 - 240), 8);
  objc_destroyWeak((v52 - 208));
  _Block_object_dispose((v52 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_228E312AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228E313DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_228E32FE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, id a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  _Block_object_dispose(&a31, 8);
  objc_destroyWeak(&a45);
  objc_destroyWeak(&a55);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a61, 8);
  objc_destroyWeak((v61 - 240));
  _Block_object_dispose((v61 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__150(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228E35ED0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_228E38198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_228E3880C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Unwind_Resume(a1);
}

uint64_t IDSPriorityFromHDIDSPriority(unint64_t a1)
{
  if (a1 > 2)
  {
    return 200;
  }

  else
  {
    return qword_22916E538[a1];
  }
}

__CFString *HDStringFromHDIDSPriority(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown Priority (%ld)", a1];
  }

  else
  {
    v2 = off_278627B30[a1];
  }

  return v2;
}

uint64_t HDCodableSignedClinicalDataIssuerReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v19) = 0;
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
      if ((v12 >> 3) > 4)
      {
        switch(v13)
        {
          case 5:
            v14 = PBReaderReadString();
            v15 = 48;
            goto LABEL_33;
          case 6:
            v16 = objc_alloc_init(HDCodableMessageVersion);
            objc_storeStrong((a1 + 16), v16);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !HDCodableMessageVersionReadFrom(v16, a2))
            {
LABEL_40:

              return 0;
            }

LABEL_36:
            PBReaderRecallMark();
LABEL_37:

            goto LABEL_38;
          case 7:
            v16 = objc_alloc_init(HDCodableSyncIdentity);
            objc_storeStrong((a1 + 32), v16);
            v19 = 0;
            v20 = 0;
            if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v16, a2))
            {
              goto LABEL_40;
            }

            goto LABEL_36;
        }
      }

      else
      {
        switch(v13)
        {
          case 2:
            v14 = PBReaderReadString();
            v15 = 40;
            goto LABEL_33;
          case 3:
            v14 = PBReaderReadString();
            v15 = 24;
            goto LABEL_33;
          case 4:
            v14 = PBReaderReadString();
            v15 = 8;
LABEL_33:
            v16 = *(a1 + v15);
            *(a1 + v15) = v14;
            goto LABEL_37;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v17 = [a2 position];
    }

    while (v17 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_228E39FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__151(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t HDCodableSyncAnchorRangeReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v37[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v37[0] & 0x7F) << v5;
        if ((v37[0] & 0x80) == 0)
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

      if (v13 == 3)
      {
        v28 = 0;
        v29 = 0;
        v30 = 0;
        *(a1 + 40) |= 1u;
        while (1)
        {
          LOBYTE(v37[0]) = 0;
          v31 = [a2 position] + 1;
          if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
          {
            v33 = [a2 data];
            [v33 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v30 |= (v37[0] & 0x7F) << v28;
          if ((v37[0] & 0x80) == 0)
          {
            break;
          }

          v28 += 7;
          v11 = v29++ >= 9;
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
          v20 = v30;
        }

LABEL_65:
        v34 = 8;
        goto LABEL_66;
      }

      if (v13 != 4)
      {
        goto LABEL_34;
      }

      v21 = objc_alloc_init(HDCodableEntityIdentifier);
      objc_storeStrong((a1 + 32), v21);
      v37[0] = 0;
      v37[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableEntityIdentifierReadFrom(v21, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      v35 = [a2 position];
      if (v35 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 1)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      *(a1 + 40) |= 2u;
      while (1)
      {
        LOBYTE(v37[0]) = 0;
        v25 = [a2 position] + 1;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v24 |= (v37[0] & 0x7F) << v22;
        if ((v37[0] & 0x80) == 0)
        {
          break;
        }

        v22 += 7;
        v11 = v23++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_61;
        }
      }

      if ([a2 hasError])
      {
        v20 = 0;
      }

      else
      {
        v20 = v24;
      }

LABEL_61:
      v34 = 16;
      goto LABEL_66;
    }

    if (v13 == 2)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      *(a1 + 40) |= 4u;
      while (1)
      {
        LOBYTE(v37[0]) = 0;
        v17 = [a2 position] + 1;
        if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
        {
          v19 = [a2 data];
          [v19 getBytes:v37 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v16 |= (v37[0] & 0x7F) << v14;
        if ((v37[0] & 0x80) == 0)
        {
          break;
        }

        v14 += 7;
        v11 = v15++ >= 9;
        if (v11)
        {
          v20 = 0;
          goto LABEL_57;
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

LABEL_57:
      v34 = 24;
LABEL_66:
      *(a1 + v34) = v20;
      goto LABEL_67;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_67;
  }

  return [a2 hasError] ^ 1;
}

uint64_t __Block_byref_object_copy__152(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t hfd_catchExceptionsAsErrors(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = a1;
  v6 = v5;
  if (a3)
  {
    *a3 = 0;
  }

  v7 = (*(v5 + 2))(v5, a2);

  return v7;
}

void sub_228E3F7EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_228E3F990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = HDHFDataStore;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

__CFString *sizeStringForNumber(NSNumber *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = MEMORY[0x277CCACA8];
    [(NSNumber *)v1 doubleValue];
    v5 = [v3 stringWithFormat:@"%.2f MB", v4 * 0.000000953674316];
  }

  else
  {
    v5 = @"<Unknown size>";
  }

  return v5;
}

void sub_228E404A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  _Block_object_dispose(&a17, 8);
  if (a24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a24);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__153(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void __Block_byref_object_dispose__153(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _HDHFDataStoreWillCloseStore(HDHFDataStore *a1)
{
  v1 = a1;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___ZL28_HDHFDataStoreWillCloseStoreP13HDHFDataStore_block_invoke;
  v3[3] = &unk_278627D68;
  v4 = v1;
  v2 = v1;
  _WithActiveHFDataStores(0, v3);
}

void sub_228E407D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__370(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228E41068(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_228E41C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a12, 8);

  _Block_object_dispose((v30 - 176), 8);
  v32 = *(v30 - 120);
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }

  _Unwind_Resume(a1);
}

void sub_228E41D30(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_40c45_ZTSNSt3__110shared_ptrIN6health9DataStoreEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_40c45_ZTSNSt3__110shared_ptrIN6health9DataStoreEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_228E42540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_228E43A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, health::TransactionalFile *a25, uint64_t a26, health::TransactionalFile *a27, uint64_t a28, health::TransactionalFile *a29)
{
  std::unique_ptr<health::DataStore>::~unique_ptr[abi:ne200100](&a25);
  std::unique_ptr<health::DataStore>::~unique_ptr[abi:ne200100](&a27);

  std::unique_ptr<health::DataStore>::~unique_ptr[abi:ne200100](&a29);
  _Unwind_Resume(a1);
}

void sub_228E44360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::__function::__value_func<BOOL ()(health::DataStore::WriteTransaction &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c58_ZTSKZ45__HDHFDataStore__lock_restoreHFDFromArchive__E3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void sub_228E44464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<BOOL ()(health::DataStore::WriteTransaction &)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__n128 __copy_helper_block_ea8_32c58_ZTSKZ45__HDHFDataStore__lock_restoreHFDFromArchive__E3__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

health::TransactionalFile **std::unique_ptr<health::DataStore>::~unique_ptr[abi:ne200100](health::TransactionalFile **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    health::TransactionalFile::~TransactionalFile(v2);
    MEMORY[0x22AAC8590]();
  }

  return a1;
}

void sub_228E44600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 48), 8);
  _Unwind_Resume(a1);
}

uint64_t _WithActiveHFDataStores(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (qword_280D67DD8 != -1)
  {
    dispatch_once(&qword_280D67DD8, &__block_literal_global_480);
  }

  Current = CFAbsoluteTimeGetCurrent();
  [qword_280D67DD0 lock];
  if (v3)
  {
    v6 = v3[2](v3, _MergedGlobals_218);
    v7 = Current + 5.0;
    while ((v6 & 1) == 0)
    {
      if (CFAbsoluteTimeGetCurrent() > v7)
      {
        v10 = 0;
        goto LABEL_10;
      }

      v8 = qword_280D67DD0;
      v9 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v7];
      [v8 waitUntilDate:v9];

      v6 = v3[2](v3, _MergedGlobals_218);
    }
  }

  v4[2](v4, _MergedGlobals_218);
  [qword_280D67DD0 signal];
  v10 = 1;
LABEL_10:
  [qword_280D67DD0 unlock];

  return v10;
}

void ___ZL28_HDHFDataStoreWillCloseStoreP13HDHFDataStore_block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Will close store (#hfd)", &v7, 0xCu);
  }

  [v3 removeObject:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t ___ZL23_WithActiveHFDataStoresU13block_pointerFbP11NSHashTableIP13HDHFDataStoreEEU13block_pointerFvS3_E_block_invoke()
{
  v0 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  v1 = _MergedGlobals_218;
  _MergedGlobals_218 = v0;

  v2 = objc_alloc_init(MEMORY[0x277CCA928]);
  v3 = qword_280D67DD0;
  qword_280D67DD0 = v2;

  return MEMORY[0x2821F96F8](v2, v3);
}

uint64_t ___ZL27_HDHFDataStoreWillOpenStoreP13HDHFDataStore_block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [a2 allObjects];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v4)
  {
    v6 = *v20;
    v7 = MEMORY[0x277CCC2A0];
    *&v5 = 138543618;
    v18 = v5;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v20 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v19 + 1) + 8 * v8);
        _HKInitializeLogging();
        v10 = *v7;
        if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          *buf = v18;
          v24 = v11;
          v25 = 2114;
          v26 = v9;
          _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Existing open store: %{public}@ (#hfd)", buf, 0x16u);
        }

        v12 = [v9 fileSystemPath];
        v13 = [*(a1 + 32) fileSystemPath];
        v14 = [v12 isEqualToString:v13];

        if (v14)
        {
          v15 = 0;
          goto LABEL_13;
        }

        ++v8;
      }

      while (v4 != v8);
      v4 = [v3 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v15 = 1;
LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

void ___ZL27_HDHFDataStoreWillOpenStoreP13HDHFDataStore_block_invoke_488(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  _HKInitializeLogging();
  v4 = *MEMORY[0x277CCC2A0];
  if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_228986000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Will open store (#hfd)", &v7, 0xCu);
  }

  [v3 addObject:*(a1 + 32)];

  v6 = *MEMORY[0x277D85DE8];
}

__n128 _ZNKSt3__110__function6__funcIZZ45__HDHFDataStore__lock_restoreHFDFromArchive__ENK3__0clEPU15__autoreleasingP7NSErrorEUlRT_E_NS_9allocatorIS9_EEFbRN6health9DataStore16WriteTransactionEEE7__cloneEPNS0_6__baseISG_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BEB870;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZ45__HDHFDataStore__lock_restoreHFDFromArchive__ENK3__0clEPU15__autoreleasingP7NSErrorEUlRT_E_NS_9allocatorIS9_EEFbRN6health9DataStore16WriteTransactionEEEclESF_(void **a1)
{
  WeakRetained = objc_loadWeakRetained((*a1[1] + 80));
  v3 = [WeakRetained migrateDataForHFDataStore:*a1[1] from:*a1[2] to:*a1[3] recoveryAnalytics:*a1[4] error:*a1[5]];

  return v3;
}

uint64_t _ZNKSt3__110__function6__funcIZZ45__HDHFDataStore__lock_restoreHFDFromArchive__ENK3__0clEPU15__autoreleasingP7NSErrorEUlRT_E_NS_9allocatorIS9_EEFbRN6health9DataStore16WriteTransactionEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZ45__HDHFDataStore__lock_restoreHFDFromArchive__ENK3__0clEPU15__autoreleasingP7NSErrorEUlRT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZ45__HDHFDataStore__lock_restoreHFDFromArchive__ENK3__1clEPU15__autoreleasingP7NSErrorEUlRT_E_NS_9allocatorIS9_EEFbRN6health9DataStore16WriteTransactionEEE7__cloneEPNS0_6__baseISG_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BEB8F0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZ45__HDHFDataStore__lock_restoreHFDFromArchive__ENK3__1clEPU15__autoreleasingP7NSErrorEUlRT_E_NS_9allocatorIS9_EEFbRN6health9DataStore16WriteTransactionEEEclESF_(void **a1)
{
  WeakRetained = objc_loadWeakRetained((*a1[1] + 80));
  v3 = [WeakRetained migrateDataForHFDataStore:*a1[1] from:*a1[2] to:*a1[3] recoveryAnalytics:*a1[4] error:*a1[5]];

  return v3;
}

uint64_t _ZNKSt3__110__function6__funcIZZ45__HDHFDataStore__lock_restoreHFDFromArchive__ENK3__1clEPU15__autoreleasingP7NSErrorEUlRT_E_NS_9allocatorIS9_EEFbRN6health9DataStore16WriteTransactionEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZ45__HDHFDataStore__lock_restoreHFDFromArchive__ENK3__1clEPU15__autoreleasingP7NSErrorEUlRT_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<health::DataStore>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_283BEB970;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x22AAC8590);
}

void sub_228E46D7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_228E47738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__154(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228E47B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228E47FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodablePinnedContentStateReadFrom(uint64_t a1, void *a2)
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

uint64_t HDCodableContributorReadFrom(uint64_t a1, void *a2)
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
      if ((v12 >> 3) <= 3)
      {
        break;
      }

      if (v13 != 4)
      {
        if (v13 == 10)
        {
          v16 = PBReaderReadString();
          v17 = 16;
          goto LABEL_44;
        }

        if (v13 == 11)
        {
          v16 = PBReaderReadString();
          v17 = 24;
LABEL_44:
          v26 = *(a1 + v17);
          *(a1 + v17) = v16;

          goto LABEL_49;
        }

        goto LABEL_32;
      }

      v18 = objc_alloc_init(HDCodableSyncIdentity);
      objc_storeStrong((a1 + 32), v18);
      v30[0] = 0;
      v30[1] = 0;
      if (!PBReaderPlaceMark() || !HDCodableSyncIdentityReadFrom(v18, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_49:
      v28 = [a2 position];
      if (v28 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 1:
        v16 = PBReaderReadData();
        v17 = 40;
        goto LABEL_44;
      case 2:
        v19 = 0;
        v20 = 0;
        v21 = 0;
        *(a1 + 52) |= 2u;
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
            LOBYTE(v25) = 0;
            goto LABEL_46;
          }
        }

        v25 = (v21 != 0) & ~[a2 hasError];
LABEL_46:
        *(a1 + 48) = v25;
        goto LABEL_49;
      case 3:
        *(a1 + 52) |= 1u;
        v30[0] = 0;
        v14 = [a2 position] + 8;
        if (v14 >= [a2 position] && (v15 = objc_msgSend(a2, "position") + 8, v15 <= objc_msgSend(a2, "length")))
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
        goto LABEL_49;
    }

LABEL_32:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_49;
  }

  return [a2 hasError] ^ 1;
}

void sub_228E4CD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HistogramBucket>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<HistogramBucket>,HistogramBucket*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *(v5 + 16);
      v7 = *(v5 + 32);
      *a3 = *v5;
      *(a3 + 16) = v6;
      *(a3 + 32) = v7;
      *(a3 + 40) = 0;
      *(a3 + 48) = 0;
      *(a3 + 56) = 0;
      *(a3 + 40) = *(v5 + 40);
      *(a3 + 56) = *(v5 + 56);
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      *(v5 + 56) = 0;
      v5 += 64;
      a3 += 64;
    }

    while (v5 != a2);
    do
    {
      v8 = *(v4 + 40);
      if (v8)
      {
        *(v4 + 48) = v8;
        operator delete(v8);
      }

      v4 += 64;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<HistogramBucket>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 64;
    v4 = *(v2 - 24);
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 64;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t _HDAddVersionFieldsToSyncAnchorEntity(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFBE0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDResetWorkoutSyncAnchors(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CAFBF8 error:a4];

  return a4 ^ 1;
}

uint64_t _HDChangeForeignKeyOnBuilderStatisticsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CAFC10 error:a4];

  return a4 ^ 1;
}

uint64_t _HDAddSyncIdentityTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeUncachedSQL:@"CREATE TABLE sync_identities (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{hardware_identifier BLOB NOT NULL, database_identifier BLOB NOT NULL, instance_discriminator TEXT NOT NULL, UNIQUE(hardware_identifier, database_identifier, instance_discriminator))", a4}] ^ 1;

  return v6;
}

uint64_t _HDAddLogicalSourceEntity(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFC28 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddWorkoutAssociatedObjectTimestampColumn(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFC40 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddLogicalSourceOrderEntity(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFC58 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddMultiActivityFieldsToWorkoutSessionsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFC88 error:a4] ^ 1;

  return v6;
}

uint64_t _HDValidatedAnchorsToSyncAnchorEntityTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFCA0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddRequestedDatesToWorkoutSessionsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFCB8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddUnprotectedWorkoutOwnerIndices(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFCE8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDRefactorSourcesToAddLogicalSourceID(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFC70 error:a4] ^ 1;

  return v6;
}

uint64_t _HDSwapDataTypeSourceOrderToLogicalSourceOrder(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFCD0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddSourceIndices(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFD00 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddLegacySyncIdentityToSyncIdentityTable(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v8 = MEMORY[0x277D10A68];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM sync_identities WHERE hardware_identifier = %@('00000000-0000-0000-0000-000000000000') AND database_identifier = %@('00000000-0000-0000-0000-000000000000') AND instance_discriminator = '' LIMIT 1", *MEMORY[0x277D10A68], *MEMORY[0x277D10A68]];;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v10 = [v7 unprotectedDatabase];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = ___HDAddLegacySyncIdentityToSyncIdentityTable_block_invoke;
  v16[3] = &unk_278614620;
  v16[4] = &v17;
  v11 = [v10 executeSQL:v9 error:a4 bindingHandler:0 enumerationHandler:v16];

  if (v11)
  {
    if (v18[3])
    {
      v12 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO sync_identities (hardware_identifier, database_identifier, instance_discriminator) VALUES (%@('00000000-0000-0000-0000-000000000000'), %@('00000000-0000-0000-0000-000000000000'), '')", *v8, *v8];
      v14 = [v7 unprotectedDatabase];
      v12 = [v14 executeUncachedSQL:v13 error:a4] ^ 1;
    }
  }

  else
  {
    v12 = 1;
  }

  _Block_object_dispose(&v17, 8);

  return v12;
}

void sub_228E51740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _HDSyncIdentityUpdateForDeviceEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 unprotectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE source_devices_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{name TEXT NOT NULL, manufacturer TEXT NOT NULL, model TEXT NOT NULL, hardware TEXT NOT NULL, firmware TEXT NOT NULL, software TEXT NOT NULL, localIdentifier TEXT NOT NULL, FDAUDI TEXT NOT NULL, creation_date REAL NOT NULL, sync_provenance INTEGER NOT NULL, uuid BLOB UNIQUE NOT NULL, sync_identity INTEGER NOT NULL, UNIQUE(name, manufacturer, model, hardware, firmware, software, localIdentifier, FDAUDI, sync_provenance, uuid, sync_identity));", a4}])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM sync_identities WHERE hardware_identifier = %@('00000000-0000-0000-0000-000000000000') AND database_identifier = %@('00000000-0000-0000-0000-000000000000') AND instance_discriminator = '' LIMIT 1", *MEMORY[0x277D10A68], *MEMORY[0x277D10A68]];;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = 0;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = ___HDSyncIdentityUpdateForDeviceEntity_block_invoke;
    v17[3] = &unk_278614620;
    v17[4] = v18;
    if ([v8 executeSQL:v9 error:a4 bindingHandler:0 enumerationHandler:v17])
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO source_devices_new (ROWID, name, manufacturer, model, hardware, firmware, software, localIdentifier, FDAUDI, creation_date, sync_provenance, uuid, sync_identity) SELECT ROWID, name, manufacturer, model, hardware, firmware, software, localIdentifier, FDAUDI, creation_date, sync_provenance, uuid, ? AS sync_identity FROM source_devices"];;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = ___HDSyncIdentityUpdateForDeviceEntity_block_invoke_2;
      v16[3] = &unk_2786140E8;
      v16[4] = v18;
      if ([v8 executeSQL:v10 error:a4 bindingHandler:v16 enumerationHandler:0])
      {
        v19[0] = @"DROP TABLE source_devices;";
        v19[1] = @"ALTER TABLE source_devices_new RENAME TO source_devices;";
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
        v12 = [v8 executeSQLStatements:v11 error:a4];

        v13 = v12 ^ 1u;
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 1;
    }

    _Block_object_dispose(v18, 8);
  }

  else
  {
    v13 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

void sub_228E519AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _HDSyncIdentityUpdateForSourceEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v8 = [v7 unprotectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE sources_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{uuid BLOB UNIQUE NOT NULL, name TEXT NOT NULL, source_options INTEGER NOT NULL, local_device INTEGER NOT NULL, product_type TEXT NOT NULL, deleted INTEGER NOT NULL, mod_date REAL NOT NULL, provenance INTEGER NOT NULL, sync_anchor INTEGER NOT NULL UNIQUE, logical_source_id INTEGER NOT NULL REFERENCES logical_sources (ROWID) ON DELETE CASCADE, sync_identity INTEGER NOT NULL);", a4}])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM sync_identities WHERE hardware_identifier = %@('00000000-0000-0000-0000-000000000000') AND database_identifier = %@('00000000-0000-0000-0000-000000000000') AND instance_discriminator = '' LIMIT 1", *MEMORY[0x277D10A68], *MEMORY[0x277D10A68]];;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___HDSyncIdentityUpdateForSourceEntity_block_invoke;
    v14[3] = &unk_278614620;
    v14[4] = v15;
    if ([v8 executeSQL:v9 error:a4 bindingHandler:0 enumerationHandler:v14])
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO sources_new (ROWID, uuid, name, source_options, local_device, product_type, deleted, mod_date, provenance, sync_anchor, logical_source_id, sync_identity) SELECT ROWID, uuid, name, source_options, local_device, product_type, deleted, mod_date, provenance, sync_anchor, logical_source_id, ? AS sync_identity FROM sources"];;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = ___HDSyncIdentityUpdateForSourceEntity_block_invoke_2;
      v13[3] = &unk_2786140E8;
      v13[4] = v15;
      if ([v8 executeSQL:v10 error:a4 bindingHandler:v13 enumerationHandler:0])
      {
        v11 = [v8 executeSQLStatements:&unk_283CAFD18 error:a4] ^ 1;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 1;
    }

    _Block_object_dispose(v15, 8);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

void sub_228E51BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _IncrementSourceOrderSyncAnchors(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v8 = [v7 unprotectedDatabase];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = ___IncrementSourceOrderSyncAnchors_block_invoke;
  v15[3] = &unk_278614620;
  v15[4] = v16;
  v9 = [v8 executeUncachedSQL:@"SELECT MAX(COALESCE((SELECT MAX(ROWID) FROM datatype_source_order) error:0) bindingHandler:COALESCE((SELECT MAX(ROWID) FROM logical_source_order) enumerationHandler:{0))", a4, 0, v15}];

  if (v9)
  {
    v10 = [v7 unprotectedDatabase];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___IncrementSourceOrderSyncAnchors_block_invoke_2;
    v14[3] = &unk_2786140E8;
    v14[4] = v16;
    v11 = [v10 executeUncachedSQL:@"UPDATE logical_source_order SET ROWID = ROWID + ?" error:a4 bindingHandler:v14 enumerationHandler:0];

    v12 = v11 ^ 1u;
  }

  else
  {
    v12 = 1;
  }

  _Block_object_dispose(v16, 8);

  return v12;
}

void sub_228E51D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _HDSyncIdentityUpdateForLogicalSourceOrderEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v8 = [v7 unprotectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE logical_source_order_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{data_type INTEGER NOT NULL, logical_source INTEGER NOT NULL REFERENCES logical_sources (ROWID) ON DELETE CASCADE, user_preferred INTEGER NOT NULL, provenance INTEGER NOT NULL, modification_date REAL NOT NULL, sync_identity INTEGER NOT NULL, UNIQUE(data_type, logical_source))", a4}])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM sync_identities WHERE hardware_identifier = %@('00000000-0000-0000-0000-000000000000') AND database_identifier = %@('00000000-0000-0000-0000-000000000000') AND instance_discriminator = '' LIMIT 1", *MEMORY[0x277D10A68], *MEMORY[0x277D10A68]];;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___HDSyncIdentityUpdateForLogicalSourceOrderEntity_block_invoke;
    v14[3] = &unk_278614620;
    v14[4] = v15;
    if ([v8 executeSQL:v9 error:a4 bindingHandler:0 enumerationHandler:v14])
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO logical_source_order_new (ROWID, data_type, logical_source, user_preferred, provenance, modification_date, sync_identity) SELECT ROWID, data_type, logical_source, user_preferred, provenance, modification_date, ? FROM logical_source_order"];;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = ___HDSyncIdentityUpdateForLogicalSourceOrderEntity_block_invoke_2;
      v13[3] = &unk_2786140E8;
      v13[4] = v15;
      if ([v8 executeSQL:v10 error:a4 bindingHandler:v13 enumerationHandler:0])
      {
        v11 = [v8 executeSQLStatements:&unk_283CAFD30 error:a4] ^ 1;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 1;
    }

    _Block_object_dispose(v15, 8);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

void sub_228E51F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _HDSyncIdentityUpdateForAuthorizationEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v8 = [v7 unprotectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE authorization_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{source_id INTEGER NOT NULL REFERENCES sources(ROWID) ON DELETE CASCADE, object_type INTEGER NOT NULL, status INTEGER NOT NULL, request INTEGER NOT NULL, mode INTEGER NOT NULL, date_modified REAL NOT NULL, modification_epoch INTEGER NOT NULL, provenance INTEGER NOT NULL, deleted_object_anchor INTEGER NOT NULL DEFAULT 0, object_limit_anchor INTEGER NOT NULL DEFAULT 0, object_limit_modified REAL, sync_identity INTEGER NOT NULL, UNIQUE(source_id, object_type));", a4}])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM sync_identities WHERE hardware_identifier = %@('00000000-0000-0000-0000-000000000000') AND database_identifier = %@('00000000-0000-0000-0000-000000000000') AND instance_discriminator = '' LIMIT 1", *MEMORY[0x277D10A68], *MEMORY[0x277D10A68]];;
    v15[0] = 0;
    v15[1] = v15;
    v15[2] = 0x2020000000;
    v15[3] = 0;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = ___HDSyncIdentityUpdateForAuthorizationEntity_block_invoke;
    v14[3] = &unk_278614620;
    v14[4] = v15;
    if ([v8 executeSQL:v9 error:a4 bindingHandler:0 enumerationHandler:v14])
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO authorization_new (ROWID, source_id, object_type, status, request, mode, date_modified, modification_epoch, provenance, deleted_object_anchor, object_limit_anchor, object_limit_modified, sync_identity) SELECT ROWID, source_id, object_type, status, request, mode, date_modified, modification_epoch, provenance, deleted_object_anchor, object_limit_anchor, object_limit_modified, ? FROM authorization"];;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = ___HDSyncIdentityUpdateForAuthorizationEntity_block_invoke_2;
      v13[3] = &unk_2786140E8;
      v13[4] = v15;
      if ([v8 executeSQL:v10 error:a4 bindingHandler:v13 enumerationHandler:0])
      {
        v11 = [v8 executeSQLStatements:&unk_283CAFD48 error:a4] ^ 1;
      }

      else
      {
        v11 = 1;
      }
    }

    else
    {
      v11 = 1;
    }

    _Block_object_dispose(v15, 8);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

void sub_228E52160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _HDSyncIdentityUpdateForOnboardingCompletionEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 unprotectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE onboarding_completions_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{uuid BLOB NOT NULL UNIQUE, feature_identifier TEXT NOT NULL, version INTEGER NOT NULL, completion_date REAL NOT NULL, country_code TEXT, mod_date REAL NOT NULL, deleted INTEGER NOT NULL DEFAULT 0, sync_provenance INTEGER NOT NULL, country_code_provenance INTEGER NOT NULL DEFAULT 0, sync_identity INTEGER NOT NULL);", a4}])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM sync_identities WHERE hardware_identifier = %@('00000000-0000-0000-0000-000000000000') AND database_identifier = %@('00000000-0000-0000-0000-000000000000') AND instance_discriminator = '' LIMIT 1", *MEMORY[0x277D10A68], *MEMORY[0x277D10A68]];;
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x2020000000;
    v17[3] = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___HDSyncIdentityUpdateForOnboardingCompletionEntity_block_invoke;
    v16[3] = &unk_278614620;
    v16[4] = v17;
    if ([v8 executeSQL:v9 error:a4 bindingHandler:0 enumerationHandler:v16] & 1) != 0 && (v15[0] = MEMORY[0x277D85DD0], v15[1] = 3221225472, v15[2] = ___HDSyncIdentityUpdateForOnboardingCompletionEntity_block_invoke_2, v15[3] = &unk_2786140E8, v15[4] = v17, (objc_msgSend(v8, "executeSQL:error:bindingHandler:enumerationHandler:", @"INSERT INTO onboarding_completions_new (ROWID, uuid, feature_identifier, version, completion_date, country_code, mod_date, deleted, sync_provenance, country_code_provenance, sync_identity) SELECT ROWID, uuid, feature_identifier, version, completion_date, country_code, mod_date, deleted, sync_provenance, country_code_provenance, ? FROM onboarding_completions;", a4, v15, 0)))
    {
      v18[0] = @"DROP TABLE onboarding_completions;";
      v18[1] = @"ALTER TABLE onboarding_completions_new RENAME TO onboarding_completions;";
      v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2];
      v11 = [v8 executeSQLStatements:v10 error:a4];

      v12 = v11 ^ 1u;
    }

    else
    {
      v12 = 1;
    }

    _Block_object_dispose(v17, 8);
  }

  else
  {
    v12 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void sub_228E523A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _HDSyncIdentityUpdateForUnProtectedKeyValueEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 unprotectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE key_value_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{category INTEGER NOT NULL, domain TEXT NOT NULL, key TEXT NOT NULL, value, provenance INTEGER NOT NULL, mod_date REAL NOT NULL, sync_identity INTEGER NOT NULL, UNIQUE(category, domain, key));", a4}])
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"SELECT ROWID FROM sync_identities WHERE hardware_identifier = %@('00000000-0000-0000-0000-000000000000') AND database_identifier = %@('00000000-0000-0000-0000-000000000000') AND instance_discriminator = '' LIMIT 1", *MEMORY[0x277D10A68], *MEMORY[0x277D10A68]];;
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x2020000000;
    v19[3] = 0;
    v10 = [v7 unprotectedDatabase];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = ___HDSyncIdentityUpdateForUnProtectedKeyValueEntity_block_invoke;
    v18[3] = &unk_278614620;
    v18[4] = v19;
    v11 = [v10 executeSQL:v9 error:a4 bindingHandler:0 enumerationHandler:v18];

    if (v11 & 1) != 0 && (v17[0] = MEMORY[0x277D85DD0], v17[1] = 3221225472, v17[2] = ___HDSyncIdentityUpdateForUnProtectedKeyValueEntity_block_invoke_2, v17[3] = &unk_2786140E8, v17[4] = v19, ([v8 executeSQL:@"INSERT INTO key_value_new (ROWID error:category bindingHandler:domain enumerationHandler:{key, value, provenance, mod_date, sync_identity) SELECT ROWID, category, domain, key, value, provenance, mod_date, ? FROM key_value;", a4, v17, 0}]))
    {
      v20[0] = @"DROP TABLE key_value;";
      v20[1] = @"ALTER TABLE key_value_new RENAME TO key_value;";
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
      v13 = [v8 executeSQLStatements:v12 error:a4];

      v14 = v13 ^ 1u;
    }

    else
    {
      v14 = 1;
    }

    _Block_object_dispose(v19, 8);
  }

  else
  {
    v14 = 1;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

void sub_228E52614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _HDResetAllReceivedSyncAnchors(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 unprotectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFD60 error:a4] ^ 1;

  return v6;
}

uint64_t _HDResetAnchorsForAssociationsForNanoSync_1(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = [a1 behavior];
  v8 = [v7 isAppleWatch];

  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v10 = [v6 unprotectedDatabase];
    v9 = [v10 executeSQLStatements:&unk_283CAFD78 error:a4] ^ 1;
  }

  return v9;
}

uint64_t _HDAddAttachmentAndReferencesEntities_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFD90 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddVisionPrescriptionEntityTable_0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFDA8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddWorkoutStatisticsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFDC0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDCopyWorkoutTotalsToPrimaryActivity(void *a1, void *a2, uint64_t a3, void *a4)
{
  v49 = *MEMORY[0x277D85DE8];
  v26 = a1;
  v6 = a2;
  v42[0] = 0;
  v42[1] = v42;
  v42[2] = 0x2020000000;
  v42[3] = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = 0;
  v40[0] = 0;
  v40[1] = v40;
  v40[2] = 0x2020000000;
  v40[3] = 0;
  v7 = [v6 protectedDatabase];
  v38[6] = v40;
  v39 = 0;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = ___HDCopyWorkoutTotalsToPrimaryActivity_block_invoke;
  v38[3] = &unk_278627FD0;
  v38[4] = v42;
  v38[5] = v41;
  v8 = [v7 executeUncachedSQL:@"SELECT ROWID error:key FROM metadata_keys WHERE key IN ('HKIndoorWorkout' bindingHandler:'HKSwimmingLocationType' enumerationHandler:{'HKLapLength')", &v39, 0, v38}];
  v9 = v39;
  if (v8)
  {
    v37 = 0;
    v10 = [v7 executeSQLStatements:&unk_283CAFDD8 error:&v37];
    v11 = v37;
    if (v10)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v48 = 0;
      v36 = 0;
      v27 = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = ___HDCopyWorkoutTotalsToPrimaryActivity_block_invoke_602;
      v30 = &unk_278627FF8;
      v32 = v42;
      v33 = v41;
      v34 = v40;
      v31 = v7;
      v35 = buf;
      v12 = [v31 executeUncachedSQL:@"SELECT data_id error:o.uuid bindingHandler:w.activity_type enumerationHandler:{s.start_date, s.end_date, w.duration, total_energy_burned, total_basal_energy_burned, total_w_steps, total_flights_climbed, total_distance FROM workouts w INNER JOIN samples s USING(data_id) INNER JOIN objects o USING(data_id)", &v36, 0, &v27}];
      v13 = v36;
      v14 = v13;
      if (v12)
      {
        v15 = 0;
      }

      else
      {
        v18 = MEMORY[0x277CCACA8];
        v19 = *(*&buf[8] + 24);
        v20 = [v13 userInfo];
        v21 = [v20 objectForKeyedSubscript:*MEMORY[0x277CCBDA8]];
        v22 = [v18 stringWithFormat:@"CopyWorkoutTotalsToPrimaryActivity: Success count: %lu, context: %@", v19, v21, v26, v27, v28, v29, v30];

        _HDAssignWorkoutDatabaseMigrationError(a4, v22, v14, 0);
        _HKInitializeLogging();
        v23 = *MEMORY[0x277CCC2A0];
        if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
        {
          *v43 = 138543618;
          v44 = v22;
          v45 = 2114;
          v46 = v14;
          _os_log_fault_impl(&dword_228986000, v23, OS_LOG_TYPE_FAULT, "%{public}@, underlying error: %{public}@", v43, 0x16u);
        }

        v15 = 1;
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      _HDAssignWorkoutDatabaseMigrationError(a4, @"CopyWorkoutTotalsToPrimaryActivity: Failed to empty activities and statistics tables", v11, 0);
      _HKInitializeLogging();
      v17 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        *buf = 138543618;
        *&buf[4] = @"CopyWorkoutTotalsToPrimaryActivity: Failed to empty activities and statistics tables";
        *&buf[12] = 2114;
        *&buf[14] = v11;
        _os_log_fault_impl(&dword_228986000, v17, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@", buf, 0x16u);
      }

      v15 = 1;
    }
  }

  else
  {
    _HDAssignWorkoutDatabaseMigrationError(a4, @"CopyWorkoutTotalsToPrimaryActivity: Failed to retrieve swimming metadata", v9, 0);
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
    {
      *buf = 138543618;
      *&buf[4] = @"CopyWorkoutTotalsToPrimaryActivity: Failed to retrieve swimming metadata";
      *&buf[12] = 2114;
      *&buf[14] = v9;
      _os_log_fault_impl(&dword_228986000, v16, OS_LOG_TYPE_FAULT, "%{public}@: %{public}@", buf, 0x16u);
    }

    v15 = 1;
  }

  _Block_object_dispose(v40, 8);
  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v42, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_228E533C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose((v35 - 160), 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose((v35 - 224), 8);
  _Unwind_Resume(a1);
}

uint64_t _HDAddUDCLocalizedStringTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CAFDF0 error:a4];

  return a4 ^ 1;
}

uint64_t _HDModifyConceptIndexTableOntologyVersionColumn(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CAFE08 error:a4];

  return a4 ^ 1;
}

uint64_t _HDAddClinicalAccountEventsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CAFE38 error:a4];

  return a4 ^ 1;
}

uint64_t _HDAddMedicationDoseEventSamplesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CAFE68 error:a4];

  return a4 ^ 1;
}

uint64_t _HDFixWorkoutStatisticsForeignKey(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFE50 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddMedicationUUIDToMedicationDoseEventSamplesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  LODWORD(a4) = [v5 executeSQLStatements:&unk_283CAFE80 error:a4];

  return a4 ^ 1;
}

uint64_t _HDAddAttachmentMetadata(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFE98 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddAttachmentEncryptionKeyColumn(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFEB0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddDisplaySubtitleColumn(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFEC8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddNotNullConstraintsToAttachmentsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFEE0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddProtectedWorkoutOwnerIndices(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFEF8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDFixLapLengthColumnInActivitiesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___HDFixLapLengthColumnInActivitiesTable_block_invoke;
  v9[3] = &unk_2786140C0;
  v10 = v5;
  v11 = @"UPDATE workout_activities SET lap_length = NULL WHERE ROWID = ?";
  v6 = v5;
  v7 = [v6 executeUncachedSQL:@"SELECT ROWID error:lap_length FROM workout_activities" bindingHandler:a4 enumerationHandler:{0, v9}] ^ 1;

  return v7;
}

uint64_t _HDMigrateBloodPressureIdentifierAuthorizationsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFF28 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddUserDomainConceptEducationContentTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFF40 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddVersionColumnToActivityCacheTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v13[7] = *MEMORY[0x277D85DE8];
  v13[0] = @"DROP INDEX IF EXISTS activity_caches_cache_index";
  v13[1] = @"DROP TABLE IF EXISTS activity_caches_new";
  v13[2] = @"CREATE TABLE activity_caches_new (data_id INTEGER PRIMARY KEY REFERENCES samples (data_id) ON DELETE CASCADE, cache_index INTEGER, sequence INTEGER NOT NULL, activity_mode INTEGER, wheelchair_use INTEGER, energy_burned REAL, energy_burned_goal REAL, energy_burned_goal_date REAL, move_minutes REAL, move_minutes_goal REAL, move_minutes_goal_date REAL, brisk_minutes REAL, brisk_minutes_goal REAL, brisk_minutes_goal_date REAL, active_hours REAL, active_hours_goal REAL, active_hours_goal_date REAL, steps REAL, pushes REAL, walk_distance REAL, deep_breathing_duration REAL, flights INTEGER, energy_burned_stats BLOB, move_minutes_stats BLOB, brisk_minutes_stats BLOB, version INTEGER NOT NULL)";
  v5 = MEMORY[0x277CCACA8];
  v6 = *MEMORY[0x277D10A50];
  v7 = a2;
  v8 = [v5 stringWithFormat:@"INSERT INTO activity_caches_new (data_id, cache_index, sequence, wheelchair_use, energy_burned, energy_burned_goal, energy_burned_goal_date, brisk_minutes, brisk_minutes_goal, active_hours, active_hours_goal, steps, pushes, walk_distance, deep_breathing_duration, flights, energy_burned_stats, brisk_minutes_stats, version) SELECT data_id, cache_index, sequence, wheelchair_use, energy_burned, energy_burned_goal, energy_burned_goal_date, brisk_minutes, brisk_minutes_goal, active_hours, active_hours_goal, steps, pushes, walk_distance, deep_breathing_duration, flights, energy_burned_stats, brisk_minutes_stats, CASE WHEN %@(origin_build, '20A6') > 0 OR %@(origin_build, '20R57') > 0 THEN 2 ELSE 1 END FROM activity_caches INNER JOIN objects USING (data_id) INNER JOIN data_provenances ON (objects.provenance = data_provenances.rowid) WHERE sequence IS NOT NULL", v6, v6, @"DROP INDEX IF EXISTS activity_caches_cache_index", @"DROP TABLE IF EXISTS activity_caches_new", @"CREATE TABLE activity_caches_new (data_id INTEGER PRIMARY KEY REFERENCES samples (data_id) ON DELETE CASCADE, cache_index INTEGER, sequence INTEGER NOT NULL, activity_mode INTEGER, wheelchair_use INTEGER, energy_burned REAL, energy_burned_goal REAL, energy_burned_goal_date REAL, move_minutes REAL, move_minutes_goal REAL, move_minutes_goal_date REAL, brisk_minutes REAL, brisk_minutes_goal REAL, brisk_minutes_goal_date REAL, active_hours REAL, active_hours_goal REAL, active_hours_goal_date REAL, steps REAL, pushes REAL, walk_distance REAL, deep_breathing_duration REAL, flights INTEGER, energy_burned_stats BLOB, move_minutes_stats BLOB, brisk_minutes_stats BLOB, version INTEGER NOT NULL)"];;
  v13[3] = v8;
  v13[4] = @"DROP TABLE IF EXISTS activity_caches";
  v13[5] = @"ALTER TABLE activity_caches_new RENAME TO activity_caches";
  v13[6] = @"CREATE INDEX IF NOT EXISTS activity_caches_cache_index ON activity_caches (cache_index)";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:7];

  v10 = [v7 protectedDatabase];

  LODWORD(a4) = [v10 executeSQLStatements:v9 error:a4];
  v11 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _HDUpdateClinicalRecordEntities(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = ___HDUpdateClinicalRecordEntities_block_invoke;
  v9[3] = &unk_278614098;
  v10 = v5;
  v7 = v5;
  LODWORD(a4) = [v6 executeUncachedSQL:@"SELECT clinical_accounts.ROWID error:clinical_gateways.external_id         FROM clinical_accounts JOIN clinical_gateways ON clinical_accounts.gateway_id = clinical_gateways.ROWID" bindingHandler:a4 enumerationHandler:{0, v9}];

  return a4 ^ 1;
}

uint64_t _HDRecreateSeriesDataTables(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFF58 error:a4] ^ 1;

  return v6;
}

uint64_t _HDUpdateGlassesTypeToGlassesDecription(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFF70 error:a4] ^ 1;

  return v6;
}

uint64_t _HDUpdateMedicalRecordsDiagnosticReportTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = [v6 deleteDataEntitySubclassTablesIfExist:&unk_283CAFFA0 intermediateTables:&unk_283CAFFB8 error:a4];

  if (v7)
  {
    v8 = [v5 protectedDatabase];
    v9 = [v8 executeSQLStatements:&unk_283CAFFD0 error:a4] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t _HDUpdateMissingDurationInWorkoutActivitiesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFF88 error:a4] ^ 1;

  return v6;
}

uint64_t _HDUpdateMedicalRecordEntitiesTableWithOrigin(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = [v6 executeSQLStatements:&unk_283CAFFE8 error:a4];

  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = [v5 protectedDatabase];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = ___HDUpdateMedicalRecordEntitiesTableWithOrigin_block_invoke;
    v26[3] = &unk_2786140C0;
    v10 = v5;
    v27 = v10;
    v11 = v8;
    v28 = v11;
    v12 = [v9 executeUncachedSQL:@"SELECT ROWID error:HEX(identifier) FROM clinical_accounts" bindingHandler:a4 enumerationHandler:{0, v26}];

    if (v12)
    {
      v13 = [v10 protectedDatabase];
      v20 = MEMORY[0x277D85DD0];
      v21 = 3221225472;
      v22 = ___HDUpdateMedicalRecordEntitiesTableWithOrigin_block_invoke_978;
      v23 = &unk_2786140C0;
      v24 = v11;
      v14 = v10;
      v25 = v14;
      v15 = [v13 executeSQL:@"SELECT medical_records.ROWID error:fhir_identifier bindingHandler:data_provenances.source_id FROM medical_records          JOIN objects USING(data_id)          JOIN data_provenances ON data_provenances.ROWID = objects.provenance          WHERE medical_records.fhir_identifier IS NOT NULL" enumerationHandler:{a4, 0, &v20}];

      if (v15)
      {
        v16 = [v14 protectedDatabase];
        v17 = [v16 executeSQLStatements:&unk_283CB0000 error:a4];

        v18 = v17 ^ 1u;
      }

      else
      {
        v18 = 1;
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

uint64_t _HDSanitizeHFDRebuildState(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 HFDRebuildState] >= 7)
  {
    [v2 setHFDRebuildState:10];
  }

  return 0;
}

uint64_t _HDMigrateHFDToSQLite(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [[HDSydneyHFDMigrator alloc] initWithMigrationTransaction:v5];

  v7 = [(HDSydneyHFDMigrator *)v6 migrateHFD:a4];
  return v7;
}

uint64_t _HDAddSourceURLIndexToOriginalFHIRResourcesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CB0018 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddUserDomainConceptNamedQuantityTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CB0030 error:a4] ^ 1;

  return v6;
}

uint64_t _HDDeleteDeprecated261WorkoutStatistics(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CAFF10 error:a4] ^ 1;

  return v6;
}

uint64_t _HDMoveAdHocConceptIntoCorrectIDNamespace(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CB0048 error:a4] ^ 1;

  return v6;
}

uint64_t _HDForceMedicalRecordReextractionToRelinkUDCs(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = [v6 executeUncachedSQL:@"UPDATE clinical_accounts SET last_extracted_rowid = NULL" error:a4];

  if (v7)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = [&unk_283CB0078 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (!v8)
    {
      v14 = 0;
      goto LABEL_12;
    }

    v9 = v8;
    v10 = *v18;
LABEL_4:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(&unk_283CB0078);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      v13 = [v5 protectedDatabase];
      LODWORD(v12) = [v13 deleteRowsFromDataEntitySubclassTable:v12 intermediateTables:&unk_283CB0060 error:a4];

      if (!v12)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [&unk_283CB0078 countByEnumeratingWithState:&v17 objects:v21 count:16];
        v14 = 0;
        if (v9)
        {
          goto LABEL_4;
        }

        goto LABEL_12;
      }
    }
  }

  v14 = 1;
LABEL_12:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t _HDFixStatisticsAndRemoveUnusedColumnsFromWorkoutsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = ___HDFixStatisticsAndRemoveUnusedColumnsFromWorkoutsTable_block_invoke;
  v11[3] = &unk_278614098;
  v7 = v6;
  v12 = v7;
  if ([v7 executeUncachedSQL:@"SELECT a.ROWID error:a.activity_type bindingHandler:total_energy_burned enumerationHandler:{total_basal_energy_burned, total_distance, total_w_steps, total_flights_climbed FROM workouts LEFT JOIN workout_activities a ON (data_id = owner_id AND a.is_primary_activity)", a4, 0, v11}])
  {
    v8 = [v5 protectedDatabase];
    v9 = [v8 executeSQLStatements:&unk_283CB0090 error:a4] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

uint64_t _HDMoveGlassesDescriptionToMetadata(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  v6 = [v5 protectedDatabase];
  v7 = [v6 executeUncachedSQL:@"INSERT INTO metadata_keys (key) VALUES ('HKMetadataKeyGlassesPrescriptionDescription')" error:a4 bindingHandler:0 enumerationHandler:0];

  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = [v5 protectedDatabase];
    v10 = [v9 lastInsertRowID];
    v11 = [v8 stringWithFormat:@"INSERT INTO metadata_values (key_id, object_id, value_type, string_value)SELECT %@, data_id, 0, glasses_description FROM vision_prescription WHERE prescription_type=1", v10];

    v12 = [v5 protectedDatabase];
    v13 = [v12 executeUncachedSQL:v11 error:a4 bindingHandler:0 enumerationHandler:0];

    v14 = v13 ^ 1u;
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

uint64_t _HDDropDeprecatedUDCPropertyTypesFromPropertyTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CB00A8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddSchemaVersionToAttachmentReferences(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CB00C0 error:a4] ^ 1;

  return v6;
}

uint64_t _HDMigrateUDCPreferredNameProperties(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"INSERT OR REPLACE INTO user_domain_concept_localized_strings (udc_id, property_type, string_value, locale, version, timestamp, deleted) SELECT udc_id, 160012, IFNULL(string_value,''), CASE property_type WHEN 150000 THEN '(null)' WHEN 150001 THEN 'en_US' WHEN 150002 THEN 'en_GB' WHEN 150003 THEN 'en_CA' END, version, timestamp, (string_value IS NULL) FROM user_domain_concept_properties WHERE property_type IN (150000, 150001, 150002, 150003)";
  v11[1] = @"DELETE FROM user_domain_concept_properties WHERE property_type IN (150000, 150001, 150002, 150003)";
  v5 = MEMORY[0x277CBEA60];
  v6 = a2;
  v7 = [v5 arrayWithObjects:v11 count:2];
  v8 = [v6 protectedDatabase];

  LODWORD(a4) = [v8 executeSQLStatements:v7 error:a4];
  v9 = *MEMORY[0x277D85DE8];
  return a4 ^ 1;
}

uint64_t _HDAddCHRAccountsDeletionReason(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CB00D8 error:a4] ^ 1;

  return v6;
}

uint64_t _HDSyncIdentityUpdateForSignedClinicalDataIssuersEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 protectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE signed_clinical_data_issuer_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{identifier TEXT NOT NULL UNIQUE, sync_provenance INTEGER NOT NULL, title TEXT NOT NULL, subtitle TEXT, well_known_url TEXT, sync_identity INTEGER NOT NULL);", a4}] && (v9 = objc_msgSend(v6, "fetchLegacySyncIdentity:error:", v7, a4), v9 != -1) && (v14[0] = MEMORY[0x277D85DD0], v14[1] = 3221225472, v14[2] = ___HDSyncIdentityUpdateForSignedClinicalDataIssuersEntity_block_invoke, v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l, v14[4] = v9, objc_msgSend(v8, "executeSQL:error:bindingHandler:enumerationHandler:", @"INSERT INTO signed_clinical_data_issuer_new (ROWID, identifier, sync_provenance, title, subtitle, well_known_url, sync_identity) SELECT ROWID, identifier, sync_provenance, title, subtitle, well_known_url, ? FROM signed_clinical_data_issuer;", a4, v14, 0)))
  {
    v15[0] = @"DROP TABLE signed_clinical_data_issuer;";
    v15[1] = @"ALTER TABLE signed_clinical_data_issuer_new RENAME TO signed_clinical_data_issuer;";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v11 = [v8 executeSQLStatements:v10 error:a4] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t _HDSyncIdentityUpdateForOriginalSignedClinicalDataRecordEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 protectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE original_signed_clinical_data_records_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{sync_identifier BLOB NOT NULL UNIQUE, issuer_identifier TEXT NOT NULL, source_url TEXT NOT NULL, source_type INTEGER NOT NULL, raw_content BLOB, uniqueness_checksum BLOB NOT NULL, type TEXT NOT NULL, metadata BLOB, received_date REAL NOT NULL, received_date_timezone TEXT NOT NULL, first_seen_date REAL NOT NULL, first_seen_date_timezone TEXT NOT NULL, signature_status INTEGER NOT NULL, sync_provenance INTEGER NOT NULL, account_id INTEGER NOT NULL REFERENCES clinical_accounts (ROWID) ON DELETE CASCADE, last_modified_date REAL NOT NULL, deleted INTEGER NOT NULL, sync_identity INTEGER NOT NULL, UNIQUE(account_id, uniqueness_checksum), CHECK((raw_content IS NULL AND deleted == 1) OR (raw_content IS NOT NULL AND deleted == 0)));", a4}] && (v9 = objc_msgSend(v6, "fetchLegacySyncIdentity:error:", v7, a4), v9 != -1) && (v14[0] = MEMORY[0x277D85DD0], v14[1] = 3221225472, v14[2] = ___HDSyncIdentityUpdateForOriginalSignedClinicalDataRecordEntity_block_invoke, v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l, v14[4] = v9, objc_msgSend(v8, "executeSQL:error:bindingHandler:enumerationHandler:", @"INSERT INTO original_signed_clinical_data_records_new (ROWID, sync_identifier, issuer_identifier, source_url, source_type, raw_content, uniqueness_checksum, type, metadata, received_date, received_date_timezone, first_seen_date, first_seen_date_timezone, signature_status, sync_provenance, account_id, last_modified_date, deleted, sync_identity) SELECT ROWID, sync_identifier, issuer_identifier, source_url, source_type, raw_content, uniqueness_checksum, type, metadata, received_date, received_date_timezone, first_seen_date, first_seen_date_timezone, signature_status, sync_provenance, account_id, last_modified_date, deleted, ? FROM original_signed_clinical_data_records;", a4, v14, 0)))
  {
    v15[0] = @"DROP TABLE original_signed_clinical_data_records;";
    v15[1] = @"ALTER TABLE original_signed_clinical_data_records_new RENAME TO original_signed_clinical_data_records;";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v11 = [v8 executeSQLStatements:v10 error:a4] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t _HDSyncIdentityUpdateForUserDomainConceptEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 protectedDatabase];
  if (![v8 executeUncachedSQL:@"CREATE TABLE user_domain_concepts_new (udc_id INTEGER PRIMARY KEY AUTOINCREMENT error:{uuid BLOB UNIQUE NOT NULL, schema TEXT, type INTEGER NOT NULL, deleted INTEGER NOT NULL, creation_date REAL NOT NULL, modification_date REAL NOT NULL, major_version INTEGER NOT NULL, minor_version INTEGER NOT NULL, patch_version INTEGER NOT NULL, build TEXT NOT NULL, sync_provenance INTEGER NOT NULL, sync_anchor INTEGER UNIQUE NOT NULL, sync_identity INTEGER NOT NULL)", a4}] || (v9 = objc_msgSend(v6, "fetchLegacySyncIdentity:error:", v7, a4), v9 == -1))
  {
    v13 = 1;
  }

  else
  {
    v10 = v9;
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO user_domain_concepts_new (udc_id, uuid, schema, type, deleted, creation_date, modification_date, major_version, minor_version, patch_version, build, sync_provenance, sync_anchor, sync_identity) SELECT udc_id, uuid, schema, type, deleted, creation_date, modification_date, major_version, minor_version, patch_version, build, sync_provenance, sync_anchor, ? FROM user_domain_concepts"];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = ___HDSyncIdentityUpdateForUserDomainConceptEntity_block_invoke;
    v16[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v16[4] = v10;
    if ([v8 executeSQL:v11 error:a4 bindingHandler:v16 enumerationHandler:0])
    {
      v17[0] = @"DROP TABLE user_domain_concepts";
      v17[1] = @"ALTER TABLE user_domain_concepts_new RENAME TO user_domain_concepts";
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
      v13 = [v8 executeSQLStatements:v12 error:a4] ^ 1;
    }

    else
    {
      v13 = 1;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t _HDSyncIdentityUpdateForOriginalFHIRResourceEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 protectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE original_fhir_resources_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{type TEXT NOT NULL, account_id INTEGER NOT NULL REFERENCES clinical_accounts (ROWID) ON DELETE CASCADE, id TEXT NOT NULL, sync_provenance INTEGER NOT NULL, raw_content BLOB NOT NULL, received_date REAL NOT NULL, received_date_timezone TEXT NOT NULL, fhir_version TEXT NOT NULL, source_url TEXT, extraction_hints INTEGER, origin_major_version INTEGER NOT NULL, origin_minor_version INTEGER NOT NULL, origin_patch_version INTEGER NOT NULL, origin_build TEXT NOT NULL, first_seen_date REAL NOT NULL, first_seen_date_timezone TEXT NOT NULL, sync_identity INTEGER NOT NULL, UNIQUE(type, account_id, id));", a4}] && (v9 = objc_msgSend(v6, "fetchLegacySyncIdentity:error:", v7, a4), v9 != -1) && (v14[0] = MEMORY[0x277D85DD0], v14[1] = 3221225472, v14[2] = ___HDSyncIdentityUpdateForOriginalFHIRResourceEntity_block_invoke, v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l, v14[4] = v9, objc_msgSend(v8, "executeSQL:error:bindingHandler:enumerationHandler:", @"INSERT INTO original_fhir_resources_new (ROWID, type, account_id, id, sync_provenance, raw_content, received_date, received_date_timezone, fhir_version, source_url, extraction_hints, origin_major_version, origin_minor_version, origin_patch_version, origin_build, first_seen_date, first_seen_date_timezone, sync_identity) SELECT ROWID, type, account_id, id, sync_provenance, raw_content, received_date, received_date_timezone, fhir_version, source_url, extraction_hints, origin_major_version, origin_minor_version, origin_patch_version, origin_build, first_seen_date, first_seen_date_timezone, ? FROM original_fhir_resources;", a4, v14, 0)))
  {
    v15[0] = @"DROP TABLE original_fhir_resources;";
    v15[1] = @"ALTER TABLE original_fhir_resources_new RENAME TO original_fhir_resources;";
    v15[2] = @"CREATE INDEX original_fhir_resources_source_url ON original_fhir_resources (source_url);";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    v11 = [v8 executeSQLStatements:v10 error:a4] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t _HDSyncIdentityUpdateForFHIRCredentialEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 protectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE clinical_credentials_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{identifier BLOB NOT NULL, sync_provenance INTEGER NOT NULL, expiration_date REAL, scope TEXT, patient_id TEXT, creation_date REAL NOT NULL, requested_scope TEXT NOT NULL, deleted INTEGER NOT NULL DEFAULT 0, sync_identity INTEGER NOT NULL);", a4}] && (v9 = objc_msgSend(v6, "fetchLegacySyncIdentity:error:", v7, a4), v9 != -1) && (v14[0] = MEMORY[0x277D85DD0], v14[1] = 3221225472, v14[2] = ___HDSyncIdentityUpdateForFHIRCredentialEntity_block_invoke, v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l, v14[4] = v9, objc_msgSend(v8, "executeSQL:error:bindingHandler:enumerationHandler:", @"INSERT INTO clinical_credentials_new (ROWID, identifier, sync_provenance, expiration_date, scope, patient_id, creation_date, requested_scope, deleted, sync_identity) SELECT ROWID, identifier, sync_provenance, expiration_date, scope, patient_id, creation_date, requested_scope, deleted, ? FROM clinical_credentials;", a4, v14, 0)))
  {
    v15[0] = @"DROP TABLE clinical_credentials;";
    v15[1] = @"ALTER TABLE clinical_credentials_new RENAME TO clinical_credentials;";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v11 = [v8 executeSQLStatements:v10 error:a4] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t _HDSyncIdentityUpdateForClinicalGatewayEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 protectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE clinical_gateways_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{external_id TEXT NOT NULL, last_reported_status INTEGER NOT NULL, revision INTEGER NOT NULL, raw_content BLOB NOT NULL, sync_anchor INTEGER NOT NULL UNIQUE, sync_provenance INTEGER NOT NULL, sync_identity INTEGER NOT NULL, UNIQUE(external_id));", a4}] && (v9 = objc_msgSend(v6, "fetchLegacySyncIdentity:error:", v7, a4), v9 != -1) && (v14[0] = MEMORY[0x277D85DD0], v14[1] = 3221225472, v14[2] = ___HDSyncIdentityUpdateForClinicalGatewayEntity_block_invoke, v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l, v14[4] = v9, objc_msgSend(v8, "executeSQL:error:bindingHandler:enumerationHandler:", @"INSERT INTO clinical_gateways_new (ROWID, external_id, last_reported_status, revision, raw_content, sync_anchor, sync_provenance, sync_identity) SELECT ROWID, external_id, last_reported_status, revision, raw_content, sync_anchor, sync_provenance, ? FROM clinical_gateways;", a4, v14, 0)))
  {
    v15[0] = @"DROP TABLE clinical_gateways;";
    v15[1] = @"ALTER TABLE clinical_gateways_new RENAME TO clinical_gateways;";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v11 = [v8 executeSQLStatements:v10 error:a4] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t _HDSyncIdentityUpdateForClinicalDeletedAccountEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 protectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE clinical_deleted_accounts_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{sync_identifier BLOB NOT NULL, deletion_date REAL NOT NULL, deletion_reason INTEGER NOT NULL, sync_provenance INTEGER NOT NULL, sync_identity INTEGER NOT NULL, UNIQUE(sync_identifier));", a4}] && (v9 = objc_msgSend(v6, "fetchLegacySyncIdentity:error:", v7, a4), v9 != -1) && (v14[0] = MEMORY[0x277D85DD0], v14[1] = 3221225472, v14[2] = ___HDSyncIdentityUpdateForClinicalDeletedAccountEntity_block_invoke, v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l, v14[4] = v9, objc_msgSend(v8, "executeSQL:error:bindingHandler:enumerationHandler:", @"INSERT INTO clinical_deleted_accounts_new (ROWID, sync_identifier, deletion_date, deletion_reason, sync_provenance, sync_identity) SELECT ROWID, sync_identifier, deletion_date, deletion_reason, sync_provenance, ? FROM clinical_deleted_accounts;", a4, v14, 0)))
  {
    v15[0] = @"DROP TABLE clinical_deleted_accounts;";
    v15[1] = @"ALTER TABLE clinical_deleted_accounts_new RENAME TO clinical_deleted_accounts;";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v11 = [v8 executeSQLStatements:v10 error:a4] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t _HDSyncIdentityUpdateForClinicalAccountEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 protectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE clinical_accounts_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{identifier BLOB NOT NULL UNIQUE, user_enabled_flag INTEGER NOT NULL, credential_state INTEGER NOT NULL, creation_date REAL NOT NULL, last_fetch_date REAL, last_full_fetch_date REAL, last_extracted_rowid INTEGER, last_submitted_rowid INTEGER, last_extracted_rules_version INTEGER, patient_hash TEXT, credential_id INTEGER REFERENCES clinical_credentials (ROWID) ON DELETE SET NULL, gateway_id INTEGER UNIQUE REFERENCES clinical_gateways (ROWID) ON DELETE SET NULL, signed_clinical_data_issuer_rowid INTEGER UNIQUE REFERENCES signed_clinical_data_issuer (ROWID) ON DELETE CASCADE, clinical_sharing_last_shared_date REAL, clinical_sharing_first_shared_date REAL, clinical_sharing_user_status INTEGER NOT NULL DEFAULT 0, clinical_sharing_multi_device_status INTEGER NOT NULL DEFAULT 0, clinical_sharing_primary_device_name TEXT, sync_identifier BLOB NOT NULL UNIQUE, modification_date REAL NOT NULL, last_failed_fetch_date REAL, failed_fetch_attempts_count INTEGER, sync_anchor INTEGER NOT NULL UNIQUE, sync_provenance INTEGER NOT NULL, sync_identity INTEGER NOT NULL, CHECK ((gateway_id IS NOT NULL AND signed_clinical_data_issuer_rowid IS NULL) OR (gateway_id IS NULL AND signed_clinical_data_issuer_rowid IS NOT NULL)));", a4}] && (v9 = objc_msgSend(v6, "fetchLegacySyncIdentity:error:", v7, a4), v9 != -1) && (v14[0] = MEMORY[0x277D85DD0], v14[1] = 3221225472, v14[2] = ___HDSyncIdentityUpdateForClinicalAccountEntity_block_invoke, v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l, v14[4] = v9, objc_msgSend(v8, "executeSQL:error:bindingHandler:enumerationHandler:", @"INSERT INTO clinical_accounts_new (ROWID, identifier, user_enabled_flag, credential_state, creation_date, last_fetch_date, last_full_fetch_date, last_extracted_rowid, last_submitted_rowid, last_extracted_rules_version, patient_hash, credential_id, gateway_id, signed_clinical_data_issuer_rowid, clinical_sharing_last_shared_date, clinical_sharing_first_shared_date, clinical_sharing_user_status, clinical_sharing_multi_device_status, clinical_sharing_primary_device_name, sync_identifier, modification_date, last_failed_fetch_date, failed_fetch_attempts_count, sync_anchor, sync_provenance, sync_identity) SELECT ROWID, identifier, user_enabled_flag, credential_state, creation_date, last_fetch_date, last_full_fetch_date, last_extracted_rowid, last_submitted_rowid, last_extracted_rules_version, patient_hash, credential_id, gateway_id, signed_clinical_data_issuer_rowid, clinical_sharing_last_shared_date, clinical_sharing_first_shared_date, clinical_sharing_user_status, clinical_sharing_multi_device_status, clinical_sharing_primary_device_name, sync_identifier, modification_date, last_failed_fetch_date, failed_fetch_attempts_count, sync_anchor, sync_provenance, ? FROM clinical_accounts;", a4, v14, 0)))
  {
    v15[0] = @"DROP TABLE clinical_accounts;";
    v15[1] = @"ALTER TABLE clinical_accounts_new RENAME TO clinical_accounts;";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v11 = [v8 executeSQLStatements:v10 error:a4] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t _HDSyncIdentityUpdateForSharingRelationshipEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 protectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE sharing_relationship_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{recipient TEXT UNIQUE NOT NULL, date_modified REAL NOT NULL, sync_provenance INTEGER NOT NULL, sync_identity INTEGER NOT NULL);", a4}] && (v9 = objc_msgSend(v6, "fetchLegacySyncIdentity:error:", v7, a4), v9 != -1) && (v14[0] = MEMORY[0x277D85DD0], v14[1] = 3221225472, v14[2] = ___HDSyncIdentityUpdateForSharingRelationshipEntity_block_invoke, v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l, v14[4] = v9, objc_msgSend(v8, "executeSQL:error:bindingHandler:enumerationHandler:", @"INSERT INTO sharing_relationship_new (ROWID, recipient, date_modified, sync_provenance, sync_identity) SELECT ROWID, recipient, date_modified, sync_provenance, ? FROM sharing_relationship;", a4, v14, 0)))
  {
    v15[0] = @"DROP TABLE sharing_relationship;";
    v15[1] = @"ALTER TABLE sharing_relationship_new RENAME TO sharing_relationship;";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v11 = [v8 executeSQLStatements:v10 error:a4] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t _HDSyncIdentityUpdateForAssociationsAndPendingAssociationsEntities(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 protectedDatabase];
  v20[0] = @"CREATE TABLE associations (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, parent_id INTEGER REFERENCES objects (data_id) ON DELETE CASCADE, child_id INTEGER REFERENCES objects (data_id) ON DELETE CASCADE, sync_provenance INTEGER, sync_identity INTEGER NOT NULL, UNIQUE(parent_id, child_id))";
  v20[1] = @"CREATE TABLE pending_associations_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, parent_uuid BLOB NOT NULL, child_uuid BLOB NOT NULL, sync_provenance INTEGER NOT NULL, sync_identity INTEGER NOT NULL, UNIQUE(parent_uuid, child_uuid))";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:2];
  v10 = [v8 executeSQLStatements:v9 error:a4];

  if (!v10 || (v11 = [v6 fetchLegacySyncIdentity:v7 error:a4], v11 == -1))
  {
    v15 = 1;
  }

  else
  {
    v12 = v11;
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO associations (ROWID, parent_id, child_id, sync_provenance, sync_identity) SELECT ROWID, correlation, object, provenance, ? FROM correlations"];;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = ___HDSyncIdentityUpdateForAssociationsAndPendingAssociationsEntities_block_invoke;
    v19[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
    v19[4] = v12;
    if ([v8 executeSQL:v13 error:a4 bindingHandler:v19 enumerationHandler:0])
    {
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSERT INTO pending_associations_new (ROWID, parent_uuid, child_uuid, sync_provenance, sync_identity) SELECT ROWID, parent_uuid, child_uuid, provenance, ? FROM pending_associations"];;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = ___HDSyncIdentityUpdateForAssociationsAndPendingAssociationsEntities_block_invoke_2;
      v18[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
      v18[4] = v12;
      if ([v8 executeSQL:v14 error:a4 bindingHandler:v18 enumerationHandler:0])
      {
        v15 = [v8 executeSQLStatements:&unk_283CB00F0 error:a4] ^ 1;
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t _HDSyncIdentityUpdateForDataProvenanceEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 protectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE data_provenances_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{sync_provenance INTEGER NOT NULL, origin_product_type TEXT NOT NULL, origin_build TEXT NOT NULL, local_product_type TEXT NOT NULL, local_build TEXT NOT NULL, source_id INTEGER NOT NULL, device_id INTEGER NOT NULL, contributor_id INTEGER NOT NULL, source_version TEXT NOT NULL, tz_name TEXT NOT NULL, origin_major_version INTEGER NOT NULL, origin_minor_version INTEGER NOT NULL, origin_patch_version INTEGER NOT NULL, sync_identity INTEGER NOT NULL, derived_flags INTEGER NOT NULL, UNIQUE(sync_provenance, origin_product_type, origin_build, local_product_type, local_build, source_id, device_id, contributor_id, source_version, tz_name, origin_major_version, origin_minor_version, origin_patch_version, sync_identity));", a4}] && (v9 = objc_msgSend(v6, "fetchLegacySyncIdentity:error:", v7, a4), v9 != -1) && (v14[0] = MEMORY[0x277D85DD0], v14[1] = 3221225472, v14[2] = ___HDSyncIdentityUpdateForDataProvenanceEntity_block_invoke, v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l, v14[4] = v9, objc_msgSend(v8, "executeSQL:error:bindingHandler:enumerationHandler:", @"INSERT INTO data_provenances_new (ROWID, sync_provenance, origin_product_type, origin_build, local_product_type, local_build, source_id, device_id, contributor_id, source_version, tz_name, origin_major_version, origin_minor_version, origin_patch_version, sync_identity, derived_flags) SELECT ROWID, sync_provenance, origin_product_type, origin_build, local_product_type, local_build, source_id, device_id, contributor_id, source_version, tz_name, origin_major_version, origin_minor_version, origin_patch_version, ?, derived_flags FROM data_provenances;", a4, v14, 0)))
  {
    v15[0] = @"DROP TABLE data_provenances;";
    v15[1] = @"ALTER TABLE data_provenances_new RENAME TO data_provenances;";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v11 = [v8 executeSQLStatements:v10 error:a4] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t _HDSyncIdentityUpdateForContributorEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 protectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE contributors_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{uuid BLOB UNIQUE NOT NULL, apple_id TEXT, caller_id TEXT, deleted INTEGER NOT NULL, mod_date REAL NOT NULL, sync_anchor INTEGER UNIQUE NOT NULL, sync_provenance INTEGER NOT NULL, primary_user INTEGER NOT NULL, sync_identity INTEGER NOT NULL);", a4}] && (v9 = objc_msgSend(v6, "fetchLegacySyncIdentity:error:", v7, a4), v9 != -1) && (v14[0] = MEMORY[0x277D85DD0], v14[1] = 3221225472, v14[2] = ___HDSyncIdentityUpdateForContributorEntity_block_invoke, v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l, v14[4] = v9, objc_msgSend(v8, "executeSQL:error:bindingHandler:enumerationHandler:", @"INSERT INTO contributors_new (ROWID, uuid, apple_id, caller_id, deleted, mod_date, sync_anchor, sync_provenance, primary_user, sync_identity) SELECT ROWID, uuid, apple_id, caller_id, deleted, mod_date, sync_anchor, sync_provenance, primary_user, ? FROM contributors;", a4, v14, 0)))
  {
    v15[0] = @"DROP TABLE contributors;";
    v15[1] = @"ALTER TABLE contributors_new RENAME TO contributors;";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v11 = [v8 executeSQLStatements:v10 error:a4] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t _HDSyncIdentityUpdateForProtectedKeyValueEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 protectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE key_value_secure_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{category INTEGER NOT NULL, domain TEXT NOT NULL, key TEXT NOT NULL, value, provenance INTEGER NOT NULL, mod_date REAL NOT NULL, sync_identity INTEGER NOT NULL, UNIQUE(category, domain, key));", a4}] && (v9 = objc_msgSend(v6, "fetchLegacySyncIdentity:error:", v7, a4), v9 != -1) && (v14[0] = MEMORY[0x277D85DD0], v14[1] = 3221225472, v14[2] = ___HDSyncIdentityUpdateForProtectedKeyValueEntity_block_invoke, v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l, v14[4] = v9, objc_msgSend(v8, "executeSQL:error:bindingHandler:enumerationHandler:", @"INSERT INTO key_value_secure_new (ROWID, category, domain, key, value, provenance, mod_date, sync_identity) SELECT ROWID, category, domain, key, value, provenance, mod_date, ? FROM key_value_secure;", a4, v14, 0)))
  {
    v15[0] = @"DROP TABLE key_value_secure;";
    v15[1] = @"ALTER TABLE key_value_secure_new RENAME TO key_value_secure;";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v11 = [v8 executeSQLStatements:v10 error:a4] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t _HDSyncIdentityUpdateForObjectAuthorizationEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = a1;
  v7 = a2;
  v8 = [v7 protectedDatabase];
  if ([v8 executeUncachedSQL:@"CREATE TABLE object_authorizations_new (ROWID INTEGER PRIMARY KEY AUTOINCREMENT error:{object BLOB NOT NULL REFERENCES objects (uuid) ON DELETE CASCADE, source BLOB NOT NULL, status INTEGER NOT NULL, sync_provenance INTEGER NOT NULL, modification_date REAL NOT NULL, session BLOB, sync_identity INTEGER NOT NULL, UNIQUE(object, source, sync_provenance, sync_identity));", a4}] && (v9 = objc_msgSend(v6, "fetchLegacySyncIdentity:error:", v7, a4), v9 != -1) && (v14[0] = MEMORY[0x277D85DD0], v14[1] = 3221225472, v14[2] = ___HDSyncIdentityUpdateForObjectAuthorizationEntity_block_invoke, v14[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l, v14[4] = v9, objc_msgSend(v8, "executeSQL:error:bindingHandler:enumerationHandler:", @"INSERT INTO object_authorizations_new (ROWID, object, source, status, sync_provenance, modification_date, session, sync_identity) SELECT ROWID, object, source, status, sync_provenance, modification_date, session, ? FROM object_authorizations;", a4, v14, 0)))
  {
    v15[0] = @"DROP TABLE object_authorizations;";
    v15[1] = @"ALTER TABLE object_authorizations_new RENAME TO object_authorizations;";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v11 = [v8 executeSQLStatements:v10 error:a4] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t _HDAddMedicalDownloadableAttachmentsTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CB0108 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddClinicalNoteRecordSamplesTable(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = [a2 protectedDatabase];
  v6 = [v5 executeSQLStatements:&unk_283CB0120 error:a4] ^ 1;

  return v6;
}

uint64_t _HDAddUniquenessChecksumToOriginalFHIRResourceEntity(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  if ([v6 executeSQLStatements:&unk_283CB0138 error:a4])
  {
    v8 = [v7 protectedDatabase];
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = ___HDAddUniquenessChecksumToOriginalFHIRResourceEntity_block_invoke;
    v15 = &unk_2786140C0;
    v16 = v8;
    v17 = @"UPDATE original_fhir_resources_new SET uniqueness_checksum = ? WHERE ROWID = ?";
    v9 = v8;
    if ([v9 executeUncachedSQL:@"SELECT ROWID error:raw_content FROM original_fhir_resources_new" bindingHandler:a4 enumerationHandler:{0, &v12}])
    {
      v10 = [v6 executeSQLStatements:&unk_283CB0150 error:{a4, v12, v13, v14, v15, v16, v17}] ^ 1;
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

uint64_t _HDAdvanceUDCSyncAnchors(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v7 = a2;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v8 = [v7 unprotectedDatabase];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = ___HDAdvanceUDCSyncAnchors_block_invoke;
  v28[3] = &unk_278614620;
  v28[4] = &v29;
  v9 = [v8 executeUncachedSQL:@"SELECT MAX(next) from sync_anchors WHERE schema=main AND type=59" error:a4 bindingHandler:0 enumerationHandler:v28];

  if (v9)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v10 = [v7 protectedDatabase];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___HDAdvanceUDCSyncAnchors_block_invoke_2;
    v23[3] = &unk_278614620;
    v23[4] = &v24;
    v11 = [v10 executeUncachedSQL:@"SELECT MIN(sync_anchor) from user_domain_concepts" error:a4 bindingHandler:0 enumerationHandler:v23];

    if (v11)
    {
      v12 = 0;
      v13 = v25[3];
      if (v13)
      {
        v14 = v30[3];
        v15 = v14 - v13;
        if (v14 >= v13)
        {
          v16 = [v7 protectedDatabase];
          v19[0] = MEMORY[0x277D85DD0];
          v19[1] = 3221225472;
          v19[2] = ___HDAdvanceUDCSyncAnchors_block_invoke_3;
          v19[3] = &unk_278619E70;
          v20 = v7;
          v21 = @"UPDATE user_domain_concepts SET sync_anchor = (sync_anchor + ?) WHERE udc_id = ?";
          v22 = v15 + 1;
          v17 = [v16 executeUncachedSQL:@"SELECT udc_id FROM user_domain_concepts ORDER BY sync_anchor DESC" error:a4 bindingHandler:0 enumerationHandler:v19];

          v12 = v17 ^ 1u;
        }
      }
    }

    else
    {
      v12 = 1;
    }

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v12 = 1;
  }

  _Block_object_dispose(&v29, 8);

  return v12;
}

void sub_228E55F94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 112), 8);
  _Unwind_Resume(a1);
}

BOOL _HDAssignWorkoutDatabaseMigrationError(void *a1, void *a2, void *a3, void *a4)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = [v9 UUIDString];
    v13 = [v11 stringWithFormat:@"%@ for workout %@", v7, v12];
  }

  else
  {
    v13 = v7;
  }

  v20 = *MEMORY[0x277CCBDA8];
  v21[0] = v13;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v15 = [v8 hk_errorByAddingEntriesToUserInfo:v14];

  v16 = v15;
  if (v16)
  {
    if (a1)
    {
      v17 = v16;
      *a1 = v16;
    }

    else
    {
      _HKLogDroppedError();
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16 == 0;
}

void sub_228E569AC(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 232), 8);
  _Block_object_dispose((v1 - 184), 8);
  _Block_object_dispose((v1 - 152), 8);
  _Unwind_Resume(a1);
}

uint64_t _HDInsertStatisticsForColumnAndDataType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, double a7)
{
  v13 = a5;
  if (MEMORY[0x22AAC6CD0](a1, a2))
  {
    v14 = 1;
  }

  else
  {
    v15 = MEMORY[0x22AAC6C50](a1, a2);
    v17[1] = 3221225472;
    v17[0] = MEMORY[0x277D85DD0];
    v17[2] = ___HDInsertStatisticsForColumnAndDataType_block_invoke_2;
    v17[3] = &__block_descriptor_56_e23_v16__0__sqlite3_stmt__8l;
    v17[4] = a4;
    v17[5] = a3;
    *&v17[6] = v15 * a7;
    v14 = [v13 executeCachedStatementForKey:&_HDInsertStatisticsForColumnAndDataType_insertionKey error:a6 SQLGenerator:&__block_literal_global_642 bindingHandler:v17 enumerationHandler:0];
  }

  return v14;
}

uint64_t _HDDistanceTypeCodeForActivityType(uint64_t a1)
{
  if (a1 > 66)
  {
    if ((a1 - 70) < 2)
    {
      return 113;
    }

    if (a1 != 67)
    {
      return 8;
    }

    return 138;
  }

  if (a1 == 13)
  {
    return 83;
  }

  if (a1 != 46)
  {
    if (a1 != 61)
    {
      return 8;
    }

    return 138;
  }

  return 110;
}

uint64_t __Block_byref_object_copy__155(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _HDDeleteQuantitySamplesOfType(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = [v5 protectedDatabase];
  v11 = v5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = ___HDDeleteQuantitySamplesOfType_block_invoke;
  v12[3] = &__block_descriptor_40_e23_v16__0__sqlite3_stmt__8l;
  v12[4] = a2;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = ___HDDeleteQuantitySamplesOfType_block_invoke_2;
  v10[3] = &unk_278614098;
  v7 = v5;
  v8 = [v6 executeUncachedSQL:@"SELECT data_id error:hfd_key FROM objects INNER JOIN samples USING (data_id) INNER JOIN quantity_samples USING (data_id) LEFT JOIN quantity_sample_series USING(data_id) WHERE type=1 AND data_type=?" bindingHandler:a3 enumerationHandler:{v12, v10}];

  return v8;
}

uint64_t _HDReplaceStatisticsForColumnAndDataType(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, double a7)
{
  v13 = a5;
  if (MEMORY[0x22AAC6CD0](a1, a2))
  {
    v14 = 1;
  }

  else
  {
    v15 = MEMORY[0x22AAC6C50](a1, a2);
    v17[1] = 3221225472;
    v17[0] = MEMORY[0x277D85DD0];
    v17[2] = ___HDReplaceStatisticsForColumnAndDataType_block_invoke_2;
    v17[3] = &__block_descriptor_56_e23_v16__0__sqlite3_stmt__8l;
    v17[4] = a4;
    v17[5] = a3;
    *&v17[6] = v15 * a7;
    v14 = [v13 executeCachedStatementForKey:&_HDReplaceStatisticsForColumnAndDataType_insertionKey error:a6 SQLGenerator:&__block_literal_global_1058 bindingHandler:v17 enumerationHandler:0];
  }

  return v14;
}

void sub_228E59454(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__156(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228E59AD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_228E5A550(_Unwind_Exception *a1)
{
  _Block_object_dispose((v4 - 112), 8);

  _Unwind_Resume(a1);
}

void sub_228E5A9C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_228E5AE44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_228E5B234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_228E5B9D8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v4 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_228E5DCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, id a46)
{
  _Block_object_dispose(&a35, 8);

  _Block_object_dispose(&a41, 8);
  _Unwind_Resume(a1);
}

void sub_228E5E670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    v68[16] = __p;
    operator delete(__p);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v66 + 80);

  if (a46)
  {
    operator delete(a46);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(&a57);
  _Unwind_Resume(a1);
}

void sub_228E5E928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v30 + 112);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_112c97_ZTSNSt3__113unordered_setI15_HKDataTypeCodeNS_4hashIS1_EENS_8equal_toIS1_EENS_9allocatorIS1_EEEE152c23_ZTS14HKIntervalMaskIdE(void *a1, uint64_t a2)
{
  std::unordered_set<_HKDataTypeCode>::unordered_set((a1 + 14), a2 + 112);
  a1[19] = 0;
  a1[20] = 0;
  a1[21] = 0;
  return std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 19), *(a2 + 152), *(a2 + 160), (*(a2 + 160) - *(a2 + 152)) >> 4);
}

uint64_t __destroy_helper_block_ea8_112c97_ZTSNSt3__113unordered_setI15_HKDataTypeCodeNS_4hashIS1_EENS_8equal_toIS1_EENS_9allocatorIS1_EEEE152c23_ZTS14HKIntervalMaskIdE(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    *(a1 + 160) = v2;
    operator delete(v2);
  }

  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 112);
}

uint64_t __copy_helper_block_ea8_80c97_ZTSNSt3__113unordered_setI15_HKDataTypeCodeNS_4hashIS1_EENS_8equal_toIS1_EENS_9allocatorIS1_EEEE120c23_ZTS14HKIntervalMaskIdE(void *a1, uint64_t a2)
{
  std::unordered_set<_HKDataTypeCode>::unordered_set((a1 + 10), a2 + 80);
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  return std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>((a1 + 15), *(a2 + 120), *(a2 + 128), (*(a2 + 128) - *(a2 + 120)) >> 4);
}

uint64_t __destroy_helper_block_ea8_80c97_ZTSNSt3__113unordered_setI15_HKDataTypeCodeNS_4hashIS1_EENS_8equal_toIS1_EENS_9allocatorIS1_EEEE120c23_ZTS14HKIntervalMaskIdE(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(a1 + 80);
}

id HDPredicateForWorkoutBuilderWithIdentifier(uint64_t a1)
{
  v1 = [MEMORY[0x277D10B18] predicateWithProperty:@"uuid" equalToValue:a1];

  return v1;
}

void sub_228E60B90(_Unwind_Exception *a1)
{
  if (v6)
  {
    objc_end_catch();
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<HKRawInterval<double>>::__init_with_size[abi:ne200100]<HKRawInterval<double>*,HKRawInterval<double>*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<HKRawInterval<double>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_228E60D7C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<HKRawInterval<double>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HKRawInterval<double>>>(a1, a2);
  }

  std::vector<std::unique_ptr<statistics::Interval>>::__throw_length_error[abi:ne200100]();
}

void std::__hash_table<_HKDataTypeCode,std::hash<_HKDataTypeCode>,std::equal_to<_HKDataTypeCode>,std::allocator<_HKDataTypeCode>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t std::unordered_set<_HKDataTypeCode>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<_HKDataTypeCode,std::hash<_HKDataTypeCode>,std::equal_to<_HKDataTypeCode>,std::allocator<_HKDataTypeCode>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = i[2];
    v6 = *(a1 + 8);
    if (!*&v6)
    {
      goto LABEL_18;
    }

    v7 = vcnt_s8(v6);
    v7.i16[0] = vaddlv_u8(v7);
    if (v7.u32[0] > 1uLL)
    {
      v8 = i[2];
      if (*&v6 <= v5)
      {
        v8 = v5 % *&v6;
      }
    }

    else
    {
      v8 = (*&v6 - 1) & v5;
    }

    v9 = *(*a1 + 8 * v8);
    if (!v9 || (v10 = *v9) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v11 = v10[1];
      if (v11 == v5)
      {
        break;
      }

      if (v7.u32[0] > 1uLL)
      {
        if (v11 >= *&v6)
        {
          v11 %= *&v6;
        }
      }

      else
      {
        v11 &= *&v6 - 1;
      }

      if (v11 != v8)
      {
        goto LABEL_18;
      }

LABEL_17:
      v10 = *v10;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

    if (v10[2] != v5)
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void __cxx_global_array_dtor_2()
{
  v0 = &off_27D869430;
  v1 = -360;
  do
  {

    v0 -= 3;
    v1 += 24;
  }

  while (v1);
}

__n128 __copy_helper_block_ea8_32c112_ZTSKZ99__HDLocationSeriesHFDMigrationEntity_migrateDataFromDataStore_to_database_recoveryAnalytics_error__E3__0(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

void sub_228E61FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v17 = v16;

  _Unwind_Resume(a1);
}

void sub_228E62834(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void sub_228E62CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 buf, char a20)
{
  if (a2)
  {

    v24 = __cxa_begin_catch(exception_object);
    if (a2 == 2)
    {
      v25 = v24;
      _HKInitializeLogging();
      v26 = *v21;
      if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(*v25 + 16);
        v28 = v26;
        v29 = v27(v25);
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v29;
        _os_log_impl(&dword_228986000, v28, OS_LOG_TYPE_DEFAULT, "Caught std::exception during ignore block; ignoring: %s", &buf, 0xCu);
      }
    }

    else
    {
      _HKInitializeLogging();
      v30 = *v21;
      if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_228986000, v30, OS_LOG_TYPE_DEFAULT, "Caught unknown during ignore block; ignoring.", &buf, 2u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x228E62C0CLL);
  }

  _Unwind_Resume(exception_object);
}

__n128 _ZNKSt3__110__function6__funcIZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvEUlRKSD_E_NS_9allocatorISR_EEFvRKNS5_13SampleHistoryIS3_EEEE7__cloneEPNS0_6__baseISY_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BEBBD0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvEUlRKSD_E_NS_9allocatorISR_EEFvRKNS5_13SampleHistoryIS3_EEEEclESX_(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3321888768;
  v5[2] = ___ZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO__block_invoke;
  v5[3] = &__block_descriptor_72_ea8_32c276_ZTSKZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_EUlSL_E__e9_B16__0__8l;
  v2 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = v2;
  v8 = a2;
  v3 = *(a1 + 40);
  v9 = *(a1 + 32);
  if (v3)
  {
    obj = *v3;
    hfd_catchExceptionsAsErrors(v5, &obj, 0);
    objc_storeStrong(v3, obj);
  }

  else
  {
    hfd_catchExceptionsAsErrors(v5, 0, 0);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvEUlRKSD_E_NS_9allocatorISR_EEFvRKNS5_13SampleHistoryIS3_EEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvEUlRKSB_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO__block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v5 = 0;
  v1 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v3 = a1[7];
  v7 = 0;
  operator new();
}

__n128 __copy_helper_block_ea8_32c276_ZTSKZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_EUlSL_E_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

__n128 _ZNKSt3__110__function6__funcIZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_EUlRSD_E_NS_9allocatorISY_EEFbRNS5_20MutableSampleHistoryIS3_EEEE7__cloneEPNS0_6__baseIS14_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BEBC70;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_EUlRSD_E_NS_9allocatorISY_EEFbRNS5_20MutableSampleHistoryIS3_EEEEclES13_(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  operator new();
}

void sub_228E63544(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(bufa, a4);
  buf = va_arg(va1, _OWORD);
  v15 = va_arg(va1, void);
  if (a2)
  {
    std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV1 const&)>::~__value_func[abi:ne200100](va1);
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v7 = v6;
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*v7 + 16);
        v10 = v8;
        v11 = v9(v7);
        LODWORD(buf) = 136315138;
        *(bufa + 4) = v11;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Caught std::exception during ignore block; ignoring: %s", bufa, 0xCu);
      }
    }

    else
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Caught unknown during ignore block; ignoring.", bufa, 2u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x228E63510);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_EUlRSD_E_NS_9allocatorISY_EEFbRNS5_20MutableSampleHistoryIS3_EEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_ENKUlSL_E_clESL_EUlRSB_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_ENKUlRSD_E_clINS5_20MutableSampleHistoryIS3_EEEEbSX_ENKUlvE_clEvEUlSQ_RKSB_E_NS_9allocatorIS15_EEFbRKdRK21_HDRawLocationDatumV1EE7__cloneEPNS0_6__baseIS1D_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BEBCE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_ENKUlRSD_E_clINS5_20MutableSampleHistoryIS3_EEEEbSX_ENKUlvE_clEvEUlSQ_RKSB_E_NS_9allocatorIS15_EEFbRKdRK21_HDRawLocationDatumV1EEclES19_S1C_(void *a1, void **a2, __int128 *a3)
{
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v4 = a1[1];
  v5 = *a2;
  v6 = a3[1];
  v13 = *a3;
  v14 = v6;
  v15 = *(a3 + 4);
  v7 = *(v4 + 24);
  v23 = v5;
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v7 + 48))(&v20);
  *&v13 = MEMORY[0x277D85DD0];
  *(&v13 + 1) = 3221225472;
  *&v14 = ___ZZZZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_ENKUlSL_E_clESL_ENKUlRSB_E_clINS2_20MutableSampleHistoryIS0_EEEEbSV_ENKUlvE_clEvENKUlSO_RKS9_E_clId21_HDRawLocationDatumV1EEbSO_S12__block_invoke;
  *(&v14 + 1) = &__block_descriptor_88_e9_B16__0__8l;
  v9 = a1[3];
  v15 = a1[2];
  v16 = a2;
  v17 = v20;
  v18 = v21;
  v19 = v22;
  if (v9)
  {
    v10 = &v23;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v23 = *v9;
  }

  v11 = hfd_catchExceptionsAsErrors(&v13, v10, 0);
  if (v9)
  {
    objc_storeStrong(v9, v23);
  }

  return v11;
}

void sub_228E638C4(void *a1)
{
  __cxa_begin_catch(a1);
  **(v1 + 32) = 1;
  __cxa_end_catch();
  JUMPOUT(0x228E638A4);
}

uint64_t _ZNKSt3__110__function6__funcIZZZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_ENKUlRSD_E_clINS5_20MutableSampleHistoryIS3_EEEEbSX_ENKUlvE_clEvEUlSQ_RKSB_E_NS_9allocatorIS15_EEFbRKdRK21_HDRawLocationDatumV1EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV1S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_ENKUlSL_E_clESL_ENKUlRSB_E_clINS2_20MutableSampleHistoryIS0_EEEEbSV_ENKUlvE_clEvEUlSO_RKS9_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<void health::DataStore::deleteSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<void health::DataStore::deleteSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BEBD70;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void health::DataStore::deleteSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<void health::DataStore::deleteSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::operator()(uint64_t a1, health::DataStore::WriteTransaction *a2)
{
  v7 = 0u;
  v8 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = a2;
  v13 = a2;
  HistoryRoot = health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::loadHistoryRoot(v6, *(a1 + 8), 0);
  if (HistoryRoot)
  {
    v16[0] = 0;
    v16[1] = 0;
    v16[2] = v13 + 80;
    v16[3] = v13 + 80;
    if (v7 != 0)
    {
      v14 = v7;
      v15 = v16;
      memset(__src, 0, 411);
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v13 + 10, v7, *(&v7 + 1), __src);
      memcpy(__dst, __src, sizeof(__dst));
      health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_removeSubtree<health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::deleteAllSamples(void)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1}>(&v14, 0, &v14, __dst);
    }

    v9 = 0;
    health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::_updateHistoryRoot(v6);
    health::DataStore::WriteTransaction::removeObjectWithIdentifier(a2, *(a1 + 8));
  }

  return HistoryRoot;
}

uint64_t std::__function::__func<void health::DataStore::deleteSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<void health::DataStore::deleteSampleHistory<LocationHistoryBehaviorV1>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_removeSubtree<health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::deleteAllSamples(void)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1}>(uint64_t a1, int a2, unint64_t *a3, uint64_t a4)
{
  if (*(a4 + 408))
  {
    v8 = 0;
    do
    {
      if (*(a4 + 410) == 1)
      {
        v9 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v8);
        health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_removeLeaf<health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::deleteAllSamples(void)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1}>(a1, v9 + 8);
      }

      else
      {
        health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_interiorChildAtIndex(a1, a2, a4, v8, __src);
        v10 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v8);
        memcpy(v12, __src, sizeof(v12));
        health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_removeSubtree<health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::deleteAllSamples(void)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1}>(a1, (a2 + 1), v10 + 8, v12);
      }

      ++v8;
    }

    while (v8 < *(a4 + 408));
  }

  return health::BlockAccessFile::WriteTransaction::freeBlock(*(*(a1 + 16) + 24), *a3, a3[1]);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV1>>::_removeLeaf<health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV1>::deleteAllSamples(void)::{lambda(double const&,_HDRawLocationDatumV1 const&)#1}>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  bzero(v11, 0x332uLL);
  v13 = 0u;
  v14 = 0u;
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(v4 + 24), *a2, *(a2 + 8), v11);
  if (v12)
  {
    for (i = 0; i < v12; health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](v11, i++))
    {
      health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>::ValueEntry,17ul>::operator[](v11, i);
    }
  }

  v6 = *(a1 + 16);
  v8 = *(&v14 + 1);
  v7 = v14;
  if (v14 != *v6)
  {
    bzero(v15, 0x332uLL);
    v16 = 0u;
    v17 = 0u;
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(v6 + 24), v7, v8, v15);
    v16 = v13;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v14, *(&v14 + 1), v15);
    v6 = *(a1 + 16);
    v7 = *v6;
  }

  v9 = v13;
  if (v13 != __PAIR128__(*(v6 + 8), v7))
  {
    bzero(v15, 0x332uLL);
    v16 = 0u;
    v17 = 0u;
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(v6 + 24), v9, *(&v9 + 1), v15);
    v17 = v14;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV1,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v13, *(&v13 + 1), v15);
    v6 = *(a1 + 16);
  }

  return health::BlockAccessFile::WriteTransaction::freeBlock(*(v6 + 24), *a2, *(a2 + 8));
}

uint64_t std::__function::__value_func<_HDRawLocationDatumV1 ()(double,_HDRawLocationDatumV1)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 _ZNKSt3__110__function6__funcIZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvEUlRKSD_E_NS_9allocatorISR_EEFvRKNS5_13SampleHistoryIS3_EEEE7__cloneEPNS0_6__baseISY_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BEBF10;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvEUlRKSD_E_NS_9allocatorISR_EEFvRKNS5_13SampleHistoryIS3_EEEEclESX_(uint64_t a1, uint64_t a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3321888768;
  v5[2] = ___ZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO__block_invoke;
  v5[3] = &__block_descriptor_72_ea8_32c276_ZTSKZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_EUlSL_E__e9_B16__0__8l;
  v2 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = v2;
  v8 = a2;
  v3 = *(a1 + 40);
  v9 = *(a1 + 32);
  if (v3)
  {
    obj = *v3;
    hfd_catchExceptionsAsErrors(v5, &obj, 0);
    objc_storeStrong(v3, obj);
  }

  else
  {
    hfd_catchExceptionsAsErrors(v5, 0, 0);
  }
}

uint64_t _ZNKSt3__110__function6__funcIZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvEUlRKSD_E_NS_9allocatorISR_EEFvRKNS5_13SampleHistoryIS3_EEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvEUlRKSB_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ___ZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO__block_invoke(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v5 = 0;
  v1 = a1[4];
  v2 = a1[5];
  v4 = a1[6];
  v3 = a1[7];
  v7 = 0;
  operator new();
}

__n128 __copy_helper_block_ea8_32c276_ZTSKZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_EUlSL_E_(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  v3 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = result;
  *(a1 + 48) = v3;
  return result;
}

__n128 std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2> &)>)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2> &)>)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BEBFB0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2> &)>)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2> &)>)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::operator()(uint64_t a1, uint64_t a2)
{
  v8 = 0u;
  v7 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = a2;
  v12 = a2;
  HistoryRoot = health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2>::loadHistoryRoot(v6, *(a1 + 8), **(a1 + 16));
  v4 = *(*(a1 + 24) + 24);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, v6, HistoryRoot);
}

uint64_t std::__function::__func<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2> &)>)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<BOOL health::DataStore::accessSampleHistoryWithIdentifierForWriting<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&,BOOL,std::function<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2> &)>)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2>::loadHistoryRoot(uint64_t a1, ObjectIdentifier *a2, int a3)
{
  *(a1 + 72) = *a2;
  v5 = *(a1 + 96);
  health::DataStore::ReadTransaction::_pointerForObject(v5, a2, v10);
  if (v10[16] == 1)
  {
    v6 = *(v5 + 3);
    v7 = health::Optional<health::BlockPointer>::get(v10);
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::DataStore::SampleHistory<LocationHistoryBehaviorV1>::SampleHistoryRoot>(v6, *v7, *(v7 + 8), a1);
  }

  else
  {
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      _ZN6health15not_found_errorCI1St13runtime_errorEPKc(exception, "The requested sample history does not exist.");
    }

    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 48) = 0;

    *&result = health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2>::_updateHistoryRoot(a1).n128_u64[0];
  }

  return result;
}

__n128 health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2>::_updateHistoryRoot(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (*(a1 + 64) != 56)
  {
    v16 = *(v2 + 32);
    v17 = v2 + 48;
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::valueForKey<health::DataStore::ObjectIdentifier>(&v16, (a1 + 72), 0, v14);
    if (v15)
    {
      v5 = *(health::Optional<health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(v14) + 24);
      v6 = health::Optional<health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::LookupResult>::operator->(v14);
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v5 == 56)
      {
        health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::SampleHistoryRoot>(v2 + 80, v7, v8, a1);
LABEL_10:
        health::DataStore::ReadTransaction::_pointerForObject(*(a1 + 96), (a1 + 72), v14);
        v12 = health::Optional<health::BlockPointer>::get(v14);
        result = *v12;
        *(a1 + 56) = *v12;
        return result;
      }

      health::BlockAccessFile::WriteTransaction::freeBlock(v2 + 80, v7, v8);
    }

    v9 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength((v2 + 80), 56);
    v11 = v10;
    health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::SampleHistoryRoot>(v2 + 80, v9, v10, a1);
    v13.n128_u64[0] = v9;
    v13.n128_u64[1] = v11;
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<health::DataStore::ObjectIdentifier,health::BlockPointer>>::setValueForKey(&v16, (a1 + 72), &v13);
    goto LABEL_10;
  }

  v3 = *(a1 + 56);

  health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::SampleHistoryRoot>(v2 + 80, v3, 0x38uLL, a1);
  return result;
}

uint64_t health::BlockAccessFile::WriteTransaction::updateObject<health::DataStore::SampleHistory<LocationHistoryBehaviorV2>::SampleHistoryRoot>(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 56;
  v12[0] = v13;
  v12[1] = v13;
  v12[2] = 56;
  v11[0] = *a4;
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[1];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[2];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[3];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[4];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[5];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  v11[0] = a4[6];
  health::SerializationBuffer::appendRaw<unsigned long long>(v12, v11);
  if (v15 <= 0x3FF)
  {
    v8 = v13;
  }

  else
  {
    v8 = v14;
  }

  health::RawBuffer::RawBuffer(v11, v8, v15);
  health::BlockAccessFile::WriteTransaction::updateBlock(a1, a2, a3, v11);
  result = v14;
  v14 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228E64AE8(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

__n128 _ZNKSt3__110__function6__funcIZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_EUlRSD_E_NS_9allocatorISY_EEFbRNS5_20MutableSampleHistoryIS3_EEEE7__cloneEPNS0_6__baseIS14_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BEC030;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_EUlRSD_E_NS_9allocatorISY_EEFbRNS5_20MutableSampleHistoryIS3_EEEEclES13_(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  operator new();
}

void sub_228E64C94(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(bufa, a4);
  buf = va_arg(va1, _OWORD);
  v15 = va_arg(va1, void);
  if (a2)
  {
    std::__function::__value_func<BOOL ()(double const&,_HDRawLocationDatumV2 const&)>::~__value_func[abi:ne200100](va1);
    v6 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      v7 = v6;
      _HKInitializeLogging();
      v8 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*v7 + 16);
        v10 = v8;
        v11 = v9(v7);
        LODWORD(buf) = 136315138;
        *(bufa + 4) = v11;
        _os_log_impl(&dword_228986000, v10, OS_LOG_TYPE_DEFAULT, "Caught std::exception during ignore block; ignoring: %s", bufa, 0xCu);
      }
    }

    else
    {
      _HKInitializeLogging();
      v12 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_228986000, v12, OS_LOG_TYPE_DEFAULT, "Caught unknown during ignore block; ignoring.", bufa, 2u);
      }
    }

    __cxa_end_catch();
    JUMPOUT(0x228E64C60);
  }

  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_EUlRSD_E_NS_9allocatorISY_EEFbRNS5_20MutableSampleHistoryIS3_EEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_ENKUlSL_E_clESL_EUlRSB_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_ENKUlRSD_E_clINS5_20MutableSampleHistoryIS3_EEEEbSX_ENKUlvE_clEvEUlSQ_RKSB_E_NS_9allocatorIS15_EEFbRKdRK21_HDRawLocationDatumV2EE7__cloneEPNS0_6__baseIS1D_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BEC0B0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_ENKUlRSD_E_clINS5_20MutableSampleHistoryIS3_EEEEbSX_ENKUlvE_clEvEUlSQ_RKSB_E_NS_9allocatorIS15_EEFbRKdRK21_HDRawLocationDatumV2EEclES19_S1C_(void *a1, void **a2, __int128 *a3)
{
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v4 = a1[1];
  v5 = *a2;
  v6 = a3[1];
  v13 = *a3;
  v14 = v6;
  v15 = a3[2];
  v7 = *(v4 + 24);
  v22 = v5;
  if (!v7)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v7 + 48))(&v19);
  *&v13 = MEMORY[0x277D85DD0];
  *(&v13 + 1) = 3221225472;
  *&v14 = ___ZZZZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_ENKUlSL_E_clESL_ENKUlRSB_E_clINS2_20MutableSampleHistoryIS0_EEEEbSV_ENKUlvE_clEvENKUlSO_RKS9_E_clId21_HDRawLocationDatumV2EEbSO_S12__block_invoke;
  *(&v14 + 1) = &__block_descriptor_96_e9_B16__0__8l;
  v9 = a1[3];
  *&v15 = a1[2];
  *(&v15 + 1) = a2;
  v16 = v19;
  v17 = v20;
  v18 = v21;
  if (v9)
  {
    v10 = &v22;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v22 = *v9;
  }

  v11 = hfd_catchExceptionsAsErrors(&v13, v10, 0);
  if (v9)
  {
    objc_storeStrong(v9, v22);
  }

  return v11;
}

void sub_228E65014(void *a1)
{
  __cxa_begin_catch(a1);
  **(v1 + 32) = 1;
  __cxa_end_catch();
  JUMPOUT(0x228E64FF4);
}

uint64_t _ZNKSt3__110__function6__funcIZZZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S3_EbRKN6health9DataStoreERS5_NS5_16ObjectIdentifierENS_8functionIFNT0_9ValueTypeENT_7KeyTypeENSD_9ValueTypeEEEENSA_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSD_E_clINS5_13SampleHistoryIS3_EEEEDaSQ_ENKUlSN_E_clESN_ENKUlRSD_E_clINS5_20MutableSampleHistoryIS3_EEEEbSX_ENKUlvE_clEvEUlSQ_RKSB_E_NS_9allocatorIS15_EEFbRKdRK21_HDRawLocationDatumV2EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_ENKUlSL_E_clESL_ENKUlRSB_E_clINS2_20MutableSampleHistoryIS0_EEEEbSV_ENKUlvE_clEvEUlSO_RKS9_E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ___ZZZZZZZL15HDMigrateDatumsI25LocationHistoryBehaviorV2S0_EbRKN6health9DataStoreERS2_NS2_16ObjectIdentifierENSt3__18functionIFNT0_9ValueTypeENT_7KeyTypeENSB_9ValueTypeEEEENS8_IFbvEEEPU15__autoreleasingP7NSErrorENKUlvE_clEvENKUlRKSB_E_clINS2_13SampleHistoryIS0_EEEEDaSO_ENKUlSL_E_clESL_ENKUlRSB_E_clINS2_20MutableSampleHistoryIS0_EEEEbSV_ENKUlvE_clEvENKUlSO_RKS9_E_clId21_HDRawLocationDatumV2EEbSO_S12__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = (*(v2 + 96) + 80);
  v36[0] = 0;
  v36[1] = 0;
  v36[2] = v4;
  v36[3] = v4;
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  if (!v6)
  {
    if (v5)
    {
      v6 = 0;
    }

    else
    {
      v34 = 0u;
      memset(v35, 0, sizeof(v35));
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      v6 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v4, 411);
      v5 = v7;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v4, v6, v7, &v11);
      *(v2 + 16) = v6;
      *(v2 + 24) = v5;
    }
  }

  *&v11 = v6;
  *(&v11 + 1) = v5;
  *&v12 = v36;
  v8 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::setValueForKey(&v11, v3, (a1 + 48));
  v9 = *(v2 + 48);
  if (v9)
  {
    if (!v8)
    {
      *(v2 + 48) = v9 + 1;
    }
  }

  else
  {
    *(v2 + 48) = 1;
    *v2 = xmmword_22916E8B0;
  }

  health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2>::_updateHistoryRoot(v2);
  return 1;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::setValueForKey(uint64_t a1, double *a2, __int128 *a3)
{
  v6 = *(a1 + 16);
  memset(v15, 0, 411);
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v6 + 24), *a1, *(a1 + 8), v15);
  result = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_setValueForKey(a1, 0, a1, v15, a2, a3);
  if (result >= 2)
  {
    v8 = *(a1 + 16);
    memset(__src, 0, 411);
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v8 + 24), *a1, *(a1 + 8), __src);
    memcpy(v13, __src, sizeof(v13));
    v9 = *(*(a1 + 16) + 24);
    v10 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v9, 411);
    v12 = v11;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v9, v10, v11, v13);
    WORD4(__src[25]) = 1;
    *(&__src[0] + 1) = v10;
    *&__src[1] = v12;
    BYTE10(__src[25]) = 0;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a1, *(a1 + 8), __src);
    return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::setValueForKey(a1, a2, a3);
  }

  return result;
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_setValueForKey(uint64_t a1, int a2, uint64_t a3, uint64_t a4, double *a5, __int128 *a6)
{
  if (!*(a4 + 408))
  {
    bzero(&v74, 0x380uLL);
    v19 = *(a1 + 16);
    v78 = *v19;
    v79 = *v19;
    v70 = *a5;
    v20 = *a6;
    v72 = a6[1];
    v73 = a6[2];
    v77 = 1;
    v71 = v20;
    v21 = *(v19 + 3);
    v22 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v21, 935);
    v24 = v23;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(v21, v22, v23, &v70);
    *a4 = *a5;
    *(a4 + 8) = v22;
    *(a4 + 16) = v24;
    *(a4 + 408) = 1;
    *(a4 + 410) = 1;
LABEL_8:
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    return 0;
  }

  if (*(a4 + 410) == 1)
  {
    v11 = health::bplustree::InteriorNode<double,health::BlockPointer,17>::childForKey(a4, a5);
    v80 = *(health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v11) + 8);
    v12 = *(a1 + 16);
    bzero(&v70, 0x3BAuLL);
    v79 = 0u;
    v78 = 0u;
    v13 = v80;
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(v12 + 24), v80, *(&v80 + 1), &v70);
    v14 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_setValueForKey(a1, &v80, &v70, a5, a6);
    v15 = v14;
    if (v14 <= 1)
    {
      v16 = *a5;
      if (v16 < *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v11))
      {
        v17 = *a5;
        *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v11) = v17;
        health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
      }

      return v15;
    }

    v31 = *(a4 + 408);
    if (v31 == 17)
    {
      v18 = 2;
      if (v11 == 16)
      {
        if (v14 == 4)
        {
          return 4;
        }

        else
        {
          return 2;
        }
      }

      else if (!v11)
      {
        if (v14 == 3)
        {
          return 3;
        }

        else
        {
          return 2;
        }
      }

      return v18;
    }

    if (v14 == 4 && v31 - 1 == v11)
    {
      bzero(&__dst[3] + 8, 0x380uLL);
      v67 = 1;
      *__dst = *a5;
      v32 = *a6;
      *(&__dst[1] + 8) = a6[1];
      *(&__dst[2] + 8) = a6[2];
      *(__dst + 8) = v32;
      v68 = v80;
      v69 = v79;
      v33 = *(*(a1 + 16) + 24);
      v34 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v33, 935);
      v36 = v35;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(v33, v34, v35, __dst);
      *&v79 = v34;
      *(&v79 + 1) = v36;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v13, *(&v13 + 1), &v70);
      v37 = *(a1 + 16);
      v38 = v69;
      if (v69 != *v37)
      {
        bzero(&__p, 0x3BAuLL);
        v62 = 0u;
        v63 = 0u;
        health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(v37 + 24), v38, *(&v38 + 1), &__p);
        *&v62 = v34;
        *(&v62 + 1) = v36;
        health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v69, *(&v69 + 1), &__p);
      }

      v39 = *(a4 + 408);
      v40 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v39);
      *(v40 + 8) = v34;
      *(v40 + 16) = v36;
      v41 = *a5;
      *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v39) = v41;
      ++*(a4 + 408);
      goto LABEL_8;
    }

    v59 = v80;
    v66 = 0;
    memset(v65, 0, sizeof(v65));
    memset(&__dst[28], 0, 96);
    v68 = v80;
    v69 = v79;
    if (v77 >= 0x12uLL)
    {
      v48 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(&__p, "sourceIndex + elementCount <= Length");
      std::string::basic_string[abi:ne200100]<0>(&v83, "copyElementsFromArrayToIndex");
      std::string::basic_string[abi:ne200100]<0>(&v82, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
      health::FormatString<>("Copy would overflow source.", &v81);
      health::_HDAssertImplementation<std::out_of_range>(v48, &__p, &v83, &v82, 80, &v81);
    }

    memcpy(__dst, v65 + 56 * v77, 0x1C0uLL);
    v77 -= 8;
    v67 = 8;
    v49 = *(*(a1 + 16) + 24);
    v50 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v49, 935);
    v52 = v51;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(v49, v50, v51, __dst);
    *&v83 = v50;
    *(&v83 + 1) = v52;
    v79 = v83;
    v53 = *(a1 + 16);
    v54 = v69;
    if (v69 != *v53)
    {
      bzero(&__p, 0x3BAuLL);
      v62 = 0u;
      v63 = 0u;
      health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(v53 + 24), v54, *(&v54 + 1), &__p);
      v62 = v83;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v69, *(&v69 + 1), &__p);
    }

    __p.n128_u64[0] = *&__dst[0];
    __p.n128_u64[1] = v50;
    v61 = v52;
    health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(a4, &__p, v11 + 1);
    ++*(a4 + 408);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v59, *(&v59 + 1), &v70);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    if (*a5 <= *__dst)
    {
      v55 = &v59;
      v56 = &v70;
    }

    else
    {
      v55 = &v83;
      v56 = __dst;
    }

    return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_setValueForKey(a1, v55, v56, a5, a6);
  }

  v26 = health::bplustree::InteriorNode<double,health::BlockPointer,17>::childForKey(a4, a5);
  v27 = v26;
  v83 = *(health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v26) + 8);
  health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_interiorChildAtIndex(&v70, a1, a2 + 1, a4, v26);
  v28 = health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_setValueForKey(a1, (a2 + 2), &v83, &v70, a5, a6);
  if (v28 > 1)
  {
    if (*(a4 + 408) == 17)
    {
      return 2;
    }

    v82 = v83;
    memset(&__dst[2], 0, 379);
    BYTE10(__dst[25]) = v76;
    memset(__dst, 0, 32);
    health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::copyElementsFromArrayToIndex(__dst, 0, &v70, v75 - 8, 8);
    v75 -= 8;
    WORD4(__dst[25]) = 8;
    v42 = *(*(a1 + 16) + 24);
    v43 = health::BlockAccessFile::WriteTransaction::_requestBlockOfLength(v42, 411);
    v45 = v44;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v42, v43, v44, __dst);
    v81.__r_.__value_.__r.__words[0] = v43;
    v81.__r_.__value_.__l.__size_ = v45;
    __p.n128_u64[0] = *&__dst[0];
    __p.n128_u64[1] = v43;
    v61 = v45;
    health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::insertElementAtIndex(a4, &__p, v27 + 1);
    ++*(a4 + 408);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v82, *(&v82 + 1), &v70);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
    if (*a5 <= *__dst)
    {
      v46 = &v82;
      v47 = &v70;
    }

    else
    {
      v46 = &v81;
      v47 = __dst;
    }

    return health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_setValueForKey(a1, (a2 + 2), v46, v47, a5, a6);
  }

  v18 = v28;
  v29 = *a5;
  if (v29 < *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v27))
  {
    v30 = *a5;
    *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v27) = v30;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a3, *(a3 + 8), a4);
  }

  return v18;
}

void sub_228E65BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 177) < 0)
  {
    operator delete(*(v18 - 200));
  }

  if (*(v18 - 153) < 0)
  {
    operator delete(*(v18 - 176));
  }

  if (*(v18 - 121) < 0)
  {
    operator delete(*(v18 - 144));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = 0;
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = 935;
  v14[0] = v15;
  v14[1] = v15;
  v14[2] = 935;
  do
  {
    v9 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a4, v8);
    v13[0] = *v9;
    health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
    v13[0] = *(v9 + 8);
    health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
    v13[0] = *(v9 + 16);
    health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
    LODWORD(v13[0]) = *(v9 + 24);
    health::SerializationBuffer::appendRaw<unsigned int>(v14, v13);
    LODWORD(v13[0]) = *(v9 + 28);
    health::SerializationBuffer::appendRaw<unsigned int>(v14, v13);
    LODWORD(v13[0]) = *(v9 + 32);
    health::SerializationBuffer::appendRaw<unsigned int>(v14, v13);
    LODWORD(v13[0]) = *(v9 + 36);
    health::SerializationBuffer::appendRaw<unsigned int>(v14, v13);
    LODWORD(v13[0]) = *(v9 + 40);
    health::SerializationBuffer::appendRaw<unsigned int>(v14, v13);
    LODWORD(v13[0]) = *(v9 + 44);
    health::SerializationBuffer::appendRaw<unsigned int>(v14, v13);
    LODWORD(v13[0]) = *(v9 + 48);
    health::SerializationBuffer::appendRaw<unsigned int>(v14, v13);
    LOBYTE(v13[0]) = *(v9 + 52);
    health::SerializationBuffer::appendRaw<unsigned char>(v14, v13);
    ++v8;
  }

  while (v8 != 17);
  LOWORD(v13[0]) = *(a4 + 952);
  health::SerializationBuffer::appendRaw<unsigned short>(v14, v13);
  v13[0] = *(a4 + 960);
  health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
  v13[0] = *(a4 + 968);
  health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
  v13[0] = *(a4 + 976);
  health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
  v13[0] = *(a4 + 984);
  health::SerializationBuffer::appendRaw<unsigned long long>(v14, v13);
  if (v17 <= 0x3FF)
  {
    v10 = v15;
  }

  else
  {
    v10 = v16;
  }

  health::RawBuffer::RawBuffer(v13, v10, v17);
  health::BlockAccessFile::WriteTransaction::updateBlock(a1, a2, a3, v13);
  result = v16;
  v16 = 0;
  if (result)
  {
    result = MEMORY[0x22AAC8570](result, 0x1000C8077774924);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_228E65E58(_Unwind_Exception *a1)
{
  v2 = STACK[0x428];
  STACK[0x428] = 0;
  if (v2)
  {
    MEMORY[0x22AAC8570](v2, 0x1000C8077774924);
  }

  _Unwind_Resume(a1);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_setValueForKey(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, _OWORD *a5)
{
  if (!*(a3 + 952))
  {
    v10 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v28, "valueCount > 0");
    std::string::basic_string[abi:ne200100]<0>(v34, "indexForKey");
    std::string::basic_string[abi:ne200100]<0>(v33, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Looking for index for key in an empty node.", &__p);
    health::_HDAssertImplementation<health::btree_access_error>(v10, v28, v34, v33, 72, &__p);
  }

  v11 = *(a3 + 952) - 1;
  while (1)
  {
    v12 = *a4;
    if (v12 > *health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a3, v11))
    {
      break;
    }

    v13 = *a4;
    v14 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a3, v11);
    v15 = v11;
    if (v13 == *v14)
    {
      v19 = health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](a3, v11);
      v21 = a5[1];
      v20 = a5[2];
      *(v19 + 8) = *a5;
      *(v19 + 24) = v21;
      *(v19 + 40) = v20;
      health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a2, *(a2 + 8), a3);
      return 1;
    }

    --v11;
    if (!v15)
    {
      LOWORD(v11) = 0;
      v16 = 0x100000000;
      goto LABEL_9;
    }
  }

  v16 = 0x200000000;
LABEL_9:
  if (*(a3 + 952) == 17)
  {
    if (*a4 >= *a3)
    {
      if (*a4 <= *(a3 + 896))
      {
        return 2;
      }

      else
      {
        return 4;
      }
    }

    else
    {
      return 3;
    }
  }

  else
  {
    v18 = v16 | v11;
    if ((v18 & 0x300000000) == 0x200000000)
    {
      v22 = v18 + 1;
    }

    else
    {
      v22 = v18;
    }

    v23 = *a4;
    v24 = a5[1];
    *v28 = *a5;
    v29 = v24;
    v30 = a5[2];
    if (v22 >= 0x11)
    {
      v25 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v34, "index < Length");
      std::string::basic_string[abi:ne200100]<0>(v33, "insertElementAtIndex");
      std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/Utility/HDStaticArray.h");
      health::FormatString<>("Index out of bounds.", &v31);
      health::_HDAssertImplementation<std::out_of_range>(v25, v34, v33, &__p, 57, &v31);
    }

    v26 = (a3 + 56 * v22);
    memmove(v26 + 7, v26, 56 * (16 - v22));
    *v26 = v23;
    v27 = v29;
    *(v26 + 1) = *v28;
    *(v26 + 3) = v27;
    *(v26 + 5) = v30;
    ++*(a3 + 952);
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(*(a1 + 16) + 24), *a2, *(a2 + 8), a3);
    return 0;
  }
}

void sub_228E661B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 81) < 0)
  {
    operator delete(*(v35 - 104));
  }

  _Unwind_Resume(exception_object);
}

double *health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_interiorChildAtIndex(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  if (*(a4 + 408) <= a5)
  {
    v9 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v35, "index < node.childCount");
    std::string::basic_string[abi:ne200100]<0>(v34, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v33, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Child index out of bounds.", &v32);
    health::_HDAssertImplementation<health::btree_access_error>(v9, v35, v34, v33, 137, &v32);
  }

  if (a3 >= 64)
  {
    v10 = *MEMORY[0x277CCC2A0];
    std::string::basic_string[abi:ne200100]<0>(v31, "depth < kMaximumRecursionDepth");
    std::string::basic_string[abi:ne200100]<0>(v30, "_interiorChildAtIndex");
    std::string::basic_string[abi:ne200100]<0>(v29, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
    health::FormatString<>("Maximum recursion depth reached.", &__p);
    health::_HDAssertImplementation<health::btree_access_error>(v10, v31, v30, v29, 138, &__p);
  }

  v11 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, a5);
  v12 = *(v11 + 8);
  v13 = *(v11 + 16);
  v14 = *(a2 + 16);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 395) = 0u;
  result = health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(*(v14 + 24), v12, v13, a1);
  if (*(a1 + 408))
  {
    v16 = *a1;
    result = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, a5);
    if (v16 < *result)
    {
      v17 = *MEMORY[0x277CCC2A0];
      std::string::basic_string[abi:ne200100]<0>(v27, "child.children[0].key >= node.children[index].key");
      std::string::basic_string[abi:ne200100]<0>(v26, "_interiorChildAtIndex");
      std::string::basic_string[abi:ne200100]<0>(v25, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
      health::FormatString<>("Child node's smallest key is < parent's key", &v24);
      health::_HDAssertImplementation<health::btree_access_error>(v17, v27, v26, v25, 144, &v24);
    }

    if (*(a4 + 408) - 1 > a5)
    {
      v18 = *health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a1, *(a1 + 408) - 1);
      result = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, a5 + 1);
      if (v18 >= *result)
      {
        v19 = *MEMORY[0x277CCC2A0];
        std::string::basic_string[abi:ne200100]<0>(v23, "child.children[child.childCount - 1].key < node.children[index + 1].key");
        std::string::basic_string[abi:ne200100]<0>(v22, "_interiorChildAtIndex");
        std::string::basic_string[abi:ne200100]<0>(v21, "/Library/Caches/com.apple.xbs/Sources/HealthKit/HealthKit/HealthDaemon/Database/Migration/HFDtoSQLite/HighFrequencyData/HDBPlusTree.hpp");
        health::FormatString<>("Child node's largest key is >= parent's next key", &v20);
        health::_HDAssertImplementation<health::btree_access_error>(v19, v23, v22, v21, 146, &v20);
      }
    }
  }

  return result;
}

void sub_228E66648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<BOOL ()(health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2> &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__func<void health::DataStore::deleteSampleHistory<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<void health::DataStore::deleteSampleHistory<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_283BEC140;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<void health::DataStore::deleteSampleHistory<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<void health::DataStore::deleteSampleHistory<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::operator()(uint64_t a1, health::DataStore::WriteTransaction *a2)
{
  v6 = 0u;
  v7 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = a2;
  v12 = a2;
  health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2>::loadHistoryRoot(v5, *(a1 + 8), 0);
  v15[0] = 0;
  v15[1] = 0;
  v15[2] = v12 + 80;
  v15[3] = v12 + 80;
  if (v6 != 0)
  {
    v13 = v6;
    v14 = v15;
    memset(__src, 0, 411);
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::InteriorNode<double,health::BlockPointer,17>>(v12 + 10, v6, *(&v6 + 1), __src);
    memcpy(__dst, __src, sizeof(__dst));
    health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_removeSubtree<health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2>::deleteAllSamples(void)::{lambda(double const&,_HDRawLocationDatumV2 const&)#1}>(&v13, 0, &v13, __dst);
  }

  v8 = 0;
  health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2>::_updateHistoryRoot(v5);
  health::DataStore::WriteTransaction::removeObjectWithIdentifier(a2, *(a1 + 8));
  return 1;
}

uint64_t std::__function::__func<void health::DataStore::deleteSampleHistory<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1},std::allocator<void health::DataStore::deleteSampleHistory<LocationHistoryBehaviorV2>(health::DataStore::ObjectIdentifier const&)::{lambda(health::DataStore::WriteTransaction &)#1}>,BOOL ()(health::DataStore::WriteTransaction &)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_removeSubtree<health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2>::deleteAllSamples(void)::{lambda(double const&,_HDRawLocationDatumV2 const&)#1}>(uint64_t a1, int a2, unint64_t *a3, uint64_t a4)
{
  if (*(a4 + 408))
  {
    v8 = 0;
    do
    {
      if (*(a4 + 410) == 1)
      {
        v9 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v8);
        health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_removeLeaf<health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2>::deleteAllSamples(void)::{lambda(double const&,_HDRawLocationDatumV2 const&)#1}>(a1, v9 + 8);
      }

      else
      {
        health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_interiorChildAtIndex(__src, a1, a2, a4, v8);
        v10 = health::StaticArray<health::bplustree::InteriorNode<double,health::BlockPointer,17>::ChildEntry,17ul>::operator[](a4, v8);
        memcpy(v12, __src, sizeof(v12));
        health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_removeSubtree<health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2>::deleteAllSamples(void)::{lambda(double const&,_HDRawLocationDatumV2 const&)#1}>(a1, (a2 + 1), v10 + 8, v12);
      }

      ++v8;
    }

    while (v8 < *(a4 + 408));
  }

  return health::BlockAccessFile::WriteTransaction::freeBlock(*(*(a1 + 16) + 24), *a3, a3[1]);
}

uint64_t health::bplustree::Tree<health::BlockAccessFile::WriteTransaction::BPlusTreeConfiguration<double,_HDRawLocationDatumV2>>::_removeLeaf<health::DataStore::MutableSampleHistory<LocationHistoryBehaviorV2>::deleteAllSamples(void)::{lambda(double const&,_HDRawLocationDatumV2 const&)#1}>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  bzero(v11, 0x3BAuLL);
  v13 = 0u;
  v14 = 0u;
  health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(v4 + 24), *a2, *(a2 + 8), v11);
  if (v12)
  {
    for (i = 0; i < v12; health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](v11, i++))
    {
      health::StaticArray<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>::ValueEntry,17ul>::operator[](v11, i);
    }
  }

  v6 = *(a1 + 16);
  v8 = *(&v14 + 1);
  v7 = v14;
  if (v14 != *v6)
  {
    bzero(v15, 0x3BAuLL);
    v17 = 0u;
    v16 = 0u;
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(v6 + 24), v7, v8, v15);
    v16 = v13;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v14, *(&v14 + 1), v15);
    v6 = *(a1 + 16);
    v7 = *v6;
  }

  v9 = v13;
  if (v13 != __PAIR128__(*(v6 + 8), v7))
  {
    bzero(v15, 0x3BAuLL);
    v17 = 0u;
    v16 = 0u;
    health::BlockAccessFile::ReadTransaction::retrieveObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(v6 + 24), v9, *(&v9 + 1), v15);
    v17 = v14;
    health::BlockAccessFile::WriteTransaction::updateObject<health::bplustree::LeafNode<double,_HDRawLocationDatumV2,health::BlockPointer,17>>(*(*(a1 + 16) + 24), v13, *(&v13 + 1), v15);
    v6 = *(a1 + 16);
  }

  return health::BlockAccessFile::WriteTransaction::freeBlock(*(v6 + 24), *a2, *(a2 + 8));
}

uint64_t std::__function::__value_func<_HDRawLocationDatumV2 ()(double,_HDRawLocationDatumV2)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 _ZNKSt3__110__function6__funcIZZ90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error__EUb_E3__1NS_9allocatorIS2_EEFvRKN6health9DataStore13SampleHistoryI25LocationHistoryBehaviorV1EEEE7__cloneEPNS0_6__baseISC_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BEC2F0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZ90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error__EUb_E3__1NS_9allocatorIS2_EEFvRKN6health9DataStore13SampleHistoryI25LocationHistoryBehaviorV1EEEEclESB_(uint64_t a1, __int128 *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a2[3];
  v10 = a2[2];
  v11 = v2;
  v3 = a2[5];
  v12 = a2[4];
  v13 = v3;
  v4 = a2[1];
  v8 = *a2;
  v9 = v4;
  v5 = *(a1 + 16);
  v6 = *(a1 + 40);
  v7 = *(a1 + 24);
  operator new();
}

uint64_t _ZNKSt3__110__function6__funcIZZ90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error__EUb_E3__1NS_9allocatorIS2_EEFvRKN6health9DataStore13SampleHistoryI25LocationHistoryBehaviorV1EEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZ90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error__EUb_E3__1))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZZ90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error__EUb_ENK3__1clIN6health9DataStore13SampleHistoryI25LocationHistoryBehaviorV1EEEEvT_EUldRK21_HDRawLocationDatumV1E_NS_9allocatorISD_EEFbRKdSC_EE7__cloneEPNS0_6__baseISI_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BEC360;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZZ90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error__EUb_ENK3__1clIN6health9DataStore13SampleHistoryI25LocationHistoryBehaviorV1EEEEvT_EUldRK21_HDRawLocationDatumV1E_NS_9allocatorISD_EEFbRKdSC_EEclESH_SC_(uint64_t a1, double *a2, uint64_t a3)
{
  v5 = *a2;
  **(a1 + 32) = 1;
  v6 = **(a1 + 16);
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v5];
  v8 = [objc_alloc(MEMORY[0x277CE41F8]) initWithCoordinate:v7 altitude:*a3 horizontalAccuracy:*(a3 + 8) verticalAccuracy:*(a3 + 16) course:*(a3 + 28) speed:*(a3 + 32) timestamp:{*(a3 + 24), *(a3 + 20)}];

  v9 = *(a1 + 24);
  if (v9)
  {
    p_obj = &obj;
  }

  else
  {
    p_obj = 0;
  }

  if (v9)
  {
    obj = *v9;
  }

  v11 = (*(v6 + 16))(v6, v8, p_obj);
  if (v9)
  {
    objc_storeStrong(v9, obj);
  }

  return v11;
}

uint64_t _ZNKSt3__110__function6__funcIZZZ90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error__EUb_ENK3__1clIN6health9DataStore13SampleHistoryI25LocationHistoryBehaviorV1EEEEvT_EUldRK21_HDRawLocationDatumV1E_NS_9allocatorISD_EEFbRKdSC_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZ90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error__EUb_ENK3__1clIN6health9DataStore13SampleHistoryI25LocationHistoryBehaviorV1EEEEvT_EUldRK21_HDRawLocationDatumV1E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZ90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error__EUb_E3__2NS_9allocatorIS2_EEFvRKN6health9DataStore13SampleHistoryI25LocationHistoryBehaviorV2EEEE7__cloneEPNS0_6__baseISC_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BEC3F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZZ90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error__EUb_E3__2NS_9allocatorIS2_EEFvRKN6health9DataStore13SampleHistoryI25LocationHistoryBehaviorV2EEEEclESB_(uint64_t a1, __int128 *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2[3];
  v9 = a2[2];
  v10 = v2;
  v3 = a2[5];
  v11 = a2[4];
  v12 = v3;
  v4 = a2[1];
  v7 = *a2;
  v8 = v4;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  operator new();
}

uint64_t _ZNKSt3__110__function6__funcIZZ90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error__EUb_E3__2NS_9allocatorIS2_EEFvRKN6health9DataStore13SampleHistoryI25LocationHistoryBehaviorV2EEEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZ90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error__EUb_E3__2))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZZ90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error__EUb_ENK3__2clIN6health9DataStore13SampleHistoryI25LocationHistoryBehaviorV2EEEEvT_EUldRK21_HDRawLocationDatumV2E_NS_9allocatorISD_EEFbRKdSC_EE7__cloneEPNS0_6__baseISI_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_283BEC460;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZZZ90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error__EUb_ENK3__2clIN6health9DataStore13SampleHistoryI25LocationHistoryBehaviorV2EEEEvT_EUldRK21_HDRawLocationDatumV2E_NS_9allocatorISD_EEFbRKdSC_EEclESH_SC_(uint64_t a1, uint64_t *a2, float *a3)
{
  v4 = *a2;
  v5 = **(a1 + 16);
  v26 = 0;
  v25 = 0;
  v27 = 0;
  v33 = 0;
  v34 = 0;
  v6 = *(a3 + 1);
  v21 = *a3;
  v7 = a3[7];
  v8 = a3[4];
  v9 = a3[8];
  v10 = a3[5];
  v11 = a3[9];
  v12 = a3[6];
  v13 = a3[10];
  v14 = *(a3 + 44);
  v15 = *MEMORY[0x277CE4290];
  obj[0] = 0;
  *&obj[1] = v21;
  *&obj[3] = v6;
  *&obj[5] = v7;
  *&obj[7] = v8;
  *&obj[9] = v9;
  *&obj[11] = v10;
  *&obj[13] = v11;
  *&obj[15] = v12;
  *&obj[17] = v13;
  *&obj[19] = v4;
  obj[21] = 0;
  v23 = 0xBFF0000000000000;
  v24 = 0;
  v28 = 0x7FFFFFFF;
  v29 = v15;
  v30 = 0;
  v31 = 0;
  v32 = v14;
  v16 = [objc_alloc(MEMORY[0x277CE41F8]) initWithClientLocation:obj];
  v17 = *(a1 + 24);
  if (v17)
  {
    v18 = obj;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    *obj = *v17;
  }

  v19 = (*(v5 + 16))(v5, v16, v18);
  if (v17)
  {
    objc_storeStrong(v17, *obj);
  }

  return v19;
}

uint64_t _ZNKSt3__110__function6__funcIZZZ90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error__EUb_ENK3__2clIN6health9DataStore13SampleHistoryI25LocationHistoryBehaviorV2EEEEvT_EUldRK21_HDRawLocationDatumV2E_NS_9allocatorISD_EEFbRKdSC_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZZZ90__HDLocationSeriesHFDMigrationEntity__migrateSeriesWithKey_toSQLFromStore_database_error__EUb_ENK3__2clIN6health9DataStore13SampleHistoryI25LocationHistoryBehaviorV2EEEEvT_EUldRK21_HDRawLocationDatumV2E_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float std::deque<std::tuple<double,double,float>>::emplace_back<double &,double &,float &>(void *a1, void *a2, void *a3, float *a4)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = v9 - v8;
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = 170 * ((v9 - v8) >> 3) - 1;
  }

  v13 = a1[4];
  v12 = a1[5];
  v14 = v12 + v13;
  if (v11 == v12 + v13)
  {
    if (v13 < 0xAA)
    {
      v15 = a1[3];
      v16 = &v15[-*a1];
      if (v10 < v16)
      {
        if (v15 != v9)
        {
          operator new();
        }

        operator new();
      }

      if (v15 == *a1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v16 >> 2;
      }

      v21 = a1;
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::unique_ptr<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry,std::default_delete<health::TransactionalCache<unsigned long long,health::FilePage>::CacheEntry>>>>(v17);
    }

    a1[4] = v13 - 170;
    *&v20 = *v8;
    a1[1] = v8 + 8;
    std::__split_buffer<std::__thread_id *>::emplace_back<std::__thread_id *&>(a1, &v20);
    v12 = a1[5];
    v8 = a1[1];
    v14 = a1[4] + v12;
  }

  v18 = *&v8[8 * (v14 / 0xAA)] + 24 * (v14 % 0xAA);
  *v18 = *a2;
  *(v18 + 8) = *a3;
  result = *a4;
  *(v18 + 16) = *a4;
  a1[5] = v12 + 1;
  return result;
}

void sub_228E68B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  operator delete(v11);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id HDPredicateForRecordID(uint64_t a1)
{
  v1 = MEMORY[0x277D10B18];
  v2 = [MEMORY[0x277CCABB0] numberWithLongLong:a1];
  v3 = [v1 predicateWithProperty:@"record_id" equalToValue:v2];

  return v3;
}

void sub_228E6AD3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_228E6AF48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__157(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_228E6B8B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t HDCodableUserDomainConceptPropertyReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v60) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v60 & 0x7F) << v5;
        if ((v60 & 0x80) == 0)
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

      if (v13 <= 6)
      {
        if (v13 != 5)
        {
          if (v13 != 6)
          {
LABEL_83:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_109;
          }

          *(a1 + 76) |= 1u;
          v60 = 0;
          v29 = [a2 position] + 8;
          if (v29 >= [a2 position] && (v30 = objc_msgSend(a2, "position") + 8, v30 <= objc_msgSend(a2, "length")))
          {
            v55 = [a2 data];
            [v55 getBytes:&v60 range:{objc_msgSend(a2, "position"), 8}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
          }

          else
          {
            [a2 _setError];
          }

          v56 = v60;
          v57 = 8;
          goto LABEL_108;
        }

        v14 = PBReaderReadString();
        v15 = 64;
      }

      else
      {
        if (v13 == 7)
        {
          v39 = 0;
          v40 = 0;
          v41 = 0;
          *(a1 + 76) |= 2u;
          while (1)
          {
            LOBYTE(v60) = 0;
            v42 = [a2 position] + 1;
            if (v42 >= [a2 position] && (v43 = objc_msgSend(a2, "position") + 1, v43 <= objc_msgSend(a2, "length")))
            {
              v44 = [a2 data];
              [v44 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v41 |= (v60 & 0x7F) << v39;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v39 += 7;
            v11 = v40++ >= 9;
            if (v11)
            {
              v22 = 0;
              goto LABEL_100;
            }
          }

          if ([a2 hasError])
          {
            v22 = 0;
          }

          else
          {
            v22 = v41;
          }

LABEL_100:
          v54 = 16;
LABEL_101:
          *(a1 + v54) = v22;
          goto LABEL_109;
        }

        if (v13 == 8)
        {
          v46 = 0;
          v47 = 0;
          v48 = 0;
          *(a1 + 76) |= 0x40u;
          while (1)
          {
            LOBYTE(v60) = 0;
            v49 = [a2 position] + 1;
            if (v49 >= [a2 position] && (v50 = objc_msgSend(a2, "position") + 1, v50 <= objc_msgSend(a2, "length")))
            {
              v51 = [a2 data];
              [v51 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v48 |= (v60 & 0x7F) << v46;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v46 += 7;
            v11 = v47++ >= 9;
            if (v11)
            {
              LOBYTE(v52) = 0;
              goto LABEL_103;
            }
          }

          v52 = (v48 != 0) & ~[a2 hasError];
LABEL_103:
          *(a1 + 72) = v52;
          goto LABEL_109;
        }

        if (v13 != 9)
        {
          goto LABEL_83;
        }

        v14 = PBReaderReadData();
        v15 = 56;
      }

      v45 = *(a1 + v15);
      *(a1 + v15) = v14;

LABEL_109:
      v59 = [a2 position];
      if (v59 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        *(a1 + 76) |= 4u;
        v60 = 0;
        v37 = [a2 position] + 8;
        if (v37 >= [a2 position] && (v38 = objc_msgSend(a2, "position") + 8, v38 <= objc_msgSend(a2, "length")))
        {
          v58 = [a2 data];
          [v58 getBytes:&v60 range:{objc_msgSend(a2, "position"), 8}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 8}];
        }

        else
        {
          [a2 _setError];
        }

        v56 = v60;
        v57 = 24;
LABEL_108:
        *(a1 + v57) = v56;
        goto LABEL_109;
      }

      if (v13 != 4)
      {
        goto LABEL_83;
      }

      v23 = 0;
      v24 = 0;
      v25 = 0;
      *(a1 + 76) |= 0x10u;
      while (1)
      {
        LOBYTE(v60) = 0;
        v26 = [a2 position] + 1;
        if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v25 |= (v60 & 0x7F) << v23;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v23 += 7;
        v11 = v24++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_92;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v25;
      }

LABEL_92:
      v54 = 40;
    }

    else if (v13 == 1)
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      *(a1 + 76) |= 8u;
      while (1)
      {
        LOBYTE(v60) = 0;
        v34 = [a2 position] + 1;
        if (v34 >= [a2 position] && (v35 = objc_msgSend(a2, "position") + 1, v35 <= objc_msgSend(a2, "length")))
        {
          v36 = [a2 data];
          [v36 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v33 |= (v60 & 0x7F) << v31;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v31 += 7;
        v11 = v32++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_96;
        }
      }

      if ([a2 hasError])
      {
        v22 = 0;
      }

      else
      {
        v22 = v33;
      }

LABEL_96:
      v54 = 32;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_83;
      }

      v16 = 0;
      v17 = 0;
      v18 = 0;
      *(a1 + 76) |= 0x20u;
      while (1)
      {
        LOBYTE(v60) = 0;
        v19 = [a2 position] + 1;
        if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
        {
          v21 = [a2 data];
          [v21 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v18 |= (v60 & 0x7F) << v16;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v16 += 7;
        v11 = v17++ >= 9;
        if (v11)
        {
          v22 = 0;
          goto LABEL_88;
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

LABEL_88:
      v54 = 48;
    }

    goto LABEL_101;
  }

  return [a2 hasError] ^ 1;
}