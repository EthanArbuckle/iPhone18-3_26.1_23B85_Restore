uint64_t sub_2253101B8(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v42[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v42[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42[0] & 0x7F) << v10;
        if ((v42[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPProtectionInfoKeysToRemoveProtectionInfoKey);
        objc_msgSend_addKeysToRemove_(a1, v33, v32);
        v42[0] = 0;
        v42[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225310CEC(v32, a2, v34))
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
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v35 = PBReaderReadString();
    v32 = a1[2];
    a1[2] = v35;
LABEL_23:

    goto LABEL_25;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225310CEC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v60 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60 & 0x7F) << v10;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v61 = 0;
          v38 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v61, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v61 & 0x7F) << v35;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_34;
          }
        }

        v55 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v37;
LABEL_34:
        *(a1 + 16) = v55;
      }

      else if (v32 == 1)
      {
        v33 = PBReaderReadData();
        v34 = *(a1 + 8);
        *(a1 + 8) = v33;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225311C10(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v86) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v86) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v86, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v86 & 0x7F) << v10;
        if ((v86 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 2)
      {
        if (v32 == 1)
        {
          v54 = objc_alloc_init(CKDPRecordType);
          objc_msgSend_addTypes_(a1, v80, v54);
          v86 = 0;
          v87 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordTypeReadFrom(v54, a2, v81))
          {
LABEL_60:

            return 0;
          }

          goto LABEL_49;
        }

        if (v32 == 2)
        {
          v54 = objc_alloc_init(CKDPQueryFilter);
          objc_msgSend_addFilters_(a1, v55, v54);
          v86 = 0;
          v87 = 0;
          if (!PBReaderPlaceMark() || !sub_22531338C(v54, a2, v56))
          {
            goto LABEL_60;
          }

          goto LABEL_49;
        }
      }

      else
      {
        switch(v32)
        {
          case 3:
            v54 = objc_alloc_init(CKDPQuerySort);
            objc_msgSend_addSorts_(a1, v57, v54);
            v86 = 0;
            v87 = 0;
            if (!PBReaderPlaceMark() || !sub_225315FB0(v54, a2, v58))
            {
              goto LABEL_60;
            }

LABEL_49:
            PBReaderRecallMark();

            goto LABEL_58;
          case 4:
            v59 = 0;
            v60 = 0;
            v61 = 0;
            *(a1 + 44) |= 2u;
            while (1)
            {
              LOBYTE(v86) = 0;
              v62 = objc_msgSend_position(a2, v32, v9, v86) + 1;
              if (v62 >= objc_msgSend_position(a2, v63, v64) && (v67 = objc_msgSend_position(a2, v65, v66) + 1, v67 <= objc_msgSend_length(a2, v68, v69)))
              {
                v70 = objc_msgSend_data(a2, v65, v66);
                v73 = objc_msgSend_position(a2, v71, v72);
                objc_msgSend_getBytes_range_(v70, v74, &v86, v73, 1);

                v77 = objc_msgSend_position(a2, v75, v76);
                objc_msgSend_setPosition_(a2, v78, v77 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v65, v66);
              }

              v61 |= (v86 & 0x7F) << v59;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v59 += 7;
              v30 = v60++ >= 9;
              if (v30)
              {
                LOBYTE(v79) = 0;
                goto LABEL_53;
              }
            }

            v79 = (v61 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_53:
            *(a1 + 40) = v79;
            goto LABEL_58;
          case 5:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              LOBYTE(v86) = 0;
              v36 = objc_msgSend_position(a2, v32, v9, v86) + 1;
              if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
              {
                v44 = objc_msgSend_data(a2, v39, v40);
                v47 = objc_msgSend_position(a2, v45, v46);
                objc_msgSend_getBytes_range_(v44, v48, &v86, v47, 1);

                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_setPosition_(a2, v52, v51 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v39, v40);
              }

              v35 |= (v86 & 0x7F) << v33;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v30 = v34++ >= 9;
              if (v30)
              {
                v53 = 0;
                goto LABEL_57;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v53 = 0;
            }

            else
            {
              v53 = v35;
            }

LABEL_57:
            *(a1 + 16) = v53;
            goto LABEL_58;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_58:
      v82 = objc_msgSend_position(a2, v32, v9);
    }

    while (v82 < objc_msgSend_length(a2, v83, v84));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22531338C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v62) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v62) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v62, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v62 & 0x7F) << v10;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v33 = objc_alloc_init(CKDPLocationBound);
          objc_storeStrong((a1 + 8), v33);
          v62 = 0;
          v63 = 0;
          if (!PBReaderPlaceMark() || !sub_2252F9034(v33, a2, v57))
          {
LABEL_48:

            return 0;
          }

          goto LABEL_41;
        }

        if (v32 == 4)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v38 = objc_msgSend_position(a2, v32, v9, v62) + 1;
            if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
            {
              v46 = objc_msgSend_data(a2, v41, v42);
              v49 = objc_msgSend_position(a2, v47, v48);
              objc_msgSend_getBytes_range_(v46, v50, &v62, v49, 1);

              v53 = objc_msgSend_position(a2, v51, v52);
              objc_msgSend_setPosition_(a2, v54, v53 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v41, v42);
            }

            v37 |= (v62 & 0x7F) << v35;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v30 = v36++ >= 9;
            if (v30)
            {
              v55 = 0;
              goto LABEL_45;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v55 = 0;
          }

          else
          {
            v55 = v37;
          }

LABEL_45:
          *(a1 + 32) = v55;
          goto LABEL_46;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = objc_alloc_init(CKDPRecordFieldIdentifier);
          objc_storeStrong((a1 + 16), v33);
          v62 = 0;
          v63 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordFieldIdentifierReadFrom(v33, a2, v56))
          {
            goto LABEL_48;
          }

          goto LABEL_41;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(CKDPRecordFieldValue);
          objc_storeStrong((a1 + 24), v33);
          v62 = 0;
          v63 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordFieldValueReadFrom(v33, a2, v34))
          {
            goto LABEL_48;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v58 = objc_msgSend_position(a2, v32, v9);
    }

    while (v58 < objc_msgSend_length(a2, v59, v60));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225313C9C()
{
  v0 = qword_280D55018;
  qword_280D55018 = &unk_2838C9598;
}

uint64_t sub_225313FAC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v64) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v64) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v64, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v64 & 0x7F) << v10;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 3)
      {
        switch(v32)
        {
          case 4:
            v54 = objc_alloc_init(MEMORY[0x277CBC278]);
            objc_storeStrong((a1 + 48), v54);
            v64 = 0;
            v65 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
            {
LABEL_54:

              return 0;
            }

            goto LABEL_47;
          case 5:
            v54 = objc_alloc_init(CKDPRequestedFields);
            objc_storeStrong((a1 + 40), v54);
            v64 = 0;
            v65 = 0;
            if (!PBReaderPlaceMark() || !CKDPRequestedFieldsReadFrom(v54, a2, v59))
            {
              goto LABEL_54;
            }

            goto LABEL_47;
          case 6:
            v54 = objc_alloc_init(CKDPAssetsToDownload);
            objc_storeStrong((a1 + 8), v54);
            v64 = 0;
            v65 = 0;
            if (!PBReaderPlaceMark() || !sub_2252DF538(v54, a2, v55))
            {
              goto LABEL_54;
            }

            goto LABEL_47;
        }
      }

      else
      {
        switch(v32)
        {
          case 1:
            v54 = objc_alloc_init(CKDPQuery);
            objc_storeStrong((a1 + 32), v54);
            v64 = 0;
            v65 = 0;
            if (!PBReaderPlaceMark() || !sub_225311C10(v54, a2, v56))
            {
              goto LABEL_54;
            }

LABEL_47:
            PBReaderRecallMark();

            goto LABEL_52;
          case 2:
            v57 = PBReaderReadData();
            v58 = *(a1 + 16);
            *(a1 + 16) = v57;

            goto LABEL_52;
          case 3:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              LOBYTE(v64) = 0;
              v36 = objc_msgSend_position(a2, v32, v9, v64) + 1;
              if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
              {
                v44 = objc_msgSend_data(a2, v39, v40);
                v47 = objc_msgSend_position(a2, v45, v46);
                objc_msgSend_getBytes_range_(v44, v48, &v64, v47, 1);

                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_setPosition_(a2, v52, v51 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v39, v40);
              }

              v35 |= (v64 & 0x7F) << v33;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v30 = v34++ >= 9;
              if (v30)
              {
                v53 = 0;
                goto LABEL_51;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v53 = 0;
            }

            else
            {
              v53 = v35;
            }

LABEL_51:
            *(a1 + 24) = v53;
            goto LABEL_52;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_52:
      v60 = objc_msgSend_position(a2, v32, v9);
    }

    while (v60 < objc_msgSend_length(a2, v61, v62));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225315FB0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v60) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v60) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60 & 0x7F) << v10;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        break;
      }

      if (v32 == 2)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v60) = 0;
          v38 = objc_msgSend_position(a2, v32, v9, v60) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v60, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v60 & 0x7F) << v35;
          if ((v60 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_40;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v37;
        }

LABEL_40:
        *(a1 + 24) = v55;
        goto LABEL_41;
      }

      if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPRecordFieldIdentifier);
        objc_storeStrong((a1 + 16), v33);
        v60 = 0;
        v61 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordFieldIdentifierReadFrom(v33, a2, v34))
        {
          goto LABEL_43;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v56 = objc_msgSend_position(a2, v32, v9);
      if (v56 >= objc_msgSend_length(a2, v57, v58))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(MEMORY[0x277CBC258]);
    objc_storeStrong((a1 + 8), v33);
    v60 = 0;
    v61 = 0;
    if (!PBReaderPlaceMark() || !CKDPLocationCoordinateReadFrom())
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2253181E0(id *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v44) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v44) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v44, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v44 & 0x7F) << v10;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v33 = objc_alloc_init(CKDPMergeableValueIdentifier);
          objc_storeStrong(a1 + 2, v33);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !sub_2253021B0(v33, a2, v39))
          {
LABEL_38:

            return 0;
          }

          goto LABEL_35;
        }

        if (v32 == 4)
        {
          v33 = objc_alloc_init(CKDPMergeableDelta);
          objc_msgSend_addMergeableDeltas_(a1, v35, v33);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !CKDPMergeableDeltaReadFrom(v33, a2, v36))
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = objc_alloc_init(MEMORY[0x277CBC268]);
          objc_storeStrong(a1 + 4, v33);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
          {
            goto LABEL_38;
          }

          goto LABEL_35;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(CKDPRecordFieldIdentifier);
          objc_storeStrong(a1 + 1, v33);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordFieldIdentifierReadFrom(v33, a2, v34))
          {
            goto LABEL_38;
          }

LABEL_35:
          PBReaderRecallMark();

          goto LABEL_36;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_36:
      v40 = objc_msgSend_position(a2, v37, v38);
    }

    while (v40 < objc_msgSend_length(a2, v41, v42));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225318DEC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v39[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v39, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v39[0] & 0x7F) << v10;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(MEMORY[0x277CBC268]);
        objc_storeStrong((a1 + 8), v32);
        v39[0] = 0;
        v39[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v35 = objc_msgSend_position(a2, v33, v34);
    }

    while (v35 < objc_msgSend_length(a2, v36, v37));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225319314(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPRecord);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordReadFrom(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRecordChainParentReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadData();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v36 = objc_msgSend_position(a2, v34, v35);
      if (v36 >= objc_msgSend_length(a2, v37, v38))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(MEMORY[0x277CBC270]);
    objc_storeStrong((a1 + 16), v33);
    v40[0] = 0;
    v40[1] = 0;
    if (!PBReaderPlaceMark() || !CKDPRecordReferenceReadFrom())
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22531CCC0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v58 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v58, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v58 & 0x7F) << v10;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v59 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v59, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v59 & 0x7F) << v33;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_32;
          }
        }

        v53 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v35;
LABEL_32:
        *(a1 + 8) = v53;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v55 = objc_msgSend_position(a2, v32, v9);
    }

    while (v55 < objc_msgSend_length(a2, v56, v57));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22531D170()
{
  v0 = qword_280D55028;
  qword_280D55028 = &unk_2838C95C0;
}

