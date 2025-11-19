__CFString *SGNSTextCheckingTypeToString(uint64_t a1)
{
  v1 = @"NSTextCheckingTypeTransitInformation";
  v2 = @"NSTextCheckingTypePhoneNumber";
  v3 = @"NSTextCheckingTypeLink";
  if (a1 != 32)
  {
    v3 = 0;
  }

  if (a1 != 2048)
  {
    v2 = v3;
  }

  if (a1 != 4096)
  {
    v1 = v2;
  }

  v4 = @"NSTextCheckingTypeDate";
  v5 = @"NSTextCheckingTypeAddress";
  if (a1 != 16)
  {
    v5 = 0;
  }

  if (a1 != 8)
  {
    v4 = v5;
  }

  if (a1 <= 31)
  {
    return v4;
  }

  else
  {
    return v1;
  }
}

__CFString *SGDataDetectorMatchTypeToString(unsigned int a1)
{
  if (a1 > 8)
  {
    return @"SGDDMatchOther";
  }

  else
  {
    return off_27894F1C0[a1];
  }
}

id SGDataDetectorsScanForPhone(void *a1)
{
  v1 = a1;
  if ([v1 length])
  {
    v2 = [v1 length];
    if (v2 >= 0x64)
    {
      v3 = 100;
    }

    else
    {
      v3 = v2;
    }

    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__22165;
    v15 = __Block_byref_object_dispose__22166;
    v16 = 0;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __SGDataDetectorsScanForPhone_block_invoke;
    v6[3] = &unk_27894F1A0;
    v9 = 0;
    v10 = v3;
    v7 = v1;
    v8 = &v11;
    SGDataDetectorsRunWithSharedScanner(v6);
    v4 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_231FCC710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22165(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __SGDataDetectorsScanForPhone_block_invoke(void *a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D04200];
  DDScannerSetScannerTimeout();
  v5 = a1[4];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __SGDataDetectorsScanForPhone_block_invoke_2;
  v10[3] = &unk_27894F178;
  v6 = v5;
  v8 = a1[5];
  v7 = a1[6];
  v11 = v6;
  v12 = v8;
  SGDataDetectorsScanRange(a2, v6, v7, a1[7], 0, v10);
  v9 = *MEMORY[0x277D041F8];
  DDScannerSetScannerTimeout();
}

uint64_t __SGDataDetectorsScanForPhone_block_invoke_2(uint64_t a1)
{
  v2 = *MEMORY[0x277D04160];
  HasType = DDResultHasType();
  if (HasType)
  {
    if ([*(a1 + 32) length] < 0x65 || (Range = DDResultGetRange(), (Range + v5) <= 0x5A))
    {
      if (DDResultCopyPhoneValue())
      {
        v6 = *(*(a1 + 40) + 8);
        v7 = *(v6 + 40);
        *(v6 + 40) = 0;
      }
    }
  }

  return HasType ^ 1u;
}

id SGDataDetectorsScanForPhoneLessCarefully(void *a1)
{
  v1 = a1;
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v4 = [v1 stringByTrimmingCharactersInSet:v3];

  objc_autoreleasePoolPop(v2);
  if ([v4 length] < 5 || objc_msgSend(v4, "length") >= 0x15)
  {
    v5 = SGDataDetectorsScanForPhone(v4);
LABEL_36:
    v26 = v5;
    goto LABEL_37;
  }

  v6 = v4;
  v7 = objc_opt_self();

  if (!v7)
  {
    goto LABEL_35;
  }

  memset(v28, 0, sizeof(v28));
  Length = CFStringGetLength(v6);
  theString = v6;
  v32 = 0;
  v33 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v6);
  CStringPtr = 0;
  v30 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v6, 0x600u);
  }

  v34 = 0;
  v35 = 0;
  v31 = CStringPtr;
  if (Length < 1)
  {
LABEL_35:

    v5 = v6;
    goto LABEL_36;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 64;
  while (1)
  {
    v15 = v13 >= 4 ? 4 : v13;
    v16 = v33;
    if (v33 <= v13)
    {
      break;
    }

    if (v30)
    {
      v17 = &v30[v32];
    }

    else
    {
      if (v31)
      {
        v18 = v31[v32 + v13];
        goto LABEL_18;
      }

      v21 = v35 > v13 && v12 <= v13;
      if (!v21)
      {
        v22 = v15 + v11;
        v23 = v14 - v15;
        v24 = v13 - v15;
        v25 = v24 + 64;
        if (v24 + 64 >= v33)
        {
          v25 = v33;
        }

        v34 = v24;
        v35 = v25;
        if (v33 >= v23)
        {
          v16 = v23;
        }

        v37.location = v24 + v32;
        v37.length = v16 + v22;
        CFStringGetCharacters(theString, v37, v28);
        v12 = v34;
      }

      v17 = v28 - v12;
    }

    v18 = v17[v13];
LABEL_18:
    if (v18 - 48 >= 0xA)
    {
      v21 = v18 > 0x2Du;
      v19 = (1 << v18) & 0x2B0100000000;
      if (v21 || v19 == 0)
      {
        break;
      }
    }

    ++v13;
    --v11;
    ++v14;
    if (Length == v13)
    {
      goto LABEL_35;
    }
  }

  v26 = SGDataDetectorsScanForPhone(v6);

LABEL_37:

  return v26;
}

