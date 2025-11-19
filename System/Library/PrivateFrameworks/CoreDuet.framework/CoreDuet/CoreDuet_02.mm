uint64_t VisionSignalGradingVisionGradeReadFrom(uint64_t a1, void *a2)
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
        v59 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v59 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v59 & 0x7F) << v5;
        if ((v59 & 0x80) == 0)
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
          if (v13 != 7)
          {
            if (v13 != 8)
            {
LABEL_86:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_106;
            }

            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 40) |= 1u;
            while (1)
            {
              v64 = 0;
              v36 = [a2 position] + 1;
              if (v36 >= [a2 position] && (v37 = objc_msgSend(a2, "position") + 1, v37 <= objc_msgSend(a2, "length")))
              {
                v38 = [a2 data];
                [v38 getBytes:&v64 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v35 |= (v64 & 0x7F) << v33;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v11 = v34++ >= 9;
              if (v11)
              {
                v39 = 0;
                goto LABEL_104;
              }
            }

            if ([a2 hasError])
            {
              v39 = 0;
            }

            else
            {
              v39 = v35;
            }

LABEL_104:
            v56 = 8;
            goto LABEL_105;
          }

          v49 = 0;
          v50 = 0;
          v51 = 0;
          *(a1 + 40) |= 8u;
          while (1)
          {
            v60 = 0;
            v52 = [a2 position] + 1;
            if (v52 >= [a2 position] && (v53 = objc_msgSend(a2, "position") + 1, v53 <= objc_msgSend(a2, "length")))
            {
              v54 = [a2 data];
              [v54 getBytes:&v60 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v51 |= (v60 & 0x7F) << v49;
            if ((v60 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v11 = v50++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_93;
            }
          }

          v20 = (v51 != 0) & ~[a2 hasError];
LABEL_93:
          v57 = 37;
        }

        else
        {
          if (v13 == 5)
          {
            v42 = PBReaderReadString();
            if (v42)
            {
              [a1 addExtractedSignals:v42];
            }

            goto LABEL_106;
          }

          if (v13 != 6)
          {
            goto LABEL_86;
          }

          v21 = 0;
          v22 = 0;
          v23 = 0;
          *(a1 + 40) |= 0x10u;
          while (1)
          {
            v61 = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:&v61 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v61 & 0x7F) << v21;
            if ((v61 & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              LOBYTE(v20) = 0;
              goto LABEL_97;
            }
          }

          v20 = (v23 != 0) & ~[a2 hasError];
LABEL_97:
          v57 = 38;
        }

        goto LABEL_100;
      }

      if (v13 > 2)
      {
        break;
      }

      if (v13 != 1)
      {
        if (v13 != 2)
        {
          goto LABEL_86;
        }

        v14 = 0;
        v15 = 0;
        v16 = 0;
        *(a1 + 40) |= 0x20u;
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
            goto LABEL_95;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_95:
        v57 = 39;
LABEL_100:
        *(a1 + v57) = v20;
        goto LABEL_106;
      }

      v40 = PBReaderReadString();
      v41 = *(a1 + 24);
      *(a1 + 24) = v40;

LABEL_106:
      v58 = [a2 position];
      if (v58 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v43 = 0;
      v44 = 0;
      v45 = 0;
      *(a1 + 40) |= 2u;
      while (1)
      {
        v65 = 0;
        v46 = [a2 position] + 1;
        if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
        {
          v48 = [a2 data];
          [v48 getBytes:&v65 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v45 |= (v65 & 0x7F) << v43;
        if ((v65 & 0x80) == 0)
        {
          break;
        }

        v43 += 7;
        v11 = v44++ >= 9;
        if (v11)
        {
          v39 = 0;
          goto LABEL_91;
        }
      }

      if ([a2 hasError])
      {
        v39 = 0;
      }

      else
      {
        v39 = v45;
      }

LABEL_91:
      v56 = 32;
LABEL_105:
      *(a1 + v56) = v39;
      goto LABEL_106;
    }

    if (v13 != 4)
    {
      goto LABEL_86;
    }

    v27 = 0;
    v28 = 0;
    v29 = 0;
    *(a1 + 40) |= 4u;
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
        goto LABEL_99;
      }
    }

    v20 = (v29 != 0) & ~[a2 hasError];
LABEL_99:
    v57 = 36;
    goto LABEL_100;
  }

  return [a2 hasError] ^ 1;
}