uint64_t sub_22531D678(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v64) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v64) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v64, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v64 & 0x7F) << v10;
        if ((v64 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 2)
      {
        if (v32 == 1)
        {
          v34 = objc_alloc_init(MEMORY[0x277CBC268]);
          objc_storeStrong((a1 + 32), v34);
          v64 = 0;
          v65 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
          {
LABEL_48:

            return 0;
          }

          goto LABEL_40;
        }

        if (v32 == 2)
        {
          v35 = PBReaderReadString();
          v36 = *(a1 + 8);
          *(a1 + 8) = v35;

          goto LABEL_46;
        }
      }

      else
      {
        switch(v32)
        {
          case 3:
            v34 = objc_alloc_init(CKDPRecordField);
            objc_msgSend_addPluginFields_(a1, v37, v34);
            v64 = 0;
            v65 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordFieldReadFrom(&v34->super.super.isa, a2, v38))
            {
              goto LABEL_48;
            }

LABEL_40:
            PBReaderRecallMark();
LABEL_41:

            goto LABEL_46;
          case 4:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              LOBYTE(v64) = 0;
              v42 = objc_msgSend_position(a2, v32, v9, v64) + 1;
              if (v42 >= objc_msgSend_position(a2, v43, v44) && (v47 = objc_msgSend_position(a2, v45, v46) + 1, v47 <= objc_msgSend_length(a2, v48, v49)))
              {
                v50 = objc_msgSend_data(a2, v45, v46);
                v53 = objc_msgSend_position(a2, v51, v52);
                objc_msgSend_getBytes_range_(v50, v54, &v64, v53, 1);

                v57 = objc_msgSend_position(a2, v55, v56);
                objc_msgSend_setPosition_(a2, v58, v57 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v45, v46);
              }

              v41 |= (v64 & 0x7F) << v39;
              if ((v64 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v30 = v40++ >= 9;
              if (v30)
              {
                LOBYTE(v59) = 0;
                goto LABEL_45;
              }
            }

            v59 = (v41 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_45:
            *(a1 + 40) = v59;
            goto LABEL_46;
          case 5:
            v34 = PBReaderReadData();
            if (v34)
            {
              objc_msgSend_addPublicKeys_(a1, v33, v34);
            }

            goto LABEL_41;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v60 = objc_msgSend_position(a2, v32, v9);
    }

    while (v60 < objc_msgSend_length(a2, v61, v62));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2253211DC()
{
  v0 = qword_280D55038;
  qword_280D55038 = &unk_2838C95E8;
}

uint64_t sub_2253216E0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v84) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v84) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v84, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v84 & 0x7F) << v10;
        if ((v84 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 4)
      {
        if (v32 > 6)
        {
          if (v32 == 7)
          {
            v33 = objc_alloc_init(CKDPRecord);
            objc_storeStrong((a1 + 16), v33);
            v84 = 0;
            v85 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordReadFrom(v33, a2, v79))
            {
LABEL_67:

              return 0;
            }

            goto LABEL_56;
          }

          if (v32 == 8)
          {
            v36 = 0;
            v37 = 0;
            v38 = 0;
            *(a1 + 64) |= 2u;
            while (1)
            {
              LOBYTE(v84) = 0;
              v39 = objc_msgSend_position(a2, v32, v9, v84) + 1;
              if (v39 >= objc_msgSend_position(a2, v40, v41) && (v44 = objc_msgSend_position(a2, v42, v43) + 1, v44 <= objc_msgSend_length(a2, v45, v46)))
              {
                v47 = objc_msgSend_data(a2, v42, v43);
                v50 = objc_msgSend_position(a2, v48, v49);
                objc_msgSend_getBytes_range_(v47, v51, &v84, v50, 1);

                v54 = objc_msgSend_position(a2, v52, v53);
                objc_msgSend_setPosition_(a2, v55, v54 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v42, v43);
              }

              v38 |= (v84 & 0x7F) << v36;
              if ((v84 & 0x80) == 0)
              {
                break;
              }

              v36 += 7;
              v30 = v37++ >= 9;
              if (v30)
              {
                LOBYTE(v56) = 0;
                goto LABEL_64;
              }
            }

            v56 = (v38 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_64:
            *(a1 + 60) = v56;
            goto LABEL_65;
          }
        }

        else
        {
          if (v32 == 5)
          {
            v34 = PBReaderReadString();
            v35 = 32;
            goto LABEL_53;
          }

          if (v32 == 6)
          {
            v34 = PBReaderReadString();
            v35 = 24;
LABEL_53:
            v78 = *(a1 + v35);
            *(a1 + v35) = v34;

            goto LABEL_65;
          }
        }
      }

      else if (v32 > 2)
      {
        if (v32 == 3)
        {
          v34 = PBReaderReadString();
          v35 = 40;
          goto LABEL_53;
        }

        if (v32 == 4)
        {
          v34 = PBReaderReadString();
          v35 = 8;
          goto LABEL_53;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v57 = 0;
          v58 = 0;
          v59 = 0;
          *(a1 + 64) |= 1u;
          while (1)
          {
            LOBYTE(v84) = 0;
            v60 = objc_msgSend_position(a2, v32, v9, v84) + 1;
            if (v60 >= objc_msgSend_position(a2, v61, v62) && (v65 = objc_msgSend_position(a2, v63, v64) + 1, v65 <= objc_msgSend_length(a2, v66, v67)))
            {
              v68 = objc_msgSend_data(a2, v63, v64);
              v71 = objc_msgSend_position(a2, v69, v70);
              objc_msgSend_getBytes_range_(v68, v72, &v84, v71, 1);

              v75 = objc_msgSend_position(a2, v73, v74);
              objc_msgSend_setPosition_(a2, v76, v75 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v63, v64);
            }

            v59 |= (v84 & 0x7F) << v57;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v57 += 7;
            v30 = v58++ >= 9;
            if (v30)
            {
              v77 = 0;
              goto LABEL_62;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v77 = 0;
          }

          else
          {
            v77 = v59;
          }

LABEL_62:
          *(a1 + 56) = v77;
          goto LABEL_65;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(MEMORY[0x277CBC268]);
          objc_storeStrong((a1 + 48), v33);
          v84 = 0;
          v85 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
          {
            goto LABEL_67;
          }

LABEL_56:
          PBReaderRecallMark();

          goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v80 = objc_msgSend_position(a2, v32, v9);
    }

    while (v80 < objc_msgSend_length(a2, v81, v82));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2253226C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = objc_alloc_init(CKDPRecord);
        v33 = 16;
      }

      else
      {
        if ((v31 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v32 = objc_alloc_init(CKDPRecord);
        v33 = 8;
      }

      objc_storeStrong((a1 + v33), v32);
      v41[0] = 0;
      v41[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPRecordReadFrom(v32, a2, v34))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v37 = objc_msgSend_position(a2, v35, v36);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRecordOneTimeStableUrlReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v62 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v62, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v62 & 0x7F) << v10;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 2)
      {
        break;
      }

      switch(v32)
      {
        case 3:
          v43 = PBReaderReadData();
          v44 = 16;
LABEL_32:
          v47 = *(a1 + v44);
          *(a1 + v44) = v43;

          break;
        case 4:
          v46 = PBReaderReadString();
          if (v46)
          {
            objc_msgSend_addParticipantId_(a1, v45, v46);
          }

          break;
        case 5:
          *(a1 + 48) |= 1u;
          v61 = 0;
          v33 = objc_msgSend_position(a2, v32, v9) + 8;
          if (v33 >= objc_msgSend_position(a2, v34, v35) && (v38 = objc_msgSend_position(a2, v36, v37) + 8, v38 <= objc_msgSend_length(a2, v39, v40)))
          {
            v49 = objc_msgSend_data(a2, v36, v37);
            v52 = objc_msgSend_position(a2, v50, v51);
            objc_msgSend_getBytes_range_(v49, v53, &v61, v52, 8);

            v56 = objc_msgSend_position(a2, v54, v55);
            objc_msgSend_setPosition_(a2, v57, v56 + 8);
          }

          else
          {
            objc_msgSend__setError(a2, v36, v37);
          }

          *(a1 + 8) = v61;
          break;
        default:
          goto LABEL_33;
      }

LABEL_37:
      v58 = objc_msgSend_position(a2, v41, v42);
      if (v58 >= objc_msgSend_length(a2, v59, v60))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 == 1)
    {
      v43 = PBReaderReadData();
      v44 = 40;
    }

    else
    {
      if (v32 != 2)
      {
LABEL_33:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_37;
      }

      v43 = PBReaderReadData();
      v44 = 32;
    }

    goto LABEL_32;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRecordOneTimeStableUrlInfoReadFrom(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPRecordOneTimeStableUrl);
        objc_msgSend_addOneTimeUrl_(a1, v33, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordOneTimeStableUrlReadFrom(v32, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v37 = objc_msgSend_position(a2, v35, v36);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225324758(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v58 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v58, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v58 & 0x7F) << v10;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v59 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v59, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v59 & 0x7F) << v33;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_32;
          }
        }

        v53 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v35;
LABEL_32:
        *(a1 + 8) = v53;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v55 = objc_msgSend_position(a2, v32, v9);
    }

    while (v55 < objc_msgSend_length(a2, v56, v57));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225324C08()
{
  v0 = qword_280D55048;
  qword_280D55048 = &unk_2838C9610;
}

uint64_t sub_225325000(_BYTE *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v84 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v84, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v84 & 0x7F) << v10;
        if ((v84 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 3)
      {
        if (v32 == 4)
        {
          v56 = 0;
          v57 = 0;
          v58 = 0;
          a1[44] |= 2u;
          while (1)
          {
            v85 = 0;
            v59 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v59 >= objc_msgSend_position(a2, v60, v61) && (v64 = objc_msgSend_position(a2, v62, v63) + 1, v64 <= objc_msgSend_length(a2, v65, v66)))
            {
              v67 = objc_msgSend_data(a2, v62, v63);
              v70 = objc_msgSend_position(a2, v68, v69);
              objc_msgSend_getBytes_range_(v67, v71, &v85, v70, 1);

              v74 = objc_msgSend_position(a2, v72, v73);
              objc_msgSend_setPosition_(a2, v75, v74 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v62, v63);
            }

            v58 |= (v85 & 0x7F) << v56;
            if ((v85 & 0x80) == 0)
            {
              break;
            }

            v56 += 7;
            v30 = v57++ >= 9;
            if (v30)
            {
              LOBYTE(v53) = 0;
              goto LABEL_52;
            }
          }

          v53 = (v58 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_52:
          v80 = 41;
LABEL_55:
          a1[v80] = v53;
          goto LABEL_56;
        }

        if (v32 == 5)
        {
          v79 = PBReaderReadString();
          if (v79)
          {
            objc_msgSend_addRootRecordDesiredKeys_(a1, v78, v79);
          }

          goto LABEL_56;
        }

        if (v32 != 6)
        {
LABEL_44:
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_56;
        }

        v54 = PBReaderReadString();
        v55 = 8;
      }

      else
      {
        switch(v32)
        {
          case 1:
            v54 = PBReaderReadString();
            v55 = 24;
            break;
          case 2:
            v54 = PBReaderReadData();
            v55 = 32;
            break;
          case 3:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            a1[44] |= 1u;
            while (1)
            {
              v86 = 0;
              v36 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
              {
                v44 = objc_msgSend_data(a2, v39, v40);
                v47 = objc_msgSend_position(a2, v45, v46);
                objc_msgSend_getBytes_range_(v44, v48, &v86, v47, 1);

                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_setPosition_(a2, v52, v51 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v39, v40);
              }

              v35 |= (v86 & 0x7F) << v33;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v30 = v34++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_54;
              }
            }

            v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_54:
            v80 = 40;
            goto LABEL_55;
          default:
            goto LABEL_44;
        }
      }

      v77 = *&a1[v55];
      *&a1[v55] = v54;