void sub_231FCE558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  SGRecordMeasurementState(&a67);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__22534(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231FD1878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 160), 8);
  _Block_object_dispose((v31 - 128), 8);
  _Block_object_dispose((v31 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_231FD2AB8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 176), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Block_object_dispose((v1 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_231FD46F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FD4D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FD6BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FD7310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46)
{
  _Block_object_dispose(&a25, 8);
  SGRecordMeasurementState(&a46);
  _Unwind_Resume(a1);
}

void SGEnumerateReplyAttributionCandidates(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (!callBlockOnFirstlineCandidate(v3, v4))
  {
    goto LABEL_10;
  }

  v5 = [(__CFString *)v3 length];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  *buffer = 0u;
  v59 = 0u;
  theString = v3;
  v69 = 0;
  v70 = v5;
  CharactersPtr = CFStringGetCharactersPtr(v3);
  CStringPtr = 0;
  v67 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
  }

  v57 = v3;
  v8 = 0;
  v9 = 0;
  v71 = 0;
  v72 = 0;
  v68 = CStringPtr;
  if (v5)
  {
    v10 = v5;
    v11 = 0;
    goto LABEL_64;
  }

  v12 = 7;
  v11 = 0;
LABEL_176:
  while (2)
  {
    if (v12 > 4)
    {
      if ((v12 - 5) < 2)
      {
        goto LABEL_220;
      }

      v8 = v5;
      if (v12 == 8)
      {
        goto LABEL_220;
      }

      if (v12 != 9)
      {
        goto LABEL_9;
      }

LABEL_59:
      v15 = v8 - 1;
      v13 = v8 - 2;
      if (!(*(v4 + 2))(v4, v11, v8 - 1 - v11))
      {
        goto LABEL_9;
      }

      while (1)
      {
LABEL_60:
        v11 = v13 + 1;
        v12 = 7;
        if (v13 + 1 == v5)
        {
          v11 = 0;
          v8 = v15;
          goto LABEL_176;
        }

        if ((v11 & 0x8000000000000000) == 0)
        {
          v10 = v70;
LABEL_64:
          if (v10 > v11)
          {
            if (v67)
            {
              v25 = v67[v69 + v11];
            }

            else if (v68)
            {
              v25 = v68[v69 + v11];
            }

            else
            {
              if (v72 <= v11 || (v26 = v71, v71 > v11))
              {
                v27 = v11 - 4;
                if (v11 < 4)
                {
                  v27 = 0;
                }

                if (v27 + 64 < v10)
                {
                  v10 = v27 + 64;
                }

                v71 = v27;
                v72 = v10;
                v74.length = v10 - v27;
                v74.location = v69 + v27;
                CFStringGetCharacters(theString, v74, buffer);
                v26 = v71;
              }

              v25 = buffer[v11 - v26];
            }

            if (v25 == 10)
            {
              break;
            }
          }
        }

        v15 = v11 + 1;
        v13 = v11;
      }

      v8 = v11 + 1;
      if (v11 + 1 == v5)
      {
        v12 = 8;
        v9 = 2;
LABEL_80:
        v8 = v5;
        continue;
      }

      v28 = v70;
      if (v70 > v8)
      {
        if (v67)
        {
          v29 = v67[v69 + v8];
        }

        else if (v68)
        {
          v29 = v68[v69 + v8];
        }

        else
        {
          if (v72 <= v8 || (v30 = v71, v71 > v8))
          {
            v31 = v11 - 3;
            if (v8 < 4)
            {
              v31 = 0;
            }

            if (v31 + 64 < v70)
            {
              v28 = v31 + 64;
            }

            v71 = v31;
            v72 = v28;
            v75.length = v28 - v31;
            v75.location = v69 + v31;
            CFStringGetCharacters(theString, v75, buffer);
            v30 = v71;
          }

          v29 = buffer[v8 - v30];
        }

        if (v29 == 10)
        {
          v9 = 2;
          goto LABEL_220;
        }
      }

      v32 = v11 + 2;
      if (v11 + 2 == v5)
      {
        v12 = 0;
LABEL_175:
        v9 = 2;
        continue;
      }

      v33 = v11 + 1;
      v9 = 2;
      while (1)
      {
        if (v32 < 0 || (v34 = v70, v70 <= v32))
        {
          i = v32;
          goto LABEL_105;
        }

        if (v67)
        {
          v35 = v67[v69 + v32];
        }

        else if (v68)
        {
          v35 = v68[v69 + v32];
        }

        else
        {
          if (v72 <= v32 || (v37 = v71, v71 > v32))
          {
            v38 = v32 - 4;
            if (v32 < 4)
            {
              v38 = 0;
            }

            if (v38 + 64 < v70)
            {
              v34 = v38 + 64;
            }

            v71 = v38;
            v72 = v34;
            v76.length = v34 - v38;
            v76.location = v69 + v38;
            CFStringGetCharacters(theString, v76, buffer);
            v37 = v71;
          }

          v35 = buffer[v32 - v37];
        }

        if (v35 == 58 || v35 == 65306)
        {
          break;
        }

        i = v32;
        if (v35 == 10)
        {
          v50 = v33 + 2;
          if (v33 + 2 == v5)
          {
            v12 = 1;
            goto LABEL_175;
          }

          v9 = 2;
          if (v50 < 0)
          {
            goto LABEL_206;
          }

          v51 = v70;
          if (v70 <= v50)
          {
            goto LABEL_206;
          }

          if (v67)
          {
            v52 = v67[v69 + v50];
          }

          else if (v68)
          {
            v52 = v68[v69 + v50];
          }

          else
          {
            if (v72 <= v50 || (v55 = v71, v71 > v50))
            {
              v56 = v33 - 2;
              if (v50 < 4)
              {
                v56 = 0;
              }

              if (v56 + 64 < v70)
              {
                v51 = v56 + 64;
              }

              v71 = v56;
              v72 = v51;
              v80.length = v51 - v56;
              v80.location = v69 + v56;
              CFStringGetCharacters(theString, v80, buffer);
              v55 = v71;
            }

            v52 = buffer[v50 - v55];
          }

          if (v52 != 10)
          {
            goto LABEL_206;
          }

LABEL_220:
          v13 = v8 - 1;
LABEL_221:
          v15 = v8;
          goto LABEL_60;
        }

LABEL_105:
        v32 = i + 1;
        v33 = i;
        if (i + 1 == v5)
        {
          v12 = 0;
          goto LABEL_176;
        }
      }

      for (i = v32 + 1; ; ++i)
      {
        if (i == v5)
        {
          v12 = 5;
          goto LABEL_175;
        }

        if (i < 0)
        {
          goto LABEL_105;
        }

        v40 = v70;
        if (v70 <= i)
        {
          goto LABEL_105;
        }

        if (v67)
        {
          LOWORD(v41) = v67[v69 + i];
        }

        else if (v68)
        {
          LOWORD(v41) = v68[v69 + i];
        }

        else
        {
          if (v72 <= i || (v42 = v71, v71 > i))
          {
            v43 = i - 4;
            if (i < 4)
            {
              v43 = 0;
            }

            if (v43 + 64 < v70)
            {
              v40 = v43 + 64;
            }

            v71 = v43;
            v72 = v40;
            v77.length = v40 - v43;
            v77.location = v69 + v43;
            CFStringGetCharacters(theString, v77, buffer);
            v42 = v71;
          }

          LOWORD(v41) = buffer[i - v42];
        }

        v41 = v41;
        if (v41 > 0x39u)
        {
          v44 = v41 == 58 || v41 == 65306;
          if (!v44 && v41 != 160)
          {
            goto LABEL_105;
          }
        }

        else if (v41 <= 0xCu)
        {
          if (v41 != 9)
          {
            goto LABEL_171;
          }
        }

        else if (v41 == 13)
        {
          i = v32 + 2;
          if (v32 + 2 == v5)
          {
            v12 = 6;
            goto LABEL_175;
          }

          if (i < 0)
          {
            goto LABEL_105;
          }

          v45 = v70;
          if (v70 <= i)
          {
            goto LABEL_105;
          }

          if (v67)
          {
            LOWORD(v41) = v67[v69 + i];
          }

          else if (v68)
          {
            LOWORD(v41) = v68[v69 + i];
          }

          else
          {
            if (v72 <= i || (v46 = v71, v71 > i))
            {
              v47 = v32 - 2;
              if (i < 4)
              {
                v47 = 0;
              }

              if (v47 + 64 < v70)
              {
                v45 = v47 + 64;
              }

              v71 = v47;
              v72 = v45;
              v78.length = v45 - v47;
              v78.location = v69 + v47;
              CFStringGetCharacters(theString, v78, buffer);
              v46 = v71;
            }

            LOWORD(v41) = buffer[i - v46];
          }

          v41 = v41;
          if (v41 != 58 && v41 != 65306)
          {
LABEL_171:
            if (v41 != 10)
            {
              goto LABEL_105;
            }

            v8 = i + 1;
            if (i + 1 == v5)
            {
              v12 = 9;
              v9 = 1;
              goto LABEL_80;
            }

            v48 = v70;
            v9 = 1;
            if (v70 <= v8)
            {
              goto LABEL_205;
            }

            if (v67)
            {
              v49 = v67[v69 + v8];
            }

            else if (v68)
            {
              v49 = v68[v69 + v8];
            }

            else
            {
              if (v72 <= v8 || (v53 = v71, v71 > v8))
              {
                v54 = i - 3;
                if (v8 < 4)
                {
                  v54 = 0;
                }

                if (v54 + 64 < v70)
                {
                  v48 = v54 + 64;
                }

                v71 = v54;
                v72 = v48;
                v79.length = v48 - v54;
                v79.location = v69 + v54;
                CFStringGetCharacters(theString, v79, buffer);
                v53 = v71;
              }

              v49 = buffer[v8 - v53];
            }

            if (v49 != 10)
            {
LABEL_205:
              v50 = i + 1;
LABEL_206:
              v24 = v50 + 1;
              if (v50 + 1 == v5)
              {
                v12 = 2;
              }

              else
              {
                while (1)
                {
                  CharacterFromInlineBuffer = CFStringGetCharacterFromInlineBuffer(buffer, v24);
                  if (CharacterFromInlineBuffer == 58 || CharacterFromInlineBuffer == 65306)
                  {
                    break;
                  }

                  v15 = v24;
                  if (CharacterFromInlineBuffer == 10)
                  {
                    goto LABEL_7;
                  }

LABEL_50:
                  v24 = v15 + 1;
                  v12 = 2;
                  if (v15 + 1 == v5)
                  {
                    goto LABEL_176;
                  }
                }

                v15 = v24 + 1;
                if (v24 + 1 != v5)
                {
                  while (1)
                  {
                    if (v15 < 0)
                    {
                      goto LABEL_50;
                    }

                    v18 = v70;
                    if (v70 <= v15)
                    {
                      goto LABEL_50;
                    }

                    if (v67)
                    {
                      v19 = v67[v69 + v15];
                    }

                    else if (v68)
                    {
                      v19 = v68[v69 + v15];
                    }

                    else
                    {
                      if (v72 <= v15 || (v20 = v71, v71 > v15))
                      {
                        v21 = v15 - 4;
                        if (v15 < 4)
                        {
                          v21 = 0;
                        }

                        if (v21 + 64 < v70)
                        {
                          v18 = v21 + 64;
                        }

                        v71 = v21;
                        v72 = v18;
                        v73.length = v18 - v21;
                        v73.location = v69 + v21;
                        CFStringGetCharacters(theString, v73, buffer);
                        v20 = v71;
                      }

                      v19 = buffer[v15 - v20];
                    }

                    if (v19 > 0x39u)
                    {
                      v22 = v19 == 58 || v19 == 65306;
                      if (!v22 && v19 != 160)
                      {
                        goto LABEL_50;
                      }
                    }

                    else if (v19 <= 0xCu)
                    {
                      if (v19 != 9)
                      {
                        if (v19 != 10)
                        {
                          goto LABEL_50;
                        }

LABEL_55:
                        if (((*(v4 + 2))(v4, v11, v15 - v11) & 1) == 0)
                        {
                          goto LABEL_9;
                        }

                        v13 = v15 - 1;
                        goto LABEL_60;
                      }
                    }

                    else if (v19 == 13)
                    {
                      v15 = v24 + 2;
                      if (v24 + 2 == v5)
                      {
                        v12 = 4;
                        goto LABEL_176;
                      }

                      v23 = CFStringGetCharacterFromInlineBuffer(buffer, v24 + 2);
                      if (v23 != 58 && v23 != 65306)
                      {
                        if (v23 != 10)
                        {
                          goto LABEL_50;
                        }

                        goto LABEL_55;
                      }
                    }

                    else if (v19 != 32)
                    {
                      goto LABEL_50;
                    }

                    v24 = v15++;
                    v12 = 3;
                    if (v15 == v5)
                    {
                      goto LABEL_176;
                    }
                  }
                }

                v12 = 3;
              }

              goto LABEL_176;
            }

            goto LABEL_59;
          }
        }

        else if (v41 != 32)
        {
          goto LABEL_105;
        }

        v32 = i;
      }
    }

    break;
  }

  if ((v12 - 2) < 3)
  {
LABEL_7:
    v13 = v8 - 1;
    if (v9 != 1)
    {
      goto LABEL_221;
    }

    v14 = (*(v4 + 2))(v4, v11, v13 - v11);
    v15 = v8 - 1;
    v13 = v8 - 2;
    if (v14)
    {
      goto LABEL_60;
    }
  }

  else if (v12 < 2)
  {
    goto LABEL_220;
  }

LABEL_9:
  v3 = v57;
LABEL_10:
}

uint64_t callBlockOnFirstlineCandidate(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = objc_opt_self();

  if (!v6)
  {
    goto LABEL_36;
  }

  memset(v27, 0, sizeof(v27));
  Length = CFStringGetLength(v5);
  theString = v5;
  v31 = 0;
  v32 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v5);
  CStringPtr = 0;
  v29 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
  }

  v33 = 0;
  v34 = 0;
  v30 = CStringPtr;
  if (Length < 1)
  {
    goto LABEL_36;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 64;
  while (1)
  {
    if (v13 >= 4)
    {
      v15 = 4;
    }

    else
    {
      v15 = v13;
    }

    v16 = v32;
    if (v32 <= v13)
    {
      goto LABEL_22;
    }

    if (v29)
    {
      v17 = &v29[v31];
LABEL_12:
      v18 = v17[v13];
      goto LABEL_15;
    }

    if (!v30)
    {
      if (v34 <= v13 || v11 > v13)
      {
        v21 = v15 + v10;
        v22 = v14 - v15;
        v23 = v13 - v15;
        v24 = v23 + 64;
        if (v23 + 64 >= v32)
        {
          v24 = v32;
        }

        v33 = v23;
        v34 = v24;
        if (v32 >= v22)
        {
          v16 = v22;
        }

        v35.location = v23 + v31;
        v35.length = v16 + v21;
        CFStringGetCharacters(theString, v35, v27);
        v11 = v33;
      }

      v17 = v27 - v11;
      goto LABEL_12;
    }

    v18 = v30[v31 + v13];
LABEL_15:
    if (v18 != 58 && v18 != 65306)
    {
      break;
    }

    v12 = 1;
LABEL_22:
    ++v13;
    --v10;
    ++v14;
    if (Length == v13)
    {
      goto LABEL_36;
    }
  }

  if (v18 != 10)
  {
    goto LABEL_22;
  }

  if (!v12)
  {
LABEL_36:
    v25 = 1;
    goto LABEL_37;
  }

  v25 = v4[2](v4, 0, v13);
LABEL_37:

  return v25;
}