uint64_t VisionSignalGradingVisionGradeEventReadFrom(void *a1, void *a2)
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
        v13 = objc_alloc_init(VisionSignalGradingVisionGrade);
        [a1 addVisionGrades:v13];
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !VisionSignalGradingVisionGradeReadFrom(v13, a2))
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

    v13 = objc_alloc_init(VisionSignalGradingEntry);
    [a1 addPopularityEntries:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !VisionSignalGradingEntryReadFrom(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

uint64_t _DKPRMetadataEntryReadFrom(uint64_t a1, void *a2)
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
        *(a1 + 32) |= 1u;
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
            v23 = 0;
            goto LABEL_38;
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

LABEL_38:
        *(a1 + 8) = v23;
      }

      else if (v13 == 2)
      {
        v16 = objc_alloc_init(_DKPRValue);
        objc_storeStrong((a1 + 24), v16);
        v26[0] = 0;
        v26[1] = 0;
        if (!PBReaderPlaceMark() || !_DKPRValueReadFrom(v16, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
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

void sub_19186DF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19186F040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose((v26 - 160), 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_19186F89C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose((v26 - 160), 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void sub_19187018C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_191870A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_191870DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_191871694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_191871AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_191871DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_19187225C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1918725F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t FTCPPETInteractionReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v34[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v34[0] & 0x7F) << v5;
        if ((v34[0] & 0x80) == 0)
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
          v21 = 0;
          v22 = 0;
          v23 = 0;
          while (1)
          {
            LOBYTE(v34[0]) = 0;
            v24 = [a2 position] + 1;
            if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
            {
              v26 = [a2 data];
              [v26 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v23 |= (v34[0] & 0x7F) << v21;
            if ((v34[0] & 0x80) == 0)
            {
              break;
            }

            v21 += 7;
            v11 = v22++ >= 9;
            if (v11)
            {
              v27 = 0;
              goto LABEL_54;
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

LABEL_54:
          *(a1 + 8) = v27;
          goto LABEL_55;
        }

LABEL_47:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_55;
      }

      v31 = objc_alloc_init(FTCPPETParticipant);
      [a1 addParticipants:v31];
      v34[0] = 0;
      v34[1] = 0;
      if (!PBReaderPlaceMark() || !FTCPPETParticipantReadFrom(v31, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_55:
      v32 = [a2 position];
      if (v32 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 3:
        v28 = PBReaderReadString();
        v29 = 24;
LABEL_43:
        v30 = *(a1 + v29);
        *(a1 + v29) = v28;

        goto LABEL_55;
      case 5:
        v28 = PBReaderReadString();
        v29 = 16;
        goto LABEL_43;
      case 4:
        v14 = 0;
        v15 = 0;
        v16 = 0;
        while (1)
        {
          LOBYTE(v34[0]) = 0;
          v17 = [a2 position] + 1;
          if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
          {
            v19 = [a2 data];
            [v19 getBytes:v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v16 |= (v34[0] & 0x7F) << v14;
          if ((v34[0] & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          v11 = v15++ >= 9;
          if (v11)
          {
            LOBYTE(v20) = 0;
            goto LABEL_50;
          }
        }

        v20 = (v16 != 0) & ~[a2 hasError];
LABEL_50:
        *(a1 + 40) = v20;
        goto LABEL_55;
    }

    goto LABEL_47;
  }

  return [a2 hasError] ^ 1;
}

void sub_1918744C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1918785AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4_18()
{
  v12 = STACK[0x660];
  v13 = STACK[0x658];
  v11 = STACK[0x668];
  v10 = STACK[0x670];
  v1 = STACK[0x3E0];
  v2 = STACK[0x438];
  v3 = STACK[0x598];
  v4 = STACK[0x430];
  v5 = STACK[0x420];
  v6 = STACK[0x410];
  v7 = STACK[0x408];
  v8 = STACK[0x3F8];

  return [v2 initWithBundleID:v3 activityType:v4 beginningOfActivity:v5 contentDescription:v6 expirationDate:v7 isEligibleForPrediction:v8 isPubliclyIndexable:? itemIdentifier:? itemRelatedContentURL:? itemRelatedUniqueIdentifier:? shortcutAvailability:? suggestedInvocationPhrase:? title:? userActivityRequiredString:? userActivityUUID:? sourceID:? sourceBundleID:? sourceItemID:? sourceGroupID:? calendarUserActivityDate:? calendarUserActivityExternalID:? calendarUserActivityEndDate:? locationName:? latitude:? longitude:? city:? stateOrProvince:? country:? thoroughfare:? fullyFormattedAddress:? subThoroughfare:? postalCode:? phoneNumbers:? displayName:? URL:?];
}

__n128 OUTLINED_FUNCTION_14_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __n128 a45)
{
  result = a45;
  *(v46 - 144) = a45.n128_u32[0];
  *(v46 - 140) = v45;
  return result;
}

id _CDNormalizeString(void *a1)
{
  v1 = MEMORY[0x1E696AB08];
  v2 = a1;
  v3 = [v1 alphanumericCharacterSet];
  v4 = [v2 stringByAddingPercentEncodingWithAllowedCharacters:v3];

  return v4;
}

void sub_191879CA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_191880D40(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46)
{
  if (a2 == 1)
  {
    v46 = objc_begin_catch(a1);
    v47 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
    {
      v48 = [objc_opt_class() description];
      v49 = objc_opt_respondsToSelector();
      if (v49)
      {
        v50 = [v46 callStackSymbols];
      }

      else
      {
        v50 = 0;
      }

      LODWORD(STACK[0x220]) = 138544130;
      STACK[0x224] = v48;
      LOWORD(STACK[0x22C]) = 2114;
      STACK[0x22E] = v46;
      LOWORD(STACK[0x236]) = 2082;
      STACK[0x238] = "[_DKSyncRapportKnowledgeStorage handleFetchDeletedEventIDsWithRequest:options:responseHandler:]";
      LOWORD(STACK[0x240]) = 2114;
      STACK[0x242] = v50;
      _os_log_fault_impl(&dword_191750000, v47, OS_LOG_TYPE_FAULT, "%{public}@: Caught %{public}@ in %{public}s thrown at %{public}@", &STACK[0x220], 0x2Au);
      if (v49)
      {
      }
    }

    [a46 transformCaughtObject:v46 existingError:0];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x191880C50);
  }

  _Unwind_Resume(a1);
}

void sub_191882208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23)
{
  if (a2 == 1)
  {
    v24 = objc_begin_catch(exception_object);
    v25 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      v26 = [objc_opt_class() description];
      v27 = objc_opt_respondsToSelector();
      if (v27)
      {
        v28 = [v24 callStackSymbols];
      }

      else
      {
        v28 = 0;
      }

      *(v23 - 208) = 138544130;
      v29 = v23 - 208;
      *(v29 + 4) = v26;
      *(v23 - 196) = 2114;
      *(v29 + 14) = v24;
      *(v23 - 186) = 2082;
      *(v23 - 184) = "[_DKSyncRapportKnowledgeStorage handleFetchEventsWithResponse:options:error:peer:plStartDate:completion:]";
      *(v23 - 176) = 2114;
      *(v29 + 34) = v28;
      _os_log_fault_impl(&dword_191750000, v25, OS_LOG_TYPE_FAULT, "%{public}@: Caught %{public}@ in %{public}s thrown at %{public}@", (v23 - 208), 0x2Au);
      if (v27)
      {
      }
    }

    [a20 transformCaughtObject:v24 existingError:a21];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x191881FF0);
  }

  _Unwind_Resume(exception_object);
}

void sub_191883210(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36)
{
  v44 = v36;
  if (a2 == 1)
  {
    v38 = objc_begin_catch(exception_object);
    v39 = +[_CDLogging syncChannel];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_FAULT))
    {
      v40 = [objc_opt_class() description];
      v41 = objc_opt_respondsToSelector();
      if (v41)
      {
        v42 = [v38 callStackSymbols];
      }

      else
      {
        v42 = 0;
      }

      *(v37 - 192) = 138544130;
      v43 = v37 - 192;
      *(v43 + 4) = v40;
      *(v37 - 180) = 2114;
      *(v43 + 14) = v38;
      *(v37 - 170) = 2082;
      *(v37 - 168) = "[_DKSyncRapportKnowledgeStorage handleFetchDeletedEventIDsWithResponse:options:error:peer:plStartDate:completion:]";
      *(v37 - 160) = 2114;
      *(v43 + 34) = v42;
      _os_log_fault_impl(&dword_191750000, v39, OS_LOG_TYPE_FAULT, "%{public}@: Caught %{public}@ in %{public}s thrown at %{public}@", (v37 - 192), 0x2Au);
      if (v41)
      {
      }
    }

    [a25 transformCaughtObject:v38 existingError:v44];
    objc_claimAutoreleasedReturnValue();

    objc_end_catch();
    JUMPOUT(0x191883038);
  }

  _Unwind_Resume(exception_object);
}

void OUTLINED_FUNCTION_12_6(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void OUTLINED_FUNCTION_31_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x2Au);
}

BOOL OUTLINED_FUNCTION_32_2(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_ERROR);
}

void sub_191888B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_4_20(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t _CDSizeMetricInitialize()
{
  v0 = objc_opt_new();
  v1 = _CDSizeMetricFamilies;
  _CDSizeMetricFamilies = v0;

  v2 = dispatch_queue_create("com.apple.coreduet.sizemetric", 0);
  v3 = _CDSizeMetricQueue;
  _CDSizeMetricQueue = v2;

  return MEMORY[0x1EEE66BB8](v2, v3);
}

void CDSizeMetricAddSize(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    [(_CDMutableSizeMetric *)a1 addBytes:a2];
  }
}

void OUTLINED_FUNCTION_4_21(os_unfair_lock_s *a1)
{
  v2 = a1 + 2;

  os_unfair_lock_lock(v2);
}

uint64_t InteractionAnalysisPETInteractionEventsReadFrom(uint64_t a1, void *a2)
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

      if ((v12 >> 3) == 1)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v14 = objc_alloc_init(InteractionAnalysisPETInteractionEvent);
        [(InteractionAnalysisPETInteractionEvents *)a1 addInteractionEvent:v14];
        v17[0] = 0;
        v17[1] = 0;
        if (!PBReaderPlaceMark() || !InteractionAnalysisPETInteractionEventReadFrom(v14, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v15 = [a2 position];
      if (v15 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = PBReaderReadString();
    v14 = *(a1 + 8);
    *(a1 + 8) = v13;
LABEL_22:

    goto LABEL_23;
  }

  return [a2 hasError] ^ 1;
}

void OUTLINED_FUNCTION_4_22(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint8_t buf)
{

  _os_log_debug_impl(a1, v11, OS_LOG_TYPE_DEBUG, a4, &buf, 0x2Au);
}

void findAutoSuPlanByProbability_cold_1(int *a1, int *a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *a2;
  v6[0] = 67109376;
  v6[1] = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&dword_191750000, log, OS_LOG_TYPE_ERROR, "Interval too short, bestSuStart=%d, bestSuEnd=%d", v6, 0xEu);
  v5 = *MEMORY[0x1E69E9840];
}

void findAutoSuPlanByProbability_cold_2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void findAutoSuPlanByProbability_cold_3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __active_memory_limit_block_invoke_cold_2(int *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_191750000, a2, OS_LOG_TYPE_DEBUG, "active memory limit: %dMB", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

void ___siriSyncEnabledDidChangeCallback_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [(_DKSync2Coordinator *)v1 _deleteSiriEventsIfSiriCloudSyncHasBeenDisabled];
  }
}

void sleepPredictionWithParams2_cold_1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_191750000, a2, OS_LOG_TYPE_DEBUG, "Sleep Prediction: number of days in consideration = %d\n", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void sleepPredictionWithParams2_cold_2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_191750000, a2, OS_LOG_TYPE_DEBUG, "Sleep Prediction: %d probabilities given by sleep prediction algo. v2 (sleep: 0; wake: 1)", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void resolve_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Contact Resolution: Error fetching contacts from Contact Store = %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __dataCollectionIsEnabled_block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_191750000, MEMORY[0x1E69E9C10], a3, "Failed to determine iso country code with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __dataCollectionIsEnabled_block_invoke_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_191750000, MEMORY[0x1E69E9C10], a3, "Failed to determine country code with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __dataCollectionIsEnabled_block_invoke_cold_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_9(&dword_191750000, MEMORY[0x1E69E9C10], a3, "Failed to determine subscription context with error: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void _DKSync3PolicyDuplicateNSStringPropertyValue_cold_1()
{
  OUTLINED_FUNCTION_30_1();
  v1 = *MEMORY[0x1E69E9840];
  [OUTLINED_FUNCTION_19_2(v2 v3)];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_20_1() objectForKeyedSubscript:?];
  v5 = objc_opt_class();
  objc_opt_class();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_18_1(&dword_191750000, v6, v7, "Not setting %@ because %@ is a %@ instead of a %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void _DKSync3PolicyDoesContainRequiredProperties_cold_1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8_0();
  v4 = v0;
  _os_log_fault_impl(&dword_191750000, v1, OS_LOG_TYPE_FAULT, "Policy %@ is missing key %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void _DKSync3PolicyDuplicateNSArrayNSStringPropertyValue_cold_1()
{
  OUTLINED_FUNCTION_30_1();
  v1 = *MEMORY[0x1E69E9840];
  [OUTLINED_FUNCTION_19_2(v2 v3)];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_20_1() objectForKeyedSubscript:?];
  v5 = objc_opt_class();
  objc_opt_class();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_18_1(&dword_191750000, v6, v7, "Not setting %@ because %@ is a %@ instead of a %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void _DKSync3PolicyDuplicateNSArrayNSStringPropertyValue_cold_2()
{
  OUTLINED_FUNCTION_16();
  v6 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  objc_opt_class();
  OUTLINED_FUNCTION_15();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x2Au);

  v5 = *MEMORY[0x1E69E9840];
}

void _DKSync3PolicyDuplicateNSNumberPropertyValue_cold_1()
{
  OUTLINED_FUNCTION_30_1();
  v1 = *MEMORY[0x1E69E9840];
  [OUTLINED_FUNCTION_19_2(v2 v3)];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_20_1() objectForKeyedSubscript:?];
  v5 = objc_opt_class();
  objc_opt_class();
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_18_1(&dword_191750000, v6, v7, "Not setting %@ because %@ is a %@ instead of a %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

uint64_t getCNContactBirthdayKey_cold_1()
{
  dlerror();
  v0 = abort_report_np();
  return [_DKSyncPowerlog recordWithSyncType:v0 transportType:? startDate:? endDate:? isEmpty:?];
}

uint64_t _DKPREventReadFrom_cold_1(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = objc_alloc_init(_DKPRMetadataEntry);
  [(_DKPREvent *)a1 addMetadata:v8];
  *a2 = 0;
  a2[1] = 0;
  if (PBReaderPlaceMark() && _DKPRMetadataEntryReadFrom(v8, a3))
  {
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    result = 0;
    *a4 = 0;
  }

  return result;
}

void _clientNeedsHelpCallback_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void _clientNeedsHelpCallback_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_9(&dword_191750000, v0, v1, "Got unexpected observer in client help callback %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void _clientNeedsHelpCallback_cold_3()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_0(&dword_191750000, v0, v1, "Unable to handle help callback for %@ (%@)");
  v2 = *MEMORY[0x1E69E9840];
}

uint64_t _DKPRMetadataReadFrom_cold_1(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = objc_alloc_init(_DKPRMetadataEntry);
  [(_DKPRMetadata *)a1 addEntry:v8];
  *a2 = 0;
  a2[1] = 0;
  if (PBReaderPlaceMark() && _DKPRMetadataEntryReadFrom(v8, a3))
  {
    PBReaderRecallMark();

    return 1;
  }

  else
  {

    result = 0;
    *a4 = 0;
  }

  return result;
}

void _CDClientStateFromEventIndexerBookmark_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_2(&dword_191750000, v0, v1, "[Spotlight Indexer] Error archiving updated bookmark: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __recordInteractionsAsync_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = NSStringFromRange(*(a1 + 64));
  v5 = [*(a1 + 40) count];
  v7 = 138543618;
  v8 = v4;
  v9 = 2048;
  v10 = v5;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "[async path] got !ok from daemon for chunk %{public}@ in %tu interactions", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC6FE0](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}