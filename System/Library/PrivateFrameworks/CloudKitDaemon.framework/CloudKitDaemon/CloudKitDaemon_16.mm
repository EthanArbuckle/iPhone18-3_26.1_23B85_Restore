uint64_t sub_225388C28(uint64_t a1, void *a2, uint64_t a3)
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

void sub_2253890D8()
{
  v0 = qword_280D55118;
  qword_280D55118 = &unk_2838C9A48;
}

uint64_t sub_2253892CC(uint64_t a1, void *a2, uint64_t a3)
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
        LOBYTE(v59[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v59[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v59, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v59[0] & 0x7F) << v10;
        if ((v59[0] & 0x80) == 0)
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
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v59[0]) = 0;
          v37 = objc_msgSend_position(a2, v32, v9, v59[0]) + 1;
          if (v37 >= objc_msgSend_position(a2, v38, v39) && (v42 = objc_msgSend_position(a2, v40, v41) + 1, v42 <= objc_msgSend_length(a2, v43, v44)))
          {
            v45 = objc_msgSend_data(a2, v40, v41);
            v48 = objc_msgSend_position(a2, v46, v47);
            objc_msgSend_getBytes_range_(v45, v49, v59, v48, 1);

            v52 = objc_msgSend_position(a2, v50, v51);
            objc_msgSend_setPosition_(a2, v53, v52 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v40, v41);
          }

          v36 |= (v59[0] & 0x7F) << v34;
          if ((v59[0] & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v30 = v35++ >= 9;
          if (v30)
          {
            LOBYTE(v54) = 0;
            goto LABEL_34;
          }
        }

        v54 = (v36 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_34:
        *(a1 + 16) = v54;
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(MEMORY[0x277CBC278]);
        objc_storeStrong((a1 + 8), v33);
        v59[0] = 0;
        v59[1] = 0;
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

      v55 = objc_msgSend_position(a2, v32, v9);
    }

    while (v55 < objc_msgSend_length(a2, v56, v57));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225389C94(void *a1, void *a2, uint64_t a3)
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
        v32 = objc_alloc_init(CKDPZoneRetrieveAncestorsResponseZoneAncestor);
        objc_msgSend_addAncestors_(a1, v33, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !sub_22538A4CC(v32, a2, v34))
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

uint64_t sub_22538A4CC(uint64_t a1, void *a2, uint64_t a3)
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
        LOBYTE(v41) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41 & 0x7F) << v10;
        if ((v41 & 0x80) == 0)
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
        v32 = objc_alloc_init(CKDPZoneRetrieveResponseZoneSummary);
        objc_storeStrong((a1 + 16), v32);
        v41 = 0;
        v42 = 0;
        if (!PBReaderPlaceMark() || !sub_22538F79C(v32, a2, v33))
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
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = objc_alloc_init(CKDPRecord);
    objc_storeStrong((a1 + 8), v32);
    v41 = 0;
    v42 = 0;
    if (!PBReaderPlaceMark() || !CKDPRecordReadFrom(v32, a2, v34))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22538AAE8()
{
  v0 = qword_280D55128;
  qword_280D55128 = &unk_2838C9A70;
}

uint64_t sub_22538ACC0(uint64_t a1, void *a2, uint64_t a3)
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
        *(a1 + 24) |= 1u;
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
        *(a1 + 8) = v55;
      }

      else if (v32 == 1)
      {
        v33 = PBReaderReadData();
        v34 = *(a1 + 16);
        *(a1 + 16) = v33;
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

uint64_t sub_22538C520(uint64_t a1, void *a2, uint64_t a3)
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
        LOBYTE(v104) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v104) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v104, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v104 & 0x7F) << v10;
        if ((v104 & 0x80) == 0)
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
      if ((v31 >> 3) <= 3)
      {
        switch(v32)
        {
          case 1:
            v75 = objc_alloc_init(MEMORY[0x277CBC278]);
            v76 = 32;
LABEL_46:
            objc_storeStrong((a1 + v76), v75);
            v104 = 0;
            v105 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
            {
              goto LABEL_79;
            }

LABEL_56:
            PBReaderRecallMark();

            goto LABEL_77;
          case 2:
            v79 = 0;
            v80 = 0;
            v81 = 0;
            *(a1 + 52) |= 1u;
            while (1)
            {
              LOBYTE(v104) = 0;
              v82 = objc_msgSend_position(a2, v32, v9, v104) + 1;
              if (v82 >= objc_msgSend_position(a2, v83, v84) && (v87 = objc_msgSend_position(a2, v85, v86) + 1, v87 <= objc_msgSend_length(a2, v88, v89)))
              {
                v90 = objc_msgSend_data(a2, v85, v86);
                v93 = objc_msgSend_position(a2, v91, v92);
                objc_msgSend_getBytes_range_(v90, v94, &v104, v93, 1);

                v97 = objc_msgSend_position(a2, v95, v96);
                objc_msgSend_setPosition_(a2, v98, v97 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v85, v86);
              }

              v81 |= (v104 & 0x7F) << v79;
              if ((v104 & 0x80) == 0)
              {
                break;
              }

              v79 += 7;
              v30 = v80++ >= 9;
              if (v30)
              {
                v74 = 0;
                goto LABEL_75;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v74 = 0;
            }

            else
            {
              v74 = v81;
            }

LABEL_75:
            v99 = 24;
            goto LABEL_76;
          case 3:
            v54 = 0;
            v55 = 0;
            v56 = 0;
            *(a1 + 52) |= 2u;
            while (1)
            {
              LOBYTE(v104) = 0;
              v57 = objc_msgSend_position(a2, v32, v9, v104) + 1;
              if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
              {
                v65 = objc_msgSend_data(a2, v60, v61);
                v68 = objc_msgSend_position(a2, v66, v67);
                objc_msgSend_getBytes_range_(v65, v69, &v104, v68, 1);

                v72 = objc_msgSend_position(a2, v70, v71);
                objc_msgSend_setPosition_(a2, v73, v72 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v60, v61);
              }

              v56 |= (v104 & 0x7F) << v54;
              if ((v104 & 0x80) == 0)
              {
                break;
              }

              v54 += 7;
              v30 = v55++ >= 9;
              if (v30)
              {
                v74 = 0;
                goto LABEL_71;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v74 = 0;
            }

            else
            {
              v74 = v56;
            }

LABEL_71:
            v99 = 28;
LABEL_76:
            *(a1 + v99) = v74;
            goto LABEL_77;
        }
      }

      else if (v32 > 5)
      {
        if (v32 == 6)
        {
          v75 = objc_alloc_init(CKDPAnonymousZoneInfo);
          objc_storeStrong((a1 + 8), v75);
          v104 = 0;
          v105 = 0;
          if (!PBReaderPlaceMark() || !sub_2252DC8D4(v75, a2, v78))
          {
LABEL_79:

            return 0;
          }

          goto LABEL_56;
        }

        if (v32 == 7)
        {
          v75 = objc_alloc_init(MEMORY[0x277CBC278]);
          v76 = 40;
          goto LABEL_46;
        }
      }

      else
      {
        if (v32 == 4)
        {
          v75 = objc_alloc_init(CKDPZoneCapabilities);
          objc_storeStrong((a1 + 16), v75);
          v104 = 0;
          v105 = 0;
          if (!PBReaderPlaceMark() || !sub_225383170(v75, a2, v77))
          {
            goto LABEL_79;
          }

          goto LABEL_56;
        }

        if (v32 == 5)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 52) |= 4u;
          while (1)
          {
            LOBYTE(v104) = 0;
            v36 = objc_msgSend_position(a2, v32, v9, v104) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v104, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v104 & 0x7F) << v33;
            if ((v104 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              LOBYTE(v53) = 0;
              goto LABEL_67;
            }
          }

          v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_67:
          *(a1 + 48) = v53;
          goto LABEL_77;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_77:
      v100 = objc_msgSend_position(a2, v32, v9);
    }

    while (v100 < objc_msgSend_length(a2, v101, v102));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_22538D408()
{
  v0 = qword_280D55138;
  qword_280D55138 = &unk_2838C9A98;
}

uint64_t sub_22538D6D8(uint64_t a1, void *a2, uint64_t a3)
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
        LOBYTE(v82[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v82[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v82, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v82[0] & 0x7F) << v10;
        if ((v82[0] & 0x80) == 0)
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
        break;
      }

      if (v32 != 1)
      {
        if (v32 == 2)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 28) |= 1u;
          while (1)
          {
            LOBYTE(v82[0]) = 0;
            v36 = objc_msgSend_position(a2, v32, v9, v82[0]) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, v82, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v82[0] & 0x7F) << v33;
            if ((v82[0] & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              LOBYTE(v53) = 0;
              goto LABEL_47;
            }
          }

          v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_47:
          v77 = 24;
LABEL_50:
          *(a1 + v77) = v53;
          goto LABEL_51;
        }

LABEL_40:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_51;
      }

      v74 = objc_alloc_init(MEMORY[0x277CBC278]);
      objc_storeStrong((a1 + 16), v74);
      v82[0] = 0;
      v82[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_51:
      v78 = objc_msgSend_position(a2, v32, v9);
      if (v78 >= objc_msgSend_length(a2, v79, v80))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 == 3)
    {
      v75 = PBReaderReadData();
      v76 = *(a1 + 8);
      *(a1 + 8) = v75;

      goto LABEL_51;
    }

    if (v32 == 4)
    {
      v54 = 0;
      v55 = 0;
      v56 = 0;
      *(a1 + 28) |= 2u;
      while (1)
      {
        LOBYTE(v82[0]) = 0;
        v57 = objc_msgSend_position(a2, v32, v9, v82[0]) + 1;
        if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
        {
          v65 = objc_msgSend_data(a2, v60, v61);
          v68 = objc_msgSend_position(a2, v66, v67);
          objc_msgSend_getBytes_range_(v65, v69, v82, v68, 1);

          v72 = objc_msgSend_position(a2, v70, v71);
          objc_msgSend_setPosition_(a2, v73, v72 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v60, v61);
        }

        v56 |= (v82[0] & 0x7F) << v54;
        if ((v82[0] & 0x80) == 0)
        {
          break;
        }

        v54 += 7;
        v30 = v55++ >= 9;
        if (v30)
        {
          LOBYTE(v53) = 0;
          goto LABEL_49;
        }
      }

      v53 = (v56 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_49:
      v77 = 25;
      goto LABEL_50;
    }

    goto LABEL_40;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22538E5FC(void *a1, void *a2, uint64_t a3)
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
      if ((v31 >> 3) == 3)
      {
        break;
      }

      if (v32 == 2)
      {
        v36 = PBReaderReadData();
        v33 = a1[2];
        a1[2] = v36;
        goto LABEL_27;
      }

      if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPZoneRetrieveResponseZoneSummary);
        objc_msgSend_addZoneSummary_(a1, v34, v33);
        v45 = 0;
        v46 = 0;
        if (!PBReaderPlaceMark() || !sub_22538F79C(v33, a2, v35))
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v41 = objc_msgSend_position(a2, v39, v40);
      if (v41 >= objc_msgSend_length(a2, v42, v43))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPAnonymousZoneInfo);
    objc_msgSend_addAnonymousZoneInfo_(a1, v37, v33);
    v45 = 0;
    v46 = 0;
    if (!PBReaderPlaceMark() || !sub_2252DC8D4(v33, a2, v38))
    {
LABEL_31:

      return 0;
    }

LABEL_26:
    PBReaderRecallMark();
LABEL_27:

    goto LABEL_29;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_22538F79C(uint64_t a1, void *a2, uint64_t a3)
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
      LOBYTE(v169) = 0;
      v13 = objc_msgSend_position(a2, v8, v9, v169) + 1;
      if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
      {
        v21 = objc_msgSend_data(a2, v16, v17);
        v24 = objc_msgSend_position(a2, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v169, v24, 1);

        v28 = objc_msgSend_position(a2, v26, v27);
        objc_msgSend_setPosition_(a2, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v16, v17);
      }

      v12 |= (v169 & 0x7F) << v10;
      if ((v169 & 0x80) == 0)
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
        v33 = objc_alloc_init(CKDPZone);
        objc_storeStrong((a1 + 64), v33);
        v169 = 0;
        v170 = 0;
        if (PBReaderPlaceMark() && sub_22538168C(v33, a2, v34))
        {
          goto LABEL_79;
        }

        goto LABEL_111;
      case 2u:
        v35 = PBReaderReadData();
        v36 = 40;
        goto LABEL_63;
      case 3u:
        v35 = PBReaderReadData();
        v36 = 32;
        goto LABEL_63;
      case 4u:
        v100 = 0;
        v101 = 0;
        v102 = 0;
        *(a1 + 92) |= 4u;
        while (1)
        {
          LOBYTE(v169) = 0;
          v103 = objc_msgSend_position(a2, v32, v9, v169) + 1;
          if (v103 >= objc_msgSend_position(a2, v104, v105) && (v108 = objc_msgSend_position(a2, v106, v107) + 1, v108 <= objc_msgSend_length(a2, v109, v110)))
          {
            v111 = objc_msgSend_data(a2, v106, v107);
            v114 = objc_msgSend_position(a2, v112, v113);
            objc_msgSend_getBytes_range_(v111, v115, &v169, v114, 1);

            v118 = objc_msgSend_position(a2, v116, v117);
            objc_msgSend_setPosition_(a2, v119, v118 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v106, v107);
          }

          v102 |= (v169 & 0x7F) << v100;
          if ((v169 & 0x80) == 0)
          {
            break;
          }

          v100 += 7;
          v30 = v101++ >= 9;
          if (v30)
          {
            v120 = 0;
            goto LABEL_103;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v120 = 0;
        }

        else
        {
          v120 = v102;
        }

LABEL_103:
        *(a1 + 48) = v120;
        goto LABEL_109;
      case 5u:
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 92) |= 1u;
        while (1)
        {
          LOBYTE(v169) = 0;
          v40 = objc_msgSend_position(a2, v32, v9, v169) + 1;
          if (v40 >= objc_msgSend_position(a2, v41, v42) && (v45 = objc_msgSend_position(a2, v43, v44) + 1, v45 <= objc_msgSend_length(a2, v46, v47)))
          {
            v48 = objc_msgSend_data(a2, v43, v44);
            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_getBytes_range_(v48, v52, &v169, v51, 1);

            v55 = objc_msgSend_position(a2, v53, v54);
            objc_msgSend_setPosition_(a2, v56, v55 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v43, v44);
          }

          v39 |= (v169 & 0x7F) << v37;
          if ((v169 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v30 = v38++ >= 9;
          if (v30)
          {
            v57 = 0;
            goto LABEL_92;
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

LABEL_92:
        v163 = 8;
        goto LABEL_97;
      case 6u:
        v59 = 0;
        v60 = 0;
        v61 = 0;
        *(a1 + 92) |= 2u;
        while (1)
        {
          LOBYTE(v169) = 0;
          v62 = objc_msgSend_position(a2, v32, v9, v169) + 1;
          if (v62 >= objc_msgSend_position(a2, v63, v64) && (v67 = objc_msgSend_position(a2, v65, v66) + 1, v67 <= objc_msgSend_length(a2, v68, v69)))
          {
            v70 = objc_msgSend_data(a2, v65, v66);
            v73 = objc_msgSend_position(a2, v71, v72);
            objc_msgSend_getBytes_range_(v70, v74, &v169, v73, 1);

            v77 = objc_msgSend_position(a2, v75, v76);
            objc_msgSend_setPosition_(a2, v78, v77 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v65, v66);
          }

          v61 |= (v169 & 0x7F) << v59;
          if ((v169 & 0x80) == 0)
          {
            break;
          }

          v59 += 7;
          v30 = v60++ >= 9;
          if (v30)
          {
            v57 = 0;
            goto LABEL_96;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v57 = 0;
        }

        else
        {
          v57 = v61;
        }

LABEL_96:
        v163 = 16;
LABEL_97:
        *(a1 + v163) = v57;
        goto LABEL_109;
      case 7u:
        v33 = objc_alloc_init(CKDPZoneCapabilities);
        objc_storeStrong((a1 + 24), v33);
        v169 = 0;
        v170 = 0;
        if (!PBReaderPlaceMark() || !sub_225383170(v33, a2, v122))
        {
          goto LABEL_111;
        }

        goto LABEL_79;
      case 8u:
        v123 = 0;
        v124 = 0;
        v125 = 0;
        *(a1 + 92) |= 0x20u;
        while (1)
        {
          LOBYTE(v169) = 0;
          v126 = objc_msgSend_position(a2, v32, v9, v169) + 1;
          if (v126 >= objc_msgSend_position(a2, v127, v128) && (v131 = objc_msgSend_position(a2, v129, v130) + 1, v131 <= objc_msgSend_length(a2, v132, v133)))
          {
            v134 = objc_msgSend_data(a2, v129, v130);
            v137 = objc_msgSend_position(a2, v135, v136);
            objc_msgSend_getBytes_range_(v134, v138, &v169, v137, 1);

            v141 = objc_msgSend_position(a2, v139, v140);
            objc_msgSend_setPosition_(a2, v142, v141 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v129, v130);
          }

          v125 |= (v169 & 0x7F) << v123;
          if ((v169 & 0x80) == 0)
          {
            break;
          }

          v123 += 7;
          v30 = v124++ >= 9;
          if (v30)
          {
            LOBYTE(v99) = 0;
            goto LABEL_105;
          }
        }

        v99 = (v125 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_105:
        v164 = 90;
        goto LABEL_108;
      case 9u:
        v143 = 0;
        v144 = 0;
        v145 = 0;
        *(a1 + 92) |= 0x10u;
        while (1)
        {
          LOBYTE(v169) = 0;
          v146 = objc_msgSend_position(a2, v32, v9, v169) + 1;
          if (v146 >= objc_msgSend_position(a2, v147, v148) && (v151 = objc_msgSend_position(a2, v149, v150) + 1, v151 <= objc_msgSend_length(a2, v152, v153)))
          {
            v154 = objc_msgSend_data(a2, v149, v150);
            v157 = objc_msgSend_position(a2, v155, v156);
            objc_msgSend_getBytes_range_(v154, v158, &v169, v157, 1);

            v161 = objc_msgSend_position(a2, v159, v160);
            objc_msgSend_setPosition_(a2, v162, v161 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v149, v150);
          }

          v145 |= (v169 & 0x7F) << v143;
          if ((v169 & 0x80) == 0)
          {
            break;
          }

          v143 += 7;
          v30 = v144++ >= 9;
          if (v30)
          {
            LOBYTE(v99) = 0;
            goto LABEL_107;
          }
        }

        v99 = (v145 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_107:
        v164 = 89;
        goto LABEL_108;
      case 0xAu:
        v33 = objc_alloc_init(MEMORY[0x277CBC240]);
        v58 = 80;
        goto LABEL_77;
      case 0xBu:
        v35 = PBReaderReadString();
        v36 = 72;
LABEL_63:
        v121 = *(a1 + v36);
        *(a1 + v36) = v35;

        goto LABEL_109;
      case 0xDu:
        v79 = 0;
        v80 = 0;
        v81 = 0;
        *(a1 + 92) |= 8u;
        while (1)
        {
          LOBYTE(v169) = 0;
          v82 = objc_msgSend_position(a2, v32, v9, v169) + 1;
          if (v82 >= objc_msgSend_position(a2, v83, v84) && (v87 = objc_msgSend_position(a2, v85, v86) + 1, v87 <= objc_msgSend_length(a2, v88, v89)))
          {
            v90 = objc_msgSend_data(a2, v85, v86);
            v93 = objc_msgSend_position(a2, v91, v92);
            objc_msgSend_getBytes_range_(v90, v94, &v169, v93, 1);

            v97 = objc_msgSend_position(a2, v95, v96);
            objc_msgSend_setPosition_(a2, v98, v97 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v85, v86);
          }

          v81 |= (v169 & 0x7F) << v79;
          if ((v169 & 0x80) == 0)
          {
            break;
          }

          v79 += 7;
          v30 = v80++ >= 9;
          if (v30)
          {
            LOBYTE(v99) = 0;
            goto LABEL_99;
          }
        }

        v99 = (v81 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_99:
        v164 = 88;
LABEL_108:
        *(a1 + v164) = v99;
        goto LABEL_109;
      case 0xEu:
        v33 = objc_alloc_init(MEMORY[0x277CBC240]);
        v58 = 56;
LABEL_77:
        objc_storeStrong((a1 + v58), v33);
        v169 = 0;
        v170 = 0;
        if (PBReaderPlaceMark() && CKDPDateReadFrom())
        {
LABEL_79:
          PBReaderRecallMark();

LABEL_109:
          v165 = objc_msgSend_position(a2, v32, v9);
          if (v165 >= objc_msgSend_length(a2, v166, v167))
          {
            return objc_msgSend_hasError(a2, v8, v9) ^ 1;
          }

          continue;
        }

LABEL_111:

        return 0;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_109;
    }
  }
}

void sub_225390FA8()
{
  v0 = qword_280D55148;
  qword_280D55148 = &unk_2838C9AC0;
}

uint64_t sub_2253911D0(uint64_t a1, void *a2, uint64_t a3)
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
      if ((v31 >> 3) > 3)
      {
        if (v32 == 4)
        {
          v34 = objc_alloc_init(CKDPAncestryEtag);
          v35 = 8;
LABEL_30:
          objc_storeStrong((a1 + v35), v34);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !sub_2252D9FA4(v34, a2, v39))
          {
LABEL_36:

            return 0;
          }

LABEL_32:
          PBReaderRecallMark();
LABEL_33:

          goto LABEL_34;
        }

        if (v32 == 5)
        {
          v34 = objc_alloc_init(CKDPAncestryEtag);
          v35 = 16;
          goto LABEL_30;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v34 = objc_alloc_init(CKDPZone);
          objc_storeStrong((a1 + 24), v34);
          v44 = 0;
          v45 = 0;
          if (!PBReaderPlaceMark() || !sub_22538168C(v34, a2, v38))
          {
            goto LABEL_36;
          }

          goto LABEL_32;
        }

        if (v32 == 3)
        {
          v33 = PBReaderReadString();
          v34 = *(a1 + 32);
          *(a1 + 32) = v33;
          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_34:
      v40 = objc_msgSend_position(a2, v36, v37);
    }

    while (v40 < objc_msgSend_length(a2, v41, v42));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225391C78(uint64_t a1, void *a2, uint64_t a3)
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
      if ((v31 >> 3) > 3)
      {
        if (v32 == 4)
        {
          v56 = objc_alloc_init(MEMORY[0x277CBC240]);
          objc_storeStrong((a1 + 24), v56);
          v62 = 0;
          v63 = 0;
          if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
          {
LABEL_44:

            return 0;
          }

          goto LABEL_39;
        }

        if (v32 == 5)
        {
          v54 = PBReaderReadString();
          v55 = *(a1 + 16);
          *(a1 + 16) = v54;

          goto LABEL_42;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v56 = objc_alloc_init(CKDPZoneCapabilities);
          objc_storeStrong((a1 + 8), v56);
          v62 = 0;
          v63 = 0;
          if (!PBReaderPlaceMark() || !sub_225383170(v56, a2, v57))
          {
            goto LABEL_44;
          }

LABEL_39:
          PBReaderRecallMark();

          goto LABEL_42;
        }

        if (v32 == 3)
        {
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            LOBYTE(v62) = 0;
            v36 = objc_msgSend_position(a2, v32, v9, v62) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v62, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v62 & 0x7F) << v33;
            if ((v62 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              LOBYTE(v53) = 0;
              goto LABEL_41;
            }
          }

          v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_41:
          *(a1 + 32) = v53;
          goto LABEL_42;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_42:
      v58 = objc_msgSend_position(a2, v32, v9);
    }

    while (v58 < objc_msgSend_length(a2, v59, v60));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_225392808(uint64_t a1, void *a2, uint64_t a3)
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
        v54 = PBReaderReadData();
        v55 = 8;
      }

      else
      {
        if (v32 != 2)
        {
          if (v32 == 1)
          {
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 28) |= 1u;
            while (1)
            {
              v62 = 0;
              v36 = objc_msgSend_position(a2, v32, v9) + 1;
              if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
              {
                v44 = objc_msgSend_data(a2, v39, v40);
                v47 = objc_msgSend_position(a2, v45, v46);
                objc_msgSend_getBytes_range_(v44, v48, &v62, v47, 1);

                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_setPosition_(a2, v52, v51 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v39, v40);
              }

              v35 |= (v62 & 0x7F) << v33;
              if ((v62 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v30 = v34++ >= 9;
              if (v30)
              {
                v53 = 0;
                goto LABEL_37;
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

LABEL_37:
            *(a1 + 24) = v53;
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

        v54 = PBReaderReadData();
        v55 = 16;
      }

      v56 = *(a1 + v55);
      *(a1 + v55) = v54;

LABEL_38:
      v58 = objc_msgSend_position(a2, v32, v9);
    }

    while (v58 < objc_msgSend_length(a2, v59, v60));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225393D60()
{
  v0 = qword_280D58548;
  qword_280D58548 = &unk_2838C9AE8;
}

uint64_t sub_225393EB0(uint64_t a1, void *a2, uint64_t a3)
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
        v32 = objc_alloc_init(CKDPSignedVersionedBlob);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225360D24(v32, a2, v33))
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

uint64_t sub_225394710(uint64_t a1, void *a2, uint64_t a3)
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
        LOBYTE(v59[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v59[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v59, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v59[0] & 0x7F) << v10;
        if ((v59[0] & 0x80) == 0)
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
        v34 = 0;
        v35 = 0;
        v36 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v59[0]) = 0;
          v37 = objc_msgSend_position(a2, v32, v9, v59[0]) + 1;
          if (v37 >= objc_msgSend_position(a2, v38, v39) && (v42 = objc_msgSend_position(a2, v40, v41) + 1, v42 <= objc_msgSend_length(a2, v43, v44)))
          {
            v45 = objc_msgSend_data(a2, v40, v41);
            v48 = objc_msgSend_position(a2, v46, v47);
            objc_msgSend_getBytes_range_(v45, v49, v59, v48, 1);

            v52 = objc_msgSend_position(a2, v50, v51);
            objc_msgSend_setPosition_(a2, v53, v52 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v40, v41);
          }

          v36 |= (v59[0] & 0x7F) << v34;
          if ((v59[0] & 0x80) == 0)
          {
            break;
          }

          v34 += 7;
          v30 = v35++ >= 9;
          if (v30)
          {
            v54 = 0;
            goto LABEL_36;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v54 = 0;
        }

        else
        {
          v54 = v36;
        }

LABEL_36:
        *(a1 + 8) = v54;
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(MEMORY[0x277CBC278]);
        objc_storeStrong((a1 + 16), v33);
        v59[0] = 0;
        v59[1] = 0;
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

      v55 = objc_msgSend_position(a2, v32, v9);
    }

    while (v55 < objc_msgSend_length(a2, v56, v57));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_225395498(uint64_t a1, const char *a2)
{
  v9[8] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBBFF8];
  v9[0] = *MEMORY[0x277CBC030];
  v9[1] = v2;
  v3 = *MEMORY[0x277CBBFF0];
  v9[2] = *MEMORY[0x277CBC008];
  v9[3] = v3;
  v4 = *MEMORY[0x277CBC000];
  v9[4] = *MEMORY[0x277CBC010];
  v9[5] = v4;
  v5 = *MEMORY[0x277CBC028];
  v9[6] = *MEMORY[0x277CBC048];
  v9[7] = v5;
  v6 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v9, 8);
  v7 = qword_280D58558;
  qword_280D58558 = v6;

  v8 = *MEMORY[0x277D85DE8];
}

void sub_225395578(uint64_t a1, const char *a2)
{
  v12[7] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CBC030];
  v11[0] = @"recordID";
  v11[1] = @"creationDate";
  v3 = *MEMORY[0x277CBBFF0];
  v12[0] = v2;
  v12[1] = v3;
  v4 = *MEMORY[0x277CBC010];
  v11[2] = @"modificationDate";
  v11[3] = @"creatorUserRecordID";
  v5 = *MEMORY[0x277CBBFF8];
  v12[2] = v4;
  v12[3] = v5;
  v6 = *MEMORY[0x277CBC008];
  v11[4] = @"lastModifiedUserRecordID";
  v11[5] = @"recordChangeTag";
  v7 = *MEMORY[0x277CBC000];
  v12[4] = v6;
  v12[5] = v7;
  v11[6] = @"shareID";
  v12[6] = *MEMORY[0x277CBC048];
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v12, v11, 7);
  v9 = qword_280D58568;
  qword_280D58568 = v8;

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t sub_225395698(unsigned int a1)
{
  if (a1 >= 3)
  {
    v4 = objc_alloc(MEMORY[0x277CBC360]);
    v6 = objc_msgSend_initWithCode_format_(v4, v5, 12, @"Unexpected reference type", v1, v2);
    objc_exception_throw(v6);
  }

  return 2 - a1;
}

uint64_t sub_2253956DC(int a1)
{
  v3 = a1 - 1;
  if ((a1 - 1) >= 0x10 || ((0x80F7u >> v3) & 1) == 0)
  {
    v5 = objc_alloc(MEMORY[0x277CBC360]);
    v7 = objc_msgSend_initWithCode_format_(v5, v6, 12, @"Unexpected filter type", v1, v2);
    objc_exception_throw(v7);
  }

  return qword_225447E60[v3];
}

void *sub_225395734(void *a1, void *a2)
{
  v234 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  if (objc_msgSend_hasError(v4, v6, v7))
  {
    v10 = objc_msgSend_error(v4, v8, v9);
    hasErrorKey = objc_msgSend_hasErrorKey(v10, v11, v12);

    if (hasErrorKey)
    {
      v16 = objc_msgSend_error(v4, v14, v15);
      v19 = objc_msgSend_errorKey(v16, v17, v18);
      objc_msgSend_setObject_forKeyedSubscript_(v5, v20, v19, @"errorKey");
    }

    v21 = objc_msgSend_error(v4, v14, v15);
    hasErrorDescription = objc_msgSend_hasErrorDescription(v21, v22, v23);

    if (hasErrorDescription)
    {
      v27 = objc_msgSend_error(v4, v25, v26);
      v30 = objc_msgSend_errorDescription(v27, v28, v29);
      objc_msgSend_setObject_forKeyedSubscript_(v5, v31, v30, *MEMORY[0x277CCA450]);

      v34 = objc_msgSend_error(v4, v32, v33);
      v37 = objc_msgSend_errorDescription(v34, v35, v36);
      objc_msgSend_setObject_forKeyedSubscript_(v5, v38, v37, *MEMORY[0x277CBBF70]);
    }

    v39 = objc_msgSend_error(v4, v25, v26);
    hasRetryAfterSeconds = objc_msgSend_hasRetryAfterSeconds(v39, v40, v41);

    if (hasRetryAfterSeconds)
    {
      v45 = MEMORY[0x277CCABB0];
      v46 = objc_msgSend_error(v4, v43, v44);
      v49 = objc_msgSend_retryAfterSeconds(v46, v47, v48);
      v51 = objc_msgSend_numberWithInt_(v45, v50, v49);
      objc_msgSend_setObject_forKeyedSubscript_(v5, v52, v51, *MEMORY[0x277CBBF68]);
    }

    v53 = objc_msgSend_error(v4, v43, v44);
    if (objc_msgSend_hasExtensionError(v53, v54, v55))
    {
      v58 = objc_msgSend_error(v4, v56, v57);
      v61 = objc_msgSend_extensionError(v58, v59, v60);
      hasTypeCode = objc_msgSend_hasTypeCode(v61, v62, v63);

      if (hasTypeCode)
      {
        v67 = objc_opt_new();
        v70 = objc_msgSend_error(v4, v68, v69);
        v73 = objc_msgSend_extensionError(v70, v71, v72);
        v76 = objc_msgSend_extensionName(v73, v74, v75);

        if (!objc_msgSend_length(v76, v77, v78))
        {

          v76 = @"CKPluginUnknownDomain";
        }

        v81 = objc_msgSend_error(v4, v79, v80);
        v84 = objc_msgSend_errorDescription(v81, v82, v83);

        if (!objc_msgSend_length(v84, v85, v86))
        {

          v84 = @"Error, details unknown";
        }

        objc_msgSend_setObject_forKeyedSubscript_(v67, v87, v84, *MEMORY[0x277CBBF70]);
        objc_msgSend_setObject_forKeyedSubscript_(v67, v88, v84, *MEMORY[0x277CCA450]);
        v91 = objc_msgSend_error(v4, v89, v90);
        v94 = objc_msgSend_extensionError(v91, v92, v93);
        hasExtensionPayload = objc_msgSend_hasExtensionPayload(v94, v95, v96);

        if (hasExtensionPayload)
        {
          v100 = objc_msgSend_error(v4, v98, v99);
          v103 = objc_msgSend_extensionError(v100, v101, v102);
          v106 = objc_msgSend_extensionPayload(v103, v104, v105);
          objc_msgSend_setObject_forKeyedSubscript_(v67, v107, v106, *MEMORY[0x277CBBF80]);
        }

        v108 = MEMORY[0x277CCA9B8];
        v109 = objc_msgSend_error(v4, v98, v99);
        v112 = objc_msgSend_extensionError(v109, v110, v111);
        v115 = objc_msgSend_typeCode(v112, v113, v114);
        v117 = objc_msgSend_errorWithDomain_code_userInfo_(v108, v116, v76, v115, v67);

        objc_msgSend_setObject_forKeyedSubscript_(v5, v118, v117, *MEMORY[0x277CCA7E8]);
        objc_msgSend_setObject_forKeyedSubscript_(v5, v119, v117, *MEMORY[0x277CBC130]);

        goto LABEL_17;
      }
    }

    else
    {
    }

    v120 = objc_msgSend_error(v4, v65, v66);
    hasAuxiliaryError = objc_msgSend_hasAuxiliaryError(v120, v121, v122);

    if (hasAuxiliaryError)
    {
      v124 = objc_msgSend_error(v4, v8, v9);
      v67 = objc_msgSend_auxiliaryError(v124, v125, v126);

      if (objc_msgSend_hasDomain(v67, v127, v128))
      {
        v76 = objc_msgSend_domain(v67, v129, v130);
        if (!objc_msgSend_length(v76, v131, v132) || (objc_msgSend_hasCode(v67, v133, v134) & 1) == 0)
        {
          goto LABEL_18;
        }

        v137 = objc_msgSend_code(v67, v135, v136);

        if (v137)
        {
          if (!objc_msgSend_userInfosCount(v67, v138, v139))
          {
            v76 = 0;
            goto LABEL_63;
          }

          v142 = objc_alloc(MEMORY[0x277CBEB38]);
          v145 = objc_msgSend_userInfosCount(v67, v143, v144);
          v227 = v67;
          v228 = objc_msgSend_initWithCapacity_(v142, v146, v145);
          v229 = 0u;
          v230 = 0u;
          v231 = 0u;
          v232 = 0u;
          v149 = objc_msgSend_userInfos(v67, v147, v148);
          v151 = objc_msgSend_countByEnumeratingWithState_objects_count_(v149, v150, &v229, v233, 16);
          if (!v151)
          {
            goto LABEL_48;
          }

          v154 = v151;
          v155 = *v230;
          while (1)
          {
            for (i = 0; i != v154; ++i)
            {
              if (*v230 != v155)
              {
                objc_enumerationMutation(v149);
              }

              v157 = *(*(&v229 + 1) + 8 * i);
              if (objc_msgSend_hasKey(v157, v152, v153))
              {
                v158 = objc_msgSend_key(v157, v152, v153);
                if (objc_msgSend_length(v158, v159, v160))
                {
                  hasValue = objc_msgSend_hasValue(v157, v161, v162);

                  if (!hasValue)
                  {
                    continue;
                  }

                  v158 = objc_msgSend_value(v157, v152, v153);
                  if (objc_msgSend_hasDoubleValue(v158, v164, v165))
                  {
                    v168 = MEMORY[0x277CCABB0];
                    objc_msgSend_doubleValue(v158, v166, v167);
                    v171 = objc_msgSend_numberWithDouble_(v168, v169, v170);
                    goto LABEL_44;
                  }

                  if (objc_msgSend_hasInt64Value(v158, v166, v167))
                  {
                    v176 = MEMORY[0x277CCABB0];
                    v177 = objc_msgSend_int64Value(v158, v174, v175);
                    v171 = objc_msgSend_numberWithInteger_(v176, v178, v177);
                    goto LABEL_44;
                  }

                  if (objc_msgSend_hasBoolValue(v158, v174, v175))
                  {
                    v181 = MEMORY[0x277CCABB0];
                    v182 = objc_msgSend_BOOLValue(v158, v179, v180);
                    v171 = objc_msgSend_numberWithBool_(v181, v183, v182);
                    goto LABEL_44;
                  }

                  if (objc_msgSend_hasStringValue(v158, v179, v180))
                  {
                    v171 = objc_msgSend_stringValue(v158, v184, v185);
                    goto LABEL_44;
                  }

                  if (objc_msgSend_hasBytesValue(v158, v184, v185))
                  {
                    v171 = objc_msgSend_bytesValue(v158, v186, v187);
LABEL_44:
                    v188 = v171;
                    v189 = objc_msgSend_key(v157, v172, v173);
                    objc_msgSend_setObject_forKeyedSubscript_(v228, v190, v188, v189);
                  }
                }

                continue;
              }
            }

            v154 = objc_msgSend_countByEnumeratingWithState_objects_count_(v149, v152, &v229, v233, 16);
            if (!v154)
            {
LABEL_48:

              v76 = v228;
              if (!objc_msgSend_count(v228, v191, v192))
              {

                v76 = 0;
              }

              v67 = v227;
LABEL_63:
              v219 = MEMORY[0x277CCA9B8];
              v220 = objc_msgSend_domain(v67, v140, v141);
              v223 = objc_msgSend_code(v67, v221, v222);
              v84 = objc_msgSend_errorWithDomain_code_userInfo_(v219, v224, v220, v223, v76);

              objc_msgSend_setObject_forKeyedSubscript_(v5, v225, v84, *MEMORY[0x277CCA7E8]);
              objc_msgSend_setObject_forKeyedSubscript_(v5, v226, v84, *MEMORY[0x277CBC130]);
LABEL_17:

LABEL_18:
              break;
            }
          }
        }
      }
    }
  }

  v193 = objc_msgSend_requestUUID(v3, v8, v9);

  if (v193)
  {
    v196 = objc_msgSend_requestUUID(v3, v194, v195);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v197, v196, *MEMORY[0x277CBC078]);
  }

  v198 = objc_msgSend_operation(v3, v194, v195);
  v201 = objc_msgSend_topmostParentOperation(v198, v199, v200);
  v204 = objc_msgSend_operationID(v201, v202, v203);

  if (v204)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v5, v205, v204, *MEMORY[0x277CBBF60]);
  }

  v207 = objc_msgSend_container(v3, v205, v206);
  v210 = objc_msgSend_containerID(v207, v208, v209);

  if (v210)
  {
    v213 = objc_msgSend_containerIdentifier(v210, v211, v212);
    objc_msgSend_setObject_forKeyedSubscript_(v5, v214, v213, *MEMORY[0x277CBBF18]);
  }

  if (objc_msgSend_count(v5, v211, v212))
  {
    v215 = v5;
  }

  else
  {
    v215 = 0;
  }

  v216 = v215;

  v217 = *MEMORY[0x277D85DE8];
  return v215;
}

uint64_t sub_225395F68(int a1)
{
  result = 1000;
  if (a1 > 8)
  {
    if (a1 > 200002)
    {
      if ((a1 - 200004) < 2)
      {
        return 2022;
      }

      if (a1 != 200003)
      {
        return result;
      }

      return 2000;
    }

    if (a1 == 9)
    {
      return 2023;
    }

    if (a1 == 200001)
    {
      return 1014;
    }

    if (a1 != 200002)
    {
      return result;
    }

    return 2002;
  }

  if (a1 <= 3)
  {
    if (a1 == 1)
    {
      return 2000;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        return 2003;
      }

      return result;
    }

    return 2002;
  }

  if (a1 > 6)
  {
    v3 = 2030;
    if (a1 != 8)
    {
      v3 = 1000;
    }

    if (a1 == 7)
    {
      return 2029;
    }

    else
    {
      return v3;
    }
  }

  if (a1 == 4)
  {
    return 2031;
  }

  if (a1 == 6)
  {
    return 2000;
  }

  return result;
}

uint64_t sub_225396064(int a1)
{
  v1 = 1000;
  v2 = a1 - 1;
  result = 2017;
  switch(v2)
  {
    case 0:
    case 12:
    case 13:
      return 2005;
    case 1:
      return 2013;
    case 2:
      return 2014;
    case 3:
      return 2006;
    case 4:
      return 2007;
    case 5:
      return 2009;
    case 6:
      return 2010;
    case 7:
      return 2027;
    case 8:
      return result;
    case 9:
      return 2040;
    case 10:
      return 2011;
    case 11:
      return 2012;
    case 14:
      return 2004;
    case 15:
      return 2024;
    case 16:
      return 1016;
    case 17:
    case 19:
    case 27:
    case 28:
    case 29:
    case 30:
    case 32:
    case 33:
    case 35:
    case 36:
    case 54:
    case 55:
    case 56:
    case 57:
    case 76:
    case 80:
      return 2023;
    case 18:
      return 2022;
    case 20:
      return 1014;
    case 21:
    case 22:
    case 31:
    case 34:
      return 2018;
    case 23:
    case 37:
      return 2019;
    case 24:
      return 2020;
    case 25:
      return 2015;
    case 26:
      return 2016;
    case 38:
      return 2025;
    case 39:
      return 2026;
    case 40:
      return 2028;
    case 41:
      return 2033;
    case 42:
      return 2032;
    case 45:
      return 3005;
    case 46:
      return 2035;
    case 47:
      return 2036;
    case 48:
      return 2007;
    case 49:
    case 50:
    case 105:
      return 2039;
    case 51:
    case 52:
      return 2037;
    case 53:
      return 2038;
    case 58:
      return 2042;
    case 59:
      return 2041;
    case 60:
      return 2045;
    case 61:
      return 2043;
    case 63:
      return 2044;
    case 64:
      return 2046;
    case 65:
      return 2047;
    case 66:
      return 2048;
    case 67:
      return 2049;
    case 68:
      return 2050;
    case 69:
      return 2051;
    case 70:
      return 2052;
    case 71:
      return 2053;
    case 72:
      return 2054;
    case 74:
      return 8014;
    case 75:
    case 83:
    case 104:
      return 2005;
    case 77:
      return 2056;
    case 78:
    case 81:
      return 2003;
    case 79:
    case 82:
    case 101:
      return 1017;
    case 84:
    case 85:
    case 86:
      return 1030;
    case 87:
      return 2057;
    case 88:
      return 2060;
    case 89:
      return 3014;
    case 93:
    case 102:
    case 103:
      return 5022;
    case 94:
      return 11000;
    case 95:
      return 11001;
    case 96:
      return 11002;
    case 97:
      return 11003;
    case 99:
      return 11004;
    case 100:
      return 13000;
    case 106:
      return 13001;
    default:
      return v1;
  }
}

uint64_t sub_2253962A4(void *a1)
{
  v1 = a1;
  if (!objc_msgSend_hasCode(v1, v2, v3))
  {
    goto LABEL_14;
  }

  if (objc_msgSend_code(v1, v4, v5) != 1)
  {
    if (objc_msgSend_hasError(v1, v6, v7))
    {
      v11 = objc_msgSend_error(v1, v9, v10);
      v14 = objc_msgSend_serverError(v11, v12, v13);
      hasType = objc_msgSend_hasType(v14, v15, v16);

      v20 = objc_msgSend_error(v1, v18, v19);
      v23 = v20;
      if (hasType)
      {
        v24 = objc_msgSend_serverError(v20, v21, v22);
        v27 = objc_msgSend_type(v24, v25, v26);
        v28 = sub_225395F68(v27);
LABEL_9:
        v8 = v28;

        goto LABEL_15;
      }

      v29 = objc_msgSend_clientError(v20, v21, v22);
      v32 = objc_msgSend_hasType(v29, v30, v31);

      v35 = objc_msgSend_error(v1, v33, v34);
      v23 = v35;
      if (v32)
      {
        v24 = objc_msgSend_clientError(v35, v36, v37);
        v40 = objc_msgSend_type(v24, v38, v39);
        v28 = sub_225396064(v40);
        goto LABEL_9;
      }

      if (objc_msgSend_hasExtensionError(v35, v36, v37))
      {

LABEL_13:
        v8 = 6000;
        goto LABEL_15;
      }

      v43 = objc_msgSend_error(v1, v41, v42);
      hasAuxiliaryError = objc_msgSend_hasAuxiliaryError(v43, v44, v45);

      if (hasAuxiliaryError)
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    v8 = 1000;
    goto LABEL_15;
  }

  v8 = 0;
LABEL_15:

  return v8;
}

uint64_t sub_2253963F0(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    if (a1 == 2)
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    if (a1 == 3)
    {
      return 3;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "CKDPParticipant_ShareParticipantKeyHealth CKDPShareParticipantKeyHealthForCKShareParticipantInvitationTokenStatus(CKShareParticipantInvitationTokenStatus)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v8, v7, @"CKDEnumConversion.m", 586, @"Unexpected share participant invitation token status: %ld", 0);

    return 1;
  }
}

uint64_t sub_22539649C(uint64_t result, const char *a2, uint64_t a3)
{
  if (result <= 1)
  {
    if (result)
    {
      if (result == 1)
      {
        return result;
      }
    }

    else
    {
      v3 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
      v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "CKDPShare_Permission CKDPSharePermissionForCKShareParticipantPermission(CKShareParticipantPermission)");
      objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"CKDEnumConversion.m", 614, @"Unexpected share participant permissions: %ld", 0);
    }

    return 1;
  }

  if (result != 2 && result != 3)
  {
    return 1;
  }

  return result;
}

uint64_t sub_225396550(uint64_t result, const char *a2, uint64_t a3)
{
  if ((result - 1) < 4)
  {
    return result;
  }

  v3 = result;
  v4 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "CKDPParticipant_ShareParticipantType CKDPShareParticipantTypeForCKShareParticipantRole(CKShareParticipantRole)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"CKDEnumConversion.m", 645, @"Unexpected share participant role: %ld", v3);

  return 3;
}

uint64_t sub_2253965F8(unsigned int a1, int a2, int a3)
{
  if (a3)
  {
    if (!a2 || (*MEMORY[0x277CBC810] & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (!a2)
  {
LABEL_13:
    if (a1 - 1 >= 4)
    {
      return 0;
    }

    else
    {
      return a1;
    }
  }

  v4 = CKLinkCheck168f06831e5b4d3ab6cc64d69a8cc447();
  if (a1 != 2 || (v4 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Returning administrator participant as private user due to client being linked on older SDK.", v7, 2u);
  }

  return 3;
}

uint64_t CKDPRequestOperationHeader_DatabaseDatabaseFromCKDatabaseScope(unint64_t a1)
{
  if (a1 > 4)
  {
    return 1;
  }

  else
  {
    return dword_225447EE0[a1];
  }
}

id sub_225396704(uint64_t a1, const char *a2, uint64_t a3, void *a4)
{
  v4 = MEMORY[0x277CCA938];
  v5 = objc_msgSend_objectRepresentationFromFieldValue_(a4, a2, a3);
  v7 = objc_msgSend_expressionForConstantValue_(v4, v6, v5);

  return v7;
}

id sub_225396764(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v173[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_count(v5, v7, v8) >= 2)
  {
    v11 = MEMORY[0x277CCAC30];
    v12 = objc_msgSend_objectAtIndexedSubscript_(v5, v9, 0);
    v173[0] = v12;
    v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v173, 1);
    v16 = objc_msgSend_predicateWithCKDPQueryFilters_translator_(v11, v15, v14, v6);

    v17 = MEMORY[0x277CCAC30];
    v20 = objc_msgSend_count(v5, v18, v19);
    v22 = objc_msgSend_subarrayWithRange_(v5, v21, 1, v20 - 1);
    v24 = objc_msgSend_predicateWithCKDPQueryFilters_translator_(v17, v23, v22, v6);

    if (v16)
    {
      if (v24)
      {
        v26 = MEMORY[0x277CCA920];
        v172[0] = v16;
        v172[1] = v24;
        v27 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v25, v172, 2);
        v29 = objc_msgSend_andPredicateWithSubpredicates_(v26, v28, v27);

LABEL_10:
        goto LABEL_34;
      }

      v55 = v16;
    }

    else
    {
      v55 = v24;
    }

    v29 = v55;
    goto LABEL_10;
  }

  v30 = objc_msgSend_lastObject(v5, v9, v10);
  switch(objc_msgSend_type(v30, v31, v32))
  {
    case 1u:
    case 2u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
      v35 = MEMORY[0x277CCA9C0];
      v36 = objc_msgSend_fieldName(v30, v33, v34);
      v39 = objc_msgSend_name(v36, v37, v38);
      v41 = objc_msgSend_expressionForKeyPath_(v35, v40, v39);

      v42 = MEMORY[0x277CCA9C0];
      v45 = objc_msgSend_fieldValue(v30, v43, v44);
      v47 = objc_msgSend_expressionWithCKDPRecordFieldValue_translator_(v42, v46, v45, v6);

      v48 = MEMORY[0x277CCA918];
      v51 = objc_msgSend_type(v30, v49, v50);
      v52 = sub_2253956DC(v51);
      v54 = objc_msgSend_predicateWithLeftExpression_rightExpression_modifier_type_options_(v48, v53, v41, v47, 0, v52, 0);
      goto LABEL_33;
    case 3u:
      v103 = MEMORY[0x277CCAC30];
      v57 = objc_msgSend_fieldName(v30, v33, v34);
      v60 = objc_msgSend_name(v57, v104, v105);
      v63 = objc_msgSend_fieldValue(v30, v106, v107);
      v65 = objc_msgSend_objectRepresentationFromFieldValue_(v6, v108, v63);
      objc_msgSend_predicateWithFormat_(v103, v109, @"%K IN %@", v60, v65);
      goto LABEL_27;
    case 4u:
      v67 = MEMORY[0x277CCA920];
      v82 = MEMORY[0x277CCAC30];
      v69 = objc_msgSend_fieldName(v30, v33, v34);
      v72 = objc_msgSend_name(v69, v83, v84);
      v75 = objc_msgSend_fieldValue(v30, v85, v86);
      v77 = objc_msgSend_objectRepresentationFromFieldValue_(v6, v87, v75);
      objc_msgSend_predicateWithFormat_(v82, v88, @"%K IN %@", v72, v77);
      goto LABEL_31;
    case 9u:
      v113 = MEMORY[0x277CCAC30];
      v57 = objc_msgSend_fieldName(v30, v33, v34);
      v60 = objc_msgSend_name(v57, v114, v115);
      v63 = objc_msgSend_fieldValue(v30, v116, v117);
      v65 = objc_msgSend_objectRepresentationFromFieldValue_(v6, v118, v63);
      v121 = objc_msgSend_bounds(v30, v119, v120);
      objc_msgSend_radius(v121, v122, v123);
      v54 = objc_msgSend_predicateWithFormat_(v113, v124, @"distanceToLocation:fromLocation:(%K, %@) < %f", v60, v65, v125);

      goto LABEL_28;
    case 0xAu:
      v79 = MEMORY[0x277CCAC30];
      v57 = objc_msgSend_fieldValue(v30, v33, v34);
      v60 = objc_msgSend_objectRepresentationFromFieldValue_(v6, v80, v57);
      objc_msgSend_predicateWithFormat_(v79, v81, @"ALL tokenize(%@, 'cdl') IN allTokens", v60);
      goto LABEL_19;
    case 0xBu:
      v110 = MEMORY[0x277CCAC30];
      v57 = objc_msgSend_fieldValue(v30, v33, v34);
      v60 = objc_msgSend_objectRepresentationFromFieldValue_(v6, v111, v57);
      objc_msgSend_predicateWithFormat_(v110, v112, @"ANY tokenize(%@, 'cdl') IN allTokens", v60);
      v54 = LABEL_19:;
      goto LABEL_29;
    case 0xCu:
      v56 = MEMORY[0x277CCAC30];
      v57 = objc_msgSend_fieldName(v30, v33, v34);
      v60 = objc_msgSend_name(v57, v58, v59);
      v63 = objc_msgSend_fieldValue(v30, v61, v62);
      v65 = objc_msgSend_objectRepresentationFromFieldValue_(v6, v64, v63);
      objc_msgSend_predicateWithFormat_(v56, v66, @"%K CONTAINS %@", v60, v65);
      goto LABEL_27;
    case 0xDu:
      v67 = MEMORY[0x277CCA920];
      v68 = MEMORY[0x277CCAC30];
      v69 = objc_msgSend_fieldName(v30, v33, v34);
      v72 = objc_msgSend_name(v69, v70, v71);
      v75 = objc_msgSend_fieldValue(v30, v73, v74);
      v77 = objc_msgSend_objectRepresentationFromFieldValue_(v6, v76, v75);
      objc_msgSend_predicateWithFormat_(v68, v78, @"%K CONTAINS %@", v72, v77);
      goto LABEL_31;
    case 0xEu:
      v96 = MEMORY[0x277CCAC30];
      v57 = objc_msgSend_fieldValue(v30, v33, v34);
      v60 = objc_msgSend_objectRepresentationFromFieldValue_(v6, v97, v57);
      v63 = objc_msgSend_fieldName(v30, v98, v99);
      v65 = objc_msgSend_name(v63, v100, v101);
      objc_msgSend_predicateWithFormat_(v96, v102, @"ANY %@ IN %K", v60, v65);
      goto LABEL_27;
    case 0xFu:
      v67 = MEMORY[0x277CCA920];
      v147 = MEMORY[0x277CCAC30];
      v69 = objc_msgSend_fieldValue(v30, v33, v34);
      v72 = objc_msgSend_objectRepresentationFromFieldValue_(v6, v148, v69);
      v75 = objc_msgSend_fieldName(v30, v149, v150);
      v77 = objc_msgSend_name(v75, v151, v152);
      objc_msgSend_predicateWithFormat_(v147, v153, @"ANY %@ IN %K", v72, v77);
      goto LABEL_31;
    case 0x10u:
      v89 = MEMORY[0x277CCAC30];
      v57 = objc_msgSend_fieldName(v30, v33, v34);
      v60 = objc_msgSend_name(v57, v90, v91);
      v63 = objc_msgSend_fieldValue(v30, v92, v93);
      v65 = objc_msgSend_objectRepresentationFromFieldValue_(v6, v94, v63);
      objc_msgSend_predicateWithFormat_(v89, v95, @"%K BEGINSWITH %@", v60, v65);
      goto LABEL_27;
    case 0x11u:
      v67 = MEMORY[0x277CCA920];
      v161 = MEMORY[0x277CCAC30];
      v69 = objc_msgSend_fieldName(v30, v33, v34);
      v72 = objc_msgSend_name(v69, v162, v163);
      v75 = objc_msgSend_fieldValue(v30, v164, v165);
      v77 = objc_msgSend_objectRepresentationFromFieldValue_(v6, v166, v75);
      objc_msgSend_predicateWithFormat_(v161, v167, @"%K BEGINSWITH %@", v72, v77);
      goto LABEL_31;
    case 0x12u:
      v126 = MEMORY[0x277CCAC30];
      v57 = objc_msgSend_fieldName(v30, v33, v34);
      v60 = objc_msgSend_name(v57, v127, v128);
      v63 = objc_msgSend_fieldValue(v30, v129, v130);
      v65 = objc_msgSend_objectRepresentationFromFieldValue_(v6, v131, v63);
      objc_msgSend_predicateWithFormat_(v126, v132, @"ANY %K BEGINSWITH %@", v60, v65);
      goto LABEL_27;
    case 0x13u:
      v67 = MEMORY[0x277CCA920];
      v140 = MEMORY[0x277CCAC30];
      v69 = objc_msgSend_fieldName(v30, v33, v34);
      v72 = objc_msgSend_name(v69, v141, v142);
      v75 = objc_msgSend_fieldValue(v30, v143, v144);
      v77 = objc_msgSend_objectRepresentationFromFieldValue_(v6, v145, v75);
      objc_msgSend_predicateWithFormat_(v140, v146, @"ANY %K BEGINSWITH %@", v72, v77);
      goto LABEL_31;
    case 0x14u:
      v154 = MEMORY[0x277CCAC30];
      v57 = objc_msgSend_fieldValue(v30, v33, v34);
      v60 = objc_msgSend_objectRepresentationFromFieldValue_(v6, v155, v57);
      v63 = objc_msgSend_fieldName(v30, v156, v157);
      v65 = objc_msgSend_name(v63, v158, v159);
      objc_msgSend_predicateWithFormat_(v154, v160, @"ALL %@ IN %K", v60, v65);
      v54 = LABEL_27:;
LABEL_28:

LABEL_29:
      break;
    case 0x15u:
      v67 = MEMORY[0x277CCA920];
      v133 = MEMORY[0x277CCAC30];
      v69 = objc_msgSend_fieldValue(v30, v33, v34);
      v72 = objc_msgSend_objectRepresentationFromFieldValue_(v6, v134, v69);
      v75 = objc_msgSend_fieldName(v30, v135, v136);
      v77 = objc_msgSend_name(v75, v137, v138);
      objc_msgSend_predicateWithFormat_(v133, v139, @"ALL %@ IN %K", v72, v77);
      v168 = LABEL_31:;
      v54 = objc_msgSend_notPredicateWithSubpredicate_(v67, v169, v168);

      break;
    default:
      v54 = 0;
      break;
  }

  v41 = 0;
  v47 = 0;
LABEL_33:
  v16 = v54;

  v29 = v16;
LABEL_34:

  v170 = *MEMORY[0x277D85DE8];

  return v29;
}

id sub_225396FD8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  if (objc_msgSend_count(v5, v7, v8) >= 2)
  {
    v10 = objc_msgSend_sortedArrayUsingComparator_(v5, v9, &unk_28385E340);

    v5 = v10;
  }

  v11 = objc_msgSend_predicateWithSortedCKDPQueryFilters_translator_(MEMORY[0x277CCAC30], v9, v5, v6);

  return v11;
}

uint64_t sub_225397078(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  NSClassFromString(&cfstr_Nstruepredicat.isa);
  if (objc_opt_isKindOfClass())
  {
    return MEMORY[0x277CBEBF8];
  }

  if (a4)
  {
    v6 = MEMORY[0x277CBC560];
    v7 = *MEMORY[0x277CBC120];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    *a4 = objc_msgSend_errorWithDomain_code_format_(v6, v10, v7, 1017, @"Unexpected predicate type: %@", v9);
  }

  return 0;
}

id sub_225397130(double a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  objc_msgSend_setFieldName_(v12, v14, v13);

  v17 = objc_msgSend_fieldName(v12, v15, v16);
  objc_msgSend_setName_(v17, v18, v11);

  objc_msgSend_setType_(v12, v19, 9);
  v20 = objc_opt_new();
  objc_msgSend_setBounds_(v12, v21, v20);

  v24 = objc_msgSend_bounds(v12, v22, v23);
  objc_msgSend_setRadius_(v24, v25, v26, a1);

  objc_msgSend_coordinate(v10, v27, v28);
  v30 = v29;
  objc_msgSend_coordinate(v10, v31, v32);
  v34 = v33;

  v37 = objc_msgSend_locationFieldValueWithLatitude_longitude_(v9, v35, v36, v30, v34);

  objc_msgSend_setFieldValue_(v12, v38, v37);

  return v12;
}

id sub_225397280(void *a1, uint64_t a2, void *a3, void *a4)
{
  v90[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_leftExpression(a1, v7, v8);
  v12 = objc_msgSend_rightExpression(a1, v10, v11);
  if (objc_msgSend_comparisonPredicateModifier(a1, v13, v14))
  {
    goto LABEL_2;
  }

  if (objc_msgSend_expressionType(v9, v15, v16) == 4)
  {
    v25 = objc_msgSend_function(v9, v23, v24);
    isEqualToString = objc_msgSend_isEqualToString_(v25, v26, @"distanceToLocation:fromLocation:");

    if (isEqualToString)
    {
      if (!objc_msgSend_predicateOperatorType(a1, v23, v24) || objc_msgSend_predicateOperatorType(a1, v28, v29) == 1)
      {
        v32 = objc_msgSend_expressionType(v12, v28, v29);
        v33 = v12;
        v34 = v9;
        if (v32)
        {
          if (a4)
          {
            objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v30, *MEMORY[0x277CBC120], 1009, @"Expected search radius on right hand side of operator: %@", a1);
            v44 = LABEL_23:;
            v17 = 0;
LABEL_24:
            v18 = 0;
            v19 = 0;
            v20 = 0;
            *a4 = v44;
            goto LABEL_4;
          }

          goto LABEL_2;
        }

        goto LABEL_25;
      }

LABEL_21:
      if (a4)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v28, *MEMORY[0x277CBC120], 1009, @"Searching for locations outside of a specified circular area is not supported: %@", a1);
        goto LABEL_23;
      }

      goto LABEL_2;
    }
  }

  if (objc_msgSend_expressionType(v12, v23, v24) != 4)
  {
    goto LABEL_2;
  }

  v37 = objc_msgSend_function(v12, v35, v36);
  v39 = objc_msgSend_isEqualToString_(v37, v38, @"distanceToLocation:fromLocation:");

  if (!v39)
  {
    goto LABEL_2;
  }

  if (objc_msgSend_predicateOperatorType(a1, v40, v41) != 2 && objc_msgSend_predicateOperatorType(a1, v28, v42) != 3)
  {
    goto LABEL_21;
  }

  v43 = objc_msgSend_expressionType(v9, v28, v42);
  v33 = v9;
  v34 = v12;
  if (v43)
  {
    if (a4)
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v30, *MEMORY[0x277CBC120], 1009, @"Expected search radius on left hand side of operator: %@", a1);
      goto LABEL_23;
    }

LABEL_2:
    v17 = 0;
LABEL_3:
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_4;
  }

LABEL_25:
  v45 = objc_msgSend_constantValue(v33, v30, v31);
  objc_msgSend_doubleValue(v45, v46, v47);
  v49 = v48;

  v17 = v34;
  v52 = objc_msgSend_arguments(v17, v50, v51);
  v55 = objc_msgSend_count(v52, v53, v54);

  if (v55 != 2)
  {
    if (!a4)
    {
      goto LABEL_3;
    }

    v44 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v56, *MEMORY[0x277CBC120], 1009, @"Expected expected 2 arguments for function distanceToLocation:fromLocation: %@", a1);
    goto LABEL_24;
  }

  v58 = objc_msgSend_arguments(v17, v56, v57);
  v60 = objc_msgSend_objectAtIndexedSubscript_(v58, v59, 0);

  v63 = objc_msgSend_arguments(v17, v61, v62);
  v65 = objc_msgSend_objectAtIndexedSubscript_(v63, v64, 1);

  v70 = objc_msgSend_expressionType(v60, v66, v67);
  v71 = v60;
  if (v70 == 3 || (v72 = objc_msgSend_expressionType(v65, v68, v69), v71 = v65, v72 == 3))
  {
    v19 = objc_msgSend_keyPath(v71, v68, v69);
  }

  else
  {
    v19 = 0;
  }

  v75 = objc_msgSend_expressionType(v60, v68, v69);
  v76 = v60;
  if (v75)
  {
    v77 = objc_msgSend_expressionType(v65, v73, v74);
    v76 = v65;
    if (v77)
    {
      if (!v19)
      {
        v18 = 0;
        goto LABEL_42;
      }

LABEL_40:
      if (!a4)
      {
        v18 = 0;
        goto LABEL_49;
      }

      v18 = 0;
      v82 = @"a nil location";
      v89 = 1;
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v73, *MEMORY[0x277CBC120], 1009, @"Expected CLLocation argument for distanceToLocation:fromLocation: but got %@", @"a nil location");
      *a4 = LABEL_47:;
      if ((v89 & 1) == 0)
      {
      }

      goto LABEL_49;
    }
  }

  v78 = objc_msgSend_constantValue(v76, v73, v74);
  v18 = v78;
  if (!v19)
  {
LABEL_42:
    if (a4)
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v73, *MEMORY[0x277CBC120], 1009, @"Expected NSKeyPathExpressionType argument for distanceToLocation:fromLocation:");
      *a4 = v20 = 0;
      goto LABEL_50;
    }

LABEL_49:
    v20 = 0;
    goto LABEL_50;
  }

  if (!v78)
  {
    goto LABEL_40;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!a4)
    {
      goto LABEL_49;
    }

    v88 = MEMORY[0x277CBC560];
    v83 = *MEMORY[0x277CBC120];
    v84 = objc_opt_class();
    v85 = NSStringFromClass(v84);
    v86 = v83;
    v82 = v85;
    v89 = 0;
    objc_msgSend_errorWithDomain_code_format_(v88, v87, v86, 1009, @"Expected CLLocation argument for distanceToLocation:fromLocation: but got %@", v85);
    goto LABEL_47;
  }

  v80 = objc_msgSend__CKNearFilterWithKey_location_radius_translator_(a1, v79, v19, v18, v6, v49);
  v90[0] = v80;
  v20 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v81, v90, 1);

LABEL_50:
LABEL_4:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

id sub_225397784(void *a1, uint64_t a2, void *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_leftExpression(a1, v5, v6);
  v10 = objc_msgSend_rightExpression(a1, v8, v9);
  if (objc_msgSend_predicateOperatorType(a1, v11, v12) != 10 || objc_msgSend_comparisonPredicateModifier(a1, v13, v14) || objc_msgSend_expressionType(v7, v13, v14) || objc_msgSend_expressionType(v10, v13, v14) != 3)
  {
    if (objc_msgSend_predicateOperatorType(a1, v13, v14) == 99 && !objc_msgSend_comparisonPredicateModifier(a1, v29, v30) && objc_msgSend_expressionType(v7, v29, v30) == 3 && !objc_msgSend_expressionType(v10, v29, v30))
    {
      v15 = objc_opt_new();
      v55 = objc_msgSend_CKExpressionValue(v7, v53, v54);
      v56 = sub_225088A84(v55);
      objc_msgSend_setFieldName_(v15, v57, v56);

      objc_msgSend_setType_(v15, v58, 12);
      v61 = objc_msgSend_CKExpressionValue(v10, v59, v60);
      v63 = objc_msgSend_fieldValueFromObject_(v4, v62, v61);
      objc_msgSend_setFieldValue_(v15, v64, v63);

      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v65, &v67, 1, v66, v15, v68, v69);
    }

    else
    {
      if (objc_msgSend_predicateOperatorType(a1, v29, v30) != 4 || objc_msgSend_comparisonPredicateModifier(a1, v31, v32) != 2 || objc_msgSend_expressionType(v7, v33, v34) != 3 || objc_msgSend_expressionType(v10, v35, v36))
      {
        v37 = 0;
        goto LABEL_15;
      }

      v15 = objc_opt_new();
      v42 = objc_msgSend_CKExpressionValue(v7, v40, v41);
      v43 = sub_225088A84(v42);
      objc_msgSend_setFieldName_(v15, v44, v43);

      objc_msgSend_setType_(v15, v45, 12);
      v48 = objc_msgSend_CKExpressionValue(v10, v46, v47);
      v50 = objc_msgSend_fieldValueFromObject_(v4, v49, v48);
      objc_msgSend_setFieldValue_(v15, v51, v50);

      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v52, &v66, 1, v15, v67, v68, v69);
    }
  }

  else
  {
    v15 = objc_opt_new();
    v18 = objc_msgSend_CKExpressionValue(v10, v16, v17);
    v19 = sub_225088A84(v18);
    objc_msgSend_setFieldName_(v15, v20, v19);

    objc_msgSend_setType_(v15, v21, 12);
    v24 = objc_msgSend_CKExpressionValue(v7, v22, v23);
    v26 = objc_msgSend_fieldValueFromObject_(v4, v25, v24);
    objc_msgSend_setFieldValue_(v15, v27, v26);

    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v28, &v68, 1, v66, v67, v15, v69);
  }
  v37 = ;

LABEL_15:
  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

id sub_225397AAC(void *a1, uint64_t a2, void *a3)
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_leftExpression(a1, v5, v6);
  v10 = objc_msgSend_rightExpression(a1, v8, v9);
  v13 = objc_msgSend_expressionType(v7, v11, v12);
  v16 = objc_msgSend_expressionType(v10, v14, v15);
  if (objc_msgSend_predicateOperatorType(a1, v17, v18) == 10 && !objc_msgSend_comparisonPredicateModifier(a1, v19, v20) && v13 == 3 && (v16 == 14 || !v16))
  {
    v21 = objc_opt_new();
    v24 = objc_msgSend_CKExpressionValue(v7, v22, v23);
    v25 = sub_225088A84(v24);
    objc_msgSend_setFieldName_(v21, v26, v25);

    objc_msgSend_setType_(v21, v27, 3);
    v30 = objc_msgSend_CKExpressionValue(v10, v28, v29);
    v31 = sub_225397E10(v30);
    v33 = objc_msgSend_fieldValueFromObject_(v4, v32, v31);
    objc_msgSend_setFieldValue_(v21, v34, v33);

    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, &v75, 1, v73, v74, v21, v76);
  }

  else if (objc_msgSend_predicateOperatorType(a1, v19, v20) == 4 && objc_msgSend_comparisonPredicateModifier(a1, v36, v37) == 2 && (v13 != 14 ? (v38 = v13 == 0) : (v38 = 1), v38 && v16 == 3))
  {
    v21 = objc_opt_new();
    v41 = objc_msgSend_CKExpressionValue(v10, v39, v40);
    v42 = sub_225088A84(v41);
    objc_msgSend_setFieldName_(v21, v43, v42);

    objc_msgSend_setType_(v21, v44, 3);
    v47 = objc_msgSend_CKExpressionValue(v7, v45, v46);
    v48 = sub_225397E10(v47);
    v50 = objc_msgSend_fieldValueFromObject_(v4, v49, v48);
    objc_msgSend_setFieldValue_(v21, v51, v50);

    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v52, &v74, 1, v73, v21, v75, v76);
  }

  else
  {
    if (objc_msgSend_predicateOperatorType(a1, v36, v37) != 99 || objc_msgSend_comparisonPredicateModifier(a1, v53, v54))
    {
      v55 = 0;
      goto LABEL_27;
    }

    v55 = 0;
    v56 = v13 == 14 || v13 == 0;
    if (!v56 || v16 != 3)
    {
      goto LABEL_27;
    }

    v21 = objc_opt_new();
    v59 = objc_msgSend_CKExpressionValue(v10, v57, v58);
    v60 = sub_225088A84(v59);
    objc_msgSend_setFieldName_(v21, v61, v60);

    objc_msgSend_setType_(v21, v62, 3);
    v65 = objc_msgSend_CKExpressionValue(v7, v63, v64);
    v66 = sub_225397E10(v65);
    v68 = objc_msgSend_fieldValueFromObject_(v4, v67, v66);
    objc_msgSend_setFieldValue_(v21, v69, v68);

    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v70, &v73, 1, v21, v74, v75, v76);
  }
  v55 = ;

LABEL_27:
  v71 = *MEMORY[0x277D85DE8];

  return v55;
}

id sub_225397E10(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_msgSend_allValues(v1, v2, v3);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = objc_msgSend_allObjects(v1, v5, v6);
    }

    else
    {
      v4 = v1;
    }
  }

  v7 = v4;

  return v7;
}

id sub_225397EAC(void *a1, uint64_t a2, void *a3)
{
  v57[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_leftExpression(a1, v5, v6);
  v10 = objc_msgSend_rightExpression(a1, v8, v9);
  v13 = objc_msgSend_expressionType(v7, v11, v12);
  v16 = objc_msgSend_expressionType(v10, v14, v15);
  if (objc_msgSend_predicateOperatorType(a1, v17, v18) == 10 && objc_msgSend_comparisonPredicateModifier(a1, v19, v20) == 2 && v13 == 3 && (v16 == 14 || !v16))
  {
    v21 = objc_opt_new();
    v24 = objc_msgSend_CKExpressionValue(v7, v22, v23);
    v25 = sub_225088A84(v24);
    objc_msgSend_setFieldName_(v21, v26, v25);

    objc_msgSend_setType_(v21, v27, 14);
    v30 = objc_msgSend_CKExpressionValue(v10, v28, v29);
    v31 = sub_225397E10(v30);
    v33 = objc_msgSend_fieldValueFromObject_(v4, v32, v31);
    objc_msgSend_setFieldValue_(v21, v34, v33);

    v57[0] = v21;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, v57, 1);
    v38 = LABEL_16:;

    goto LABEL_18;
  }

  if (objc_msgSend_predicateOperatorType(a1, v19, v20) == 10 && objc_msgSend_comparisonPredicateModifier(a1, v36, v37) == 2)
  {
    v38 = 0;
    v39 = v13 == 14 || v13 == 0;
    if (!v39 || v16 != 3)
    {
      goto LABEL_18;
    }

    v21 = objc_opt_new();
    v42 = objc_msgSend_CKExpressionValue(v10, v40, v41);
    v43 = sub_225088A84(v42);
    objc_msgSend_setFieldName_(v21, v44, v43);

    objc_msgSend_setType_(v21, v45, 14);
    v48 = objc_msgSend_CKExpressionValue(v7, v46, v47);
    v49 = sub_225397E10(v48);
    v51 = objc_msgSend_fieldValueFromObject_(v4, v50, v49);
    objc_msgSend_setFieldValue_(v21, v52, v51);

    v56 = v21;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v53, &v56, 1);
    goto LABEL_16;
  }

  v38 = 0;
LABEL_18:

  v54 = *MEMORY[0x277D85DE8];

  return v38;
}

id sub_225398144(void *a1, uint64_t a2, void *a3)
{
  v40[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_leftExpression(a1, v5, v6);
  v10 = objc_msgSend_rightExpression(a1, v8, v9);
  v13 = objc_msgSend_expressionType(v7, v11, v12);
  v16 = objc_msgSend_expressionType(v10, v14, v15);
  if (objc_msgSend_predicateOperatorType(a1, v17, v18) == 10 && objc_msgSend_comparisonPredicateModifier(a1, v19, v20) == 1)
  {
    v21 = 0;
    v22 = v13 == 14 || v13 == 0;
    if (v22 && v16 == 3)
    {
      v23 = objc_opt_new();
      v26 = objc_msgSend_CKExpressionValue(v10, v24, v25);
      v27 = sub_225088A84(v26);
      objc_msgSend_setFieldName_(v23, v28, v27);

      objc_msgSend_setType_(v23, v29, 20);
      v32 = objc_msgSend_CKExpressionValue(v7, v30, v31);
      v33 = sub_225397E10(v32);
      v35 = objc_msgSend_fieldValueFromObject_(v4, v34, v33);
      objc_msgSend_setFieldValue_(v23, v36, v35);

      v40[0] = v23;
      v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v37, v40, 1);
    }
  }

  else
  {
    v21 = 0;
  }

  v38 = *MEMORY[0x277D85DE8];

  return v21;
}

id sub_225398308(void *a1, uint64_t a2, void *a3, void *a4)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_leftExpression(a1, v7, v8);
  v12 = objc_msgSend_rightExpression(a1, v10, v11);
  if (objc_msgSend_predicateOperatorType(a1, v13, v14) != 8 || objc_msgSend_expressionType(v9, v15, v16) != 3 || objc_msgSend_expressionType(v12, v17, v18))
  {
    v21 = 0;
    goto LABEL_5;
  }

  v24 = objc_msgSend_CKExpressionValue(v12, v19, v20);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v25, *MEMORY[0x277CBC120], 1009, @"Expected NSString or NSData on right hand side: %@", a1);
        *a4 = v21 = 0;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_19;
    }
  }

  v26 = objc_opt_new();
  v29 = objc_msgSend_CKExpressionValue(v9, v27, v28);
  v30 = sub_225088A84(v29);
  objc_msgSend_setFieldName_(v26, v31, v30);

  v33 = objc_msgSend_fieldValueFromObject_(v6, v32, v24);
  objc_msgSend_setFieldValue_(v26, v34, v33);

  if (objc_msgSend_comparisonPredicateModifier(a1, v35, v36))
  {
    if (objc_msgSend_comparisonPredicateModifier(a1, v37, v38) != 2)
    {
      v21 = 0;
      goto LABEL_18;
    }

    objc_msgSend_setType_(v26, v39, 18);
  }

  else
  {
    objc_msgSend_setType_(v26, v37, 16);
  }

  v41[0] = v26;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v40, v41, 1);
LABEL_18:

LABEL_19:
LABEL_5:

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

id sub_225398548(void *a1, uint64_t a2, void *a3, void *a4)
{
  v66[2] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_leftExpression(a1, v7, v8);
  v12 = objc_msgSend_rightExpression(a1, v10, v11);
  if (objc_msgSend_predicateOperatorType(a1, v13, v14) == 100 && !objc_msgSend_comparisonPredicateModifier(a1, v15, v16) && objc_msgSend_expressionType(v9, v17, v18) == 3 && objc_msgSend_expressionType(v12, v19, v20) == 14)
  {
    v23 = objc_msgSend_constantValue(v12, v21, v22);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v23, v24, v25) == 2)
    {
      v27 = objc_msgSend_objectAtIndexedSubscript_(v23, v26, 0);
      v30 = objc_msgSend_CKExpressionValue(v27, v28, v29);

      v32 = objc_msgSend_objectAtIndexedSubscript_(v23, v31, 1);
      v35 = objc_msgSend_CKExpressionValue(v32, v33, v34);

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v37 = objc_opt_new();
        v65 = objc_opt_new();
        v40 = objc_msgSend_CKExpressionValue(v9, v38, v39);
        sub_225088A84(v40);
        v42 = v41 = v30;
        objc_msgSend_setFieldName_(v37, v43, v42);

        v30 = v41;
        v45 = objc_msgSend_fieldValueFromObject_(v6, v44, v41);
        objc_msgSend_setFieldValue_(v37, v46, v45);

        objc_msgSend_setType_(v37, v47, 8);
        v50 = objc_msgSend_fieldName(v37, v48, v49);
        objc_msgSend_setFieldName_(v65, v51, v50);

        v53 = objc_msgSend_fieldValueFromObject_(v6, v52, v35);
        objc_msgSend_setFieldValue_(v65, v54, v53);

        objc_msgSend_setType_(v65, v55, 6);
        v66[0] = v37;
        v66[1] = v65;
        v57 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v56, v66, 2);
      }

      else if (a4)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v36, *MEMORY[0x277CBC120], 1009, @"Expected array with two number arguments on right hand side: %@", a1);
        *a4 = v57 = 0;
      }

      else
      {
        v57 = 0;
      }
    }

    else
    {
      if (a4)
      {
        v60 = MEMORY[0x277CBC560];
        v61 = *MEMORY[0x277CBC120];
        v62 = objc_opt_class();
        v63 = NSStringFromClass(v62);
        *a4 = objc_msgSend_errorWithDomain_code_format_(v60, v64, v61, 1009, @"Expected array with two number arguments on right hand side, but got %@: %@", v63, a1);
      }

      v57 = 0;
    }
  }

  else
  {
    v57 = 0;
  }

  v58 = *MEMORY[0x277D85DE8];

  return v57;
}

uint64_t sub_2253988B4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_msgSend_rangeOfString_(v3, v4, @"n") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend_rangeOfString_(v3, v5, @"N") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = objc_msgSend_rangeOfString_(v3, v6, @"c") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_rangeOfString_(v3, v7, @"C") != 0x7FFFFFFFFFFFFFFFLL;
    if (objc_msgSend_rangeOfString_(v3, v7, @"d") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_rangeOfString_(v3, v10, @"D") != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 |= 2uLL;
    }

    if (objc_msgSend_rangeOfString_(v3, v10, @"l") != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend_rangeOfString_(v3, v11, @"L") != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 |= 8uLL;
    }
  }

  else
  {
    v8 = 4;
  }

  return v8;
}

id sub_2253989C8(void *a1, uint64_t a2, void *a3)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v7 = objc_msgSend_leftExpression(a1, v5, v6);
  v10 = objc_msgSend_rightExpression(a1, v8, v9);
  if (objc_msgSend_predicateOperatorType(a1, v11, v12) == 99 && objc_msgSend_expressionType(v7, v13, v14) == 1 && !objc_msgSend_expressionType(v10, v15, v16))
  {
    v20 = objc_opt_new();
    if (objc_msgSend_comparisonPredicateModifier(a1, v21, v22) == 1)
    {
      objc_msgSend_setType_(v20, v23, 10);
    }

    else
    {
      objc_msgSend_setType_(v20, v23, 11);
    }

    v26 = objc_msgSend_constantValue(v10, v24, v25);
    v28 = objc_msgSend_fieldValueFromObject_(v4, v27, v26);
    objc_msgSend_setFieldValue_(v20, v29, v28);

    v31[0] = v20;
    v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v30, v31, 1);
  }

  else
  {
    v17 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

id sub_225398B30(void *a1, uint64_t a2, void *a3, void *a4)
{
  v96[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_leftExpression(a1, v7, v8);
  v12 = objc_msgSend_rightExpression(a1, v10, v11);
  if (objc_msgSend_expressionType(v9, v13, v14) != 3 || (objc_msgSend_keyPath(v9, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend_isEqualToString_(v17, v18, @"allTokens"), v17, v20 = v9, v21 = v12, (v19 & 1) == 0))
  {
    if (objc_msgSend_expressionType(v12, v15, v16) != 3 || (objc_msgSend_keyPath(v12, v22, v23), v24 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v24, v25, @"allTokens"), v24, v20 = v12, v21 = v9, !isEqualToString))
    {
      v60 = 0;
      goto LABEL_59;
    }
  }

  v27 = v20;
  v28 = v21;
  v29 = objc_opt_new();
  v34 = objc_msgSend_expressionType(v28, v30, v31);
  if (!v34)
  {
    v94 = v6;
    v56 = objc_msgSend_constantValue(v28, v32, v33);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (a4)
      {
        *a4 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v61, *MEMORY[0x277CBC120], 1009, @"Required string or tokenize() arguments when comparing to special key-path allTokens: %@", a1);
      }

      v60 = 0;
      v6 = v94;
      goto LABEL_58;
    }

    v93 = v27;
    v58 = objc_msgSend_constantValue(v28, v61, v62);
    v64 = objc_msgSend_fieldValueFromObject_(v94, v63, v58);
    objc_msgSend_setFieldValue_(v29, v65, v64);

LABEL_17:
    v27 = v93;
    if (objc_msgSend_comparisonPredicateModifier(a1, v66, v67) == 1 && v93 == v9)
    {
      v6 = v94;
      if (a4)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v68, *MEMORY[0x277CBC120], 1009, @"Enumerating special key-path allTokens is not allowed: %@", a1);
        goto LABEL_14;
      }

LABEL_57:
      v60 = 0;
      goto LABEL_58;
    }

    v6 = v94;
    if (objc_msgSend_predicateOperatorType(a1, v68, v69) == 1000)
    {
      if (!v34 && ((objc_msgSend_options(a1, v70, v71) & 4) != 0 || (objc_msgSend_options(a1, v70, v85) & 1) == 0 || (objc_msgSend_options(a1, v70, v86) & 2) == 0 || (objc_msgSend_options(a1, v70, v87) & 8) == 0))
      {
        if (a4)
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v70, *MEMORY[0x277CBC120], 1009, @"Required NSCaseInsensitivePredicateOption, NSDiacriticInsensitivePredicateOption, and NSLocaleSensitivePredicateOption comparison predicate options: %@", a1);
          goto LABEL_14;
        }

        goto LABEL_57;
      }

      if (objc_msgSend_comparisonPredicateModifier(a1, v70, v71) == 1)
      {
        objc_msgSend_setType_(v29, v72, 10);
      }

      else
      {
        objc_msgSend_setType_(v29, v72, 11);
      }

      v96[0] = v29;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v73, v96, 1);
    }

    else
    {
      if (objc_msgSend_predicateOperatorType(a1, v70, v71) != 10)
      {
        if (a4)
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v74, *MEMORY[0x277CBC120], 1009, @"Required comparison operators TOKENMATCHES or IN when searching special key-path allTokens: %@", a1);
          goto LABEL_14;
        }

        goto LABEL_57;
      }

      if (objc_msgSend_comparisonPredicateModifier(a1, v74, v75) == 2)
      {
        objc_msgSend_setType_(v29, v76, 11);
      }

      else
      {
        if (objc_msgSend_comparisonPredicateModifier(a1, v76, v77) != 1)
        {
          if (a4)
          {
            objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v88, *MEMORY[0x277CBC120], 1009, @"Required predicate modifier ANY or ALL when searching special key-path allTokens: %@", a1);
            goto LABEL_14;
          }

          goto LABEL_57;
        }

        objc_msgSend_setType_(v29, v88, 10);
      }

      if (!objc_msgSend_expressionType(v28, v78, v79))
      {
        if (a4)
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v89, *MEMORY[0x277CBC120], 1009, @"Required tokenize() operand when searching special key-path allTokens: %@", a1);
          goto LABEL_14;
        }

        goto LABEL_57;
      }

      v95 = v29;
      objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v89, &v95, 1);
    }
    v60 = ;
    goto LABEL_58;
  }

  if (objc_msgSend_expressionType(v28, v32, v33) == 4)
  {
    objc_msgSend_function(v28, v35, v36);
    v37 = v93 = v27;
    v39 = objc_msgSend_isEqualToString_(v37, v38, @"tokenize:using:");

    v27 = v93;
    if (v39)
    {
      v92 = v29;
      v94 = v6;
      v41 = objc_msgSend_arguments(v28, v35, v40);
      v43 = objc_msgSend_objectAtIndexedSubscript_(v41, v42, 1);
      v46 = objc_msgSend_constantValue(v43, v44, v45);
      v48 = objc_msgSend__comparisonOptionForString_(a1, v47, v46);

      if ((v48 & 0xF) == 0xBLL)
      {
        v51 = objc_msgSend_arguments(v28, v49, v50);
        v53 = objc_msgSend_objectAtIndexedSubscript_(v51, v52, 0);
        v56 = objc_msgSend_constantValue(v53, v54, v55);

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v58 = objc_msgSend_fieldValueFromObject_(v94, v57, v56);
          v29 = v92;
          objc_msgSend_setFieldValue_(v92, v59, v58);
          goto LABEL_17;
        }

        if (a4)
        {
          v80 = MEMORY[0x277CBC560];
          v81 = *MEMORY[0x277CBC120];
          v82 = objc_opt_class();
          v83 = NSStringFromClass(v82);
          *a4 = objc_msgSend_errorWithDomain_code_format_(v80, v84, v81, 1009, @"Required string argument when using tokenize(), but got %@: %@", v83, a1);
        }

        v60 = 0;
        v27 = v93;
        v6 = v94;
      }

      else
      {
        v27 = v93;
        v6 = v94;
        if (a4)
        {
          objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v49, *MEMORY[0x277CBC120], 1009, @"Required NSCaseInsensitivePredicateOption, NSDiacriticInsensitivePredicateOption, and NSLocaleSensitivePredicateOption tokenization options on tokenize() function: %@", a1);
          *a4 = v60 = 0;
        }

        else
        {
          v60 = 0;
        }
      }

      v29 = v92;
      goto LABEL_58;
    }
  }

  if (!a4)
  {
    goto LABEL_57;
  }

  objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v35, *MEMORY[0x277CBC120], 1009, @"Required string or tokenize() arguments when searching special key-path allTokens: %@", a1);
LABEL_14:
  *a4 = v60 = 0;
LABEL_58:

LABEL_59:
  v90 = *MEMORY[0x277D85DE8];

  return v60;
}

id sub_225399150(void *a1, uint64_t a2, void *a3, void *a4)
{
  v69[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_leftExpression(a1, v7, v8);
  v12 = objc_msgSend_rightExpression(a1, v10, v11);
  if (objc_msgSend_predicateOperatorType(a1, v13, v14) > 5)
  {
    v22 = 0;
LABEL_14:
    v37 = 0;
    goto LABEL_15;
  }

  if (objc_msgSend_expressionType(v9, v15, v16) == 3 || objc_msgSend_expressionType(v9, v17, v18) == 1)
  {
    v19 = 0;
    objc_msgSend_CKExpressionValue(v9, v17, v18);
    v22 = LABEL_5:;
    goto LABEL_6;
  }

  if (objc_msgSend_expressionType(v12, v17, v18) == 3 || objc_msgSend_expressionType(v12, v20, v21) == 1)
  {
    v19 = 1;
    objc_msgSend_CKExpressionValue(v12, v20, v21);
    goto LABEL_5;
  }

  v22 = 0;
  v19 = 0;
LABEL_6:
  if (!objc_msgSend_expressionType(v9, v20, v21))
  {
    objc_msgSend_CKExpressionValue(v9, v23, v24);
    v36 = LABEL_21:;
LABEL_22:
    v37 = v36;
    if (v22)
    {
      goto LABEL_23;
    }

LABEL_41:
    if (a4)
    {
      v51 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v27, *MEMORY[0x277CBC120], 1009, @"Expected key-path in comparison expression: %@", a1);
      v22 = 0;
      goto LABEL_43;
    }

    v22 = 0;
    goto LABEL_15;
  }

  if (!objc_msgSend_expressionType(v12, v23, v24))
  {
    objc_msgSend_CKExpressionValue(v12, v25, v26);
    goto LABEL_21;
  }

  if (objc_msgSend_expressionType(v9, v25, v26) == 4)
  {
    v29 = objc_msgSend_function(v9, v27, v28);
    isEqualToString = objc_msgSend_isEqualToString_(v29, v30, @"now");

    if (isEqualToString)
    {
      goto LABEL_12;
    }
  }

  if (objc_msgSend_expressionType(v12, v27, v28) == 4)
  {
    v33 = objc_msgSend_function(v12, v27, v32);
    v35 = objc_msgSend_isEqualToString_(v33, v34, @"now");

    if (v35)
    {
LABEL_12:
      v36 = objc_msgSend_date(MEMORY[0x277CBEAA8], v27, v28);
      goto LABEL_22;
    }
  }

  v37 = 0;
  if (!v22)
  {
    goto LABEL_41;
  }

LABEL_23:
  if (objc_msgSend_isEqualToString_(v22, v27, *MEMORY[0x277CBC048]))
  {
    v41 = v37 != 0;
    v42 = 1;
    goto LABEL_25;
  }

  v50 = objc_msgSend_isEqualToString_(v22, v39, *MEMORY[0x277CBC028]);
  v42 = v50;
  v41 = v37 != 0;
  if (!v37 && (v50 & 1) == 0)
  {
    if (a4)
    {
      v51 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v39, *MEMORY[0x277CBC120], 1009, @"Expected constant value in comparison expression: %@", a1);
      v37 = 0;
LABEL_43:
      v38 = 0;
      *a4 = v51;
      goto LABEL_44;
    }

    goto LABEL_14;
  }

LABEL_25:
  v43 = objc_msgSend_predicateOperatorType(a1, v39, v40);
  v46 = v19;
  v47 = v43;
  if (v43 >= 4)
  {
    v46 = 0;
  }

  if (v46 == 1)
  {
    v47 = qword_225447EF8[v43];
  }

  if (objc_msgSend_comparisonPredicateModifier(a1, v44, v45) == 1)
  {
    if (a4)
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v48, *MEMORY[0x277CBC120], 1009, @"Aggregate operator ALL not allowed for comparison expression: %@", a1);
      v51 = LABEL_39:;
      goto LABEL_43;
    }

    goto LABEL_15;
  }

  if (objc_msgSend_comparisonPredicateModifier(a1, v48, v49) == 2)
  {
    if (a4)
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v52, *MEMORY[0x277CBC120], 1009, @"Aggregate operator ANY not allowed for comparison expression: %@", a1);
      goto LABEL_39;
    }

LABEL_15:
    v38 = 0;
    goto LABEL_44;
  }

  if (!CKValueIsAcceptablePredicateClass() && ((v41 | v42 ^ 1) & 1) != 0)
  {
    if (a4)
    {
      v55 = MEMORY[0x277CBC560];
      v56 = *MEMORY[0x277CBC120];
      v57 = objc_opt_class();
      v58 = NSStringFromClass(v57);
      *a4 = objc_msgSend_errorWithDomain_code_format_(v55, v59, v56, 1009, @"Type '%@' not allowed in comparison expression: %@", v58, a1);
    }

    goto LABEL_15;
  }

  v60 = objc_opt_new();
  v61 = sub_225088A84(v22);
  objc_msgSend_setFieldName_(v60, v62, v61);

  v63 = sub_225088B88(v47);
  objc_msgSend_setType_(v60, v64, v63);
  v66 = objc_msgSend_fieldValueFromObject_(v6, v65, v37);
  objc_msgSend_setFieldValue_(v60, v67, v66);

  v69[0] = v60;
  v38 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v68, v69, 1);

LABEL_44:
  v53 = *MEMORY[0x277D85DE8];

  return v38;
}

id sub_2253995E4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v47 = 0;
  v8 = objc_msgSend__CKParseFullTextSearchUsingContainsTranslator_withError_(a1, v7, v6, &v47);
  v9 = v47;
  v11 = v9;
  if (v8)
  {
    v12 = v8;
    goto LABEL_13;
  }

  v46 = v9;
  v13 = objc_msgSend__CKParseFullTextSearchFiltersWithTranslator_withError_(a1, v10, v6, &v46);
  v14 = v46;

  if (v13)
  {
    v17 = v13;
LABEL_5:
    v12 = v17;
LABEL_12:
    v11 = v14;
    goto LABEL_13;
  }

  if (v14)
  {
LABEL_9:
    v12 = 0;
    if (a4 && v14)
    {
      v19 = v14;
      v12 = 0;
      *a4 = v14;
    }

    goto LABEL_12;
  }

  if (objc_msgSend_options(a1, v15, v16))
  {
    v14 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v18, *MEMORY[0x277CBC120], 1009, @"Predicate comparison options are not supported for expression: %@", a1);
    goto LABEL_9;
  }

  v45 = 0;
  v21 = objc_msgSend__CKParseNearFiltersWithTranslator_withError_(a1, v18, v6, &v45);
  v22 = v45;
  v14 = v22;
  if (v21)
  {
    goto LABEL_17;
  }

  if (v22)
  {
    goto LABEL_9;
  }

  v44 = 0;
  v21 = objc_msgSend__CKParseListContainsFiltersWithTranslator_withError_(a1, v23, v6, &v44);
  v24 = v44;
  v14 = v24;
  if (v21)
  {
    goto LABEL_17;
  }

  if (v24)
  {
    goto LABEL_9;
  }

  v43 = 0;
  v21 = objc_msgSend__CKParseInFiltersWithTranslator_withError_(a1, v25, v6, &v43);
  v26 = v43;
  v14 = v26;
  if (v21)
  {
    goto LABEL_17;
  }

  if (v26)
  {
    goto LABEL_9;
  }

  v42 = 0;
  v21 = objc_msgSend__CKParseListContainsAnyFiltersWithTranslator_withError_(a1, v27, v6, &v42);
  v28 = v42;
  v14 = v28;
  if (v21)
  {
    goto LABEL_17;
  }

  if (v28)
  {
    goto LABEL_9;
  }

  v41 = 0;
  v21 = objc_msgSend__CKParseListContainsAllFiltersWithTranslator_withError_(a1, v29, v6, &v41);
  v30 = v41;
  v14 = v30;
  if (v21)
  {
    goto LABEL_17;
  }

  if (v30)
  {
    goto LABEL_9;
  }

  v40 = 0;
  v21 = objc_msgSend__CKParseBeginsWithFiltersWithTranslator_withError_(a1, v31, v6, &v40);
  v32 = v40;
  v14 = v32;
  if (v21)
  {
    goto LABEL_17;
  }

  if (v32)
  {
    goto LABEL_9;
  }

  v39 = 0;
  v21 = objc_msgSend__CKParseBetweenFiltersWithTranslator_withError_(a1, v33, v6, &v39);
  v34 = v39;
  v14 = v34;
  if (v21)
  {
    goto LABEL_17;
  }

  if (v34)
  {
    goto LABEL_9;
  }

  v38 = 0;
  v21 = objc_msgSend__CKParseBasicOperatorFiltersWithTranslator_withError_(a1, v35, v6, &v38);
  v36 = v38;
  v14 = v36;
  if (v21)
  {
LABEL_17:
    v17 = v21;
    goto LABEL_5;
  }

  if (v36)
  {
    goto LABEL_9;
  }

  if (a4)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v37, *MEMORY[0x277CBC120], 1009, @"Unexpected expression: %@", a1);
    v12 = 0;
    *a4 = v11 = 0;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

LABEL_13:

  return v12;
}

id sub_2253998F4(void *a1, uint64_t a2, void *a3, void *a4)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (objc_msgSend_compoundPredicateType(a1, v7, v8) != 1)
  {
    if (objc_msgSend_compoundPredicateType(a1, v9, v10))
    {
      if (a4)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v26, *MEMORY[0x277CBC120], 1009, @"Unexpected expression: %@", a1);
        *a4 = v28 = 0;
      }

      else
      {
        v28 = 0;
      }

      goto LABEL_56;
    }

    v30 = objc_msgSend_subpredicates(a1, v26, v27);
    v32 = objc_msgSend_objectAtIndexedSubscript_(v30, v31, 0);

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && !objc_msgSend_compoundPredicateType(v32, v33, v34))
    {
      v28 = objc_msgSend_CKDPQueryFiltersWithTranslator_error_(v32, v35, v6, a4);
LABEL_55:

      goto LABEL_56;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v37 = objc_msgSend_CKDPQueryFiltersWithTranslator_error_(v32, v36, v6, 0);
      v40 = v37;
      if (v37 && objc_msgSend_count(v37, v38, v39) == 1)
      {
        v42 = objc_msgSend_objectAtIndexedSubscript_(v40, v41, 0);
        v28 = 0;
        switch(objc_msgSend_type(v42, v43, v44))
        {
          case 2u:
            objc_msgSend_setType_(v42, v45, 1);
            goto LABEL_48;
          case 3u:
            objc_msgSend_setType_(v42, v45, 4);
            goto LABEL_48;
          case 4u:
            objc_msgSend_setType_(v42, v45, 3);
            goto LABEL_48;
          case 5u:
            objc_msgSend_setType_(v42, v45, 8);
            goto LABEL_48;
          case 6u:
            objc_msgSend_setType_(v42, v45, 7);
            goto LABEL_48;
          case 7u:
            objc_msgSend_setType_(v42, v45, 6);
            goto LABEL_48;
          case 8u:
            objc_msgSend_setType_(v42, v45, 5);
            goto LABEL_48;
          case 9u:
          case 0xAu:
          case 0xBu:
          case 0x16u:
          case 0x17u:
          case 0x18u:
          case 0x19u:
          case 0x1Au:
          case 0x1Bu:
          case 0x1Cu:
          case 0x1Du:
          case 0x1Eu:
            goto LABEL_49;
          case 0xCu:
            objc_msgSend_setType_(v42, v45, 13);
            goto LABEL_48;
          case 0xDu:
            objc_msgSend_setType_(v42, v45, 12);
            goto LABEL_48;
          case 0xEu:
            objc_msgSend_setType_(v42, v45, 15);
            goto LABEL_48;
          case 0xFu:
            objc_msgSend_setType_(v42, v45, 14);
            goto LABEL_48;
          case 0x10u:
            objc_msgSend_setType_(v42, v45, 17);
            goto LABEL_48;
          case 0x11u:
            objc_msgSend_setType_(v42, v45, 16);
            goto LABEL_48;
          case 0x12u:
            objc_msgSend_setType_(v42, v45, 19);
            goto LABEL_48;
          case 0x13u:
            objc_msgSend_setType_(v42, v45, 18);
            goto LABEL_48;
          case 0x14u:
            objc_msgSend_setType_(v42, v45, 21);
            goto LABEL_48;
          case 0x15u:
            objc_msgSend_setType_(v42, v45, 20);
            goto LABEL_48;
          default:
            objc_msgSend_setType_(v42, v45, 2);
LABEL_48:
            v56[0] = v42;
            v28 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v46, v56, 1);
LABEL_49:

            break;
        }
      }

      else
      {
        v28 = 0;
      }

      if (v28)
      {
        goto LABEL_55;
      }

      if (a4)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v47, *MEMORY[0x277CBC120], 1009, @"Invalid NOT predicate: %@", a1);
        goto LABEL_53;
      }
    }

    else if (a4)
    {
      objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v36, *MEMORY[0x277CBC120], 1009, @"Expected comparison subpredicate: %@", a1);
LABEL_53:
      *a4 = v28 = 0;
      goto LABEL_55;
    }

    v28 = 0;
    goto LABEL_55;
  }

  v11 = objc_opt_new();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v14 = objc_msgSend_subpredicates(a1, v12, v13);
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v51, v55, 16);
  if (v16)
  {
    v18 = v16;
    v19 = 0;
    v20 = *v52;
    while (2)
    {
      v21 = 0;
      v22 = v19;
      do
      {
        if (*v52 != v20)
        {
          objc_enumerationMutation(v14);
        }

        v23 = *(*(&v51 + 1) + 8 * v21);
        v50 = v22;
        v24 = objc_msgSend_CKDPQueryFiltersWithTranslator_error_(v23, v17, v6, &v50);
        v19 = v50;

        objc_msgSend_addObjectsFromArray_(v11, v25, v24);
        if (a4 && v19)
        {
          v29 = v19;
          *a4 = v19;

          v28 = 0;
          goto LABEL_18;
        }

        ++v21;
        v22 = v19;
      }

      while (v18 != v21);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v51, v55, 16);
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v19 = 0;
  }

  v28 = v11;
LABEL_18:

LABEL_56:
  v48 = *MEMORY[0x277D85DE8];

  return v28;
}

id sub_225399D44(void *a1)
{
  v2 = objc_opt_new();
  if (objc_msgSend_ascending(a1, v3, v4))
  {
    objc_msgSend_setOrder_(v2, v5, 1);
  }

  else
  {
    objc_msgSend_setOrder_(v2, v5, 2);
  }

  v8 = objc_msgSend_key(a1, v6, v7);
  v9 = sub_225088A84(v8);
  objc_msgSend_setFieldName_(v2, v10, v9);

  return v2;
}

id sub_225399DDC(void *a1)
{
  v82.receiver = a1;
  v82.super_class = &off_283928248;
  v2 = objc_msgSendSuper2(&v82, sel_CKDPQuerySort);
  v5 = objc_msgSend_relativeLocation(a1, v3, v4);

  if (v5)
  {
    v6 = objc_opt_new();
    v9 = objc_msgSend_relativeLocation(a1, v7, v8);
    objc_msgSend_coordinate(v9, v10, v11);
    objc_msgSend_setLatitude_(v6, v12, v13);

    v16 = objc_msgSend_relativeLocation(a1, v14, v15);
    objc_msgSend_coordinate(v16, v17, v18);
    objc_msgSend_setLongitude_(v6, v19, v20, v21);

    v24 = objc_msgSend_relativeLocation(a1, v22, v23);
    objc_msgSend_horizontalAccuracy(v24, v25, v26);
    objc_msgSend_setHorizontalAccuracy_(v6, v27, v28);

    v31 = objc_msgSend_relativeLocation(a1, v29, v30);
    objc_msgSend_altitude(v31, v32, v33);
    objc_msgSend_setAltitude_(v6, v34, v35);

    v38 = objc_msgSend_relativeLocation(a1, v36, v37);
    objc_msgSend_verticalAccuracy(v38, v39, v40);
    objc_msgSend_setVerticalAccuracy_(v6, v41, v42);

    v45 = objc_msgSend_relativeLocation(a1, v43, v44);
    objc_msgSend_course(v45, v46, v47);
    objc_msgSend_setCourse_(v6, v48, v49);

    v52 = objc_msgSend_relativeLocation(a1, v50, v51);
    objc_msgSend_speed(v52, v53, v54);
    objc_msgSend_setSpeed_(v6, v55, v56);

    v59 = objc_msgSend_relativeLocation(a1, v57, v58);
    v62 = objc_msgSend_timestamp(v59, v60, v61);

    if (v62)
    {
      v64 = objc_opt_new();
      objc_msgSend_setTimestamp_(v6, v65, v64);

      v68 = objc_msgSend_relativeLocation(a1, v66, v67);
      v71 = objc_msgSend_timestamp(v68, v69, v70);
      objc_msgSend_timeIntervalSinceReferenceDate(v71, v72, v73);
      v75 = v74;
      v78 = objc_msgSend_timestamp(v6, v76, v77);
      objc_msgSend_setTime_(v78, v79, v80, v75);
    }

    objc_msgSend_setCoordinate_(v2, v63, v6);
  }

  return v2;
}

uint64_t sub_22539A000(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v8 = objc_msgSend_fieldName(v4, v6, v7);
  if ((objc_msgSend_hasName(v8, v9, v10) & 1) == 0)
  {

    goto LABEL_11;
  }

  v13 = objc_msgSend_fieldName(v5, v11, v12);
  hasName = objc_msgSend_hasName(v13, v14, v15);

  if (!hasName)
  {
LABEL_11:
    v30 = 0;
    goto LABEL_12;
  }

  v19 = objc_msgSend_fieldName(v4, v17, v18);
  v22 = objc_msgSend_name(v19, v20, v21);
  v25 = objc_msgSend_fieldName(v5, v23, v24);
  v28 = objc_msgSend_name(v25, v26, v27);
  v30 = objc_msgSend_compare_(v22, v29, v28);

  if (!v30)
  {
    v33 = objc_msgSend_type(v4, v31, v32);
    v34 = sub_22539A120(v33);
    v37 = objc_msgSend_type(v5, v35, v36);
    v38 = sub_22539A120(v37);
    if (v34 >= v38)
    {
      v39 = 0;
    }

    else
    {
      v39 = -1;
    }

    if (v34 > v38)
    {
      v30 = 1;
    }

    else
    {
      v30 = v39;
    }
  }

LABEL_12:

  return v30;
}

uint64_t sub_22539A120(int a1)
{
  if ((a1 - 2) > 0x1C)
  {
    return 1;
  }

  else
  {
    return dword_225447F18[a1 - 2];
  }
}

void sub_22539E12C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, __int128 buf)
{
  if (a2 == 1)
  {
    v37 = objc_begin_catch(a1);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v38 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v37;
      _os_log_impl(&dword_22506F000, v38, OS_LOG_TYPE_INFO, "Warn: Caught an exception when trying to encode record: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x22539E0D4);
  }

  _Unwind_Resume(a1);
}

void sub_22539E84C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, __int128 buf)
{
  if (a2 == 1)
  {
    v39 = objc_begin_catch(a1);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v40 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v39;
      _os_log_impl(&dword_22506F000, v40, OS_LOG_TYPE_INFO, "Warn: Caught an exception when trying to encode record: %@", &buf, 0xCu);
    }

    objc_end_catch();
    JUMPOUT(0x22539E77CLL);
  }

  _Unwind_Resume(a1);
}

void sub_2253A1254(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    v10 = objc_begin_catch(exception_object);
    if (objc_msgSend_errorCode(v10, v11, v12) == 1006 || objc_msgSend_errorCode(v10, v13, v14) == 1009)
    {
      v15 = MEMORY[0x277CBC560];
      v16 = objc_msgSend_reason(v10, v13, v14);
      v18 = objc_msgSend_errorWithDomain_code_format_(v15, v17, *MEMORY[0x277CBC120], 1009, @"Invalid predicate: %@");
    }

    else
    {
      v18 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v13, *MEMORY[0x277CBC120], 1000, @"Unknown error %@");
      v16 = 0;
    }

    if (v9)
    {
      v19 = v18;
      *v9 = v18;
    }

    objc_end_catch();
    JUMPOUT(0x2253A1074);
  }

  _Unwind_Resume(exception_object);
}

void sub_2253A4454(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v10 = objc_opt_new();
  objc_msgSend_setKey_(v10, v7, v6);

  objc_msgSend_setValues_(v10, v8, v5);
  objc_msgSend_addObject_(*(a1 + 32), v9, v10);
}

void sub_2253A45E0(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_key(v3, v4, v5);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = objc_msgSend_values(v3, v7, v8, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v23, v27, 16);
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      v14 = 0;
      do
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v23 + 1) + 8 * v14);
        v16 = *(a1 + 32);
        v17 = objc_alloc(MEMORY[0x277CBC2B0]);
        v19 = objc_msgSend_initWithLevel_name_value_(v17, v18, *(a1 + 40), v6, v15);
        objc_msgSend_addObject_(v16, v20, v19);

        ++v14;
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v21, &v23, v27, 16);
    }

    while (v12);
  }

  v22 = *MEMORY[0x277D85DE8];
}

BOOL sub_2253A8890(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  v6 = *MEMORY[0x277CBC7F8];
  v7 = (*(a1 + v6) & 1) == 0 || (v4[v6] & 1) == 0 || *(a1 + *MEMORY[0x277CBC7F0]) == *&v4[*MEMORY[0x277CBC7F0]];
  v8 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v5, v9, v8) || (v11 = *MEMORY[0x277CBC808], v12 = *(a1 + v11), v13 = *&v5[v11], v12 | v13) && !objc_msgSend_isEqual_(v12, v10, v13) || (v14 = *MEMORY[0x277CBC800], v15 = *(a1 + v14), v16 = *&v5[v14], v15 | v16) && !objc_msgSend_isEqual_(v15, v10, v16))
  {
    v7 = 0;
  }

  return v7;
}

void sub_2253AAD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2253AADAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_objectRepresentationFromFieldValue_(*(a1 + 32), v4, v3);
  if (v7)
  {
    if (objc_msgSend_type(v3, v5, v6) == 6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 24);
        *(v9 + 24) = v10 + 1;
        objc_msgSend_setArrayIndex_(v7, v8, v10);
      }
    }
  }

  return v7;
}

void sub_2253AB91C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v8 = a2;
  v5 = objc_msgSend_predicateForMatchingLookupInfoInContainer(v2, v3, v4);
  objc_msgSend_setSearchPredicate_(v8, v6, v5);

  objc_msgSend_setFetchedProperties_(v8, v7, &unk_2838C8F40);
}

void sub_2253AC6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2253AC71C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2253AC734(uint64_t a1, const char *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_objectAtIndex_(*(a1 + 32), a2, 0);
  objc_msgSend_removeObjectAtIndex_(*(a1 + 32), v4, 0);
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
    v7 = objc_msgSend_error(v3, v5, v6);
    v8 = *(*(a1 + 56) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(*(a1 + 64) + 8) + 40);
  if (v10)
  {
    (*(v10 + 16))();
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = 0;
  }

  if (objc_msgSend_count(*(a1 + 32), v5, v6))
  {
    v14 = objc_msgSend_objectAtIndex_(*(a1 + 32), v13, 0);
    v17 = objc_msgSend_completionBlock(v14, v15, v16);
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    objc_msgSend_setCompletionBlock_(v14, v20, *(*(*(a1 + 72) + 8) + 40));
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v21 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v32 = 138412290;
      v33 = v14;
      _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "Executing chained batched requests, triggering %@", &v32, 0xCu);
    }

    objc_msgSend_performRequest_(*(a1 + 40), v22, v14);
  }

  else
  {
    v23 = *MEMORY[0x277CBC878];
    v24 = *MEMORY[0x277CBC880];
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v23);
      }

      v25 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v26 = *(*(*(a1 + 56) + 8) + 40);
        v32 = 138412290;
        v33 = v26;
        _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Fetching public identities failed: %@", &v32, 0xCu);
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v23);
      }

      v27 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v32) = 0;
        _os_log_debug_impl(&dword_22506F000, v27, OS_LOG_TYPE_DEBUG, "Fetching public identities completed", &v32, 2u);
      }
    }

    v28 = *(*(a1 + 72) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = 0;

    objc_msgSend_finishWithError_(*(a1 + 48), v30, *(*(*(a1 + 56) + 8) + 40));
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_2253ACCD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2253ACCFC(void **a1, void *a2, void *a3, void *a4)
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v12 = v9;
  v13 = MEMORY[0x277CBC880];
  if (v8)
  {
    v14 = MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC810] == 1)
    {
      v15 = objc_msgSend_unitTestOverrides(a1[4], v10, v11);
      v17 = objc_msgSend_objectForKeyedSubscript_(v15, v16, @"GenerateOONPrivateKey");

      if (v17)
      {
        if (*v13 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *v14);
        }

        v18 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "Forcing OON private key generation due to unit test", buf, 2u);
        }

        objc_msgSend_setPublicSharingKey_(v8, v19, 0);
      }
    }

    v20 = objc_msgSend_publicSharingKey(v8, v10, v11);

    v21 = *v14;
    v22 = *v13;
    if (v20)
    {
      if (*v13 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v21);
      }

      v23 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v59 = v23;
        v62 = objc_msgSend_publicSharingKey(v8, v60, v61);
        *buf = 138412546;
        v66 = v8;
        v67 = 2114;
        v68 = v62;
        _os_log_debug_impl(&dword_22506F000, v59, OS_LOG_TYPE_DEBUG, "Saving user identity %@ with publicSharingKey %{public}@", buf, 0x16u);
      }

      objc_msgSend__saveUserIdentity_forLookupInfo_(a1[5], v24, v8, v7);
    }

    else
    {
      if (*v13 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v21);
      }

      v40 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v66 = v8;
        _os_log_debug_impl(&dword_22506F000, v40, OS_LOG_TYPE_DEBUG, "Got OON user identity %@", buf, 0xCu);
      }

      WeakRetained = objc_loadWeakRetained(a1[5] + 1);
      v44 = objc_msgSend_container(WeakRetained, v42, v43);
      v47 = objc_msgSend_pcsManager(v44, v45, v46);
      v64 = 0;
      v49 = objc_msgSend_generateOONPrivateKeyWithError_(v47, v48, &v64);
      v50 = v64;

      if (v50)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *v14);
        }

        v52 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v66 = v50;
          _os_log_error_impl(&dword_22506F000, v52, OS_LOG_TYPE_ERROR, "Error while generating private key for OON user identity: %@", buf, 0xCu);
        }

        v54 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v53, *MEMORY[0x277CBC120], 5005, v50, @"Error while generating private key for OON user identity: %@", v8);
        objc_msgSend__receivedUserIdentity_forLookupInfo_error_(a1[5], v55, 0, v7, v54);
      }

      else
      {
        objc_msgSend_setOutOfNetworkPrivateKey_(v8, v51, v49);
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *v14);
        }

        v56 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v66 = v8;
          _os_log_debug_impl(&dword_22506F000, v56, OS_LOG_TYPE_DEBUG, "Generated private key for OON user identity: %@", buf, 0xCu);
        }

        objc_msgSend__saveUserIdentity_forLookupInfo_(a1[5], v57, v8, v7);
      }
    }
  }

  else
  {
    if (v9 && objc_msgSend_hasError(v9, v10, v11))
    {
      v63 = MEMORY[0x277CBC560];
      v25 = *MEMORY[0x277CBC120];
      v26 = sub_2253962A4(v12);
      v27 = objc_loadWeakRetained(a1 + 6);
      v28 = sub_225395734(v27, v12);
      v31 = objc_msgSend_error(v12, v29, v30);
      v34 = objc_msgSend_errorDescription(v31, v32, v33);
      v35 = v26;
      v13 = MEMORY[0x277CBC880];
      v37 = objc_msgSend_errorWithDomain_code_userInfo_format_(v63, v36, v25, v35, v28, @"Error fetching user identity for %@ from server: %@", v7, v34);
    }

    else
    {
      v37 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, *MEMORY[0x277CBC120], 5000, @"Failed to fetch user identity for %@", v7);
    }

    if (*v13 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v38 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v66 = v7;
      v67 = 2112;
      v68 = v37;
      _os_log_debug_impl(&dword_22506F000, v38, OS_LOG_TYPE_DEBUG, "Failed to perform a user identity lookup for lookup info %@: %@", buf, 0x16u);
    }

    objc_msgSend__receivedUserIdentity_forLookupInfo_error_(a1[5], v39, 0, v7, v37);
  }

  v58 = *MEMORY[0x277D85DE8];
}

void sub_2253ADD34(uint64_t a1)
{
  v1 = *(a1 + 32);
  CKOncePerBoot();
}

uint64_t sub_2253ADDC0(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  qword_280D58578 = objc_msgSend_initInternal(v1, v2, v3);

  return MEMORY[0x2821F96F8]();
}

void sub_2253AE98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2253AE9B8(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_inlock_registrarForDSID_shouldCache_(*(a1 + 32), a2, *(a1 + 40), 1);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v7 = objc_msgSend_ensureRegistrationPresent_error_(v3, v6, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v7;
}

void sub_2253AF060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2253AF084(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_inlock_registrarForDSID_shouldCache_(*(a1 + 32), a2, *(a1 + 40), 1);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v7 = objc_msgSend_removeRegistration_error_(v3, v6, v4, &obj);
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v7;
}

void sub_2253AF5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2253AF5E8(uint64_t a1, const char *a2)
{
  v3 = objc_msgSend_inlock_registrarForDSID_shouldCache_(*(a1 + 32), a2, *(a1 + 40), 0);
  v4 = *(*(a1 + 64) + 8);
  obj = *(v4 + 40);
  v6 = objc_msgSend_removeAllRegistrations_(v3, v5, &obj);
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v6;
  v9 = objc_msgSend_registrars(*(a1 + 32), v7, v8);
  objc_msgSend_removeObjectForKey_(v9, v10, *(a1 + 48));
}

void sub_2253AF70C(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = MEMORY[0x277CBC830];
  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22506F000, v4, OS_LOG_TYPE_INFO, "Removing all tokens from PDS", buf, 2u);
  }

  v7 = objc_msgSend_inlock_registrar(*(a1 + 32), v5, v6);
  v31 = 0;
  v9 = objc_msgSend_activeUsersWithError_(v7, v8, &v31);
  v10 = v31;

  if (!v9)
  {
    if (*v2 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v10;
      _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "Unable to iterate active users: %@", buf, 0xCu);
    }
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v9;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v27, v32, 16);
  if (v14)
  {
    v16 = v14;
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = objc_msgSend_inlock_registrarForUser_shouldCache_(*(a1 + 32), v15, *(*(&v27 + 1) + 8 * i), 0, v27);
        objc_msgSend_removeAllRegistrations_(v19, v20, 0);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v27, v32, 16);
    }

    while (v16);
  }

  v23 = objc_msgSend_registrars(*(a1 + 32), v21, v22);
  objc_msgSend_removeAllObjects(v23, v24, v25);

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2253B0424(uint64_t a1, const char *a2)
{
  qword_280D58588 = objc_msgSend_dictionaryWithCapacity_(MEMORY[0x277CBEB38], a2, 4);

  return MEMORY[0x2821F96F8]();
}

void sub_2253B0660(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    objc_msgSend_setDelegate_(WeakRetained[2], v2, 0);
    WeakRetained = v3;
  }
}

void sub_2253B0760(uint64_t a1, const char *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_apsConnection(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_publicToken(v4, v5, v6);

  v8 = *MEMORY[0x277CBC878];
  v9 = *MEMORY[0x277CBC880];
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v18 = 138543362;
      v19 = v7;
      _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Returning public token %{public}@", &v18, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "No public token yet", &v18, 2u);
    }

    v14 = objc_msgSend_completionBlocks(*(a1 + 32), v12, v13);
    v15 = _Block_copy(*(a1 + 40));
    objc_msgSend_addObject_(v14, v16, v15);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2253B0B4C(uint64_t a1, const char *a2)
{
  v6 = objc_msgSend_notificationWithName_object_userInfo_(MEMORY[0x277CCAB88], a2, @"CKDPushConnectionDidReceivePublicTokenNotification", *(a1 + 32), 0);
  v4 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], v2, v3);
  objc_msgSend_postNotification_(v4, v5, v6);
}

void sub_2253B0BCC(uint64_t a1, const char *a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_completionBlocks(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_completionBlocks(*(a1 + 32), v5, v6);
  objc_msgSend_removeAllObjects(v7, v8, v9);

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v4;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v19, v23, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(a1 + 40);
        (*(*(*(&v19 + 1) + 8 * v15) + 16))(*(*(&v19 + 1) + 8 * v15));
        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v17, &v19, v23, 16);
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2253B10E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2253B1100(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_msgSend_operation(WeakRetained, v1, v2);
  v6 = objc_msgSend_error(WeakRetained, v4, v5);
  objc_msgSend_finishWithError_(v3, v7, v6);
}

void sub_2253B18F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2253B193C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2253B19E8;
  v7[3] = &unk_2785470C0;
  v8 = v3;
  v5 = v3;
  objc_msgSend_refreshAllClientsNow_completionHandler_(WeakRetained, v6, 0, v7);
}

uint64_t sub_2253B19E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return MEMORY[0x2821F9670](v3, sel_setTaskExpiredWithRetryAfter_error_, 0);
  }

  else
  {
    return objc_msgSend_setTaskCompleted(v3, 0, a3);
  }
}

void sub_2253B1D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2253B1D50(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);
  (*(v1 + 16))(v1, v4);
}

void sub_2253B2094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2253B20BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = objc_msgSend_error(WeakRetained, v2, v3);
  (*(v1 + 16))(v1, v4);
}

void sub_2253B23EC(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  v6 = objc_msgSend_queue(*(a1 + 40), v4, v5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253B24DC;
  block[3] = &unk_2785498F0;
  v11 = v3;
  v12 = *(a1 + 32);
  v7 = *(a1 + 48);
  v8 = *(a1 + 40);
  v13 = v7;
  v14 = v8;
  v15 = *(a1 + 56);
  v9 = v3;
  dispatch_async(v6, block);
}

void sub_2253B24DC(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = MEMORY[0x277CBC830];
  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v61 = *(a1 + 32);
    v62 = v4;
    v65 = objc_msgSend_appContainerTuple(v61, v63, v64);
    v68 = objc_msgSend_accountID(*(a1 + 32), v66, v67);
    *buf = 138412546;
    v77 = v65;
    v78 = 2112;
    v79 = v68;
    _os_log_debug_impl(&dword_22506F000, v62, OS_LOG_TYPE_DEBUG, "Checking push token for container tuple %@, accountID %@", buf, 0x16u);
  }

  v7 = objc_msgSend_appContainerTuple(*(a1 + 32), v5, v6);
  v10 = objc_msgSend_containerID(v7, v8, v9);
  isTestContainer = objc_msgSend_isTestContainer(v10, v11, v12);

  if (isTestContainer)
  {
    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v16 = objc_msgSend_metadataCache(*(a1 + 48), v14, v15);
    v19 = objc_msgSend_applicationID(v7, v17, v18);
    v21 = objc_msgSend_applicationMetadataForApplicationID_(v16, v20, v19);

    v22 = *(a1 + 32);
    v25 = objc_msgSend_deviceContext(*(a1 + 56), v23, v24);
    v28 = objc_msgSend_sharedInternalUseContainers(CKDContainer, v26, v27);
    v30 = objc_msgSend_containerWithAppContainerAccountTuple_deviceContext_sharedContainerTable_(CKDContainer, v29, v22, v25, v28);

    v33 = objc_msgSend_adopterProcessType(v21, v31, v32);
    v36 = objc_msgSend_adopterProcessType(v30, v34, v35);
    if (v33 == 4 || v36 != 4)
    {
      if (*(a1 + 64) == 1)
      {
        if (*v2 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v42 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v77 = v7;
          _os_log_debug_impl(&dword_22506F000, v42, OS_LOG_TYPE_DEBUG, "Tossing push token for container tuple %@", buf, 0xCu);
        }

        v45 = objc_msgSend_metadataCache(*(a1 + 48), v43, v44);
        objc_msgSend_setPushToken_forAppContainerAccountTuple_(v45, v46, 0, *(a1 + 32));
      }

      v47 = objc_msgSend_metadataCache(*(a1 + 48), v37, v38);
      v49 = objc_msgSend_appContainerAccountMetadataForAppContainerAccountTuple_(v47, v48, *(a1 + 32));

      if (objc_msgSend_tokenRegistered(v49, v50, v51) == 1)
      {
        v54 = objc_msgSend_apsEnvironmentString(v30, v52, v53);
        v56 = objc_msgSend_sharedConnectionForAPSEnvironmentString_(CKDPushConnection, v55, v54);

        if (*v2 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v57 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
        {
          v69 = v57;
          v72 = objc_msgSend_applicationBundleIdentifierForPush(v30, v70, v71);
          *buf = 138412546;
          v77 = v7;
          v78 = 2114;
          v79 = v72;
          _os_log_debug_impl(&dword_22506F000, v69, OS_LOG_TYPE_DEBUG, "Requesting token for container tuple %@, push bundle identifier %{public}@", buf, 0x16u);
        }

        v73[0] = MEMORY[0x277D85DD0];
        v73[1] = 3221225472;
        v73[2] = sub_2253B2AB0;
        v73[3] = &unk_27854D130;
        v73[4] = *(a1 + 56);
        v74 = v30;
        v75 = *(a1 + 40);
        objc_msgSend_getToken_(v56, v58, v73);
      }

      else
      {
        if (*v2 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v59 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v77 = v7;
          _os_log_debug_impl(&dword_22506F000, v59, OS_LOG_TYPE_DEBUG, "NOT requesting token for container tuple %@", buf, 0xCu);
        }

        dispatch_group_leave(*(a1 + 40));
      }
    }

    else
    {
      if (*v2 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v39 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v77 = v30;
        _os_log_impl(&dword_22506F000, v39, OS_LOG_TYPE_INFO, "Unregistering push token for %@ because it is no longer installed", buf, 0xCu);
      }

      objc_msgSend_unregisterTokenForAppContainerAccountTuple_(*(a1 + 56), v40, *(a1 + 32));
      if (*v2 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v41 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v77 = v7;
        _os_log_debug_impl(&dword_22506F000, v41, OS_LOG_TYPE_DEBUG, "NOT registering token for container tuple %@", buf, 0xCu);
      }

      dispatch_group_leave(*(a1 + 40));
    }
  }

  v60 = *MEMORY[0x277D85DE8];
}

void sub_2253B2AB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2253B2B50;
  v6[3] = &unk_278545A00;
  v7 = *(a1 + 48);
  objc_msgSend__handlePushToken_forContainer_completionBlock_(v3, v5, a2, v4, v6);
}

void sub_2253B2B58(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_metadataCache(*(a1 + 32), a2, a3);
  v12 = objc_msgSend_dateOfLastTokenUpdate(v4, v5, v6);

  if (!v12 || objc_msgSend_compare_(*(a1 + 40), v7, v12) == 1)
  {
    v9 = objc_msgSend_metadataCache(*(a1 + 32), v7, v8);
    objc_msgSend_setDateOfLastTokenUpdate_(v9, v10, *(a1 + 40));
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    (*(v11 + 16))(v11, 0);
  }
}

void sub_2253B2F4C(uint64_t a1, const char *a2, uint64_t a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_callbackTimers(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKey_(v4, v5, *(a1 + 40));

  if (v6)
  {
    dispatch_source_cancel(v6);
    v11 = objc_msgSend_callbackTimers(*(a1 + 32), v9, v10);
    objc_msgSend_removeObjectForKey_(v11, v12, *(a1 + 40));
  }

  v13 = objc_msgSend_unitTestingPushTokens(*(a1 + 32), v7, v8);

  v16 = *(a1 + 32);
  if (v13)
  {
    v17 = objc_msgSend_unitTestingPushTokens(v16, v14, v15);
    v19 = objc_msgSend_objectForKeyedSubscript_(v17, v18, *(a1 + 48));
  }

  else
  {
    v17 = objc_msgSend_deviceContext(v16, v14, v15);
    v22 = objc_msgSend_metadataCache(v17, v20, v21);
    v19 = objc_msgSend_pushTokenForAppContainerAccountTuple_filterOldTokens_(v22, v23, *(a1 + 40), 1);
  }

  if (v19 && objc_msgSend_isEqual_(v19, v24, *(a1 + 56)) && objc_msgSend_tokenRegistered(*(a1 + 64), v24, v25) == 1 || (objc_msgSend_unitTestingPushTokens(*(a1 + 32), v24, v25), v26 = objc_claimAutoreleasedReturnValue(), v26, !v6) && v26)
  {
    v27 = objc_msgSend_callbackBlocks(*(a1 + 32), v24, v25);
    v29 = objc_msgSend_objectForKey_(v27, v28, *(a1 + 40));

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v30 = v29;
    v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, &v56, v60, 16);
    if (v32)
    {
      v33 = v32;
      v34 = *v57;
      do
      {
        v35 = 0;
        do
        {
          if (*v57 != v34)
          {
            objc_enumerationMutation(v30);
          }

          (*(*(*(&v56 + 1) + 8 * v35++) + 16))();
        }

        while (v33 != v35);
        v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v36, &v56, v60, 16);
      }

      while (v33);
    }

    v39 = objc_msgSend_callbackBlocks(*(a1 + 32), v37, v38);
    objc_msgSend_removeObjectForKey_(v39, v40, *(a1 + 40));

    v41 = *(a1 + 80);
    if (v41)
    {
      (*(v41 + 16))();
    }
  }

  else
  {
    v42 = *(a1 + 32);
    v43 = objc_msgSend_apsToken(*(a1 + 56), v24, v25);
    v44 = *(a1 + 72);
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = sub_2253B3288;
    v52[3] = &unk_27854D180;
    *&v45 = *(a1 + 48);
    *(&v45 + 1) = *(a1 + 32);
    v51 = v45;
    v46 = *(a1 + 56);
    v47 = *(a1 + 40);
    *&v48 = v46;
    *(&v48 + 1) = v47;
    v53 = v51;
    v54 = v48;
    v55 = *(a1 + 80);
    objc_msgSend__refreshApsToken_container_completionBlock_(v42, v49, v43, v44, v52);

    v30 = v53;
  }

  v50 = *MEMORY[0x277D85DE8];
}

void sub_2253B3288(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *MEMORY[0x277CBC878];
  v5 = *MEMORY[0x277CBC880];
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v4);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138412546;
      v48 = v9;
      v49 = 2112;
      v50 = v3;
      v10 = "Warn: Failed to register push token for %@: %@";
      v11 = v6;
      v12 = 22;
LABEL_10:
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, v10, buf, v12);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v4);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      *buf = 138412290;
      v48 = v14;
      v10 = "Successfully registered push token for %@";
      v11 = v13;
      v12 = 12;
      goto LABEL_10;
    }
  }

  v15 = objc_msgSend_unitTestingPushTokens(*(a1 + 40), v7, v8);

  if (v15)
  {
    if (!v3)
    {
      v18 = objc_msgSend_queue(*(a1 + 40), v16, v17);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2253B35E4;
      block[3] = &unk_278546990;
      v40 = *(a1 + 32);
      v19 = v40.i64[0];
      v45 = vextq_s8(v40, v40, 8uLL);
      v46 = *(a1 + 48);
      dispatch_async(v18, block);
    }
  }

  else
  {
    v20 = objc_msgSend_deviceContext(*(a1 + 40), v16, v17);
    v23 = objc_msgSend_metadataCache(v20, v21, v22);
    v25 = objc_msgSend_appContainerAccountMetadataForAppContainerAccountTuple_(v23, v24, *(a1 + 56));

    v26 = CKTernaryFromBOOL();
    objc_msgSend_setTokenRegistered_(v25, v27, v26);
    v30 = objc_msgSend_metadataCache(v20, v28, v29);
    objc_msgSend_setAppContainerAccountMetadata_forAppContainerAccountTuple_(v30, v31, v25, *(a1 + 56));

    v34 = objc_msgSend_metadataCache(v20, v32, v33);
    objc_msgSend_setPushToken_forAppContainerAccountTuple_(v34, v35, *(a1 + 48), *(a1 + 56));
  }

  v36 = objc_msgSend_queue(*(a1 + 40), v16, v17, *&v40);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = sub_2253B3640;
  v41[3] = &unk_278546990;
  v41[4] = *(a1 + 40);
  v42 = *(a1 + 56);
  v37 = v3;
  v43 = v37;
  dispatch_async(v36, v41);

  v38 = *(a1 + 64);
  if (v38)
  {
    (*(v38 + 16))();
  }

  v39 = *MEMORY[0x277D85DE8];
}

void sub_2253B35E4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 48);
  v6 = objc_msgSend_unitTestingPushTokens(*(a1 + 32), a2, a3);
  objc_msgSend_setObject_forKeyedSubscript_(v6, v5, v4, *(a1 + 40));
}

void sub_2253B3640(uint64_t a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_callbackBlocks(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKey_(v4, v5, *(a1 + 40));
  v9 = objc_msgSend_copy(v6, v7, v8);

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v9;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v23, v27, 16);
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      v15 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(a1 + 48);
        (*(*(*(&v23 + 1) + 8 * v15) + 16))(*(*(&v23 + 1) + 8 * v15));
        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v17, &v23, v27, 16);
    }

    while (v13);
  }

  v20 = objc_msgSend_callbackBlocks(*(a1 + 32), v18, v19, v23);
  objc_msgSend_removeObjectForKey_(v20, v21, *(a1 + 40));

  v22 = *MEMORY[0x277D85DE8];
}

void sub_2253B3A34(uint64_t a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_deviceContext(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_metadataCache(v4, v5, v6);
  v9 = objc_msgSend_pushTokenForAppContainerAccountTuple_filterOldTokens_(v7, v8, *(a1 + 40), 0);

  if (v9)
  {
    v12 = objc_msgSend_metadataCache(v4, v10, v11);
    v14 = objc_msgSend_appContainerAccountMetadataForAppContainerAccountTuple_(v12, v13, *(a1 + 40));

    if (objc_msgSend_tokenRegistered(v14, v15, v16) == 1)
    {
      v19 = *(a1 + 32);
      v20 = objc_msgSend_apsToken(v9, v17, v18);
      v21 = *(a1 + 40);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = sub_2253B3C6C;
      v28[3] = &unk_27854D1D0;
      v29 = v14;
      v30 = v4;
      v31 = *(a1 + 40);
      objc_msgSend__removeApsToken_appContainerAccountTuple_completionBlock_(v19, v22, v20, v21, v28);
    }

    v23 = objc_msgSend_metadataCache(v4, v17, v18);
    objc_msgSend_setPushToken_forAppContainerAccountTuple_(v23, v24, 0, *(a1 + 40));
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v25 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v27 = *(a1 + 40);
      *buf = 138412290;
      v33 = v27;
      _os_log_debug_impl(&dword_22506F000, v25, OS_LOG_TYPE_DEBUG, "No registered token found for appContainerAccountTuple %@. Skipping token unregister.", buf, 0xCu);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_2253B3C6C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    objc_msgSend_setTokenRegistered_(*(a1 + 32), a2, 0);
    v7 = objc_msgSend_metadataCache(*(a1 + 40), v4, v5);
    objc_msgSend_setAppContainerAccountMetadata_forAppContainerAccountTuple_(v7, v6, *(a1 + 32), *(a1 + 48));
  }
}

void sub_2253B3F5C(uint64_t a1)
{
  v2 = dispatch_group_create();
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x3032000000;
  v23[3] = sub_2250741AC;
  v23[4] = sub_225073654;
  v24 = 0;
  v5 = objc_msgSend_deviceContext(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_metadataCache(v5, v6, v7);
  v9 = *(a1 + 40);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2253B4138;
  v18[3] = &unk_27854D220;
  v10 = v5;
  v19 = v10;
  v11 = v2;
  v12 = *(a1 + 32);
  v20 = v11;
  v21 = v12;
  v22 = v23;
  objc_msgSend_enumerateKnownAppContainerAccountTuplesForAccountID_usingBlock_(v8, v13, v9, v18);

  v14 = CKGetGlobalQueue();
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2253B44B0;
  v15[3] = &unk_27854B6F0;
  v16 = *(a1 + 48);
  v17 = v23;
  dispatch_group_notify(v11, v14, v15);

  _Block_object_dispose(v23, 8);
}

void sub_2253B4120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2253B4138(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_metadataCache(*(a1 + 32), v4, v5);
  v8 = objc_msgSend_pushTokenForAppContainerAccountTuple_filterOldTokens_(v6, v7, v3, 0);

  if (v8)
  {
    v11 = objc_msgSend_metadataCache(*(a1 + 32), v9, v10);
    v13 = objc_msgSend_appContainerAccountMetadataForAppContainerAccountTuple_(v11, v12, v3);

    v16 = objc_msgSend_metadataCache(*(a1 + 32), v14, v15);
    objc_msgSend_setPushToken_forAppContainerAccountTuple_(v16, v17, 0, v3);

    if (objc_msgSend_tokenRegistered(v13, v18, v19) == 1)
    {
      dispatch_group_enter(*(a1 + 40));
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v20 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v37 = v3;
        _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Unregistering token for %@", buf, 0xCu);
      }

      v23 = *(a1 + 48);
      v24 = objc_msgSend_apsToken(v8, v21, v22);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = sub_2253B4410;
      v30[3] = &unk_27854D1F8;
      v31 = v13;
      v32 = *(a1 + 32);
      v25 = v3;
      v26 = *(a1 + 56);
      v33 = v25;
      v35 = v26;
      v34 = *(a1 + 40);
      objc_msgSend__removeApsToken_appContainerAccountTuple_completionBlock_(v23, v27, v24, v25, v30);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v28 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v37 = v3;
      _os_log_debug_impl(&dword_22506F000, v28, OS_LOG_TYPE_DEBUG, "No registered token found for appContainerAccountTuple %@. Skipping token unregister.", buf, 0xCu);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

void sub_2253B4410(uint64_t a1, void *a2)
{
  v12 = a2;
  if (!v12)
  {
    objc_msgSend_setTokenRegistered_(*(a1 + 32), v4, 0);
    v7 = objc_msgSend_metadataCache(*(a1 + 40), v5, v6);
    objc_msgSend_setAppContainerAccountMetadata_forAppContainerAccountTuple_(v7, v8, *(a1 + 32), *(a1 + 48));
  }

  v9 = *(*(a1 + 64) + 8);
  v11 = *(v9 + 40);
  v10 = (v9 + 40);
  if (!v11)
  {
    objc_storeStrong(v10, a2);
  }

  dispatch_group_leave(*(a1 + 56));
}

uint64_t sub_2253B44B0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_2253B49F0(uint64_t a1, const char *a2, uint64_t a3)
{
  v96 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_callbackBlocks(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKey_(v4, v5, *(a1 + 40));

  if (!v6)
  {
    v12 = objc_msgSend_unitTestingPushTokens(*(a1 + 32), v7, v8);

    v15 = *(a1 + 32);
    if (v12)
    {
      v16 = objc_msgSend_unitTestingPushTokens(v15, v13, v14);
      v18 = objc_msgSend_objectForKeyedSubscript_(v16, v17, *(a1 + 48));
      v19 = v18 == 0;

      v20 = MEMORY[0x277CCACA8];
      v23 = objc_msgSend_accountID(*(a1 + 40), v21, v22);
      v25 = objc_msgSend_stringWithFormat_(v20, v24, @"For unit testing account %@, ", v23);

      v28 = 0;
      if (!v19)
      {
LABEL_6:
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v29 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          v75 = *(a1 + 48);
          v74 = *(a1 + 56);
          v76 = v29;
          v79 = objc_msgSend_apsEnvironmentString(v74, v77, v78);
          *handler = 138543874;
          *&handler[4] = v25;
          *&handler[12] = 2112;
          *&handler[14] = v75;
          *&handler[22] = 2112;
          v94 = v79;
          _os_log_debug_impl(&dword_22506F000, v76, OS_LOG_TYPE_DEBUG, "%{public}@Not refreshing token for %@ in environment %@, we're already registered", handler, 0x20u);
        }

        (*(*(a1 + 72) + 16))();
        v6 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    else
    {
      v30 = objc_msgSend_deviceContext(v15, v13, v14);
      v33 = objc_msgSend_metadataCache(v30, v31, v32);
      v28 = objc_msgSend_appContainerAccountMetadataForAppContainerAccountTuple_(v33, v34, *(a1 + 40));

      v25 = &stru_28385ED00;
      if (objc_msgSend_tokenRegistered(v28, v35, v36) == 1)
      {
        goto LABEL_6;
      }
    }

    v37 = *(a1 + 40);
    v38 = *(a1 + 64);
    v39 = objc_msgSend_sharedInternalUseContainers(CKDContainer, v26, v27);
    v41 = objc_msgSend_containerWithAppContainerAccountTuple_deviceContext_sharedContainerTable_(CKDContainer, v40, v37, v38, v39);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v42 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v80 = v42;
      v83 = objc_msgSend_apsEnvironmentString(v41, v81, v82);
      *handler = 138543874;
      *&handler[4] = v25;
      *&handler[12] = 2112;
      *&handler[14] = v41;
      *&handler[22] = 2112;
      v94 = v83;
      _os_log_debug_impl(&dword_22506F000, v80, OS_LOG_TYPE_DEBUG, "%{public}@Refreshing token for %@ in environment %@", handler, 0x20u);
    }

    v45 = MEMORY[0x277CBEB18];
    v46 = objc_msgSend_copy(*(a1 + 72), v43, v44);
    v6 = objc_msgSend_arrayWithObject_(v45, v47, v46);

    v50 = objc_msgSend_callbackBlocks(*(a1 + 32), v48, v49);
    objc_msgSend_setObject_forKey_(v50, v51, v6, *(a1 + 40));

    v54 = objc_msgSend_queue(*(a1 + 32), v52, v53);
    v55 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v54);

    objc_initWeak(&location, *(a1 + 32));
    v88[0] = MEMORY[0x277D85DD0];
    v88[1] = 3221225472;
    v88[2] = sub_2253B50B0;
    v88[3] = &unk_278546EE0;
    objc_copyWeak(&v91, &location);
    v89 = *(a1 + 40);
    v56 = v55;
    v90 = v56;
    v57 = v88;
    *handler = MEMORY[0x277D85DD0];
    *&handler[8] = 3221225472;
    *&handler[16] = sub_225087978;
    v94 = &unk_2785456A0;
    v95 = v57;
    dispatch_source_set_event_handler(v56, handler);

    v58 = dispatch_time(0, 30000000000);
    dispatch_source_set_timer(v56, v58, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
    v61 = objc_msgSend_callbackTimers(*(a1 + 32), v59, v60);
    objc_msgSend_setObject_forKey_(v61, v62, v56, *(a1 + 40));

    dispatch_resume(v56);
    v65 = objc_msgSend_apsEnvironmentString(v41, v63, v64);
    v67 = objc_msgSend_sharedConnectionForAPSEnvironmentString_(CKDPushConnection, v66, v65);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v68 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      v85 = *(a1 + 48);
      v84 = objc_msgSend_applicationBundleIdentifierForPush(v41, v69, v70);
      *handler = 138412546;
      *&handler[4] = v85;
      *&handler[12] = 2114;
      *&handler[14] = v84;
      _os_log_debug_impl(&dword_22506F000, v68, OS_LOG_TYPE_DEBUG, "Requesting token for container tuple %@, push bundle identifier %{public}@", handler, 0x16u);
    }

    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = sub_2253B526C;
    v86[3] = &unk_27854D248;
    v86[4] = *(a1 + 32);
    v71 = v41;
    v87 = v71;
    objc_msgSend_getToken_(v67, v72, v86);

    objc_destroyWeak(&v91);
    objc_destroyWeak(&location);

    goto LABEL_21;
  }

  v9 = *(a1 + 72);
  if (v9)
  {
    v10 = objc_msgSend_copy(v9, v7, v8);
    objc_msgSend_addObject_(v6, v11, v10);
  }

LABEL_22:

  v73 = *MEMORY[0x277D85DE8];
}

void sub_2253B5084(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2253B50B0(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = objc_msgSend_callbackBlocks(WeakRetained, v2, v3);
  v6 = objc_msgSend_objectForKey_(v4, v5, *(a1 + 32));

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v6;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v27, v31, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v28;
    v13 = *MEMORY[0x277CBC120];
    do
    {
      v14 = 0;
      do
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v15 = *(*(&v27 + 1) + 8 * v14);
        v16 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v10, v13, 1015, @"Failed to get push token");
        (*(v15 + 16))(v15, v16);

        ++v14;
      }

      while (v11 != v14);
      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v27, v31, 16);
    }

    while (v11);
  }

  v19 = objc_msgSend_callbackBlocks(WeakRetained, v17, v18);
  objc_msgSend_removeObjectForKey_(v19, v20, *(a1 + 32));

  dispatch_source_cancel(*(a1 + 40));
  v23 = objc_msgSend_callbackTimers(WeakRetained, v21, v22);
  objc_msgSend_removeObjectForKey_(v23, v24, *(a1 + 32));

  v25 = *MEMORY[0x277D85DE8];
}

void sub_2253B6858(uint64_t a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_count(*(a1 + 32), a2, a3))
  {
    v5 = *(a1 + 32);
    v4 = *(a1 + 40);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_2253B6950;
    v11[3] = &unk_27854D2C0;
    v14 = *(a1 + 56);
    v6 = *(a1 + 48);
    v7 = *(a1 + 40);
    v12 = v6;
    v13 = v7;
    objc_msgSend_encryptShareTuples_withCompletionBlock_(v4, v8, v5, v11);
  }

  else
  {
    v9 = *(a1 + 56);
    if (v9)
    {
      v10 = *(v9 + 16);

      v10();
    }
  }
}

void sub_2253B6950(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_msgSend_count(v5, v7, v8))
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = sub_2253B6A90;
    v21 = &unk_2785488E0;
    v22 = v5;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v23 = v9;
    v24 = v10;
    v25 = v11;
    v12 = _Block_copy(&v18);
    v15 = objc_msgSend_zonePCSData(*(a1 + 40), v13, v14, v18, v19, v20, v21);

    if (v15)
    {
      v12[2](v12);
    }

    else
    {
      objc_msgSend__lockedFetchSystemZonePCSDataWithCompletion_(*(a1 + 40), v16, v12);
    }
  }

  else
  {
    v17 = *(a1 + 48);
    if (v17)
    {
      (*(v17 + 16))(v17, v6);
    }
  }
}

void sub_2253B6A90(uint64_t *a1)
{
  v2 = objc_alloc_init(CKDAddAnonymousShareToSharedDBOperationInfo);
  objc_msgSend_setEncryptedAnonymousSharesToAdd_(v2, v3, a1[4]);
  v4 = a1[5];
  v5 = objc_opt_class();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2253B6B60;
  v8[3] = &unk_27854C670;
  v6 = a1[7];
  v8[4] = a1[6];
  v9 = v6;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(v4, v7, v5, v2, v8);
}

void sub_2253B6B60(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2253B6C50;
  v6[3] = &unk_27854D298;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  objc_copyWeak(&v8, &location);
  objc_msgSend_setCompletionBlock_(v3, v5, v6);
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void sub_2253B6C34(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2253B6C50(void **a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_synchronizeQueue(a1[4], a2, a3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2253B6D0C;
  v5[3] = &unk_278547F28;
  v6 = a1[5];
  objc_copyWeak(&v7, a1 + 6);
  dispatch_async(v4, v5);

  objc_destroyWeak(&v7);
}

void sub_2253B6D0C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = objc_msgSend_error(WeakRetained, v2, v3);
    (*(v1 + 16))(v1, v4);
  }
}

void sub_2253B6E8C(uint64_t a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(*(a1 + 32), a2, a3))
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v5 = *(a1 + 32);
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v29, v33, 16);
    if (v7)
    {
      v8 = v7;
      v9 = *v30;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v30 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v29 + 1) + 8 * i);
          v12 = [CKDAnonymousShareTuple alloc];
          v14 = objc_msgSend_initWithZoneID_shareID_parentZoneID_(v12, v13, v11, 0, 0);
          objc_msgSend_addObject_(v4, v15, v14);
        }

        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v16, &v29, v33, 16);
      }

      while (v8);
    }

    v17 = *(a1 + 40);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_2253B70B8;
    v25[3] = &unk_27854D2C0;
    v28 = *(a1 + 56);
    v18 = *(a1 + 48);
    v19 = *(a1 + 40);
    v26 = v18;
    v27 = v19;
    objc_msgSend_encryptShareTuples_withCompletionBlock_(v17, v20, v4, v25);

    goto LABEL_10;
  }

  v22 = *(a1 + 56);
  if (!v22)
  {
LABEL_10:
    v21 = *MEMORY[0x277D85DE8];
    return;
  }

  v23 = *(v22 + 16);
  v24 = *MEMORY[0x277D85DE8];

  v23();
}

void sub_2253B70B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (objc_msgSend_count(v5, v7, v8))
  {
    v18 = MEMORY[0x277D85DD0];
    v19 = 3221225472;
    v20 = sub_2253B71F8;
    v21 = &unk_2785488E0;
    v22 = v5;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v23 = v9;
    v24 = v10;
    v25 = v11;
    v12 = _Block_copy(&v18);
    v15 = objc_msgSend_zonePCSData(*(a1 + 40), v13, v14, v18, v19, v20, v21);

    if (v15)
    {
      v12[2](v12);
    }

    else
    {
      objc_msgSend__lockedFetchSystemZonePCSDataWithCompletion_(*(a1 + 40), v16, v12);
    }
  }

  else
  {
    v17 = *(a1 + 48);
    if (v17)
    {
      (*(v17 + 16))(v17, v6);
    }
  }
}

void sub_2253B71F8(uint64_t *a1)
{
  v2 = objc_alloc_init(CKDRemoveAnonymousShareFromSharedDBOperationInfo);
  objc_msgSend_setEncryptedAnonymousSharesToRemove_(v2, v3, a1[4]);
  v4 = a1[5];
  v5 = objc_opt_class();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2253B72C8;
  v8[3] = &unk_27854C670;
  v6 = a1[7];
  v8[4] = a1[6];
  v9 = v6;
  objc_msgSend_spawnAndRunOperationOfClass_operationInfo_operationConfigurationBlock_(v4, v7, v5, v2, v8);
}

void sub_2253B72C8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_initWeak(&location, v3);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2253B73B8;
  v6[3] = &unk_27854D298;
  v4 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v4;
  objc_copyWeak(&v8, &location);
  objc_msgSend_setCompletionBlock_(v3, v5, v6);
  objc_destroyWeak(&v8);

  objc_destroyWeak(&location);
}

void sub_2253B739C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2253B73B8(void **a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_synchronizeQueue(a1[4], a2, a3);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2253B7474;
  v5[3] = &unk_278547F28;
  v6 = a1[5];
  objc_copyWeak(&v7, a1 + 6);
  dispatch_async(v4, v5);

  objc_destroyWeak(&v7);
}

void sub_2253B7474(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v4 = objc_msgSend_error(WeakRetained, v2, v3);
    (*(v1 + 16))(v1, v4);
  }
}

void sub_2253B75CC(void **a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zonePCSData(a1[4], a2, a3);

  if (v4)
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[6];

    objc_msgSend__locked_encryptShareTuples_withCompletionBlock_(v6, v5, v7, v8);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "encryptShareTuple zonePCSData not available yet", buf, 2u);
    }

    v10 = a1[4];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2253B772C;
    v12[3] = &unk_278546C30;
    v12[4] = v10;
    v13 = a1[5];
    v14 = a1[6];
    objc_msgSend__lockedFetchSystemZonePCSDataWithCompletion_(v10, v11, v12);
  }
}

void sub_2253B772C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2253B77BC;
  v4[3] = &unk_27854D310;
  v5 = *(a1 + 48);
  objc_msgSend__locked_encryptShareTuples_withCompletionBlock_(v1, v3, v2, v4);
}

void sub_2253B7E98(void **a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_zonePCSData(a1[4], a2, a3);

  if (v4)
  {
    v6 = a1[4];
    v7 = a1[5];
    v8 = a1[6];

    objc_msgSend__locked_decryptShareTuple_withCompletionBlock_(v6, v5, v7, v8);
  }

  else
  {
    objc_initWeak(&location, a1[4]);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "decryptShareTuple zonePCSData not available yet", buf, 2u);
    }

    v10 = a1[4];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2253B8044;
    v12[3] = &unk_278545830;
    objc_copyWeak(&v15, &location);
    v13 = a1[5];
    v14 = a1[6];
    objc_msgSend__lockedFetchSystemZonePCSDataWithCompletion_(v10, v11, v12);

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }
}

void sub_2253B8028(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2253B8044(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_msgSend__locked_decryptShareTuple_withCompletionBlock_(WeakRetained, v2, *(a1 + 32), *(a1 + 40));
}

void sub_2253B8878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  objc_destroyWeak((v12 + 72));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v13 - 120));
  _Unwind_Resume(a1);
}

void sub_2253B88C0(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v13 = *(a1 + 48);
      *buf = 138412546;
      v28 = v13;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Warn: Couldn't fetch PCS for zone %@: %@", buf, 0x16u);
    }

    v14 = *(*(a1 + 64) + 8);
    if (!*(v14 + 40))
    {
      v15 = v6;
      v16 = *(v14 + 40);
      *(v14 + 40) = v15;
LABEL_10:
    }
  }

  else if (objc_msgSend_pcs(v5, v7, v8) || objc_msgSend_databaseScope(*(a1 + 32), v11, v12) == 3 && (objc_msgSend_pcsData(v5, v11, v12), v20 = objc_claimAutoreleasedReturnValue(), v20, v20))
  {
    v17 = objc_msgSend_synchronizeQueue(*(a1 + 40), v11, v12);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2253B8B44;
    block[3] = &unk_278546990;
    v24 = *(a1 + 48);
    v25 = WeakRetained;
    v26 = v5;
    dispatch_async(v17, block);

    v16 = v24;
    goto LABEL_10;
  }

  if (*(a1 + 56))
  {
    v18 = objc_msgSend_synchronizeQueue(*(a1 + 40), v11, v12);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = sub_2253B8C24;
    v21[3] = &unk_2785456A0;
    v22 = *(a1 + 56);
    dispatch_async(v18, v21);
  }

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2253B8B44(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_22506F000, v2, OS_LOG_TYPE_INFO, "Fetched PCS for zone %@:", &v7, 0xCu);
  }

  result = objc_msgSend_setZonePCSData_(*(a1 + 40), v3, *(a1 + 48));
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

id sub_2253B940C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v6 = objc_msgSend_data(v2, v4, v5);
  objc_msgSend_setWrappedInvocationKey_(v3, v7, v6);

  v10 = objc_msgSend_routingToken(v2, v8, v9);

  objc_msgSend_setRoutingToken_(v3, v11, v10);

  return v3;
}

SecCertificateRef sub_2253BC274(uint64_t a1, const __CFData *a2)
{
  v2 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], a2);

  return v2;
}

SecCertificateRef sub_2253BD320(uint64_t a1, const __CFData *a2)
{
  v2 = SecCertificateCreateWithData(*MEMORY[0x277CBECE8], a2);

  return v2;
}

void sub_2253BE7FC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v10 = objc_opt_new();
  objc_msgSend_setHeaderKey_(v10, v7, v6);

  objc_msgSend_setHeaderValue_(v10, v8, v5);
  objc_msgSend_addContentRequestHeaders_(*(a1 + 32), v9, v10);
}

id sub_2253C2AB0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = objc_msgSend_operationType(v4, v5, v6);
  v9 = objc_msgSend_operationRequestWithType_(v4, v8, v7);
  v12 = objc_msgSend_mergeableValueIDsByRequestID(*(a1 + 32), v10, v11);
  v15 = objc_msgSend_request(v9, v13, v14);
  v18 = objc_msgSend_operationUUID(v15, v16, v17);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v19, v3, v18);

  if (!objc_msgSend_requiresCKAnonymousUserIDs(*(a1 + 32), v20, v21))
  {
    goto LABEL_4;
  }

  v24 = objc_msgSend_zoneID(v3, v22, v23);
  v27 = objc_msgSend_anonymousCKUserID(v24, v25, v26);

  if (v27)
  {
    v30 = objc_msgSend_zoneID(v3, v28, v29);
    v33 = objc_msgSend_anonymousCKUserID(v30, v31, v32);
    v36 = objc_msgSend_CKDPIdentifier_User(v33, v34, v35);
    v39 = objc_msgSend_request(v9, v37, v38);
    objc_msgSend_setAnonymousCKUserID_(v39, v40, v36);

LABEL_4:
    v41 = objc_opt_new();
    v44 = objc_msgSend_translator(*(a1 + 32), v42, v43);
    v46 = objc_msgSend_pMergeableValueIdentifierFromMergeableValueID_(v44, v45, v3);
    objc_msgSend_setIdentifier_(v41, v47, v46);

    v50 = objc_msgSend_previousContinuationTokens(*(a1 + 32), v48, v49);
    v52 = objc_msgSend_objectForKeyedSubscript_(v50, v51, v3);

    if (v52)
    {
      objc_msgSend_setContinuation_(v41, v53, v52);
    }

    objc_msgSend_setMergeableDeltaRetrieveRequest_(v9, v53, v41);
    v54 = v9;
    goto LABEL_7;
  }

  v41 = objc_opt_new();
  v52 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v56, @"An anonymousCKUserID is required to fetch %@ when using anonymous to server share participants", v3);
  objc_msgSend_setObject_forKeyedSubscript_(v41, v57, v52, *MEMORY[0x277CCA450]);
  v60 = objc_msgSend_operation(*(a1 + 32), v58, v59);
  v63 = objc_msgSend_topmostParentOperation(v60, v61, v62);

  v67 = objc_msgSend_operationID(v63, v64, v65);
  if (v67)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v41, v66, v67, *MEMORY[0x277CBBF60]);
  }

  v68 = *(a1 + 32);
  v69 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v66, *MEMORY[0x277CBC120], 5015, v41);
  objc_msgSend_finishWithError_(v68, v70, v69);

  v54 = 0;
LABEL_7:

  return v54;
}

id sub_2253C37A8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_valueID(a2, a2, a3);
  v6 = objc_msgSend_recordID(v3, v4, v5);
  v9 = objc_msgSend_zoneID(v6, v7, v8);

  return v9;
}

id sub_2253C488C(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_valueID(a2, a2, a3);
  v6 = objc_msgSend_zoneID(v3, v4, v5);

  return v6;
}

void sub_2253C4DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2253C4E24(uint64_t a1, void *a2)
{
  v82 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = objc_msgSend_operationType(v4, v5, v6);
  v9 = objc_msgSend_operationRequestWithType_(v4, v8, v7);
  v12 = objc_msgSend_deltasByRequestID(*(a1 + 32), v10, v11);
  v15 = objc_msgSend_request(v9, v13, v14);
  v18 = objc_msgSend_operationUUID(v15, v16, v17);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v19, v3, v18);

  if (!objc_msgSend_requiresCKAnonymousUserIDs(*(a1 + 32), v20, v21))
  {
    goto LABEL_4;
  }

  v24 = objc_msgSend_valueID(v3, v22, v23);
  v27 = objc_msgSend_zoneID(v24, v25, v26);

  v30 = objc_msgSend_anonymousCKUserID(v27, v28, v29);

  if (v30)
  {
    v33 = objc_msgSend_anonymousCKUserID(v27, v31, v32);
    v36 = objc_msgSend_CKDPIdentifier_User(v33, v34, v35);
    v39 = objc_msgSend_request(v9, v37, v38);
    objc_msgSend_setAnonymousCKUserID_(v39, v40, v36);

LABEL_4:
    v41 = objc_msgSend_translator(*(a1 + 32), v22, v23);
    v44 = objc_msgSend_valueID(v3, v42, v43);
    v46 = objc_msgSend_pMergeableValueIdentifierFromMergeableValueID_(v41, v45, v44);

    v49 = objc_msgSend_translator(*(a1 + 32), v47, v48);
    v50 = *(*(a1 + 40) + 8);
    obj = *(v50 + 40);
    v52 = objc_msgSend_pMergeableDeltaFromDelta_error_(v49, v51, v3, &obj);
    objc_storeStrong((v50 + 40), obj);

    if (v52)
    {
      v53 = objc_alloc_init(CKDPMergeableDeltaSaveRequest);
      objc_msgSend_setIdentifier_(v53, v54, v46);
      objc_msgSend_setDelta_(v53, v55, v52);
      objc_msgSend_setMergeableDeltaSaveRequest_(v9, v56, v53);
      v57 = v9;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v58 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v78 = *(*(*(a1 + 40) + 8) + 40);
        *buf = 138412290;
        v81 = v78;
        _os_log_error_impl(&dword_22506F000, v58, OS_LOG_TYPE_ERROR, "Failed to generate delta proto with error: %@", buf, 0xCu);
      }

      v57 = 0;
    }

    goto LABEL_12;
  }

  v61 = objc_opt_new();
  v63 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v62, @"An anonymousCKUserID is required to upload mergeable deltas when using anonymous to server share participants");
  objc_msgSend_setObject_forKeyedSubscript_(v61, v64, v63, *MEMORY[0x277CCA450]);
  v67 = objc_msgSend_operation(*(a1 + 32), v65, v66);
  v70 = objc_msgSend_topmostParentOperation(v67, v68, v69);

  v74 = objc_msgSend_operationID(v70, v71, v72);
  if (v74)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v61, v73, v74, *MEMORY[0x277CBBF60]);
  }

  v75 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v73, *MEMORY[0x277CBC120], 5015, v61);
  v76 = *(*(a1 + 40) + 8);
  v77 = *(v76 + 40);
  *(v76 + 40) = v75;

  v57 = 0;
LABEL_12:

  v59 = *MEMORY[0x277D85DE8];

  return v57;
}

id sub_2253C6768(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = objc_msgSend_operationType(v4, v5, v6);
  v9 = objc_msgSend_operationRequestWithType_(v4, v8, v7);
  v10 = objc_opt_new();
  objc_msgSend_setArchiveRecordsRequest_(v9, v11, v10);

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v14 = objc_msgSend_zoneIDToRecordIDs(*(a1 + 32), v12, v13, 0);
  v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, v3);

  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v44, v48, 16);
  if (v18)
  {
    v21 = v18;
    v22 = *v45;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(v16);
        }

        v24 = *(*(&v44 + 1) + 8 * i);
        v25 = objc_msgSend_translator(*(a1 + 32), v19, v20);
        v27 = objc_msgSend_pRecordIdentifierFromRecordID_(v25, v26, v24);

        v30 = objc_msgSend_archiveRecordsRequest(v9, v28, v29);
        objc_msgSend_addIdsToArchive_(v30, v31, v27);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v44, v48, 16);
    }

    while (v21);
  }

  v34 = objc_msgSend_recordZoneIDByRequestID(*(a1 + 32), v32, v33);
  v37 = objc_msgSend_request(v9, v35, v36);
  v40 = objc_msgSend_operationUUID(v37, v38, v39);
  objc_msgSend_setObject_forKeyedSubscript_(v34, v41, v3, v40);

  v42 = *MEMORY[0x277D85DE8];

  return v9;
}

id sub_2253C7364(uint64_t a1, void *a2)
{
  v117 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v6 = objc_msgSend_configurationsByRecordZoneID(*(a1 + 32), v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, v3);

  v9 = *(a1 + 32);
  v12 = objc_msgSend_operationType(v9, v10, v11);
  v14 = objc_msgSend_operationRequestWithType_(v9, v13, v12);
  v15 = objc_opt_new();
  objc_msgSend_setFetchArchivedRecordsRequest_(v14, v16, v15);

  v19 = objc_msgSend_previousServerChangeToken(v8, v17, v18);
  v22 = objc_msgSend_data(v19, v20, v21);
  v25 = objc_msgSend_fetchArchivedRecordsRequest(v14, v23, v24);
  objc_msgSend_setArchiveContinuationToken_(v25, v26, v22);

  v29 = objc_msgSend_translator(*(a1 + 32), v27, v28);
  v31 = objc_msgSend_pRecordZoneIdentifierFromRecordZoneID_(v29, v30, v3);
  v34 = objc_msgSend_fetchArchivedRecordsRequest(v14, v32, v33);
  objc_msgSend_setZoneIdentifier_(v34, v35, v31);

  v38 = objc_msgSend_fetchArchivedRecordsRequest(v14, v36, v37);
  objc_msgSend_setNewestFirst_(v38, v39, 1);

  v42 = objc_msgSend_desiredAssetKeys(*(a1 + 32), v40, v41);
  v45 = objc_msgSend_count(v42, v43, v44);

  if (v45)
  {
    v111 = v8;
    v48 = objc_opt_new();
    v51 = objc_msgSend_fetchArchivedRecordsRequest(v14, v49, v50);
    objc_msgSend_setAssetsToDownload_(v51, v52, v48);

    v53 = objc_opt_new();
    v56 = objc_msgSend_fetchArchivedRecordsRequest(v14, v54, v55);
    v59 = objc_msgSend_assetsToDownload(v56, v57, v58);
    objc_msgSend_setAssetFields_(v59, v60, v53);

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v110 = a1;
    v63 = objc_msgSend_desiredAssetKeys(*(a1 + 32), v61, v62);
    v65 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v112, v116, 16);
    if (v65)
    {
      v66 = v65;
      v67 = *v113;
      do
      {
        for (i = 0; i != v66; ++i)
        {
          if (*v113 != v67)
          {
            objc_enumerationMutation(v63);
          }

          v69 = *(*(&v112 + 1) + 8 * i);
          v70 = objc_opt_new();
          objc_msgSend_setName_(v70, v71, v69);
          v74 = objc_msgSend_fetchArchivedRecordsRequest(v14, v72, v73);
          v77 = objc_msgSend_assetsToDownload(v74, v75, v76);
          v80 = objc_msgSend_assetFields(v77, v78, v79);
          objc_msgSend_addFields_(v80, v81, v70);
        }

        v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v82, &v112, v116, 16);
      }

      while (v66);
    }

    v8 = v111;
    a1 = v110;
  }

  else if (objc_msgSend_shouldFetchAssetContent(*(a1 + 32), v46, v47))
  {
    v85 = objc_opt_new();
    v88 = objc_msgSend_fetchArchivedRecordsRequest(v14, v86, v87);
    objc_msgSend_setAssetsToDownload_(v88, v89, v85);

    AssetContent = objc_msgSend_shouldFetchAssetContent(*(a1 + 32), v90, v91);
    v95 = objc_msgSend_fetchArchivedRecordsRequest(v14, v93, v94);
    v98 = objc_msgSend_assetsToDownload(v95, v96, v97);
    objc_msgSend_setAllAssets_(v98, v99, AssetContent);
  }

  v100 = objc_msgSend_zoneIDsByRequestOperationUUID(*(a1 + 32), v83, v84);
  v103 = objc_msgSend_request(v14, v101, v102);
  v106 = objc_msgSend_operationUUID(v103, v104, v105);
  objc_msgSend_setObject_forKeyedSubscript_(v100, v107, v3, v106);

  v108 = *MEMORY[0x277D85DE8];

  return v14;
}

void sub_2253C8FA4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v4 = a3;
  v11 = objc_msgSend_recordRetrieveRequest(v3, v5, v6);
  v9 = objc_msgSend_requestedFields(v11, v7, v8);
  objc_msgSend_addListField_(v9, v10, v4);
}

id sub_2253CA650(uint64_t a1, void *a2)
{
  v88 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = objc_msgSend_operationType(v4, v5, v6);
  v9 = objc_msgSend_operationRequestWithType_(v4, v8, v7);
  v10 = objc_opt_new();
  objc_msgSend_setRecordRetrieveVersionsRequest_(v9, v11, v10);

  v14 = objc_msgSend_translator(*(a1 + 32), v12, v13);
  v16 = objc_msgSend_pRecordIdentifierFromRecordID_(v14, v15, v3);
  v19 = objc_msgSend_recordRetrieveVersionsRequest(v9, v17, v18);
  objc_msgSend_setRecordIdentifier_(v19, v20, v16);

  v23 = objc_msgSend_desiredKeys(*(a1 + 32), v21, v22);

  if (v23)
  {
    v82 = v3;
    v26 = objc_opt_new();
    v29 = objc_msgSend_recordRetrieveVersionsRequest(v9, v27, v28);
    objc_msgSend_setRequestedFields_(v29, v30, v26);

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v33 = objc_msgSend_desiredKeys(*(a1 + 32), v31, v32);
    v35 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v34, &v83, v87, 16);
    if (v35)
    {
      v36 = v35;
      v37 = *v84;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v84 != v37)
          {
            objc_enumerationMutation(v33);
          }

          v39 = *(*(&v83 + 1) + 8 * i);
          v40 = objc_opt_new();
          objc_msgSend_setName_(v40, v41, v39);
          v44 = objc_msgSend_recordRetrieveVersionsRequest(v9, v42, v43);
          v47 = objc_msgSend_requestedFields(v44, v45, v46);
          objc_msgSend_addFields_(v47, v48, v40);
        }

        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v33, v49, &v83, v87, 16);
      }

      while (v36);
    }

    v3 = v82;
  }

  v50 = objc_msgSend_minimumVersionETag(*(a1 + 32), v24, v25);
  v53 = objc_msgSend_recordRetrieveVersionsRequest(v9, v51, v52);
  objc_msgSend_setMinimumVersionEtag_(v53, v54, v50);

  v55 = objc_opt_new();
  v58 = objc_msgSend_recordRetrieveVersionsRequest(v9, v56, v57);
  objc_msgSend_setAssetsToDownload_(v58, v59, v55);

  AssetContent = objc_msgSend_shouldFetchAssetContent(*(a1 + 32), v60, v61);
  v65 = objc_msgSend_recordRetrieveVersionsRequest(v9, v63, v64);
  v68 = objc_msgSend_assetsToDownload(v65, v66, v67);
  objc_msgSend_setAllAssets_(v68, v69, AssetContent);

  v72 = objc_msgSend_recordIDByRequestID(*(a1 + 32), v70, v71);
  v75 = objc_msgSend_request(v9, v73, v74);
  v78 = objc_msgSend_operationUUID(v75, v76, v77);
  objc_msgSend_setObject_forKeyedSubscript_(v72, v79, v3, v78);

  v80 = *MEMORY[0x277D85DE8];

  return v9;
}

void sub_2253CABA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_2253CABC8(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = objc_msgSend_translator(v3, v5, v6);
  v8 = *(*(a1 + 40) + 8);
  obj = *(v8 + 40);
  v10 = objc_msgSend_recordFromPRecord_error_(v7, v9, v4, &obj);

  objc_storeStrong((v8 + 40), obj);
  if (!v10)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(*(a1 + 40) + 8) + 40);
      *buf = 138412290;
      v17 = v14;
      _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "Invalid data from server: %@", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

id sub_2253D28F4(uint64_t a1, void *a2)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  v5 = objc_msgSend_sourceRecordID(v2, v3, v4);
  v8 = objc_msgSend_zoneID(v5, v6, v7);
  v22[0] = v8;
  v11 = objc_msgSend_destinationRecord(v2, v9, v10);

  v14 = objc_msgSend_recordID(v11, v12, v13);
  v17 = objc_msgSend_zoneID(v14, v15, v16);
  v22[1] = v17;
  v19 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v18, v22, 2);

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id sub_2253D6884(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = objc_msgSend_operationType(v4, v5, v6);
  v9 = objc_msgSend_operationRequestWithType_(v4, v8, v7);
  v10 = objc_opt_new();
  objc_msgSend_setRecordResolveTokenRequest_(v9, v11, v10);

  v14 = objc_msgSend_routingKey(v3, v12, v13);
  v17 = objc_msgSend_recordResolveTokenRequest(v9, v15, v16);
  objc_msgSend_setRoutingKey_(v17, v18, v14);

  v21 = objc_msgSend_shortSharingTokenHashData(v3, v19, v20);
  v24 = objc_msgSend_recordResolveTokenRequest(v9, v22, v23);
  objc_msgSend_setShortTokenHash_(v24, v25, v21);

  v28 = objc_msgSend_forceDSRefetch(v3, v26, v27);
  v31 = objc_msgSend_recordResolveTokenRequest(v9, v29, v30);
  objc_msgSend_setForceFetch_(v31, v32, v28);

  v35 = objc_msgSend_participantID(v3, v33, v34);

  if (v35)
  {
    v38 = objc_msgSend_participantID(v3, v36, v37);
    v41 = objc_msgSend_recordResolveTokenRequest(v9, v39, v40);
    objc_msgSend_setParticipantId_(v41, v42, v38);
  }

  v43 = objc_msgSend_rootRecordDesiredKeySet(*(a1 + 32), v36, v37);

  if (v43)
  {
    v46 = MEMORY[0x277CBEB18];
    v47 = objc_msgSend_rootRecordDesiredKeySet(*(a1 + 32), v44, v45);
    v50 = objc_msgSend_allObjects(v47, v48, v49);
    v52 = objc_msgSend_arrayWithArray_(v46, v51, v50);
    v55 = objc_msgSend_recordResolveTokenRequest(v9, v53, v54);
    objc_msgSend_setRootRecordDesiredKeys_(v55, v56, v52);
  }

  v57 = objc_msgSend_lookupInfosByRequestID(*(a1 + 32), v44, v45);
  v60 = objc_msgSend_request(v9, v58, v59);
  v63 = objc_msgSend_operationUUID(v60, v61, v62);
  objc_msgSend_setObject_forKeyedSubscript_(v57, v64, v3, v63);

  return v9;
}

void *sub_2253D8234(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = objc_msgSend_recordID(*(a1 + 40), v5, v6);
  v16 = 0;
  v9 = objc_msgSend_shareParticipantFromPParticipant_shareID_error_(v4, v8, v3, v7, &v16);
  v10 = v16;

  v11 = v9;
  if (v10)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v18 = v3;
      v19 = 2112;
      v20 = v10;
      _os_log_error_impl(&dword_22506F000, v12, OS_LOG_TYPE_ERROR, "Couldn't parse a potentially matching OON participant from %@: %@", buf, 0x16u);
    }

    v11 = 0;
  }

  v13 = v11;

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

void sub_2253E331C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v67 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = objc_opt_new();
  v12 = objc_msgSend_translator(*(a1 + 32), v10, v11);
  v15 = objc_msgSend_container(*(a1 + 32), v13, v14);
  v18 = objc_msgSend_deviceID(v15, v16, v17);
  v20 = objc_msgSend_pZoneUsageFromZoneID_at_withDeviceID_(v12, v19, v7, v8, v18);

  v63 = v20;
  v23 = objc_msgSend_data(v20, v21, v22);
  v26 = objc_msgSend_container(*(a1 + 32), v24, v25);
  v29 = objc_msgSend_pcsManager(v26, v27, v28);
  v64 = 0;
  v31 = objc_msgSend_createCloudKitFeaturesSignatureForData_forScope_error_(v29, v30, v23, 2, &v64);
  v32 = v64;

  if (v32 || !v31)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v66 = v32;
      _os_log_error_impl(&dword_22506F000, v33, OS_LOG_TYPE_ERROR, "Failed to generate signature for zone usage. Error: %{public}@", buf, 0xCu);
    }

    v35 = *(a1 + 32);
    v36 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v34, *MEMORY[0x277CBC120], 5023, v32, @"Failed to create cryptographic signature when saving zone usage.");
    objc_msgSend_finishWithError_(v35, v37, v36);

    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v38 = objc_opt_new();
  objc_msgSend_setVersion_(v38, v39, 1);
  objc_msgSend_setSerializedObject_(v38, v40, v23);
  objc_msgSend_setSignature_(v38, v41, v31);
  objc_msgSend_setSignedZoneUsage_(v9, v42, v38);
  v44 = objc_msgSend_operationRequestWithType_(*(a1 + 32), v43, 409);
  objc_msgSend_setZoneUsageSaveRequest_(v44, v45, v9);
  objc_msgSend_addObject_(*(a1 + 40), v46, v44);
  v49 = objc_msgSend_zoneIDByRequestID(*(a1 + 32), v47, v48);

  if (!v49)
  {
    v52 = objc_opt_new();
    objc_msgSend_setZoneIDByRequestID_(*(a1 + 32), v53, v52);
  }

  v54 = objc_msgSend_zoneIDByRequestID(*(a1 + 32), v50, v51);
  v57 = objc_msgSend_request(v44, v55, v56);
  v60 = objc_msgSend_operationUUID(v57, v58, v59);
  objc_msgSend_setObject_forKeyedSubscript_(v54, v61, v7, v60);

  v62 = *MEMORY[0x277D85DE8];
}

void sub_2253E3660(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v67 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = objc_opt_new();
  v12 = objc_msgSend_translator(*(a1 + 32), v10, v11);
  v15 = objc_msgSend_container(*(a1 + 32), v13, v14);
  v18 = objc_msgSend_deviceID(v15, v16, v17);
  v20 = objc_msgSend_pShareUsageFromShareRecordID_at_withDeviceID_(v12, v19, v7, v8, v18);

  v63 = v20;
  v23 = objc_msgSend_data(v20, v21, v22);
  v26 = objc_msgSend_container(*(a1 + 32), v24, v25);
  v29 = objc_msgSend_pcsManager(v26, v27, v28);
  v64 = 0;
  v31 = objc_msgSend_createCloudKitFeaturesSignatureForData_forScope_error_(v29, v30, v23, 3, &v64);
  v32 = v64;

  if (v32 || !v31)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v33 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v66 = v32;
      _os_log_error_impl(&dword_22506F000, v33, OS_LOG_TYPE_ERROR, "Failed to generate signature for share usage. Error: %{public}@", buf, 0xCu);
    }

    v35 = *(a1 + 32);
    v36 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v34, *MEMORY[0x277CBC120], 5023, v32, @"Failed to create cryptographic signature when saving share usage.");
    objc_msgSend_finishWithError_(v35, v37, v36);

    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v38 = objc_opt_new();
  objc_msgSend_setVersion_(v38, v39, 1);
  objc_msgSend_setSerializedObject_(v38, v40, v23);
  objc_msgSend_setSignature_(v38, v41, v31);
  objc_msgSend_setSignedShareUsage_(v9, v42, v38);
  v44 = objc_msgSend_operationRequestWithType_(*(a1 + 32), v43, 410);
  objc_msgSend_setShareUsageSaveRequest_(v44, v45, v9);
  objc_msgSend_addObject_(*(a1 + 40), v46, v44);
  v49 = objc_msgSend_shareIDByRequestID(*(a1 + 32), v47, v48);

  if (!v49)
  {
    v52 = objc_opt_new();
    objc_msgSend_setShareIDByRequestID_(*(a1 + 32), v53, v52);
  }

  v54 = objc_msgSend_shareIDByRequestID(*(a1 + 32), v50, v51);
  v57 = objc_msgSend_request(v44, v55, v56);
  v60 = objc_msgSend_operationUUID(v57, v58, v59);
  objc_msgSend_setObject_forKeyedSubscript_(v54, v61, v7, v60);

  v62 = *MEMORY[0x277D85DE8];
}

id sub_2253E52F4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v6 = objc_msgSend_translator(v2, v4, v5);
  v8 = objc_msgSend_containerPrivacySettingsFromPContainerPrivacySettings_(v6, v7, v3);

  return v8;
}

id sub_2253E563C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = objc_msgSend_translator(v3, v5, v6);
  v9 = objc_msgSend_pAliasWithIdentityLookupInfo_(v7, v8, v4);

  v10 = *(a1 + 32);
  v13 = objc_msgSend_operationType(v10, v11, v12);
  v15 = objc_msgSend_operationRequestWithType_(v10, v14, v13);
  v16 = objc_opt_new();
  objc_msgSend_setUserQueryRequest_(v15, v17, v16);

  v20 = objc_msgSend_userQueryRequest(v15, v18, v19);
  objc_msgSend_setAlias_(v20, v21, v9);

  v22 = *(*(a1 + 32) + 384);
  v25 = objc_msgSend_userQueryRequest(v15, v23, v24);
  objc_msgSend_setPublicKeyRequested_(v25, v26, v22);

  v27 = *(*(a1 + 32) + 408);
  v30 = objc_msgSend_request(v15, v28, v29);
  v33 = objc_msgSend_operationUUID(v30, v31, v32);
  objc_msgSend_setObject_forKeyedSubscript_(v27, v34, v4, v33);

  return v15;
}

void sub_2253E6F8C(uint64_t a1)
{
  v2 = dispatch_group_create();
  v5 = objc_msgSend_parserData(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_length(v5, v6, v7);

  if (v8)
  {
    v11 = MEMORY[0x277CCAAA0];
    v12 = objc_msgSend_parserData(*(a1 + 32), v9, v10);
    v43 = 0;
    v14 = objc_msgSend_JSONObjectWithData_options_error_(v11, v13, v12, 0, &v43);
    v15 = v43;

    objc_msgSend_setParserError_(*(a1 + 32), v16, v15);
    if (v14)
    {
      if (!v15)
      {
        v19 = objc_msgSend_objectParsedBlock(*(a1 + 32), v17, v18);

        if (v19)
        {
          dispatch_group_enter(v2);
          v22 = objc_msgSend_objectParsedBlock(*(a1 + 32), v20, v21);
          v25 = objc_msgSend_parserData(*(a1 + 32), v23, v24);
          v41[0] = MEMORY[0x277D85DD0];
          v41[1] = 3221225472;
          v41[2] = sub_2253E725C;
          v41[3] = &unk_278545A00;
          v26 = v2;
          v42 = v26;
          (v22)[2](v22, v14, v25, v41);

          if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_testRepeatedParseResults(*(a1 + 32), v27, v28))
          {
            dispatch_group_enter(v26);
            v31 = objc_msgSend_objectParsedBlock(*(a1 + 32), v29, v30);
            v34 = objc_msgSend_parserData(*(a1 + 32), v32, v33);
            v39[0] = MEMORY[0x277D85DD0];
            v39[1] = 3221225472;
            v39[2] = sub_2253E7264;
            v39[3] = &unk_278545A00;
            v40 = v26;
            (v31)[2](v31, v14, v34, v39);
          }
        }
      }
    }
  }

  if (*(a1 + 40))
  {
    objc_msgSend_qualityOfService(*(a1 + 32), v9, v10);
    v35 = CKGetGlobalQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2253E726C;
    block[3] = &unk_2785456C8;
    v36 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v38 = v36;
    dispatch_group_notify(v2, v35, block);
  }
}

void sub_2253E726C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend_parserError(*(a1 + 32), a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_2253E737C(uint64_t a1)
{
  v2 = dispatch_group_create();
  v5 = objc_msgSend_objectParsedBlock(*(a1 + 32), v3, v4);
  if (v5)
  {
    v8 = v5;
    v9 = objc_msgSend_parserData(*(a1 + 32), v6, v7);
    v12 = objc_msgSend_length(v9, v10, v11);

    if (v12)
    {
      dispatch_group_enter(v2);
      v15 = objc_msgSend_objectParsedBlock(*(a1 + 32), v13, v14);
      v18 = objc_msgSend_parserData(*(a1 + 32), v16, v17);
      v21 = objc_msgSend_parserData(*(a1 + 32), v19, v20);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = sub_2253E760C;
      v40[3] = &unk_278545A00;
      v22 = v2;
      v41 = v22;
      (v15)[2](v15, v18, v21, v40);

      if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_testRepeatedParseResults(*(a1 + 32), v23, v24))
      {
        dispatch_group_enter(v22);
        v27 = objc_msgSend_objectParsedBlock(*(a1 + 32), v25, v26);
        v30 = objc_msgSend_parserData(*(a1 + 32), v28, v29);
        v33 = objc_msgSend_parserData(*(a1 + 32), v31, v32);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = sub_2253E7614;
        v38[3] = &unk_278545A00;
        v39 = v22;
        (v27)[2](v27, v30, v33, v38);
      }
    }
  }

  if (*(a1 + 40))
  {
    objc_msgSend_qualityOfService(*(a1 + 32), v6, v7);
    v34 = CKGetGlobalQueue();
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2253E761C;
    v36[3] = &unk_2785456C8;
    v35 = *(a1 + 40);
    v36[4] = *(a1 + 32);
    v37 = v35;
    dispatch_group_notify(v2, v34, v36);
  }
}

void sub_2253E761C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend_parserError(*(a1 + 32), a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_2253E772C(uint64_t a1)
{
  v2 = dispatch_group_create();
  v5 = objc_msgSend_parserData(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_length(v5, v6, v7);

  if (v8)
  {
    v11 = MEMORY[0x277CCAC58];
    v12 = objc_msgSend_parserData(*(a1 + 32), v9, v10);
    v42 = 0;
    v14 = objc_msgSend_propertyListWithData_options_format_error_(v11, v13, v12, 0, 0, &v42);
    v15 = v42;

    if (v15)
    {
      objc_msgSend_setParserError_(*(a1 + 32), v16, v15);
    }

    v18 = objc_msgSend_objectParsedBlock(*(a1 + 32), v16, v17);

    if (v18 && v14)
    {
      dispatch_group_enter(v2);
      v21 = objc_msgSend_objectParsedBlock(*(a1 + 32), v19, v20);
      v24 = objc_msgSend_parserData(*(a1 + 32), v22, v23);
      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = sub_2253E7A00;
      v40[3] = &unk_278545A00;
      v25 = v2;
      v41 = v25;
      (v21)[2](v21, v14, v24, v40);

      if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_testRepeatedParseResults(*(a1 + 32), v26, v27))
      {
        dispatch_group_enter(v25);
        v30 = objc_msgSend_objectParsedBlock(*(a1 + 32), v28, v29);
        v33 = objc_msgSend_parserData(*(a1 + 32), v31, v32);
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = sub_2253E7A08;
        v38[3] = &unk_278545A00;
        v39 = v25;
        (v30)[2](v30, v14, v33, v38);
      }
    }
  }

  if (*(a1 + 40))
  {
    objc_msgSend_qualityOfService(*(a1 + 32), v9, v10);
    v34 = CKGetGlobalQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2253E7A10;
    block[3] = &unk_2785456C8;
    v35 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v37 = v35;
    dispatch_group_notify(v2, v34, block);
  }
}

void sub_2253E7A10(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend_parserError(*(a1 + 32), a2, a3);
  (*(v3 + 16))(v3, v4);
}

void sub_2253E86A4(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_hash(*(a1 + 32), a2, a3);
  kdebug_trace();
  v6 = objc_msgSend_parserData(*(a1 + 32), v4, v5);

  if (v6)
  {
    v9 = objc_msgSend_parserData(*(a1 + 32), v7, v8);
    v11 = objc_msgSend_ck_dataByAppendingData_(v9, v10, *(a1 + 40));
    objc_msgSend_setParserData_(*(a1 + 32), v12, v11);
  }

  else
  {
    objc_msgSend_setParserData_(*(a1 + 32), v7, *(a1 + 40));
  }

  v13 = dispatch_group_create();
  v15 = objc_msgSend__parseObjects_group_(*(a1 + 32), v14, 0, v13);
  objc_msgSend_hash(*(a1 + 32), v16, v17);
  kdebug_trace();
  if (*(a1 + 48))
  {
    objc_msgSend_qualityOfService(*(a1 + 32), v18, v19);
    v20 = CKGetGlobalQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2253E882C;
    block[3] = &unk_2785458C0;
    v23 = v15;
    block[4] = *(a1 + 32);
    v22 = *(a1 + 48);
    dispatch_group_notify(v13, v20, block);
  }
}

void sub_2253E882C(uint64_t a1, const char *a2, uint64_t a3)
{
  if (*(a1 + 48))
  {
    v4 = 0;
  }

  else
  {
    v4 = objc_msgSend_parserError(*(a1 + 32), a2, a3);
  }

  v5 = v4;
  (*(*(a1 + 40) + 16))();
}

void sub_2253E8950(uint64_t a1)
{
  v2 = dispatch_group_create();
  objc_msgSend__parseObjects_group_(*(a1 + 32), v3, 1, v2);
  if (*(a1 + 40))
  {
    objc_msgSend_qualityOfService(*(a1 + 32), v4, v5);
    v6 = CKGetGlobalQueue();
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2253E8A28;
    v8[3] = &unk_2785456C8;
    v7 = *(a1 + 40);
    v8[4] = *(a1 + 32);
    v9 = v7;
    dispatch_group_notify(v2, v6, v8);
  }
}

void sub_2253E8A28(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend_parserError(*(a1 + 32), a2, a3);
  (*(v3 + 16))(v3, v4);
}

uint64_t sub_2253E8C2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_parserData(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_parserData(*(a1 + 32), v5, v6);
    v9 = objc_msgSend_ck_dataByAppendingData_(v7, v8, *(a1 + 40));
    objc_msgSend_setParserData_(*(a1 + 32), v10, v9);
  }

  else
  {
    objc_msgSend_setParserData_(*(a1 + 32), v5, *(a1 + 40));
  }

  result = *(a1 + 48);
  if (result)
  {
    v12 = *(result + 16);

    return v12();
  }

  return result;
}

void sub_2253E8D60(int a1, int a2, unint64_t a3, unint64_t a4, CFIndex transferBufferSize)
{
  v9 = 0;
  v10 = 0;
  if (!(a3 | a4))
  {
    __assert_rtn("+[NSStream(BoundPairAdditions) CKCreateBoundInputStream:outputStream:bufferSize:]", "CKDProtobufStreamWriter.m", 29, "(inputStreamPtr != NULL) || (outputStreamPtr != NULL)");
  }

  if (a3)
  {
    v7 = &v10;
  }

  else
  {
    v7 = 0;
  }

  if (a4)
  {
    v8 = &v9;
  }

  else
  {
    v8 = 0;
  }

  CFStreamCreateBoundPair(0, v7, v8, transferBufferSize);
  if (a3)
  {
    *a3 = v10;
  }

  if (a4)
  {
    *a4 = v9;
  }
}

void sub_2253E9940()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();
  v17 = objc_msgSend_bundleForClass_(v0, v2, v1);
  v5 = objc_msgSend_infoDictionary(v17, v3, v4);
  v7 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"CFBundleVersion");

  if (!objc_msgSend_length(v7, v8, v9))
  {

    v7 = @"1.0";
  }

  v11 = _CFCopyServerVersionDictionary();
  if (!v11)
  {
    v11 = _CFCopySystemVersionDictionary();
  }

  v12 = objc_msgSend_objectForKeyedSubscript_(v11, v10, *MEMORY[0x277CBEC70]);
  v13 = objc_alloc(MEMORY[0x277CCACA8]);
  v15 = objc_msgSend_initWithFormat_(v13, v14, @"CloudKit/%@ (%@)", v7, v12);
  v16 = qword_280D58598;
  qword_280D58598 = v15;

  if (v11)
  {
    CFRelease(v11);
  }
}

void sub_2253E9A54()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v1 = CKProductType();
  if (!v1)
  {
    v1 = @"UNKNOWN";
  }

  v65 = v1;
  v61 = v0;
  objc_msgSend_appendFormat_(v0, v2, @"<%@>", v1);
  v5 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v3, v4);
  v8 = objc_msgSend_productName(v5, v6, v7);

  v11 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v9, v10);
  v14 = objc_msgSend_productVersion(v11, v12, v13);

  v17 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v15, v16);
  v20 = objc_msgSend_buildVersion(v17, v18, v19);

  v64 = v8;
  if (v8)
  {
    v22 = v8;
  }

  else
  {
    v22 = @"UNKNOWN";
  }

  if (v14)
  {
    v23 = v14;
  }

  else
  {
    v23 = @"UNKNOWN";
  }

  v63 = v20;
  if (v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = @"UNKNOWN";
  }

  objc_msgSend_appendFormat_(v0, v21, @" <%@;%@;%@>", v22, v23, v24);
  v25 = MEMORY[0x277CCA8D8];
  v26 = objc_opt_class();
  v62 = objc_msgSend_bundleForClass_(v25, v27, v26);
  v30 = objc_msgSend_infoDictionary(v62, v28, v29);
  v31 = *MEMORY[0x277CBED38];
  v33 = objc_msgSend_objectForKeyedSubscript_(v30, v32, *MEMORY[0x277CBED38]);
  v34 = *MEMORY[0x277CBEC50];
  v36 = objc_msgSend_objectForKeyedSubscript_(v30, v35, *MEMORY[0x277CBEC50]);
  v60 = objc_msgSend_mainBundle(MEMORY[0x277CCA8D8], v37, v38);
  v41 = objc_msgSend_infoDictionary(v60, v39, v40);
  v43 = objc_msgSend_objectForKeyedSubscript_(v41, v42, v31);
  v45 = objc_msgSend_objectForKeyedSubscript_(v41, v44, v34);
  v50 = @"UNKNOWN";
  if (objc_msgSend_length(v33, v46, v47))
  {
    v51 = v33;
  }

  else
  {
    v51 = @"UNKNOWN";
  }

  if (objc_msgSend_length(v36, v48, v49))
  {
    v54 = v36;
  }

  else
  {
    v54 = @"1.0";
  }

  if (objc_msgSend_length(v43, v52, v53))
  {
    v50 = v43;
  }

  if (objc_msgSend_length(v45, v55, v56))
  {
    v58 = v45;
  }

  else
  {
    v58 = @"1.0";
  }

  objc_msgSend_appendFormat_(v61, v57, @" <%@/%@ (%@/%@)>", v51, v54, v50, v58);
  v59 = qword_280D585A8;
  qword_280D585A8 = v61;
}

uint64_t sub_2253E9CF8()
{
  v0 = [CKDURLSessionPool alloc];
  qword_280D585B8 = objc_msgSend_initInternal(v0, v1, v2);

  return MEMORY[0x2821F96F8]();
}

void *sub_2253EA6F4(void *result, const char *a2, uint64_t a3)
{
  if (result)
  {
    v3 = objc_msgSend_url(result, a2, a3);
    v6 = objc_msgSend_path(v3, v4, v5);
    hasPrefix = objc_msgSend_hasPrefix_(v6, v7, @"/setup");

    return hasPrefix;
  }

  return result;
}

void sub_2253EB074(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_createAssetAuthorizeGetRequestOptionsHeaderInfoWithKey_value_(*(a1 + 32), a2, a2, a3);
  if (v4)
  {
    v12 = v4;
    v7 = objc_msgSend_assetAuthorizeGetRequestOptions(*(a1 + 40), v5, v6);
    v10 = objc_msgSend_contentRequestHeaders(v7, v8, v9);
    objc_msgSend_addObject_(v10, v11, v12);

    v4 = v12;
  }
}

void sub_2253EC0C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2253EC0E8(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend_setIsWaitingOnAuthRenew_(WeakRetained, v6, 0);
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

void sub_2253EC504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2253EC528(uint64_t a1, char a2, void *a3)
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = objc_msgSend_operation(WeakRetained, v7, v8);
  objc_msgSend_operationDidFinishWaitingOnAuthToken(v9, v10, v11);

  if (*MEMORY[0x277CBC810] == 1 && (objc_msgSend_unitTestOverrides(WeakRetained, v12, v13), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v14, v15, @"TestAuthTokenRenewalFailsBecauseRenewedTokenIsStale"), v16 = objc_claimAutoreleasedReturnValue(), v16, v14, v16))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v45 = v17;
      v48 = objc_msgSend_requestUUID(WeakRetained, v46, v47);
      *buf = 138543362;
      v53 = v48;
      _os_log_debug_impl(&dword_22506F000, v45, OS_LOG_TYPE_DEBUG, "Failing credential renewal with a stale token error for tests for request %{public}@", buf, 0xCu);
    }

    v19 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v18, *MEMORY[0x277CBC120], 2011, @"Got a CloudKit auth token that has already failed a previous auth attempt");

    v22 = objc_msgSend_container(WeakRetained, v20, v21);
    v25 = objc_msgSend_account(v22, v23, v24);
    v28 = objc_msgSend_accountType(v25, v26, v27);

    if (v28 == 3)
    {
      v31 = objc_msgSend_container(WeakRetained, v29, v30);
      v34 = objc_msgSend_account(v31, v32, v33);
      v37 = objc_msgSend_backingAccount(v34, v35, v36);
      v40 = objc_msgSend_testDevice(v37, v38, v39);
      objc_msgSend_daemonSetHasValidCredentials_(v40, v41, 0);
    }

    a2 = 0;
  }

  else
  {
    v19 = v5;
  }

  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = sub_2253EC7CC;
  v49[3] = &unk_278545AB0;
  v51 = a2;
  v49[4] = WeakRetained;
  v50 = v19;
  v42 = v19;
  objc_msgSend_performOnLifecycleQueueIfNotFinished_(WeakRetained, v43, v49);

  v44 = *MEMORY[0x277D85DE8];
}

void sub_2253EC7CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) == 1)
  {
    objc_msgSend_invalidateCachedAccountInfo(MEMORY[0x277CBC160], a2, a3);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = v4;
      v11 = objc_msgSend_requestUUID(v7, v9, v10);
      v27 = 138543362;
      v28 = v11;
      _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Auth token acquired. Retrying.", &v27, 0xCu);
    }

    objc_msgSend_retryRequest(*(a1 + 32), v5, v6);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = v12;
      v18 = objc_msgSend_requestUUID(v14, v16, v17);
      v27 = 138543362;
      v28 = v18;
      _os_log_impl(&dword_22506F000, v15, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Warn: Couldn't renew an auth token- cancelling this request", &v27, 0xCu);
    }

    objc_msgSend_setLastRetryAuthError_(*(a1 + 32), v13, *(a1 + 40));
    v19 = *(a1 + 32);
    v22 = objc_msgSend_container(v19, v20, v21);
    v24 = objc_msgSend_possiblyWrappedAuthTokenErrorGivenError_(v22, v23, *(a1 + 40));
    objc_msgSend_finishWithError_(v19, v25, v24);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void sub_2253ED90C(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = v4;
      v10 = objc_msgSend_requestUUID(v6, v8, v9);
      v11 = 138543618;
      v12 = v10;
      v13 = 2112;
      v14 = v3;
      _os_log_error_impl(&dword_22506F000, v7, OS_LOG_TYPE_ERROR, "req: %{public}@, Error parsing protobuf object: %@", &v11, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();

  v5 = *MEMORY[0x277D85DE8];
}

void sub_2253EF5C8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(a1 + 32);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2253EF6CC;
  v15[3] = &unk_2785488E0;
  v15[4] = v10;
  v16 = v7;
  v17 = v8;
  v11 = v9;
  v18 = v11;
  v12 = v8;
  v13 = v7;
  if ((objc_msgSend_performOnLifecycleQueueIfNotFinished_(v10, v14, v15) & 1) == 0)
  {
    v11[2](v11);
  }
}

void sub_2253EF6CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__protobufObjectParsedBlock(*(a1 + 32), a2, a3);
  (*(v4 + 2))(v4, *(a1 + 40), *(a1 + 48), *(a1 + 56));
}

void sub_2253EF730(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2253EF7F0;
  v11[3] = &unk_278545898;
  v11[4] = v7;
  v12 = v6;
  v8 = v6;
  v9 = a4;
  objc_msgSend_performOnLifecycleQueueIfNotFinished_(v7, v10, v11);
  v9[2](v9);
}

void sub_2253EF800(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2253EF8C0;
  v11[3] = &unk_278545898;
  v11[4] = v7;
  v12 = v6;
  v8 = v6;
  v9 = a4;
  objc_msgSend_performOnLifecycleQueueIfNotFinished_(v7, v10, v11);
  v9[2](v9);
}

void sub_2253EF8D0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2253EF990;
  v11[3] = &unk_278545898;
  v11[4] = v7;
  v12 = v6;
  v8 = v6;
  v9 = a4;
  objc_msgSend_performOnLifecycleQueueIfNotFinished_(v7, v10, v11);
  v9[2](v9);
}

void sub_2253EF9A0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2253EFA60;
  v11[3] = &unk_278545898;
  v11[4] = v7;
  v12 = v6;
  v8 = v6;
  v9 = a4;
  objc_msgSend_performOnLifecycleQueueIfNotFinished_(v7, v10, v11);
  v9[2](v9);
}

uint64_t sub_2253F03C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return objc_msgSend_finishWithError_(v3, a2, a3);
  }

  else
  {
    return MEMORY[0x2821F9670](v3, sel__setupPrivateDatabaseURL, 0);
  }
}

void sub_2253F03D4(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = a3;
  if (a2)
  {
    objc_msgSend__setupConfiguration(*(a1 + 32), v5, v6);
  }

  else
  {
    v7 = MEMORY[0x277CBC560];
    v8 = *MEMORY[0x277CBC120];
    v9 = *(a1 + 32);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v13 = objc_msgSend_errorWithDomain_code_error_format_(v7, v12, v8, 2005, v15, @"Request (%@) does not have a URL", v11);

    objc_msgSend_finishWithError_(*(a1 + 32), v14, v13);
  }
}

uint64_t sub_2253F0498(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return objc_msgSend_finishWithError_(v3, a2, a3);
  }

  else
  {
    return objc_msgSend__fetchContainerScopedUserID(v3, a2, 0);
  }
}

void sub_2253F04A8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22508454C;
  v12[3] = &unk_2785463D0;
  v13 = v7;
  v14 = v6;
  v15 = WeakRetained;
  v16 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(WeakRetained, v11, v12);
}

void sub_2253F0590(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_initWeak(&location, v2);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2253F065C;
  v4[3] = &unk_278547098;
  objc_copyWeak(&v5, &location);
  objc_msgSend_setCompletionBlock_(v2, v3, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void sub_2253F0640(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2253F065C(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_msgSend_validatedTrusts(WeakRetained, v2, v3);
  v7 = objc_msgSend_count(v4, v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_validatedTrusts(WeakRetained, v8, v9);
    objc_msgSend_setValidatedTrusts_(CKDServerTrustCache, v11, v10);

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v16 = objc_msgSend_validatedTrusts(WeakRetained, v14, v15);
      v19 = 138412290;
      v20 = v16;
      _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Successfully fetched validated server signing trusts: %@", &v19, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19) = 0;
      _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "Certificate fetch did not result in any valid trusts.", &v19, 2u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_2253F0824(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v3)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v5 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_ERROR))
    {
      v8 = v5;
      v11 = objc_msgSend_requestUUID(WeakRetained, v9, v10);
      v14 = objc_msgSend_ckShortDescription(WeakRetained, v12, v13);
      v15 = 138543874;
      v16 = v11;
      v17 = 2114;
      v18 = v14;
      v19 = 2112;
      v20 = v3;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "req: %{public}@, %{public}@ Failed to register push tokens: %@", &v15, 0x20u);
    }
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      dispatch_semaphore_signal(v6);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_2253F0A04(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2253F0C6C;
  aBlock[3] = &unk_278545A00;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v5 = objc_msgSend_operation(*(a1 + 32), v3, v4);
  v8 = objc_msgSend_clientOperationCallbackProxy(v5, v6, v7);
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 32);
      v18 = v9;
      v21 = objc_msgSend_requestUUID(v17, v19, v20);
      v24 = objc_msgSend_ckShortDescription(*(a1 + 32), v22, v23);
      *buf = 138543618;
      v29 = v21;
      v30 = 2114;
      v31 = v24;
      _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "req: %{public}@, Request %{public}@ calling out to client about lifecycle transition", buf, 0x16u);
    }

    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v14 = objc_msgSend_testRequestProperties(*(a1 + 32), v12, v13);
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = sub_2253F0CDC;
    v25[3] = &unk_27854D998;
    v25[4] = *(a1 + 32);
    v26 = v2;
    objc_msgSend_handleDaemonRequestWillSendWithClassName_testRequestProperties_replyBlock_(v8, v15, v11, v14, v25);
  }

  else
  {
    v2[2](v2);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2253F0C6C(uint64_t a1, const char *a2, uint64_t a3)
{
  if ((objc_msgSend_isCancelled(*(a1 + 32), a2, a3) & 1) != 0 || objc_msgSend_isFinished(*(a1 + 32), v4, v5))
  {
    v7 = *(a1 + 32);

    return objc_msgSend_finishWithError_(v7, v4, 0);
  }

  else
  {
    v9 = *(a1 + 32);

    return objc_msgSend__performRequest(v9, v4, v6);
  }
}

void sub_2253F0CDC(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *MEMORY[0x277CBC878];
  v8 = *MEMORY[0x277CBC880];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v6;
      _os_log_error_impl(&dword_22506F000, v9, OS_LOG_TYPE_ERROR, "Asked client what to do for a daemon request, it responded with an error %@", &v18, 0xCu);
      if (!v5)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 32);
      v14 = v11;
      v17 = objc_msgSend_ckShortDescription(v13, v15, v16);
      v18 = 138543618;
      v19 = v17;
      v20 = 2112;
      v21 = v5;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Request %{public}@ was told to take action %@", &v18, 0x16u);

      if (!v5)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  if (v5)
  {
LABEL_11:
    objc_msgSend_takeActionOnURLRequest_(v5, v10, *(a1 + 32));
  }

LABEL_12:
  (*(*(a1 + 40) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2253F0EA4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = *(a1 + 32);

    objc_msgSend__prepareAuthTokens(v4, a2, a3);
  }

  else
  {
    v6 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 1000, @"Can't acquire zone lock, failing the request");
    objc_msgSend_finishWithError_(v3, v5, v6);
  }
}

void sub_2253F0F40(uint64_t a1, void *a2, void *a3)
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  objc_msgSend_setICloudAuthToken_(WeakRetained, v8, v5);
  if (*MEMORY[0x277CBC810] == 1)
  {
    if ((objc_msgSend_didRetryAuth(WeakRetained, v9, v10) & 1) != 0 || (objc_msgSend_unitTestOverrides(WeakRetained, v11, v12), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectForKeyedSubscript_(v13, v14, @"TestContainerSpecificOpWithBadiCloudToken"), v15 = objc_claimAutoreleasedReturnValue(), v15, v13, !v15))
    {
      if ((objc_msgSend_didFetchNilAuthToken(WeakRetained, v11, v12) & 1) == 0)
      {
        v18 = objc_msgSend_unitTestOverrides(WeakRetained, v9, v10);
        v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"TestContainerSpecificOpWithNoiCloudToken");

        if (v20)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v21 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
          {
            v51 = v21;
            v54 = objc_msgSend_requestUUID(WeakRetained, v52, v53);
            *buf = 138543362;
            v56 = v54;
            _os_log_debug_impl(&dword_22506F000, v51, OS_LOG_TYPE_DEBUG, "Using nil iCloud token for request %{public}@", buf, 0xCu);
          }

          objc_msgSend_setDidFetchNilAuthToken_(WeakRetained, v22, 1);
          objc_msgSend_setICloudAuthToken_(WeakRetained, v23, 0);

          v24 = MEMORY[0x277CBC560];
          v25 = *MEMORY[0x277CBC120];
          v28 = objc_msgSend_container(WeakRetained, v26, v27);
          v31 = objc_msgSend_account(v28, v29, v30);
          v34 = objc_msgSend_accountID(v31, v32, v33);
          v36 = objc_msgSend_errorWithDomain_code_format_(v24, v35, v25, 1002, @"Didn't get mmeAuthToken credentials for account %@ with no error", v34);

          v5 = 0;
          v6 = v36;
        }
      }
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v16 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v47 = v16;
        v50 = objc_msgSend_requestUUID(WeakRetained, v48, v49);
        *buf = 138543362;
        v56 = v50;
        _os_log_debug_impl(&dword_22506F000, v47, OS_LOG_TYPE_DEBUG, "Using a fake iCloud token for request %{public}@", buf, 0xCu);
      }

      objc_msgSend_setICloudAuthToken_(WeakRetained, v17, @"tacos");
    }
  }

  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v6);
  }

  if (!(v5 | *(*(*(a1 + 40) + 8) + 40)))
  {
    v37 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v9, *MEMORY[0x277CBC120], 2011, @"Didn't get an iCloud auth token");
    v38 = *(*(a1 + 40) + 8);
    v39 = *(v38 + 40);
    *(v38 + 40) = v37;
  }

  v40 = objc_msgSend_container(WeakRetained, v9, v10);
  v42 = objc_msgSend_possiblyWrappedAuthTokenErrorGivenError_(v40, v41, *(*(*(a1 + 40) + 8) + 40));
  v43 = *(*(a1 + 40) + 8);
  v44 = *(v43 + 40);
  *(v43 + 40) = v42;

  objc_msgSend_setLastRetryAuthError_(WeakRetained, v45, *(*(*(a1 + 40) + 8) + 40));
  dispatch_group_leave(*(a1 + 32));

  v46 = *MEMORY[0x277D85DE8];
}

void sub_2253F131C(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (objc_msgSend_isFinished(WeakRetained, v3, v4))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
    {
      v8 = v7;
      v11 = objc_msgSend_requestUUID(WeakRetained, v9, v10);
      *v35 = 138543362;
      *&v35[4] = v11;
      _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "req: %{public}@, Request was finished while waiting for auth tokens", v35, 0xCu);
    }

    goto LABEL_19;
  }

  if (objc_msgSend_sendRequestAnonymously(WeakRetained, v5, v6))
  {
LABEL_18:
    objc_msgSend__registerPushTokens(WeakRetained, v12, v13, *v35);
    goto LABEL_19;
  }

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC860];
    if (!os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    v18 = v23;
    v21 = objc_msgSend_requestUUID(WeakRetained, v24, v25);
    *v35 = 138543362;
    *&v35[4] = v21;
    v22 = "req: %{public}@, Fetched auth tokens";
LABEL_17:
    _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, v22, v35, 0xCu);

    goto LABEL_18;
  }

  v14 = objc_msgSend_allowsAnonymousAccount(WeakRetained, v12, v13);
  v15 = *MEMORY[0x277CBC878];
  v16 = *MEMORY[0x277CBC880];
  if (v14)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v15);
    }

    v17 = *MEMORY[0x277CBC860];
    if (!os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
    {
      goto LABEL_18;
    }

    v18 = v17;
    v21 = objc_msgSend_requestUUID(WeakRetained, v19, v20);
    *v35 = 138543362;
    *&v35[4] = v21;
    v22 = "req: %{public}@, Failed to fetch auth tokens, continuing with anonymous access";
    goto LABEL_17;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v15);
  }

  v27 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
  {
    v30 = v27;
    v33 = objc_msgSend_requestUUID(WeakRetained, v31, v32);
    v34 = *(*(*(a1 + 32) + 8) + 40);
    *v35 = 138543618;
    *&v35[4] = v33;
    *&v35[12] = 2112;
    *&v35[14] = v34;
    _os_log_impl(&dword_22506F000, v30, OS_LOG_TYPE_INFO, "req: %{public}@, Encountered an error while fetching auth tokens: %@", v35, 0x16u);
  }

  objc_msgSend__handleAuthFailure(WeakRetained, v28, v29);
LABEL_19:

  v26 = *MEMORY[0x277D85DE8];
}

void sub_2253F1758(uint64_t a1, const char *a2, uint64_t a3)
{
  v130 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_urlSessionTask(*(a1 + 32), a2, a3);

  if (v4)
  {
    v112 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v112, v113, *(a1 + 48), *(a1 + 32), @"CKDURLRequest.m", 2316, @"The URL session data task should be nil");
  }

  v7 = objc_msgSend_response(*(a1 + 32), v5, v6);

  if (v7)
  {
    v114 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v114, v115, *(a1 + 48), *(a1 + 32), @"CKDURLRequest.m", 2317, @"Response should be nil");
  }

  objc_msgSend_setRequest_(*(a1 + 32), v8, *(a1 + 40));
  objc_msgSend_setResponseBodyParser_(*(a1 + 32), v10, 0);
  objc_msgSend_setUrlSession_(*(a1 + 32), v11, 0);
  v14 = objc_msgSend_requestOptions(*(a1 + 32), v12, v13);
  v17 = objc_msgSend_networkingDelegate(v14, v15, v16);
  v20 = objc_msgSend_sharedManager(MEMORY[0x277CF36D8], v18, v19);
  v23 = objc_msgSend_request(*(a1 + 32), v21, v22);
  v24 = *(a1 + 32);
  v123 = 0;
  v26 = objc_msgSend_createDataTaskWithRequest_options_delegate_sessionHandle_(v20, v25, v23, v14, v24, &v123);
  v27 = v123;

  v28 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v29 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v125 = v27;
    v126 = 2112;
    v127 = v26;
    v128 = 2112;
    v129 = v17;
    _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "For session %@, task %@, set up networking delegate %@", buf, 0x20u);
  }

  v31 = *(a1 + 32);
  if (v26)
  {
    objc_msgSend_setUrlSession_(*(a1 + 32), v30, v27);
    objc_msgSend_setUrlSessionTask_(*(a1 + 32), v32, v26);
    if (*v28 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v117 = v17;
    v118 = v14;
    v33 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
    {
      v36 = *(a1 + 32);
      v37 = v33;
      v40 = objc_msgSend_requestUUID(v36, v38, v39);
      v43 = objc_msgSend_ckShortDescription(*(a1 + 32), v41, v42);
      v46 = objc_msgSend__CFNetworkTaskIdentifierString(*(a1 + 32), v44, v45);
      *buf = 138543874;
      v125 = v40;
      v126 = 2114;
      v127 = v43;
      v128 = 2112;
      v129 = v46;
      _os_log_impl(&dword_22506F000, v37, OS_LOG_TYPE_INFO, "req: %{public}@, %{public}@: Starting request with URL session data task %@", buf, 0x20u);
    }

    v47 = objc_msgSend_date(MEMORY[0x277CBEAA8], v34, v35, v27);
    objc_msgSend_setDateRequestWentOut_(*(a1 + 32), v48, v47);

    v51 = objc_msgSend_metrics(*(a1 + 32), v49, v50);
    v54 = objc_msgSend_metrics(*(a1 + 32), v52, v53);
    v57 = objc_msgSend_metrics(*(a1 + 32), v55, v56);
    v60 = objc_msgSend_startDate(v57, v58, v59);
    v63 = objc_msgSend_date(MEMORY[0x277CBEAA8], v61, v62);
    v66 = objc_msgSend_metrics(*(a1 + 32), v64, v65);
    v69 = objc_msgSend_startDate(v66, v67, v68);
    objc_msgSend_timeIntervalSinceDate_(v63, v70, v69);
    started = objc_msgSend_newRangeWithOperationState_startDate_duration_(v54, v71, 0, v60);
    objc_msgSend_addRange_(v51, v73, started);

    v76 = objc_msgSend_signpost(*(a1 + 32), v74, v75);

    v27 = v116;
    if (v76)
    {
      v79 = objc_msgSend_signpost(*(a1 + 32), v77, v78);
      v82 = objc_msgSend_log(v79, v80, v81);

      v85 = objc_msgSend_signpost(*(a1 + 32), v83, v84);
      v88 = objc_msgSend_identifier(v85, v86, v87);

      if (v88 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v82))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22506F000, v82, OS_SIGNPOST_EVENT, v88, "CKDURLRequest", "Resuming", buf, 2u);
      }
    }

    objc_msgSend_hash(*(a1 + 32), v77, v78);
    kdebug_trace();
    if (*MEMORY[0x277CBC810] == 1)
    {
      v91 = objc_msgSend_unitTestOverrides(*(a1 + 32), v89, v90);
      v93 = objc_msgSend_objectForKeyedSubscript_(v91, v92, @"FakeRequestCFNetworkError");

      if (v93)
      {
        v96 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2253F1E88;
        block[3] = &unk_2785463D0;
        block[4] = *(a1 + 32);
        v120 = v116;
        v121 = v26;
        v122 = v93;
        dispatch_async(v96, block);

LABEL_22:
LABEL_30:
        v17 = v117;
        v14 = v118;
        goto LABEL_31;
      }

      v99 = objc_msgSend_unitTestOverrides(*(a1 + 32), v94, v95);
      v101 = objc_msgSend_objectForKeyedSubscript_(v99, v100, @"SilentlyDropNetworkRequest");

      if (v101)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v102 = *MEMORY[0x277CBC860];
        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
        {
          v103 = *(a1 + 32);
          v104 = v102;
          v107 = objc_msgSend_requestUUID(v103, v105, v106);
          v110 = objc_msgSend_ckShortDescription(*(a1 + 32), v108, v109);
          *buf = 138543618;
          v125 = v107;
          v126 = 2114;
          v127 = v110;
          _os_log_impl(&dword_22506F000, v104, OS_LOG_TYPE_INFO, "req: %{public}@, %{public}@: Dropping network request; you asked for it", buf, 0x16u);
        }

        goto LABEL_22;
      }
    }

    objc_msgSend_resume(v26, v89, v90);
    goto LABEL_30;
  }

  v97 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v30, *MEMORY[0x277CBC120], 1000, @"Can't create a NSURLSessionDataTask, failing the request");
  objc_msgSend_finishWithError_(v31, v98, v97);

LABEL_31:
  v111 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2253F1E88(void *a1)
{
  v1 = a1[6];
  v2 = a1[7];
  return MEMORY[0x2821F9670](a1[4], sel_URLSession_task_didCompleteWithError_, a1[5]);
}

void sub_2253F1F20(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v3;
    v9 = objc_msgSend_requestUUID(v5, v7, v8);
    v23 = 138543362;
    v24 = v9;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEFAULT, "req: %{public}@, cancel", &v23, 0xCu);
  }

  objc_msgSend_setCancelled_(*(a1 + 32), v4, 1);
  v13 = objc_msgSend_urlSessionTask(*(a1 + 32), v10, v11);
  if (v13)
  {
    if (*v2 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v18 = *(a1 + 32);
      v19 = v14;
      v22 = objc_msgSend_ckShortDescription(v18, v20, v21);
      v23 = 138412546;
      v24 = v13;
      v25 = 2114;
      v26 = v22;
      _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Cancelling the URL session data task %@ for request %{public}@", &v23, 0x16u);
    }

    objc_msgSend_cancel(v13, v15, v16);
  }

  objc_msgSend_finishWithError_(*(a1 + 32), v12, 0);

  v17 = *MEMORY[0x277D85DE8];
}

void sub_2253F2F9C(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_debug_impl(&dword_22506F000, v3, OS_LOG_TYPE_DEBUG, "Received response from Diagnostic Reporter - %{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void sub_2253F32E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_2253F3300(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (objc_msgSend_isFinished(WeakRetained, v3, v4))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v6 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v7 = v6;
        v10 = objc_msgSend_ckShortDescription(v5, v8, v9);
        v13 = 138543362;
        v14 = v10;
        _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "%{public}@ would've performed a block on the lifecycle queue but it was marked finished before it could.", &v13, 0xCu);
      }
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      (*(*(a1 + 32) + 16))();
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Would've performed a block on the lifecycle queue but it was deallocated before it could.", &v13, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2253F35C8(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (!objc_msgSend_isFinished(WeakRetained, v3, v4))
    {
      v12 = *(a1 + 40);
      goto LABEL_13;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v10 = objc_msgSend_ckShortDescription(v5, v8, v9);
      v14 = 138543362;
      v15 = v10;
      _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "%{public}@ would've performed a block on the lifecycle queue but it was marked finished before it could.", &v14, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Would've performed a block on the lifecycle queue but it was deallocated before it could.", &v14, 2u);
    }
  }

  v12 = *(a1 + 32);
LABEL_13:
  (*(v12 + 16))();

  v13 = *MEMORY[0x277D85DE8];
}

void sub_2253F395C(uint64_t a1, const char *a2, uint64_t a3)
{
  v122 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_taskDescription(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_urlSessionTask(*(a1 + 40), v5, v6);
  v10 = objc_msgSend_taskDescription(v7, v8, v9);
  isEqualToString = objc_msgSend_isEqualToString_(v4, v11, v10);

  v13 = MEMORY[0x277CBC878];
  v14 = *MEMORY[0x277CBC878];
  v15 = MEMORY[0x277CBC880];
  v16 = *MEMORY[0x277CBC880];
  if ((isEqualToString & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v14);
    }

    v50 = *MEMORY[0x277CBC860];
    if (!os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
    {
      goto LABEL_32;
    }

    v51 = *(a1 + 40);
    v46 = v50;
    v54 = objc_msgSend_requestUUID(v51, v52, v53);
    v57 = objc_msgSend_ckShortDescription(*(a1 + 40), v55, v56);
    v58 = *(a1 + 32);
    v61 = objc_msgSend_urlSessionTask(*(a1 + 40), v59, v60);
    v110 = 138544130;
    v111 = v54;
    v112 = 2114;
    v113 = v57;
    v114 = 2112;
    v115 = v58;
    v116 = 2112;
    v117 = v61;
    _os_log_impl(&dword_22506F000, v46, OS_LOG_TYPE_INFO, "req: %{public}@, %{public}@ ignoring spurious callback from task %@, which is not my task %@", &v110, 0x2Au);

    goto LABEL_31;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v14);
  }

  v17 = MEMORY[0x277CBC860];
  v18 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
  {
    v21 = *(a1 + 40);
    v22 = v18;
    v25 = objc_msgSend_requestUUID(v21, v23, v24);
    v110 = 138543362;
    v111 = v25;
    _os_log_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEFAULT, "req: %{public}@, URLSession:task:willPerformHTTPRedirection:newRequest:completionHandler:", &v110, 0xCu);
  }

  *(*(a1 + 40) + 32) = 1;
  if (*(a1 + 48) && (objc_msgSend_allowAutomaticRedirects(*(a1 + 40), v19, v20) & 1) == 0)
  {
    if (*v15 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *v13);
    }

    v99 = *v17;
    if (!os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v100 = *(a1 + 40);
    v46 = v99;
    v49 = objc_msgSend_requestUUID(v100, v101, v102);
    v103 = *(a1 + 32);
    v106 = objc_msgSend_request(*(a1 + 40), v104, v105);
    v108 = *(a1 + 48);
    v107 = *(a1 + 56);
    v110 = 138544386;
    v111 = v49;
    v112 = 2112;
    v113 = v103;
    v114 = 2112;
    v115 = v106;
    v116 = 2112;
    v117 = v107;
    v118 = 2112;
    v119 = v108;
    _os_log_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Task is getting redirected but automatic redirections are disabled.  Task: [%@]\\nInitial request: [%@]\\nProposed request: [%@]\\nRedirect response: [%@]", &v110, 0x34u);

LABEL_30:
LABEL_31:

LABEL_32:
    (*(*(a1 + 64) + 16))();
    goto LABEL_33;
  }

  v26 = objc_msgSend_request(*(a1 + 40), v19, v20);
  v29 = objc_msgSend_URL(v26, v27, v28);
  v32 = objc_msgSend_scheme(v29, v30, v31);
  if (objc_msgSend_hasPrefix_(v32, v33, @"https"))
  {
    v36 = objc_msgSend_URL(*(a1 + 56), v34, v35);
    v39 = objc_msgSend_scheme(v36, v37, v38);
    hasPrefix = objc_msgSend_hasPrefix_(v39, v40, @"https");

    if ((hasPrefix & 1) == 0)
    {
      if (*v15 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *v13);
      }

      v44 = *v17;
      if (!os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_32;
      }

      v45 = *(a1 + 40);
      v46 = v44;
      v49 = objc_msgSend_requestUUID(v45, v47, v48);
      v110 = 138543362;
      v111 = v49;
      _os_log_impl(&dword_22506F000, v46, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Request is being redirected between https and http. We're not falling for that one", &v110, 0xCu);
      goto LABEL_30;
    }
  }

  else
  {
  }

  v62 = objc_msgSend_mutableCopy(*(a1 + 56), v42, v43);
  v65 = objc_msgSend_URL(*(a1 + 56), v63, v64);
  objc_msgSend_setURL_(v62, v66, v65);

  objc_msgSend_setHTTPShouldHandleCookies_(v62, v67, 1);
  if (objc_msgSend_hasRequestBody(*(a1 + 40), v68, v69))
  {
    v72 = objc_msgSend_requestBodyStream(*(a1 + 40), v70, v71);
    objc_msgSend_setHTTPBodyStream_(v62, v73, v72);
  }

  v74 = objc_msgSend_request(*(a1 + 40), v70, v71);
  v77 = objc_msgSend_HTTPMethod(v74, v75, v76);
  objc_msgSend_setHTTPMethod_(v62, v78, v77);

  v81 = objc_msgSend_request(*(a1 + 40), v79, v80);
  v84 = objc_msgSend_allHTTPHeaderFields(v81, v82, v83);
  objc_msgSend_setAllHTTPHeaderFields_(v62, v85, v84);

  if (*v15 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *v13);
  }

  v86 = *v17;
  if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
  {
    v88 = *(a1 + 40);
    v89 = v86;
    v92 = objc_msgSend_requestUUID(v88, v90, v91);
    v93 = *(a1 + 32);
    v96 = objc_msgSend_request(*(a1 + 40), v94, v95);
    v98 = *(a1 + 48);
    v97 = *(a1 + 56);
    v110 = 138544642;
    v111 = v92;
    v112 = 2112;
    v113 = v93;
    v114 = 2112;
    v115 = v96;
    v116 = 2112;
    v117 = v97;
    v118 = 2112;
    v119 = v62;
    v120 = 2112;
    v121 = v98;
    _os_log_impl(&dword_22506F000, v89, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Task is getting redirected: [%@]\\nInitial request: [%@]\\nProposed request: [%@]\\nReconstructed request: [%@]\\nRedirect response: [%@]", &v110, 0x3Eu);
  }

  objc_msgSend_setRequest_(*(a1 + 40), v87, v62);
  (*(*(a1 + 64) + 16))();

LABEL_33:
  v109 = *MEMORY[0x277D85DE8];
}

void sub_2253F40AC(uint64_t a1, const char *a2)
{
  v135 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v4 = objc_msgSend_valueForHTTPHeaderField_(*(a1 + 32), a2, *MEMORY[0x277CBBF88]);
  v7 = objc_msgSend_statusCode(*v3, v5, v6);
  v10 = objc_msgSend_signpost(*(a1 + 40), v8, v9);

  if (v10)
  {
    v13 = objc_msgSend_signpost(*(a1 + 40), v11, v12);
    v16 = objc_msgSend_log(v13, v14, v15);

    v19 = objc_msgSend_signpost(*(a1 + 40), v17, v18);
    v22 = objc_msgSend_identifier(v19, v20, v21);

    if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
    {
      *buf = 138543618;
      *&buf[4] = v4;
      *&buf[12] = 2048;
      *&buf[14] = v7;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v16, OS_SIGNPOST_EVENT, v22, "CKDURLRequest", "Received response %{public}@ with status code %zd", buf, 0x16u);
    }
  }

  v23 = objc_msgSend_taskDescription(*(a1 + 48), v11, v12);
  v26 = objc_msgSend_urlSessionTask(*(a1 + 40), v24, v25);
  v29 = objc_msgSend_taskDescription(v26, v27, v28);
  isEqualToString = objc_msgSend_isEqualToString_(v23, v30, v29);

  if (isEqualToString)
  {
    if (v4)
    {
      v34 = objc_msgSend_requestUUID(*(a1 + 40), v32, v33);
      v36 = objc_msgSend_isEqualToString_(v34, v35, v4);

      if ((v36 & 1) == 0)
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v37 = *MEMORY[0x277CBC860];
        if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
        {
          v38 = *(a1 + 40);
          v39 = v37;
          v42 = objc_msgSend_requestUUID(v38, v40, v41);
          v45 = objc_msgSend_ckShortDescription(*(a1 + 40), v43, v44);
          v48 = objc_msgSend_requestUUID(*(a1 + 40), v46, v47);
          *buf = 138544130;
          *&buf[4] = v42;
          *&buf[12] = 2114;
          *&buf[14] = v45;
          *&buf[22] = 2114;
          v133 = v48;
          LOWORD(v134) = 2114;
          *(&v134 + 2) = v4;
          _os_log_impl(&dword_22506F000, v39, OS_LOG_TYPE_INFO, "req: %{public}@, Warn: %{public}@ sent request UUID %{public}@, received %{public}@", buf, 0x2Au);
        }
      }
    }

    v49 = objc_msgSend_isCancelled(*(a1 + 40), v32, v33) ^ 1;
    v50 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v51 = MEMORY[0x277CBC860];
    v52 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v55 = *(a1 + 40);
      v56 = v52;
      v59 = objc_msgSend_requestUUID(v55, v57, v58);
      *buf = 138544130;
      *&buf[4] = v59;
      *&buf[12] = 2114;
      *&buf[14] = v4;
      *&buf[22] = 2048;
      v133 = v7;
      LOWORD(v134) = 2048;
      *(&v134 + 2) = v49;
      _os_log_impl(&dword_22506F000, v56, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Received response UUID:%{public}@, status:%ld, responseDisposition:%ld", buf, 0x2Au);
    }

    v60 = MEMORY[0x277CBC810];
    if (*MEMORY[0x277CBC810] == 1 && (sub_2253EA6F4(*(a1 + 40), v53, v54) & 1) == 0)
    {
      v76 = [CKDURLResponseOverrideProxy alloc];
      v77 = *(a1 + 32);
      v80 = objc_msgSend_unitTestOverrides(*(a1 + 40), v78, v79);
      v82 = objc_msgSend_initWithResponse_overrides_(v76, v81, v77, v80);
      objc_msgSend_setResponse_(*(a1 + 40), v83, v82);
    }

    else
    {
      objc_msgSend_setResponse_(*(a1 + 40), v53, *(a1 + 32));
    }

    v84 = objc_msgSend_shared(CKDTrafficLogger, v61, v62);
    v87 = objc_msgSend_requestUUID(*(a1 + 40), v85, v86);
    v90 = objc_msgSend_response(*(a1 + 40), v88, v89);
    objc_msgSend_logResponseWithRequestUUID_response_completionHandler_(v84, v91, v87, v90, &unk_28385E840);

    if (*v60 == 1 && (objc_msgSend_isErrorInducerRequest(*(a1 + 40), v92, v93) & 1) == 0)
    {
      v96 = objc_msgSend_operation(*(a1 + 40), v94, v95);
      v99 = objc_msgSend_operationInfo(v96, v97, v98);
      v102 = objc_msgSend_wantsDaemonRequestCallbacks(v99, v100, v101);

      if (v102)
      {
        v105 = objc_msgSend_operation(*(a1 + 40), v103, v104);
        v108 = objc_msgSend_clientOperationCallbackProxy(v105, v106, v107);
        if (v108)
        {
          if (*v50 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v109 = *v51;
          if (os_log_type_enabled(*v51, OS_LOG_TYPE_DEBUG))
          {
            v121 = *(a1 + 40);
            v122 = v109;
            v125 = objc_msgSend_requestUUID(v121, v123, v124);
            v128 = objc_msgSend_ckShortDescription(*(a1 + 40), v126, v127);
            *buf = 138543618;
            *&buf[4] = v125;
            *&buf[12] = 2114;
            *&buf[14] = v128;
            _os_log_debug_impl(&dword_22506F000, v122, OS_LOG_TYPE_DEBUG, "req: %{public}@, Request %{public}@ calling out to client about lifecycle transition", buf, 0x16u);
          }

          v110 = dispatch_semaphore_create(0);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v133 = sub_2250741EC;
          *&v134 = sub_225073674;
          *(&v134 + 1) = 0;
          v111 = objc_opt_class();
          v112 = NSStringFromClass(v111);
          v115 = objc_msgSend_testRequestProperties(*(a1 + 40), v113, v114);
          v129[0] = MEMORY[0x277D85DD0];
          v129[1] = 3221225472;
          v129[2] = sub_2253F48A0;
          v129[3] = &unk_27854DB20;
          v129[4] = *(a1 + 40);
          v131 = buf;
          v116 = v110;
          v130 = v116;
          objc_msgSend_handleDaemonRequestWillReceiveWithClassName_testRequestProperties_replyBlock_(v108, v117, v112, v115, v129);

          dispatch_semaphore_wait(v116, 0xFFFFFFFFFFFFFFFFLL);
          v119 = *(*&buf[8] + 40);
          if (v119)
          {
            objc_msgSend_takeActionOnURLRequest_(v119, v118, *(a1 + 40));
          }

          _Block_object_dispose(buf, 8);
        }
      }
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v63 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
    {
      v64 = *(a1 + 40);
      v65 = v63;
      v68 = objc_msgSend_requestUUID(v64, v66, v67);
      v71 = objc_msgSend_ckShortDescription(*(a1 + 40), v69, v70);
      v72 = *(a1 + 48);
      v75 = objc_msgSend_urlSessionTask(*(a1 + 40), v73, v74);
      *buf = 138544130;
      *&buf[4] = v68;
      *&buf[12] = 2114;
      *&buf[14] = v71;
      *&buf[22] = 2112;
      v133 = v72;
      LOWORD(v134) = 2112;
      *(&v134 + 2) = v75;
      _os_log_impl(&dword_22506F000, v65, OS_LOG_TYPE_INFO, "req: %{public}@, %{public}@ ignoring spurious callback from task %@, which is not my session %@", buf, 0x2Au);
    }
  }

  (*(*(a1 + 56) + 16))();

  v120 = *MEMORY[0x277D85DE8];
}

void sub_2253F487C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2253F48A0(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = *MEMORY[0x277CBC878];
  v9 = *MEMORY[0x277CBC880];
  if (v7)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v18 = 138412290;
      v19 = v7;
      _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "Asked client what to do for a daemon request, it responded with an error %@", &v18, 0xCu);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v8);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 32);
      v14 = v11;
      v17 = objc_msgSend_ckShortDescription(v13, v15, v16);
      v18 = 138543618;
      v19 = v17;
      v20 = 2112;
      v21 = v6;
      _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, "Request %{public}@ was told to take action %@", &v18, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v12 = *MEMORY[0x277D85DE8];
}

void sub_2253F4A60(uint64_t a1, const char *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_valueForHTTPHeaderField_(*(a1 + 32), a2, *MEMORY[0x277CBBF88]);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = v4;
    v9 = objc_msgSend_requestUUID(v5, v7, v8);
    v11 = 138543618;
    v12 = v9;
    v13 = 2114;
    v14 = v3;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Received response UUID:%{public}@, but was already cancelled.  Cancelling NSURLSessionDataTask", &v11, 0x16u);
  }

  (*(*(a1 + 48) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2253F4E8C(void **a1, const char *a2, uint64_t a3)
{
  v117 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_signpost(a1[4], a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_signpost(a1[4], v5, v6);
    v10 = objc_msgSend_log(v7, v8, v9);

    v13 = objc_msgSend_signpost(a1[4], v11, v12);
    v16 = objc_msgSend_identifier(v13, v14, v15);

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v19 = objc_msgSend_length(a1[5], v17, v18);
      *buf = 134349056;
      v110 = v19;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v10, OS_SIGNPOST_EVENT, v16, "CKDURLRequest", "Received data of length %{public}tu", buf, 0xCu);
    }
  }

  v20 = a1[5];
  v23 = objc_msgSend_taskDescription(a1[6], v21, v22);
  v26 = objc_msgSend_urlSessionTask(a1[4], v24, v25);
  v29 = objc_msgSend_taskDescription(v26, v27, v28);
  isEqualToString = objc_msgSend_isEqualToString_(v23, v30, v29);

  v32 = *MEMORY[0x277CBC878];
  v33 = *MEMORY[0x277CBC880];
  if (isEqualToString)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v32);
    }

    v34 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v37 = a1[4];
      v38 = v34;
      v41 = objc_msgSend_requestUUID(v37, v39, v40);
      v44 = objc_msgSend_length(v20, v42, v43);
      *buf = 138543618;
      v110 = v41;
      v111 = 2048;
      v112 = v44;
      _os_log_impl(&dword_22506F000, v38, OS_LOG_TYPE_DEFAULT, "req: %{public}@, URLSession:dataTask:_didReceiveData:completionHandler: %ld bytes", buf, 0x16u);
    }

    v45 = a1[4];
    if (*MEMORY[0x277CBC810] != 1)
    {
      objc_msgSend_setDidReceiveResponseBodyData_(v45, v35, 1);
      goto LABEL_23;
    }

    if (!v45[10] || (v46 = sub_2253EA6F4(v45, v35, v36), v45 = a1[4], (v46 & 1) != 0))
    {
LABEL_16:
      objc_msgSend_setDidReceiveResponseBodyData_(v45, v35, 1);
      v50 = objc_msgSend_clientProvidedAdditionalHeaderValues(a1[4], v48, v49);
      v52 = objc_msgSend_objectForKeyedSubscript_(v50, v51, @"TestName");
      v54 = objc_msgSend_isEqualToString_(v52, v53, @"TestEmptyResponseBody");

      if (v54)
      {
        objc_msgSend_setDidReceiveResponseBodyData_(a1[4], v55, 0);
      }

LABEL_23:
      v59 = objc_msgSend_response(a1[4], v55, v56);
      v72 = objc_msgSend_expectedContentLength(v59, v70, v71);
      v75 = objc_msgSend_responseProgressBlock(a1[4], v73, v74);
      if (!v75)
      {
        goto LABEL_29;
      }

      if (v72 == -1)
      {

        v78 = 0;
      }

      else
      {

        v78 = v72;
        if (v72 < 0)
        {
LABEL_29:
          v83 = objc_msgSend_responseBodyParser(a1[4], v76, v77);
          if (v83)
          {
            v85 = v83;
            v86 = dispatch_group_create();
          }

          else
          {
            v87 = objc_msgSend_valueForHTTPHeaderField_(v59, v84, 0x28387C500);
            v85 = objc_msgSend_defaultParserForContentType_(a1[4], v88, v87);
            objc_msgSend_setResponseBodyParser_(a1[4], v89, v85);

            v86 = dispatch_group_create();
            if (!v85)
            {
LABEL_33:
              dispatch_group_enter(v86);
              v93 = objc_msgSend_shared(CKDTrafficLogger, v91, v92);
              v96 = objc_msgSend_requestUUID(a1[4], v94, v95);
              v105[0] = MEMORY[0x277D85DD0];
              v105[1] = 3221225472;
              v105[2] = sub_2253F54E8;
              v105[3] = &unk_278545A00;
              v97 = v86;
              v106 = v97;
              objc_msgSend_logPartialResponseObjectDataWithRequestUUID_objectData_completionHandler_(v93, v98, v96, v20, v105);

              if (a1[7])
              {
                v101 = objc_msgSend_lifecycleQueue(a1[4], v99, v100);
                block[0] = MEMORY[0x277D85DD0];
                block[1] = 3221225472;
                block[2] = sub_2253F54F0;
                block[3] = &unk_2785456A0;
                v104 = a1[7];
                dispatch_group_notify(v97, v101, block);
              }

              goto LABEL_36;
            }
          }

          dispatch_group_enter(v86);
          v107[0] = MEMORY[0x277D85DD0];
          v107[1] = 3221225472;
          v107[2] = sub_2253F54E0;
          v107[3] = &unk_2785470C0;
          v86 = v86;
          v108 = v86;
          objc_msgSend_processData_completionHandler_(v85, v90, v20, v107);

          goto LABEL_33;
        }
      }

      v79 = objc_msgSend_responseProgressBlock(a1[4], v76, v77);
      v82 = objc_msgSend_countOfBytesReceived(a1[6], v80, v81);
      (v79)[2](v79, v82, v78, v72 != -1);

      goto LABEL_29;
    }

    if ((v45[11] & 1) == 0)
    {
      v47 = v45[10];

      *(a1[4] + 88) = 1;
      v45 = a1[4];
      v20 = v47;
      goto LABEL_16;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v32);
    }

    v57 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
    {
      v58 = a1[4];
      v59 = v57;
      v62 = objc_msgSend_requestUUID(v58, v60, v61);
      v65 = objc_msgSend_ckShortDescription(a1[4], v63, v64);
      v66 = a1[6];
      v69 = objc_msgSend_urlSessionTask(a1[4], v67, v68);
      *buf = 138544130;
      v110 = v62;
      v111 = 2114;
      v112 = v65;
      v113 = 2112;
      v114 = v66;
      v115 = 2112;
      v116 = v69;
      _os_log_impl(&dword_22506F000, v59, OS_LOG_TYPE_INFO, "req: %{public}@, %{public}@ ignoring spurious callback from task %@, which is not my task %@", buf, 0x2Au);

LABEL_36:
    }
  }

  v102 = *MEMORY[0x277D85DE8];
}

void sub_2253F56AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_signpost(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_signpost(*(a1 + 32), v5, v6);
    v10 = objc_msgSend_log(v7, v8, v9);

    v13 = objc_msgSend_signpost(*(a1 + 32), v11, v12);
    v16 = objc_msgSend_identifier(v13, v14, v15);

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(v59) = 0;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v10, OS_SIGNPOST_EVENT, v16, "CKDURLRequest", "New body stream", &v59, 2u);
    }
  }

  v17 = objc_msgSend_taskDescription(*(a1 + 40), v5, v6);
  v20 = objc_msgSend_urlSessionTask(*(a1 + 32), v18, v19);
  v23 = objc_msgSend_taskDescription(v20, v21, v22);
  isEqualToString = objc_msgSend_isEqualToString_(v17, v24, v23);

  v26 = *MEMORY[0x277CBC878];
  v27 = *MEMORY[0x277CBC880];
  if (isEqualToString)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v26);
    }

    v28 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v31 = *(a1 + 32);
      v32 = v28;
      v35 = objc_msgSend_requestUUID(v31, v33, v34);
      v59 = 138543362;
      v60 = v35;
      _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEFAULT, "req: %{public}@, URLSession:task:needNewBodyStream:", &v59, 0xCu);
    }

    v36 = objc_msgSend_shared(CKDTrafficLogger, v29, v30);
    v39 = objc_msgSend_requestUUID(*(a1 + 32), v37, v38);
    objc_msgSend_logRequestBodyStreamResetWithRequestUUID_completionHandler_(v36, v40, v39, &unk_28385E860);

    v41 = *(a1 + 48);
    v44 = objc_msgSend_requestBodyStream(*(a1 + 32), v42, v43);
    (*(v41 + 16))(v41, v44);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v26);
    }

    v45 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
    {
      v46 = *(a1 + 32);
      v47 = v45;
      v50 = objc_msgSend_requestUUID(v46, v48, v49);
      v53 = objc_msgSend_ckShortDescription(*(a1 + 32), v51, v52);
      v54 = *(a1 + 40);
      v57 = objc_msgSend_urlSessionTask(*(a1 + 32), v55, v56);
      v59 = 138544130;
      v60 = v50;
      v61 = 2114;
      v62 = v53;
      v63 = 2112;
      v64 = v54;
      v65 = 2112;
      v66 = v57;
      _os_log_impl(&dword_22506F000, v47, OS_LOG_TYPE_INFO, "req: %{public}@, %{public}@ ignoring spurious callback from task %@, which is not my task %@", &v59, 0x2Au);
    }

    (*(*(a1 + 48) + 16))();
  }

  v58 = *MEMORY[0x277D85DE8];
}

void sub_2253F5AAC(uint64_t a1, const char *a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_signpost(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_signpost(*(a1 + 32), v5, v6);
    v10 = objc_msgSend_log(v7, v8, v9);

    v13 = objc_msgSend_signpost(*(a1 + 32), v11, v12);
    v16 = objc_msgSend_identifier(v13, v14, v15);

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v17 = *(a1 + 48);
      v18 = *(a1 + 56);
      v19 = *(a1 + 64);
      v60 = 134218496;
      v61 = v17;
      v62 = 2048;
      v63 = v18;
      v64 = 2048;
      v65 = v19;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v10, OS_SIGNPOST_EVENT, v16, "CKDURLRequest", "Sent body data of length %lld (%lld/%lld)", &v60, 0x20u);
    }
  }

  v20 = objc_msgSend_taskDescription(*(a1 + 40), v5, v6);
  v23 = objc_msgSend_urlSessionTask(*(a1 + 32), v21, v22);
  v26 = objc_msgSend_taskDescription(v23, v24, v25);
  isEqualToString = objc_msgSend_isEqualToString_(v20, v27, v26);

  v29 = *MEMORY[0x277CBC878];
  v30 = *MEMORY[0x277CBC880];
  if (isEqualToString)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v29);
    }

    v31 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEBUG))
    {
      v52 = *(a1 + 32);
      v53 = v31;
      v56 = objc_msgSend_requestUUID(v52, v54, v55);
      v57 = *(a1 + 48);
      v58 = *(a1 + 56);
      v59 = *(a1 + 64);
      v60 = 138544130;
      v61 = v56;
      v62 = 2048;
      v63 = v57;
      v64 = 2048;
      v65 = v58;
      v66 = 2048;
      v67 = v59;
      _os_log_debug_impl(&dword_22506F000, v53, OS_LOG_TYPE_DEBUG, "req: %{public}@, URLSession:task:didSendBodyData: %lld totalBytesSent: %lld totalBytesExpectedToSend: %lld", &v60, 0x2Au);
    }

    v34 = objc_msgSend_requestProgressBlock(*(a1 + 32), v32, v33);
    if (!v34 || (*(a1 + 56) & 0x8000000000000000) != 0)
    {

      goto LABEL_21;
    }

    v35 = *(a1 + 64);

    if ((v35 & 0x8000000000000000) == 0)
    {
      v38 = objc_msgSend_requestProgressBlock(*(a1 + 32), v36, v37);
      (*(v38 + 2))(v38, *(a1 + 56), *(a1 + 64), 1);
LABEL_19:
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v29);
    }

    v39 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
    {
      v40 = *(a1 + 32);
      v38 = v39;
      v43 = objc_msgSend_requestUUID(v40, v41, v42);
      v46 = objc_msgSend_ckShortDescription(*(a1 + 32), v44, v45);
      v47 = *(a1 + 40);
      v50 = objc_msgSend_urlSessionTask(*(a1 + 32), v48, v49);
      v60 = 138544130;
      v61 = v43;
      v62 = 2114;
      v63 = v46;
      v64 = 2112;
      v65 = v47;
      v66 = 2112;
      v67 = v50;
      _os_log_impl(&dword_22506F000, v38, OS_LOG_TYPE_INFO, "req: %{public}@, %{public}@ ignoring spurious callback from task %@, which is not my task %@", &v60, 0x2Au);

      goto LABEL_19;
    }
  }

LABEL_21:
  v51 = *MEMORY[0x277D85DE8];
}

void sub_2253F5EDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v160 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_signpost(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_signpost(*(a1 + 32), v5, v6);
    v10 = objc_msgSend_log(v7, v8, v9);

    v13 = objc_msgSend_signpost(*(a1 + 32), v11, v12);
    v16 = objc_msgSend_identifier(v13, v14, v15);

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v17 = *(a1 + 40);
      *buf = 138412290;
      v153 = v17;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v10, OS_SIGNPOST_EVENT, v16, "CKDURLRequest", "Task completed with error: %@", buf, 0xCu);
    }
  }

  objc_msgSend_hash(*(a1 + 32), v5, v6);
  kdebug_trace();
  v20 = objc_msgSend_taskDescription(*(a1 + 48), v18, v19);
  v23 = objc_msgSend_urlSessionTask(*(a1 + 32), v21, v22);
  v26 = objc_msgSend_taskDescription(v23, v24, v25);
  isEqualToString = objc_msgSend_isEqualToString_(v20, v27, v26);

  v29 = *MEMORY[0x277CBC878];
  v30 = *MEMORY[0x277CBC880];
  if (isEqualToString)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v29);
    }

    v31 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
    {
      v34 = *(a1 + 32);
      v35 = v31;
      v38 = objc_msgSend_requestUUID(v34, v36, v37);
      v39 = *(a1 + 40);
      *buf = 138543618;
      v153 = v38;
      v154 = 2112;
      v155 = v39;
      _os_log_impl(&dword_22506F000, v35, OS_LOG_TYPE_DEFAULT, "req: %{public}@, URLSession:task:didCompleteWithError: %@", buf, 0x16u);
    }

    v40 = objc_msgSend__timingData(*(a1 + 48), v32, v33);
    v42 = objc_msgSend_objectForKeyedSubscript_(v40, v41, @"_kCFNTimingDataConnectionReused");
    v45 = objc_msgSend_BOOLValue(v42, v43, v44);

    if ((v45 & 1) == 0)
    {
      v48 = objc_msgSend_signpost(*(a1 + 32), v46, v47);

      if (v48)
      {
        v51 = objc_msgSend_signpost(*(a1 + 32), v49, v50);
        v54 = objc_msgSend_log(v51, v52, v53);

        v57 = objc_msgSend_signpost(*(a1 + 32), v55, v56);
        v60 = objc_msgSend_identifier(v57, v58, v59);

        if (v60 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v54))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22506F000, v54, OS_SIGNPOST_EVENT, v60, "CKDURLRequest", "Connection created", buf, 2u);
        }
      }

      objc_msgSend_hash(*(a1 + 32), v49, v50);
      kdebug_trace();
      v63 = objc_msgSend_metrics(*(a1 + 32), v61, v62);
      v66 = objc_msgSend_connectionsCreated(v63, v64, v65);
      objc_msgSend_setConnectionsCreated_(v63, v67, v66 + 1);
    }

    *(*(a1 + 32) + 33) = 1;
    v68 = objc_msgSend_metrics(*(a1 + 32), v46, v47);
    v71 = objc_msgSend_countOfBytesSent(*(a1 + 48), v69, v70);
    v74 = objc_msgSend_bytesUploaded(v68, v72, v73);
    objc_msgSend_setBytesUploaded_(v68, v75, v74 + v71);

    v78 = objc_msgSend_metrics(*(a1 + 32), v76, v77);
    v81 = objc_msgSend_countOfBytesReceived(*(a1 + 48), v79, v80);
    v84 = objc_msgSend_bytesDownloaded(v78, v82, v83);
    objc_msgSend_setBytesDownloaded_(v78, v85, v84 + v81);

    v88 = objc_msgSend__timingData(*(a1 + 48), v86, v87);
    objc_msgSend_setTimingData_(*(a1 + 32), v89, v88);

    v92 = objc_msgSend_dateRequestWentOut(*(a1 + 32), v90, v91);

    if (v92)
    {
      v95 = objc_msgSend_metrics(*(a1 + 32), v93, v94);
      v98 = objc_msgSend_metrics(*(a1 + 32), v96, v97);
      v101 = objc_msgSend_dateRequestWentOut(*(a1 + 32), v99, v100);
      v104 = objc_msgSend_date(MEMORY[0x277CBEAA8], v102, v103);
      v107 = objc_msgSend_dateRequestWentOut(*(a1 + 32), v105, v106);
      objc_msgSend_timeIntervalSinceDate_(v104, v108, v107);
      started = objc_msgSend_newRangeWithOperationState_startDate_duration_(v98, v109, 1, v101);
      objc_msgSend_addRange_(v95, v111, started);

      objc_msgSend_setDateRequestWentOut_(*(a1 + 32), v112, 0);
    }

    objc_msgSend__tearDownStreamWriter(*(a1 + 32), v93, v94);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_2253F65E4;
    aBlock[3] = &unk_27854D1D0;
    v113 = *(a1 + 40);
    aBlock[4] = *(a1 + 32);
    v150 = v113;
    v151 = *(a1 + 48);
    v114 = _Block_copy(aBlock);
    v117 = objc_msgSend_responseBodyParser(*(a1 + 32), v115, v116);

    if (v117)
    {
      v120 = objc_msgSend_signpost(*(a1 + 32), v118, v119);

      if (v120)
      {
        v123 = objc_msgSend_signpost(*(a1 + 32), v121, v122);
        v126 = objc_msgSend_log(v123, v124, v125);

        v129 = objc_msgSend_signpost(*(a1 + 32), v127, v128);
        v132 = objc_msgSend_identifier(v129, v130, v131);

        if (v132 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v126))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22506F000, v126, OS_SIGNPOST_EVENT, v132, "CKDURLRequest", "Parsing response", buf, 2u);
        }
      }

      v133 = objc_msgSend_responseBodyParser(*(a1 + 32), v121, v122);
      objc_msgSend_finishWithCompletion_(v133, v134, v114);
    }

    else
    {
      v114[2](v114, 0);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v29);
    }

    v135 = *MEMORY[0x277CBC860];
    if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_INFO))
    {
      v136 = *(a1 + 32);
      v137 = v135;
      v140 = objc_msgSend_requestUUID(v136, v138, v139);
      v143 = objc_msgSend_ckShortDescription(*(a1 + 32), v141, v142);
      v144 = *(a1 + 48);
      v147 = objc_msgSend_urlSessionTask(*(a1 + 32), v145, v146);
      *buf = 138544130;
      v153 = v140;
      v154 = 2114;
      v155 = v143;
      v156 = 2112;
      v157 = v144;
      v158 = 2112;
      v159 = v147;
      _os_log_impl(&dword_22506F000, v137, OS_LOG_TYPE_INFO, "req: %{public}@, %{public}@ ignoring spurious callback from task %@, which is not my task %@", buf, 0x2Au);
    }
  }

  v148 = *MEMORY[0x277D85DE8];
}

void sub_2253F65E4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_2253F66B0;
  v7[3] = &unk_2785463D0;
  v7[4] = v4;
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = v3;
  v5 = v3;
  objc_msgSend_performASyncOnLifecycleQueueIfNotFinished_(v4, v6, v7);
}

void sub_2253F66B0(uint64_t a1, const char *a2, uint64_t a3)
{
  v189 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_signpost(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_signpost(*(a1 + 32), v5, v6);
    v10 = objc_msgSend_log(v7, v8, v9);

    v13 = objc_msgSend_signpost(*(a1 + 32), v11, v12);
    v16 = objc_msgSend_identifier(v13, v14, v15);

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v10, OS_SIGNPOST_EVENT, v16, "CKDURLRequest", "Finishing", buf, 2u);
    }
  }

  objc_msgSend_requestDidComplete(*(a1 + 32), v5, v6);
  v19 = objc_msgSend_response(*(a1 + 32), v17, v18);
  v21 = objc_msgSend_valueForHTTPHeaderField_(v19, v20, 0x28387C620);

  v24 = MEMORY[0x277CBC880];
  v25 = MEMORY[0x277CBC860];
  if (v21)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v26 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_INFO))
    {
      v28 = *(a1 + 32);
      v29 = v26;
      v32 = objc_msgSend_requestUUID(v28, v30, v31);
      *buf = 138543618;
      v184 = v32;
      v185 = 2114;
      v186 = v21;
      _os_log_impl(&dword_22506F000, v29, OS_LOG_TYPE_INFO, "req: %{public}@, Server requested an AutoBugCapture snapshot to be triggered with reason: %{public}@", buf, 0x16u);
    }

    objc_msgSend_setServerProvidedAutoBugCaptureReason_(*(a1 + 32), v27, v21);
  }

  v33 = objc_msgSend_response(*(a1 + 32), v22, v23);
  v35 = objc_msgSend_valueForHTTPHeaderField_(v33, v34, 0x28387C640);

  if (v35)
  {
    if (*v24 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v37 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_INFO))
    {
      v38 = *(a1 + 32);
      v39 = v37;
      v42 = objc_msgSend_requestUUID(v38, v40, v41);
      *buf = 138543618;
      v184 = v42;
      v185 = 2114;
      v186 = v35;
      _os_log_impl(&dword_22506F000, v39, OS_LOG_TYPE_INFO, "req: %{public}@, Server requested a Tap-To-Radar prompt with reason: %{public}@", buf, 0x16u);
    }

    v43 = objc_opt_new();
    objc_msgSend_setTitle_(v43, v44, v35);
    v45 = objc_alloc_init(MEMORY[0x277CCAB68]);
    objc_msgSend_appendFormat_(v45, v46, @"Reason: %@\n", v35);
    v49 = objc_msgSend_container(*(a1 + 32), v47, v48);
    v52 = objc_msgSend_containerID(v49, v50, v51);
    v55 = objc_msgSend_containerIdentifier(v52, v53, v54);
    objc_msgSend_appendFormat_(v45, v56, @"Container: %@\n", v55);

    v59 = objc_msgSend_container(*(a1 + 32), v57, v58);
    v62 = objc_msgSend_account(v59, v60, v61);
    v65 = objc_msgSend_dsid(v62, v63, v64);
    objc_msgSend_appendFormat_(v45, v66, @"DSID: %@\n", v65);

    v69 = objc_msgSend_operation(*(a1 + 32), v67, v68);
    v72 = objc_msgSend_topmostParentOperation(v69, v70, v71);
    v75 = objc_msgSend_operationID(v72, v73, v74);
    objc_msgSend_appendFormat_(v45, v76, @"Operation ID: %@\n", v75);

    v79 = objc_msgSend_requestUUID(*(a1 + 32), v77, v78);
    objc_msgSend_appendFormat_(v45, v80, @"Request UUID: %@", v79);

    objc_msgSend_setRadarDescription_(v43, v81, v45);
    v84 = objc_msgSend_response(*(a1 + 32), v82, v83);
    v86 = objc_msgSend_valueForHTTPHeaderField_(v84, v85, 0x28387C660);

    if (v86)
    {
      v89 = objc_msgSend_componentsSeparatedByString_(v86, v87, @"|");
      if (objc_msgSend_count(v89, v90, v91))
      {
        v94 = objc_msgSend_objectAtIndexedSubscript_(v89, v92, 0);
        objc_msgSend_setComponentName_(v43, v95, v94);
      }

      if (objc_msgSend_count(v89, v92, v93) >= 2)
      {
        v98 = objc_msgSend_objectAtIndexedSubscript_(v89, v96, 1);
        objc_msgSend_setComponentVersion_(v43, v99, v98);
      }

      if (objc_msgSend_count(v89, v96, v97) >= 3)
      {
        v101 = objc_msgSend_objectAtIndexedSubscript_(v89, v100, 2);
        objc_msgSend_setComponentID_(v43, v102, v101);
      }
    }

    v103 = objc_msgSend_response(*(a1 + 32), v87, v88);
    v105 = objc_msgSend_valueForHTTPHeaderField_(v103, v104, 0x28387C680);

    if (v105)
    {
      objc_msgSend_setRelatedRadar_(v43, v106, v105);
    }

    objc_msgSend_setServerProvidedTapToRadarRequest_(*(a1 + 32), v106, v43);
  }

  v107 = *(a1 + 32);
  v108 = *(a1 + 40);
  if (v108)
  {
    objc_msgSend_finishWithError_(v107, v36, v108);
    goto LABEL_45;
  }

  if (objc_msgSend_isHandlingAuthRetry(v107, v36, 0))
  {
    goto LABEL_45;
  }

  v111 = objc_msgSend_response(*(a1 + 32), v109, v110);

  if (!v111)
  {
    if (*v24 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v121 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
    {
      v123 = *(a1 + 32);
      v124 = v121;
      v127 = objc_msgSend_requestUUID(v123, v125, v126);
      v128 = *(a1 + 32);
      v129 = *(a1 + 48);
      *buf = 138543874;
      v184 = v127;
      v185 = 2112;
      v186 = v128;
      v187 = 2112;
      v188 = v129;
      _os_log_impl(&dword_22506F000, v124, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Received a didCompleteWithError without an error but no response from the server. Treating the following task as an unknown error: %@ %@", buf, 0x20u);
    }

    v130 = *(a1 + 32);
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v122, *MEMORY[0x277CBC120], 1000, @"Received a didCompleteWithError without receiving a response from the server");
    v131 = LABEL_44:;
    objc_msgSend_finishWithError_(v130, v132, v131);

    goto LABEL_45;
  }

  if (objc_msgSend_needsAuthRetry(*(a1 + 32), v112, v113))
  {
    if (*v24 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v116 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
    {
      v169 = *(a1 + 32);
      v170 = v116;
      v173 = objc_msgSend_requestUUID(v169, v171, v172);
      v176 = objc_msgSend_ckShortDescription(*(a1 + 32), v174, v175);
      *buf = 138543618;
      v184 = v173;
      v185 = 2114;
      v186 = v176;
      _os_log_debug_impl(&dword_22506F000, v170, OS_LOG_TYPE_DEBUG, "req: %{public}@, %{public}@ request is marked as needing auth retry", buf, 0x16u);
    }

    objc_msgSend_setNeedsAuthRetry_(*(a1 + 32), v117, 0);
    v120 = *(a1 + 32);
LABEL_38:
    objc_msgSend__handleAuthFailure(v120, v118, v119);
    goto LABEL_45;
  }

  v134 = objc_msgSend_response(*(a1 + 32), v114, v115);
  *(*(a1 + 32) + 16) = objc_msgSend_statusCode(v134, v135, v136);

  if ((objc_msgSend_responseStatusCode(*(a1 + 32), v137, v138) - 200) >= 0x64)
  {
    if (*v24 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v143 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
    {
      v146 = *(a1 + 32);
      v147 = v143;
      v150 = objc_msgSend_requestUUID(v146, v148, v149);
      v153 = objc_msgSend_responseStatusCode(*(a1 + 32), v151, v152);
      *buf = 138543618;
      v184 = v150;
      v185 = 2048;
      v186 = v153;
      _os_log_impl(&dword_22506F000, v147, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Warn: request failed with http status %ld", buf, 0x16u);
    }

    v154 = objc_msgSend_responseStatusCode(*(a1 + 32), v144, v145);
    v120 = *(a1 + 32);
    if (v154 != 401)
    {
      v155 = objc_msgSend_response(v120, v118, v119);
      v156 = CKErrorFromHTTPResponse();

      objc_msgSend_finishWithError_(*(a1 + 32), v157, v156);
      goto LABEL_45;
    }

    goto LABEL_38;
  }

  if (!*(a1 + 56))
  {
    if ((objc_msgSend_didReceiveResponseBodyData(*(a1 + 32), v139, v140) & 1) != 0 || !objc_msgSend_expectsResponseBody(*(a1 + 32), v158, v159))
    {
      objc_msgSend_finishWithError_(*(a1 + 32), v158, 0);
      goto LABEL_45;
    }

    if (*v24 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v160 = *v25;
    if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEFAULT))
    {
      v162 = *(a1 + 32);
      v163 = v160;
      v166 = objc_msgSend_requestUUID(v162, v164, v165);
      v167 = *(a1 + 32);
      v168 = *(a1 + 48);
      *buf = 138543874;
      v184 = v166;
      v185 = 2112;
      v186 = v167;
      v187 = 2112;
      v188 = v168;
      _os_log_impl(&dword_22506F000, v163, OS_LOG_TYPE_DEFAULT, "req: %{public}@, Received a didCompleteWithError without an error but no response body where one was expected. Treating the following task as an unknown error: %@ %@", buf, 0x20u);
    }

    v130 = *(a1 + 32);
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v161, *MEMORY[0x277CBC120], 1000, @"Received a didCompleteWithError without an error but no response body where one was expected");
    goto LABEL_44;
  }

  if (*v24 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v141 = *v25;
  if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
  {
    v177 = *(a1 + 32);
    v178 = v141;
    v181 = objc_msgSend_requestUUID(v177, v179, v180);
    v182 = *(a1 + 56);
    *buf = 138543618;
    v184 = v181;
    v185 = 2112;
    v186 = v182;
    _os_log_error_impl(&dword_22506F000, v178, OS_LOG_TYPE_ERROR, "req: %{public}@, Parser failed to parse with error %@", buf, 0x16u);
  }

  objc_msgSend_finishWithError_(*(a1 + 32), v142, *(a1 + 56));
LABEL_45:

  v133 = *MEMORY[0x277D85DE8];
}

void sub_2253F7280(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_2250741EC;
  v22 = sub_225073674;
  v23 = 0;
  v2 = _os_activity_create(&dword_22506F000, "url-request-transmission", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253F74EC;
  block[3] = &unk_278546A08;
  v3 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v16 = v3;
  v17 = &v18;
  os_activity_apply(v2, block);
  v4 = v16;
  v5 = v2;

  v6 = *(*(a1 + 32) + 112);
  *(*(a1 + 32) + 112) = v5;

  v8 = objc_msgSend_valueForHTTPHeaderField_(v19[5], v7, *MEMORY[0x277CBBF88]);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v14 = objc_msgSend_requestUUID(*(a1 + 32), v10, v11);
    *buf = 138543618;
    v25 = v14;
    v26 = 2112;
    v27 = v8;
    _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "req: %{public}@, [originalRequest mutableCopy] header UUID=%@", buf, 0x16u);
  }

  v12 = v19[5];
  (*(*(a1 + 48) + 16))();

  _Block_object_dispose(&v18, 8);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_2253F74C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2253F74EC(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = voucher_copy();
  v3 = *(a1 + 32);
  v4 = *(v3 + 328);
  *(v3 + 328) = v2;

  v7 = objc_msgSend_signpost(*(a1 + 32), v5, v6);

  if (v7)
  {
    v10 = objc_msgSend_signpost(*(a1 + 32), v8, v9);
    v13 = objc_msgSend_log(v10, v11, v12);

    v16 = objc_msgSend_signpost(*(a1 + 32), v14, v15);
    v19 = objc_msgSend_identifier(v16, v17, v18);

    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      LOWORD(v56) = 0;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v13, OS_SIGNPOST_EVENT, v19, "CKDURLRequest", "Establishing connection", &v56, 2u);
    }
  }

  objc_msgSend_hash(*(a1 + 32), v8, v9);
  kdebug_trace();
  v22 = objc_msgSend_metrics(*(a1 + 32), v20, v21);
  v25 = objc_msgSend_connections(v22, v23, v24);
  objc_msgSend_setConnections_(v22, v26, v25 + 1);

  v27 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v28 = MEMORY[0x277CBC860];
  v29 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 32);
    v32 = v29;
    v35 = objc_msgSend_requestUUID(v31, v33, v34);
    v56 = 138543362;
    v57 = v35;
    _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEFAULT, "req: %{public}@, requestForEstablishedConnection", &v56, 0xCu);
  }

  v36 = objc_msgSend_valueForHTTPHeaderField_(*(a1 + 40), v30, *MEMORY[0x277CBBF88]);
  if (*v27 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v37 = *v28;
  if (os_log_type_enabled(*v28, OS_LOG_TYPE_DEBUG))
  {
    v51 = *(a1 + 32);
    v52 = v37;
    v55 = objc_msgSend_requestUUID(v51, v53, v54);
    v56 = 138543618;
    v57 = v55;
    v58 = 2112;
    v59 = v36;
    _os_log_debug_impl(&dword_22506F000, v52, OS_LOG_TYPE_DEBUG, "req: %{public}@, originalRequest header UUID=%@", &v56, 0x16u);
  }

  v40 = objc_msgSend_mutableCopy(*(a1 + 40), v38, v39);
  v41 = *(*(a1 + 48) + 8);
  v42 = *(v41 + 40);
  *(v41 + 40) = v40;

  if (objc_msgSend_hasRequestBody(*(a1 + 32), v43, v44))
  {
    v47 = *(*(*(a1 + 48) + 8) + 40);
    v48 = objc_msgSend_requestBodyStream(*(a1 + 32), v45, v46);
    objc_msgSend_setHTTPBodyStream_(v47, v49, v48);
  }

  v50 = *MEMORY[0x277D85DE8];
}

void sub_2253F7878(uint64_t a1, const char *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_signpost(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_signpost(*(a1 + 32), v5, v6);
    v10 = objc_msgSend_log(v7, v8, v9);

    v13 = objc_msgSend_signpost(*(a1 + 32), v11, v12);
    v16 = objc_msgSend_identifier(v13, v14, v15);

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      LOWORD(v24) = 0;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v10, OS_SIGNPOST_EVENT, v16, "CKDURLRequest", "Waiting for connection", &v24, 2u);
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v17 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 32);
    v19 = v17;
    v22 = objc_msgSend_requestUUID(v18, v20, v21);
    v24 = 138543362;
    v25 = v22;
    _os_log_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEFAULT, "req: %{public}@, URLSessionTaskIsWaitingForConnection", &v24, 0xCu);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2253F7A8C(uint64_t a1, const char *a2, uint64_t a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  v5 = objc_msgSend_signpost(*(a1 + 32), a2, a3);

  if (v4 == 1)
  {
    if (!v5)
    {
      goto LABEL_12;
    }

    v8 = objc_msgSend_signpost(*(a1 + 32), v6, v7);
    v11 = objc_msgSend_log(v8, v9, v10);

    v14 = objc_msgSend_signpost(*(a1 + 32), v12, v13);
    v17 = objc_msgSend_identifier(v14, v15, v16);

    if (v17 - 1 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v11))
    {
      goto LABEL_11;
    }

    LOWORD(v36) = 0;
    v18 = "Conditional requirements satisfied";
    goto LABEL_10;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v19 = objc_msgSend_signpost(*(a1 + 32), v6, v7);
  v11 = objc_msgSend_log(v19, v20, v21);

  v24 = objc_msgSend_signpost(*(a1 + 32), v22, v23);
  v17 = objc_msgSend_identifier(v24, v25, v26);

  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    LOWORD(v36) = 0;
    v18 = "Conditional requirements not satisfied";
LABEL_10:
    _os_signpost_emit_with_name_impl(&dword_22506F000, v11, OS_SIGNPOST_EVENT, v17, "CKDURLRequest", v18, &v36, 2u);
  }

LABEL_11:

LABEL_12:
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v27 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(a1 + 32);
    v29 = v27;
    v32 = objc_msgSend_requestUUID(v28, v30, v31);
    v33 = v32;
    v34 = "NOT satisfied";
    if (*(a1 + 40))
    {
      v34 = "satisfied";
    }

    v36 = 138543618;
    v37 = v32;
    v38 = 2080;
    v39 = v34;
    _os_log_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEFAULT, "req: %{public}@, conditionalRequirementsChanged to: %s", &v36, 0x16u);
  }

  v35 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2253F7D70(uint64_t a1, const char *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_signpost(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_signpost(*(a1 + 32), v5, v6);
    v10 = objc_msgSend_log(v7, v8, v9);

    v13 = objc_msgSend_signpost(*(a1 + 32), v11, v12);
    v16 = objc_msgSend_identifier(v13, v14, v15);

    if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v17 = *(a1 + 40);
      v28 = 138412290;
      v29 = v17;
      _os_signpost_emit_with_name_impl(&dword_22506F000, v10, OS_SIGNPOST_EVENT, v16, "CKDURLRequest", "Retrying background data task with error: %@", &v28, 0xCu);
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v18 = *MEMORY[0x277CBC860];
  if (os_log_type_enabled(*MEMORY[0x277CBC860], OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    v21 = v18;
    v24 = objc_msgSend_requestUUID(v20, v22, v23);
    v25 = *(a1 + 40);
    v28 = 138543618;
    v29 = v24;
    v30 = 2112;
    v31 = v25;
    _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEFAULT, "req: %{public}@, URLSessionWillRetryBackgroundDataTask after event %@", &v28, 0x16u);
  }

  result = objc_msgSend_setResponseBodyParser_(*(a1 + 32), v19, 0);
  v27 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2253F94F8()
{
  result = _CKUseSystemInstalledBinaries();
  *MEMORY[0x277CBC818] = result;
  return result;
}

void sub_2253FCC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2253FCC28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_wipeAllConfigurations(WeakRetained, v1, v2);
}

uint64_t sub_2253FCCBC()
{
  qword_280D585C8 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

void sub_2253FD158(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = dispatch_group_create();
  objc_msgSend_setConfigurationFetchedGroup_(*(*(*(a1 + 48) + 8) + 40), v6, v5);
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, *(*(*(a1 + 48) + 8) + 40));
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = sub_2253FD308;
  v16 = &unk_27854A920;
  objc_copyWeak(&v19, &location);
  objc_copyWeak(&v20, &from);
  v17 = *(a1 + 40);
  v7 = v5;
  v18 = v7;
  objc_msgSend_setCompletionBlock_(*(*(*(a1 + 48) + 8) + 40), v8, &v13);
  v11 = objc_msgSend_globalConfigurationOps(*(a1 + 32), v9, v10, v13, v14, v15, v16);
  objc_msgSend_addObject_(v11, v12, *(*(*(a1 + 48) + 8) + 40));

  dispatch_group_enter(v7);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2253FD2D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v18 - 56));
  _Unwind_Resume(a1);
}

void sub_2253FD308(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_loadWeakRetained(a1 + 7);
  v4 = objc_opt_new();
  v7 = objc_msgSend_propertyQueue(WeakRetained, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253FD428;
  block[3] = &unk_278548978;
  v11 = v3;
  v12 = WeakRetained;
  v13 = v4;
  v14 = a1[4];
  v15 = a1[5];
  v8 = v4;
  v9 = v3;
  dispatch_async(v7, block);
}

void sub_2253FD428(uint64_t a1, const char *a2, uint64_t a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_configuration(*(a1 + 32), a2, a3);

  if (v4)
  {
    v7 = objc_msgSend_deviceContext(*(a1 + 32), v5, v6);
    v10 = objc_msgSend_metadataCache(v7, v8, v9);
    v13 = objc_msgSend_configuration(*(a1 + 32), v11, v12);
    objc_msgSend_setGlobalConfiguration_(v10, v14, v13);

    v17 = objc_msgSend_configuration(*(a1 + 32), v15, v16);
    objc_msgSend_setGlobalConfiguration_(*(a1 + 40), v18, v17);

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v21 = objc_msgSend_globalConfigurationOps(*(a1 + 40), v19, v20);
    v24 = objc_msgSend_copy(v21, v22, v23);

    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v51, v57, 16);
    if (v26)
    {
      v28 = v26;
      v29 = *v52;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v52 != v29)
          {
            objc_enumerationMutation(v24);
          }

          v31 = *(*(&v51 + 1) + 8 * i);
          if (v31 != *(a1 + 32))
          {
            objc_msgSend_addObject_(*(a1 + 48), v27, v31);
          }
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v27, &v51, v57, 16);
      }

      while (v28);
    }

    v34 = objc_msgSend_globalConfigurationOps(*(a1 + 40), v32, v33);
    objc_msgSend_removeAllObjects(v34, v35, v36);

    if (objc_msgSend_count(*(a1 + 48), v37, v38))
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v39 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v44 = *(a1 + 48);
        v45 = v39;
        v48 = objc_msgSend_count(v44, v46, v47);
        *buf = 134217984;
        v56 = v48;
        _os_log_debug_impl(&dword_22506F000, v45, OS_LOG_TYPE_DEBUG, "Tearing down %lu superfluous global configuration operations", buf, 0xCu);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2253FD704;
      block[3] = &unk_278545A00;
      v40 = *(a1 + 56);
      v50 = *(a1 + 48);
      dispatch_async(v40, block);
    }
  }

  else
  {
    v41 = objc_msgSend_globalConfigurationOps(*(a1 + 40), v5, v6);
    objc_msgSend_removeObject_(v41, v42, *(a1 + 32));
  }

  dispatch_group_leave(*(a1 + 64));
  v43 = *MEMORY[0x277D85DE8];
}

void sub_2253FD704(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = *(a1 + 32);
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v10, v14, 16);
  if (v3)
  {
    v6 = v3;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v1);
        }

        objc_msgSend_cancel(*(*(&v10 + 1) + 8 * v8++), v4, v5, v10);
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v4, &v10, v14, 16);
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2253FD7F0(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v2 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v15 = *(*(*(a1 + 64) + 8) + 40);
    v16 = *(a1 + 32);
    *buf = 134218240;
    v22 = v15;
    v23 = 2048;
    v24 = v16;
    _os_log_debug_impl(&dword_22506F000, v2, OS_LOG_TYPE_DEBUG, "Waited on outstanding global configuration operation %p for operation %p", buf, 0x16u);
  }

  if (*(a1 + 56))
  {
    v5 = objc_msgSend_globalConfiguration(*(a1 + 40), v3, v4);
    v8 = v5;
    if (v5 && !objc_msgSend_isExpired(v5, v6, v7))
    {
      v9 = 0;
      v10 = 1;
    }

    else
    {
      v9 = objc_msgSend_error(*(*(*(a1 + 64) + 8) + 40), v6, v7);
      v10 = 0;
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2253FD9C4;
    block[3] = &unk_2785456F0;
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v20 = v10;
    v18 = v9;
    v19 = v12;
    v13 = v9;
    dispatch_async(v11, block);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_2253FDDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2253FDDEC(uint64_t a1, const char *a2)
{
  v2 = *(a1 + 40);
  v3 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 1000, @"Operation's container was invalid when requesting container specific info: %@", *(a1 + 32));
  (*(v2 + 16))(v2, 0, v3);
}

void sub_2253FDE74(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  objc_msgSend_setRequireUserIDs_(*(*(*(a1 + 64) + 8) + 40), v5, *(a1 + 80));
  objc_initWeak(&location, *(a1 + 32));
  objc_initWeak(&from, *(*(*(a1 + 64) + 8) + 40));
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2253FE0BC;
  v29[3] = &unk_27854DC38;
  objc_copyWeak(&v32, &location);
  objc_copyWeak(v33, &from);
  v6 = *(a1 + 40);
  v33[1] = *(a1 + 72);
  *&v7 = v6;
  *(&v7 + 1) = *(a1 + 32);
  v28 = v7;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v30 = v28;
  v31 = v10;
  objc_msgSend_setCompletionBlock_(*(*(*(a1 + 64) + 8) + 40), v11, v29);
  v14 = objc_msgSend_containerSpecificInfoOperations(*(a1 + 32), v12, v13);
  v16 = objc_msgSend_objectForKeyedSubscript_(v14, v15, *(a1 + 48));

  if (!v16)
  {
    v19 = objc_opt_new();
    v22 = objc_msgSend_containerSpecificInfoOperations(*(a1 + 32), v20, v21);
    objc_msgSend_setObject_forKeyedSubscript_(v22, v23, v19, *(a1 + 48));
  }

  v24 = objc_msgSend_containerSpecificInfoOperations(*(a1 + 32), v17, v18, v28);
  v26 = objc_msgSend_objectForKeyedSubscript_(v24, v25, *(a1 + 48));
  objc_msgSend_addObject_(v26, v27, *(*(*(a1 + 64) + 8) + 40));

  objc_destroyWeak(v33);
  objc_destroyWeak(&v32);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void sub_2253FE08C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 64));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2253FE0BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = objc_loadWeakRetained((a1 + 72));
  v6 = objc_msgSend_propertyQueue(WeakRetained, v4, v5);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253FE1EC;
  block[3] = &unk_27854DC10;
  v15 = v3;
  v16 = WeakRetained;
  v7 = *(a1 + 32);
  v19 = *(a1 + 80);
  *&v8 = v7;
  *(&v8 + 1) = *(a1 + 40);
  v13 = v8;
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  *&v11 = v9;
  *(&v11 + 1) = v10;
  v17 = v13;
  v18 = v11;
  v12 = v3;
  dispatch_sync(v6, block);
}

void sub_2253FE1EC(uint64_t a1, const char *a2, uint64_t a3)
{
  v154 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_error(*(a1 + 32), a2, a3);
  v5 = MEMORY[0x277CBC880];
  v6 = MEMORY[0x277CBC830];
  v135 = v4;
  if (v4)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v153 = v135;
      _os_log_impl(&dword_22506F000, v7, OS_LOG_TYPE_INFO, "Got an error from CKDContainerSpecificInfoOperation: %@", buf, 0xCu);
    }
  }

  v8 = 0x277CBE000uLL;
  v9 = objc_opt_new();
  v136 = objc_msgSend_containerServerInfo(*(a1 + 32), v10, v11);
  if (v136)
  {
    v14 = objc_msgSend_configurationForContainer_(*(a1 + 40), v12, *(a1 + 48));
    v17 = objc_msgSend_containerScopedUserID(v14, v15, v16);
    if (v17)
    {
      v20 = v17;
      v21 = objc_msgSend_containerScopedUserID(v136, v18, v19);

      if (!v21)
      {
        v22 = objc_msgSend_containerScopedUserID(v14, v18, v19);
        objc_msgSend_setContainerScopedUserID_(v136, v23, v22);
      }
    }

    v24 = objc_msgSend_orgAdminUserID(v14, v18, v19);
    if (v24)
    {
      v27 = v24;
      v28 = objc_msgSend_orgAdminUserID(v136, v25, v26);

      if (!v28)
      {
        v29 = objc_msgSend_orgAdminUserID(v14, v25, v26);
        objc_msgSend_setOrgAdminUserID_(v136, v30, v29);
      }
    }

    v31 = objc_msgSend_deviceContext(*(a1 + 32), v25, v26);
    v34 = objc_msgSend_supportsCaching(v31, v32, v33);

    if (v34)
    {
      v37 = objc_msgSend_account(*(a1 + 48), v35, v36);
      v40 = objc_msgSend_accountType(v37, v38, v39);

      if (v40 <= 3 && v40 != 2)
      {
        v41 = v6;
        v44 = objc_msgSend_containerID(*(a1 + 48), v35, v36);
        if (!v44)
        {
          v132 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v42, v43);
          objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v132, v133, *(a1 + 80), *(a1 + 56), @"CKDServerConfigurationManager.m", 310, @"Unexpectedly-nil containerID for container %@", *(a1 + 48));
        }

        v45 = objc_msgSend_deviceContext(*(a1 + 32), v42, v43);
        v48 = objc_msgSend_metadataCache(v45, v46, v47);
        v51 = objc_msgSend_containerID(*(a1 + 48), v49, v50);
        v54 = objc_msgSend_account(*(a1 + 48), v52, v53);
        v57 = objc_msgSend_accountID(v54, v55, v56);
        objc_msgSend_setContainerServerInfo_forContainerID_accountID_(v48, v58, v136, v51, v57);

        v6 = v41;
        v5 = MEMORY[0x277CBC880];
        v8 = 0x277CBE000;
      }
    }

    v59 = objc_msgSend_containerSpecificInfos(*(a1 + 40), v35, v36);
    objc_msgSend_setObject_forKey_(v59, v60, v136, *(a1 + 64));

    if (*v5 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v61 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
    {
      v123 = *(a1 + 32);
      v124 = v61;
      v127 = objc_msgSend_containerServerInfo(v123, v125, v126);
      *buf = 138412290;
      v153 = v127;
      _os_log_debug_impl(&dword_22506F000, v124, OS_LOG_TYPE_DEBUG, "Set in-memory container specific info from op result: %@", buf, 0xCu);
    }

    v148 = 0u;
    v149 = 0u;
    v146 = 0u;
    v147 = 0u;
    v64 = objc_msgSend_containerSpecificInfoOperations(*(a1 + 40), v62, v63);
    v66 = objc_msgSend_objectForKeyedSubscript_(v64, v65, *(a1 + 64));
    v69 = objc_msgSend_copy(v66, v67, v68);

    v71 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v70, &v146, v151, 16);
    if (v71)
    {
      v73 = v71;
      v74 = *v147;
      do
      {
        for (i = 0; i != v73; ++i)
        {
          if (*v147 != v74)
          {
            objc_enumerationMutation(v69);
          }

          v76 = *(*(&v146 + 1) + 8 * i);
          if (v76 != *(a1 + 32))
          {
            objc_msgSend_addObject_(v9, v72, v76);
          }
        }

        v73 = objc_msgSend_countByEnumeratingWithState_objects_count_(v69, v72, &v146, v151, 16);
      }

      while (v73);
    }

    v79 = objc_msgSend_containerSpecificInfoOperations(*(a1 + 40), v77, v78);
    objc_msgSend_removeObjectForKey_(v79, v80, *(a1 + 64));

    goto LABEL_33;
  }

  if (!v135)
  {
    v120 = MEMORY[0x277CBC560];
    v121 = *MEMORY[0x277CBC120];
    v14 = objc_msgSend_operationID(*(a1 + 32), v12, v13);
    v135 = objc_msgSend_errorWithDomain_code_format_(v120, v122, v121, 1000, @"Failed to get server info for container with operation: %@", v14);
LABEL_33:
  }

  v81 = objc_msgSend_containerSpecificInfoOperations(*(a1 + 40), v12, v13);
  v83 = objc_msgSend_objectForKeyedSubscript_(v81, v82, *(a1 + 64));
  objc_msgSend_removeObject_(v83, v84, *(a1 + 32));

  v87 = objc_msgSend_containerSpecificInfoOperations(*(a1 + 40), v85, v86);
  v89 = objc_msgSend_objectForKeyedSubscript_(v87, v88, *(a1 + 64));
  v92 = objc_msgSend_count(v89, v90, v91);

  if (!v92)
  {
    v95 = objc_msgSend_containerSpecificInfoOperations(*(a1 + 40), v93, v94);
    objc_msgSend_removeObjectForKey_(v95, v96, *(a1 + 64));
  }

  v97 = objc_msgSend_arrayWithObject_(*(v8 + 2840), v93, *(a1 + 32));
  objc_msgSend_addObjectsFromArray_(v97, v98, v9);
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  obj = v97;
  v100 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v99, &v142, v150, 16);
  if (v100)
  {
    v103 = v100;
    v104 = *v143;
    do
    {
      for (j = 0; j != v103; ++j)
      {
        if (*v143 != v104)
        {
          objc_enumerationMutation(obj);
        }

        v106 = *(*(&v142 + 1) + 8 * j);
        v107 = objc_msgSend_fetchContainerSpecificInfoCompletionHandlers(*(a1 + 40), v101, v102);
        v109 = objc_msgSend_objectForKey_(v107, v108, v106);
        v139[0] = MEMORY[0x277D85DD0];
        v139[1] = 3221225472;
        v139[2] = sub_2253FEA08;
        v139[3] = &unk_27854DBE8;
        v139[4] = v106;
        v140 = v136;
        v141 = v135;
        objc_msgSend_enumerateObjectsUsingBlock_(v109, v110, v139);

        v113 = objc_msgSend_fetchContainerSpecificInfoCompletionHandlers(*(a1 + 40), v111, v112);
        objc_msgSend_removeObjectForKey_(v113, v114, v106);
      }

      v103 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v101, &v142, v150, 16);
    }

    while (v103);
  }

  if (objc_msgSend_count(v9, v115, v116))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v117 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v128 = v117;
      v131 = objc_msgSend_count(v9, v129, v130);
      *buf = 134217984;
      v153 = v131;
      _os_log_debug_impl(&dword_22506F000, v128, OS_LOG_TYPE_DEBUG, "Tearing down %lu superfluous container specific info operations", buf, 0xCu);
    }

    v118 = *(a1 + 72);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2253FEB00;
    block[3] = &unk_278545A00;
    v138 = v9;
    dispatch_async(v118, block);
  }

  v119 = *MEMORY[0x277D85DE8];
}

void sub_2253FEA08(void **a1, void *a2)
{
  v3 = a2;
  objc_msgSend_qualityOfService(a1[4], v4, v5);
  v6 = CKGetGlobalQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253FEAE8;
  block[3] = &unk_2785457E0;
  v11 = v3;
  v9 = a1[5];
  v10 = a1[6];
  v7 = v3;
  dispatch_async(v6, block);
}

void sub_2253FEB00(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = *(a1 + 32);
  v3 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v2, &v10, v14, 16);
  if (v3)
  {
    v6 = v3;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v1);
        }

        objc_msgSend_cancel(*(*(&v10 + 1) + 8 * v8++), v4, v5, v10);
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v1, v4, &v10, v14, 16);
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void sub_2253FECF4(void **a1, const char *a2, uint64_t a3)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC810] == 1 && objc_msgSend_checkAndClearUnitTestOverrides_(a1[4], a2, @"ForceFetchGlobalConfig"))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    v5 = 1;
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v4, OS_LOG_TYPE_INFO, "Forcing a fetch of the global config", buf, 2u);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_msgSend_globalConfiguration(a1[5], a2, a3);
  v9 = v6;
  if (v5)
  {

    v9 = 0;
LABEL_17:
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = sub_2253FF038;
    v36[3] = &unk_27854DC88;
    v21 = &v37;
    v22 = a1[5];
    v23 = a1[4];
    *&v24 = v23;
    *(&v24 + 1) = a1[5];
    v32 = v24;
    v25 = a1[7];
    *&v26 = a1[6];
    *(&v26 + 1) = v25;
    v37 = v32;
    v38 = v26;
    objc_msgSend__fetchGlobalConfigForOperation_completionHandler_(v22, v27, v23, v36);

    v28 = *(&v38 + 1);
    goto LABEL_18;
  }

  if (!v6)
  {
    v10 = objc_msgSend_deviceContext(a1[4], v7, v8);
    v13 = objc_msgSend_metadataCache(v10, v11, v12);
    v16 = objc_msgSend_globalConfiguration(v13, v14, v15);
    objc_msgSend_setGlobalConfiguration_(a1[5], v17, v16);

    v9 = objc_msgSend_globalConfiguration(a1[5], v18, v19);
    if (!v9)
    {
      goto LABEL_17;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v40 = v9;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Fetched global configuration from metadata cache: %@", buf, 0xCu);
    }
  }

  if (objc_msgSend_isExpired(v9, v7, v8))
  {
    goto LABEL_17;
  }

  v30 = a1[7];
  if (!v30)
  {
    goto LABEL_19;
  }

  v31 = a1[6];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2253FF1D4;
  block[3] = &unk_2785456C8;
  v21 = &v35;
  v35 = v30;
  v9 = v9;
  v34 = v9;
  dispatch_async(v31, block);
  v28 = v34;
LABEL_18:

LABEL_19:
  v29 = *MEMORY[0x277D85DE8];
}

void sub_2253FF038(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    *buf = 134217984;
    v16 = v8;
    _os_log_debug_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEBUG, "Finished fetching global config on behalf of operation %p", buf, 0xCu);
    if (a2)
    {
      goto LABEL_5;
    }
  }

  else if (a2)
  {
LABEL_5:
    objc_msgSend_configurationForOperation_completionHandler_(*(a1 + 40), v7, *(a1 + 32), *(a1 + 56));
    goto LABEL_9;
  }

  v9 = *(a1 + 56);
  if (v9)
  {
    v10 = *(a1 + 48);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_2253FF1BC;
    v12[3] = &unk_2785456C8;
    v14 = v9;
    v13 = v5;
    dispatch_async(v10, v12);
  }

LABEL_9:

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2253FF4C0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = *(a1 + 32);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2253FF598;
    block[3] = &unk_2785457E0;
    v12 = v7;
    v10 = v5;
    v11 = v6;
    dispatch_async(v8, block);
  }
}

void sub_2253FF5B0(uint64_t a1, const char *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_configurationForContainer_(*(a1 + 32), a2, *(a1 + 40));
  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v6 = *(a1 + 65);
  v29 = 0;
  v8 = objc_msgSend__validateContainerServerInfo_requireUserIDs_requireEnvironment_error_(v4, v7, v3, v5, v6, &v29);
  v9 = v29;
  if (!v8)
  {
    v10 = *MEMORY[0x277CBC878];
    v11 = *MEMORY[0x277CBC880];
    if (v3)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v10);
      }

      v12 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      *buf = 138412290;
      v31 = v9;
      v13 = "Invalid cached containerSpecificInfo, going to the server: %@";
      v14 = v12;
      v15 = 12;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v10);
      }

      v16 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_11;
      }

      *buf = 0;
      v13 = "No cached containerSpecificInfo, going to the server";
      v14 = v16;
      v15 = 2;
    }

    _os_log_debug_impl(&dword_22506F000, v14, OS_LOG_TYPE_DEBUG, v13, buf, v15);
LABEL_11:
    v17 = *(a1 + 48);
    v18 = *(a1 + 64);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = sub_2253FF7F0;
    v24[3] = &unk_27854DD00;
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v21 = *(a1 + 32);
    v25 = v20;
    v26 = v21;
    v28 = *(a1 + 64);
    v27 = *(a1 + 56);
    objc_msgSend__fetchContainerSpecificInfoForOperation_requireUserIDs_completionHandler_(v19, v22, v17, v18, v24);

    goto LABEL_12;
  }

  (*(*(a1 + 56) + 16))();
LABEL_12:

  v23 = *MEMORY[0x277D85DE8];
}

void sub_2253FF7F0(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v15 = *(a1 + 32);
    *buf = 138412546;
    v18 = v15;
    v19 = 2112;
    v20 = v6;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Fetched container server info for container %@ with error: %@", buf, 0x16u);
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else if (!v5)
  {
    goto LABEL_8;
  }

  v9 = *(a1 + 40);
  v10 = *(a1 + 56);
  v11 = *(a1 + 57);
  v16 = v6;
  v12 = objc_msgSend__validateContainerServerInfo_requireUserIDs_requireEnvironment_error_(v9, v8, v5, v10, v11, &v16);
  v13 = v16;

  if ((v12 & 1) == 0)
  {

    v5 = 0;
  }

  v6 = v13;
LABEL_8:
  (*(*(a1 + 48) + 16))();

  v14 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2253FFBD4(uint64_t a1, const char *a2)
{
  objc_msgSend_setGlobalConfiguration_(*(a1 + 32), a2, 0);
  v5 = objc_msgSend_containerSpecificInfos(*(a1 + 32), v3, v4);
  objc_msgSend_removeAllObjects(v5, v6, v7);

  v10 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v8, v9);
  v13 = objc_msgSend_metadataCache(v10, v11, v12);
  objc_msgSend_expungeAllData(v13, v14, v15);

  v17 = *(a1 + 32);

  return objc_msgSend_setShouldDropAllConfigurations_(v17, v16, 0);
}

void sub_225400074(uint64_t a1, int a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v7 = @"NO";
    if (a2)
    {
      v7 = @"YES";
    }

    v10 = 138412802;
    v11 = v7;
    if (v4)
    {
      v8 = @" error: ";
    }

    else
    {
      v8 = &stru_28385ED00;
    }

    v12 = 2112;
    v13 = v8;
    if (v4)
    {
      v9 = v4;
    }

    else
    {
      v9 = &stru_28385ED00;
    }

    v14 = 2112;
    v15 = v9;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Registration for app site association data completed with success: %@%@%@", &v10, 0x20u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

void sub_2254006E8(uint64_t a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_containerSpecificInfos(*(a1 + 32), a2, a3);
  objc_msgSend_removeObjectForKey_(v4, v5, *(a1 + 40));

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v31 = *(a1 + 40);
    v32 = 138412290;
    v33 = v31;
    _os_log_debug_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEBUG, "Expiring configuration for %@", &v32, 0xCu);
  }

  v9 = objc_msgSend_deviceContext(*(a1 + 48), v7, v8);
  v12 = objc_msgSend_supportsCaching(v9, v10, v11);

  if (v12)
  {
    v15 = objc_msgSend_account(*(a1 + 48), v13, v14);
    v18 = objc_msgSend_accountType(v15, v16, v17);
    if (v18 <= 3 && v18 != 2)
    {
      v21 = objc_msgSend_deviceContext(*(a1 + 48), v19, v20);
      v24 = objc_msgSend_metadataCache(v21, v22, v23);
      v25 = *(a1 + 56);
      v28 = objc_msgSend_accountID(v15, v26, v27);
      objc_msgSend_setContainerServerInfo_forContainerID_accountID_(v24, v29, 0, v25, v28);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void sub_22540098C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2254009A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_globalConfiguration(*(a1 + 32), a2, a3);
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return MEMORY[0x2821F96F8]();
}

void sub_225400ABC(uint64_t a1, const char *a2, uint64_t a3)
{
  v91 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_globalConfigurationOps(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_count(v4, v5, v6);

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v10 = objc_msgSend_containerSpecificInfoOperations(*(a1 + 32), v8, v9);
  v13 = objc_msgSend_allValues(v10, v11, v12);

  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v83, v90, 16);
  if (v15)
  {
    v18 = v15;
    v19 = *v84;
    do
    {
      v20 = 0;
      do
      {
        if (*v84 != v19)
        {
          objc_enumerationMutation(v13);
        }

        v7 += objc_msgSend_count(*(*(&v83 + 1) + 8 * v20++), v16, v17);
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v83, v90, 16);
    }

    while (v18);
  }

  v21 = *(a1 + 40);
  v23 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v22, @"\tGlobal Configuration Manager (%lu running ops)", v7);
  objc_msgSend_addObject_(v21, v24, v23);

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v27 = objc_msgSend_globalConfigurationOps(*(a1 + 32), v25, v26);
  v29 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v28, &v79, v89, 16);
  if (v29)
  {
    v31 = v29;
    v32 = *v80;
    do
    {
      v33 = 0;
      do
      {
        if (*v80 != v32)
        {
          objc_enumerationMutation(v27);
        }

        v34 = *(a1 + 40);
        v35 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v30, @"\t\tGlobal configuration operation: %@", *(*(&v79 + 1) + 8 * v33));
        objc_msgSend_addObject_(v34, v36, v35);

        ++v33;
      }

      while (v31 != v33);
      v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v27, v30, &v79, v89, 16);
    }

    while (v31);
  }

  v39 = objc_msgSend_containerSpecificInfoOperations(*(a1 + 32), v37, v38);
  v42 = objc_msgSend_count(v39, v40, v41);

  if (v42)
  {
    objc_msgSend_addObject_(*(a1 + 40), v43, @"\t\tContainer specific operations:");
    v44 = objc_opt_new();
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v47 = objc_msgSend_containerSpecificInfoOperations(*(a1 + 32), v45, v46);
    v50 = objc_msgSend_allValues(v47, v48, v49);

    v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v51, &v75, v88, 16);
    if (v52)
    {
      v55 = v52;
      v56 = *v76;
      do
      {
        v57 = 0;
        do
        {
          if (*v76 != v56)
          {
            objc_enumerationMutation(v50);
          }

          v58 = objc_msgSend_allObjects(*(*(&v75 + 1) + 8 * v57), v53, v54);
          objc_msgSend_addObjectsFromArray_(v44, v59, v58);

          ++v57;
        }

        while (v55 != v57);
        v55 = objc_msgSend_countByEnumeratingWithState_objects_count_(v50, v53, &v75, v88, 16);
      }

      while (v55);
    }

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v60 = v44;
    v62 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v61, &v71, v87, 16);
    if (v62)
    {
      v64 = v62;
      v65 = *v72;
      do
      {
        v66 = 0;
        do
        {
          if (*v72 != v65)
          {
            objc_enumerationMutation(v60);
          }

          v67 = *(a1 + 40);
          v68 = objc_msgSend_statusReportWithIndent_(*(*(&v71 + 1) + 8 * v66), v63, 3);
          objc_msgSend_addObject_(v67, v69, v68);

          ++v66;
        }

        while (v64 != v66);
        v64 = objc_msgSend_countByEnumeratingWithState_objects_count_(v60, v63, &v71, v87, 16);
      }

      while (v64);
    }
  }

  v70 = *MEMORY[0x277D85DE8];
}

void sub_225400F80(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v18 = v4;
    v7 = objc_msgSend_c2MetricsEndpoint(a1, v5, v6);

    if (!v7)
    {
      v10 = objc_msgSend_baseURLForServerType_partitionType_(v18, v8, 4, 1);
      objc_msgSend_setC2MetricsEndpoint_(a1, v11, v10);

      objc_msgSend_setAnonymous_(a1, v12, 0);
    }

    v13 = objc_msgSend_c2MetricsEndpoint(a1, v8, v9);

    v4 = v18;
    if (!v13)
    {
      v15 = objc_msgSend_baseURLForServerType_partitionType_(v18, v14, 4, 2);
      objc_msgSend_setC2MetricsEndpoint_(a1, v16, v15);

      objc_msgSend_setAnonymous_(a1, v17, 1);
      v4 = v18;
    }
  }
}

void sub_225401064(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v45 = objc_msgSend_containerID(v7, v8, v9);
  objc_msgSend__setupC2MetricsEndpointWithContainer_(a1, v10, v7);
  v13 = objc_msgSend_applicationVersion(v7, v11, v12);
  objc_msgSend_setClientProcessVersion_(a1, v14, v13);

  v17 = objc_msgSend_applicationBundleIdentifierForContainerAccess(v7, v15, v16);
  objc_msgSend_setClientProcessBundleId_(a1, v18, v17);

  v21 = objc_msgSend_containerID(v7, v19, v20);
  v24 = objc_msgSend_containerIdentifier(v21, v22, v23);
  objc_msgSend_setContainer_(a1, v25, v24);

  v28 = objc_msgSend_containerID(v7, v26, v27);

  objc_msgSend_environment(v28, v29, v30);
  v31 = CKContainerEnvironmentString();
  objc_msgSend_setEnvironment_(a1, v32, v31);

  v34 = objc_msgSend_c2AllOperationMetricsReportFrequency_(v6, v33, v45);
  objc_msgSend_setReportClientOperationFrequency_(a1, v35, v34);
  v37 = objc_msgSend_c2AllOperationMetricsReportFrequencyBase_(v6, v36, v45);
  objc_msgSend_setReportClientOperationFrequencyBase_(a1, v38, v37);
  v40 = objc_msgSend_c2AllOperationGroupMetricsReportFrequency_(v6, v39, v45);
  objc_msgSend_setReportOperationGroupFrequency_(a1, v41, v40);
  v43 = objc_msgSend_c2AllOperationGroupMetricsReportFrequencyBase_(v6, v42, v45);

  objc_msgSend_setReportOperationGroupFrequencyBase_(a1, v44, v43);
}

id sub_2254011F0(uint64_t a1, uint64_t a2, void *a3)
{
  v89[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v6 = objc_msgSend_container(v3, v4, v5);
  v9 = objc_msgSend_serverConfig(v6, v7, v8);
  v12 = objc_msgSend_containerID(v6, v10, v11);
  v13 = objc_alloc_init(MEMORY[0x277CF36B8]);
  objc_msgSend__attributeCurrentContainer_config_(v13, v14, v6, v9);
  v17 = objc_msgSend_preferAnonymousRequests(v3, v15, v16);
  v20 = objc_msgSend_anonymous(v13, v18, v19);
  objc_msgSend_setAnonymous_(v13, v21, v17 | v20);
  if ((objc_msgSend_anonymous(v13, v22, v23) & 1) == 0)
  {
    v26 = objc_msgSend_container(v3, v24, v25);
    v29 = objc_msgSend_containerScopedUserID(v26, v27, v28);
    objc_msgSend_setContainerScopedUserIdentifier_(v13, v30, v29);

    v33 = objc_msgSend_containerScopedUserIdentifier(v13, v31, v32);
    if (v33)
    {
      v34 = v33;
      v35 = objc_msgSend_containerScopedUserIdentifier(v13, v24, v25);
      v38 = objc_msgSend_length(v35, v36, v37);

      if (v38)
      {
        v39 = objc_msgSend_container(v3, v24, v25);
        v42 = objc_msgSend_deviceID(v39, v40, v41);
        objc_msgSend_setContainerScopedDeviceIdentifier_(v13, v43, v42);
      }
    }
  }

  v44 = objc_msgSend_applicationBundleIdentifierForContainerAccess(v3, v24, v25);
  objc_msgSend_setApplicationBundleIdentifierOverrideForContainerAccess_(v13, v45, v44);

  v48 = objc_msgSend_applicationBundleIdentifierForNetworkAttribution(v3, v46, v47);
  objc_msgSend_setApplicationBundleIdentifierOverrideForNetworkAttribution_(v13, v49, v48);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_msgSend_databaseScope(v3, v50, v51);
    v52 = CKDatabaseScopeString();
    objc_msgSend_setDatabaseScope_(v13, v53, v52);
  }

  v54 = objc_msgSend_c2NetworkMetricsReportFrequency_(v9, v50, v12);
  objc_msgSend_setReportFrequency_(v13, v55, v54);
  v57 = objc_msgSend_c2NetworkMetricsReportFrequencyBase_(v9, v56, v12);
  objc_msgSend_setReportFrequencyBase_(v13, v58, v57);
  v61 = objc_msgSend_topmostParentOperation(v3, v59, v60);
  if (v61)
  {
    v62 = objc_alloc_init(MEMORY[0x277CF36A8]);
    v65 = objc_msgSend_operationGroupID(v61, v63, v64);
    objc_msgSend_setOperationGroupId_(v62, v66, v65);

    v69 = objc_msgSend_operationGroupName(v61, v67, v68);
    objc_msgSend_setOperationGroupName_(v62, v70, v69);

    if (v62)
    {
      v89[0] = v62;
      v72 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v71, v89, 1);
      objc_msgSend_setOperationGroups_(v13, v73, v72);
    }

    v74 = objc_alloc_init(MEMORY[0x277CF36B0]);
    v77 = objc_msgSend_operationID(v61, v75, v76);
    objc_msgSend_setOperationId_(v74, v78, v77);

    v79 = objc_opt_class();
    v80 = NSStringFromClass(v79);
    objc_msgSend_setOperationType_(v74, v81, v80);

    if (v74)
    {
      objc_msgSend_setOperationGroup_(v74, v82, v62);
      v88 = v74;
      v84 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v83, &v88, 1);
      objc_msgSend_setClientOperations_(v13, v85, v84);
    }
  }

  v86 = *MEMORY[0x277D85DE8];

  return v13;
}

id sub_225401578(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v7 = objc_msgSend_operation(v4, v5, v6);
  v9 = objc_msgSend_metricOptionsForNetworkOperation_(a1, v8, v7);
  v12 = objc_msgSend_sendRequestAnonymously(v4, v10, v11);

  v15 = objc_msgSend_anonymous(v9, v13, v14);
  objc_msgSend_setAnonymous_(v9, v16, v12 | v15);
  if (objc_msgSend_anonymous(v9, v17, v18))
  {
    objc_msgSend_setContainerScopedUserIdentifier_(v9, v19, 0);
    objc_msgSend_setContainerScopedDeviceIdentifier_(v9, v20, 0);
  }

  return v9;
}

id sub_225401628(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v122 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v17 = objc_msgSend_containerID(v12, v15, v16);
  v18 = objc_alloc_init(MEMORY[0x277CF36B8]);
  isPushTriggerFired = objc_msgSend_isPushTriggerFired(v11, v19, v20);
  objc_msgSend_setPushTrigger_(v18, v22, isPushTriggerFired);
  objc_msgSend__attributeCurrentContainer_config_(v18, v23, v12, v13);
  if (objc_msgSend_preferAnonymousRequests(v11, v24, v25))
  {
    v28 = 1;
  }

  else
  {
    v28 = objc_msgSend_preferAnonymousRequests(v12, v26, v27);
  }

  v29 = objc_msgSend_anonymous(v18, v26, v27);
  objc_msgSend_setAnonymous_(v18, v30, v28 | v29);
  if ((objc_msgSend_anonymous(v18, v31, v32) & 1) == 0)
  {
    v35 = objc_msgSend_containerScopedUserID(v12, v33, v34);
    objc_msgSend_setContainerScopedUserIdentifier_(v18, v36, v35);

    v39 = objc_msgSend_containerScopedUserIdentifier(v18, v37, v38);
    if (v39)
    {
      v40 = v39;
      v41 = objc_msgSend_containerScopedUserIdentifier(v18, v33, v34);
      v44 = objc_msgSend_length(v41, v42, v43);

      if (v44)
      {
        v45 = objc_msgSend_deviceIdentifier(v11, v33, v34);
        objc_msgSend_setContainerScopedDeviceIdentifier_(v18, v46, v45);

        v49 = objc_msgSend_containerScopedDeviceIdentifier(v18, v47, v48);
        if (!v49 || (v50 = v49, objc_msgSend_containerScopedDeviceIdentifier(v18, v33, v34), v51 = objc_claimAutoreleasedReturnValue(), v54 = objc_msgSend_length(v51, v52, v53), v51, v50, !v54))
        {
          v55 = objc_msgSend_sharedManager(CKDDeviceIDManager, v33, v34);
          v57 = objc_msgSend_deviceIdentifierForContainer_(v55, v56, v12);
          objc_msgSend_setContainerScopedDeviceIdentifier_(v18, v58, v57);
        }
      }
    }
  }

  v59 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v11, v33, v34);
  objc_msgSend_setApplicationBundleIdentifierOverrideForContainerAccess_(v18, v60, v59);

  v63 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v11, v61, v62);
  objc_msgSend_setApplicationBundleIdentifierOverrideForNetworkAttribution_(v18, v64, v63);

  objc_msgSend_databaseScope(v11, v65, v66);
  v67 = CKDatabaseScopeString();
  objc_msgSend_setDatabaseScope_(v18, v68, v67);

  if (a4 == 2)
  {
    v75 = objc_msgSend_c2ClientApplicationMetricsReportFrequency_(v13, v69, v17);
    objc_msgSend_setReportFrequency_(v18, v76, v75);
    v73 = objc_msgSend_c2ClientApplicationMetricsReportFrequencyBase_(v13, v77, v17);
    goto LABEL_14;
  }

  if (a4 == 1)
  {
    v70 = objc_msgSend_c2ClientOperationMetricsReportFrequency_(v13, v69, v17);
    objc_msgSend_setReportFrequency_(v18, v71, v70);
    v73 = objc_msgSend_c2ClientOperationMetricsReportFrequencyBase_(v13, v72, v17);
LABEL_14:
    objc_msgSend_setReportFrequencyBase_(v18, v74, v73);
    goto LABEL_19;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v78 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22506F000, v78, OS_LOG_TYPE_ERROR, "Unsupported Event Metric Type. Unable to assign report frequency.", buf, 2u);
  }

LABEL_19:
  v79 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v82 = objc_msgSend_associatedOperationGroups(v11, v80, v81);
  v118[0] = MEMORY[0x277D85DD0];
  v118[1] = 3221225472;
  v118[2] = sub_225401C1C;
  v118[3] = &unk_27854DD70;
  v83 = v79;
  v119 = v83;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v82, v84, v118);

  v87 = objc_msgSend_allValues(v83, v85, v86);
  objc_msgSend_setOperationGroups_(v18, v88, v87);

  v91 = objc_msgSend_associatedOperations(v11, v89, v90);
  v116[0] = MEMORY[0x277D85DD0];
  v116[1] = 3221225472;
  v116[2] = sub_225401CE8;
  v116[3] = &unk_27854DD98;
  v92 = v83;
  v117 = v92;
  v94 = objc_msgSend_CKMap_(v91, v93, v116);
  objc_msgSend_setClientOperations_(v18, v95, v94);

  v110 = MEMORY[0x277D85DD0];
  v111 = 3221225472;
  v112 = sub_225401EEC;
  v113 = &unk_27854D888;
  v96 = v11;
  v114 = v96;
  v97 = v14;
  v115 = v97;
  objc_msgSend_setDidCompleteWithError_(v18, v98, &v110);
  v101 = objc_msgSend_didCompleteWithError(v18, v99, v100, v110, v111, v112, v113);

  if (v101)
  {
    v102 = v18;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v103 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v104 = v103;
      v107 = objc_msgSend_metricUUID(v96, v105, v106);
      *buf = 138412290;
      v121 = v107;
      _os_log_impl(&dword_22506F000, v104, OS_LOG_TYPE_INFO, "Failed to create CKEventMetric %@ didCompleteWithError callback.", buf, 0xCu);
    }

    v102 = 0;
  }

  v108 = *MEMORY[0x277D85DE8];

  return v102;
}

void sub_225401C1C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x277CF36A8];
  v5 = a3;
  v19 = objc_alloc_init(v4);
  v8 = objc_msgSend_operationGroupID(v5, v6, v7);
  objc_msgSend_setOperationGroupId_(v19, v9, v8);

  v12 = objc_msgSend_operationGroupName(v5, v10, v11);
  objc_msgSend_setOperationGroupName_(v19, v13, v12);

  v14 = *(a1 + 32);
  v17 = objc_msgSend_operationGroupID(v5, v15, v16);

  objc_msgSend_setObject_forKeyedSubscript_(v14, v18, v19, v17);
}

id sub_225401CE8(uint64_t a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CF36B0]);
  v8 = objc_msgSend_operationID(v4, v6, v7);
  objc_msgSend_setOperationId_(v5, v9, v8);

  v12 = objc_msgSend_operationType(v4, v10, v11);
  objc_msgSend_setOperationType_(v5, v13, v12);

  v14 = *(a1 + 32);
  v17 = objc_msgSend_operationGroupID(v4, v15, v16);
  v19 = objc_msgSend_objectForKeyedSubscript_(v14, v18, v17);
  objc_msgSend_setOperationGroup_(v5, v20, v19);

  v23 = objc_msgSend_operationGroupID(v4, v21, v22);
  if (v23)
  {
    v26 = v23;
    v27 = objc_msgSend_operationGroup(v5, v24, v25);

    if (!v27)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v28 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        v31 = v28;
        v34 = objc_msgSend_operationID(v4, v32, v33);
        v37 = objc_msgSend_operationGroupID(v4, v35, v36);
        v38 = 138412546;
        v39 = v34;
        v40 = 2112;
        v41 = v37;
        _os_log_error_impl(&dword_22506F000, v31, OS_LOG_TYPE_ERROR, "Operation Group Not Found, Unable to associate operation %@ with operation group %@.", &v38, 0x16u);
      }
    }
  }

  v29 = *MEMORY[0x277D85DE8];

  return v5;
}

void sub_225401EEC(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v9 = objc_msgSend_metricUUID(v5, v7, v8);
    v12 = 138412546;
    v13 = v9;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "CKEventMetric %@ didCompleteWithError %@", &v12, 0x16u);
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    (*(v10 + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_225402018(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v11 = a5;
  if (v8)
  {
    v12 = objc_msgSend_allowsCellularAccess(v7, v9, v10);
    v15 = objc_msgSend_allowsExpensiveNetworkAccess(v7, v13, v14);
    v18 = objc_msgSend_preferAnonymousRequests(v7, v16, v17);
    v21 = objc_msgSend_entitlements(v8, v19, v20);
    hasDarkWakeNetworkReachabilityEnabledEntitlement = objc_msgSend_hasDarkWakeNetworkReachabilityEnabledEntitlement(v21, v22, v23);

    v25 = objc_opt_new();
    objc_msgSend_setQualityOfService_(v25, v26, 9);
    objc_msgSend_setAllowsCellularAccess_(v25, v27, v12);
    objc_msgSend_setAllowsExpensiveNetworkAccess_(v25, v28, v15);
    objc_msgSend_setPreferAnonymousRequests_(v25, v29, v18);
    v32 = objc_msgSend_sourceApplicationBundleIdentifier(v7, v30, v31);
    objc_msgSend_setSourceApplicationBundleIdentifier_(v25, v33, v32);

    v36 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v7, v34, v35);
    objc_msgSend_setApplicationBundleIdentifierOverrideForContainerAccess_(v25, v37, v36);

    v40 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v7, v38, v39);
    objc_msgSend_setApplicationBundleIdentifierOverrideForNetworkAttribution_(v25, v41, v40);

    v44 = objc_msgSend_sourceApplicationSecondaryIdentifier(v7, v42, v43);
    objc_msgSend_set_sourceApplicationSecondaryIdentifier_(v25, v45, v44);

    v48 = objc_msgSend_privacyProxyFailClosedOverride(v7, v46, v47);
    objc_msgSend_setPrivacyProxyFailClosedOverride_(v25, v49, v48);

    v50 = objc_opt_new();
    objc_msgSend_setResolvedConfiguration_(v50, v51, v25);
    v52 = [CKDOperationInfoHolderOperation alloc];
    v54 = objc_msgSend_initWithOperationInfo_container_(v52, v53, v50, v8);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = sub_225402374;
    v63[3] = &unk_27854DDC0;
    v64 = v7;
    v68 = v12;
    v69 = v15;
    v70 = hasDarkWakeNetworkReachabilityEnabledEntitlement;
    v67 = v11;
    v65 = v54;
    v66 = v8;
    v55 = v54;
    objc_msgSend_fetchConfigurationForOperation_withCompletionHandler_(v66, v56, v55, v63);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v57 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v58 = v57;
      v61 = objc_msgSend_metricUUID(v7, v59, v60);
      *buf = 138412290;
      v72 = v61;
      _os_log_impl(&dword_22506F000, v58, OS_LOG_TYPE_INFO, "CKDContainer missing for CKEventMetric %@", buf, 0xCu);
    }

    if (v11)
    {
      v11[2](v11);
    }
  }

  v62 = *MEMORY[0x277D85DE8];
}

void sub_225402374(uint64_t a1, void *a2, void *a3)
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = a3;
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      v11 = v9;
      v14 = objc_msgSend_metricUUID(v10, v12, v13);
      v67 = 138412546;
      v68 = v14;
      v69 = 2112;
      v70 = v8;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Failed to fetch server configuration for CKEventMetric %@. %@", &v67, 0x16u);
    }

    v15 = *(a1 + 56);
    if (v15)
    {
      (*(v15 + 16))();
    }
  }

  else
  {
    if (objc_msgSend_isCKInternalMetric(*(a1 + 32), v6, v7))
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    v17 = objc_alloc_init(MEMORY[0x277CF36C0]);
    objc_msgSend_setAllowsCellularAccess_(v17, v18, *(a1 + 64));
    objc_msgSend_set_allowsExpensiveAccess_(v17, v19, *(a1 + 65));
    objc_msgSend_set_allowsPowerNapScheduling_(v17, v20, *(a1 + 66));
    v23 = objc_msgSend_sourceApplicationSecondaryIdentifier(*(a1 + 40), v21, v22);
    objc_msgSend_set_sourceApplicationSecondaryIdentifier_(v17, v24, v23);

    v27 = objc_msgSend_privacyProxyFailClosedOverride(*(a1 + 40), v25, v26);
    objc_msgSend_setPrivacyProxyFailClosedOverride_(v17, v28, v27);

    v31 = objc_msgSend_applicationBundleIdentifierForNetworkAttribution(*(a1 + 40), v29, v30);
    objc_msgSend_set_sourceApplicationBundleIdentifier_(v17, v32, v31);

    v35 = objc_msgSend_metricUUID(*(a1 + 32), v33, v34);

    if (v35)
    {
      v38 = objc_msgSend_metricUUID(*(a1 + 32), v36, v37);
      objc_msgSend_setMetricUUID_(v17, v39, v38);
    }

    v40 = objc_msgSend_metricOptionsForEventMetric_metricType_container_config_reportingCompletionBlock_(MEMORY[0x277CF36B8], v36, *(a1 + 32), v16, *(a1 + 48), v5, *(a1 + 56));
    objc_msgSend_setMetricOptions_(v17, v41, v40);

    v44 = objc_msgSend_metricOptions(v17, v42, v43);

    if (v44)
    {
      v47 = MEMORY[0x277CF36D0];
      v48 = objc_msgSend_eventName(*(a1 + 32), v45, v46);
      v51 = objc_msgSend_startTime(*(a1 + 32), v49, v50);
      v54 = objc_msgSend_endTime(*(a1 + 32), v52, v53);
      v57 = objc_msgSend_attributes(*(a1 + 32), v55, v56);
      objc_msgSend_reportMetricWithOptions_genericMetricType_eventName_startTime_endTime_attributes_(v47, v58, v17, v16, v48, v51, v54, v57);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v59 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v60 = *(a1 + 32);
        v61 = v59;
        v64 = objc_msgSend_metricUUID(v60, v62, v63);
        v67 = 138412290;
        v68 = v64;
        _os_log_impl(&dword_22506F000, v61, OS_LOG_TYPE_INFO, "Failed to set options for CKEventMetric %@", &v67, 0xCu);
      }

      v65 = *(a1 + 56);
      if (v65)
      {
        (*(v65 + 16))();
      }
    }
  }

  v66 = *MEMORY[0x277D85DE8];
}

void sub_225402730()
{
  v0 = objc_alloc(MEMORY[0x277CCAB68]);
  v16 = objc_msgSend_initWithString_(v0, v1, @"com.apple.cloudkit");
  v4 = objc_msgSend_currentProcess(CKDDaemonProcess, v2, v3);
  v7 = objc_msgSend_processType(v4, v5, v6);

  if (v7 == 2)
  {
    objc_msgSend_appendString_(v16, v8, @".test");
  }

  objc_msgSend_appendString_(v16, v8, @".tcc-event-subscriber");
  v9 = [CKDAuthorizationObserver alloc];
  v11 = objc_msgSend_initWithIdentifier_(v9, v10, v16);
  v12 = qword_280D585D8;
  qword_280D585D8 = v11;

  v14 = objc_msgSend_setWithObject_(MEMORY[0x277CBEB98], v13, *MEMORY[0x277D6C190]);
  objc_msgSend_setServices_(qword_280D585D8, v15, v14);
}

void sub_225402F40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak(&location);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void sub_225402FA0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_msgSend__handleTCCAuthorizationEventWithType_record_block_(WeakRetained, v6, a2, v5, *(a1 + 32));
}

uint64_t sub_2254035C8()
{
  v0 = [CKDClientInfo alloc];
  qword_280D585E8 = objc_msgSend_initInternal(v0, v1, v2);

  return MEMORY[0x2821F96F8]();
}

void sub_225403814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_225403840(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend__refreshHostname(WeakRetained, v1, v2);
}

uint64_t sub_225403BC4()
{
  result = _CKUseSystemInstalledBinaries();
  *MEMORY[0x277CBC818] = result;
  return result;
}

void sub_225403F48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225403F60(uint64_t *a1, void *a2, _BYTE *a3)
{
  v90 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v8 = objc_msgSend_appContainerTuple(v5, v6, v7);
  v11 = objc_msgSend_containerID(v8, v9, v10);
  v14 = objc_msgSend_containerIdentifier(v11, v12, v13);
  isEqual = objc_msgSend_isEqual_(v14, v15, a1[4]);

  v17 = MEMORY[0x277CBC878];
  v18 = *MEMORY[0x277CBC878];
  v19 = MEMORY[0x277CBC880];
  v20 = *MEMORY[0x277CBC880];
  if (isEqual)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v18);
    }

    v21 = MEMORY[0x277CBC830];
    v22 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v72 = a1[5];
      v71 = a1[6];
      v73 = a1[4];
      *buf = 138413058;
      v83 = v72;
      v84 = 2112;
      v85 = v71;
      v86 = 2112;
      v87 = v73;
      v88 = 2112;
      v89 = v5;
      _os_log_debug_impl(&dword_22506F000, v22, OS_LOG_TYPE_DEBUG, "[%@ chunkDataFromSignature:%@ forContainerIdentifier:%@], %@", buf, 0x2Au);
    }

    v25 = a1[7];
    v26 = objc_msgSend_sharedInternalUseContainers(CKDContainer, v23, v24);
    v28 = objc_msgSend_containerWithAppContainerAccountTuple_deviceContext_sharedContainerTable_(CKDContainer, v27, v5, v25, v26);

    v81 = 0;
    LOBYTE(v26) = objc_msgSend_setupAssetTransfers_(v28, v29, &v81);
    v32 = v81;
    if (v26)
    {
      v33 = objc_msgSend_MMCS(v28, v30, v31);

      if (v33)
      {
        v36 = objc_msgSend_MMCS(v28, v34, v35);
        v38 = objc_msgSend_retrieveChunkWithSignature_(v36, v37, a1[6]);
        v39 = *(a1[8] + 8);
        v40 = *(v39 + 40);
        *(v39 + 40) = v38;

        v41 = *v17;
        v42 = *v19;
        if (*(*(a1[8] + 8) + 40))
        {
          if (*v19 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v41);
          }

          v43 = *v21;
          if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
          {
            v75 = a1[5];
            v74 = a1[6];
            v76 = a1[4];
            v77 = *(*(a1[8] + 8) + 40);
            *buf = 138413058;
            v83 = v75;
            v84 = 2112;
            v85 = v74;
            v86 = 2112;
            v87 = v76;
            v88 = 2112;
            v89 = v77;
            _os_log_debug_impl(&dword_22506F000, v43, OS_LOG_TYPE_DEBUG, "[%@ chunkDataFromSignature:%@ forContainerIdentifier:%@] found %@", buf, 0x2Au);
          }

          *a3 = 1;
        }

        else
        {
          if (*v19 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v41);
          }

          v69 = *v21;
          if (os_log_type_enabled(*v21, OS_LOG_TYPE_DEBUG))
          {
            v79 = a1[5];
            v78 = a1[6];
            v80 = a1[4];
            *buf = 138412802;
            v83 = v79;
            v84 = 2112;
            v85 = v78;
            v86 = 2112;
            v87 = v80;
            _os_log_debug_impl(&dword_22506F000, v69, OS_LOG_TYPE_DEBUG, "[%@ chunkDataFromSignature:%@ forContainerIdentifier:%@] not found", buf, 0x20u);
          }
        }

        goto LABEL_31;
      }

      if (*v19 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *v17);
      }

      v65 = *v21;
      if (!os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      v67 = a1[5];
      v66 = a1[6];
      v68 = a1[4];
      *buf = 138412802;
      v83 = v67;
      v84 = 2112;
      v85 = v66;
      v86 = 2112;
      v87 = v68;
      v62 = "[%@ chunkDataFromSignature:%@ forContainerIdentifier:%@] container.MMCS nil";
      v63 = v65;
      v64 = 32;
    }

    else
    {
      if (*v19 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *v17);
      }

      v58 = *v21;
      if (!os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      v60 = a1[5];
      v59 = a1[6];
      v61 = a1[4];
      *buf = 138413058;
      v83 = v60;
      v84 = 2112;
      v85 = v59;
      v86 = 2112;
      v87 = v61;
      v88 = 2112;
      v89 = v32;
      v62 = "[%@ chunkDataFromSignature:%@ forContainerIdentifier:%@] MMCS setup failed: %@";
      v63 = v58;
      v64 = 42;
    }

    _os_log_error_impl(&dword_22506F000, v63, OS_LOG_TYPE_ERROR, v62, buf, v64);
LABEL_31:

    goto LABEL_32;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v18);
  }

  v44 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v46 = a1[5];
    v45 = a1[6];
    v47 = a1[4];
    v48 = v44;
    v51 = objc_msgSend_appContainerTuple(v5, v49, v50);
    v54 = objc_msgSend_containerID(v51, v52, v53);
    v57 = objc_msgSend_containerIdentifier(v54, v55, v56);
    *buf = 138413058;
    v83 = v46;
    v84 = 2112;
    v85 = v45;
    v86 = 2112;
    v87 = v47;
    v88 = 2112;
    v89 = v57;
    _os_log_debug_impl(&dword_22506F000, v48, OS_LOG_TYPE_DEBUG, "[%@ chunkDataFromSignature:%@ forContainerIdentifier:%@] wrong containerIdentifier %@", buf, 0x2Au);
  }

LABEL_32:

  v70 = *MEMORY[0x277D85DE8];
}

_DWORD *sub_2254044B4(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x277CCAC58], a2, a1, 200, 0, 0);
  v5 = objc_msgSend_length(v2, v3, v4);
  v6 = malloc_type_calloc(1uLL, v5 + 200, 0x1000040BEF03554uLL);
  *v6 = 1;
  v6[1] = v5;
  v7 = v2;
  v10 = objc_msgSend_bytes(v7, v8, v9);
  memcpy(v6 + 50, v10, v5);

  return v6;
}

uint64_t compareVersionStrings(void *a1, void *a2)
{
  v3 = a2;
  v5 = objc_msgSend_componentsSeparatedByString_(a1, v4, @".");
  v7 = objc_msgSend_componentsSeparatedByString_(v3, v6, @".");
  v10 = objc_msgSend_count(v5, v8, v9);
  v13 = objc_msgSend_count(v7, v11, v12);
  if (v10 >= v13)
  {
    v10 = v13;
  }

  if (!v10)
  {
LABEL_11:
    if (v10 >= objc_msgSend_count(v5, v14, v15))
    {
LABEL_17:
      if (v10 >= objc_msgSend_count(v7, v26, v27))
      {
LABEL_22:
        v25 = 0;
        goto LABEL_26;
      }

      while (1)
      {
        v29 = objc_msgSend_objectAtIndexedSubscript_(v7, v36, v10);
        if (objc_msgSend_length(v29, v37, v38))
        {
          v40 = objc_msgSend_compare_options_(v29, v39, @"0", 64);
          if (v40 == -1)
          {
            v25 = 1;
            goto LABEL_25;
          }

          if (v40 == 1)
          {
            break;
          }
        }

        if (++v10 >= objc_msgSend_count(v7, v41, v42))
        {
          goto LABEL_22;
        }
      }

      v25 = -1;
    }

    else
    {
      v28 = v10;
      while (1)
      {
        v29 = objc_msgSend_objectAtIndexedSubscript_(v5, v26, v28);
        if (objc_msgSend_length(v29, v30, v31))
        {
          v33 = objc_msgSend_compare_options_(v29, v32, @"0", 64);
          v25 = v33;
          if (v33 == -1 || v33 == 1)
          {
            break;
          }
        }

        if (++v28 >= objc_msgSend_count(v5, v34, v35))
        {
          goto LABEL_17;
        }
      }
    }

LABEL_25:

    goto LABEL_26;
  }

  v16 = 0;
  while (1)
  {
    v17 = objc_msgSend_objectAtIndexedSubscript_(v5, v14, v16);
    v19 = objc_msgSend_objectAtIndexedSubscript_(v7, v18, v16);
    if (!objc_msgSend_length(v17, v20, v21))
    {

      v17 = @"0";
    }

    if (!objc_msgSend_length(v19, v22, v23))
    {

      v19 = @"0";
    }

    v25 = objc_msgSend_compare_options_(v17, v24, v19, 64);

    if (v25)
    {
      break;
    }

    if (v10 == ++v16)
    {
      goto LABEL_11;
    }
  }

LABEL_26:

  return v25;
}

id sub_225404784(void *a1, const char *a2, uint64_t a3)
{
  if (qword_280D58600 != -1)
  {
    dispatch_once(&qword_280D58600, &unk_28385E940);
  }

  if (objc_msgSend_count(a1, a2, a3))
  {
    v4 = objc_opt_new();
    v7 = objc_msgSend_allKeys(a1, v5, v6);
    if (objc_msgSend_count(v7, v8, v9))
    {
      v11 = 0;
      do
      {
        if (v11)
        {
          objc_msgSend_appendString_(v4, v10, @"&");
        }

        v12 = objc_msgSend_objectAtIndexedSubscript_(v7, v10, v11);
        v14 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v12, v13, qword_280D585F8);

        v16 = objc_msgSend_objectAtIndexedSubscript_(v7, v15, v11);
        v18 = objc_msgSend_objectForKeyedSubscript_(a1, v17, v16);
        v20 = objc_msgSend_stringByAddingPercentEncodingWithAllowedCharacters_(v18, v19, qword_280D585F8);

        objc_msgSend_appendFormat_(v4, v21, @"%@=%@", v14, v20);
        ++v11;
      }

      while (v11 < objc_msgSend_count(v7, v22, v23));
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_225404900(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_URLQueryAllowedCharacterSet(MEMORY[0x277CCA900], a2, a3);
  v6 = objc_msgSend_mutableCopy(v3, v4, v5);
  v7 = qword_280D585F8;
  qword_280D585F8 = v6;

  v8 = qword_280D585F8;

  return MEMORY[0x2821F9670](v8, sel_removeCharactersInString_, @"&#+");
}

uint64_t _isOperationAllowedIndependentlyInSyncBubble(void *a1, void *a2)
{
  v3 = a1;
  v5 = a2;
  if (qword_280D58610 != -1)
  {
    dispatch_once(&qword_280D58610, &unk_28385E960);
  }

  if (objc_msgSend_containsObject_(qword_280D58608, v4, v3))
  {
    isAppleInternal = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v6, @"CKQueryOperation"))
  {
    isAppleInternal = objc_msgSend_isAppleInternal(v5, v8, v9);
  }

  else
  {
    isAppleInternal = 0;
  }

  return isAppleInternal;
}

uint64_t sub_225404A14(uint64_t a1, const char *a2)
{
  qword_280D58608 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], a2, @"CKModifyRecordsOperation", 0);

  return MEMORY[0x2821F96F8]();
}

void sub_225404A6C()
{
  v3 = MEMORY[0x22AA63A30]();
  v1 = objc_msgSend_stringByAppendingPathComponent_(v3, v0, @"Library/Caches/CloudKit");
  v2 = qword_280D58618;
  qword_280D58618 = v1;
}

id sub_225404AC8()
{
  v77 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&stru_27D71AB28);
  if (!qword_27D71F868)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = qword_27D71F868;
    qword_27D71F868 = v2;
  }

  v4 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v0, v1);
  v9 = objc_msgSend_identifier(v4, v5, v6);
  if (!v9)
  {
    v9 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v8);
  }

  v10 = objc_msgSend_objectForKeyedSubscript_(qword_27D71F868, v7, v9);
  if (v10)
  {
    v11 = v10;
    pthread_mutex_unlock(&stru_27D71AB28);
    goto LABEL_41;
  }

  container_query_create();
  container_query_set_class();
  v12 = xpc_string_create("com.apple.cloudd");
  container_query_set_identifiers();

  container_query_operation_set_flags();
  objc_msgSend_isDataSeparated(v4, v13, v14);
  if (CKBoolFromCKTernary())
  {
    v17 = objc_msgSend_identifier(v4, v15, v16);
    v18 = v17;
    objc_msgSend_UTF8String(v18, v19, v20);
    container_query_set_persona_unique_string();
  }

  else
  {
    v21 = *MEMORY[0x277D85ED0];
    container_query_set_persona_unique_string();
  }

  if (container_query_get_single_result() && (path = container_get_path()) != 0)
  {
    v23 = path;
    v24 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v25 = MEMORY[0x277CBC830];
    v26 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v50 = v26;
      v53 = objc_msgSend_ckShortDescription(v4, v51, v52);
      *buf = 136315394;
      v74 = v23;
      v75 = 2112;
      v76 = v53;
      _os_log_debug_impl(&dword_22506F000, v50, OS_LOG_TYPE_DEBUG, "Got data separated volume container path %s from containermanager for persona %@", buf, 0x16u);
    }

    v29 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v27, v28);
    v30 = strlen(v23);
    v32 = objc_msgSend_stringWithFileSystemRepresentation_length_(v29, v31, v23, v30);

    v11 = objc_msgSend_stringByAppendingPathComponent_(v32, v33, @"Library/Caches/CloudKit");

    v34 = container_copy_sandbox_token();
    v35 = *MEMORY[0x277CBC878];
    v36 = *v24;
    if (v34)
    {
      v37 = v34;
      if (v36 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v35);
      }

      v38 = *v25;
      if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
      {
        log = v38;
        v60 = objc_msgSend_ckShortDescription(v4, v58, v59);
        *buf = 136315394;
        v74 = v23;
        v75 = 2112;
        v76 = v60;
        _os_log_debug_impl(&dword_22506F000, log, OS_LOG_TYPE_DEBUG, "Consuming sandbox token for data separated container path %s for persona %@", buf, 0x16u);
      }

      if (sandbox_extension_consume() < 0)
      {
        if (*v24 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v39 = *v25;
        if (os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
        {
          v40 = v39;
          v41 = __error();
          v42 = strerror(*v41);
          *buf = 136315138;
          v74 = v42;
          _os_log_error_impl(&dword_22506F000, v40, OS_LOG_TYPE_ERROR, "Failed to consume sandbox extension: %s", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v36 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v35);
      }

      v44 = *v25;
      if (os_log_type_enabled(*v25, OS_LOG_TYPE_DEBUG))
      {
        v61 = v44;
        v64 = objc_msgSend_ckShortDescription(v4, v62, v63);
        *buf = 136315394;
        v74 = v23;
        v75 = 2112;
        v76 = v64;
        _os_log_debug_impl(&dword_22506F000, v61, OS_LOG_TYPE_DEBUG, "Didn't get a sandbox token for data separated container path %s for persona %@", buf, 0x16u);
      }

      v37 = 0;
    }
  }

  else
  {
    if (!container_query_get_last_error())
    {
      v11 = 0;
      goto LABEL_39;
    }

    v37 = container_error_copy_unlocalized_description();
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v43 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      v54 = v43;
      v57 = objc_msgSend_ckShortDescription(v4, v55, v56);
      *buf = 138412546;
      v74 = v57;
      v75 = 2080;
      v76 = v37;
      _os_log_fault_impl(&dword_22506F000, v54, OS_LOG_TYPE_FAULT, "Error getting data separated volume container from containermanager for persona %@: %s", buf, 0x16u);
    }

    v11 = 0;
  }

  free(v37);
LABEL_39:
  container_query_free();
  objc_msgSend_setObject_forKeyedSubscript_(qword_27D71F868, v45, v11, v9);
  pthread_mutex_unlock(&stru_27D71AB28);
  if (!v11)
  {
    v65 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v46, v47);
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v66, "NSString *CKGetDataSeparatedVolumeCacheDirectory(void)");
    v70 = objc_msgSend_ckShortDescription(v4, v68, v69);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v65, v71, v67, @"CKDDaemonUtils.m", 443, @"Unexpectedly-nil cache dir for persona %@", v70);

    v11 = 0;
  }

LABEL_41:

  v48 = *MEMORY[0x277D85DE8];

  return v11;
}

id CKGetPersonaAwareHomeCacheDirectory(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], a2, a3);
  objc_msgSend_isDataSeparated(v3, v4, v5);
  if (CKBoolFromCKTernary())
  {
    sub_225404AC8();
  }

  else
  {
    CKGetHomeCacheDir();
  }
  v6 = ;

  return v6;
}

uint64_t CKEncryptWithPublicKey(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v61[2] = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  error = 0;
  v55 = 0;
  v12 = *MEMORY[0x277CDBFE0];
  v60[0] = *MEMORY[0x277CDC028];
  v60[1] = v12;
  v13 = *MEMORY[0x277CDC000];
  v61[0] = *MEMORY[0x277CDC040];
  v61[1] = v13;
  v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v61, v60, 2);
  if (a5)
  {
    *a5 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (!v9)
  {
    v34 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v15, *MEMORY[0x277CBC120], 1000, @"NULL serverPublicKeyObj");
    v35 = 0;
    v18 = 0;
LABEL_18:
    v33 = 0;
    v24 = 0;
    v36 = 0;
    v55 = v34;
    goto LABEL_19;
  }

  v18 = objc_msgSend_publicKey(v9, v15, v16);

  if (!v18)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v19, *MEMORY[0x277CBC120], 1000, @"nil publicKey");
    v34 = LABEL_17:;
    v35 = 0;
    goto LABEL_18;
  }

  v18 = objc_msgSend_certData(v9, v19, v20);

  if (!v18)
  {
    objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v21, *MEMORY[0x277CBC120], 1000, @"nil certData");
    goto LABEL_17;
  }

  v23 = objc_msgSend_publicKey(v9, v21, v22);
  v24 = SecKeyCreateWithData(v23, v17, &error);

  v26 = error;
  if (error)
  {
    error = 0;
    v55 = v26;
  }

  if (v24)
  {
    cf = v24;
    v24 = objc_opt_new();
    objc_msgSend_setObject_forKeyedSubscript_(v24, v27, &unk_2838C8568, *MEMORY[0x277CDC3F0]);
    v18 = objc_msgSend_certData(v9, v28, v29);
    objc_msgSend_setObject_forKeyedSubscript_(v24, v30, v18, *MEMORY[0x277CDC400]);
    if (v11)
    {
      v33 = objc_msgSend_dataUsingEncoding_(v11, v31, 4);
      if (!v33)
      {
        v55 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v32, *MEMORY[0x277CBC120], 1000, @"Could not encode uri %@ to UTF-8", v11);

        goto LABEL_42;
      }

      objc_msgSend_setObject_forKeyedSubscript_(v24, v32, v33, *MEMORY[0x277CDC3E8]);
    }

    else
    {
      v33 = 0;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v39 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v51 = v10;
      v40 = v39;
      v43 = objc_msgSend_publicKey(v9, v41, v42);
      *buf = 138412290;
      v57 = v43;
      _os_log_impl(&dword_22506F000, v40, OS_LOG_TYPE_INFO, "server public key: %@", buf, 0xCu);

      v10 = v51;
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }
    }

    v52 = *MEMORY[0x277CDC330];
    v44 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v57 = v18;
      _os_log_impl(&dword_22506F000, v44, OS_LOG_TYPE_INFO, "shared info: %@", buf, 0xCu);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }
    }

    v45 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v57 = v11;
      v58 = 2112;
      v59 = v33;
      _os_log_impl(&dword_22506F000, v45, OS_LOG_TYPE_INFO, "additional auth data %@ (%@)", buf, 0x16u);
    }

    EncryptedDataWithParameters = SecKeyCreateEncryptedDataWithParameters();
    if (EncryptedDataWithParameters)
    {
      v36 = EncryptedDataWithParameters;
      if (a4)
      {
        v48 = EncryptedDataWithParameters;
        *a4 = v36;
      }

      v35 = 1;
      goto LABEL_43;
    }

    if (!v55)
    {
      v49 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v47, *MEMORY[0x277CBC120], 1000, @"SecKeyCreateEncryptedDataWithParameters NULL error");
      v50 = v55;
      v55 = v49;
    }

LABEL_42:
    v36 = 0;
    v35 = 0;
LABEL_43:
    CFRelease(cf);
    goto LABEL_19;
  }

  v55 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v25, *MEMORY[0x277CBC120], 1000, @"CCECCryptorImportPublicKey failed: NULL");

  v35 = 0;
  v18 = 0;
  v33 = 0;
  v36 = 0;
LABEL_19:
  if (a5 && (v35 & 1) == 0)
  {
    *a5 = v55;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v35;
}

void sub_2254056EC()
{
  v0 = qword_280D58628;
  qword_280D58628 = &unk_2838C9B38;
}

id sub_225405704(void *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v4 = objc_msgSend_decimalDigitCharacterSet(MEMORY[0x277CCA900], v2, v3);
  v7 = objc_msgSend_string(MEMORY[0x277CCAB68], v5, v6);
  v8 = IDSCopyIDForPhoneNumber();
  if (objc_msgSend_length(v8, v9, v10))
  {
    v12 = 0;
    do
    {
      v13 = objc_msgSend_characterAtIndex_(v8, v11, v12);
      if (objc_msgSend_characterIsMember_(v4, v14, v13))
      {
        objc_msgSend_appendFormat_(v7, v15, @"%C", v13);
      }

      ++v12;
    }

    while (v12 < objc_msgSend_length(v8, v15, v16));
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v17 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v21 = v1;
    v22 = 2112;
    v23 = v7;
    v24 = 2112;
    v25 = v8;
    _os_log_debug_impl(&dword_22506F000, v17, OS_LOG_TYPE_DEBUG, "Performed phone number canonicalization: %@ -> %@ (raw was %@)", buf, 0x20u);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v7;
}

id sub_2254058B8()
{
  if (qword_280D58640 != -1)
  {
    dispatch_once(&qword_280D58640, &unk_28385E9C0);
  }

  v1 = qword_280D58638;

  return v1;
}

void sub_22540590C()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v0 = objc_alloc(MEMORY[0x277CBEA90]);
  v2 = objc_msgSend_initWithBase64EncodedString_options_(v0, v1, @"ewogICJhcHBsaW5rcyI6IHsKICAgICJkZXRhaWxzIjogWwogICAgICB7CiAgICAgICAgImFwcElEIjogImNvbS5hcHBsZS5DbG91ZEtpdC5TaGFyZUJlYXIiLAogICAgICAgICJjb21wb25lbnRzIjogWwogICAgICAgICAgICB7ICIvIjogIi9wYWdlcy8/KiIgfSwKICAgICAgICAgICAgeyAiLyI6ICIvbnVtYmVycy8/KiIgfSwKICAgICAgICAgICAgeyAiLyI6ICIva2V5bm90ZS8/KiIgfSwKICAgICAgICAgICAgeyAiLyI6ICIvaWNsb3VkZHJpdmUvPyoiIH0sCiAgICAgICAgICAgIHsgIi8iOiAiL3NoYXJlLz8qIiB9LAogICAgICAgICAgICB7ICIvIjogIi9ub3Rlcy8/KiIgfSwKICAgICAgICAgICAgeyAiLyI6ICIvcGhvdG9zLz8qIiB9LAogICAgICAgICAgICB7ICIvIjogIi9waG90b3Nfc2hhcmluZy8/KiIgfSwKICAgICAgICAgICAgeyAiLyI6ICIvcGhvdG9zX2xpbmtzLz8qIiB9LAogICAgICAgICAgICB7ICIvIjogIi9waG90b3Nfc2hhcmVkY29sbGVjdGlvbnMvPyoiIH0sCiAgICAgICAgICAgIHsgIi8iOiAiL3JlbWluZGVycy90ZW1wbGF0ZS8qIiwgImV4Y2x1ZGUiOiB0cnVlIH0sCiAgICAgICAgICAgIHsgIi8iOiAiL3JlbWluZGVycy8/KiIgfSwKICAgICAgICAgICAgeyAiLyI6ICIvc2FmYXJpLXRhYi1ncm91cHMvPyoiIH0sCiAgICAgICAgICAgIHsgIi8iOiAiL2ZyZWVmb3JtL2NvcHkvKiIsICJleGNsdWRlIjogdHJ1ZSB9LAogICAgICAgICAgICB7ICIvIjogIi9mcmVlZm9ybS8/KiIgfSwKICAgICAgICAgICAgeyAiLyI6ICIvdi8/KiIgfQogICAgICAgIF0sCiAgICAgICAgImFsd2F5c0VuYWJsZWQiOiB0cnVlCiAgICAgIH0KICAgIF0KICB9Cn0K", 1);
  v7[0] = @"*.icloud.com";
  v7[1] = @"*.icloud.com.cn";
  v8[0] = v2;
  v8[1] = v2;
  v7[2] = @"icloud.com";
  v7[3] = @"icloud.com.cn";
  v8[2] = v2;
  v8[3] = v2;
  v4 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v8, v7, 4);
  v5 = qword_280D58638;
  qword_280D58638 = v4;

  v6 = *MEMORY[0x277D85DE8];
}

void CKWarnForIncorrectServiceIdentity(void *a1, void *a2, void *a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v8 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
  {
    v50 = v8;
    v53 = objc_msgSend_ckShortDescription(v6, v51, v52);
    v56 = objc_msgSend_ckShortDescription(v6, v54, v55);
    *buf = 138544386;
    v58 = v5;
    v59 = 2114;
    v60 = v53;
    v61 = 2114;
    v62 = v7;
    v63 = 2114;
    v64 = v56;
    v65 = 2114;
    v66 = v5;
    _os_log_error_impl(&dword_22506F000, v50, OS_LOG_TYPE_ERROR, "Decryption failed for PCS using the service name, %{public}@. This likely indicates a CloudKit adopter misconfiguration. An identity exists that can decrypt this data, but the adopter process is not configured to use it. Ensure that the service name for containerID %{public}@ in the com.apple.private.cloudkit.serviceNameForContainerMap entitlement is correctly set. If this entitlement was recently modified, any zones created prior to the change must be deleted. Devices signed into affected test accounts can delete the misconfigured zone using the following command:\n\nckctl -b %{public}@ -v production -x container %{public}@ %{public}@ -x zone deleteAll\n\nAlternatively, reverting the entitlement to its previous value will allow access to the data.", buf, 0x34u);
  }

  v11 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v9, v10);
  if (!objc_msgSend_isAppleInternalInstall(v11, v12, v13))
  {
    goto LABEL_13;
  }

  v16 = objc_msgSend_currentProcess(CKDDaemonProcess, v14, v15);
  v19 = objc_msgSend_processType(v16, v17, v18) == 2;

  if (!v19)
  {
    if (qword_280D58648 != -1)
    {
      dispatch_once(&qword_280D58648, &unk_28385E9E0);
    }

    v20 = qword_280D58650;
    objc_sync_enter(v20);
    v22 = objc_msgSend_objectForKeyedSubscript_(qword_280D58650, v21, v6);
    objc_msgSend_timeIntervalSinceNow(v22, v23, v24);
    if (v22 && v27 >= -3600.0)
    {

      objc_sync_exit(v20);
      v11 = v20;
    }

    else
    {
      v28 = objc_msgSend_distantFuture(MEMORY[0x277CBEAA8], v25, v26);
      objc_msgSend_setObject_forKeyedSubscript_(qword_280D58650, v29, v28, v6);

      objc_sync_exit(v20);
      v30 = MEMORY[0x277CCACA8];
      v33 = objc_msgSend_ckShortDescription(v6, v31, v32);
      v11 = objc_msgSend_stringWithFormat_(v30, v34, @"Unexpected service identity for %@", v33);

      v35 = objc_opt_new();
      objc_msgSend_setComponentID_(v35, v36, @"552485");
      objc_msgSend_setTitle_(v35, v37, v11);
      objc_msgSend_setComponentName_(v35, v38, @"CloudKit");
      objc_msgSend_setComponentVersion_(v35, v39, @"All");
      v42 = objc_msgSend_sharedManager(MEMORY[0x277CBC778], v40, v41);
      objc_msgSend_triggerTapToRadarWithRequest_(v42, v43, v35);

      v44 = qword_280D58650;
      objc_sync_enter(v44);
      v47 = objc_msgSend_date(MEMORY[0x277CBEAA8], v45, v46);
      objc_msgSend_setObject_forKeyedSubscript_(qword_280D58650, v48, v47, v6);

      objc_sync_exit(v44);
    }

LABEL_13:
  }

  v49 = *MEMORY[0x277D85DE8];
}

uint64_t sub_225405D54()
{
  qword_280D58650 = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

uint64_t CKPCSIdentitySetCreateFromExternalForm(uint64_t a1, void *a2)
{
  v3 = PCSIdentitySetCreateFromExternalForm();
  if (a2)
  {
    *a2 = 0;
  }

  return v3;
}

id CKPCSIdentitySetCreateExternalForm(uint64_t a1, void *a2)
{
  ExternalForm = PCSIdentitySetCreateExternalForm();
  if (a2)
  {
    *a2 = 0;
  }

  return ExternalForm;
}

void sub_225405E54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (ba_is_process_extension())
  {
    v5 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, 1);
    objc_msgSend_setObject_forKeyedSubscript_(v7, v6, v5, *MEMORY[0x277CBC910]);
  }
}

void sub_225405F10(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_zonePCS(a1, a2, a3))
  {
    v6 = objc_msgSend_zonePCS(a1, v4, v5);
    v8 = objc_msgSend_publicKeyIDFromIdentity_(CKDPCSManager, v7, v6);
    objc_msgSend_setPcsKeyID_(a1, v9, v8);
  }

  if (objc_msgSend_zoneishPCS(a1, v4, v5))
  {
    v12 = objc_msgSend_zoneishPCS(a1, v10, v11);
    v15 = objc_msgSend_protectionIdentifierFromShareProtection_(CKDPCSManager, v13, v12);
    objc_msgSend_setZoneishKeyID_(a1, v14, v15);
  }
}

void sub_225405FE8(void *a1, uint64_t a2, void *a3)
{
  objc_setAssociatedObject(a1, "CKRecordPCS", a3, 0x301);
  v7 = objc_msgSend_zoneishKeyID(a1, v5, v6);

  if (a3 && v7)
  {
    v10 = objc_msgSend_protectionIdentifierFromShareProtection_(CKDPCSManager, v8, a3);
    objc_msgSend_setZoneishKeyID_(a1, v9, v10);
  }
}

void sub_225406094(void *a1, const char *a2, uint64_t a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_zoneishKeyID(a1, a2, a3);
  if (v5)
  {
  }

  else if (objc_msgSend_recordPCS(a1, v6, v7))
  {
    v20 = objc_msgSend_pcsKeyID(a1, v8, v9);

    v24 = objc_msgSend_recordPCS(a1, v21, v22);
    if (v20)
    {
      objc_msgSend_allProtectionIdentifiersFromShareProtection_(CKDPCSManager, v23, v24);
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v25 = v48 = 0u;
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v26, &v45, v49, 16);
      if (v27)
      {
        v30 = v27;
        v31 = *v46;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v46 != v31)
            {
              objc_enumerationMutation(v25);
            }

            v33 = *(*(&v45 + 1) + 8 * i);
            v34 = objc_msgSend_pcsKeyID(a1, v28, v29);
            LOBYTE(v33) = objc_msgSend_isEqualToData_(v33, v35, v34);

            if (v33)
            {
              v38 = v25;
              goto LABEL_18;
            }
          }

          v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v25, v28, &v45, v49, 16);
          if (v30)
          {
            continue;
          }

          break;
        }
      }

      v38 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v36, v37);
      v41 = objc_msgSend_recordID(a1, v39, v40);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v38, v42, a2, a1, @"CKDDaemonUtils.m", 835, @"Generated PCS key ID not found in PCS for record %@", v41);

LABEL_18:
    }

    else
    {
      v43 = objc_msgSend_protectionIdentifierFromShareProtection_(CKDPCSManager, v23, v24);
      objc_msgSend_setPcsKeyID_(a1, v44, v43);
    }
  }

  if (objc_msgSend_recordPCS(a1, v8, v9))
  {
    v12 = objc_msgSend_recordPCS(a1, v10, v11);
    v14 = objc_msgSend_allProtectionIdentifiersFromShareProtection_(CKDPCSManager, v13, v12);
    v17 = objc_msgSend_copy(v14, v15, v16);
    objc_msgSend_setAllPCSKeyIDs_(a1, v18, v17);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_225406330(void *a1, uint64_t a2, void *a3, int a4)
{
  v38 = a3;
  v8 = objc_msgSend_pcs(v38, v6, v7);
  objc_msgSend_setPrivatePCS_(a1, v9, v8);
  v14 = objc_msgSend_etag(v38, v10, v11);
  if (!a4)
  {
    goto LABEL_6;
  }

  v15 = objc_msgSend_previousProtectionEtag(a1, v12, v13);

  if (!v15)
  {
    goto LABEL_6;
  }

  v17 = objc_msgSend_previousProtectionEtag(a1, v12, v16);

  if (!objc_msgSend_isEqualToString_(v17, v18, @"NO_ETAG_FOR_YOU"))
  {
    v14 = v17;
LABEL_6:
    objc_msgSend_setPreviousProtectionEtag_(a1, v12, v14);
    goto LABEL_7;
  }

  v14 = 0;
  objc_msgSend_setPreviousProtectionEtag_(a1, v19, 0);
LABEL_7:
  v22 = objc_msgSend_publicPCS(v38, v20, v21);
  objc_msgSend_setPublicPCS_(a1, v23, v22);
  v28 = objc_msgSend_publicPCSEtag(v38, v24, v25);
  if (a4)
  {
    v29 = objc_msgSend_previousPublicProtectionEtag(a1, v26, v27);

    if (v29)
    {
      v31 = objc_msgSend_previousPublicProtectionEtag(a1, v26, v30);

      if (objc_msgSend_isEqualToString_(v31, v32, @"NO_ETAG_FOR_YOU"))
      {

        v28 = 0;
        objc_msgSend_setPreviousPublicProtectionEtag_(a1, v33, 0);
        goto LABEL_13;
      }

      v28 = v31;
    }
  }

  objc_msgSend_setPreviousPublicProtectionEtag_(a1, v26, v28);
LABEL_13:
  v36 = objc_msgSend_myParticipantPCS(v38, v34, v35);
  objc_msgSend_setMyParticipantPCS_(a1, v37, v36);
}

uint64_t sub_225406734()
{
  v0 = [CKDDeviceIDManager alloc];
  qword_280D58658 = objc_msgSend_initInternal(v0, v1, v2);

  return MEMORY[0x2821F96F8]();
}

void sub_225407D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_225407D60(uint64_t a1, const char *a2)
{
  v72 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend__perServiceLookupKeyForContainer_(*(a1 + 32), a2, *(a1 + 40));
  if (*(a1 + 72))
  {
    goto LABEL_4;
  }

  v6 = *(a1 + 32);
  v7 = objc_msgSend_containerID(*(a1 + 40), v3, v4);
  v10 = objc_msgSend_environment(v7, v8, v9);
  v12 = objc_msgSend_deviceIDsByContainerIdentifierInContainerEnvironment_(v6, v11, v10);
  v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, v5);

  if (!v14)
  {
LABEL_4:
    v17 = objc_msgSend_deviceContext(*(a1 + 40), v3, v4);
    v20 = objc_msgSend_testDeviceReference(v17, v18, v19);

    if (v20)
    {
      if (qword_280D58670 != -1)
      {
        dispatch_once(&qword_280D58670, &unk_28385EA20);
      }

      v23 = MEMORY[0x277CCACA8];
      v24 = objc_msgSend_containerID(*(a1 + 40), v21, v22);
      v27 = objc_msgSend_containerIdentifier(v24, v25, v26);
      v29 = objc_msgSend_stringWithFormat_(v23, v28, @"%@-%@", v27, qword_280D58668);

      objc_storeStrong((*(*(a1 + 64) + 8) + 40), v29);
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v30 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v66 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138412546;
        v69 = v66;
        v70 = 2112;
        v71 = v5;
        _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "Returning test deviceID %@ for %@", buf, 0x16u);
      }
    }

    else
    {
      v29 = objc_msgSend__fetchDeviceIDForService_lookupKey_keychainSuccess_(*(a1 + 32), v21, *(a1 + 48), *(a1 + 56), 0);
      if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        if ((*(a1 + 72) & 1) == 0)
        {
          v34 = *(a1 + 32);
          v35 = objc_msgSend_containerID(*(a1 + 40), v32, v33);
          v38 = objc_msgSend_environment(v35, v36, v37);
          v40 = objc_msgSend_deviceIDsByContainerIdentifierInContainerEnvironment_(v34, v39, v38);
          objc_msgSend_setObject_forKeyedSubscript_(v40, v41, v29, v5);
        }

        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v29);
      }

      else if (*(a1 + 73) == 1)
      {
        v42 = CKCreateGUID();
        v43 = *(*(a1 + 64) + 8);
        v44 = *(v43 + 40);
        *(v43 + 40) = v42;

        v45 = MEMORY[0x277CBC880];
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v46 = MEMORY[0x277CBC830];
        v47 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v49 = *(*(*(a1 + 64) + 8) + 40);
          *buf = 138543618;
          v69 = v49;
          v70 = 2112;
          v71 = v5;
          _os_log_impl(&dword_22506F000, v47, OS_LOG_TYPE_INFO, "Creating new deviceID %{public}@ for %@", buf, 0x16u);
        }

        v67 = 0;
        objc_msgSend__saveDeviceIdentifier_forService_lookupKey_sysBound_success_(*(a1 + 32), v48, *(*(*(a1 + 64) + 8) + 40), *(a1 + 48), *(a1 + 56), 0, &v67);
        if ((v67 & 1) == 0)
        {
          if (*v45 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v52 = *v46;
          if (os_log_type_enabled(*v46, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22506F000, v52, OS_LOG_TYPE_ERROR, "Failed to save new device ID to keychain, returning nil", buf, 2u);
          }

          v53 = *(*(a1 + 64) + 8);
          v54 = *(v53 + 40);
          *(v53 + 40) = 0;
        }

        if ((*(a1 + 72) & 1) == 0)
        {
          v55 = *(a1 + 32);
          v56 = objc_msgSend_containerID(*(a1 + 40), v50, v51);
          v59 = objc_msgSend_environment(v56, v57, v58);
          v61 = objc_msgSend_deviceIDsByContainerIdentifierInContainerEnvironment_(v55, v60, v59);
          objc_msgSend_setObject_forKeyedSubscript_(v61, v62, v29, v5);
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v63 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_22506F000, v63, OS_LOG_TYPE_INFO, "Warn: No deviceID available, returning nil", buf, 2u);
        }

        v64 = *(*(a1 + 64) + 8);
        v65 = *(v64 + 40);
        *(v64 + 40) = 0;
      }
    }
  }

  else
  {
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  v31 = *MEMORY[0x277D85DE8];
}

uint64_t sub_225408264()
{
  qword_280D58668 = CKCreateGUID();

  return MEMORY[0x2821F96F8]();
}

void sub_22540842C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22540844C(uint64_t a1, const char *a2, uint64_t a3)
{
  v29 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 64) & 1) != 0 || (objc_msgSend_globalDeviceID(*(a1 + 32), a2, a3), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v26 = 1;
    v8 = objc_msgSend__fetchDeviceIDForService_lookupKey_keychainSuccess_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 48), &v26);
    v9 = v8;
    if (v26)
    {
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ((*(a1 + 64) & 1) == 0)
          {
            objc_msgSend_setGlobalDeviceID_(*(a1 + 32), v10, v9);
          }

          objc_storeStrong((*(*(a1 + 56) + 8) + 40), v9);
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v11 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
          {
            v12 = *(*(*(a1 + 56) + 8) + 40);
            *buf = 138543362;
            v28 = v12;
            _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Fetched global deviceID %{public}@ from keychain.", buf, 0xCu);
          }

          goto LABEL_25;
        }
      }

      if (*(a1 + 65) != 1)
      {
        goto LABEL_25;
      }

      v16 = CKCreateGUID();
      v17 = *(*(a1 + 56) + 8);
      v18 = *(v17 + 40);
      *(v17 + 40) = v16;

      v19 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v20 = MEMORY[0x277CBC830];
      v21 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        v23 = *(*(*(a1 + 56) + 8) + 40);
        *buf = 138543362;
        v28 = v23;
        _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Creating new global deviceID %{public}@", buf, 0xCu);
      }

      objc_msgSend__saveDeviceIdentifier_forService_lookupKey_sysBound_success_(*(a1 + 32), v22, *(*(*(a1 + 56) + 8) + 40), *(a1 + 40), *(a1 + 48), 1, &v26);
      if (v26)
      {
        goto LABEL_25;
      }

      if (*v19 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *v20;
      if (!os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
      {
LABEL_18:
        v14 = *(*(a1 + 56) + 8);
        v15 = *(v14 + 40);
        *(v14 + 40) = 0;

LABEL_25:
        v24 = *MEMORY[0x277D85DE8];
        return;
      }

      *buf = 0;
      v25 = "Unexpected error saving new global deviceID to keychain, returning nil";
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v25 = "Unexpected error fetching global deviceID from keychain, returning nil.";
    }

    _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, v25, buf, 2u);
    goto LABEL_18;
  }

  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
  v7 = *MEMORY[0x277D85DE8];

  MEMORY[0x2821F96F8]();
}

void sub_225408864()
{
  os_unfair_lock_lock(&unk_280D58678);
  v0 = [CKDLogicalDeviceContext alloc];
  v2 = objc_msgSend__initWithTestDeviceReference_(v0, v1, 0);
  v3 = qword_280D58680;
  qword_280D58680 = v2;

  os_unfair_lock_unlock(&unk_280D58678);
}

uint64_t sub_225408B14(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_280D58698 = objc_msgSend_strongToWeakObjectsMapTable(MEMORY[0x277CCAB00], a2, a3);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_225409654()
{
  result = _CKUseSystemInstalledBinaries();
  *MEMORY[0x277CBC818] = result;
  return result;
}

uint64_t sub_225409AF4()
{
  qword_280D586A0 = objc_alloc_init(CKDPowerLogger);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_22540A748()
{
  v0 = [CKDPrivacyManager alloc];
  qword_280D586B0 = objc_msgSend_initInternal(v0, v1, v2);

  return MEMORY[0x2821F96F8]();
}

void sub_22540A92C(uint64_t a1)
{
  v2 = dispatch_group_create();
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v5 = dispatch_queue_create("com.apple.cloudkit.privacyManager.resetQueue", v4);

  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = sub_22507422C;
  v43[4] = sub_225073694;
  v44 = 0;
  v8 = objc_msgSend_currentProcess(CKDDaemonProcess, v6, v7);
  if ((objc_msgSend_isSystemInstalledBinary(v8, v9, v10) & 1) == 0)
  {

    goto LABEL_3;
  }

  v13 = objc_msgSend_currentProcess(CKDDaemonProcess, v11, v12);
  v16 = objc_msgSend_processType(v13, v14, v15);

  if (v16 == 2)
  {
LABEL_3:
    v19 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v17, v18);
    v20 = *(a1 + 48);
    v21 = *(a1 + 32);
    v24 = objc_msgSend_currentProcess(CKDDaemonProcess, v22, v23);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v19, v25, v20, v21, @"CKDPrivacyManager.m", 66, @"Can't reset privacy settings with daemon type %@", v24);
  }

  v26 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, v17, v18);
  v29 = objc_msgSend_metadataCache(v26, v27, v28);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = sub_22540AC08;
  v38[3] = &unk_27854E188;
  v30 = v2;
  v39 = v30;
  v31 = v5;
  v42 = v43;
  v32 = *(a1 + 32);
  v40 = v31;
  v41 = v32;
  objc_msgSend_enumerateKnownAppContainerAccountTuplesUsingBlock_(v29, v33, v38);

  v34 = CKGetGlobalQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22540AF10;
  block[3] = &unk_27854B6F0;
  v36 = *(a1 + 40);
  v37 = v43;
  dispatch_group_notify(v30, v34, block);

  _Block_object_dispose(v43, 8);
}

void sub_22540ABEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22540AC08(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_group_enter(*(a1 + 32));
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_22540ACE4;
  block[3] = &unk_27854E160;
  v11 = *(a1 + 56);
  v4 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = v3;
  v10 = *(a1 + 48);
  v5 = v3;
  dispatch_async(v4, block);
}

void sub_22540ACE4(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v2 = *(a1 + 32);
    v3 = *MEMORY[0x277D85DE8];

    dispatch_group_leave(v2);
  }

  else
  {
    dispatch_suspend(*(a1 + 40));
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 48);
      *buf = 138412290;
      v15 = v9;
      _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Resetting user privacy settings for %@", buf, 0xCu);
    }

    v6 = *(a1 + 48);
    v5 = *(a1 + 56);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_22540AEA8;
    v10[3] = &unk_278547F78;
    v13 = *(a1 + 64);
    v11 = *(a1 + 40);
    v12 = *(a1 + 32);
    objc_msgSend__resetPrivacySettingsForAppContainerAccountTuple_completionHandler_(v5, v7, v6, v10);

    v8 = *MEMORY[0x277D85DE8];
  }
}

void sub_22540AEA8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  dispatch_resume(*(a1 + 32));
  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_22540AF10(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

void sub_22540B010(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_defaultContext(CKDLogicalDeviceContext, a2, a3);
  v8 = objc_msgSend_sharedInternalUseContainers(CKDContainer, v6, v7);
  v10 = objc_msgSend_containerWithAppContainerAccountTuple_deviceContext_sharedContainerTable_(CKDContainer, v9, v4, v5, v8);

  v13 = objc_msgSend_defaultConvenienceOperationConfiguration(MEMORY[0x277CBC4F0], v11, v12);
  objc_msgSend_setQualityOfService_(v13, v14, 17);
  v15 = objc_opt_new();
  objc_msgSend_setResolvedConfiguration_(v15, v16, v13);
  v17 = [CKDOperationInfoHolderOperation alloc];
  v19 = objc_msgSend_initWithOperationInfo_container_(v17, v18, v15, v10);
  v20 = [CKDResetUserPrivacySettingsURLRequest alloc];
  v22 = objc_msgSend_initWithOperation_(v20, v21, v19);
  objc_msgSend_setRequest_(v19, v23, v22);
  objc_initWeak(&location, v22);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = sub_22540B254;
  v35[3] = &unk_278545808;
  objc_copyWeak(&v38, &location);
  v34 = *(a1 + 32);
  v24 = v34.i64[0];
  v36 = vextq_s8(v34, v34, 8uLL);
  v37 = *(a1 + 48);
  objc_msgSend_setCompletionBlock_(v22, v25, v35);
  v28 = objc_msgSend_operations(*(a1 + 40), v26, v27);
  objc_sync_enter(v28);
  v31 = objc_msgSend_operations(*(a1 + 40), v29, v30);
  objc_msgSend_addObject_(v31, v32, v19);

  objc_sync_exit(v28);
  objc_msgSend_performRequest_(v10, v33, v22);

  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);
}

void sub_22540B224(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

void sub_22540B254(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v5 = objc_msgSend_operations(*(a1 + 32), v2, v3);
    objc_sync_enter(v5);
    v8 = objc_msgSend_operations(*(a1 + 32), v6, v7);
    v11 = objc_msgSend_operation(WeakRetained, v9, v10);
    objc_msgSend_removeObject_(v8, v12, v11);

    objc_sync_exit(v5);
  }

  v15 = objc_msgSend_error(WeakRetained, v2, v3);
  if (v15)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v16 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 40);
      *buf = 138412546;
      v26 = v21;
      v27 = 2112;
      v28 = v15;
      _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "Failed to reset user privacy settings for %@: %@", buf, 0x16u);
    }
  }

  v17 = objc_msgSend_privacyManagerQueue(*(a1 + 32), v13, v14);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22540B474;
  v22[3] = &unk_2785456C8;
  v18 = *(a1 + 48);
  v23 = v15;
  v24 = v18;
  v19 = v15;
  dispatch_async(v17, v22);

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22540BF6C(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v2 = result;
    result = objc_msgSend_systemAvailabilityChanged_(*(result + 32), 0, *(result + 48));
    if ((result & 1) == 0)
    {
      v4 = *(v2 + 40);

      return objc_msgSend_setDelegate_(v4, v3, 0);
    }
  }

  return result;
}

void sub_22540C378()
{
  v0 = dispatch_get_global_queue(17, 0);
  dispatch_async(v0, &unk_28385EB00);
}

void sub_22540C3C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_sharedNotifier(CKDAccountNotifier, a2, a3);
  objc_msgSend_postAccountChangedNotificationWithAccountID_changeType_(v4, v3, 0, 0);
}

void sub_22540C418(uint64_t a1, void *a2)
{
  v3 = _os_activity_create(&dword_22506F000, "CKDSystemAvailabilityMonitory/_systemReadyCheckFired", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  v4 = a2;
  objc_msgSend__systemMayNowBeReady(v4, v5, v6);
  v7 = v4;
  objc_sync_enter(v7);
  if ((objc_msgSend_availabilityState(v7, v8, v9) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_22506F000, v10, OS_LOG_TYPE_FAULT, "Received buddy notice but still reports buddy incomplete.", buf, 2u);
    }

    v11 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22540CF98;
    block[3] = &unk_278545A00;
    v13 = v7;
    dispatch_after(v11, MEMORY[0x277D85CD0], block);
  }

  objc_sync_exit(v7);

  os_activity_scope_leave(&state);
}

void sub_22540C5B0(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  os_activity_scope_leave((v2 - 48));
  _Unwind_Resume(a1);
}

void sub_22540D170(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (v5)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 32);
      v13 = v6;
      v16 = objc_msgSend_persona(v12, v14, v15);
      v19 = objc_msgSend_ckShortDescription(v16, v17, v18);
      v20 = 138412546;
      v21 = v19;
      v22 = 2112;
      v23 = v5;
      _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Failed to adopt persona %@ when acquiring gate. Calling back with NO: %@", &v20, 0x16u);
    }

    v9 = objc_msgSend_waitCompletedHandler(*(a1 + 32), v7, v8);
    v9[2](v9, 0);
  }

  else
  {
    v10 = objc_msgSend_waitCompletedHandler(*(a1 + 32), v3, v4);
    v10[2](v10, *(a1 + 40));
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22540EB54(uint64_t a1, const char *a2, uint64_t a3)
{
  qword_280D586C8 = objc_msgSend_strongToWeakObjectsMapTable(MEMORY[0x277CCAB00], a2, a3);

  return MEMORY[0x2821F96F8]();
}

void *sub_22540EEC8()
{
  v0 = ccrng();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
  if (v2 && (*v1)(v1, 32, v2))
  {
    free(v2);
    return 0;
  }

  return v2;
}

void *sub_22540EF3C(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = ccecies_encrypt_gcm_ciphertext_size();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = malloc_type_malloc(v3 + 16, 0x8CDE16C6uLL);
  v6 = v5;
  if (v5)
  {
    v5[1] = v4;
    *v5 = v5 + 2;
    v7 = *(a1 + 40);
    if (ccecies_encrypt_gcm())
    {
      free(v6);
      return 0;
    }
  }

  return v6;
}

__n128 sub_22540EFEC(uint64_t a1, uint64_t a2)
{
  if (ccrng() && !sub_22540F0D4(a1, (a2 + 40)))
  {
    ccsha256_di();
    ccaes_gcm_encrypt_mode();
    if (ccecies_encrypt_gcm_setup())
    {
      v5 = *(a2 + 40);
      v6 = *MEMORY[0x22AA64CE0]();
      cc_clear();
      free(v5);
      cc_clear();
    }

    else
    {
      v7 = *(a1 + 48);
      *(a2 + 48) = *(a1 + 32);
      *(a2 + 64) = v7;
      v9 = *(a1 + 96);
      v8 = *(a1 + 112);
      v10 = *(a1 + 80);
      *(a2 + 144) = *(a1 + 128);
      *(a2 + 112) = v9;
      *(a2 + 128) = v8;
      *(a2 + 96) = v10;
      result = *(a1 + 64);
      *(a2 + 80) = result;
    }
  }

  return result;
}

uint64_t sub_22540F0D4(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x22AA64CE0]();
  v4 = 24 * *v3 + 16;
  if (v4 < 0x20)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = v3;
  v7 = malloc_type_calloc(1uLL, v4, 0xBF00D1A0uLL);
  if (!v7)
  {
    return 4294967294;
  }

  v8 = v7;
  if (ccec_compact_import_pub())
  {
    free(v8);
    return 4294967290;
  }

  else if (ccec_validate_pub())
  {
    result = 0;
    *a2 = v8;
  }

  else
  {
    v9 = *v6;
    cc_clear();
    free(v8);
    return 4294967289;
  }

  return result;
}

uint64_t sub_22540F1B0(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = *MEMORY[0x22AA64CE0]();
    cc_clear();
  }

  cc_clear();
  cc_clear();

  return cc_clear();
}

void sub_22540F224(uint64_t a1)
{
  v2 = sub_22540F1B0(a1);
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *MEMORY[0x22AA64CE0](v2);
    cc_clear();

    free(v3);
  }
}

uint64_t sub_22540F28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = ccaes_gcm_encrypt_mode();
  v9 = (*v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v8);
  if (*a5 >= (a3 + 32))
  {
    v11 = ccrng();
    if (v11)
    {
      if ((*v11)(v11, 16, a4))
      {
        result = 4294967293;
      }

      else
      {
        ccgcm_init();
        ccgcm_set_iv();
        ccgcm_update();
        ccgcm_finalize();
        ccgcm_context_size();
        cc_clear();
        result = 0;
        *a5 = a3 + 32;
      }
    }

    else
    {
      result = 4294967291;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22540F3F4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v13 = *MEMORY[0x277D85DE8];
  v7 = ccaes_gcm_decrypt_mode();
  if (a3 >= 0x20)
  {
    v8 = a3 - 32;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v7);
  if (a3 >= 0x21 && *a5 >= v8)
  {
    ccgcm_init();
    ccgcm_set_iv();
    ccgcm_update();
    ccgcm_finalize();
    v12 = cc_cmp_safe();
    ccgcm_context_size();
    cc_clear();
    if (v12)
    {
      result = 4294967292;
    }

    else
    {
      result = 0;
      *a5 = v8;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22540F558(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v13[3] = *MEMORY[0x277D85DE8];
  if (a1 && (v4 = *a1) != 0 && (v5 = a1[2]) != 0)
  {
    result = 0xFFFFFFFFLL;
    if (a2 && a3)
    {
      if (a1[1] == 472 && *(v4 + 384) <= 0x49uLL && a1[3] == 472 && *(v5 + 384) <= 0x49uLL)
      {
        memset(v13, 0, 24);
        result = sub_22540F0D4(v5 + 320, v13);
        if (!result)
        {
          if (*(v4 + 384) >= 0x4AuLL)
          {
            __assert_rtn("pcc_opaque_quote_get_signature", "CProtectedCloudComputeQuote.c", 226, "*signature_len <= MAX_SIGNATURE_LEN");
          }

          v10 = v13[0];
          ccsha256_di();
          if (ccec_verify_msg() || cc_cmp_safe())
          {
            free(v10);
            result = 4294967285;
          }

          else
          {
            free(v10);
            result = sub_22540F6F8(v4, v5, a2);
            if (!result)
            {
              v11 = *(v5 + 336);
              *(a3 + 32) = *(v5 + 320);
              *(a3 + 48) = v11;
              *(a3 + 64) = 0u;
              *(a3 + 80) = 0u;
              *(a3 + 96) = 0u;
              *(a3 + 112) = 0u;
              *(a3 + 128) = 0;
              v12 = *(v4 + 336);
              *a3 = *(v4 + 320);
              *(a3 + 16) = v12;
            }
          }
        }
      }

      else
      {
        result = 4294967293;
      }
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22540F6F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __assert_rtn("authorise_quote", "CProtectedCloudComputeCore.c", 417, "app_quote != NULL");
  }

  if (!a2)
  {
    __assert_rtn("authorise_quote", "CProtectedCloudComputeCore.c", 418, "aqe_quote != NULL");
  }

  if ((*(a3 + 43) & 1) == 0 && (*(a1 + 48) & 2) != 0)
  {
    return 4294967281;
  }

  if (*a3 != *(a1 + 64) || *(a3 + 8) != *(a1 + 72) || *(a3 + 16) != *(a1 + 80) || *(a3 + 24) != *(a1 + 88))
  {
    return 4294967286;
  }

  if (*(a3 + 42))
  {
    return 0;
  }

  if (sub_22540F7C0(a2, a3))
  {
    return 0;
  }

  return 4294967284;
}

BOOL sub_22540F7C0(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = ccsha256_di();
  v4 = (((*(v3 + 8) + *(v3 + 16) + 19) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  ccdigest_init();
  ccdigest_update();
  (*(v3 + 56))(v3, v6, &v21);
  v7 = *(a2 + 40);
  if (*(a2 + 40))
  {
    v8 = *(a2 + 32);
    if (*v8 == v21 && v8[1] == v22 && v8[2] == v23 && v8[3] == v24)
    {
      result = 1;
    }

    else
    {
      v12 = v8 + 4;
      v13 = 1;
      do
      {
        v14 = v13;
        if (v7 == v13)
        {
          break;
        }

        v15 = *v12 == v21 && v12[1] == v22;
        v16 = v15 && v12[2] == v23;
        v17 = v16 && v12[3] == v24;
        ++v13;
        v12 += 4;
      }

      while (!v17);
      result = v14 < v7;
    }
  }

  else
  {
    result = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA18]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB58]();
}