uint64_t CFStringGetCharacterFromInlineBuffer(UniChar *buffer, int64_t a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  else
  {
    v4 = *(buffer + 20);
    if (v4 <= a2)
    {
      return 0;
    }

    else
    {
      v5 = *(buffer + 17);
      if (v5)
      {
        return *(v5 + 2 * *(buffer + 19) + 2 * a2);
      }

      else
      {
        v8 = *(buffer + 18);
        if (v8)
        {
          return *(v8 + *(buffer + 19) + a2);
        }

        else
        {
          if (*(buffer + 22) <= a2 || (v9 = *(buffer + 21), v9 > a2))
          {
            v10 = a2 - 4;
            if (a2 < 4)
            {
              v10 = 0;
            }

            if (v10 + 64 < v4)
            {
              v4 = v10 + 64;
            }

            *(buffer + 21) = v10;
            *(buffer + 22) = v4;
            v11.length = v4 - v10;
            v11.location = *(buffer + 19) + v10;
            CFStringGetCharacters(*(buffer + 16), v11, buffer);
            v9 = *(buffer + 21);
          }

          return buffer[a2 - v9];
        }
      }
    }
  }
}

void SGEnumerateBodyHeaderCandidates(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (callBlockOnFirstlineCandidate(v3, v4))
  {
    v66 = v4;
    v5 = [(__CFString *)v3 length];
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    *buffer = 0u;
    v68 = 0u;
    theString = v3;
    v78 = 0;
    v79 = v5;
    CharactersPtr = CFStringGetCharactersPtr(v3);
    CStringPtr = 0;
    v76 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
    }

    v65 = v3;
    v8 = 0;
    v80 = 0;
    v81 = 0;
    v77 = CStringPtr;
    if (v5)
    {
      v9 = v5;
      i = 0;
      goto LABEL_15;
    }

    v11 = 4;
LABEL_9:
    while (2)
    {
      while (2)
      {
        if (v11 >= 4)
        {
          v8 = v5;
          if (v11 != 5)
          {
LABEL_11:
            v3 = v65;
            v4 = v66;
            goto LABEL_12;
          }
        }

LABEL_7:
        for (i = v8 - 1; ; v8 = i + 1)
        {
LABEL_8:
          ++i;
          v11 = 4;
          if (i == v5)
          {
            goto LABEL_9;
          }

          if ((i & 0x8000000000000000) == 0)
          {
            v9 = v79;
LABEL_15:
            if (v9 > i)
            {
              if (v76)
              {
                v12 = v76[v78 + i];
              }

              else if (v77)
              {
                v12 = v77[v78 + i];
              }

              else
              {
                if (v81 <= i || (v13 = v80, v80 > i))
                {
                  v14 = i - 4;
                  if (i < 4)
                  {
                    v14 = 0;
                  }

                  if (v14 + 64 < v9)
                  {
                    v9 = v14 + 64;
                  }

                  v80 = v14;
                  v81 = v9;
                  v82.length = v9 - v14;
                  v82.location = v78 + v14;
                  CFStringGetCharacters(theString, v82, buffer);
                  v13 = v80;
                }

                v12 = buffer[i - v13];
              }

              if (v12 == 10)
              {
                break;
              }
            }
          }
        }

        v8 = i + 1;
        if (i + 1 == v5)
        {
          v11 = 5;
          v8 = v5;
          continue;
        }

        break;
      }

      v15 = v79;
      if (v79 > v8)
      {
        if (v76)
        {
          v16 = v76[v78 + v8];
        }

        else if (v77)
        {
          v16 = v77[v78 + v8];
        }

        else
        {
          if (v81 <= v8 || (v17 = v80, v80 > v8))
          {
            v18 = i - 3;
            if (v8 < 4)
            {
              v18 = 0;
            }

            if (v18 + 64 < v79)
            {
              v15 = v18 + 64;
            }

            v80 = v18;
            v81 = v15;
            v83.length = v15 - v18;
            v83.location = v78 + v18;
            CFStringGetCharacters(theString, v83, buffer);
            v17 = v80;
          }

          v16 = buffer[v8 - v17];
        }

        if (v16 == 10)
        {
          goto LABEL_7;
        }
      }

      v19 = i + 2;
      if (i + 2 == v5)
      {
LABEL_47:
        v11 = 0;
        continue;
      }

      break;
    }

    v20 = &buffer[1];
    while (1)
    {
      if ((v19 & 0x8000000000000000) == 0)
      {
        v21 = v79;
        if (v79 > v19)
        {
          if (v76)
          {
            v22 = v76[v78 + v19];
          }

          else if (v77)
          {
            v22 = v77[v78 + v19];
          }

          else
          {
            if (v81 <= v19 || (v23 = v80, v80 > v19))
            {
              v24 = v19 - 4;
              if (v19 < 4)
              {
                v24 = 0;
              }

              if (v24 + 64 < v79)
              {
                v21 = v24 + 64;
              }

              v80 = v24;
              v81 = v21;
              v84.length = v21 - v24;
              v84.location = v78 + v24;
              v25 = v20;
              CFStringGetCharacters(theString, v84, buffer);
              v20 = v25;
              v23 = v80;
            }

            v22 = buffer[v19 - v23];
          }

          if (v22 == 58 || v22 == 65306)
          {
            v27 = v19 + 1;
            if (v19 + 1 == v5)
            {
              v11 = 1;
              goto LABEL_9;
            }

            v28 = ~v19;
            v29 = v19 + 65;
            while (1)
            {
              v30 = v19 + 1;
              if (v27 >= 4)
              {
                v31 = 4;
              }

              else
              {
                v31 = v27;
              }

              v32 = v79;
              if (v79 <= v30)
              {
                goto LABEL_99;
              }

              if (v76)
              {
                v33 = v76[v78 + 1 + v19];
              }

              else if (v77)
              {
                v33 = v77[v78 + 1 + v19];
              }

              else
              {
                v34 = v80;
                if (v81 <= v30 || v80 > v30)
                {
                  v36 = v31 + v28;
                  v37 = v29 - v31;
                  v38 = v19 - v31;
                  v39 = v38 + 1;
                  v40 = v38 + 65;
                  if (v40 >= v79)
                  {
                    v40 = v79;
                  }

                  v80 = v39;
                  v81 = v40;
                  if (v79 >= v37)
                  {
                    v32 = v37;
                  }

                  v85.location = v39 + v78;
                  v85.length = v32 + v36;
                  v41 = v20;
                  CFStringGetCharacters(theString, v85, buffer);
                  v20 = v41;
                  v34 = v80;
                }

                v33 = v20[v19 - v34];
              }

              if (v33 <= 0x39u)
              {
                break;
              }

              if (v33 != 58 && v33 != 65306)
              {
                if (v33 == 160)
                {
                  goto LABEL_104;
                }

LABEL_99:
                ++v19;
                goto LABEL_101;
              }

              ++v27;
              ++v19;
              --v28;
              ++v29;
              v11 = 1;
              if (v5 - 1 == v19)
              {
                goto LABEL_9;
              }
            }

            if (v33 != 9)
            {
              if (v33 == 10)
              {
                goto LABEL_7;
              }

              if (v33 != 32)
              {
                goto LABEL_99;
              }
            }

LABEL_104:
            v43 = v19 + 2;
            if (v19 + 2 == v5)
            {
              v11 = 2;
              goto LABEL_9;
            }

            v44 = v19 + 67;
            v45 = -3 - v19;
            v46 = v19 + 3;
            if ((v43 & 0x8000000000000000) == 0)
            {
              v47 = v79;
              if (v79 > v43)
              {
                if (v76)
                {
                  v48 = v76[v78 + v43];
                }

                else if (v77)
                {
                  v48 = v77[v78 + v43];
                }

                else
                {
                  if (v81 <= v43 || (v49 = v80, v80 > v43))
                  {
                    v50 = v19 - 2;
                    if (v43 < 4)
                    {
                      v50 = 0;
                    }

                    if (v50 + 64 < v79)
                    {
                      v47 = v50 + 64;
                    }

                    v80 = v50;
                    v81 = v47;
                    v86.length = v47 - v50;
                    v86.location = v78 + v50;
                    CFStringGetCharacters(theString, v86, buffer);
                    v49 = v80;
                  }

                  v48 = buffer[v43 - v49];
                }

                if (v48 == 10)
                {
                  goto LABEL_7;
                }
              }
            }

            v51 = &buffer[3];
            do
            {
              if (v46 >= 4)
              {
                v52 = 4;
              }

              else
              {
                v52 = v46;
              }

              if (v5 - 3 == v19)
              {
                v11 = 3;
                goto LABEL_9;
              }

              v53 = v19;
              v54 = v19 + 3;
              if (v19 + 3 < 0 || (v55 = v79, v79 <= v54))
              {
                v56 = 0;
              }

              else if (v76)
              {
                v56 = v76[v78 + 3 + v19];
              }

              else if (v77)
              {
                v56 = v77[v78 + 3 + v19];
              }

              else
              {
                if (v81 <= v54 || (v57 = v80, v80 > v54))
                {
                  v58 = v52 + v45;
                  v59 = v44 - v52;
                  v60 = v19 - v52;
                  v61 = v51;
                  v62 = v60 + 3;
                  v63 = v60 + 67;
                  if (v63 >= v79)
                  {
                    v63 = v79;
                  }

                  v80 = v62;
                  v81 = v63;
                  if (v79 >= v59)
                  {
                    v55 = v59;
                  }

                  v87.location = v62 + v78;
                  v87.length = v55 + v58;
                  CFStringGetCharacters(theString, v87, buffer);
                  v51 = v61;
                  v57 = v80;
                }

                v56 = v51[v53 - v57];
              }

              v19 = v53 + 1;
              ++v46;
              --v45;
              ++v44;
            }

            while (v56 != 10);
            v8 = v53 + 3;
            v64 = v66[2](v66, i, v53 + 3 - i);
            if ((v64 & 1) == 0)
            {
              goto LABEL_11;
            }

            i = v53 + 2;
            goto LABEL_8;
          }

          if (v22 == 10)
          {
            goto LABEL_7;
          }
        }
      }

LABEL_101:
      if (++v19 == v5)
      {
        goto LABEL_47;
      }
    }
  }