LABEL_56:
      v81 = objc_msgSend_position(a2, v32, v9);
    }

    while (v81 < objc_msgSend_length(a2, v82, v83));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225326400(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v65) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v65) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v65, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v65 & 0x7F) << v10;
        if ((v65 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 3)
      {
        switch(v32)
        {
          case 4:
            v33 = objc_alloc_init(CKDPRecord);
            objc_storeStrong((a1 + 48), v33);
LABEL_30:
            v65 = 0;
            v66 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordReadFrom(v33, a2, v38))
            {
              goto LABEL_53;
            }

LABEL_46:
            PBReaderRecallMark();

            goto LABEL_51;
          case 5:
            v33 = objc_alloc_init(CKDPShareMetadata);
            objc_storeStrong((a1 + 40), v33);
            v65 = 0;
            v66 = 0;
            if (!PBReaderPlaceMark() || !CKDPShareMetadataReadFrom(v33, a2, v60))
            {
LABEL_53:

              return 0;
            }

            goto LABEL_46;
          case 8:
            v33 = objc_alloc_init(CKDPZone);
            objc_storeStrong((a1 + 24), v33);
            v65 = 0;
            v66 = 0;
            if (!PBReaderPlaceMark() || !sub_22538168C(v33, a2, v35))
            {
              goto LABEL_53;
            }

            goto LABEL_46;
        }
      }

      else
      {
        switch(v32)
        {
          case 1:
            v36 = PBReaderReadString();
            v37 = *(a1 + 8);
            *(a1 + 8) = v36;

            goto LABEL_51;
          case 2:
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 56) |= 1u;
            while (1)
            {
              LOBYTE(v65) = 0;
              v42 = objc_msgSend_position(a2, v32, v9, v65) + 1;
              if (v42 >= objc_msgSend_position(a2, v43, v44) && (v47 = objc_msgSend_position(a2, v45, v46) + 1, v47 <= objc_msgSend_length(a2, v48, v49)))
              {
                v50 = objc_msgSend_data(a2, v45, v46);
                v53 = objc_msgSend_position(a2, v51, v52);
                objc_msgSend_getBytes_range_(v50, v54, &v65, v53, 1);

                v57 = objc_msgSend_position(a2, v55, v56);
                objc_msgSend_setPosition_(a2, v58, v57 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v45, v46);
              }

              v41 |= (v65 & 0x7F) << v39;
              if ((v65 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v30 = v40++ >= 9;
              if (v30)
              {
                v59 = 0;
                goto LABEL_50;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v59 = 0;
            }

            else
            {
              v59 = v41;
            }

LABEL_50:
            *(a1 + 16) = v59;
            goto LABEL_51;
          case 3:
            v33 = objc_alloc_init(CKDPRecord);
            objc_msgSend_addRecord_(a1, v34, v33);
            goto LABEL_30;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_51:
      v61 = objc_msgSend_position(a2, v32, v9);
    }

    while (v61 < objc_msgSend_length(a2, v62, v63));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22532723C()
{
  v0 = qword_280D55058;
  qword_280D55058 = &unk_2838C9638;
}

uint64_t sub_2253278D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v146) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v146) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v146, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v146 & 0x7F) << v10;
        if ((v146 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 4)
      {
        if (v32 > 2)
        {
          if (v32 == 3)
          {
            v54 = objc_alloc_init(CKDPRequestedFields);
            objc_storeStrong((a1 + 24), v54);
            v146 = 0;
            v147 = 0;
            if (!PBReaderPlaceMark() || !CKDPRequestedFieldsReadFrom(v54, a2, v79))
            {
LABEL_104:

              return 0;
            }

            goto LABEL_56;
          }

          if (v32 == 4)
          {
            v55 = 0;
            v56 = 0;
            v57 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v146) = 0;
              v58 = objc_msgSend_position(a2, v32, v9, v146) + 1;
              if (v58 >= objc_msgSend_position(a2, v59, v60) && (v63 = objc_msgSend_position(a2, v61, v62) + 1, v63 <= objc_msgSend_length(a2, v64, v65)))
              {
                v66 = objc_msgSend_data(a2, v61, v62);
                v69 = objc_msgSend_position(a2, v67, v68);
                objc_msgSend_getBytes_range_(v66, v70, &v146, v69, 1);

                v73 = objc_msgSend_position(a2, v71, v72);
                objc_msgSend_setPosition_(a2, v74, v73 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v61, v62);
              }

              v57 |= (v146 & 0x7F) << v55;
              if ((v146 & 0x80) == 0)
              {
                break;
              }

              v55 += 7;
              v30 = v56++ >= 9;
              if (v30)
              {
                v75 = 0;
                goto LABEL_89;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v75 = 0;
            }

            else
            {
              v75 = v57;
            }

LABEL_89:
            v140 = 16;
            goto LABEL_96;
          }
        }

        else
        {
          if (v32 == 1)
          {
            v77 = PBReaderReadData();
            v78 = *(a1 + 32);
            *(a1 + 32) = v77;

            goto LABEL_102;
          }

          if (v32 == 2)
          {
            v54 = objc_alloc_init(MEMORY[0x277CBC278]);
            objc_storeStrong((a1 + 40), v54);
            v146 = 0;
            v147 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
            {
              goto LABEL_104;
            }

            goto LABEL_56;
          }
        }
      }

      else if (v32 <= 6)
      {
        if (v32 == 5)
        {
          v100 = 0;
          v101 = 0;
          v102 = 0;
          *(a1 + 52) |= 2u;
          while (1)
          {
            LOBYTE(v146) = 0;
            v103 = objc_msgSend_position(a2, v32, v9, v146) + 1;
            if (v103 >= objc_msgSend_position(a2, v104, v105) && (v108 = objc_msgSend_position(a2, v106, v107) + 1, v108 <= objc_msgSend_length(a2, v109, v110)))
            {
              v111 = objc_msgSend_data(a2, v106, v107);
              v114 = objc_msgSend_position(a2, v112, v113);
              objc_msgSend_getBytes_range_(v111, v115, &v146, v114, 1);

              v118 = objc_msgSend_position(a2, v116, v117);
              objc_msgSend_setPosition_(a2, v119, v118 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v106, v107);
            }

            v102 |= (v146 & 0x7F) << v100;
            if ((v146 & 0x80) == 0)
            {
              break;
            }

            v100 += 7;
            v30 = v101++ >= 9;
            if (v30)
            {
              v75 = 0;
              goto LABEL_95;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v75 = 0;
          }

          else
          {
            v75 = v102;
          }

LABEL_95:
          v140 = 20;
LABEL_96:
          *(a1 + v140) = v75;
          goto LABEL_102;
        }

        if (v32 == 6)
        {
          v54 = objc_alloc_init(CKDPAssetsToDownload);
          objc_storeStrong((a1 + 8), v54);
          v146 = 0;
          v147 = 0;
          if (!PBReaderPlaceMark() || !sub_2252DF538(v54, a2, v76))
          {
            goto LABEL_104;
          }

LABEL_56:
          PBReaderRecallMark();

          goto LABEL_102;
        }
      }

      else
      {
        switch(v32)
        {
          case 7:
            v80 = 0;
            v81 = 0;
            v82 = 0;
            *(a1 + 52) |= 0x10u;
            while (1)
            {
              LOBYTE(v146) = 0;
              v83 = objc_msgSend_position(a2, v32, v9, v146) + 1;
              if (v83 >= objc_msgSend_position(a2, v84, v85) && (v88 = objc_msgSend_position(a2, v86, v87) + 1, v88 <= objc_msgSend_length(a2, v89, v90)))
              {
                v91 = objc_msgSend_data(a2, v86, v87);
                v94 = objc_msgSend_position(a2, v92, v93);
                objc_msgSend_getBytes_range_(v91, v95, &v146, v94, 1);

                v98 = objc_msgSend_position(a2, v96, v97);
                objc_msgSend_setPosition_(a2, v99, v98 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v86, v87);
              }

              v82 |= (v146 & 0x7F) << v80;
              if ((v146 & 0x80) == 0)
              {
                break;
              }

              v80 += 7;
              v30 = v81++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_91;
              }
            }

            v53 = (v82 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_91:
            v141 = 50;
            goto LABEL_101;
          case 8:
            v120 = 0;
            v121 = 0;
            v122 = 0;
            *(a1 + 52) |= 4u;
            while (1)
            {
              LOBYTE(v146) = 0;
              v123 = objc_msgSend_position(a2, v32, v9, v146) + 1;
              if (v123 >= objc_msgSend_position(a2, v124, v125) && (v128 = objc_msgSend_position(a2, v126, v127) + 1, v128 <= objc_msgSend_length(a2, v129, v130)))
              {
                v131 = objc_msgSend_data(a2, v126, v127);
                v134 = objc_msgSend_position(a2, v132, v133);
                objc_msgSend_getBytes_range_(v131, v135, &v146, v134, 1);

                v138 = objc_msgSend_position(a2, v136, v137);
                objc_msgSend_setPosition_(a2, v139, v138 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v126, v127);
              }

              v122 |= (v146 & 0x7F) << v120;
              if ((v146 & 0x80) == 0)
              {
                break;
              }

              v120 += 7;
              v30 = v121++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_100;
              }
            }

            v53 = (v122 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_100:
            v141 = 48;
            goto LABEL_101;
          case 9:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 52) |= 8u;
            while (1)
            {
              LOBYTE(v146) = 0;
              v36 = objc_msgSend_position(a2, v32, v9, v146) + 1;
              if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
              {
                v44 = objc_msgSend_data(a2, v39, v40);
                v47 = objc_msgSend_position(a2, v45, v46);
                objc_msgSend_getBytes_range_(v44, v48, &v146, v47, 1);

                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_setPosition_(a2, v52, v51 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v39, v40);
              }

              v35 |= (v146 & 0x7F) << v33;
              if ((v146 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v30 = v34++ >= 9;
              if (v30)
              {
                LOBYTE(v53) = 0;
                goto LABEL_98;
              }
            }

            v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_98:
            v141 = 49;
LABEL_101:
            *(a1 + v141) = v53;
            goto LABEL_102;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_102:
      v142 = objc_msgSend_position(a2, v32, v9);
    }

    while (v142 < objc_msgSend_length(a2, v143, v144));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2253296DC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v92) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v92) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v92, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v92 & 0x7F) << v10;
        if ((v92 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 4)
      {
        if (v32 > 2)
        {
          if (v32 == 3)
          {
            v35 = PBReaderReadData();
            v36 = 32;
            goto LABEL_55;
          }

          if (v32 == 4)
          {
            v37 = 0;
            v38 = 0;
            v39 = 0;
            *(a1 + 76) |= 1u;
            while (1)
            {
              LOBYTE(v92) = 0;
              v40 = objc_msgSend_position(a2, v32, v9, v92) + 1;
              if (v40 >= objc_msgSend_position(a2, v41, v42) && (v45 = objc_msgSend_position(a2, v43, v44) + 1, v45 <= objc_msgSend_length(a2, v46, v47)))
              {
                v48 = objc_msgSend_data(a2, v43, v44);
                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_getBytes_range_(v48, v52, &v92, v51, 1);

                v55 = objc_msgSend_position(a2, v53, v54);
                objc_msgSend_setPosition_(a2, v56, v55 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v43, v44);
              }

              v39 |= (v92 & 0x7F) << v37;
              if ((v92 & 0x80) == 0)
              {
                break;
              }

              v37 += 7;
              v30 = v38++ >= 9;
              if (v30)
              {
                v57 = 0;
                goto LABEL_72;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v57 = 0;
            }

            else
            {
              v57 = v39;
            }

LABEL_72:
            *(a1 + 40) = v57;
            goto LABEL_65;
          }
        }

        else
        {
          if (v32 == 1)
          {
            v33 = objc_alloc_init(CKDPRecordRetrieveChangesResponseRecordChange);
            objc_msgSend_addChangedRecord_(a1, v79, v33);
            v92 = 0;
            v93 = 0;
            if (!PBReaderPlaceMark() || !sub_22532C298(v33, a2, v80))
            {
LABEL_76:

              return 0;
            }

            goto LABEL_64;
          }

          if (v32 == 2)
          {
            v35 = PBReaderReadData();
            v36 = 48;
LABEL_55:
            v81 = *(a1 + v36);
            *(a1 + v36) = v35;

            goto LABEL_65;
          }
        }
      }

      else if (v32 <= 6)
      {
        if (v32 == 5)
        {
          v33 = objc_alloc_init(CKDPRecordRetrieveChangesResponseShareChange);
          objc_msgSend_addChangedShare_(a1, v84, v33);
          v92 = 0;
          v93 = 0;
          if (!PBReaderPlaceMark() || !sub_22532D098(v33, a2, v85))
          {
            goto LABEL_76;
          }

          goto LABEL_64;
        }

        if (v32 == 6)
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 76) |= 2u;
          while (1)
          {
            LOBYTE(v92) = 0;
            v61 = objc_msgSend_position(a2, v32, v9, v92) + 1;
            if (v61 >= objc_msgSend_position(a2, v62, v63) && (v66 = objc_msgSend_position(a2, v64, v65) + 1, v66 <= objc_msgSend_length(a2, v67, v68)))
            {
              v69 = objc_msgSend_data(a2, v64, v65);
              v72 = objc_msgSend_position(a2, v70, v71);
              objc_msgSend_getBytes_range_(v69, v73, &v92, v72, 1);

              v76 = objc_msgSend_position(a2, v74, v75);
              objc_msgSend_setPosition_(a2, v77, v76 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v64, v65);
            }

            v60 |= (v92 & 0x7F) << v58;
            if ((v92 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v30 = v59++ >= 9;
            if (v30)
            {
              LOBYTE(v78) = 0;
              goto LABEL_74;
            }
          }

          v78 = (v60 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_74:
          *(a1 + 72) = v78;
          goto LABEL_65;
        }
      }

      else
      {
        switch(v32)
        {
          case 7:
            v33 = objc_alloc_init(CKDPRecordRetrieveChangesResponseMergeableDeltaChange);
            objc_msgSend_addChangedDeltas_(a1, v82, v33);
            v92 = 0;
            v93 = 0;
            if (!PBReaderPlaceMark() || !sub_22532B280(&v33->super.super.isa, a2, v83))
            {
              goto LABEL_76;
            }

            goto LABEL_64;
          case 8:
            v33 = objc_alloc_init(CKDPRecordRetrieveChangesResponseSyncObligation);
            objc_msgSend_addSyncObligations_(a1, v86, v33);
            v92 = 0;
            v93 = 0;
            if (!PBReaderPlaceMark() || !sub_22532DA0C(v33, a2, v87))
            {
              goto LABEL_76;
            }

            goto LABEL_64;
          case 0xC:
            v33 = objc_alloc_init(CKDPRecordRetrieveChangesResponseZoneAttributesChange);
            objc_storeStrong((a1 + 64), v33);
            v92 = 0;
            v93 = 0;
            if (!PBReaderPlaceMark() || !sub_22532DF34(v33, a2, v34))
            {
              goto LABEL_76;
            }

LABEL_64:
            PBReaderRecallMark();

            goto LABEL_65;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_65:
      v88 = objc_msgSend_position(a2, v32, v9);
    }

    while (v88 < objc_msgSend_length(a2, v89, v90));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22532B280(id *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v45) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v45, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v45 & 0x7F) << v10;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) <= 2)
      {
        if (v32 == 1)
        {
          v33 = objc_alloc_init(CKDPMergeableValueIdentifier);
          objc_storeStrong(a1 + 3, v33);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !sub_2253021B0(v33, a2, v38))
          {
LABEL_43:

            return 0;
          }

          goto LABEL_37;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(MEMORY[0x277CBC268]);
          objc_storeStrong(a1 + 4, v33);
          v45 = 0;
          v46 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
          {
            goto LABEL_43;
          }

          goto LABEL_37;
        }
      }

      else
      {
        switch(v32)
        {
          case 3:
            v33 = objc_alloc_init(CKDPRecordFieldIdentifier);
            objc_storeStrong(a1 + 2, v33);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordFieldIdentifierReadFrom(v33, a2, v35))
            {
              goto LABEL_43;
            }

            goto LABEL_37;
          case 5:
            v33 = objc_alloc_init(CKDPMergeableDelta);
            objc_msgSend_addDeltas_(a1, v36, v33);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !CKDPMergeableDeltaReadFrom(v33, a2, v37))
            {
              goto LABEL_43;
            }

            goto LABEL_37;
          case 6:
            v33 = objc_alloc_init(CKDPRecordType);
            objc_storeStrong(a1 + 5, v33);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordTypeReadFrom(v33, a2, v34))
            {
              goto LABEL_43;
            }

LABEL_37:
            PBReaderRecallMark();

            goto LABEL_38;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_38:
      v41 = objc_msgSend_position(a2, v39, v40);
    }

    while (v41 < objc_msgSend_length(a2, v42, v43));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22532C298(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v63) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v63) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v63, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v63 & 0x7F) << v10;
        if ((v63 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 2)
      {
        if (v32 == 1)
        {
          v33 = objc_alloc_init(MEMORY[0x277CBC268]);
          objc_storeStrong((a1 + 24), v33);
          v63 = 0;
          v64 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
          {
LABEL_50:

            return 0;
          }

          goto LABEL_41;
        }

        if (v32 == 2)
        {
          v35 = PBReaderReadString();
          v36 = *(a1 + 8);
          *(a1 + 8) = v35;

          goto LABEL_48;
        }
      }

      else
      {
        switch(v32)
        {
          case 3:
            v33 = objc_alloc_init(CKDPRecordType);
            objc_storeStrong((a1 + 32), v33);
            v63 = 0;
            v64 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordTypeReadFrom(v33, a2, v37))
            {
              goto LABEL_50;
            }

            goto LABEL_41;
          case 4:
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 44) |= 1u;
            while (1)
            {
              LOBYTE(v63) = 0;
              v41 = objc_msgSend_position(a2, v32, v9, v63) + 1;
              if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
              {
                v49 = objc_msgSend_data(a2, v44, v45);
                v52 = objc_msgSend_position(a2, v50, v51);
                objc_msgSend_getBytes_range_(v49, v53, &v63, v52, 1);

                v56 = objc_msgSend_position(a2, v54, v55);
                objc_msgSend_setPosition_(a2, v57, v56 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v44, v45);
              }

              v40 |= (v63 & 0x7F) << v38;
              if ((v63 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v30 = v39++ >= 9;
              if (v30)
              {
                v58 = 0;
                goto LABEL_47;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v58 = 0;
            }

            else
            {
              v58 = v40;
            }

LABEL_47:
            *(a1 + 40) = v58;
            goto LABEL_48;
          case 5:
            v33 = objc_alloc_init(CKDPRecord);
            objc_storeStrong((a1 + 16), v33);
            v63 = 0;
            v64 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordReadFrom(v33, a2, v34))
            {
              goto LABEL_50;
            }

LABEL_41:
            PBReaderRecallMark();

            goto LABEL_48;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_48:
      v59 = objc_msgSend_position(a2, v32, v9);
    }

    while (v59 < objc_msgSend_length(a2, v60, v61));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22532D098(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v61) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v61) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v61, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v61 & 0x7F) << v10;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        break;
      }

      if (v32 == 2)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v61) = 0;
          v38 = objc_msgSend_position(a2, v32, v9, v61) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v61, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v61 & 0x7F) << v35;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_40;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v37;
        }

LABEL_40:
        *(a1 + 8) = v55;
        goto LABEL_41;
      }

      if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPShareIdentifier);
        objc_storeStrong((a1 + 24), v33);
        v61 = 0;
        v62 = 0;
        if (!PBReaderPlaceMark() || !CKDPShareIdentifierReadFrom(v33, a2, v34))
        {
          goto LABEL_43;
        }