LABEL_12:
}

void charactersSAX(void *a1, uint64_t a2, int a3)
{
  v5 = MEMORY[0x277CCACA8];
  v6 = a1;
  v7 = [[v5 alloc] initWithBytes:a2 length:a3 encoding:4];
  [v6 appendString:v7];
}

void sub_231FDBC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Unwind_Resume(a1);
}

id patterns_23118()
{
  if (patterns_onceToken_23161 != -1)
  {
    dispatch_once(&patterns_onceToken_23161, &__block_literal_global_206_23162);
  }

  v1 = patterns_patterns_23163;

  return v1;
}

id nontokenCharset()
{
  if (nontokenCharset_onceToken != -1)
  {
    dispatch_once(&nontokenCharset_onceToken, &__block_literal_global_244);
  }

  v1 = nontokenCharset_nontoken;

  return v1;
}

void __nontokenCharset_block_invoke()
{
  v0 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v4 = [v0 mutableCopy];

  v1 = punctuationCharset();
  [v4 formUnionWithCharacterSet:v1];

  v2 = [v4 copy];
  v3 = nontokenCharset_nontoken;
  nontokenCharset_nontoken = v2;
}

id punctuationCharset()
{
  if (punctuationCharset__pasOnceToken3 != -1)
  {
    dispatch_once(&punctuationCharset__pasOnceToken3, &__block_literal_global_239);
  }

  v1 = punctuationCharset__pasExprOnceResult;

  return v1;
}

void __punctuationCharset_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:{@"., ?"}];
  v2 = punctuationCharset__pasExprOnceResult;
  punctuationCharset__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

uint64_t __patterns_block_invoke_23166()
{
  v0 = [SGPatterns patternsForClass:objc_opt_class()];
  v1 = patterns_patterns_23163;
  patterns_patterns_23163 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void tokenize(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a5;
  if (a3 > [v9 length] || a3 + a4 > objc_msgSend(v9, "length"))
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void tokenize(NSString *__strong, TokenizationState *, NSRange, NSString *__strong)"}];
    [v12 handleFailureInFunction:v13 file:@"SGSignatureDissector.m" lineNumber:239 description:{@"tokenize range (%lu, %lu) beyond text length %lu", a3, a4, objc_msgSend(v9, "length")}];
  }

  if (tokenize_onceToken != -1)
  {
    dispatch_once(&tokenize_onceToken, &__block_literal_global_217);
  }

  pthread_mutex_lock(&tokenize_updateLock);
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x2020000000;
  v19 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __tokenize_block_invoke_3;
  v14[3] = &unk_27894F6F0;
  v16 = v18;
  v11 = v10;
  v15 = v11;
  v17 = a2;
  [SGTokenizer enumerateTokensInString:v9 withRange:a3 block:a4, v14];
  pthread_mutex_unlock(&tokenize_updateLock);

  _Block_object_dispose(v18, 8);
}

void sub_231FDE030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void **emitToken(void **result, char a2, int a3)
{
  v5 = result;
  v6 = *result;
  if (*result >= result[1])
  {
    v7 = result[1] + (result[1] & 1) + (result[1] >> 1);
    result[1] = v7;
    v8 = reallocf(result[2], v7);
    if (!v8 || (v5[2] = v8, (result = reallocf(v5[3], 4 * v5[1])) == 0))
    {
      v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE728] reason:@"malloc failed" userInfo:0];
      objc_exception_throw(v10);
    }

    v5[3] = result;
    v6 = *v5;
  }

  v6[v5[2]] = a2;
  v9 = *v5;
  *(v5[3] + *v5) = a3;
  *v5 = v9 + 1;
  return result;
}

void __viterbi_block_invoke()
{
  atomic_store(0, viterbi_hmmLoaded);
  v0 = +[SGAsset asset];
  v1 = [v0 registerUpdateHandler:&__block_literal_global_248_23201];

  v2 = +[SGAsset asset];
  __viterbi_block_invoke_2(v2, v2);
}

void __viterbi_block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v2 filesystemPathForAssetDataRelativePath:@"hmm.dat"];
  if (v4)
  {
    v12 = 0;
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v4 options:1 error:&v12];
    v6 = v12;
    if (v5)
    {
      v7 = v5;
      if ([v7 length] != 336)
      {
        v10 = [MEMORY[0x277CCA890] currentHandler];
        v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void deserializeHmm(NSData *__strong)"];
        [v10 handleFailureInFunction:v11 file:@"SGSignatureDissector.m" lineNumber:1353 description:{@"Wrong data length: %li", objc_msgSend(v7, "length")}];
      }

      memcpy(hmm, [v7 bytes], 0x150uLL);

      atomic_store(1u, viterbi_hmmLoaded);
    }

    else
    {
      v8 = sgLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v14 = v6;
        _os_log_error_impl(&dword_231E60000, v8, OS_LOG_TYPE_ERROR, "Could not load HMM data: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v6, OS_LOG_TYPE_ERROR, "Could not fetch filesystem path for HMM", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(v3);
  v9 = *MEMORY[0x277D85DE8];
}

void __tokenize_block_invoke_3(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  if ([v8 length])
  {
    v9 = [v8 characterAtIndex:0];
    if (v9 > 0x7F)
    {
      v10 = __maskrune(v9, 0x8000uLL);
    }

    else
    {
      v10 = *(MEMORY[0x277D85DE0] + 4 * v9 + 60) & 0x8000;
    }

    v11 = [v8 lowercaseString];
    v12 = [tokenize_trie payloadForString:v11];
    if (v12)
    {
      v13 = v12 - 1;
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    else
    {
      if ([v11 length] != 1 || objc_msgSend(v11, "characterAtIndex:", 0) != 45 && objc_msgSend(v11, "characterAtIndex:", 0) != 95)
      {
        *(*(*(a1 + 40) + 8) + 24) = 0;
        if (*(a1 + 32))
        {
          v15 = [v11 rangeOfString:?];
          if (!v15)
          {
            v13 = 10;
            goto LABEL_7;
          }
        }

        else
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        v16 = [v11 length];
        v17 = v16 - [*(a1 + 32) length];
        v13 = 10;
        if (v15 != v17)
        {
          v18 = [SGNames isLowercaseStringCommonNameWord:v8];
          v13 = v18 ? 10 : 8;
          if (!v18 && !v10)
          {
            v13 = 7;
            if ([v8 characterAtIndex:0] - 48 <= 9)
            {
              v19 = punctuationCharset();
              v20 = [v8 length];
              v23[0] = MEMORY[0x277D85DD0];
              v23[1] = 3221225472;
              v23[2] = __tokenize_block_invoke_4;
              v23[3] = &unk_27894F6C8;
              v21 = v8;
              v22 = *(a1 + 48);
              v24 = v21;
              v25 = v22;
              v26 = a4;
              v27 = a5;
              v28 = 7;
              enumerateTokensSeparatedByCharset(v21, v19, 0, v20, v23);

              goto LABEL_8;
            }
          }
        }

        goto LABEL_7;
      }

      v14 = *(*(a1 + 40) + 8);
      if (*(v14 + 24))
      {
        goto LABEL_8;
      }

      *(v14 + 24) = 1;
      v13 = 11;
    }

LABEL_7:
    emitToken(*(a1 + 48), v13, a4);
LABEL_8:
  }
}

void **__tokenize_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) substringWithRange:{a2, a3}];
  v6 = objc_opt_self();

  if (v6)
  {
    memset(v27, 0, sizeof(v27));
    Length = CFStringGetLength(v5);
    theString = v5;
    v31 = 0;
    v32 = Length;
    CharactersPtr = CFStringGetCharactersPtr(v5);
    CStringPtr = 0;
    v29 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
    }

    v33 = 0;
    v34 = 0;
    v30 = CStringPtr;
    if (Length >= 1)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 64;
      while (1)
      {
        if (v12 >= 4)
        {
          v14 = 4;
        }

        else
        {
          v14 = v12;
        }

        v15 = v32;
        if (v32 <= v12)
        {
LABEL_29:

          v25 = *(a1 + 64);
          v23 = *(a1 + 40);
          v24 = *(a1 + 48) + a2;
          return emitToken(v23, v25, v24);
        }

        if (v29)
        {
          break;
        }

        if (!v30)
        {
          if (v34 <= v12 || v11 > v12)
          {
            v19 = v14 + v10;
            v20 = v13 - v14;
            v21 = v12 - v14;
            v22 = v21 + 64;
            if (v21 + 64 >= v32)
            {
              v22 = v32;
            }

            v33 = v21;
            v34 = v22;
            if (v32 >= v20)
            {
              v15 = v20;
            }

            v35.location = v21 + v31;
            v35.length = v15 + v19;
            CFStringGetCharacters(theString, v35, v27);
            v11 = v33;
          }

          v16 = v27 - v11;
          goto LABEL_12;
        }

        v17 = v30[v31 + v12];
LABEL_15:
        if (v17 - 48 >= 0xA)
        {
          goto LABEL_29;
        }

        ++v12;
        --v10;
        ++v13;
        if (Length == v12)
        {
          goto LABEL_28;
        }
      }

      v16 = &v29[v31];
LABEL_12:
      v17 = v16[v12];
      goto LABEL_15;
    }
  }

LABEL_28:

  v23 = *(a1 + 40);
  v24 = *(a1 + 48) + a2;
  v25 = 9;
  return emitToken(v23, v25, v24);
}

void enumerateTokensSeparatedByCharset(const __CFString *a1, const __CFCharacterSet *a2, uint64_t a3, unint64_t a4, void *a5)
{
  v9 = a5;
  if (a1 && a4)
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    *buffer = 0u;
    v49 = 0u;
    theString = a1;
    v59 = a3;
    v60 = a4;
    CharactersPtr = CFStringGetCharactersPtr(a1);
    if (CharactersPtr)
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
    }

    v11 = a3 + a4;
    v61 = 0;
    v62 = 0;
    v58 = CStringPtr;
    v12 = -a3;
    v46 = 1 - a3;
    v13 = a3 - 1;
    v44 = v9;
    v45 = 65 - a3;
    v47 = 2 - 2 * a3;
    v14 = -(a4 + a3);
    v15 = a3;
    v42 = a3 + a4;
    v43 = a3;
    v41 = a3 - 1;
    do
    {
LABEL_7:
      v16 = v11 - v15;
      if (v11 == v15)
      {
        goto LABEL_48;
      }

      v17 = v15;
      v18 = v15 - a3;
      if (v18 < 0 || (v19 = v60, v60 <= v18))
      {
        v20 = 0;
      }

      else if (CharactersPtr)
      {
        v20 = CharactersPtr[v59 + v18];
      }

      else if (v58)
      {
        v20 = v58[v59 + v18];
      }

      else
      {
        if (v62 <= v18 || (v38 = v61, v61 > v18))
        {
          v39 = v18 - 4;
          if (v18 < 4)
          {
            v39 = 0;
          }

          if (v39 + 64 < v60)
          {
            v19 = v39 + 64;
          }

          v61 = v39;
          v62 = v19;
          v64.length = v19 - v39;
          v64.location = v59 + v39;
          CFStringGetCharacters(theString, v64, buffer);
          v38 = v61;
        }

        v20 = buffer[v18 - v38];
      }

      v15 = v17 + 1;
    }

    while (CFCharacterSetIsCharacterMember(a2, v20));
    v21 = v46 + v17;
    v22 = v13 - v17;
    v23 = v45 + v17;
    v24 = v17;
    while (1)
    {
      if (v21 >= 4)
      {
        v25 = 4;
      }

      else
      {
        v25 = v21;
      }

      if (v14 + v24 == -1)
      {
        v40 = objc_autoreleasePoolPush();
        v9 = v44;
        (*(v44 + 2))(v44, v17, v16);
        objc_autoreleasePoolPop(v40);
        break;
      }

      v26 = v24;
      v27 = v12 + v24 + 1;
      if (v27 < 0 || (v28 = v60, v60 <= v27))
      {
        v30 = 0;
      }

      else
      {
        if (CharactersPtr)
        {
          v29 = &CharactersPtr[v59] + v47;
        }

        else
        {
          if (v58)
          {
            v30 = v58[v59 + 1 + v12 + v24];
            goto LABEL_25;
          }

          if (v62 <= v27 || (v31 = v61, v61 > v27))
          {
            v32 = v25 + v22;
            v33 = v23 - v25;
            v34 = -v25;
            v35 = v45 + v24 + v34;
            if (v35 >= v60)
            {
              v35 = v60;
            }

            v61 = v46 + v24 + v34;
            v62 = v35;
            v36 = v12 + v24 + v34 + v59;
            if (v60 >= v33)
            {
              v28 = v33;
            }

            v63.location = v36 + 1;
            v63.length = v28 + v32;
            CFStringGetCharacters(theString, v63, buffer);
            v31 = v61;
          }

          v29 = buffer + v47 + -2 * v31;
        }

        v30 = *&v29[2 * v24];
      }

LABEL_25:
      ++v24;
      ++v21;
      --v22;
      ++v23;
      if (CFCharacterSetIsCharacterMember(a2, v30))
      {
        v15 = v26 + 2;
        v37 = objc_autoreleasePoolPush();
        v9 = v44;
        (*(v44 + 2))(v44, v17, v24 - v17);
        objc_autoreleasePoolPop(v37);
        v11 = v42;
        a3 = v43;
        v13 = v41;
        goto LABEL_7;
      }
    }
  }

LABEL_48:
}

void __tokenize_block_invoke()
{
  v0 = +[SGAsset asset];
  v1 = [v0 registerUpdateHandler:&__block_literal_global_220_23220];

  v2 = +[SGAsset asset];
  __tokenize_block_invoke_2(v2, v2);
}

void __tokenize_block_invoke_2(uint64_t a1, void *a2)
{
  v12 = a2;
  pthread_mutex_lock(&tokenize_updateLock);
  v2 = v12;
  if (!v12)
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void tokenize(NSString *__strong, TokenizationState *, NSRange, NSString *__strong)_block_invoke_2"}];
    [v6 handleFailureInFunction:v7 file:@"SGSignatureDissector.m" lineNumber:248 description:@"Encountered nil Asset while attempting to load HMM tokens."];

    v2 = 0;
  }

  v3 = [v2 filesystemPathForAssetDataRelativePath:@"HmmSigTokens.dat"];
  if (!v3)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void tokenize(NSString *__strong, TokenizationState *, NSRange, NSString *__strong)_block_invoke_2"}];
    [v8 handleFailureInFunction:v9 file:@"SGSignatureDissector.m" lineNumber:250 description:{@"No HMM token file contained in CoreSuggestions MobileAsset version %lu", objc_msgSend(v12, "assetVersion")}];
  }

  v4 = [objc_alloc(MEMORY[0x277D42558]) initWithPath:v3];
  v5 = tokenize_trie;
  tokenize_trie = v4;

  if (!tokenize_trie)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"void tokenize(NSString *__strong, TokenizationState *, NSRange, NSString *__strong)_block_invoke_2"}];
    [v10 handleFailureInFunction:v11 file:@"SGSignatureDissector.m" lineNumber:252 description:@"Could not load HMM keyword trie"];
  }

  pthread_mutex_unlock(&tokenize_updateLock);
}