LABEL_34:
        PBReaderRecallMark();

        goto LABEL_41;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_41:
      v57 = objc_msgSend_position(a2, v32, v9);
      if (v57 >= objc_msgSend_length(a2, v58, v59))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPShare);
    objc_storeStrong((a1 + 16), v33);
    v61 = 0;
    v62 = 0;
    if (!PBReaderPlaceMark() || !CKDPShareReadFrom(v33, a2, v56))
    {
LABEL_43:

      return 0;
    }

    goto LABEL_34;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22532DA0C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v39[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v39[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v39, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v39[0] & 0x7F) << v10;
        if ((v39[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(MEMORY[0x277CBC278]);
        objc_storeStrong((a1 + 8), v32);
        v39[0] = 0;
        v39[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v35 = objc_msgSend_position(a2, v33, v34);
    }

    while (v35 < objc_msgSend_length(a2, v36, v37));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22532DF34(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPZone);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !sub_22538168C(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22532E378()
{
  v0 = qword_280D55068;
  qword_280D55068 = &unk_2838C9660;
}

uint64_t sub_22532E764(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v86) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v86) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v86, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v86 & 0x7F) << v10;
        if ((v86 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 4)
      {
        if (v32 > 6)
        {
          if (v32 == 7)
          {
            v61 = 0;
            v62 = 0;
            v63 = 0;
            *(a1 + 60) |= 2u;
            while (1)
            {
              LOBYTE(v86) = 0;
              v64 = objc_msgSend_position(a2, v32, v9, v86) + 1;
              if (v64 >= objc_msgSend_position(a2, v65, v66) && (v69 = objc_msgSend_position(a2, v67, v68) + 1, v69 <= objc_msgSend_length(a2, v70, v71)))
              {
                v72 = objc_msgSend_data(a2, v67, v68);
                v75 = objc_msgSend_position(a2, v73, v74);
                objc_msgSend_getBytes_range_(v72, v76, &v86, v75, 1);

                v79 = objc_msgSend_position(a2, v77, v78);
                objc_msgSend_setPosition_(a2, v80, v79 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v67, v68);
              }

              v63 |= (v86 & 0x7F) << v61;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v61 += 7;
              v30 = v62++ >= 9;
              if (v30)
              {
                LOBYTE(v58) = 0;
                goto LABEL_64;
              }
            }

            v58 = (v63 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_64:
            v81 = 57;
            goto LABEL_67;
          }

          if (v32 == 8)
          {
            v38 = 0;
            v39 = 0;
            v40 = 0;
            *(a1 + 60) |= 1u;
            while (1)
            {
              LOBYTE(v86) = 0;
              v41 = objc_msgSend_position(a2, v32, v9, v86) + 1;
              if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
              {
                v49 = objc_msgSend_data(a2, v44, v45);
                v52 = objc_msgSend_position(a2, v50, v51);
                objc_msgSend_getBytes_range_(v49, v53, &v86, v52, 1);

                v56 = objc_msgSend_position(a2, v54, v55);
                objc_msgSend_setPosition_(a2, v57, v56 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v44, v45);
              }

              v40 |= (v86 & 0x7F) << v38;
              if ((v86 & 0x80) == 0)
              {
                break;
              }

              v38 += 7;
              v30 = v39++ >= 9;
              if (v30)
              {
                LOBYTE(v58) = 0;
                goto LABEL_66;
              }
            }

            v58 = (v40 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_66:
            v81 = 56;
LABEL_67:
            *(a1 + v81) = v58;
            goto LABEL_68;
          }
        }

        else
        {
          if (v32 == 5)
          {
            v33 = objc_alloc_init(CKDPRecordRetrieveRequestRetrieveAssetURL);
            objc_storeStrong((a1 + 24), v33);
            v86 = 0;
            v87 = 0;
            if (!PBReaderPlaceMark() || !sub_22532FA98(v33, a2, v59))
            {
LABEL_70:

              return 0;
            }

            goto LABEL_49;
          }

          if (v32 == 6)
          {
            v33 = objc_alloc_init(CKDPAssetsToDownload);
            objc_storeStrong((a1 + 8), v33);
            v86 = 0;
            v87 = 0;
            if (!PBReaderPlaceMark() || !sub_2252DF538(v33, a2, v35))
            {
              goto LABEL_70;
            }

            goto LABEL_49;
          }
        }
      }

      else if (v32 > 2)
      {
        if (v32 == 3)
        {
          v36 = PBReaderReadString();
          v37 = 48;
          goto LABEL_51;
        }

        if (v32 == 4)
        {
          v36 = PBReaderReadString();
          v37 = 16;
LABEL_51:
          v60 = *(a1 + v37);
          *(a1 + v37) = v36;

          goto LABEL_68;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = objc_alloc_init(MEMORY[0x277CBC268]);
          objc_storeStrong((a1 + 32), v33);
          v86 = 0;
          v87 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
          {
            goto LABEL_70;
          }

          goto LABEL_49;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(CKDPRequestedFields);
          objc_storeStrong((a1 + 40), v33);
          v86 = 0;
          v87 = 0;
          if (!PBReaderPlaceMark() || !CKDPRequestedFieldsReadFrom(v33, a2, v34))
          {
            goto LABEL_70;
          }

LABEL_49:
          PBReaderRecallMark();

          goto LABEL_68;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_68:
      v82 = objc_msgSend_position(a2, v32, v9);
    }

    while (v82 < objc_msgSend_length(a2, v83, v84));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22532FA98(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v81[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v81[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v81, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v81[0] & 0x7F) << v10;
        if ((v81[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        v56 = 0;
        v57 = 0;
        v58 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          LOBYTE(v81[0]) = 0;
          v59 = objc_msgSend_position(a2, v32, v9, v81[0]) + 1;
          if (v59 >= objc_msgSend_position(a2, v60, v61) && (v64 = objc_msgSend_position(a2, v62, v63) + 1, v64 <= objc_msgSend_length(a2, v65, v66)))
          {
            v67 = objc_msgSend_data(a2, v62, v63);
            v70 = objc_msgSend_position(a2, v68, v69);
            objc_msgSend_getBytes_range_(v67, v71, v81, v70, 1);

            v74 = objc_msgSend_position(a2, v72, v73);
            objc_msgSend_setPosition_(a2, v75, v74 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v62, v63);
          }

          v58 |= (v81[0] & 0x7F) << v56;
          if ((v81[0] & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v30 = v57++ >= 9;
          if (v30)
          {
            v76 = 0;
            goto LABEL_50;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v76 = 0;
        }

        else
        {
          v76 = v58;
        }

LABEL_50:
        *(a1 + 24) = v76;
      }

      else if (v32 == 2)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          LOBYTE(v81[0]) = 0;
          v38 = objc_msgSend_position(a2, v32, v9, v81[0]) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, v81, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v81[0] & 0x7F) << v35;
          if ((v81[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_46;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v37;
        }

LABEL_46:
        *(a1 + 8) = v55;
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPRequestedFields);
        objc_storeStrong((a1 + 16), v33);
        v81[0] = 0;
        v81[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRequestedFieldsReadFrom(v33, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v77 = objc_msgSend_position(a2, v32, v9);
    }

    while (v77 < objc_msgSend_length(a2, v78, v79));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225330520(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v60[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v60[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60[0] & 0x7F) << v10;
        if ((v60[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v60[0]) = 0;
          v38 = objc_msgSend_position(a2, v32, v9, v60[0]) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, v60, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v60[0] & 0x7F) << v35;
          if ((v60[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            LOBYTE(v55) = 0;
            goto LABEL_34;
          }
        }

        v55 = (v37 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_34:
        *(a1 + 16) = v55;
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPRecord);
        objc_storeStrong((a1 + 8), v33);
        v60[0] = 0;
        v60[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordReadFrom(v33, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v56 = objc_msgSend_position(a2, v32, v9);
    }

    while (v56 < objc_msgSend_length(a2, v57, v58));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225330C50()
{
  v0 = qword_280D55078;
  qword_280D55078 = &unk_2838C9688;
}

uint64_t sub_225330E78(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v43) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v43) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43 & 0x7F) << v10;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v38 = PBReaderReadString();
          v33 = *(a1 + 16);
          *(a1 + 16) = v38;
          goto LABEL_34;
        }

        if (v32 == 4)
        {
          v33 = objc_alloc_init(CKDPAssetsToDownload);
          objc_storeStrong((a1 + 8), v33);
          v43 = 0;
          v44 = 0;
          if (!PBReaderPlaceMark() || !sub_2252DF538(v33, a2, v35))
          {
LABEL_37:

            return 0;
          }

LABEL_32:
          PBReaderRecallMark();
LABEL_34:

          goto LABEL_35;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = objc_alloc_init(MEMORY[0x277CBC268]);
          objc_storeStrong((a1 + 24), v33);
          v43 = 0;
          v44 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
          {
            goto LABEL_37;
          }

          goto LABEL_32;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(CKDPRequestedFields);
          objc_storeStrong((a1 + 32), v33);
          v43 = 0;
          v44 = 0;
          if (!PBReaderPlaceMark() || !CKDPRequestedFieldsReadFrom(v33, a2, v34))
          {
            goto LABEL_37;
          }

          goto LABEL_32;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      v39 = objc_msgSend_position(a2, v36, v37);
    }

    while (v39 < objc_msgSend_length(a2, v40, v41));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225331A7C(_BYTE *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v61[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v61[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v61, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v61[0] & 0x7F) << v10;
        if ((v61[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v54 = objc_alloc_init(CKDPRecord);
        objc_msgSend_addRecordVersions_(a1, v55, v54);
        v61[0] = 0;
        v61[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordReadFrom(v54, a2, v56))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v32 == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        a1[20] |= 1u;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v36 = objc_msgSend_position(a2, v32, v9, v61[0]) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, v61, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v61[0] & 0x7F) << v33;
          if ((v61[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            LOBYTE(v53) = 0;
            goto LABEL_34;
          }
        }

        v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_34:
        a1[16] = v53;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2253323E8()
{
  v0 = qword_280D54EC8;
  qword_280D54EC8 = &unk_2838C96B0;
}

uint64_t sub_225332C98(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 >= objc_msgSend_length(a2, v6, v7))
  {
    return objc_msgSend_hasError(a2, v8, v9) ^ 1;
  }

  while (2)
  {
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      LOBYTE(v90) = 0;
      v13 = objc_msgSend_position(a2, v8, v9, v90) + 1;
      if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
      {
        v21 = objc_msgSend_data(a2, v16, v17);
        v24 = objc_msgSend_position(a2, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v90, v24, 1);

        v28 = objc_msgSend_position(a2, v26, v27);
        objc_msgSend_setPosition_(a2, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v16, v17);
      }

      v12 |= (v90 & 0x7F) << v10;
      if ((v90 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      v30 = v11++ >= 9;
      if (v30)
      {
        v31 = 0;
        goto LABEL_15;
      }
    }

    v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v9 = v31 & 7;
    if (v9 == 4)
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v32 = (v31 >> 3);
    switch((v31 >> 3))
    {
      case 1u:
        v33 = objc_alloc_init(CKDPRecord);
        objc_storeStrong((a1 + 48), v33);
        v90 = 0;
        v91 = 0;
        if (PBReaderPlaceMark() && CKDPRecordReadFrom(v33, a2, v34))
        {
          goto LABEL_45;
        }

        goto LABEL_71;
      case 2u:
        v63 = 0;
        v64 = 0;
        v65 = 0;
        *(a1 + 108) |= 2u;
        while (1)
        {
          LOBYTE(v90) = 0;
          v66 = objc_msgSend_position(a2, v32, v9, v90) + 1;
          if (v66 >= objc_msgSend_position(a2, v67, v68) && (v71 = objc_msgSend_position(a2, v69, v70) + 1, v71 <= objc_msgSend_length(a2, v72, v73)))
          {
            v74 = objc_msgSend_data(a2, v69, v70);
            v77 = objc_msgSend_position(a2, v75, v76);
            objc_msgSend_getBytes_range_(v74, v78, &v90, v77, 1);

            v81 = objc_msgSend_position(a2, v79, v80);
            objc_msgSend_setPosition_(a2, v82, v81 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v69, v70);
          }

          v65 |= (v90 & 0x7F) << v63;
          if ((v90 & 0x80) == 0)
          {
            break;
          }

          v63 += 7;
          v30 = v64++ >= 9;
          if (v30)
          {
            LOBYTE(v83) = 0;
            goto LABEL_69;
          }
        }

        v83 = (v65 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_69:
        *(a1 + 104) = v83;
        goto LABEL_60;
      case 3u:
        v33 = objc_alloc_init(CKDPRecordFieldIdentifier);
        objc_msgSend_addFieldsToDeleteIfExistOnMerge_(a1, v61, v33);
        v90 = 0;
        v91 = 0;
        if (PBReaderPlaceMark() && CKDPRecordFieldIdentifierReadFrom(v33, a2, v62))
        {
          goto LABEL_45;
        }

        goto LABEL_71;
      case 4u:
        v59 = PBReaderReadString();
        v60 = 24;
        goto LABEL_59;
      case 5u:
        v33 = objc_alloc_init(CKDPRecordSaveRequestConflictLoserUpdate);
        objc_storeStrong((a1 + 8), v33);
        v90 = 0;
        v91 = 0;
        if (!PBReaderPlaceMark() || !sub_22533463C(v33, a2, v36))
        {
          goto LABEL_71;
        }

        goto LABEL_45;
      case 6u:
        v38 = 0;
        v39 = 0;
        v40 = 0;
        *(a1 + 108) |= 1u;
        while (1)
        {
          LOBYTE(v90) = 0;
          v41 = objc_msgSend_position(a2, v32, v9, v90) + 1;
          if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
          {
            v49 = objc_msgSend_data(a2, v44, v45);
            v52 = objc_msgSend_position(a2, v50, v51);
            objc_msgSend_getBytes_range_(v49, v53, &v90, v52, 1);

            v56 = objc_msgSend_position(a2, v54, v55);
            objc_msgSend_setPosition_(a2, v57, v56 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v44, v45);
          }

          v40 |= (v90 & 0x7F) << v38;
          if ((v90 & 0x80) == 0)
          {
            break;
          }

          v38 += 7;
          v30 = v39++ >= 9;
          if (v30)
          {
            v58 = 0;
            goto LABEL_67;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v58 = 0;
        }

        else
        {
          v58 = v40;
        }

LABEL_67:
        *(a1 + 72) = v58;
        goto LABEL_60;
      case 7u:
        v59 = PBReaderReadString();
        v60 = 96;
        goto LABEL_59;
      case 8u:
        v59 = PBReaderReadString();
        v60 = 56;
        goto LABEL_59;
      case 9u:
        v33 = PBReaderReadString();
        if (v33)
        {
          objc_msgSend_addConflictLosersToResolve_(a1, v88, v33);
        }

        goto LABEL_46;
      case 0xAu:
        v59 = PBReaderReadString();
        v60 = 80;
        goto LABEL_59;
      case 0xBu:
        v33 = objc_alloc_init(CKDPRecordSaveRequestShareIdUpdate);
        objc_storeStrong((a1 + 88), v33);
        v90 = 0;
        v91 = 0;
        if (!PBReaderPlaceMark() || !sub_225334DC8(v33, a2, v35))
        {
          goto LABEL_71;
        }

        goto LABEL_45;
      case 0xCu:
        v59 = PBReaderReadString();
        v60 = 40;
LABEL_59:
        v84 = *(a1 + v60);
        *(a1 + v60) = v59;

        goto LABEL_60;
      case 0xEu:
        v33 = objc_alloc_init(CKDPRequestedFields);
        objc_storeStrong((a1 + 64), v33);
        v90 = 0;
        v91 = 0;
        if (PBReaderPlaceMark() && CKDPRequestedFieldsReadFrom(v33, a2, v37))
        {
LABEL_45:
          PBReaderRecallMark();
LABEL_46:

LABEL_60:
          v85 = objc_msgSend_position(a2, v32, v9);
          if (v85 >= objc_msgSend_length(a2, v86, v87))
          {
            return objc_msgSend_hasError(a2, v8, v9) ^ 1;
          }

          continue;
        }

LABEL_71:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_60;
    }
  }
}

uint64_t sub_22533463C(void *a1, void *a2, uint64_t a3)
{
  for (i = objc_msgSend_position(a2, a2, a3); i < objc_msgSend_length(a2, v6, v7) && (objc_msgSend_hasError(a2, v8, v9) & 1) == 0; i = objc_msgSend_position(a2, v34, v35))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v37 = 0;
      v13 = objc_msgSend_position(a2, v8, v9) + 1;
      if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
      {
        v21 = objc_msgSend_data(a2, v16, v17);
        v24 = objc_msgSend_position(a2, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v37, v24, 1);

        v28 = objc_msgSend_position(a2, v26, v27);
        objc_msgSend_setPosition_(a2, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v16, v17);
      }

      v12 |= (v37 & 0x7F) << v10;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      if (v11++ >= 9)
      {
        v31 = 0;
        goto LABEL_16;
      }
    }

    v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_16:
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      break;
    }

    v9 = v31 & 7;
    if (v9 == 4)
    {
      break;
    }

    if ((v31 >> 3) == 1)
    {
      v33 = PBReaderReadString();
      if (v33)
      {
        objc_msgSend_addConflictLoserEtags_(a1, v32, v33);
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

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225334DC8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPShareIdentifier);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPShareIdentifierReadFrom(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2253353C8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v43) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v43) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43 & 0x7F) << v10;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) > 3)
      {
        if (v32 == 4)
        {
          v33 = objc_alloc_init(CKDPRecord);
          objc_storeStrong((a1 + 24), v33);
          v43 = 0;
          v44 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordReadFrom(v33, a2, v38))
          {
LABEL_37:

            return 0;
          }

LABEL_33:
          PBReaderRecallMark();
LABEL_34:

          goto LABEL_35;
        }

        if (v32 == 6)
        {
          v33 = objc_alloc_init(MEMORY[0x277CBC240]);
          objc_storeStrong((a1 + 16), v33);
          v43 = 0;
          v44 = 0;
          if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v32 == 2)
        {
          v37 = PBReaderReadString();
          v33 = *(a1 + 8);
          *(a1 + 8) = v37;
          goto LABEL_34;
        }

        if (v32 == 3)
        {
          v33 = objc_alloc_init(CKDPDateStatistics);
          objc_storeStrong((a1 + 32), v33);
          v43 = 0;
          v44 = 0;
          if (!PBReaderPlaceMark() || !CKDPDateStatisticsReadFrom(v33, a2, v34))
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      v39 = objc_msgSend_position(a2, v35, v36);
    }

    while (v39 < objc_msgSend_length(a2, v40, v41));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRecordStableUrlReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v43 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43 & 0x7F) << v10;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) <= 2)
      {
        if (v32 == 1)
        {
          v33 = PBReaderReadString();
          v34 = &OBJC_IVAR___CKDPRecordStableUrl__routingKey;
          goto LABEL_28;
        }

        if (v32 == 2)
        {
          v33 = PBReaderReadData();
          v34 = &OBJC_IVAR___CKDPRecordStableUrl__shortTokenHash;
          goto LABEL_28;
        }
      }

      else
      {
        switch(v32)
        {
          case 3:
            v33 = PBReaderReadData();
            v34 = &OBJC_IVAR___CKDPRecordStableUrl__protectedFullToken;
            goto LABEL_28;
          case 4:
            v33 = PBReaderReadData();
            v34 = &OBJC_IVAR___CKDPRecordStableUrl__encryptedPublicSharingKey;
            goto LABEL_28;
          case 5:
            v33 = PBReaderReadString();
            v34 = &OBJC_IVAR___CKDPRecordStableUrl__displayedHostname;
LABEL_28:
            v35 = *v34;
            v36 = *(a1 + v35);
            *(a1 + v35) = v33;

            goto LABEL_29;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v39 = objc_msgSend_position(a2, v37, v38);
    }

    while (v39 < objc_msgSend_length(a2, v40, v41));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRequestedFieldsReadFrom(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v43) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v43) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43 & 0x7F) << v10;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPRecordFieldIdentifier);
        objc_msgSend_addFields_(a1, v33, v32);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordFieldIdentifierReadFrom(v32, a2, v34))
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
      v39 = objc_msgSend_position(a2, v37, v38);
      if (v39 >= objc_msgSend_length(a2, v40, v41))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = objc_alloc_init(CKDPRequestedListField);
    objc_msgSend_addListField_(a1, v35, v32);
    v43 = 0;
    v44 = 0;
    if (!PBReaderPlaceMark() || !sub_225337A68(&v32->super.super.isa, a2, v36))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225337A68(id *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v42) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v42) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPRecordFieldIdentifier);
        objc_storeStrong(a1 + 1, v32);
        v42 = 0;
        v43 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordFieldIdentifierReadFrom(v32, a2, v33))
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
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = objc_alloc_init(CKDPListRange);
    objc_msgSend_addRange_(a1, v34, v32);
    v42 = 0;
    v43 = 0;
    if (!PBReaderPlaceMark() || !sub_2252F7AB4(v32, a2, v35))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRequestOperationReadFrom(id *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v94) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v94) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v94, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v94 & 0x7F) << v10;
        if ((v94 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) > 269)
      {
        if (v32 > 408)
        {
          if (v32 <= 800)
          {
            if (v32 > 503)
            {
              switch(v32)
              {
                case 0x1F8:
                  v33 = objc_alloc_init(CKDPShareDeclineRequest);
                  objc_storeStrong(a1 + 31, v33);
                  v94 = 0;
                  v95 = 0;
                  if (!PBReaderPlaceMark() || !sub_22535A3AC(v33, a2, v88))
                  {
LABEL_219:

                    return 0;
                  }

                  break;
                case 0x201:
                  v33 = objc_alloc_init(CKDPShareVettingInitiateRequest);
                  objc_storeStrong(a1 + 33, v33);
                  v94 = 0;
                  v95 = 0;
                  if (!PBReaderPlaceMark() || !sub_22535E7C4(v33, a2, v78))
                  {
                    goto LABEL_219;
                  }

                  break;
                case 0x320:
                  v33 = objc_alloc_init(CKDPTokenRegistrationRequest);
                  objc_storeStrong(a1 + 37, v33);
                  v94 = 0;
                  v95 = 0;
                  if (!PBReaderPlaceMark() || !sub_225374800(v33, a2, v42))
                  {
                    goto LABEL_219;
                  }

                  break;
                default:
                  goto LABEL_89;
              }
            }

            else
            {
              switch(v32)
              {
                case 0x199:
                  v33 = objc_alloc_init(CKDPZoneUsageSaveRequest);
                  objc_storeStrong(a1 + 54, v33);
                  v94 = 0;
                  v95 = 0;
                  if (!PBReaderPlaceMark() || !sub_225393EB0(v33, a2, v86))
                  {
                    goto LABEL_219;
                  }

                  break;
                case 0x19A:
                  v33 = objc_alloc_init(CKDPShareUsageSaveRequest);
                  objc_storeStrong(a1 + 32, v33);
                  v94 = 0;
                  v95 = 0;
                  if (!PBReaderPlaceMark() || !sub_22535E030(v33, a2, v76))
                  {
                    goto LABEL_219;
                  }

                  break;
                case 0x1F7:
                  v33 = objc_alloc_init(CKDPShareAcceptRequest);
                  objc_storeStrong(a1 + 29, v33);
                  v94 = 0;
                  v95 = 0;
                  if (!PBReaderPlaceMark() || !sub_225357050(v33, a2, v38))
                  {
                    goto LABEL_219;
                  }

                  break;
                default:
                  goto LABEL_89;
              }
            }
          }

          else if (v32 <= 803)
          {
            if (v32 == 801)
            {
              v33 = objc_alloc_init(CKDPTokenUnregistrationRequest);
              objc_storeStrong(a1 + 38, v33);
              v94 = 0;
              v95 = 0;
              if (!PBReaderPlaceMark() || !sub_225374EF8(v33, a2, v80))
              {
                goto LABEL_219;
              }
            }

            else if (v32 == 802)
            {
              v33 = objc_alloc_init(CKDPSetBadgeCountRequest);
              objc_storeStrong(a1 + 28, v33);
              v94 = 0;
              v95 = 0;
              if (!PBReaderPlaceMark() || !sub_2253528A8(v33, a2, v74))
              {
                goto LABEL_219;
              }
            }

            else
            {
              v33 = objc_alloc_init(CKDPNotificationSyncRequest);
              objc_storeStrong(a1 + 18, v33);
              v94 = 0;
              v95 = 0;
              if (!PBReaderPlaceMark() || !sub_225303608(v33, a2, v40))
              {
                goto LABEL_219;
              }
            }
          }

          else if (v32 > 900)
          {
            if (v32 == 901)
            {
              v33 = objc_alloc_init(CKDPMarkAssetBrokenRequest);
              objc_storeStrong(a1 + 12, v33);
              v94 = 0;
              v95 = 0;
              if (!PBReaderPlaceMark() || !sub_2252F9A78(v33, a2, v84))
              {
                goto LABEL_219;
              }
            }

            else
            {
              if (v32 != 1101)
              {
LABEL_89:
                if ((PBReaderSkipValueWithTag() & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_217;
              }

              v33 = objc_alloc_init(CKDPCodeFunctionInvokeRequest);
              objc_storeStrong(a1 + 10, v33);
              v94 = 0;
              v95 = 0;
              if (!PBReaderPlaceMark() || !sub_2252E6A78(&v33->super.super.super.isa, a2, v45))
              {
                goto LABEL_219;
              }
            }
          }

          else if (v32 == 804)
          {
            v33 = objc_alloc_init(CKDPNotificationMarkReadRequest);
            objc_storeStrong(a1 + 17, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_225302E84(v33, a2, v82))
            {
              goto LABEL_219;
            }
          }

          else
          {
            if (v32 != 900)
            {
              goto LABEL_89;
            }

            v33 = objc_alloc_init(CKDPArchiveRecordsRequest);
            objc_storeStrong(a1 + 5, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_2252DD198(v33, a2, v36))
            {
              goto LABEL_219;
            }
          }
        }

        else if (v32 <= 400)
        {
          if (v32 > 300)
          {
            switch(v32)
            {
              case 0x12D:
                v33 = objc_alloc_init(CKDPSubscriptionRetrieveRequest);
                objc_storeStrong(a1 + 36, v33);
                v94 = 0;
                v95 = 0;
                if (!PBReaderPlaceMark() || !sub_22536C1BC(v33, a2, v87))
                {
                  goto LABEL_219;
                }

                break;
              case 0x12E:
                v33 = objc_alloc_init(CKDPSubscriptionDeleteRequest);
                objc_storeStrong(a1 + 35, v33);
                v94 = 0;
                v95 = 0;
                if (!PBReaderPlaceMark() || !sub_225368CF8(v33, a2, v77))
                {
                  goto LABEL_219;
                }

                break;
              case 0x190:
                v33 = objc_alloc_init(CKDPUserRetrieveRequest);
                objc_storeStrong(a1 + 46, v33);
                v94 = 0;
                v95 = 0;
                if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v41))
                {
                  goto LABEL_219;
                }

                break;
              default:
                goto LABEL_89;
            }
          }

          else
          {
            switch(v32)
            {
              case 0x10E:
                v33 = objc_alloc_init(CKDPAnonymousShareAddRequest);
                objc_storeStrong(a1 + 3, v33);
                v94 = 0;
                v95 = 0;
                if (!PBReaderPlaceMark() || !sub_2252DB1D8(v33, a2, v85))
                {
                  goto LABEL_219;
                }

                break;
              case 0x10F:
                v33 = objc_alloc_init(CKDPAnonymousShareRemoveRequest);
                objc_storeStrong(a1 + 4, v33);
                v94 = 0;
                v95 = 0;
                if (!PBReaderPlaceMark() || !sub_2252DBD8C(v33, a2, v75))
                {
                  goto LABEL_219;
                }

                break;
              case 0x12C:
                v33 = objc_alloc_init(CKDPSubscriptionCreateRequest);
                objc_storeStrong(a1 + 34, v33);
                v94 = 0;
                v95 = 0;
                if (!PBReaderPlaceMark() || !sub_225368614(v33, a2, v37))
                {
                  goto LABEL_219;
                }

                break;
              default:
                goto LABEL_89;
            }
          }
        }

        else if (v32 <= 403)
        {
          if (v32 == 401)
          {
            v33 = objc_alloc_init(CKDPUserQueryRequest);
            objc_storeStrong(a1 + 45, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_22537E9EC(v33, a2, v79))
            {
              goto LABEL_219;
            }
          }

          else if (v32 == 402)
          {
            v33 = objc_alloc_init(CKDPUserPrivacySettingsRetrieveRequest);
            objc_storeStrong(a1 + 43, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v73))
            {
              goto LABEL_219;
            }
          }

          else
          {
            v33 = objc_alloc_init(CKDPUserPrivacySettingsUpdateRequest);
            objc_storeStrong(a1 + 44, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_22537DE08(v33, a2, v39))
            {
              goto LABEL_219;
            }
          }
        }

        else if (v32 > 406)
        {
          if (v32 == 407)
          {
            v33 = objc_alloc_init(CKDPAdopterCapabilitiesSaveRequest);
            objc_storeStrong(a1 + 2, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_2252D7930(v33, a2, v83))
            {
              goto LABEL_219;
            }
          }

          else
          {
            v33 = objc_alloc_init(CKDPAdopterCapabilitiesCheckRequest);
            objc_storeStrong(a1 + 1, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_2252D5810(v33, a2, v44))
            {
              goto LABEL_219;
            }
          }
        }

        else if (v32 == 404)
        {
          v33 = objc_alloc_init(CKDPUserPrivacySettingsResetRequest);
          objc_storeStrong(a1 + 42, v33);
          v94 = 0;
          v95 = 0;
          if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v81))
          {
            goto LABEL_219;
          }
        }

        else
        {
          if (v32 != 405)
          {
            goto LABEL_89;
          }

          v33 = objc_alloc_init(CKDPUserPrivacySettingsBatchLookupRequest);
          objc_storeStrong(a1 + 41, v33);
          v94 = 0;
          v95 = 0;
          if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v35))
          {
            goto LABEL_219;
          }
        }
      }

      else
      {
        switch(v32)
        {
          case 200:
            v33 = objc_alloc_init(CKDPZoneSaveRequest);
            objc_storeStrong(a1 + 53, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_2253911D0(v33, a2, v34))
            {
              goto LABEL_219;
            }

            break;
          case 201:
            v33 = objc_alloc_init(CKDPZoneRetrieveRequest);
            objc_storeStrong(a1 + 52, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_22538D6D8(v33, a2, v66))
            {
              goto LABEL_219;
            }

            break;
          case 202:
            v33 = objc_alloc_init(CKDPZoneDeleteRequest);
            objc_storeStrong(a1 + 49, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_225387F70(v33, a2, v60))
            {
              goto LABEL_219;
            }

            break;
          case 203:
            v33 = objc_alloc_init(CKDPZoneRetrieveChangesRequest);
            objc_storeStrong(a1 + 51, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_22538ACC0(v33, a2, v65))
            {
              goto LABEL_219;
            }

            break;
          case 204:
          case 207:
          case 208:
          case 209:
          case 215:
          case 221:
          case 226:
          case 227:
          case 228:
          case 229:
          case 231:
          case 232:
          case 233:
          case 234:
          case 235:
          case 236:
          case 237:
          case 238:
          case 239:
          case 241:
          case 242:
          case 245:
          case 246:
          case 247:
          case 248:
          case 249:
          case 251:
          case 252:
          case 253:
          case 254:
          case 255:
          case 256:
          case 257:
          case 258:
          case 259:
            goto LABEL_89;
          case 205:
            v33 = objc_alloc_init(CKDPZoneChildrenRetrieveRequest);
            objc_storeStrong(a1 + 48, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_2253844F4(v33, a2, v64))
            {
              goto LABEL_219;
            }

            break;
          case 206:
            v33 = objc_alloc_init(CKDPZoneRetrieveAncestorsRequest);
            objc_storeStrong(a1 + 50, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_2253892CC(v33, a2, v62))
            {
              goto LABEL_219;
            }

            break;
          case 210:
            v33 = objc_alloc_init(CKDPRecordSaveRequest);
            objc_storeStrong(a1 + 26, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_225332C98(v33, a2, v68))
            {
              goto LABEL_219;
            }

            break;
          case 211:
            v33 = objc_alloc_init(CKDPRecordRetrieveRequest);
            objc_storeStrong(a1 + 24, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_22532E764(v33, a2, v67))
            {
              goto LABEL_219;
            }

            break;
          case 212:
            v33 = objc_alloc_init(CKDPRecordRetrieveVersionsRequest);
            objc_storeStrong(a1 + 25, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_225330E78(v33, a2, v59))
            {
              goto LABEL_219;
            }

            break;
          case 213:
            v33 = objc_alloc_init(CKDPRecordRetrieveChangesRequest);
            objc_storeStrong(a1 + 23, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_2253278D4(v33, a2, v63))
            {
              goto LABEL_219;
            }

            break;
          case 214:
            v33 = objc_alloc_init(CKDPRecordDeleteRequest);
            objc_storeStrong(a1 + 20, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_22531D678(v33, a2, v53))
            {
              goto LABEL_219;
            }

            break;
          case 216:
            v33 = objc_alloc_init(CKDPRecordResolveTokenRequest);
            objc_storeStrong(a1 + 22, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_225325000(v33, a2, v57))
            {
              goto LABEL_219;
            }

            break;
          case 217:
            v33 = objc_alloc_init(CKDPFetchArchivedRecordsRequest);
            objc_storeStrong(a1 + 9, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_2252F09B0(v33, a2, v54))
            {
              goto LABEL_219;
            }

            break;
          case 218:
            v33 = objc_alloc_init(CKDPRecordMoveRequest);
            objc_storeStrong(a1 + 21, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_2253216E0(v33, a2, v61))
            {
              goto LABEL_219;
            }

            break;
          case 219:
            v33 = objc_alloc_init(CKDPShareAccessRequest);
            objc_storeStrong(a1 + 30, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_225358FB4(v33, a2, v56))
            {
              goto LABEL_219;
            }

            break;
          case 220:
            v33 = objc_alloc_init(CKDPQueryRetrieveRequest);
            objc_storeStrong(a1 + 19, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_225313FAC(v33, a2, v51))
            {
              goto LABEL_219;
            }

            break;
          case 222:
            v33 = objc_alloc_init(CKDPMergeableDeltaSaveRequest);
            objc_storeStrong(a1 + 16, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !CKDPMergeableDeltaSaveRequestReadFrom(v33, a2, v49))
            {
              goto LABEL_219;
            }

            break;
          case 223:
            v33 = objc_alloc_init(CKDPMergeableDeltaMetadataRetrieveRequest);
            objc_storeStrong(a1 + 13, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_2252FD68C(v33, a2, v58))
            {
              goto LABEL_219;
            }

            break;
          case 224:
            v33 = objc_alloc_init(CKDPMergeableDeltaReplaceRequest);
            objc_storeStrong(a1 + 14, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_2252FED90(v33, a2, v55))
            {
              goto LABEL_219;
            }

            break;
          case 225:
            v33 = objc_alloc_init(CKDPMergeableDeltaRetrieveRequest);
            objc_storeStrong(a1 + 15, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_225300050(v33, a2, v52))
            {
              goto LABEL_219;
            }

            break;
          case 230:
            v33 = objc_alloc_init(CKDPAssetUploadTokenRetrieveRequest);
            objc_storeStrong(a1 + 6, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_2252E05F8(v33, a2, v72))
            {
              goto LABEL_219;
            }

            break;
          case 240:
            v33 = objc_alloc_init(CKDPDeleteContainerRequest);
            objc_storeStrong(a1 + 8, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v69))
            {
              goto LABEL_219;
            }

            break;
          case 243:
            v33 = objc_alloc_init(CKDPUserAvailableQuotaRequest);
            objc_storeStrong(a1 + 40, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v71))
            {
              goto LABEL_219;
            }

            break;
          case 244:
            v33 = objc_alloc_init(CKDPBundlesForContainerRequest);
            objc_storeStrong(a1 + 7, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_225098BF8(v33, a2, v50))
            {
              goto LABEL_219;
            }

            break;
          case 250:
            v33 = objc_alloc_init(CKDPWebAuthTokenRetrieveRequest);
            objc_storeStrong(a1 + 47, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_2253803F0(v33, a2, v70))
            {
              goto LABEL_219;
            }

            break;
          case 260:
            v33 = objc_alloc_init(CKDPUpdateMissingAssetStatusRequest);
            objc_storeStrong(a1 + 39, v33);
            v94 = 0;
            v95 = 0;
            if (!PBReaderPlaceMark() || !sub_225376B78(v33, a2, v48))
            {
              goto LABEL_219;
            }

            break;
          default:
            if (v32 == 1)
            {
              v33 = objc_alloc_init(CKDPRequestOperationHeader);
              objc_storeStrong(a1 + 11, v33);
              v94 = 0;
              v95 = 0;
              if (!PBReaderPlaceMark() || !CKDPRequestOperationHeaderReadFrom(v33, a2, v89))
              {
                goto LABEL_219;
              }
            }

            else
            {
              if (v32 != 2)
              {
                goto LABEL_89;
              }

              v33 = objc_alloc_init(CKDPOperation);
              objc_storeStrong(a1 + 27, v33);
              v94 = 0;
              v95 = 0;
              if (!PBReaderPlaceMark() || !CKDPOperationReadFrom(v33, a2, v43))
              {
                goto LABEL_219;
              }
            }

            break;
        }
      }

      PBReaderRecallMark();

LABEL_217:
      v90 = objc_msgSend_position(a2, v46, v47);
    }

    while (v90 < objc_msgSend_length(a2, v91, v92));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRequestOperationHeaderReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  while (2)
  {
    if (v5 >= objc_msgSend_length(a2, v6, v7) || (objc_msgSend_hasError(a2, v8, v9) & 1) != 0)
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      LOBYTE(v250) = 0;
      v13 = objc_msgSend_position(a2, v8, v9, v250) + 1;
      if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
      {
        v21 = objc_msgSend_data(a2, v16, v17);
        v24 = objc_msgSend_position(a2, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v250, v24, 1);

        v28 = objc_msgSend_position(a2, v26, v27);
        objc_msgSend_setPosition_(a2, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v16, v17);
      }

      v12 |= (v250 & 0x7F) << v10;
      if ((v250 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      v30 = v11++ >= 9;
      if (v30)
      {
        v31 = 0;
        goto LABEL_16;
      }
    }

    v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_16:
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v9 = v31 & 7;
    if (v9 == 4)
    {
      return objc_msgSend_hasError(a2, v8, v9) ^ 1;
    }

    v32 = (v31 >> 3);
    switch((v31 >> 3))
    {
      case 1u:
        v33 = PBReaderReadString();
        v34 = 240;
        goto LABEL_142;
      case 2u:
        v33 = PBReaderReadString();
        v34 = 56;
        goto LABEL_142;
      case 3u:
        v33 = PBReaderReadString();
        v34 = 48;
        goto LABEL_142;
      case 4u:
        v33 = PBReaderReadString();
        v34 = 72;
        goto LABEL_142;
      case 5u:
        v204 = 0;
        v205 = 0;
        v206 = 0;
        *(a1 + 252) |= 1u;
        while (1)
        {
          LOBYTE(v250) = 0;
          v207 = objc_msgSend_position(a2, v32, v9, v250) + 1;
          if (v207 >= objc_msgSend_position(a2, v208, v209) && (v212 = objc_msgSend_position(a2, v210, v211) + 1, v212 <= objc_msgSend_length(a2, v213, v214)))
          {
            v215 = objc_msgSend_data(a2, v210, v211);
            v218 = objc_msgSend_position(a2, v216, v217);
            objc_msgSend_getBytes_range_(v215, v219, &v250, v218, 1);

            v222 = objc_msgSend_position(a2, v220, v221);
            objc_msgSend_setPosition_(a2, v223, v222 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v210, v211);
          }

          v206 |= (v250 & 0x7F) << v204;
          if ((v250 & 0x80) == 0)
          {
            break;
          }

          v204 += 7;
          v30 = v205++ >= 9;
          if (v30)
          {
            v79 = 0;
            goto LABEL_178;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v79 = 0;
        }

        else
        {
          v79 = v206;
        }

LABEL_178:
        v247 = 8;
        goto LABEL_179;
      case 6u:
        v104 = 0;
        v105 = 0;
        v106 = 0;
        *(a1 + 252) |= 4u;
        while (1)
        {
          LOBYTE(v250) = 0;
          v107 = objc_msgSend_position(a2, v32, v9, v250) + 1;
          if (v107 >= objc_msgSend_position(a2, v108, v109) && (v112 = objc_msgSend_position(a2, v110, v111) + 1, v112 <= objc_msgSend_length(a2, v113, v114)))
          {
            v115 = objc_msgSend_data(a2, v110, v111);
            v118 = objc_msgSend_position(a2, v116, v117);
            objc_msgSend_getBytes_range_(v115, v119, &v250, v118, 1);

            v122 = objc_msgSend_position(a2, v120, v121);
            objc_msgSend_setPosition_(a2, v123, v122 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v110, v111);
          }

          v106 |= (v250 & 0x7F) << v104;
          if ((v250 & 0x80) == 0)
          {
            break;
          }

          v104 += 7;
          v30 = v105++ >= 9;
          if (v30)
          {
            v79 = 0;
            goto LABEL_159;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v79 = 0;
        }

        else
        {
          v79 = v106;
        }

LABEL_159:
        v247 = 24;
        goto LABEL_179;
      case 7u:
        v56 = objc_alloc_init(MEMORY[0x277CBC250]);
        objc_storeStrong((a1 + 120), v56);
        v250 = 0;
        v251 = 0;
        if (PBReaderPlaceMark() && CKDPIdentifierReadFrom())
        {
          goto LABEL_96;
        }

        goto LABEL_186;
      case 8u:
        v33 = PBReaderReadString();
        v34 = 152;
        goto LABEL_142;
      case 9u:
        v33 = PBReaderReadString();
        v34 = 112;
        goto LABEL_142;
      case 0xAu:
        v33 = PBReaderReadString();
        v34 = 128;
        goto LABEL_142;
      case 0xBu:
        v33 = PBReaderReadString();
        v34 = 136;
        goto LABEL_142;
      case 0x10u:
        v124 = 0;
        v125 = 0;
        v126 = 0;
        *(a1 + 252) |= 2u;
        while (1)
        {
          LOBYTE(v250) = 0;
          v127 = objc_msgSend_position(a2, v32, v9, v250) + 1;
          if (v127 >= objc_msgSend_position(a2, v128, v129) && (v132 = objc_msgSend_position(a2, v130, v131) + 1, v132 <= objc_msgSend_length(a2, v133, v134)))
          {
            v135 = objc_msgSend_data(a2, v130, v131);
            v138 = objc_msgSend_position(a2, v136, v137);
            objc_msgSend_getBytes_range_(v135, v139, &v250, v138, 1);

            v142 = objc_msgSend_position(a2, v140, v141);
            objc_msgSend_setPosition_(a2, v143, v142 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v130, v131);
          }

          v126 |= (v250 & 0x7F) << v124;
          if ((v250 & 0x80) == 0)
          {
            break;
          }

          v124 += 7;
          v30 = v125++ >= 9;
          if (v30)
          {
            v79 = 0;
            goto LABEL_163;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v79 = 0;
        }

        else
        {
          v79 = v126;
        }

LABEL_163:
        v247 = 16;
        goto LABEL_179;
      case 0x11u:
        v56 = objc_alloc_init(CKDPLocale);
        objc_storeStrong((a1 + 176), v56);
        v250 = 0;
        v251 = 0;
        if (!PBReaderPlaceMark() || !sub_2252F81F8(v56, a2, v80))
        {
          goto LABEL_186;
        }

        goto LABEL_96;
      case 0x12u:
        v33 = PBReaderReadString();
        v34 = 184;
        goto LABEL_142;
      case 0x13u:
        v164 = 0;
        v165 = 0;
        v166 = 0;
        *(a1 + 252) |= 0x10u;
        while (1)
        {
          LOBYTE(v250) = 0;
          v167 = objc_msgSend_position(a2, v32, v9, v250) + 1;
          if (v167 >= objc_msgSend_position(a2, v168, v169) && (v172 = objc_msgSend_position(a2, v170, v171) + 1, v172 <= objc_msgSend_length(a2, v173, v174)))
          {
            v175 = objc_msgSend_data(a2, v170, v171);
            v178 = objc_msgSend_position(a2, v176, v177);
            objc_msgSend_getBytes_range_(v175, v179, &v250, v178, 1);

            v182 = objc_msgSend_position(a2, v180, v181);
            objc_msgSend_setPosition_(a2, v183, v182 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v170, v171);
          }

          v166 |= (v250 & 0x7F) << v164;
          if ((v250 & 0x80) == 0)
          {
            break;
          }

          v164 += 7;
          v30 = v165++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_170;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v166;
        }

LABEL_170:
        v246 = 64;
        goto LABEL_184;
      case 0x14u:
        v33 = PBReaderReadData();
        v34 = 88;
        goto LABEL_142;
      case 0x15u:
        v33 = PBReaderReadString();
        v34 = 96;
        goto LABEL_142;
      case 0x16u:
        v33 = PBReaderReadString();
        v34 = 104;
        goto LABEL_142;
      case 0x17u:
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 252) |= 0x80u;
        while (1)
        {
          LOBYTE(v250) = 0;
          v38 = objc_msgSend_position(a2, v32, v9, v250) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v250, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v250 & 0x7F) << v35;
          if ((v250 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_149;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v37;
        }

LABEL_149:
        v246 = 224;
        goto LABEL_184;
      case 0x18u:
        v33 = PBReaderReadString();
        v34 = 232;
        goto LABEL_142;
      case 0x19u:
        v224 = 0;
        v225 = 0;
        v226 = 0;
        *(a1 + 252) |= 0x20u;
        while (1)
        {
          LOBYTE(v250) = 0;
          v227 = objc_msgSend_position(a2, v32, v9, v250) + 1;
          if (v227 >= objc_msgSend_position(a2, v228, v229) && (v232 = objc_msgSend_position(a2, v230, v231) + 1, v232 <= objc_msgSend_length(a2, v233, v234)))
          {
            v235 = objc_msgSend_data(a2, v230, v231);
            v238 = objc_msgSend_position(a2, v236, v237);
            objc_msgSend_getBytes_range_(v235, v239, &v250, v238, 1);

            v242 = objc_msgSend_position(a2, v240, v241);
            objc_msgSend_setPosition_(a2, v243, v242 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v230, v231);
          }

          v226 |= (v250 & 0x7F) << v224;
          if ((v250 & 0x80) == 0)
          {
            break;
          }

          v224 += 7;
          v30 = v225++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_183;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v226;
        }

LABEL_183:
        v246 = 168;
        goto LABEL_184;
      case 0x1Au:
        v33 = PBReaderReadString();
        v34 = 192;
        goto LABEL_142;
      case 0x1Bu:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 252) |= 8u;
        while (1)
        {
          LOBYTE(v250) = 0;
          v62 = objc_msgSend_position(a2, v32, v9, v250) + 1;
          if (v62 >= objc_msgSend_position(a2, v63, v64) && (v67 = objc_msgSend_position(a2, v65, v66) + 1, v67 <= objc_msgSend_length(a2, v68, v69)))
          {
            v70 = objc_msgSend_data(a2, v65, v66);
            v73 = objc_msgSend_position(a2, v71, v72);
            objc_msgSend_getBytes_range_(v70, v74, &v250, v73, 1);

            v77 = objc_msgSend_position(a2, v75, v76);
            objc_msgSend_setPosition_(a2, v78, v77 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v65, v66);
          }

          v61 |= (v250 & 0x7F) << v59;
          if ((v250 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v30 = v60++ >= 9;
          if (v30)
          {
            v79 = 0;
            goto LABEL_153;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v79 = 0;
        }

        else
        {
          v79 = v61;
        }

LABEL_153:
        v247 = 32;
LABEL_179:
        *(a1 + v247) = v79;
        goto LABEL_143;
      case 0x1Cu:
        v56 = PBReaderReadData();
        if (v56)
        {
          objc_msgSend_addServiceIdentityKeyIDs_(a1, v58, v56);
        }

        goto LABEL_97;
      case 0x1Du:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        *(a1 + 252) |= 0x100u;
        while (1)
        {
          LOBYTE(v250) = 0;
          v147 = objc_msgSend_position(a2, v32, v9, v250) + 1;
          if (v147 >= objc_msgSend_position(a2, v148, v149) && (v152 = objc_msgSend_position(a2, v150, v151) + 1, v152 <= objc_msgSend_length(a2, v153, v154)))
          {
            v155 = objc_msgSend_data(a2, v150, v151);
            v158 = objc_msgSend_position(a2, v156, v157);
            objc_msgSend_getBytes_range_(v155, v159, &v250, v158, 1);

            v162 = objc_msgSend_position(a2, v160, v161);
            objc_msgSend_setPosition_(a2, v163, v162 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v150, v151);
          }

          v146 |= (v250 & 0x7F) << v144;
          if ((v250 & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v30 = v145++ >= 9;
          if (v30)
          {
            LOBYTE(v101) = 0;
            goto LABEL_165;
          }
        }

        v101 = (v146 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_165:
        v248 = 248;
        goto LABEL_166;
      case 0x1Eu:
        v56 = objc_alloc_init(CKDPRequestOperationHeaderAssetAuthorizeGetRequestOptions);
        objc_storeStrong((a1 + 80), v56);
        v250 = 0;
        v251 = 0;
        if (!PBReaderPlaceMark() || !CKDPRequestOperationHeaderAssetAuthorizeGetRequestOptionsReadFrom(v56, a2, v57))
        {
          goto LABEL_186;
        }

        goto LABEL_96;
      case 0x1Fu:
        v56 = PBReaderReadString();
        if (v56)
        {
          objc_msgSend_addActiveThrottlingLabel_(a1, v245, v56);
        }

        goto LABEL_97;
      case 0x20u:
        v33 = PBReaderReadString();
        v34 = 160;
        goto LABEL_142;
      case 0x21u:
        v33 = PBReaderReadString();
        v34 = 144;
LABEL_142:
        v244 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_143;
      case 0x22u:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        *(a1 + 252) |= 0x200u;
        while (1)
        {
          LOBYTE(v250) = 0;
          v84 = objc_msgSend_position(a2, v32, v9, v250) + 1;
          if (v84 >= objc_msgSend_position(a2, v85, v86) && (v89 = objc_msgSend_position(a2, v87, v88) + 1, v89 <= objc_msgSend_length(a2, v90, v91)))
          {
            v92 = objc_msgSend_data(a2, v87, v88);
            v95 = objc_msgSend_position(a2, v93, v94);
            objc_msgSend_getBytes_range_(v92, v96, &v250, v95, 1);

            v99 = objc_msgSend_position(a2, v97, v98);
            objc_msgSend_setPosition_(a2, v100, v99 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v87, v88);
          }

          v83 |= (v250 & 0x7F) << v81;
          if ((v250 & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v30 = v82++ >= 9;
          if (v30)
          {
            LOBYTE(v101) = 0;
            goto LABEL_155;
          }
        }

        v101 = (v83 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_155:
        v248 = 249;
LABEL_166:
        *(a1 + v248) = v101;
        goto LABEL_143;
      case 0x23u:
        v184 = 0;
        v185 = 0;
        v186 = 0;
        *(a1 + 252) |= 0x40u;
        while (1)
        {
          LOBYTE(v250) = 0;
          v187 = objc_msgSend_position(a2, v32, v9, v250) + 1;
          if (v187 >= objc_msgSend_position(a2, v188, v189) && (v192 = objc_msgSend_position(a2, v190, v191) + 1, v192 <= objc_msgSend_length(a2, v193, v194)))
          {
            v195 = objc_msgSend_data(a2, v190, v191);
            v198 = objc_msgSend_position(a2, v196, v197);
            objc_msgSend_getBytes_range_(v195, v199, &v250, v198, 1);

            v202 = objc_msgSend_position(a2, v200, v201);
            objc_msgSend_setPosition_(a2, v203, v202 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v190, v191);
          }

          v186 |= (v250 & 0x7F) << v184;
          if ((v250 & 0x80) == 0)
          {
            break;
          }

          v184 += 7;
          v30 = v185++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_174;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v186;
        }

LABEL_174:
        v246 = 200;
LABEL_184:
        *(a1 + v246) = v55;
        goto LABEL_143;
      case 0x24u:
        v56 = objc_alloc_init(CKDPRequestOperationHeaderSupplementalZoneInfo);
        objc_msgSend_addSupplementalZoneInfos_(a1, v102, v56);
        v250 = 0;
        v251 = 0;
        if (PBReaderPlaceMark() && CKDPRequestOperationHeaderSupplementalZoneInfoReadFrom(v56, a2, v103))
        {
LABEL_96:
          PBReaderRecallMark();
LABEL_97:

LABEL_143:
          v5 = objc_msgSend_position(a2, v32, v9);
          continue;
        }

LABEL_186:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_143;
    }
  }
}

uint64_t CKDPRequestOperationHeaderAssetAuthorizeGetRequestOptionsReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v61[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v61[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v61, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v61[0] & 0x7F) << v10;
        if ((v61[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v39 = objc_msgSend_position(a2, v32, v9, v61[0]) + 1;
          if (v39 >= objc_msgSend_position(a2, v40, v41) && (v44 = objc_msgSend_position(a2, v42, v43) + 1, v44 <= objc_msgSend_length(a2, v45, v46)))
          {
            v47 = objc_msgSend_data(a2, v42, v43);
            v50 = objc_msgSend_position(a2, v48, v49);
            objc_msgSend_getBytes_range_(v47, v51, v61, v50, 1);

            v54 = objc_msgSend_position(a2, v52, v53);
            objc_msgSend_setPosition_(a2, v55, v54 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v42, v43);
          }

          v38 |= (v61[0] & 0x7F) << v36;
          if ((v61[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v30 = v37++ >= 9;
          if (v30)
          {
            v56 = 0;
            goto LABEL_36;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v56 = 0;
        }

        else
        {
          v56 = v38;
        }

LABEL_36:
        *(a1 + 8) = v56;
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPRequestOperationHeaderAssetAuthorizeGetRequestOptionsHeaderInfo);
        objc_msgSend_addContentRequestHeaders_(a1, v34, v33);
        v61[0] = 0;
        v61[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRequestOperationHeaderAssetAuthorizeGetRequestOptionsHeaderInfoReadFrom(v33, a2, v35))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRequestOperationHeaderAssetAuthorizeGetRequestOptionsHeaderInfoReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 1)
      {
        break;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = &OBJC_IVAR___CKDPRequestOperationHeaderAssetAuthorizeGetRequestOptionsHeaderInfo__headerValue;
LABEL_21:
        v33 = PBReaderReadString();
        v34 = *v32;
        v35 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = &OBJC_IVAR___CKDPRequestOperationHeaderAssetAuthorizeGetRequestOptionsHeaderInfo__headerKey;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRequestOperationHeaderSupplementalZoneInfoReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(MEMORY[0x277CBC278]);
        objc_storeStrong((a1 + 16), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
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
      v36 = objc_msgSend_position(a2, v34, v35);
      if (v36 >= objc_msgSend_length(a2, v37, v38))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = PBReaderReadData();
    v32 = *(a1 + 8);
    *(a1 + 8) = v33;
LABEL_23:

    goto LABEL_25;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPRequestOperationHeaderZoneAndShareUsageInfoReadFrom(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v42[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v42[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42[0] & 0x7F) << v10;
        if ((v42[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = objc_alloc_init(CKDPSignedVersionedBlob);
        objc_msgSend_addShareUsage_(a1, v34, v32);
      }

      else
      {
        if ((v31 >> 3) != 1)
        {
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_25;
        }

        v32 = objc_alloc_init(CKDPSignedVersionedBlob);
        objc_msgSend_addZoneUsage_(a1, v33, v32);
      }

      v42[0] = 0;
      v42[1] = 0;
      if (!PBReaderPlaceMark() || !sub_225360D24(v32, a2, v35))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_25:
      v38 = objc_msgSend_position(a2, v36, v37);
    }

    while (v38 < objc_msgSend_length(a2, v39, v40));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2253498B4(char *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v44[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v44[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v44, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v44[0] & 0x7F) << v10;
        if ((v44[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) == 3)
      {
        break;
      }

      if (v32 == 2)
      {
        v33 = PBReaderReadData();
        v34 = 8;
LABEL_22:
        v35 = *&a1[v34];
        *&a1[v34] = v33;
LABEL_26:

        goto LABEL_28;
      }

      if (v32 == 1)
      {
        v33 = PBReaderReadString();
        v34 = 24;
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v40 = objc_msgSend_position(a2, v38, v39);
      if (v40 >= objc_msgSend_length(a2, v41, v42))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v35 = objc_alloc_init(CKDPResponseOperationHeaderAssetAuthorizationResponseHeaderInfo);
    objc_msgSend_addResponseHeaders_(a1, v36, v35);
    v44[0] = 0;
    v44[1] = 0;
    if (!PBReaderPlaceMark() || !sub_22534A2E4(v35, a2, v37))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22534A2E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 1)
      {
        break;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = &OBJC_IVAR___CKDPResponseOperationHeaderAssetAuthorizationResponseHeaderInfo__headerValue;
LABEL_21:
        v33 = PBReaderReadString();
        v34 = *v32;
        v35 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = &OBJC_IVAR___CKDPResponseOperationHeaderAssetAuthorizationResponseHeaderInfo__headerKey;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPResponseOperationResultErrorReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v66) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v66) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v66, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v66 & 0x7F) << v10;
        if ((v66 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 4)
      {
        if (v32 > 6)
        {
          if (v32 == 7)
          {
            v33 = objc_alloc_init(CKDPResponseOperationResultErrorExtension);
            objc_storeStrong((a1 + 48), v33);
            v66 = 0;
            v67 = 0;
            if (!PBReaderPlaceMark() || !CKDPResponseOperationResultErrorExtensionReadFrom(v33, a2, v61))
            {
LABEL_61:

              return 0;
            }

            goto LABEL_52;
          }

          if (v32 == 8)
          {
            v33 = objc_alloc_init(CKDPResponseOperationResultErrorAuxiliaryError);
            objc_storeStrong((a1 + 8), v33);
            v66 = 0;
            v67 = 0;
            if (!PBReaderPlaceMark() || !CKDPResponseOperationResultErrorAuxiliaryErrorReadFrom(v33, a2, v37))
            {
              goto LABEL_61;
            }

            goto LABEL_52;
          }
        }

        else
        {
          if (v32 == 5)
          {
            v35 = PBReaderReadString();
            v36 = 40;
            goto LABEL_40;
          }

          if (v32 == 6)
          {
            v35 = PBReaderReadString();
            v36 = 32;
LABEL_40:
            v39 = *(a1 + v36);
            *(a1 + v36) = v35;

            goto LABEL_59;
          }
        }
      }

      else if (v32 > 2)
      {
        if (v32 == 3)
        {
          v40 = 0;
          v41 = 0;
          v42 = 0;
          *(a1 + 72) |= 1u;
          while (1)
          {
            LOBYTE(v66) = 0;
            v43 = objc_msgSend_position(a2, v32, v9, v66) + 1;
            if (v43 >= objc_msgSend_position(a2, v44, v45) && (v48 = objc_msgSend_position(a2, v46, v47) + 1, v48 <= objc_msgSend_length(a2, v49, v50)))
            {
              v51 = objc_msgSend_data(a2, v46, v47);
              v54 = objc_msgSend_position(a2, v52, v53);
              objc_msgSend_getBytes_range_(v51, v55, &v66, v54, 1);

              v58 = objc_msgSend_position(a2, v56, v57);
              objc_msgSend_setPosition_(a2, v59, v58 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v46, v47);
            }

            v42 |= (v66 & 0x7F) << v40;
            if ((v66 & 0x80) == 0)
            {
              break;
            }

            v40 += 7;
            v30 = v41++ >= 9;
            if (v30)
            {
              v60 = 0;
              goto LABEL_58;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v60 = 0;
          }

          else
          {
            v60 = v42;
          }

LABEL_58:
          *(a1 + 56) = v60;
          goto LABEL_59;
        }

        if (v32 == 4)
        {
          v35 = PBReaderReadString();
          v36 = 24;
          goto LABEL_40;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = objc_alloc_init(CKDPResponseOperationResultErrorClient);
          objc_storeStrong((a1 + 16), v33);
          v66 = 0;
          v67 = 0;
          if (!PBReaderPlaceMark() || !CKDPResponseOperationResultErrorClientReadFrom(v33, a2, v38))
          {
            goto LABEL_61;
          }

          goto LABEL_52;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(CKDPResponseOperationResultErrorServer);
          objc_storeStrong((a1 + 64), v33);
          v66 = 0;
          v67 = 0;
          if (!PBReaderPlaceMark() || !CKDPResponseOperationResultErrorServerReadFrom(v33, a2, v34))
          {
            goto LABEL_61;
          }

LABEL_52:
          PBReaderRecallMark();

          goto LABEL_59;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_59:
      v62 = objc_msgSend_position(a2, v32, v9);
    }

    while (v62 < objc_msgSend_length(a2, v63, v64));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPResponseOperationResultErrorAuxiliaryErrorReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v63[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v63[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v63, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v63[0] & 0x7F) << v10;
        if ((v63[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        v56 = objc_alloc_init(CKDPResponseOperationResultErrorAuxiliaryErrorErrorUserInfoEntry);
        objc_msgSend_addUserInfo_(a1, v57, v56);
        v63[0] = 0;
        v63[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPResponseOperationResultErrorAuxiliaryErrorErrorUserInfoEntryReadFrom(v56, a2, v58))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v32 == 2)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 32) |= 1u;
        while (1)
        {
          LOBYTE(v63[0]) = 0;
          v38 = objc_msgSend_position(a2, v32, v9, v63[0]) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, v63, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v63[0] & 0x7F) << v35;
          if ((v63[0] & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_38;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v37;
        }

LABEL_38:
        *(a1 + 8) = v55;
      }

      else if (v32 == 1)
      {
        v33 = PBReaderReadString();
        v34 = *(a1 + 16);
        *(a1 + 16) = v33;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v59 = objc_msgSend_position(a2, v32, v9);
    }

    while (v59 < objc_msgSend_length(a2, v60, v61));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPResponseOperationResultErrorAuxiliaryErrorErrorUserInfoEntryReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPResponseOperationResultErrorAuxiliaryErrorErrorUserInfoValue);
    objc_storeStrong((a1 + 16), v33);
    v41[0] = 0;
    v41[1] = 0;
    if (!PBReaderPlaceMark() || !CKDPResponseOperationResultErrorAuxiliaryErrorErrorUserInfoValueReadFrom(v33, a2, v34))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPResponseOperationResultErrorAuxiliaryErrorErrorUserInfoValueReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v121 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v121, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v121 & 0x7F) << v10;
        if ((v121 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          objc_msgSend_clearOneofValuesForValue(a1, v32, v9);
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 48) |= 4u;
          *(a1 + 40) = 3;
          *(a1 + 48) |= 8u;
          while (1)
          {
            v124 = 0;
            v78 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v78 >= objc_msgSend_position(a2, v79, v80) && (v83 = objc_msgSend_position(a2, v81, v82) + 1, v83 <= objc_msgSend_length(a2, v84, v85)))
            {
              v86 = objc_msgSend_data(a2, v81, v82);
              v89 = objc_msgSend_position(a2, v87, v88);
              objc_msgSend_getBytes_range_(v86, v90, &v124, v89, 1);

              v93 = objc_msgSend_position(a2, v91, v92);
              objc_msgSend_setPosition_(a2, v94, v93 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v81, v82);
            }

            v77 |= (v124 & 0x7F) << v75;
            if ((v124 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v30 = v76++ >= 9;
            if (v30)
            {
              LOBYTE(v95) = 0;
              goto LABEL_61;
            }
          }

          v95 = (v77 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_61:
          *(a1 + 44) = v95;
        }

        else
        {
          if (v32 == 4)
          {
            objc_msgSend_clearOneofValuesForValue(a1, v32, v9);
            *(a1 + 48) |= 4u;
            *(a1 + 40) = 4;
            v54 = PBReaderReadString();
            v55 = 32;
          }

          else
          {
            if (v32 != 5)
            {
LABEL_52:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_68;
            }

            objc_msgSend_clearOneofValuesForValue(a1, v32, v9);
            *(a1 + 48) |= 4u;
            *(a1 + 40) = 5;
            v54 = PBReaderReadData();
            v55 = 24;
          }

          v107 = *(a1 + v55);
          *(a1 + v55) = v54;
        }
      }

      else if (v32)
      {
        if (v32 == 1)
        {
          objc_msgSend_clearOneofValuesForValue(a1, v32, v9);
          *(a1 + 48) |= 4u;
          *(a1 + 40) = 1;
          *(a1 + 48) |= 1u;
          v120 = 0;
          v99 = objc_msgSend_position(a2, v97, v98) + 8;
          if (v99 >= objc_msgSend_position(a2, v100, v101) && (v104 = objc_msgSend_position(a2, v102, v103) + 8, v104 <= objc_msgSend_length(a2, v105, v106)))
          {
            v108 = objc_msgSend_data(a2, v102, v103);
            v111 = objc_msgSend_position(a2, v109, v110);
            objc_msgSend_getBytes_range_(v108, v112, &v120, v111, 8);

            v115 = objc_msgSend_position(a2, v113, v114);
            objc_msgSend_setPosition_(a2, v116, v115 + 8);
          }

          else
          {
            objc_msgSend__setError(a2, v102, v103);
          }

          *(a1 + 8) = v120;
        }

        else
        {
          if (v32 != 2)
          {
            goto LABEL_52;
          }

          objc_msgSend_clearOneofValuesForValue(a1, v32, v9);
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 48) |= 4u;
          *(a1 + 40) = 2;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v123 = 0;
            v36 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v123, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v123 & 0x7F) << v33;
            if ((v123 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_65;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v35;
          }

LABEL_65:
          *(a1 + 16) = v53;
        }
      }

      else
      {
        v56 = 0;
        while (1)
        {
          v122 = 0;
          v57 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
          {
            v65 = objc_msgSend_data(a2, v60, v61);
            v68 = objc_msgSend_position(a2, v66, v67);
            objc_msgSend_getBytes_range_(v65, v69, &v122, v68, 1);

            v72 = objc_msgSend_position(a2, v70, v71);
            objc_msgSend_setPosition_(a2, v73, v72 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v60, v61);
          }

          if ((v122 & 0x80000000) == 0)
          {
            break;
          }

          if (v56++ > 8)
          {
            goto LABEL_68;
          }
        }

        objc_msgSend_hasError(a2, v32, v9);
      }

LABEL_68:
      v117 = objc_msgSend_position(a2, v32, v9);
    }

    while (v117 < objc_msgSend_length(a2, v118, v119));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPResponseOperationResultErrorClientReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v62) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v62) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v62, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v62 & 0x7F) << v10;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 100)
      {
        if (v32 == 101)
        {
          v33 = objc_alloc_init(CKDPUniqueFieldFailure);
          objc_storeStrong((a1 + 32), v33);
          v62 = 0;
          v63 = 0;
          if (!PBReaderPlaceMark() || !sub_2253761F0(v33, a2, v57))
          {
LABEL_48:

            return 0;
          }

          goto LABEL_41;
        }

        if (v32 == 102)
        {
          v33 = objc_alloc_init(CKDPMoveOplockFailure);
          objc_storeStrong((a1 + 8), v33);
          v62 = 0;
          v63 = 0;
          if (!PBReaderPlaceMark() || !sub_225302904(v33, a2, v35))
          {
            goto LABEL_48;
          }

          goto LABEL_41;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v39 = objc_msgSend_position(a2, v32, v9, v62) + 1;
            if (v39 >= objc_msgSend_position(a2, v40, v41) && (v44 = objc_msgSend_position(a2, v42, v43) + 1, v44 <= objc_msgSend_length(a2, v45, v46)))
            {
              v47 = objc_msgSend_data(a2, v42, v43);
              v50 = objc_msgSend_position(a2, v48, v49);
              objc_msgSend_getBytes_range_(v47, v51, &v62, v50, 1);

              v54 = objc_msgSend_position(a2, v52, v53);
              objc_msgSend_setPosition_(a2, v55, v54 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v42, v43);
            }

            v38 |= (v62 & 0x7F) << v36;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v30 = v37++ >= 9;
            if (v30)
            {
              v56 = 0;
              goto LABEL_45;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v56 = 0;
          }

          else
          {
            v56 = v38;
          }

LABEL_45:
          *(a1 + 24) = v56;
          goto LABEL_46;
        }

        if (v32 == 100)
        {
          v33 = objc_alloc_init(CKDPOplockFailure);
          objc_storeStrong((a1 + 16), v33);
          v62 = 0;
          v63 = 0;
          if (!PBReaderPlaceMark() || !sub_225308BF0(v33, a2, v34))
          {
            goto LABEL_48;
          }

LABEL_41:
          PBReaderRecallMark();

          goto LABEL_46;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_46:
      v58 = objc_msgSend_position(a2, v32, v9);
    }

    while (v58 < objc_msgSend_length(a2, v59, v60));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPResponseOperationResultErrorExtensionReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v61 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v61, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v61 & 0x7F) << v10;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 3)
      {
        v33 = PBReaderReadData();
        v34 = 16;
      }

      else
      {
        if (v32 == 2)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            v62 = 0;
            v38 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
            {
              v46 = objc_msgSend_data(a2, v41, v42);
              v49 = objc_msgSend_position(a2, v47, v48);
              objc_msgSend_getBytes_range_(v46, v50, &v62, v49, 1);

              v53 = objc_msgSend_position(a2, v51, v52);
              objc_msgSend_setPosition_(a2, v54, v53 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v41, v42);
            }

            v37 |= (v62 & 0x7F) << v35;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v30 = v36++ >= 9;
            if (v30)
            {
              v55 = 0;
              goto LABEL_37;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v55 = 0;
          }

          else
          {
            v55 = v37;
          }

LABEL_37:
          *(a1 + 24) = v55;
          goto LABEL_38;
        }

        if (v32 != 1)
        {
          result = PBReaderSkipValueWithTag();
          if (!result)
          {
            return result;
          }

          goto LABEL_38;
        }

        v33 = PBReaderReadString();
        v34 = 8;
      }

      v56 = *(a1 + v34);
      *(a1 + v34) = v33;

LABEL_38:
      v58 = objc_msgSend_position(a2, v32, v9);
    }

    while (v58 < objc_msgSend_length(a2, v59, v60));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t CKDPResponseOperationResultErrorServerReadFrom(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v58 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v58, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v58 & 0x7F) << v10;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v59 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v59, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v59 & 0x7F) << v33;
          if ((v59 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_32;
          }
        }

        v53 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v35;
LABEL_32:
        *(a1 + 8) = v53;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v55 = objc_msgSend_position(a2, v32, v9);
    }

    while (v55 < objc_msgSend_length(a2, v56, v57));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22535265C()
{
  v0 = qword_280D55088;
  qword_280D55088 = &unk_2838C96D8;
}

uint64_t sub_2253528A8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v79 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v79, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v79 & 0x7F) << v10;
        if ((v79 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v54 = 0;
        v55 = 0;
        v56 = 0;
        *(a1 + 16) |= 2u;
        while (1)
        {
          v81 = 0;
          v57 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
          {
            v65 = objc_msgSend_data(a2, v60, v61);
            v68 = objc_msgSend_position(a2, v66, v67);
            objc_msgSend_getBytes_range_(v65, v69, &v81, v68, 1);

            v72 = objc_msgSend_position(a2, v70, v71);
            objc_msgSend_setPosition_(a2, v73, v72 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v60, v61);
          }

          v56 |= (v81 & 0x7F) << v54;
          if ((v81 & 0x80) == 0)
          {
            break;
          }

          v54 += 7;
          v30 = v55++ >= 9;
          if (v30)
          {
            LOBYTE(v74) = 0;
            goto LABEL_44;
          }
        }

        v74 = (v56 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_44:
        *(a1 + 12) = v74;
      }

      else if (v32 == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 16) |= 1u;
        while (1)
        {
          v80 = 0;
          v36 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, &v80, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v80 & 0x7F) << v33;
          if ((v80 & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_42;
          }
        }

        v53 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v35;
LABEL_42:
        *(a1 + 8) = v53;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v76 = objc_msgSend_position(a2, v32, v9);
    }

    while (v76 < objc_msgSend_length(a2, v77, v78));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}