void sub_231FDF338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23243(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL re2::StringPiece::_equal(uint64_t *a1, unsigned __int8 **a2)
{
  v2 = *(a1 + 2);
  if (v2 != *(a2 + 2))
  {
    return 0;
  }

  if (v2 < 1)
  {
    return 1;
  }

  v3 = *a1;
  v4 = *a2;
  if (*(*a1 + (v2 - 1)) != (*a2)[(v2 - 1)])
  {
    return 0;
  }

  v5 = v3 + v2;
  v6 = v3 + 1;
  do
  {
    v7 = *v4++;
    result = *(v6 - 1) == v7;
    v9 = *(v6 - 1) != v7 || v6 >= v5;
    ++v6;
  }

  while (!v9);
  return result;
}

unint64_t re2::StringPiece::copy(re2::StringPiece *this, char *__dst, unint64_t a3, uint64_t a4)
{
  if (*(this + 2) - a4 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = *(this + 2) - a4;
  }

  memcpy(__dst, (*this + a4), v4);
  return v4;
}

uint64_t re2::StringPiece::find(re2::StringPiece *this, const re2::StringPiece *a2, unint64_t a3)
{
  v3 = *(this + 2);
  if ((v3 & 0x80000000) != 0 || v3 < a3)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *this;
  v6 = (*this + a3);
  v7 = *(a2 + 2);
  if (v7)
  {
    if ((v3 - a3) < v7 || (v8 = v5 + v3 - v7 + 1, v8 == v6))
    {
LABEL_14:
      v6 = (v5 + v3);
    }

    else
    {
      while (*v6 != **a2)
      {
LABEL_8:
        if (++v6 == v8)
        {
          goto LABEL_14;
        }
      }

      v9 = 1;
      while (v7 != v9)
      {
        v10 = v6[v9];
        v11 = *(*a2 + v9++);
        if (v10 != v11)
        {
          goto LABEL_8;
        }
      }
    }
  }

  v12 = &v6[-v5];
  if (&v12[v7] > v3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v12;
  }
}

uint64_t re2::StringPiece::find(re2::StringPiece *this, int a2, unint64_t a3)
{
  v3 = *(this + 2);
  if (v3 < 1 || v3 <= a3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *this;
  v5 = (*this + v3);
  v6 = memchr((*this + a3), a2, v3 - a3);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  if (v7 == v5)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v7 - v4);
  }
}

unint64_t re2::StringPiece::rfind(unsigned __int8 **this, const re2::StringPiece *a2, unint64_t a3)
{
  v3 = *(this + 2);
  v4 = *(a2 + 2);
  if (v3 < v4)
  {
    return 0xFFFFFFFFLL;
  }

  if (v4)
  {
    v6 = *this;
    v7 = v3 - v4;
    if (v7 >= a3)
    {
      v7 = a3;
    }

    v8 = &v6[v4 + v7];
    if (v6 == v8)
    {
      return 0xFFFFFFFFLL;
    }

    v9 = v4 - 1;
    v10 = *this;
    v11 = v8;
    do
    {
      v12 = v10 + 1;
      while (*v10 != **a2)
      {
        ++v10;
        ++v12;
        if (v10 == v8)
        {
          goto LABEL_19;
        }
      }

      v13 = v9;
      v14 = (*a2 + 1);
      while (v13)
      {
        if (v12 == v8)
        {
          goto LABEL_19;
        }

        v16 = *v12++;
        v15 = v16;
        v17 = *v14++;
        --v13;
        if (v15 != v17)
        {
          goto LABEL_18;
        }
      }

      v11 = v10;
LABEL_18:
      ++v10;
    }

    while (v10 != v8);
LABEL_19:
    v18 = v11 - v6;
    if (v11 == v8)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v18;
    }
  }

  else if (v3 >= a3)
  {
    return a3;
  }

  else
  {
    return *(this + 2);
  }
}

unint64_t re2::StringPiece::rfind(re2::StringPiece *this, unsigned __int8 a2, unint64_t a3)
{
  v3 = *(this + 2);
  if (v3 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v3 - 1) >= a3)
  {
    result = a3;
  }

  else
  {
    result = (v3 - 1);
  }

  v6 = *this;
  while (*(v6 + result) != a2)
  {
    v7 = result <= 0;
    result = (result - 1);
    if (v7)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

unint64_t re2::StringPiece::substr(re2::StringPiece *this, unint64_t a2)
{
  v2 = *(this + 2);
  if (v2 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(this + 2);
  }

  return *this + v3;
}

uint64_t SGMIMetricsRegexSignatureStatsReadFrom(uint64_t a1, void *a2)
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
        LOBYTE(v63) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v63 & 0x7F) << v5;
        if ((v63 & 0x80) == 0)
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
      if ((v12 >> 3) > 191)
      {
        if (v13 <= 289)
        {
          if (v13 == 192)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 64) |= 0x20u;
            while (1)
            {
              LOBYTE(v63) = 0;
              v39 = [a2 position] + 1;
              if (v39 >= [a2 position] && (v40 = objc_msgSend(a2, "position") + 1, v40 <= objc_msgSend(a2, "length")))
              {
                v41 = [a2 data];
                [v41 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v38 |= (v63 & 0x7F) << v36;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v11 = v37++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_109;
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

LABEL_109:
            v60 = 44;
            goto LABEL_130;
          }

          if (v13 == 200)
          {
            v29 = 0;
            v30 = 0;
            v31 = 0;
            *(a1 + 64) |= 4u;
            while (1)
            {
              LOBYTE(v63) = 0;
              v32 = [a2 position] + 1;
              if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
              {
                v34 = [a2 data];
                [v34 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v31 |= (v63 & 0x7F) << v29;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v29 += 7;
              v11 = v30++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_105;
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

LABEL_105:
            v60 = 24;
            goto LABEL_130;
          }
        }

        else
        {
          switch(v13)
          {
            case 0x122:
              v42 = 0;
              v43 = 0;
              v44 = 0;
              *(a1 + 64) |= 1u;
              while (1)
              {
                LOBYTE(v63) = 0;
                v45 = [a2 position] + 1;
                if (v45 >= [a2 position] && (v46 = objc_msgSend(a2, "position") + 1, v46 <= objc_msgSend(a2, "length")))
                {
                  v47 = [a2 data];
                  [v47 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v44 |= (v63 & 0x7F) << v42;
                if ((v63 & 0x80) == 0)
                {
                  break;
                }

                v42 += 7;
                v11 = v43++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_113;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v44;
              }

LABEL_113:
              v60 = 16;
              goto LABEL_130;
            case 0x12C:
              v54 = 0;
              v55 = 0;
              v56 = 0;
              *(a1 + 64) |= 8u;
              while (1)
              {
                LOBYTE(v63) = 0;
                v57 = [a2 position] + 1;
                if (v57 >= [a2 position] && (v58 = objc_msgSend(a2, "position") + 1, v58 <= objc_msgSend(a2, "length")))
                {
                  v59 = [a2 data];
                  [v59 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v56 |= (v63 & 0x7F) << v54;
                if ((v63 & 0x80) == 0)
                {
                  break;
                }

                v54 += 7;
                v11 = v55++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_129;
                }
              }

              if ([a2 hasError])
              {
                v20 = 0;
              }

              else
              {
                v20 = v56;
              }

LABEL_129:
              v60 = 28;
              goto LABEL_130;
            case 0x186:
              v21 = 0;
              v22 = 0;
              v23 = 0;
              *(a1 + 64) |= 2u;
              while (1)
              {
                LOBYTE(v63) = 0;
                v24 = [a2 position] + 1;
                if (v24 >= [a2 position] && (v25 = objc_msgSend(a2, "position") + 1, v25 <= objc_msgSend(a2, "length")))
                {
                  v26 = [a2 data];
                  [v26 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                  [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
                }

                else
                {
                  [a2 _setError];
                }

                v23 |= (v63 & 0x7F) << v21;
                if ((v63 & 0x80) == 0)
                {
                  break;
                }

                v21 += 7;
                v11 = v22++ >= 9;
                if (v11)
                {
                  v20 = 0;
                  goto LABEL_121;
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

LABEL_121:
              v60 = 20;
              goto LABEL_130;
          }
        }
      }

      else if (v13 <= 99)
      {
        if (v13 == 1)
        {
          v35 = objc_alloc_init(SGMIMetricsTrialMetadata);
          objc_storeStrong((a1 + 56), v35);
          v63 = 0;
          v64 = 0;
          if (!PBReaderPlaceMark() || !SGMIMetricsTrialMetadataReadFrom(v35, a2))
          {
LABEL_133:

            return 0;
          }

          goto LABEL_72;
        }

        if (v13 == 10)
        {
          v27 = PBReaderReadString();
          v28 = *(a1 + 8);
          *(a1 + 8) = v27;

          goto LABEL_131;
        }
      }

      else
      {
        switch(v13)
        {
          case 0x64:
            v35 = objc_alloc_init(SGMIMetricsRegexSignatureStat);
            [a1 addStats:v35];
            v63 = 0;
            v64 = 0;
            if (!PBReaderPlaceMark() || !SGMIMetricsRegexSignatureStatReadFrom(v35, a2))
            {
              goto LABEL_133;
            }

LABEL_72:
            PBReaderRecallMark();

            goto LABEL_131;
          case 0xBE:
            v48 = 0;
            v49 = 0;
            v50 = 0;
            *(a1 + 64) |= 0x10u;
            while (1)
            {
              LOBYTE(v63) = 0;
              v51 = [a2 position] + 1;
              if (v51 >= [a2 position] && (v52 = objc_msgSend(a2, "position") + 1, v52 <= objc_msgSend(a2, "length")))
              {
                v53 = [a2 data];
                [v53 getBytes:&v63 range:{objc_msgSend(a2, "position"), 1}];

                [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
              }

              else
              {
                [a2 _setError];
              }

              v50 |= (v63 & 0x7F) << v48;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v48 += 7;
              v11 = v49++ >= 9;
              if (v11)
              {
                v20 = 0;
                goto LABEL_125;
              }
            }

            if ([a2 hasError])
            {
              v20 = 0;
            }

            else
            {
              v20 = v50;
            }

LABEL_125:
            v60 = 40;
            goto LABEL_130;
          case 0xBF:
            v14 = 0;
            v15 = 0;
            v16 = 0;
            *(a1 + 64) |= 0x40u;
            while (1)
            {
              LOBYTE(v63) = 0;
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
                v20 = 0;
                goto LABEL_117;
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

LABEL_117:
            v60 = 48;
LABEL_130:
            *(a1 + v60) = v20;
            goto LABEL_131;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_131:
      v61 = [a2 position];
    }

    while (v61 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_231FE2AB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FE3C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  SGRecordMeasurementState(va);
  _Unwind_Resume(a1);
}

void sub_231FE3EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FE410C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__23831(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231FE45CC(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    v4 = *(*(v2 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    xpc_transaction_exit_clean();
    objc_end_catch();
    JUMPOUT(0x231FE4510);
  }

  _Unwind_Resume(exception_object);
}

void sub_231FE4DE8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 buf)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(a1);
    v14 = sgLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = sqlite3_column_int64(v12, 0);
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEFAULT, "Unexpected error while deserializing contact: %lld", &buf, 0xCu);
    }

    v16 = *(*(v11 + 32) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;

    xpc_transaction_exit_clean();
    objc_end_catch();
    JUMPOUT(0x231FE4DB4);
  }

  _Unwind_Resume(a1);
}

uint64_t SGUnarchiverZip(NSURL *a1, NSURL *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (!v3 || !v4)
  {
    goto LABEL_14;
  }

  if (![(NSURL *)v3 isFileURL])
  {
    v10 = sgLogHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

      v6 = 0;
      goto LABEL_14;
    }

    v20 = 138412290;
    *v21 = v3;
    v11 = "SGUnarchiver: unable to open non-file URL %@.";
    v12 = v10;
    v13 = 12;
LABEL_16:
    _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, v11, &v20, v13);
    goto LABEL_13;
  }

  v7 = open([(NSURL *)v3 fileSystemRepresentation], 4);
  if (v7 < 0)
  {
    v10 = sgLogHandle();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v18 = __error();
    v19 = strerror(*v18);
    v20 = 138412546;
    *v21 = v3;
    *&v21[8] = 2082;
    *&v21[10] = v19;
    v11 = "SGUnarchiver: unable to open file %@ - %{public}s.";
    v12 = v10;
    v13 = 22;
    goto LABEL_16;
  }

  v8 = v7;
  v6 = SGUnarchiverZip(v7, v5);
  if (close(v8))
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v16 = __error();
      v17 = strerror(*v16);
      v20 = 67240706;
      *v21 = v8;
      *&v21[4] = 2112;
      *&v21[6] = v3;
      *&v21[14] = 2082;
      *&v21[16] = v17;
      _os_log_fault_impl(&dword_231E60000, v9, OS_LOG_TYPE_FAULT, "SGUnarchiver: unable to close file descriptor %{public}d for %@ (leaking) - %{public}s.", &v20, 0x1Cu);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

LABEL_14:

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t SGUnarchiverZip(int a1, NSURL *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 < 0 || !v3)
  {
    goto LABEL_17;
  }

  Archive = SGCreateReadArchive();
  if (!Archive)
  {
    v5 = 0;
    goto LABEL_17;
  }

  v7 = Archive;
  NSPageSize();
  if (archive_read_open_fd())
  {
    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446210;
      v14 = archive_error_string();
      _os_log_error_impl(&dword_231E60000, v8, OS_LOG_TYPE_ERROR, "SGUnarchiver: unable to open archive_read - %{public}s.", &v13, 0xCu);
    }

    v5 = 0;
  }

  else
  {
    v5 = SGZipUnarchive(v7, v4);
    if (!archive_read_close())
    {
      goto LABEL_13;
    }

    v8 = sgLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = 136446210;
      v14 = archive_error_string();
      _os_log_error_impl(&dword_231E60000, v8, OS_LOG_TYPE_ERROR, "SGUnarchiver: unable to close archive_read - %{public}s.", &v13, 0xCu);
    }
  }

LABEL_13:
  if (archive_read_free())
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      v12 = archive_error_string();
      v13 = 136446210;
      v14 = v12;
      _os_log_fault_impl(&dword_231E60000, v9, OS_LOG_TYPE_FAULT, "SGUnarchiver: unable to free archive_read (leaking) - %{public}s.", &v13, 0xCu);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

LABEL_17:

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t SGCreateReadArchive()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = archive_read_new();
  if (!v0)
  {
    goto LABEL_11;
  }

  if (archive_read_support_format_zip())
  {
    v1 = sgLogHandle();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136446210;
      v10 = archive_error_string();
      _os_log_impl(&dword_231E60000, v1, OS_LOG_TYPE_DEFAULT, "SGUnarchiver: archive_read unable to set supported formats - %{public}s.", &v9, 0xCu);
    }

LABEL_6:
    if (archive_read_free())
    {
      v2 = sgLogHandle();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        v8 = archive_error_string();
        v9 = 136446210;
        v10 = v8;
        _os_log_error_impl(&dword_231E60000, v2, OS_LOG_TYPE_ERROR, "SGUnarchiver: unable to free archive_read (leaking) - %{public}s.", &v9, 0xCu);
      }
    }

    v0 = 0;
    goto LABEL_11;
  }

  support_filter_all = archive_read_support_filter_all();
  if (support_filter_all != -20)
  {
    v6 = support_filter_all;
    if (support_filter_all)
    {
      v7 = sgLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 136446210;
        v10 = archive_error_string();
        _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "SGUnarchiver: archive_read unable to set supported compression formats - %{public}s.", &v9, 0xCu);
      }

      if (v6)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_11:
  v3 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t SGZipUnarchive(uint64_t a1, void *a2)
{
  v64[1] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v63 = *MEMORY[0x277CCA180];
  v64[0] = &unk_284749B18;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:&v63 count:1];
  v58[0] = 0;
  v5 = [v3 createDirectoryAtURL:v2 withIntermediateDirectories:0 attributes:v4 error:v58];
  v6 = v58[0];

  if ((v5 & 1) == 0)
  {
    v10 = [v6 domain];
    if ([v10 isEqualToString:*MEMORY[0x277CCA050]])
    {
      v11 = [v6 code];

      if (v11 == 516)
      {
        goto LABEL_2;
      }
    }

    else
    {
    }

    v12 = sgLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v60 = v2;
      v61 = 2112;
      v62 = v6;
      _os_log_error_impl(&dword_231E60000, v12, OS_LOG_TYPE_ERROR, "SGUnarchiver: failed to create directory at %@ - %@.", buf, 0x16u);
    }

    goto LABEL_18;
  }

LABEL_2:

  if (!archive_write_disk_new())
  {
LABEL_20:
    v13 = 0;
    goto LABEL_21;
  }

  if (archive_write_disk_set_standard_lookup())
  {
    v7 = sgLogHandle();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    v8 = archive_error_string();
    *buf = 136446210;
    v60 = v8;
    v9 = "SGUnarchiver: archive_write_disk unable to set lookup functions - %{public}s.";
    goto LABEL_65;
  }

  if (!archive_write_disk_set_options())
  {
    v16 = [v2 path];
    v6 = v16;
    if (v16)
    {
      v18 = realpath_DARWIN_EXTSN([v16 fileSystemRepresentation], 0);
      if (v18)
      {
        v19 = v18;
        v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v18];

        free(v19);
        v6 = v20;
      }

      else
      {
        v21 = sgLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v55 = __error();
          v56 = strerror(*v55);
          *buf = 138412546;
          v60 = v6;
          v61 = 2080;
          v62 = v56;
          _os_log_error_impl(&dword_231E60000, v21, OS_LOG_TYPE_ERROR, "SGUnarchiver: unable to resolve physical path for destination path %@ - %s.", buf, 0x16u);
        }
      }
    }

    *&v17 = 134218240;
    v57 = v17;
    while (1)
    {
      next_header = archive_read_next_header();
      if (next_header)
      {
        break;
      }

      v23 = archive_entry_filetype();
      v24 = objc_autoreleasePoolPush();
      v25 = archive_entry_pathname_utf8();
      if (!v25)
      {
        v45 = sgLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v45, OS_LOG_TYPE_ERROR, "SGUnarchiver: archive_entry with no path encountered.", buf, 2u);
        }

LABEL_74:
        objc_autoreleasePoolPop(v24);
        goto LABEL_53;
      }

      v26 = v25;
      v27 = 0;
      do
      {
        v28 = v27;
        v29 = (v27++)[v25];
      }

      while (v29 == 47);
      if (v28)
      {
        v30 = sgLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v35 = strlen(v26);
          *buf = v57;
          v60 = v28;
          v61 = 2048;
          v62 = v35;
          _os_log_error_impl(&dword_231E60000, v30, OS_LOG_TYPE_ERROR, "SGUnarchiver: archive_entry with absolute path encountered...ignoring leading %zu of %zu bytes.", buf, 0x16u);
        }
      }

      v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v28[v26]];
      v32 = [v31 length];
      if (!v32 && v23 != 0x4000)
      {
        v46 = sgLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v46, OS_LOG_TYPE_ERROR, "SGUnarchiver: archive_entry with no path after sanitization encountered.", buf, 2u);
        }

        goto LABEL_74;
      }

      v33 = [v6 stringByAppendingPathComponent:v31, v57];

      [v33 fileSystemRepresentation];
      archive_entry_update_pathname_utf8();

      objc_autoreleasePoolPop(v24);
      archive_entry_perm();
      archive_entry_set_perm();
      if (v32)
      {
        if (archive_write_header())
        {
          v51 = sgLogHandle();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v47 = archive_error_string();
            *buf = 136446210;
            v60 = v47;
            v48 = "SGUnarchiver: archive_write_header failed - %{public}s.";
            goto LABEL_79;
          }

LABEL_80:

          goto LABEL_53;
        }

        if (!archive_entry_size_is_set() || archive_entry_size() >= 1)
        {
          do
          {
            memset(&v58[1], 0, 24);
            data_block = archive_read_data_block();
            if (data_block)
            {
              if (data_block == 1)
              {
                goto LABEL_47;
              }

              v38 = sgLogHandle();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v36 = archive_error_string();
                *buf = 136446210;
                v60 = v36;
                v37 = "SGUnarchiver: archive_read_data_block failed - %{public}s.";
                goto LABEL_82;
              }

              goto LABEL_52;
            }
          }

          while ((archive_write_data_block() & 0x8000000000000000) == 0);
          v38 = sgLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            v54 = archive_error_string();
            *buf = 136446210;
            v60 = v54;
            v37 = "SGUnarchiver: archive_write_data_block failed - %{public}s.";
            goto LABEL_82;
          }

LABEL_52:

LABEL_53:
          v13 = 0;
          goto LABEL_54;
        }

LABEL_47:
        if (archive_write_finish_entry())
        {
          v51 = sgLogHandle();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v53 = archive_error_string();
            *buf = 136446210;
            v60 = v53;
            v48 = "SGUnarchiver: archive_write_finish_entry failed - %{public}s.";
LABEL_79:
            _os_log_impl(&dword_231E60000, v51, OS_LOG_TYPE_DEFAULT, v48, buf, 0xCu);
          }

          goto LABEL_80;
        }
      }
    }

    if (next_header != 1)
    {
      v38 = sgLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v44 = archive_error_string();
        *buf = 136446210;
        v60 = v44;
        v37 = "SGUnarchiver: archive_read_next_header failed - %{public}s.";
LABEL_82:
        _os_log_error_impl(&dword_231E60000, v38, OS_LOG_TYPE_ERROR, v37, buf, 0xCu);
      }

      goto LABEL_52;
    }

    v13 = 1;
LABEL_54:
    if (archive_write_close())
    {
      v40 = sgLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v49 = archive_error_string();
        *buf = 136446210;
        v60 = v49;
        _os_log_error_impl(&dword_231E60000, v40, OS_LOG_TYPE_ERROR, "SGUnarchiver: unable to close archive_write_disk - %{public}s.", buf, 0xCu);
      }

      v13 = 0;
    }

    if (archive_write_free())
    {
      v41 = sgLogHandle();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v50 = archive_error_string();
        *buf = 136446210;
        v60 = v50;
        _os_log_error_impl(&dword_231E60000, v41, OS_LOG_TYPE_ERROR, "SGUnarchiver: unable to free archive_write_disk (leaking) - %{public}s.", buf, 0xCu);
      }
    }

    goto LABEL_19;
  }

  v7 = sgLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v43 = archive_error_string();
    *buf = 136446210;
    v60 = v43;
    v9 = "SGUnarchiver: archive_write_disk unable to set options - %{public}s.";
LABEL_65:
    _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, v9, buf, 0xCu);
  }

LABEL_15:

  if (!archive_write_free())
  {
    goto LABEL_20;
  }

  v6 = sgLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v42 = archive_error_string();
    *buf = 136446210;
    v60 = v42;
    _os_log_error_impl(&dword_231E60000, v6, OS_LOG_TYPE_ERROR, "SGUnarchiver: unable to free archive_write_disk (leaking) - %{public}s.", buf, 0xCu);
  }

LABEL_18:
  v13 = 0;
LABEL_19:

LABEL_21:
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t SGUnarchiverZip(NSData *a1, NSURL *a2)
{
  if (!a1 || !a2)
  {
    return 0;
  }

  v4 = a1;
  v5 = a2;
  v6 = a1;
  v7 = [(NSData *)v6 bytes];
  v8 = [(NSData *)v6 length];

  v9 = SGUnarchiverZip(v7, v8, v5);
  return v9;
}

uint64_t SGUnarchiverZip(const void *a1, unint64_t a2, NSURL *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  v6 = 0;
  if (!a1 || !v4)
  {
    goto LABEL_17;
  }

  Archive = SGCreateReadArchive();
  if (!Archive)
  {
    v6 = 0;
    goto LABEL_17;
  }

  v8 = Archive;
  if (archive_read_open_memory())
  {
    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446210;
      v15 = archive_error_string();
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "SGUnarchiver: unable to open archive_read - %{public}s.", &v14, 0xCu);
    }

    v6 = 0;
  }

  else
  {
    v6 = SGZipUnarchive(v8, v5);
    if (!archive_read_close())
    {
      goto LABEL_13;
    }

    v9 = sgLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v14 = 136446210;
      v15 = archive_error_string();
      _os_log_error_impl(&dword_231E60000, v9, OS_LOG_TYPE_ERROR, "SGUnarchiver: unable to close archive_read - %{public}s.", &v14, 0xCu);
    }
  }

LABEL_13:
  if (archive_read_free())
  {
    v10 = sgLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v13 = archive_error_string();
      v14 = 136446210;
      v15 = v13;
      _os_log_fault_impl(&dword_231E60000, v10, OS_LOG_TYPE_FAULT, "SGUnarchiver: unable to free archive_read (leaking) - %{public}s.", &v14, 0xCu);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

LABEL_17:

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

void sub_231FE98A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FEA194(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose((v37 - 192), 8);
  _Block_object_dispose((v37 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24205(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id patterns_24207()
{
  if (patterns_onceToken_24217 != -1)
  {
    dispatch_once(&patterns_onceToken_24217, &__block_literal_global_24218);
  }

  v1 = patterns_patterns_24219;

  return v1;
}

uint64_t __patterns_block_invoke_24222()
{
  v0 = [SGPatterns patternsForIdentifier:@"SGMailQuoteDissector"];
  v1 = patterns_patterns_24219;
  patterns_patterns_24219 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void sub_231FEA768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FEA920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FEAB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__24277(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231FEAD60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FEAF28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FEB0F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FEB298(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FEB414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FEB590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FEB70C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FEC2B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _createITSListForFTSQuery(void *a1)
{
  v1 = a1;
  v2 = ITSTokenListCreate();
  v3 = v2;
  if (v1 && v2)
  {
    if (_createITSListForFTSQuery__pasOnceToken3 != -1)
    {
      dispatch_once(&_createITSListForFTSQuery__pasOnceToken3, &__block_literal_global_24570);
    }

    v4 = _createITSListForFTSQuery__pasExprOnceResult;
    v5 = [v4 result];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = ___createITSListForFTSQuery_block_invoke_3;
    v7[3] = &unk_27894FBF0;
    v9 = v1;
    v8 = v1;
    v10 = v3;
    [v5 runWithLockAcquired:v7];
  }

  return v3;
}

void ___createITSListForFTSQuery_block_invoke_3(uint64_t a1, void *a2)
{
  tokenizer = a2;
  v3 = *(a1 + 40);
  v8.length = [*(a1 + 32) length];
  v8.location = 0;
  CFStringTokenizerSetString(tokenizer, v3, v8);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  ITSTokenListPopulateFromString();
  v9.location = 0;
  v9.length = 1;
  CFStringTokenizerSetString(tokenizer, @"⌘", v9);
  CFRelease(tokenizer);
}

void ___createITSListForFTSQuery_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_64_24577 idleTimeout:1.0];
  v2 = _createITSListForFTSQuery__pasExprOnceResult;
  _createITSListForFTSQuery__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id ___createITSListForFTSQuery_block_invoke_2()
{
  v6.location = 0;
  v6.length = 0;
  v0 = CFStringTokenizerCreate(0, 0, v6, 0x810000uLL, 0);
  if (!v0)
  {
    v3 = [MEMORY[0x277CCA890] currentHandler];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ITSTokenListRef _createITSListForFTSQuery(NSString *__strong)_block_invoke_2"];
    [v3 handleFailureInFunction:v4 file:@"SGTokenizer.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"tokenizer"}];
  }

  v1 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v0];

  return v1;
}

uint64_t __Block_byref_object_copy__24709(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_231FF087C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FF0BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FF13BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FF1BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FF2B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FF2DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_231FF3078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getHKHealthStoreClass_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = 0;
  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v7[1] = MEMORY[0x277D85DD0];
    v7[2] = 3221225472;
    v7[3] = __HealthKitLibraryCore_block_invoke;
    v7[4] = &__block_descriptor_40_e5_v8__0l;
    v7[5] = v7;
    v8 = xmmword_27894FDF0;
    v9 = 0;
    HealthKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!HealthKitLibraryCore_frameworkLibrary)
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *HealthKitLibrary(void)"];
    [v4 handleFailureInFunction:v5 file:@"SGDetectedAttributeDissector.m" lineNumber:73 description:{@"%s", v7[0]}];

    goto LABEL_10;
  }

  if (v7[0])
  {
    free(v7[0]);
  }

  result = objc_getClass("HKHealthStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = [MEMORY[0x277CCA890] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getHKHealthStoreClass(void)_block_invoke"];
    [v4 handleFailureInFunction:v6 file:@"SGDetectedAttributeDissector.m" lineNumber:74 description:{@"Unable to find class %s", "HKHealthStore"}];

LABEL_10:
    __break(1u);
  }

  getHKHealthStoreClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __HealthKitLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  HealthKitLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_231FF4340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__25000(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id regex2ForKey(void *a1)
{
  v1 = a1;
  v2 = +[SGDetectedAttributeDissector patterns];
  v3 = [v2 regex2ForKey:v1];

  return v3;
}